@interface UIImageView(PGVibrancyEffects)
- (id)PG_updateVibrancyEffectForTintColor;
@end

@implementation UIImageView(PGVibrancyEffects)

- (id)PG_updateVibrancyEffectForTintColor
{
  image = [self image];
  pG_wantsVibrancyEffect = [image PG_wantsVibrancyEffect];

  if (pG_wantsVibrancyEffect)
  {
    v5.receiver = self;
    v5.super_class = &off_1F39806B0;
    return objc_msgSendSuper2(&v5, sel_PG_updateVibrancyEffectForTintColor);
  }

  else
  {

    return [self PG_removeVibrancyEffect];
  }
}

@end