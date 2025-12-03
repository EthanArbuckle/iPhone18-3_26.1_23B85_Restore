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

  defaultWebpagePreferences = [isLockdownModeEnabledForSafari_configuration defaultWebpagePreferences];
  _captivePortalModeEnabled = [defaultWebpagePreferences _captivePortalModeEnabled];

  return _captivePortalModeEnabled;
}

void __58__WBSUIFeatureAvailability_isLockdownModeEnabledForSafari__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v1 = isLockdownModeEnabledForSafari_configuration;
  isLockdownModeEnabledForSafari_configuration = v0;
}

@end