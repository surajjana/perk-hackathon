<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Material Design Lite</title>
    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/android-desktop.png">
    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">
    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">
    <link rel="shortcut icon" href="images/favicon.png">
    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
    <link rel="canonical" href="http://www.example.com/">
    -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="material.min.css">
    <link rel="stylesheet" href="styles.css">
    <style>
        #view-source {
            position: fixed;
            display: block;
            right: 0;
            bottom: 0;
            margin-right: 40px;
            margin-bottom: 40px;
            z-index: 900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
        
        
        <main class="mdl-layout__content mdl-color--grey-100">
            <div class="mdl-grid demo-content">
                <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell--12-col mdl-grid">
                    <div class=" mdl-cell--12-col mdl-shadow--2dp">
                        <div class="mdl-card__title mdl-color--primary mdl-color-text--white">
                            <h2 class="mdl-card__title-text">Perk Design</h2>
                        </div>
                        <div class="mdl-card__supporting-text">
                            <form action="#">
                                <div class="mdl-textfield mdl-js-textfield mdl-cell--12-col">
                                    <input class="mdl-textfield__input" type="text" id="username" placeholder="User Name" />
                                </div>
                                <div class="mdl-textfield mdl-js-textfield mdl-cell--12-col">
                                    <input class="mdl-textfield__input" type="password" id="userpass" placeholder="Password" />
                                </div>
                            </form>
                        </div>
                        <div class="mdl-card__actions mdl-card--border">
                            <div class="mdl-spinner mdl-js-spinner is-active"></div>
                            <input type="button" onclick="Show()" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" value="Log in" />
                            
                        </div>


                    </div>
                </div>
                            </div>
        </main>
    </div>
    
   <script>
       function Show() {
           
          
           
           ///new_poll/<p_user>/<p_name>/<p_location>
               var xmlhttp = new XMLHttpRequest();
               var url = "http://pollingcube.herokuapp.com/login/" + $("#username").val() + "/" + $("#userpass").val() + "";

               xmlhttp.onreadystatechange = function () {
                   if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                       myFunction(xmlhttp.responseText);
                   }
               }
               xmlhttp.open("GET", url, true);
               xmlhttp.send();

               function myFunction(response) {
                   
                   var arr = JSON.parse(response);
                   var i;

                   console.log(arr.login.status);




               }
           
           
       }
   </script>
    <script src="material.min.js"></script>
          <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    </form>
</body>
</html>
