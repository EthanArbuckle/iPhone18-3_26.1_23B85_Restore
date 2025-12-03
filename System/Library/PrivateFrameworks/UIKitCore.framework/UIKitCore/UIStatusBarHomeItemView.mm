@interface UIStatusBarHomeItemView
- (id)contentsImage;
- (id)highlightImage;
@end

@implementation UIStatusBarHomeItemView

- (id)contentsImage
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [foregroundStyle untintedImageNamed:@"Home"];
  v4 = [_UILegibilityImageSet imageFromImage:v3 withShadowImage:0];

  return v4;
}

- (id)highlightImage
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [foregroundStyle untintedImageNamed:@"Home_Highlight"];
  v4 = [_UILegibilityImageSet imageFromImage:v3 withShadowImage:0];

  return v4;
}

@end