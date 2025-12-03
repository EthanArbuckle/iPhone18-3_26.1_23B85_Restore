@interface SHPalette
+ (CGColor)sh_colorNamed:(id)named;
+ (double)contentsScale;
+ (id)default;
- (CGColor)R:(double)r G:(double)g B:(double)b A:(double)a;
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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

- (CGColor)R:(double)r G:(double)g B:(double)b A:(double)a
{
  SRGB = CGColorCreateSRGB(r, g, b, a);
  CFAutorelease(SRGB);
  return SRGB;
}

+ (CGColor)sh_colorNamed:(id)named
{
  v3 = MEMORY[0x277D75348];
  v4 = MEMORY[0x277CCA8D8];
  namedCopy = named;
  sh_UIBundle = [v4 sh_UIBundle];
  v7 = [v3 colorNamed:namedCopy inBundle:sh_UIBundle compatibleWithTraitCollection:0];

  cGColor = [v7 CGColor];
  return cGColor;
}

@end