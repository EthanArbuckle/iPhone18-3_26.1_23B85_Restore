@interface WOStoreDemoModeProvider
+ (BOOL)isRunningInStoreDemoMode;
@end

@implementation WOStoreDemoModeProvider

+ (BOOL)isRunningInStoreDemoMode
{
  v4 = &isRunningInStoreDemoMode_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_10);
  if (*v4 != -1)
  {
    dispatch_once(v4, location);
  }

  objc_storeStrong(&location, 0);
  return isRunningInStoreDemoMode_inStoreDemoMode & 1;
}

uint64_t __51__WOStoreDemoModeProvider_isRunningInStoreDemoMode__block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(kUIApplicationDemoSettingsModeKey, kUIApplicationDemoSettingsDomain, &keyExistsAndHasValidFormat);
  isRunningInStoreDemoMode_inStoreDemoMode = result != 0;
  if (!keyExistsAndHasValidFormat)
  {
    isRunningInStoreDemoMode_inStoreDemoMode = 0;
  }

  return result;
}

@end