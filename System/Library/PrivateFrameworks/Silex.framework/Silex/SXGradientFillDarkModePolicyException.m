@interface SXGradientFillDarkModePolicyException
- (int64_t)shouldApplyDarkModeToComponentStyle:(id)a3 component:(id)a4 DOM:(id)a5;
@end

@implementation SXGradientFillDarkModePolicyException

- (int64_t)shouldApplyDarkModeToComponentStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v5 = [a3 fill];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) - 1;
}

@end