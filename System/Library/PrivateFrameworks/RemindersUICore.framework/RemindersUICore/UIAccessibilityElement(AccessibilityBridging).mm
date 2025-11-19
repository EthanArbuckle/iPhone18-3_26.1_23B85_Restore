@interface UIAccessibilityElement(AccessibilityBridging)
- (id)ttriAccessibilityEditOperationAction:()AccessibilityBridging;
- (id)ttriAccessibilityHasTextOperations;
- (id)ttriAccessibilityTextOperations;
@end

@implementation UIAccessibilityElement(AccessibilityBridging)

- (id)ttriAccessibilityHasTextOperations
{
  v2.receiver = a1;
  v2.super_class = UIAccessibilityElement_0;
  return objc_msgSendSuper2(&v2, sel__accessibilityHasTextOperations);
}

- (id)ttriAccessibilityTextOperations
{
  v3.receiver = a1;
  v3.super_class = UIAccessibilityElement_0;
  v1 = objc_msgSendSuper2(&v3, sel__accessibilityTextOperations);

  return v1;
}

- (id)ttriAccessibilityEditOperationAction:()AccessibilityBridging
{
  v2.receiver = a1;
  v2.super_class = UIAccessibilityElement_0;
  return objc_msgSendSuper2(&v2, sel_accessibilityEditOperationAction_);
}

@end