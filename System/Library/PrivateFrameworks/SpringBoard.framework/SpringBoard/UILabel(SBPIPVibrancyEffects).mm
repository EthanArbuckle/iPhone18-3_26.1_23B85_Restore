@interface UILabel(SBPIPVibrancyEffects)
- (id)SBPIP_removeVibrancyEffect;
- (uint64_t)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects;
@end

@implementation UILabel(SBPIPVibrancyEffects)

- (uint64_t)SBPIP_updateVibrancyEffectForTintColorWithFilter:()SBPIPVibrancyEffects
{
  v3.receiver = a1;
  v3.super_class = UILabel_0;
  objc_msgSendSuper2(&v3, sel_SBPIP_updateVibrancyEffectForTintColorWithFilter_);
  return [a1 _setTextColorFollowsTintColor:1];
}

- (id)SBPIP_removeVibrancyEffect
{
  [a1 _setTextColorFollowsTintColor:0];
  v3.receiver = a1;
  v3.super_class = UILabel_0;
  return objc_msgSendSuper2(&v3, sel_SBPIP_removeVibrancyEffect);
}

@end