@interface UIApplicationProcessIsControlCenterHostApp
@end

@implementation UIApplicationProcessIsControlCenterHostApp

void ___UIApplicationProcessIsControlCenterHostApp_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DBF = [v0 isEqualToString:@"com.apple.ControlCenterHostApp"];
}

@end