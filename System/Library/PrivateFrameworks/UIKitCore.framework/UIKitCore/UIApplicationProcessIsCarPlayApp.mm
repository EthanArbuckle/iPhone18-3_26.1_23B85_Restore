@interface UIApplicationProcessIsCarPlayApp
@end

@implementation UIApplicationProcessIsCarPlayApp

void ___UIApplicationProcessIsCarPlayApp_block_invoke()
{
  if ([UIApp isFrontBoard])
  {
    v0 = _UIMainBundleIdentifier();
    byte_1EA992DC2 = [v0 isEqualToString:@"com.apple.CarPlayApp"];
  }

  else
  {
    byte_1EA992DC2 = 0;
  }
}

@end