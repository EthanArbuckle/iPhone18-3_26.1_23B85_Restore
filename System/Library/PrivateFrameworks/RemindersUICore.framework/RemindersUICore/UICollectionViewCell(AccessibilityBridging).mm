@interface UICollectionViewCell(AccessibilityBridging)
- (id)ttriAccessibilityAXOutermostContainingViewOfType:()AccessibilityBridging;
- (uint64_t)_accessibilityScrollToVisible;
- (uint64_t)ttriAccessibilityAdjustScrollOffsetForFocus;
@end

@implementation UICollectionViewCell(AccessibilityBridging)

- (uint64_t)_accessibilityScrollToVisible
{
  NSClassFromString(&cfstr_Uicalendardate.isa);
  if (objc_opt_isKindOfClass())
  {

    return [self ttriAccessibilityAdjustScrollOffsetForFocus];
  }

  else
  {

    return [self _accessibilityBaseScrollToVisible];
  }
}

- (uint64_t)ttriAccessibilityAdjustScrollOffsetForFocus
{
  v2 = [self ttriAccessibilityAXOutermostContainingViewOfType:objc_opt_class()];
  v3 = [self ttriAccessibilityAXOutermostContainingViewOfType:objc_opt_class()];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [self bounds];
    [self convertPoint:v3 toView:?];
    v6 = v5;
    [v2 contentOffset];
    v8 = v7;
    [v3 frame];
    v10 = v6 + v9;
    [v2 adjustedContentInset];
    [v2 setContentOffset:1 animated:{v8, v10 - v11}];
  }

  return 0;
}

- (id)ttriAccessibilityAXOutermostContainingViewOfType:()AccessibilityBridging
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    v3 = 0;
    do
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v2;

        v3 = v4;
      }

      superview = [v2 superview];

      v2 = superview;
    }

    while (superview);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end