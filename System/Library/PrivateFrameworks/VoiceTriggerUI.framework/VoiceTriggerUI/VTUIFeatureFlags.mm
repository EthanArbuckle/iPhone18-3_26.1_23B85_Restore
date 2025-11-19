@interface VTUIFeatureFlags
+ (BOOL)isNaturalUIEnabled;
@end

@implementation VTUIFeatureFlags

+ (BOOL)isNaturalUIEnabled
{
  if (isNaturalUIEnabled_predicate != -1)
  {
    +[VTUIFeatureFlags isNaturalUIEnabled];
  }

  return isNaturalUIEnabled_allowFeature;
}

uint64_t __38__VTUIFeatureFlags_isNaturalUIEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  isNaturalUIEnabled_allowFeature = result;
  return result;
}

@end