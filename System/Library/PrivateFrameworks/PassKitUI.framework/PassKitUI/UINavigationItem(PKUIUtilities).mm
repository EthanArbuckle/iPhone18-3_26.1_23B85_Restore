@interface UINavigationItem(PKUIUtilities)
- (uint64_t)pkui_enableManualScrollEdgeAppearanceWithInitialProgress:()PKUIUtilities;
- (void)pkui_setupScrollEdgeChromelessAppearance;
@end

@implementation UINavigationItem(PKUIUtilities)

- (void)pkui_setupScrollEdgeChromelessAppearance
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v4 configureWithDefaultBackground];
    _barHairlineShadowColor = [MEMORY[0x1E69DC888] _barHairlineShadowColor];
    [v4 setShadowColor:_barHairlineShadowColor];

    [self setStandardAppearance:v4];
    v3 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v3 configureWithTransparentBackground];
    [self setScrollEdgeAppearance:v3];
  }
}

- (uint64_t)pkui_enableManualScrollEdgeAppearanceWithInitialProgress:()PKUIUtilities
{
  result = _UISolariumEnabled();
  if ((result & 1) == 0)
  {
    [self _setManualScrollEdgeAppearanceProgress:a2];

    return [self _setManualScrollEdgeAppearanceEnabled:1];
  }

  return result;
}

@end