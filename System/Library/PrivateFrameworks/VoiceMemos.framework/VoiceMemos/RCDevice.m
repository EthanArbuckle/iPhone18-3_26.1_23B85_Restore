@interface RCDevice
+ (unint64_t)timeDisplayUpdateFrameInterval;
@end

@implementation RCDevice

+ (unint64_t)timeDisplayUpdateFrameInterval
{
  if (_isSlowDevice_onceToken != -1)
  {
    +[RCDevice timeDisplayUpdateFrameInterval];
  }

  return 0;
}

@end