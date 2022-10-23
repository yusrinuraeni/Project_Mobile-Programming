import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const Yusri());
}

class Yusri extends StatelessWidget {
  const Yusri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 248, 151, 4),
            leading: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            title: Text('Curse'),
            titleTextStyle: TextStyle(fontSize: 25),
            centerTitle: true,
            actions: [
              Icon(
                Icons.more_vert_sharp,
                color: Color.fromARGB(255, 252, 252, 251),
              ),
            ],
          ),
          body: Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 186, 3, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(150, 150),
                      bottomRight: Radius.elliptical(150, 150),
                    )),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Spanish',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                height: 35,
                                width: 150,
                                margin: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Begginer',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 253, 166, 3)),
                                    ),
                                    IconButton(
                                        icon: Icon(
                                            Icons.keyboard_arrow_down_rounded),
                                        onPressed: () {}),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.diamond_sharp,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.diamond_sharp,
                                      color: Colors.red,
                                    ),
                                    Text('   2 Milestones')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: CircularPercentIndicator(
                              radius: 55,
                              lineWidth: 6,
                              backgroundWidth: 2,
                              percent: 0.8,
                              backgroundColor: Colors.white,
                              progressColor: Colors.white,
                              center: Text(
                                '80 %',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/888/888071.png',
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Basics',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('4/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.yellow,
                                percent: 0.8,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/3119/3119181.png',
                                      color: Colors.red,
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Occupations',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('1/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.yellow,
                                percent: 0.2,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/8742/8742832.png',
                                      color: Colors.blue,
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Conversation',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('3/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.yellow,
                                percent: 0.6,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/2875/2875433.png',
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Places',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('1/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.yellow,
                                percent: 0.2,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/1204/1204035.png',
                                      color: Colors.purple,
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Family Members',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('3/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.yellow,
                                percent: 0.6,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade600,
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                            offset: Offset(3, 4),
                                          ),
                                        ]),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/46/46504.png',
                                      color: Colors.lightBlue,
                                      scale: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Foods',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text('4/5'),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: LinearPercentIndicator(
                                backgroundColor: Colors.grey.shade300,
                                progressColor: Colors.yellow,
                                percent: 0.8,
                                lineHeight: 5,
                                barRadius: Radius.circular(18),
                                linearStrokeCap: LinearStrokeCap.round,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              )
            ],
          )),
    );
  }
}
