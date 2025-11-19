@interface UIView(SBPIPVibrancyEffects)
- (void)SBPIP_recursivelyDisallowGroupBlending;
- (void)SBPIP_removeVibrancyEffect;
- (void)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects;
@end

@implementation UIView(SBPIPVibrancyEffects)

- (void)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects
{
  v11 = a3;
  v4 = [a1 tintColor];
  v5 = [v4 SBPIP_wantsVibrancyEffect];

  if (v11 && v5)
  {
    v6 = [a1 layer];
    v7 = [v6 compositingFilter];
    v8 = [v7 isEqualToString:v11];

    v9 = v11;
    if (v8)
    {
      goto LABEL_7;
    }

    v10 = [a1 layer];
    [v10 setCompositingFilter:v11];

    [a1 SBPIP_recursivelyDisallowGroupBlending];
  }

  else
  {
    [a1 SBPIP_removeVibrancyEffect];
  }

  v9 = v11;
LABEL_7:
}

- (void)SBPIP_removeVibrancyEffect
{
  v2 = [a1 layer];
  v3 = [v2 compositingFilter];
  v4 = [v3 isEqualToString:*MEMORY[0x277CDA5E8]];

  if (v4)
  {
    v5 = [a1 layer];
    [v5 setCompositingFilter:0];
  }
}

- (void)SBPIP_recursivelyDisallowGroupBlending
{
  v13 = *MEMORY[0x277D85DE8];
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

        [*(*(&v8 + 1) + 8 * v7++) SBPIP_recursivelyDisallowGroupBlending];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end