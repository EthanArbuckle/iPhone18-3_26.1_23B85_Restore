@interface SMMobileSMSPreferencesUtilities
+ (BOOL)checkInRemindersPreviouslyEnabled;
+ (BOOL)hasUserCompletedOnboarding;
+ (BOOL)isLockScreenSuggestionsAllowed;
+ (BOOL)isMobileSMSPreferencesLockScreenSuggestionsAllowed;
+ (BOOL)isUserOnBoardedForCriticalAlert;
+ (BOOL)shareAllLocations;
+ (BOOL)showCheckInRemindersTip;
+ (id)_copyDuetExpertPreferencesValueForKey:(id)a3;
+ (id)_copyMobileSMSPreferencesValueForKey:(id)a3;
+ (id)_criticalAlertPreference;
+ (id)duetExpertStore;
+ (id)legacyStore;
+ (id)store;
+ (int64_t)alwaysOnPromptCount;
+ (int64_t)criticalAlertPreference;
+ (void)_setMobileSMSPreferencesValue:(id)a3 forKey:(id)a4;
+ (void)_setShareAllLocations:(id)a3;
+ (void)_syncSiriLockScreenSuggestionsPrefIfNeeded;
+ (void)migrateIfNeeded;
+ (void)setAlwaysOnPromptCount:(int64_t)a3;
+ (void)setCriticalAlertPreference:(int64_t)a3;
+ (void)syncSiriLockScreenSuggestionsPrefs;
@end

@implementation SMMobileSMSPreferencesUtilities

+ (id)store
{
  if (qword_280BCBA28 != -1)
  {
    dispatch_once(&qword_280BCBA28, &__block_literal_global_0);
  }

  v3 = _MergedGlobals_12;

  return v3;
}

uint64_t __40__SMMobileSMSPreferencesUtilities_store__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD80]) initWithStoreIdentifier:@"com.apple.MobileSMS" type:0];
  v1 = _MergedGlobals_12;
  _MergedGlobals_12 = v0;

  v2 = _MergedGlobals_12;

  return [v2 synchronize];
}

+ (id)legacyStore
{
  if (qword_280BCBA38 != -1)
  {
    dispatch_once(&qword_280BCBA38, &__block_literal_global_330);
  }

  v3 = qword_280BCBA30;

  return v3;
}

uint64_t __46__SMMobileSMSPreferencesUtilities_legacyStore__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.MobileSMS"];

  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"com.apple.MobileSMS";
  }

  qword_280BCBA30 = [v3 initWithSuiteName:v4];

  return MEMORY[0x2821F96F8]();
}

+ (id)duetExpertStore
{
  if (qword_280BCBA48 != -1)
  {
    dispatch_once(&qword_280BCBA48, &__block_literal_global_334);
  }

  v3 = qword_280BCBA40;

  return v3;
}

uint64_t __50__SMMobileSMSPreferencesUtilities_duetExpertStore__block_invoke()
{
  qword_280BCBA40 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.duetexpertd"];

  return MEMORY[0x2821F96F8]();
}

+ (void)migrateIfNeeded
{
  v24 = *MEMORY[0x277D85DE8];
  [a1 _syncSiriLockScreenSuggestionsPrefIfNeeded];
  v3 = [a1 legacyStore];
  v4 = [v3 objectForKey:@"SafetyMonitorFirstTimeUI"];

  v5 = [a1 legacyStore];
  v6 = [v5 objectForKey:@"SafetyMonitorUseCriticalAlerts"];

  v7 = [a1 legacyStore];
  v8 = [v7 objectForKey:@"SafetyMonitorShareAllLocations"];

  if (v4 || v6 || v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v22 = 138412290;
        v23 = v11;
        _os_log_impl(&dword_26455D000, v9, OS_LOG_TYPE_INFO, "%@, migrating legacy preferences", &v22, 0xCu);
      }
    }

    v12 = [a1 store];
    v13 = [v12 objectForKey:@"SafetyMonitorFirstTimeUI"];

    if (!v13)
    {
      [a1 _setMobileSMSPreferencesValue:v4 forKey:@"SafetyMonitorFirstTimeUI"];
    }

    v14 = [a1 store];
    v15 = [v14 objectForKey:@"SafetyMonitorUseCriticalAlerts"];

    if (!v15)
    {
      [a1 _setMobileSMSPreferencesValue:v6 forKey:@"SafetyMonitorUseCriticalAlerts"];
    }

    v16 = [a1 store];
    v17 = [v16 objectForKey:@"SafetyMonitorShareAllLocations"];

    if (!v17)
    {
      [a1 _setMobileSMSPreferencesValue:v8 forKey:@"SafetyMonitorShareAllLocations"];
    }

    v18 = [a1 legacyStore];
    [v18 removeObjectForKey:@"SafetyMonitorFirstTimeUI"];

    v19 = [a1 legacyStore];
    [v19 removeObjectForKey:@"SafetyMonitorUseCriticalAlerts"];

    v20 = [a1 legacyStore];
    [v20 removeObjectForKey:@"SafetyMonitorShareAllLocations"];
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)_syncSiriLockScreenSuggestionsPrefIfNeeded
{
  v3 = [a1 isLockScreenSuggestionsAllowed];
  if (v3 != [a1 isMobileSMSPreferencesLockScreenSuggestionsAllowed])
  {

    [a1 _syncSiriLockScreenSuggestionsPrefWithValue:v3];
  }
}

+ (void)syncSiriLockScreenSuggestionsPrefs
{
  v3 = [a1 isLockScreenSuggestionsAllowed];

  [a1 _syncSiriLockScreenSuggestionsPrefWithValue:v3];
}

+ (id)_copyMobileSMSPreferencesValueForKey:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 store];
  v6 = [v5 objectForKey:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "%@, getting preference %@ value: %@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)_copyDuetExpertPreferencesValueForKey:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 duetExpertStore];
  v6 = [v5 objectForKey:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "%@, getting preference %@ value: %@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (void)_setMobileSMSPreferencesValue:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_26455D000, v8, OS_LOG_TYPE_INFO, "%@, setting preference %@ to %@", &v13, 0x20u);
    }
  }

  v11 = [a1 store];
  [v11 setObject:v6 forKey:v7];

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)hasUserCompletedOnboarding
{
  v2 = [a1 _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorFirstTimeUI"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shareAllLocations
{
  v2 = [a1 _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorShareAllLocations"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (void)_setShareAllLocations:(id)a3
{
  [a1 _setMobileSMSPreferencesValue:a3 forKey:@"SafetyMonitorShareAllLocations"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SMShareAllLocationsChangedNotification", 0, 0, 1u);
}

+ (BOOL)isUserOnBoardedForCriticalAlert
{
  v2 = [a1 _criticalAlertPreference];
  v3 = v2 != 0;

  return v3;
}

+ (int64_t)criticalAlertPreference
{
  v2 = [a1 _criticalAlertPreference];
  v3 = v2;
  if (v2)
  {
    if ([v2 BOOLValue])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_criticalAlertPreference
{
  v2 = [a1 _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorUseCriticalAlerts"];

  return v2;
}

+ (void)setCriticalAlertPreference:(int64_t)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 1];
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  [a1 _setMobileSMSPreferencesValue:v4 forKey:@"SafetyMonitorUseCriticalAlerts"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.SafetyMonitorUseCriticalAlerts.changed", 0, 0, 1u);
}

+ (BOOL)isMobileSMSPreferencesLockScreenSuggestionsAllowed
{
  v2 = [a1 _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorLockscreenSuggestionsEnabledWatch"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)isLockScreenSuggestionsAllowed
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyAppValue(@"LockscreenSuggestionsDisabledBundles", @"com.apple.duetexpertd");
  v4 = [v3 containsObject:@"com.apple.MobileSMS"];

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"LockScreenSuggestionsDisabled", @"com.apple.lockscreen.shared", &keyExistsAndHasValidFormat);
  v6 = keyExistsAndHasValidFormat;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = v10;
      v12 = @"YES";
      *buf = 138413314;
      v21 = v9;
      if (v4)
      {
        v13 = @"NO";
      }

      else
      {
        v13 = @"YES";
      }

      if (AppBooleanValue)
      {
        v14 = @"NO";
      }

      else
      {
        v14 = @"YES";
      }

      v22 = 2112;
      v23 = v10;
      if (!keyExistsAndHasValidFormat)
      {
        v12 = @"NO";
      }

      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "%@, %@, MobileSMSSuggestionsEnabled, %@, globalSiriSuggestionsEnabled, %@, globalSiriSuggestionsEnabledQuerySuccess, %@", buf, 0x34u);
    }
  }

  if (AppBooleanValue)
  {
    v15 = v6 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  v17 = *MEMORY[0x277D85DE8];
  return v16 & (v4 ^ 1);
}

+ (int64_t)alwaysOnPromptCount
{
  v2 = [a1 _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorAlwaysOnPromptCount"];
  v3 = [v2 integerValue];

  return v3;
}

+ (void)setAlwaysOnPromptCount:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [a1 _setMobileSMSPreferencesValue:v4 forKey:@"SafetyMonitorAlwaysOnPromptCount"];
}

+ (BOOL)showCheckInRemindersTip
{
  v33 = *MEMORY[0x277D85DE8];
  if (+[SMFeatureFlags zelkovaKahanaEnabled])
  {
    if (FIIsWorkoutSafetyCheckInEnabled())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_INFO))
        {
          v5 = objc_opt_class();
          v6 = NSStringFromClass(v5);
          v7 = NSStringFromSelector(a2);
          v27 = 138412546;
          v28 = v6;
          v29 = 2112;
          v30 = v7;
          v8 = "%@, %@, Check In Reminders is currently enabled, do not show tip";
LABEL_9:
          _os_log_impl(&dword_26455D000, &v4->super, OS_LOG_TYPE_INFO, v8, &v27, 0x16u);

          goto LABEL_10;
        }

        goto LABEL_10;
      }

LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    if ([a1 checkInRemindersPreviouslyEnabled])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(&v4->super, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        v11 = objc_opt_class();
        v6 = NSStringFromClass(v11);
        v7 = NSStringFromSelector(a2);
        v27 = 138412546;
        v28 = v6;
        v29 = 2112;
        v30 = v7;
        v8 = "%@, %@, Check In reminders was previously enabled, do not show tip";
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    v4 = objc_alloc_init(SMAppDeletionManager);
    if ([(SMAppDeletionManager *)v4 isMessagesAppInstalled])
    {
      v14 = [a1 alwaysOnPromptCount];
      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (v14 > 2)
      {
        if (!v15)
        {
          v10 = 1;
          goto LABEL_11;
        }

        v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        v10 = 1;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = NSStringFromSelector(a2);
          v27 = 138412546;
          v28 = v25;
          v29 = 2112;
          v30 = v26;
          _os_log_impl(&dword_26455D000, v16, OS_LOG_TYPE_INFO, "%@, %@, Show tip", &v27, 0x16u);
        }

        goto LABEL_28;
      }

      if (!v15)
      {
        goto LABEL_10;
      }

      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
LABEL_27:
        v10 = 0;
LABEL_28:

        goto LABEL_11;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v27 = 138412802;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 1024;
      v32 = 3;
      v20 = "%@, %@, Fewer than %d workout-bound sessions completed, do not show tip";
      v21 = v16;
      v22 = 28;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      v23 = objc_opt_class();
      v18 = NSStringFromClass(v23);
      v19 = NSStringFromSelector(a2);
      v27 = 138412546;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v20 = "%@, %@, Messages app is not installed, do not show tip";
      v21 = v16;
      v22 = 22;
    }

    _os_log_impl(&dword_26455D000, v21, OS_LOG_TYPE_INFO, v20, &v27, v22);

    goto LABEL_27;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_16;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v6 = NSStringFromClass(v9);
    v7 = NSStringFromSelector(a2);
    v27 = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    v8 = "%@, %@, zelkovaKahana is not enabled, do not show tip";
    goto LABEL_9;
  }

LABEL_10:
  v10 = 0;
LABEL_11:

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)checkInRemindersPreviouslyEnabled
{
  v2 = [a1 _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorAlwaysOnPreviouslyEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end