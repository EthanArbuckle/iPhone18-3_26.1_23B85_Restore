@interface UIStatusBarCarPlayItemView
- (id)accessibilityHUDRepresentation;
@end

@implementation UIStatusBarCarPlayItemView

- (id)accessibilityHUDRepresentation
{
  v2 = [UIImage kitImageNamed:@"AXHUD_CarPlay.png"];
  v3 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v2 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];

  return v3;
}

@end