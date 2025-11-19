@interface UINavigationController(Bridge)
- (void)ts_setNavigationBarBackgroundHidden:()Bridge;
- (void)ts_setPaletteBackgroundHidden:()Bridge;
- (void)ts_setPaletteBlurthroughBackground;
- (void)ts_setTopPaletteShadowHidden:()Bridge;
@end

@implementation UINavigationController(Bridge)

- (void)ts_setTopPaletteShadowHidden:()Bridge
{
  v4 = [a1 existingPaletteForEdge:2];
  [v4 setPaletteShadowIsHidden:a3];
}

- (void)ts_setPaletteBackgroundHidden:()Bridge
{
  v4 = [a1 existingPaletteForEdge:2];
  v7 = v4;
  if (a3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [v4 _backgroundView];
  [v6 setAlpha:v5];
}

- (void)ts_setPaletteBlurthroughBackground
{
  v5 = [a1 existingPaletteForEdge:2];
  v2 = objc_alloc(MEMORY[0x1E69DD298]);
  v3 = [MEMORY[0x1E69DD290] ts_sideBarEffect];
  v4 = [v2 initWithEffect:v3];
  [v5 _setBackgroundView:v4];

  [a1 _setPreferredNavigationBarPosition:2];
}

- (void)ts_setNavigationBarBackgroundHidden:()Bridge
{
  v4 = [a1 navigationBar];
  v6 = v4;
  v5 = 1.0;
  if (a3)
  {
    v5 = 0.0;
  }

  [v4 _setBackgroundOpacity:v5];
}

@end