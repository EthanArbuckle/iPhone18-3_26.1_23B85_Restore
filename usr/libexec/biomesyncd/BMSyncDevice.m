@interface BMSyncDevice
+ (id)currentDevice;
@end

@implementation BMSyncDevice

+ (id)currentDevice
{
  if (qword_10008BD58 != -1)
  {
    sub_10004A190();
  }

  v3 = qword_10008BD50;

  return v3;
}

@end