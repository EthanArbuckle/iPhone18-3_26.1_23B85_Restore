@interface UIButton(PGVibrancyEffects)
- (void)PG_removeVibrancyEffect;
- (void)PG_updateVibrancyEffectForTintColor;
@end

@implementation UIButton(PGVibrancyEffects)

- (void)PG_updateVibrancyEffectForTintColor
{
  v2 = [a1 tintColor];
  [a1 setAdjustsImageWhenDisabled:{objc_msgSend(v2, "PG_wantsVibrancyEffect") ^ 1}];

  v3 = [a1 imageForState:0];

  if (v3)
  {
    v4 = [a1 titleLabel];
    v5 = [a1 tintColor];
    [v4 setTintColor:v5];

    v6 = [a1 imageView];
    [v6 PG_updateVibrancyEffectForTintColor];
  }

  v7 = [a1 titleForState:0];

  if (v7)
  {
    v8 = [a1 titleLabel];
    v9 = [a1 tintColor];
    [v8 setTintColor:v9];

    v10 = [a1 titleLabel];
    [v10 PG_updateVibrancyEffectForTintColor];
  }
}

- (void)PG_removeVibrancyEffect
{
  v2 = [a1 imageForState:0];

  if (v2)
  {
    v3 = [a1 imageView];
    [v3 PG_removeVibrancyEffect];
  }

  v4 = [a1 titleForState:0];

  if (v4)
  {
    v5 = [a1 titleLabel];
    [v5 PG_removeVibrancyEffect];
  }
}

@end