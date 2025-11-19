@interface REBoolFeatureValue
@end

@implementation REBoolFeatureValue

uint64_t __44___REBoolFeatureValue_featureValueWithBool___block_invoke()
{
  v0 = objc_opt_new();
  v1 = featureValueWithBool__TrueValue;
  featureValueWithBool__TrueValue = v0;

  v2 = objc_opt_new();
  v3 = featureValueWithBool__FalseValue;
  featureValueWithBool__FalseValue = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end