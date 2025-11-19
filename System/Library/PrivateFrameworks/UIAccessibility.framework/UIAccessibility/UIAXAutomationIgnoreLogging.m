@interface UIAXAutomationIgnoreLogging
@end

@implementation UIAXAutomationIgnoreLogging

uint64_t ___UIAXAutomationIgnoreLogging_block_invoke()
{
  v0 = _AXSAccessibilityPreferenceDomain();
  result = CFPreferencesGetAppBooleanValue(@"AXAutomationIgnoreLogging", v0, 0);
  _UIAXAutomationIgnoreLogging_IgnoreLogging = result != 0;
  return result;
}

@end