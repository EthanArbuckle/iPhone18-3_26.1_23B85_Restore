@interface SHPalette
+ (CGColor)sh_colorNamed:(id)a3;
+ (double)contentsScale;
+ (id)default;
- (CGColor)R:(double)a3 G:(double)a4 B:(double)a5 A:(double)a6;
- (CGColor)alternateTintColor;
- (CGColor)appTintColor;
- (CGColor)listeningButtonBackgroundColor;
- (CGColor)listeningButtonBackgroundTransparentColor;
- (CGColor)listeningButtonShazamShapeColor;
- (CGColor)listeningButtonTopBorderColor;
- (CGColor)listeningCircleColor;
- (CGColor)shazamColorNearBlack;
@end

@implementation SHPalette

+ (double)contentsScale
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

+ (id)default
{
  v2 = __defaultPalette;
  if (!__defaultPalette)
  {
    v3 = objc_alloc_init(SHPalette);
    v4 = __defaultPalette;
    __defaultPalette = v3;

    v2 = __defaultPalette;
  }

  return v2;
}

- (CGColor)shazamColorNearBlack
{
  v2 = NSStringFromSelector(a2);
  v3 = [SHPalette sh_colorNamed:v2];

  return v3;
}

- (CGColor)listeningButtonBackgroundColor
{
  v2 = NSStringFromSelector(a2);
  v3 = [SHPalette sh_colorNamed:v2];

  return v3;
}

- (CGColor)listeningButtonTopBorderColor
{
  v2 = NSStringFromSelector(a2);
  v3 = [SHPalette sh_colorNamed:v2];

  return v3;
}

- (CGColor)listeningButtonShazamShapeColor
{
  v2 = NSStringFromSelector(a2);
  v3 = [SHPalette sh_colorNamed:v2];

  return v3;
}

- (CGColor)listeningButtonBackgroundTransparentColor
{
  v2 = NSStringFromSelector(a2);
  v3 = [SHPalette sh_colorNamed:v2];

  return v3;
}

- (CGColor)listeningCircleColor
{
  v2 = NSStringFromSelector(a2);
  v3 = [SHPalette sh_colorNamed:v2];

  return v3;
}

- (CGColor)appTintColor
{
  v2 = NSStringFromSelector(a2);
  v3 = [SHPalette sh_colorNamed:v2];

  return v3;
}

- (CGColor)alternateTintColor
{
  v2 = NSStringFromSelector(a2);
  v3 = [SHPalette sh_colorNamed:v2];

  return v3;
}

- (CGColor)R:(double)a3 G:(double)a4 B:(double)a5 A:(double)a6
{
  SRGB = CGColorCreateSRGB(a3, a4, a5, a6);
  CFAutorelease(SRGB);
  return SRGB;
}

+ (CGColor)sh_colorNamed:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 sh_UIBundle];
  v7 = [v3 colorNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  v8 = [v7 CGColor];
  return v8;
}

@end