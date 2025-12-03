@interface UND_BBOBserver
+ (id)gatewayWithQueue:(id)queue calloutQueue:(id)calloutQueue name:(id)name priority:(unint64_t)priority;
@end

@implementation UND_BBOBserver

+ (id)gatewayWithQueue:(id)queue calloutQueue:(id)calloutQueue name:(id)name priority:(unint64_t)priority
{
  queueCopy = queue;
  calloutQueueCopy = calloutQueue;
  nameCopy = name;
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
  v14 = [v12 gatewayWithQueue:queueCopy calloutQueue:calloutQueueCopy name:nameCopy priority:priority];

  return v14;
}

@end