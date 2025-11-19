@interface UIDebugOrTestUserInterfaceStyle
@end

@implementation UIDebugOrTestUserInterfaceStyle

void ___UIDebugOrTestUserInterfaceStyle_block_invoke()
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  byte_1EA992DDC = has_internal_diagnostics;
  if (has_internal_diagnostics)
  {
    v1 = [[_UIDefaultsInterfaceStyleObserver alloc] initWithNotificationName:@"_UIDebugOrTestUserInterfaceStyleChangedNotification" darwinNotification:"com.apple.UIKit.OverrideUserInterfaceStyle"];
    v2 = qword_1EA9931F0;
    qword_1EA9931F0 = v1;

    v3 = qword_1EA9931F0;
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 observeUserDefaults:v4 key:@"OverrideUserInterfaceStyle"];

    v5 = qword_1EA9931F0;
    v6 = _UIKitUserDefaults();
    [v5 observeUserDefaults:v6 key:@"OverrideUserInterfaceStyle"];
  }
}

@end