@interface UIView(PGVibrancyEffects)
- (void)PG_recursivelyDisallowGroupBlending;
- (void)PG_removeVibrancyEffect;
- (void)PG_updateVibrancyEffectForTintColor;
@end

@implementation UIView(PGVibrancyEffects)

- (void)PG_updateVibrancyEffectForTintColor
{
  tintColor = [self tintColor];
  pG_wantsVibrancyEffect = [tintColor PG_wantsVibrancyEffect];

  if (pG_wantsVibrancyEffect)
  {
    layer = [self layer];
    compositingFilter = [layer compositingFilter];
    v6 = *MEMORY[0x1E6979CF8];
    v7 = [compositingFilter isEqualToString:*MEMORY[0x1E6979CF8]];

    if ((v7 & 1) == 0)
    {
      layer2 = [self layer];
      [layer2 setCompositingFilter:v6];

      [self PG_recursivelyDisallowGroupBlending];
    }
  }

  else
  {

    [self PG_removeVibrancyEffect];
  }
}

- (void)PG_removeVibrancyEffect
{
  layer = [self layer];
  compositingFilter = [layer compositingFilter];
  v4 = [compositingFilter isEqualToString:*MEMORY[0x1E6979CF8]];

  if (v4)
  {
    layer2 = [self layer];
    [layer2 setCompositingFilter:0];
  }
}

- (void)PG_recursivelyDisallowGroupBlending
{
  v13 = *MEMORY[0x1E69E9840];
  layer = [self layer];
  [layer setAllowsGroupBlending:0];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  subviews = [self subviews];
  v4 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v8 + 1) + 8 * v7++) PG_recursivelyDisallowGroupBlending];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end