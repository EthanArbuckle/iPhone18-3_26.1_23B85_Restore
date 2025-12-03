@interface UIView(SBPIPVibrancyEffects)
- (void)SBPIP_recursivelyDisallowGroupBlending;
- (void)SBPIP_removeVibrancyEffect;
- (void)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects;
@end

@implementation UIView(SBPIPVibrancyEffects)

- (void)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects
{
  v11 = a3;
  tintColor = [self tintColor];
  sBPIP_wantsVibrancyEffect = [tintColor SBPIP_wantsVibrancyEffect];

  if (v11 && sBPIP_wantsVibrancyEffect)
  {
    layer = [self layer];
    compositingFilter = [layer compositingFilter];
    v8 = [compositingFilter isEqualToString:v11];

    v9 = v11;
    if (v8)
    {
      goto LABEL_7;
    }

    layer2 = [self layer];
    [layer2 setCompositingFilter:v11];

    [self SBPIP_recursivelyDisallowGroupBlending];
  }

  else
  {
    [self SBPIP_removeVibrancyEffect];
  }

  v9 = v11;
LABEL_7:
}

- (void)SBPIP_removeVibrancyEffect
{
  layer = [self layer];
  compositingFilter = [layer compositingFilter];
  v4 = [compositingFilter isEqualToString:*MEMORY[0x277CDA5E8]];

  if (v4)
  {
    layer2 = [self layer];
    [layer2 setCompositingFilter:0];
  }
}

- (void)SBPIP_recursivelyDisallowGroupBlending
{
  v13 = *MEMORY[0x277D85DE8];
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

        [*(*(&v8 + 1) + 8 * v7++) SBPIP_recursivelyDisallowGroupBlending];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end