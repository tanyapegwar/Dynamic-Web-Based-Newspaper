<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
        String feedback=request.getParameter("feedback");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String contactno=request.getParameter("contactno");
         
        Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root" ); 
            PreparedStatement st=
            con.prepareStatement("insert into dvpfeedback values(?,?,?,?)");
            st.setString(1,feedback);
            st.setString(2,name);
            st.setString(3,email);
            st.setString(4,contactno);
            st.executeUpdate();
            response.sendRedirect("dvp.html");
                   
   %>