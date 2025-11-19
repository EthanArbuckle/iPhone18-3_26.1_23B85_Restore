@interface UICreateScreenUIImageFromRectUncheckedWithRotationEnforceSecureMode
@end

@implementation UICreateScreenUIImageFromRectUncheckedWithRotationEnforceSecureMode

void ___UICreateScreenUIImageFromRectUncheckedWithRotationEnforceSecureMode_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 valueForKey:@"com.apple.UIKit.ScreenshotForceSRGB"];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v1 BOOLValue])
  {
    byte_1EA968DD0 = 1;
  }
}

@end