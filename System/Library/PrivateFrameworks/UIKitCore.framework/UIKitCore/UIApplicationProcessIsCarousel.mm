@interface UIApplicationProcessIsCarousel
@end

@implementation UIApplicationProcessIsCarousel

void ___UIApplicationProcessIsCarousel_block_invoke()
{
  if ([UIApp isFrontBoard])
  {
    v0 = _UIMainBundleIdentifier();
    byte_1EA992DBE = [v0 isEqualToString:@"com.apple.Carousel"];
  }

  else
  {
    byte_1EA992DBE = 0;
  }
}

@end