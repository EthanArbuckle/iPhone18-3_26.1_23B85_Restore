@interface UIApplicationProcessIsUIKitester
@end

@implementation UIApplicationProcessIsUIKitester

void ___UIApplicationProcessIsUIKitester_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DBD = [v0 isEqualToString:@"com.apple.UIKitester"];
}

@end