@interface UIApplicationProcessIsSpotlight
@end

@implementation UIApplicationProcessIsSpotlight

void ___UIApplicationProcessIsSpotlight_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DBA = [v0 isEqualToString:@"com.apple.Spotlight"];
}

@end