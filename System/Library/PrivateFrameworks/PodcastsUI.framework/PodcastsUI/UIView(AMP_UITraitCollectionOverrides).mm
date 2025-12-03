@interface UIView(AMP_UITraitCollectionOverrides)
- (uint64_t)layoutDirection;
- (void)setLayoutDirection:()AMP_UITraitCollectionOverrides;
@end

@implementation UIView(AMP_UITraitCollectionOverrides)

- (uint64_t)layoutDirection
{
  _layoutDirectionValue = [self _layoutDirectionValue];
  v3 = [self _layoutDirectionFromLayoutDirectionValue:_layoutDirectionValue];

  return v3;
}

- (void)setLayoutDirection:()AMP_UITraitCollectionOverrides
{
  if ([self layoutDirection] != a3)
  {
    if (sOriginal_UIView_traitCollection)
    {
      traitCollection = [self traitCollection];
    }

    else
    {
      traitCollection = 0;
    }

    v7 = traitCollection;
    if (a3 > 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    }

    objc_setAssociatedObject(self, sel_layoutDirection, v6, 0x303);
    if (sOriginal_UIView_traitCollection)
    {
      [self setNeedsLayout];
      [self traitCollectionDidChange:v7];
    }
  }
}

@end