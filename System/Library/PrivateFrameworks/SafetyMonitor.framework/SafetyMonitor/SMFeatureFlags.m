@interface SMFeatureFlags
+ (BOOL)zelkovaKahanaEnabled;
@end

@implementation SMFeatureFlags

+ (BOOL)zelkovaKahanaEnabled
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  else
  {
    return os_variant_has_internal_content() ^ 1;
  }
}

@end