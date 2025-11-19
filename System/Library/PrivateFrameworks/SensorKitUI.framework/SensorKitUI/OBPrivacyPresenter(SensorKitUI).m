@interface OBPrivacyPresenter(SensorKitUI)
+ (uint64_t)srui_presenterForPrivacySplash;
@end

@implementation OBPrivacyPresenter(SensorKitUI)

+ (uint64_t)srui_presenterForPrivacySplash
{
  v7 = *MEMORY[0x277D85DE8];
  result = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.sensorusage"];
  if (!result)
  {
    if (qword_28001A2F8 != -1)
    {
      dispatch_once(&qword_28001A2F8, &__block_literal_global_3);
    }

    v1 = _MergedGlobals_8;
    if (os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_FAULT))
    {
      v3 = 138543618;
      v4 = @"com.apple.onboarding.sensorusage";
      v5 = 2114;
      v6 = 0;
      _os_log_fault_impl(&dword_265602000, v1, OS_LOG_TYPE_FAULT, "Failed to find privacy splash %{public}@ because %{public}@", &v3, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

@end