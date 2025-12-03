@interface UIView(TLKSharedPublic)
- (id)tlks_screen;
- (void)tlks_scale;
- (void)tlks_setCornerRadius:()TLKSharedPublic withStyle:;
@end

@implementation UIView(TLKSharedPublic)

- (id)tlks_screen
{
  _screen = [self _screen];
  v2 = _screen;
  if (_screen)
  {
    mainScreen = _screen;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v4 = mainScreen;

  return v4;
}

- (void)tlks_scale
{
  [self effectiveScreenScale];
  if (v2 == 0.0)
  {
    tlks_screen = [self tlks_screen];
    [tlks_screen scale];
  }
}

- (void)tlks_setCornerRadius:()TLKSharedPublic withStyle:
{
  v6 = a4;
  layer = [self layer];
  [layer setCornerCurve:v6];

  layer2 = [self layer];
  [layer2 setCornerRadius:a2];
}

@end