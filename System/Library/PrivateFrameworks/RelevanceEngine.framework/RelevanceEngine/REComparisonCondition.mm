@interface REComparisonCondition
+ (id)conditionForLeftFeature:(id)feature relation:(int64_t)relation rightFeature:(id)rightFeature;
@end

@implementation REComparisonCondition

+ (id)conditionForLeftFeature:(id)feature relation:(int64_t)relation rightFeature:(id)rightFeature
{
  rightFeatureCopy = rightFeature;
  featureCopy = feature;
  REEnsureMatchingFeatureTypes(featureCopy, rightFeatureCopy);
  v9 = [[_REFeatureComparisonCondition alloc] initWithLeftFeature:featureCopy relation:relation rightFeature:rightFeatureCopy];

  return v9;
}

@end