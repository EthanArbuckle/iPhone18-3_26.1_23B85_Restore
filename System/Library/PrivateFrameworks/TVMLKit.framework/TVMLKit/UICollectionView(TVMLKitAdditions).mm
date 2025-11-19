@interface UICollectionView(TVMLKitAdditions)
- (uint64_t)tv_isFocusOnNonOwnedCell;
@end

@implementation UICollectionView(TVMLKitAdditions)

- (uint64_t)tv_isFocusOnNonOwnedCell
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [v2 focusedView];

  if (v3 == a1 || ![v3 isDescendantOfView:a1])
  {
    v8 = 0;
  }

  else
  {
    v4 = v3;
    v5 = [v4 superview];

    if (v5 == a1)
    {
      v6 = v4;
    }

    else
    {
      do
      {
        v6 = [v4 superview];

        v7 = [v6 superview];

        v4 = v6;
      }

      while (v7 != a1);
    }

    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  return v8 & 1;
}

@end