@interface UIStatusBarRadarItemView
- (double)extraRightPadding;
- (id)contentsImage;
- (id)highlightImage;
@end

@implementation UIStatusBarRadarItemView

- (id)contentsImage
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = MEMORY[0x1E696AEC0];
  [foregroundStyle scale];
  v5 = [v3 stringWithFormat:@"_internal_radar_%ix.png", v4];
  v6 = MEMORY[0x1E696AAE8];
  v7 = _UIKitResourceBundlePath(@"CarPlayArtwork.bundle");
  v8 = [v6 bundleWithPath:v7];

  v9 = [UIImage imageNamed:v5 inBundle:v8];
  cGImage = [v9 CGImage];
  [foregroundStyle scale];
  v11 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];

  v12 = [_UILegibilityImageSet imageFromImage:v11 withShadowImage:0];

  return v12;
}

- (id)highlightImage
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v3 = [foregroundStyle untintedImageNamed:@"Home_Highlight"];
  v4 = [_UILegibilityImageSet imageFromImage:v3 withShadowImage:0];

  return v4;
}

- (double)extraRightPadding
{
  v4.receiver = self;
  v4.super_class = UIStatusBarRadarItemView;
  [(UIStatusBarItemView *)&v4 extraRightPadding];
  return v2 + 1.0;
}

@end