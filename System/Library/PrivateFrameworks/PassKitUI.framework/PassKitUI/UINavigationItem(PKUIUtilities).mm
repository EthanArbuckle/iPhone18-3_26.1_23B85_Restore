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
    v2 = [MEMORY[0x1E69DC888] _barHairlineShadowColor];
    [v4 setShadowColor:v2];

    [a1 setStandardAppearance:v4];
    v3 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v3 configureWithTransparentBackground];
    [a1 setScrollEdgeAppearance:v3];
  }
}

- (uint64_t)pkui_enableManualScrollEdgeAppearanceWithInitialProgress:()PKUIUtilities
{
  result = _UISolariumEnabled();
  if ((result & 1) == 0)
  {
    [a1 _setManualScrollEdgeAppearanceProgress:a2];

    return [a1 _setManualScrollEdgeAppearanceEnabled:1];
  }

  return result;
}

@end