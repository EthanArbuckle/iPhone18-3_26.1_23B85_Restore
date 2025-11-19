@interface UIStatusBarIndicatorItemView
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
@end

@implementation UIStatusBarIndicatorItemView

- (id)contentsImage
{
  v3 = [(UIStatusBarItemView *)self item];
  v4 = [v3 indicatorName];

  v5 = [(UIStatusBarItemView *)self imageWithShadowNamed:v4];

  return v5;
}

- (id)accessibilityHUDRepresentation
{
  v3 = [(UIStatusBarItemView *)self item];
  v4 = [v3 indicatorName];

  v5 = [(UIStatusBarItemView *)self foregroundStyle];
  v6 = [v5 accessibilityHUDImageNamed:v4];

  v7 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v6 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];

  return v7;
}

@end