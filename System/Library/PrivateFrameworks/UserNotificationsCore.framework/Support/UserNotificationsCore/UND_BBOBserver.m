@interface UND_BBOBserver
+ (id)gatewayWithQueue:(id)a3 calloutQueue:(id)a4 name:(id)a5 priority:(unint64_t)a6;
@end

@implementation UND_BBOBserver

+ (id)gatewayWithQueue:(id)a3 calloutQueue:(id)a4 name:(id)a5 priority:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v12 = qword_10000C870;
  v20 = qword_10000C870;
  if (!qword_10000C870)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100001958;
    v16[3] = &unk_100008590;
    v16[4] = &v17;
    sub_100001958(v16);
    v12 = v18[3];
  }

  v13 = v12;
  _Block_object_dispose(&v17, 8);
  v14 = [v12 gatewayWithQueue:v9 calloutQueue:v10 name:v11 priority:a6];

  return v14;
}

@end