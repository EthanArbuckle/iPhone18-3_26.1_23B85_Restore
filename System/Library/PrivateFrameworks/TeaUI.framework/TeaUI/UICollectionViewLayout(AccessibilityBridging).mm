@interface UICollectionViewLayout(AccessibilityBridging)
- (id)_accessibilitySortCollectionViewLogically;
@end

@implementation UICollectionViewLayout(AccessibilityBridging)

- (id)_accessibilitySortCollectionViewLogically
{
  if ([a1 ts_axHasValueForKey:@"kTSUICollectionViewLayoutAccessibilityLogicalSortKey"])
  {

    return [a1 ts_sortItemsLogicallyForAccessibility];
  }

  else
  {
    v3.receiver = a1;
    v3.super_class = &off_1F537CB00;
    return objc_msgSendSuper2(&v3, sel__accessibilitySortCollectionViewLogically);
  }
}

@end