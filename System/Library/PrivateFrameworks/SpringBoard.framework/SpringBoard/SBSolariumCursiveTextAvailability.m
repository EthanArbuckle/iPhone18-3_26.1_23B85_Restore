@interface SBSolariumCursiveTextAvailability
+ (BOOL)isFeatureEnabled;
@end

@implementation SBSolariumCursiveTextAvailability

+ (BOOL)isFeatureEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

@end