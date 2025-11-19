@interface UIIsPrivateMainBundle
@end

@implementation UIIsPrivateMainBundle

void ___UIIsPrivateMainBundle_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_1355 = [v0 hasPrefix:@"com.apple."];
}

@end