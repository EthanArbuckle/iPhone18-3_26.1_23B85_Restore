@interface UIStatusBarIndicatorItemView
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
@end

@implementation UIStatusBarIndicatorItemView

- (id)contentsImage
{
  item = [(UIStatusBarItemView *)self item];
  indicatorName = [item indicatorName];

  v5 = [(UIStatusBarItemView *)self imageWithShadowNamed:indicatorName];

  return v5;
}

- (id)accessibilityHUDRepresentation
{
  item = [(UIStatusBarItemView *)self item];
  indicatorName = [item indicatorName];

  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v6 = [foregroundStyle accessibilityHUDImageNamed:indicatorName];

  v7 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v6 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];

  return v7;
}

@end