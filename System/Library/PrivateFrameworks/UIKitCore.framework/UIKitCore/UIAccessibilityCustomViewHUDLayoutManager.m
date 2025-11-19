@interface UIAccessibilityCustomViewHUDLayoutManager
- (CGSize)minimumUnscaledSizeForHUD:(id)a3 preferredLabelSize:(CGSize)a4;
- (CGSize)preferredSizeForLabelInHUD:(id)a3 maximumWidth:(double)a4;
- (void)layoutSubviewsOfHUD:(id)a3;
@end

@implementation UIAccessibilityCustomViewHUDLayoutManager

- (void)layoutSubviewsOfHUD:(id)a3
{
  v13 = a3;
  v4 = [v13 imageView];
  [v4 removeFromSuperview];

  v5 = [v13 titleLabel];
  [v5 removeFromSuperview];

  v6 = [v13 containerViewForLayout];
  v7 = [v13 customView];
  v8 = [v7 superview];

  if (v8 != v6)
  {
    [v6 addSubview:v7];
  }

  [(UIAccessibilityHUDLayoutManager *)self layoutBoundsForHUD:v13];
  [v7 setBounds:?];
  [v7 sizeToFit];
  [v6 bounds];
  [v7 setCenter:{v10 + v9 * 0.5, v12 + v11 * 0.5}];
}

- (CGSize)minimumUnscaledSizeForHUD:(id)a3 preferredLabelSize:(CGSize)a4
{
  v4 = 220.0;
  v5 = 220.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)preferredSizeForLabelInHUD:(id)a3 maximumWidth:(double)a4
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

@end