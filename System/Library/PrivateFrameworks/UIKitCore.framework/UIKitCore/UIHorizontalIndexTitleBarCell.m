@interface UIHorizontalIndexTitleBarCell
@end

@implementation UIHorizontalIndexTitleBarCell

void __42___UIHorizontalIndexTitleBarCell_cellFont__block_invoke()
{
  if (_UISolariumEnabled())
  {
    v0 = 29.0;
  }

  else
  {
    v0 = 38.0;
  }

  v1 = _UISolariumEnabled();
  v2 = off_1E70ECD30;
  if (!v1)
  {
    v2 = off_1E70ECD08;
  }

  v3 = [off_1E70ECC18 systemFontOfSize:v0 weight:*v2];
  v4 = _MergedGlobals_5_11;
  _MergedGlobals_5_11 = v3;
}

uint64_t __83___UIHorizontalIndexTitleBarCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateColors];
  v2 = *(a1 + 32);

  return [v2 _updateTransforms];
}

@end