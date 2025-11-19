@interface UIImageView(PGVibrancyEffects)
- (id)PG_updateVibrancyEffectForTintColor;
@end

@implementation UIImageView(PGVibrancyEffects)

- (id)PG_updateVibrancyEffectForTintColor
{
  v2 = [a1 image];
  v3 = [v2 PG_wantsVibrancyEffect];

  if (v3)
  {
    v5.receiver = a1;
    v5.super_class = &off_1F39806B0;
    return objc_msgSendSuper2(&v5, sel_PG_updateVibrancyEffectForTintColor);
  }

  else
  {

    return [a1 PG_removeVibrancyEffect];
  }
}

@end