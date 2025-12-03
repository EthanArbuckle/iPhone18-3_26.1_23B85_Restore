@interface BYSetupStateManager
+ (id)sharedManager;
- (BOOL)didSetupUsingiTunes;
- (id)buddyPrefsValueForKey:(id)key;
- (int64_t)restoreType;
- (void)clearRestoreType;
- (void)recordSetupUsingBuddy;
@end

@implementation BYSetupStateManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[BYSetupStateManager sharedManager];
  }

  v3 = sharedManager_instance;

  return v3;
}

uint64_t __36__BYSetupStateManager_sharedManager__block_invoke()
{
  sharedManager_instance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)buddyPrefsValueForKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, @"com.apple.purplebuddy");
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFStringGetTypeID())
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  return v4;
}

- (int64_t)restoreType
{
  v2 = [(BYSetupStateManager *)self buddyPrefsValueForKey:@"RestoreState"];
  if ([v2 isEqualToString:@"RestoredFromiTunesBackup"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"RestoredFromiCloudBackup"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"BackgroundRestoringFromiCloudBackup"])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:@"RestoredFromDevice"])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)clearRestoreType
{
  if ([(BYSetupStateManager *)self restoreType])
  {
    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Clearing RestoreState...", v3, 2u);
    }

    CFPreferencesSetAppValue(@"RestoreState", 0, @"com.apple.purplebuddy");
    CFPreferencesAppSynchronize(@"com.apple.purplebuddy");
  }
}

- (BOOL)didSetupUsingiTunes
{
  v2 = [(BYSetupStateManager *)self buddyPrefsValueForKey:@"SetupState"];
  v3 = [v2 isEqualToString:@"SetupUsingiTunes"];

  return v3;
}

- (void)recordSetupUsingBuddy
{
  CFPreferencesSetAppValue(@"SetupState", @"SetupUsingAssistant", @"com.apple.purplebuddy");

  [(BYSetupStateManager *)self clearRestoreType];
}

@end