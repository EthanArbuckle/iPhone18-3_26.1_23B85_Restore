@interface UIAccessibilityCustomViewHUDLayoutManager
- (CGSize)minimumUnscaledSizeForHUD:(id)d preferredLabelSize:(CGSize)size;
- (CGSize)preferredSizeForLabelInHUD:(id)d maximumWidth:(double)width;
- (void)layoutSubviewsOfHUD:(id)d;
@end

@implementation UIAccessibilityCustomViewHUDLayoutManager

- (void)layoutSubviewsOfHUD:(id)d
{
  dCopy = d;
  imageView = [dCopy imageView];
  [imageView removeFromSuperview];

  titleLabel = [dCopy titleLabel];
  [titleLabel removeFromSuperview];

  containerViewForLayout = [dCopy containerViewForLayout];
  customView = [dCopy customView];
  superview = [customView superview];

  if (superview != containerViewForLayout)
  {
    [containerViewForLayout addSubview:customView];
  }

  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:dCopy];
  [customView setBounds:?];
  [customView sizeToFit];
  [containerViewForLayout bounds];
  [customView setCenter:{v10 + v9 * 0.5, v12 + v11 * 0.5}];
}

- (CGSize)minimumUnscaledSizeForHUD:(id)d preferredLabelSize:(CGSize)size
{
  v4 = 220.0;
  v5 = 220.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)preferredSizeForLabelInHUD:(id)d maximumWidth:(double)width
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end