import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(colors: Colors.green,),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: () {},
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu), 
            onPressed: (){},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.40),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Get Coaching', style: TextStyle(fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20.0),
                 boxShadow: [
                   BoxShadow(
                     blurRadius: 2.0,
                     color: Colors.grey
                   )
                 ] 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 20.0),
                          child: Text(
                            '404',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0
                            ),
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                        onTap: (){
                          print("wkwkkwk");
                        },
                        child: Container(
                        margin: EdgeInsets.fromLTRB(0.0, 25.0, 25.0, 25.0),
                        height: 50.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[100].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: Text(
                            "Buy more",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard("Wahyu","Away", 1),
              _buildCard("Angga","Online", 2),
              _buildCard("Urip","Online", 3),
              _buildCard("Kris","Away", 4),
              _buildCard("Oka","Away", 5),
              _buildCard("Mang Adi","Online", 6),
              _buildCard("Natha","Away", 7),
              _buildCard("Bayu","Online", 8)
            ],
          )
        ],
      )
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: 
      Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            Stack(
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.green,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                      )
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40.0),
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: status == 'Away' ? Colors.amber : Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              name,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.black
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              status,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
              child: Container(
                width: 175,
                decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  )
                ),
                child: Center(
                  child: Text(
                    'Request',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
      margin: cardIndex.isEven ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0) : EdgeInsets.fromLTRB(25.0, 0.0, 10.0, 10.0)
    );
  }
}
