import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mobil_app/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yönetim Paneline Hoşgeldiniz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade200,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.purple.shade900,
                ),
                Text(
                  "ecomart",
                  style: TextStyle(
                      color: Colors.purple.shade900,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Merhaba',
                    style: TextStyle(
                        color: Colors.purple.shade900,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: LoginHome(),
                ),
                Container(
                  /*   child: GestureDetector(
                     onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => forgot_password(),
                            ),
                          );
                        },*/
                  child: Text("Şifremi Unuttum"),
                ),
              ],
            ),
          )),
    );
  }
}

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginHome(context);
  }
}

Widget _LoginHome(BuildContext context) {
  final emailField = TextField(
    obscureText: false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        icon: Icon(Icons.mail_outline),
        hintText: "Kullanıcı Adı",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        )),
  );

  final passwordField = TextField(
    obscureText: true,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        icon: Icon(Icons.vpn_key),
        hintText: "Parola",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30),
    color: Colors.purple.shade900,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => home_page(),
          ),
        );
      },
      child: Text(
        "Giriş Yap",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
        ),
      ),
    ),
  );

  final registerButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30),
    color: Colors.purple.shade900,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {},
      child: Text(
        "Kayıt Ol",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
        ),
      ),
    ),
  );
  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.0),
            emailField,
            SizedBox(height: 10.0),
            passwordField,
            SizedBox(height: 15.0),
            loginButton,
            SizedBox(height: 10.0),
            registerButton,
          ],
        ),
      ),
    ),
  );
}
