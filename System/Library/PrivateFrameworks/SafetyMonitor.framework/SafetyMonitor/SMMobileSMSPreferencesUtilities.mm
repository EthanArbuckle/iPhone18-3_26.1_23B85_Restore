@interface SMMobileSMSPreferencesUtilities
+ (BOOL)checkInRemindersPreviouslyEnabled;
+ (BOOL)hasUserCompletedOnboarding;
+ (BOOL)isLockScreenSuggestionsAllowed;
+ (BOOL)isMobileSMSPreferencesLockScreenSuggestionsAllowed;
+ (BOOL)isUserOnBoardedForCriticalAlert;
+ (BOOL)shareAllLocations;
+ (BOOL)showCheckInRemindersTip;
+ (id)_copyDuetExpertPreferencesValueForKey:(id)key;
+ (id)_copyMobileSMSPreferencesValueForKey:(id)key;
+ (id)_criticalAlertPreference;
+ (id)duetExpertStore;
+ (id)legacyStore;
+ (id)store;
+ (int64_t)alwaysOnPromptCount;
+ (int64_t)criticalAlertPreference;
+ (void)_setMobileSMSPreferencesValue:(id)value forKey:(id)key;
+ (void)_setShareAllLocations:(id)locations;
+ (void)_syncSiriLockScreenSuggestionsPrefIfNeeded;
+ (void)migrateIfNeeded;
+ (void)setAlwaysOnPromptCount:(int64_t)count;
+ (void)setCriticalAlertPreference:(int64_t)preference;
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
  [self _syncSiriLockScreenSuggestionsPrefIfNeeded];
  legacyStore = [self legacyStore];
  v4 = [legacyStore objectForKey:@"SafetyMonitorFirstTimeUI"];

  legacyStore2 = [self legacyStore];
  v6 = [legacyStore2 objectForKey:@"SafetyMonitorUseCriticalAlerts"];

  legacyStore3 = [self legacyStore];
  v8 = [legacyStore3 objectForKey:@"SafetyMonitorShareAllLocations"];

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

    store = [self store];
    v13 = [store objectForKey:@"SafetyMonitorFirstTimeUI"];

    if (!v13)
    {
      [self _setMobileSMSPreferencesValue:v4 forKey:@"SafetyMonitorFirstTimeUI"];
    }

    store2 = [self store];
    v15 = [store2 objectForKey:@"SafetyMonitorUseCriticalAlerts"];

    if (!v15)
    {
      [self _setMobileSMSPreferencesValue:v6 forKey:@"SafetyMonitorUseCriticalAlerts"];
    }

    store3 = [self store];
    v17 = [store3 objectForKey:@"SafetyMonitorShareAllLocations"];

    if (!v17)
    {
      [self _setMobileSMSPreferencesValue:v8 forKey:@"SafetyMonitorShareAllLocations"];
    }

    legacyStore4 = [self legacyStore];
    [legacyStore4 removeObjectForKey:@"SafetyMonitorFirstTimeUI"];

    legacyStore5 = [self legacyStore];
    [legacyStore5 removeObjectForKey:@"SafetyMonitorUseCriticalAlerts"];

    legacyStore6 = [self legacyStore];
    [legacyStore6 removeObjectForKey:@"SafetyMonitorShareAllLocations"];
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)_syncSiriLockScreenSuggestionsPrefIfNeeded
{
  isLockScreenSuggestionsAllowed = [self isLockScreenSuggestionsAllowed];
  if (isLockScreenSuggestionsAllowed != [self isMobileSMSPreferencesLockScreenSuggestionsAllowed])
  {

    [self _syncSiriLockScreenSuggestionsPrefWithValue:isLockScreenSuggestionsAllowed];
  }
}

+ (void)syncSiriLockScreenSuggestionsPrefs
{
  isLockScreenSuggestionsAllowed = [self isLockScreenSuggestionsAllowed];

  [self _syncSiriLockScreenSuggestionsPrefWithValue:isLockScreenSuggestionsAllowed];
}

+ (id)_copyMobileSMSPreferencesValueForKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  store = [self store];
  v6 = [store objectForKey:keyCopy];

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
      v15 = keyCopy;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "%@, getting preference %@ value: %@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)_copyDuetExpertPreferencesValueForKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  duetExpertStore = [self duetExpertStore];
  v6 = [duetExpertStore objectForKey:keyCopy];

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
      v15 = keyCopy;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "%@, getting preference %@ value: %@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (void)_setMobileSMSPreferencesValue:(id)value forKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
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
      v16 = keyCopy;
      v17 = 2112;
      v18 = valueCopy;
      _os_log_impl(&dword_26455D000, v8, OS_LOG_TYPE_INFO, "%@, setting preference %@ to %@", &v13, 0x20u);
    }
  }

  store = [self store];
  [store setObject:valueCopy forKey:keyCopy];

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)hasUserCompletedOnboarding
{
  v2 = [self _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorFirstTimeUI"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)shareAllLocations
{
  v2 = [self _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorShareAllLocations"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)_setShareAllLocations:(id)locations
{
  [self _setMobileSMSPreferencesValue:locations forKey:@"SafetyMonitorShareAllLocations"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SMShareAllLocationsChangedNotification", 0, 0, 1u);
}

+ (BOOL)isUserOnBoardedForCriticalAlert
{
  _criticalAlertPreference = [self _criticalAlertPreference];
  v3 = _criticalAlertPreference != 0;

  return v3;
}

+ (int64_t)criticalAlertPreference
{
  _criticalAlertPreference = [self _criticalAlertPreference];
  v3 = _criticalAlertPreference;
  if (_criticalAlertPreference)
  {
    if ([_criticalAlertPreference BOOLValue])
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
  v2 = [self _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorUseCriticalAlerts"];

  return v2;
}

+ (void)setCriticalAlertPreference:(int64_t)preference
{
  if (preference)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:preference == 1];
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  [self _setMobileSMSPreferencesValue:v4 forKey:@"SafetyMonitorUseCriticalAlerts"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.SafetyMonitorUseCriticalAlerts.changed", 0, 0, 1u);
}

+ (BOOL)isMobileSMSPreferencesLockScreenSuggestionsAllowed
{
  v2 = [self _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorLockscreenSuggestionsEnabledWatch"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
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
  v2 = [self _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorAlwaysOnPromptCount"];
  integerValue = [v2 integerValue];

  return integerValue;
}

+ (void)setAlwaysOnPromptCount:(int64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [self _setMobileSMSPreferencesValue:v4 forKey:@"SafetyMonitorAlwaysOnPromptCount"];
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

    if ([self checkInRemindersPreviouslyEnabled])
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
      alwaysOnPromptCount = [self alwaysOnPromptCount];
      v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (alwaysOnPromptCount > 2)
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
  v2 = [self _copyMobileSMSPreferencesValueForKey:@"SafetyMonitorAlwaysOnPreviouslyEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end