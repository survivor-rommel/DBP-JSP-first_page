<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecodeup</title>
<style>
       

        body {
            font-family: 'Roboto';
            background: #4568DC;
            background: -webkit-linear-gradient(to right, #B06AB3, #4568DC);
            background: linear-gradient(to right, #B06AB3, #4568DC);
            height: 750px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        h1{
            text-align: center;
            font-weight: 700;
        }
        form{
            background: #fff;
            padding: 40px 0;
            box-shadow: 0 0 6px 0 rgba(255, 255, 255, 0.8);
            border-radius: 10px;
        }
        .form{
            width: 100%;
            margin: auto;
        }

        form .grupo{
           position: relative;
           margin: 45px ;
        }
        input{
            background: none;
            color: #c6c6c6;
            font-size: 18px;
            padding: 10px 10px 10px 5px;
            display: block;
            width: 100%;
            border: none;
            border-bottom: 1px solid  #49454567;
        }
        .algo{
         	width: 100%;
        	font-size: 10px;
        	display: block;
        	text-align: center;
        	color: #c6c6c6;
        	
        }
        input:focus{ 
            outline: none;
            color: #5e5d5d;
        }
        label{
            color:  #49454567;
            font-size: 16px;
            position: absolute;
            left: 5px;
            top: 10px;
            transition: 0.5s ease all;
            pointer-events: none;
        }
        input:focus~label,
        input:valid~label{
            top: -14px;
            font-size: 12px;
            color: #2196f3;
        }

        .barrita::before{
            position: relative;
            display: block;
            width: 100%;
        }

        .barrita::before{
            content: "";
            height: 2px;
            width: 0%;
            bottom: 0;
            position: absolute;
            background: linear-gradient(to right, #B06AB3, #4568DC);
            transition: 0.3s ease width;
            left: 0;
        }

        input:focus~.barrita::before{
            width: 100%;
        }
        .avisos{
            width: 200px;
            text-align: center;
            margin: auto;
            color: #B06AB3;
            padding-top: 20px;
        }

        button{
            font-family: 'roboto';
            background: #4568DC;
            background: -webkit-linear-gradient(to right, #B06AB3, #4568DC);
            background: linear-gradient(to right, #B06AB3, #4568DC);
            border: none;
            display: block;
            width: 80%;
            margin: 10px auto;
            color: #fff;
            height: 40px;
            font-size: 16px;
            cursor: pointer;
        }
      

    </style>
</head>
<body>
	 <form id="form">
        <div class="form">
        <%@ page import="java.util.Date"  %>
            <h1><%out.print("Registro"); %></h1>
            <h5 class="algo"><%
			Date d = new Date();
			out.println("Fecha Actual es: "+d);
			%></h5>
            <div class="grupo">
                <input type="text" id="cui" name="cui"><span class="barrita"></span>
                <label for="">CUI</label>
            </div>
            <div class="grupo">
                <input type="text" name="password" id="password"><span class="barrita"></span>
                <label for="">Clave</label>
            </div>
            <button type="submit">Iniciar Sesión</button>
            <p class="algo"><% out.print(request.getHeader("USER-AGENT")); %></p>
            <p class="avisos" id="avisos"></p>
        </div>
    </form>
</body>
</html>