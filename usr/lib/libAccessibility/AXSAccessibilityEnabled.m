@interface AXSAccessibilityEnabled
@end

@implementation AXSAccessibilityEnabled

void ___AXSAccessibilityEnabled_block_invoke()
{
  v0 = dispatch_time(0, 500000000);
  dispatch_after(v0, MEMORY[0x1E69E96A0], &__block_literal_global_3182);
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v1 bundleIdentifier];
  _AXSAccessibilityEnabled_isPreBoard = [v2 isEqualToString:@"com.apple.PreBoard"];

  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  _AXSAccessibilityEnabled_isCheckerBoard = [v4 isEqualToString:@"com.apple.CheckerBoard"];

  if (_AXSGuestPassWasActiveAtSystemAppStartup_onceToken != -1)
  {
    ___AXSAccessibilityEnabled_block_invoke_cold_1();
  }

  _AXSAccessibilityEnabled_inGuestPassAtSystemAppStartup = _AXSGuestPassWasActiveAtSystemAppStartup_InGuestPassAtSystemAppStartup;
}

@end