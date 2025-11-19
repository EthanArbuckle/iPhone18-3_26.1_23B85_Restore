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
    [a1 _setBottomPalette:v4];
  }

  else
  {
    [a1 _setBottomPalette:0];
  }
}

- (void)ts_setBottomPaletteMinimumHeight:()Bridge
{
  v3 = [a1 _bottomPalette];
  [v3 setMinimumHeight:a2];
}

- (void)ts_setBottomPalettePreferredHeight:()Bridge
{
  v3 = [a1 _bottomPalette];
  [v3 setPreferredHeight:a2];
}

@end