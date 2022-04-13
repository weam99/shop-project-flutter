
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

// ignore: empty_constructor_bodies
class Boardingmodel {
  final String image;
  final String title;
  final String body;

  Boardingmodel( {required this.image,required this.title,required this.body});

}

class Onboarding extends StatelessWidget {
  List <Boardingmodel> model = [
    Boardingmodel(image: 'assets/images/woman-with-shopping-bags-jumping.jpg',
        title: 'on boarding 1' ,
        body: 'on body 1'),
    Boardingmodel(
        image: 'assets/images/young-attractive-dark-haired-woman-with-short-haircut-with-lot-shopping-bags.jpg',
        title: 'on boarding 2',
        body: 'on body 2'),
    Boardingmodel(
        image: 'assets/images/young-beautiful-blonde-woman-jacket-blue-wall-with-mobile-phone-doing-online-shopping.jpg',
        title: 'on boarding 3',
        body: 'on body 3'),

  ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(

          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Expanded(child: PageView.builder(itemBuilder: (context, index) =>
                    buildboardingItem(model[index]), itemCount: model.length,)
                ),

                SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    Text('indecator' , textDirection: TextDirection.ltr),
                    Spacer(),

                    FloatingActionButton(onPressed: () {}
                      ,
                      child: Icon(Icons.arrow_forward_ios),)
                  ],
                )
              ],

            ),
          )
      ),
    );
  }

  Widget buildboardingItem(Boardingmodel m) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image(image: AssetImage('${m.image}'))),
          SizedBox(
            height: 30,
          )
          ,
          Text('${m.title} '
            , style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textDirection: TextDirection.ltr

          ),
          SizedBox(
            height: 15,
          )
          ,
          Text('${m.body}'
            , style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              textDirection: TextDirection.ltr

          ),
        ],

      );

}

