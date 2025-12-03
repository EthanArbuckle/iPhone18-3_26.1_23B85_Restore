@interface SXGradientFillDarkModePolicyException
- (int64_t)shouldApplyDarkModeToComponentStyle:(id)style component:(id)component DOM:(id)m;
@end

@implementation SXGradientFillDarkModePolicyException

- (int64_t)shouldApplyDarkModeToComponentStyle:(id)style component:(id)component DOM:(id)m
{
  fill = [style fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) - 1;
}

@end