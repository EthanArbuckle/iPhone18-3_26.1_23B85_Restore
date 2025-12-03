@interface UINavigationController(Bridge)
- (void)ts_setNavigationBarBackgroundHidden:()Bridge;
- (void)ts_setPaletteBackgroundHidden:()Bridge;
- (void)ts_setPaletteBlurthroughBackground;
- (void)ts_setTopPaletteShadowHidden:()Bridge;
@end

@implementation UINavigationController(Bridge)

- (void)ts_setTopPaletteShadowHidden:()Bridge
{
  v4 = [self existingPaletteForEdge:2];
  [v4 setPaletteShadowIsHidden:a3];
}

- (void)ts_setPaletteBackgroundHidden:()Bridge
{
  v4 = [self existingPaletteForEdge:2];
  v7 = v4;
  if (a3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  _backgroundView = [v4 _backgroundView];
  [_backgroundView setAlpha:v5];
}

- (void)ts_setPaletteBlurthroughBackground
{
  v5 = [self existingPaletteForEdge:2];
  v2 = objc_alloc(MEMORY[0x1E69DD298]);
  ts_sideBarEffect = [MEMORY[0x1E69DD290] ts_sideBarEffect];
  v4 = [v2 initWithEffect:ts_sideBarEffect];
  [v5 _setBackgroundView:v4];

  [self _setPreferredNavigationBarPosition:2];
}

- (void)ts_setNavigationBarBackgroundHidden:()Bridge
{
  navigationBar = [self navigationBar];
  v6 = navigationBar;
  v5 = 1.0;
  if (a3)
  {
    v5 = 0.0;
  }

  [navigationBar _setBackgroundOpacity:v5];
}

@end