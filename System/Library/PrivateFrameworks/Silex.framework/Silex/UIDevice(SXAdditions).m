@interface UIDevice(SXAdditions)
+ (uint64_t)sx_isSpectreDevice;
@end

@implementation UIDevice(SXAdditions)

+ (uint64_t)sx_isSpectreDevice
{
  if (sx_isSpectreDevice_onceToken != -1)
  {
    +[UIDevice(SXAdditions) sx_isSpectreDevice];
  }

  return sx_isSpectreDevice_hasExtendedColorDisplay;
}

@end