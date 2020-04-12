import 'package:flutter/material.dart';


class OutputAPK extends StatelessWidget {

  OutputAPK({@required this.vara, @required this.varb, @required this.varn});
  final int vara;
  final int varb;
  final int varn;

  @override
  Widget build(BuildContext context) {
    int Un = vara + (varn-1) * varb;
    double Sn = (varn/2) * (vara + Un);
    int Un_sebelumnya = vara + (varn-2) * varb;
    int b = Un - Un_sebelumnya;

    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL'),
        bottom: PreferredSize(
          child: Container(
            color:Colors.red[500],
            height: 4.0,
          ),
          preferredSize: null
        ),
      ),
      body: Container(
        child:Column(
          children: <Widget>[ 
            Container(
              margin: EdgeInsets.only(top: 20, right: 10, left: 10),
              padding: EdgeInsets.only(left:20, right: 15, top: 15, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.cyan[100],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                )
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text('HASIL HITUNG ARITMATIKA', textAlign: TextAlign.center, style: TextStyle(color: Colors.yellowAccent, fontSize: 20.0,fontWeight: FontWeight.w500,),),
                    padding: EdgeInsets.only(left:70, right: 70),
                    decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    )
                  ),
                  ),
                  Text(
                    "HASIL SUKU KE-${varn} : ${Un} ",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                  ),
                  Text(
                    "HASIL JUMLAH KE-${varn} : ${Sn} ",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                  ),
                  Text(
                    "HASIL BEDA : ${varb} ",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                  ),
                ],
              ) 
            ),
          ],
        ),
      ),

      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          color: Colors.red[500],
          child: Text('KEMBALI',
            style: TextStyle(
              fontSize: 20
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}