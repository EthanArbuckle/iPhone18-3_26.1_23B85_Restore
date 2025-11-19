@interface UIApplicationProcessIsDruid
@end

@implementation UIApplicationProcessIsDruid

void ___UIApplicationProcessIsDruid_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DBC = [v0 isEqualToString:@"com.apple.DragUI.druid"];
}

@end