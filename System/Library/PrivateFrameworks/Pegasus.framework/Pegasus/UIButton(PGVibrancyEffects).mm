@interface UIButton(PGVibrancyEffects)
- (void)PG_removeVibrancyEffect;
- (void)PG_updateVibrancyEffectForTintColor;
@end

@implementation UIButton(PGVibrancyEffects)

- (void)PG_updateVibrancyEffectForTintColor
{
  tintColor = [self tintColor];
  [self setAdjustsImageWhenDisabled:{objc_msgSend(tintColor, "PG_wantsVibrancyEffect") ^ 1}];

  v3 = [self imageForState:0];

  if (v3)
  {
    titleLabel = [self titleLabel];
    tintColor2 = [self tintColor];
    [titleLabel setTintColor:tintColor2];

    imageView = [self imageView];
    [imageView PG_updateVibrancyEffectForTintColor];
  }

  v7 = [self titleForState:0];

  if (v7)
  {
    titleLabel2 = [self titleLabel];
    tintColor3 = [self tintColor];
    [titleLabel2 setTintColor:tintColor3];

    titleLabel3 = [self titleLabel];
    [titleLabel3 PG_updateVibrancyEffectForTintColor];
  }
}

- (void)PG_removeVibrancyEffect
{
  v2 = [self imageForState:0];

  if (v2)
  {
    imageView = [self imageView];
    [imageView PG_removeVibrancyEffect];
  }

  v4 = [self titleForState:0];

  if (v4)
  {
    titleLabel = [self titleLabel];
    [titleLabel PG_removeVibrancyEffect];
  }
}

@end