@interface UIApplicationIsUniversalControl
@end

@implementation UIApplicationIsUniversalControl

void ___UIApplicationIsUniversalControl_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DB3 = [v0 isEqualToString:@"com.apple.universalcontrol"];
}

@end