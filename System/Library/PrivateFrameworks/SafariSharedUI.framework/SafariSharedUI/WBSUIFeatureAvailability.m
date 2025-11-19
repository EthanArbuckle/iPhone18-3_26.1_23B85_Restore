@interface WBSUIFeatureAvailability
+ (BOOL)isLockdownModeEnabledForSafari;
@end

@implementation WBSUIFeatureAvailability

+ (BOOL)isLockdownModeEnabledForSafari
{
  if (isLockdownModeEnabledForSafari_onceToken != -1)
  {
    +[WBSUIFeatureAvailability isLockdownModeEnabledForSafari];
  }

  v2 = [isLockdownModeEnabledForSafari_configuration defaultWebpagePreferences];
  v3 = [v2 _captivePortalModeEnabled];

  return v3;
}

void __58__WBSUIFeatureAvailability_isLockdownModeEnabledForSafari__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v1 = isLockdownModeEnabledForSafari_configuration;
  isLockdownModeEnabledForSafari_configuration = v0;
}

@end