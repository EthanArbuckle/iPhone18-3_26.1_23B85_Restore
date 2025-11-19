@interface UIApplicationProcessIsOverlayUI
@end

@implementation UIApplicationProcessIsOverlayUI

void ___UIApplicationProcessIsOverlayUI_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DB8 = [v0 isEqualToString:@"com.apple.UIKit.OverlayUI"];
}

@end