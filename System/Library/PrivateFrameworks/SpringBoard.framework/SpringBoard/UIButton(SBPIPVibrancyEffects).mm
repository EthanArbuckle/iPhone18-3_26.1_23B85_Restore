@interface UIButton(SBPIPVibrancyEffects)
- (void)SBPIP_removeVibrancyEffect;
- (void)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects;
@end

@implementation UIButton(SBPIPVibrancyEffects)

- (void)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects
{
  v13 = a3;
  tintColor = [self tintColor];
  [self setAdjustsImageWhenDisabled:{objc_msgSend(tintColor, "SBPIP_wantsVibrancyEffect") ^ 1}];

  v5 = [self imageForState:0];

  if (v5)
  {
    titleLabel = [self titleLabel];
    tintColor2 = [self tintColor];
    [titleLabel setTintColor:tintColor2];

    imageView = [self imageView];
    [imageView SBPIP_updateVibrancyEffectForTintColorWithFilter:v13];
  }

  v9 = [self titleForState:0];

  if (v9)
  {
    titleLabel2 = [self titleLabel];
    tintColor3 = [self tintColor];
    [titleLabel2 setTintColor:tintColor3];

    titleLabel3 = [self titleLabel];
    [titleLabel3 SBPIP_updateVibrancyEffectForTintColorWithFilter:v13];
  }
}

- (void)SBPIP_removeVibrancyEffect
{
  v2 = [self imageForState:0];

  if (v2)
  {
    imageView = [self imageView];
    [imageView SBPIP_removeVibrancyEffect];
  }

  v4 = [self titleForState:0];

  if (v4)
  {
    titleLabel = [self titleLabel];
    [titleLabel SBPIP_removeVibrancyEffect];
  }
}

@end