@interface NSUserDefaults(ThirdPartyApplicationSettingsAdditions)
+ (id)userDefaultsWithSuiteName:()ThirdPartyApplicationSettingsAdditions container:;
@end

@implementation NSUserDefaults(ThirdPartyApplicationSettingsAdditions)

+ (id)userDefaultsWithSuiteName:()ThirdPartyApplicationSettingsAdditions container:
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) _initWithSuiteName:v6 container:v5];

  return v7;
}

@end