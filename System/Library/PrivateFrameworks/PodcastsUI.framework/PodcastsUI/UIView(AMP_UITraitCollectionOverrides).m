@interface UIView(AMP_UITraitCollectionOverrides)
- (uint64_t)layoutDirection;
- (void)setLayoutDirection:()AMP_UITraitCollectionOverrides;
@end

@implementation UIView(AMP_UITraitCollectionOverrides)

- (uint64_t)layoutDirection
{
  v2 = [a1 _layoutDirectionValue];
  v3 = [a1 _layoutDirectionFromLayoutDirectionValue:v2];

  return v3;
}

- (void)setLayoutDirection:()AMP_UITraitCollectionOverrides
{
  if ([a1 layoutDirection] != a3)
  {
    if (sOriginal_UIView_traitCollection)
    {
      v5 = [a1 traitCollection];
    }

    else
    {
      v5 = 0;
    }

    v7 = v5;
    if (a3 > 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    }

    objc_setAssociatedObject(a1, sel_layoutDirection, v6, 0x303);
    if (sOriginal_UIView_traitCollection)
    {
      [a1 setNeedsLayout];
      [a1 traitCollectionDidChange:v7];
    }
  }
}

@end