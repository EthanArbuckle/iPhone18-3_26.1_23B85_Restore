@interface UILabel(PGVibrancyEffects)
- (id)PG_removeVibrancyEffect;
- (uint64_t)PG_updateVibrancyEffectForTintColor;
@end

@implementation UILabel(PGVibrancyEffects)

- (uint64_t)PG_updateVibrancyEffectForTintColor
{
  v3.receiver = a1;
  v3.super_class = &off_1F397F6F8;
  objc_msgSendSuper2(&v3, sel_PG_updateVibrancyEffectForTintColor);
  return [a1 _setTextColorFollowsTintColor:1];
}

- (id)PG_removeVibrancyEffect
{
  [a1 _setTextColorFollowsTintColor:0];
  v3.receiver = a1;
  v3.super_class = &off_1F397F6F8;
  return objc_msgSendSuper2(&v3, sel_PG_removeVibrancyEffect);
}

@end