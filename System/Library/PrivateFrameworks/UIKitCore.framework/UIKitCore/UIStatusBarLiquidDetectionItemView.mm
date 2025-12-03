@interface UIStatusBarLiquidDetectionItemView
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
@end

@implementation UIStatusBarLiquidDetectionItemView

- (id)contentsImage
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [UIImage _kitImageNamed:@"Item_LiquidDetection" withTrait:traitCollection];

  v4 = [_UILegibilityImageSet imageFromImage:v3 withShadowImage:0];

  return v4;
}

- (id)accessibilityHUDRepresentation
{
  v2 = [UIImage kitImageNamed:@"Item_LiquidDetection"];
  v3 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v2 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];
  [(UIAccessibilityHUDItem *)v3 setFlattenImage:0];

  return v3;
}

@end