@interface UIView(PGVibrancyEffects)
- (void)PG_recursivelyDisallowGroupBlending;
- (void)PG_removeVibrancyEffect;
- (void)PG_updateVibrancyEffectForTintColor;
@end

@implementation UIView(PGVibrancyEffects)

- (void)PG_updateVibrancyEffectForTintColor
{
  v2 = [a1 tintColor];
  v3 = [v2 PG_wantsVibrancyEffect];

  if (v3)
  {
    v4 = [a1 layer];
    v5 = [v4 compositingFilter];
    v6 = *MEMORY[0x1E6979CF8];
    v7 = [v5 isEqualToString:*MEMORY[0x1E6979CF8]];

    if ((v7 & 1) == 0)
    {
      v8 = [a1 layer];
      [v8 setCompositingFilter:v6];

      [a1 PG_recursivelyDisallowGroupBlending];
    }
  }

  else
  {

    [a1 PG_removeVibrancyEffect];
  }
}

- (void)PG_removeVibrancyEffect
{
  v2 = [a1 layer];
  v3 = [v2 compositingFilter];
  v4 = [v3 isEqualToString:*MEMORY[0x1E6979CF8]];

  if (v4)
  {
    v5 = [a1 layer];
    [v5 setCompositingFilter:0];
  }
}

- (void)PG_recursivelyDisallowGroupBlending
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 layer];
  [v2 setAllowsGroupBlending:0];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [a1 subviews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) PG_recursivelyDisallowGroupBlending];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end