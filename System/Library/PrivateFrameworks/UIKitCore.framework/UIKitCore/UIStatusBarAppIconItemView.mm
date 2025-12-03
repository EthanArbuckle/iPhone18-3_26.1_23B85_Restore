@interface UIStatusBarAppIconItemView
- (id)contentsImage;
- (id)highlightImage;
@end

@implementation UIStatusBarAppIconItemView

- (id)contentsImage
{
  _appBundleIdentifier = [(UIStatusBarAppIconItemView *)self _appBundleIdentifier];
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  [foregroundStyle scale];
  v5 = [UIImage _applicationIconImageForBundleIdentifier:_appBundleIdentifier format:9 scale:?];

  v6 = [_UILegibilityImageSet imageFromImage:v5 withShadowImage:0];

  return v6;
}

- (id)highlightImage
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [foregroundStyle untintedImageNamed:@"AppIcon_Highlight"];
  v4 = [_UILegibilityImageSet imageFromImage:v3 withShadowImage:0];

  return v4;
}

@end