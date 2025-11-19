@interface UISolariumFeatureFlagEnabled
@end

@implementation UISolariumFeatureFlagEnabled

BOOL ___UISolariumFeatureFlagEnabled_block_invoke()
{
  result = +[_UIKitFeatures uncachedSolariumEnabledForCurrentDeviceIdiom];
  byte_1ED49E119 = result;
  return result;
}

@end