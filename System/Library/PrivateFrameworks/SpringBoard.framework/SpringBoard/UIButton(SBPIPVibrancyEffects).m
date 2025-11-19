@interface UIButton(SBPIPVibrancyEffects)
- (void)SBPIP_removeVibrancyEffect;
- (void)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects;
@end

@implementation UIButton(SBPIPVibrancyEffects)

- (void)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects
{
  v13 = a3;
  v4 = [a1 tintColor];
  [a1 setAdjustsImageWhenDisabled:{objc_msgSend(v4, "SBPIP_wantsVibrancyEffect") ^ 1}];

  v5 = [a1 imageForState:0];

  if (v5)
  {
    v6 = [a1 titleLabel];
    v7 = [a1 tintColor];
    [v6 setTintColor:v7];

    v8 = [a1 imageView];
    [v8 SBPIP_updateVibrancyEffectForTintColorWithFilter:v13];
  }

  v9 = [a1 titleForState:0];

  if (v9)
  {
    v10 = [a1 titleLabel];
    v11 = [a1 tintColor];
    [v10 setTintColor:v11];

    v12 = [a1 titleLabel];
    [v12 SBPIP_updateVibrancyEffectForTintColorWithFilter:v13];
  }
}

- (void)SBPIP_removeVibrancyEffect
{
  v2 = [a1 imageForState:0];

  if (v2)
  {
    v3 = [a1 imageView];
    [v3 SBPIP_removeVibrancyEffect];
  }

  v4 = [a1 titleForState:0];

  if (v4)
  {
    v5 = [a1 titleLabel];
    [v5 SBPIP_removeVibrancyEffect];
  }
}

@end