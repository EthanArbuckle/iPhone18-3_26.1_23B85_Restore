@interface REDoubleFeatureValue
@end

@implementation REDoubleFeatureValue

uint64_t __48___REDoubleFeatureValue_featureValueWithDouble___block_invoke()
{
  v0 = [[_REDoubleFeatureValue alloc] initWithValue:0.0];
  v1 = featureValueWithDouble__ZeroValue;
  featureValueWithDouble__ZeroValue = v0;

  v2 = [[_REDoubleFeatureValue alloc] initWithValue:1.0];
  v3 = featureValueWithDouble__OneValue;
  featureValueWithDouble__OneValue = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end