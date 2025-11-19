@interface _UIStatusBarSystemNavigationItemButton
- (BOOL)shouldLayoutImageOnRight;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
@end

@implementation _UIStatusBarSystemNavigationItemButton

- (BOOL)shouldLayoutImageOnRight
{
  v2 = [(UIView *)self superview];
  v3 = [v2 _shouldLayoutImageOnRight];

  return v3;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = _UIStatusBarSystemNavigationItemButton;
  [(UIButton *)&v18 imageRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  if ([(_UIStatusBarSystemNavigationItemButton *)self shouldLayoutImageOnRight])
  {
    [(UIView *)self bounds];
  }

  v8 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(v8);
  v10 = v9;

  v11 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(v11);
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

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

  v16 = [objc_opt_self() mainScreen];
  UIRoundToScreenScale(v16);
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