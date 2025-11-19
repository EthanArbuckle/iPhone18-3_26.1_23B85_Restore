@interface RMLog
+ (id)batteryHealthLog;
@end

@implementation RMLog

+ (id)batteryHealthLog
{
  if (qword_1000084D8 != -1)
  {
    sub_100001360();
  }

  v3 = qword_1000084D0;

  return v3;
}

@end