@interface RMLog
+ (id)mDMAppStatus;
@end

@implementation RMLog

+ (id)mDMAppStatus
{
  if (qword_100008540 != -1)
  {
    sub_100001508();
  }

  v3 = qword_100008538;

  return v3;
}

@end