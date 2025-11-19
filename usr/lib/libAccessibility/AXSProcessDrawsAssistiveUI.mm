@interface AXSProcessDrawsAssistiveUI
@end

@implementation AXSProcessDrawsAssistiveUI

void ___AXSProcessDrawsAssistiveUI_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.accessibility.AccessibilityUIServer"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.AccessibilityUIServer"))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.assistivetouchd"];
  }

  _AXSProcessDrawsAssistiveUI_result = v1;
}

@end