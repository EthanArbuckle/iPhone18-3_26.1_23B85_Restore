@interface _UIStatusBarSystemNavigationItemButton
- (BOOL)shouldLayoutImageOnRight;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
@end

@implementation _UIStatusBarSystemNavigationItemButton

- (BOOL)shouldLayoutImageOnRight
{
  superview = [(UIView *)self superview];
  _shouldLayoutImageOnRight = [superview _shouldLayoutImageOnRight];

  return _shouldLayoutImageOnRight;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  v18.receiver = self;
  v18.super_class = _UIStatusBarSystemNavigationItemButton;
  [(UIButton *)&v18 imageRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = v4;
  v7 = v6;
  if ([(_UIStatusBarSystemNavigationItemButton *)self shouldLayoutImageOnRight])
  {
    [(UIView *)self bounds];
  }

  mainScreen = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen);
  v10 = v9;

  mainScreen2 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen2);
  v13 = v12;

  v14 = v10;
  v15 = v13;
  v16 = v5;
  v17 = v7;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23.receiver = self;
  v23.super_class = _UIStatusBarSystemNavigationItemButton;
  [(UIButton *)&v23 titleRectForContentRect:?];
  v9 = v8;
  v11 = v10;
  [(_UIStatusBarSystemNavigationItemButton *)self imageRectForContentRect:x, y, width, height];
  v13 = v12;
  if ([(_UIStatusBarSystemNavigationItemButton *)self shouldLayoutImageOnRight])
  {
    v15 = width - v13 + -4.0;
  }

  else
  {
    v15 = v9;
  }

  mainScreen = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(mainScreen);
  v18 = v17;

  v19 = 0.0;
  v20 = v18;
  v21 = v15;
  v22 = v11;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

@end