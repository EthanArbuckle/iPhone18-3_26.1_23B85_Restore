@interface UIView(AccessibilityBridging)
- (id)_accessibilityIsSpeakThisElement;
@end

@implementation UIView(AccessibilityBridging)

- (id)_accessibilityIsSpeakThisElement
{
  if (objc_opt_respondsToSelector())
  {

    return [self ts_accessibilityIsSpeakThisElement];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = UIView_0;
    return objc_msgSendSuper2(&v3, sel__accessibilityIsSpeakThisElement);
  }
}

@end