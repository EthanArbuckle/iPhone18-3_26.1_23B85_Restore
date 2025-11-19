@interface RBNullDevice
+ (RBNullDevice)sharedDevice;
@end

@implementation RBNullDevice

+ (RBNullDevice)sharedDevice
{
  {
    +[RBNullDevice sharedDevice]::device = objc_opt_new();
  }

  return +[RBNullDevice sharedDevice]::device;
}

@end