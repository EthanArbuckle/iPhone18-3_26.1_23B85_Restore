@interface UITableViewCell(AccessibilityBridging)
- (uint64_t)_accessibilityIsSpeakThisElement;
@end

@implementation UITableViewCell(AccessibilityBridging)

- (uint64_t)_accessibilityIsSpeakThisElement
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 ttriAccessibilityIsSpeakThisElement];
}

@end