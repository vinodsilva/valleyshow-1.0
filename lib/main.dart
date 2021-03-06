import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator app',
      theme: ThemeData(
        primaryColor:Colors.red,
        accentColor: Colors.amber,
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
            // ignore: deprecated_member_use
            title:TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 22,
              fontWeight:  FontWeight.bold

            )
          )
        )

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 //variable
  var minimuimPadding = 10.00;


  //method
  Widget BuildButton(String text,Function handler)
  {
    return Expanded(
      child: RaisedButton(
        child: Text(
            text
        ),
        onPressed: handler,
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Calculator')
),
      body: Container(
        margin: EdgeInsets.all(minimuimPadding*2),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:minimuimPadding,bottom: minimuimPadding),
              child: TextField(
                textAlign: TextAlign.right,
                // ignore: deprecated_member_use
                 style: Theme.of(context).textTheme.title,
                 decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:minimuimPadding,bottom: minimuimPadding),
              child: Row(
                children:<Widget>[
                  BuildButton('7',(){}),
                  SizedBox(width:minimuimPadding ,) ,
                  BuildButton('8',(){}),
                  SizedBox(width:minimuimPadding ,) ,
                  BuildButton('9',(){}),
                  SizedBox(width:minimuimPadding ,) ,
                  BuildButton('-',(){}),
                ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:minimuimPadding,bottom: minimuimPadding),
              child: Row(
                  children:<Widget>[
                    BuildButton('4',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('5',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('6',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('+',(){}),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:minimuimPadding,bottom: minimuimPadding),
              child: Row(
                  children:<Widget>[
                    BuildButton('1',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('2',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('3',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('*',(){}),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:minimuimPadding,bottom: minimuimPadding),
              child: Row(
                  children:<Widget>[
                    BuildButton('.',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('0',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('+/-',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('/',(){}),
                  ]
              ),
            ),

          // last row
            Padding(
              padding: EdgeInsets.only(top:minimuimPadding,bottom: minimuimPadding),
              child: Row(
                  children:<Widget>[
                    BuildButton('Del',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('=',(){}),
                    SizedBox(width:minimuimPadding ,) ,
                    BuildButton('Clear',(){}),

                  ]
              ),
            ),



          ],
        )
      )
    );
  }
}
