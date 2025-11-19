@interface WLDevice
+ (id)deviceName;
@end

@implementation WLDevice

+ (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

@end