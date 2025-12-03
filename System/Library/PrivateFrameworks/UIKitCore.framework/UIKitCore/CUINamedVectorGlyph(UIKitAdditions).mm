@interface CUINamedVectorGlyph(UIKitAdditions)
- (_DWORD)UIImageWithAsset:()UIKitAdditions configuration:flippedHorizontally:;
- (void)configuration;
@end

@implementation CUINamedVectorGlyph(UIKitAdditions)

- (_DWORD)UIImageWithAsset:()UIKitAdditions configuration:flippedHorizontally:
{
  v8 = a3;
  v9 = a4;
  v10 = [_UIImageCUIVectorGlyphContent alloc];
  [self scale];
  v11 = [(_UIImageCUIVectorGlyphContent *)v10 initWithCUIVectorGlyph:self scale:?];
  v12 = [[UIImage alloc] _initWithContent:v11 orientation:0];
  [v12 _setRenderingMode:0];
  [v12 _setConfiguration:v9];

  if (a5)
  {
    [v12 _horizontallyFlipImageOrientation];
    v12[26] |= 0x20u;
  }

  if (v8)
  {
    [v12 _setNamed:1];
    [v12 _setImageAsset:v8];
  }

  [v12 _setSymbolMetricsFromNamedVectorGlyph:self];

  return v12;
}

- (void)configuration
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__CUINamedVectorGlyph_UIKitAdditions__configuration__block_invoke;
  v6[3] = &unk_1E710C0C8;
  v6[4] = self;
  v1 = [UITraitCollection traitCollectionWithTraits:v6];
  v2 = v1;
  if (v1)
  {
    imageConfiguration = [v1 imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v4 = imageConfiguration;

  return imageConfiguration;
}

@end