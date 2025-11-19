@interface UIStatusBarAppIconItemView
- (id)contentsImage;
- (id)highlightImage;
@end

@implementation UIStatusBarAppIconItemView

- (id)contentsImage
{
  v3 = [(UIStatusBarAppIconItemView *)self _appBundleIdentifier];
  v4 = [(UIStatusBarItemView *)self foregroundStyle];
  [v4 scale];
  v5 = [UIImage _applicationIconImageForBundleIdentifier:v3 format:9 scale:?];

  v6 = [_UILegibilityImageSet imageFromImage:v5 withShadowImage:0];

  return v6;
}

- (id)highlightImage
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [v2 untintedImageNamed:@"AppIcon_Highlight"];
  v4 = [_UILegibilityImageSet imageFromImage:v3 withShadowImage:0];

  return v4;
}

@end