@interface UINavigationItem(Bridge)
- (void)ts_setBottomPaletteMinimumHeight:()Bridge;
- (void)ts_setBottomPalettePreferredHeight:()Bridge;
- (void)ts_setBottomPaletteWithContentView:()Bridge;
@end

@implementation UINavigationItem(Bridge)

- (void)ts_setBottomPaletteWithContentView:()Bridge
{
  v5 = a3;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD5E0]) initWithContentView:v5];
    [self _setBottomPalette:v4];
  }

  else
  {
    [self _setBottomPalette:0];
  }
}

- (void)ts_setBottomPaletteMinimumHeight:()Bridge
{
  _bottomPalette = [self _bottomPalette];
  [_bottomPalette setMinimumHeight:a2];
}

- (void)ts_setBottomPalettePreferredHeight:()Bridge
{
  _bottomPalette = [self _bottomPalette];
  [_bottomPalette setPreferredHeight:a2];
}

@end