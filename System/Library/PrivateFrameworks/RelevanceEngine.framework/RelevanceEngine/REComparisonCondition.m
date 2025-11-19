@interface REComparisonCondition
+ (id)conditionForLeftFeature:(id)a3 relation:(int64_t)a4 rightFeature:(id)a5;
@end

@implementation REComparisonCondition

+ (id)conditionForLeftFeature:(id)a3 relation:(int64_t)a4 rightFeature:(id)a5
{
  v7 = a5;
  v8 = a3;
  REEnsureMatchingFeatureTypes(v8, v7);
  v9 = [[_REFeatureComparisonCondition alloc] initWithLeftFeature:v8 relation:a4 rightFeature:v7];

  return v9;
}

@end