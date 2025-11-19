@interface UIView(SSPreferences)
- (uint64_t)_ss_vi2Enabled;
@end

@implementation UIView(SSPreferences)

- (uint64_t)_ss_vi2Enabled
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v2)
  {

    return _SSVisualIntelligenceV2EnabledIgnoringOrientation(0);
  }

  else
  {
    v4 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D9E04000, v4, OS_LOG_TYPE_DEFAULT, "VIV2 disabled due to not being in SSSProcess", v5, 2u);
    }

    return 0;
  }
}

@end