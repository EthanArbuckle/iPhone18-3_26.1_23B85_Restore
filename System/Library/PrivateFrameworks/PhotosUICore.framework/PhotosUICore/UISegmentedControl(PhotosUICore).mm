@interface UISegmentedControl(PhotosUICore)
- (double)_pxswizzled_sizeThatFits:()PhotosUICore;
- (double)px_minimumSegmentWidth;
- (void)px_setMinimumSegmentWidth:()PhotosUICore;
@end

@implementation UISegmentedControl(PhotosUICore)

- (double)_pxswizzled_sizeThatFits:()PhotosUICore
{
  [a1 _pxswizzled_sizeThatFits:?];
  v3 = v2;
  [a1 px_minimumSegmentWidth];
  if (v4 > 0.0)
  {
    v5 = v4;
    v6 = [a1 numberOfSegments];
    if (v3 < v5 * v6)
    {
      return v5 * v6;
    }
  }

  return v3;
}

- (void)px_setMinimumSegmentWidth:()PhotosUICore
{
  if (px_setMinimumSegmentWidth__onceToken != -1)
  {
    dispatch_once(&px_setMinimumSegmentWidth__onceToken, &__block_literal_global_222280);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  objc_setAssociatedObject(a1, sel_px_minimumSegmentWidth, v4, 1);
}

- (double)px_minimumSegmentWidth
{
  v1 = objc_getAssociatedObject(a1, sel_px_minimumSegmentWidth);
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

@end