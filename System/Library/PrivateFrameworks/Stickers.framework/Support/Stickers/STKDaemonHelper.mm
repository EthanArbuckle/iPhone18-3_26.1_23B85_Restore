@interface STKDaemonHelper
+ (BOOL)isRunningInBuddy;
@end

@implementation STKDaemonHelper

+ (BOOL)isRunningInBuddy
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = qword_100021690;
  v11 = qword_100021690;
  if (!qword_100021690)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003738;
    v7[3] = &unk_10001CB48;
    v7[4] = &v8;
    sub_100003738(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [v2 sharedNotifier];
  v5 = [v4 currentState] == 1;

  return v5;
}

@end