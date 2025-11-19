@interface UIView(TLKSharedPublic)
- (id)tlks_screen;
- (void)tlks_scale;
- (void)tlks_setCornerRadius:()TLKSharedPublic withStyle:;
@end

@implementation UIView(TLKSharedPublic)

- (id)tlks_screen
{
  v1 = [a1 _screen];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v4 = v3;

  return v4;
}

- (void)tlks_scale
{
  [a1 effectiveScreenScale];
  if (v2 == 0.0)
  {
    v3 = [a1 tlks_screen];
    [v3 scale];
  }
}

- (void)tlks_setCornerRadius:()TLKSharedPublic withStyle:
{
  v6 = a4;
  v7 = [a1 layer];
  [v7 setCornerCurve:v6];

  v8 = [a1 layer];
  [v8 setCornerRadius:a2];
}

@end