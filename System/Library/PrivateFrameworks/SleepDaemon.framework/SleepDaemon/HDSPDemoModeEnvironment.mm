@interface HDSPDemoModeEnvironment
- (HDSPDemoModeEnvironment)init;
- (NSString)sourceIdentifier;
- (id)demoEventRecord;
- (id)demoScheduleModel;
- (id)demoSleepSchedule;
- (id)demoSleepSettings;
- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4;
- (void)environmentDidBecomeReady;
- (void)resetDemoMode;
- (void)setInitialSchedule;
@end

@implementation HDSPDemoModeEnvironment

- (HDSPDemoModeEnvironment)init
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [objc_opt_class() _sleepModeManagerProvider];
  v5 = [v3 hksp_supportsSleepAlarms];
  v6 = &__block_literal_global_322;
  if (!v5)
  {
    v6 = 0;
  }

  v17 = v6;
  v18 = [v3 hksp_supportsHealthData];
  v19 = v4;
  if (v18)
  {
    v7 = [objc_alloc(MEMORY[0x277D62468]) initWithLocalDeviceHealthStore];
  }

  else
  {
    v7 = 0;
  }

  if ([v3 hksp_supportsSleepLockScreen])
  {
    v8 = &__block_literal_global_343;
  }

  else
  {
    v8 = 0;
  }

  if ([v3 hksp_supportsSleepWidget])
  {
    v9 = &__block_literal_global_347;
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc_init(HDSPAssertionManager);
  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = HKSPCurrentDateProvider();
  v14 = HKSPUnfairLockGenerator();
  v15 = [(HDSPEnvironment *)self initWithBehavior:v3 sleepStorageProvider:&__block_literal_global_0 sleepScheduleModelManagerProvider:&__block_literal_global_302 sleepSchedulerProvider:&__block_literal_global_306 sleepServerProvider:&__block_literal_global_310 sleepCoordinatorProvider:&__block_literal_global_314 sleepModeManagerProvider:v19 sleepTrackingManagerProvider:0 goodMorningAlertManagerProvider:0 chargingReminderManagerProvider:0 wakeDetectionManagerProvider:0 wakeUpResultsNotificationManagerProvider:0 actionManagerProvider:&__block_literal_global_318 sleepAlarmManagerProvider:v17 healthStoreProvider:v7 contextStoreManagerProvider:&__block_literal_global_327 biomeManagerProvider:&__block_literal_global_331 migrationManagerProvider:&__block_literal_global_335 notificationManagerProvider:0 notificationListenerProvider:&__block_literal_global_339 sleepLockScreenManagerProvider:v8 sleepWidgetManagerProvider:v9 idsServiceManagerProvider:&__block_literal_global_351 diagnosticsProvider:&__block_literal_global_355 systemMonitorProvider:&__block_literal_global_359 assertionManager:v10 timeChangeListenerProvider:&__block_literal_global_364 sensitiveUIMonitorProvider:&__block_literal_global_368 analyticsManagerProvider:0 userDefaults:v11 fileManager:v12 currentDateProvider:v13 defaultCallbackScheduler:0 mutexGenerator:v14];

  if (v18)
  {
  }

  return v15;
}

HDSPSleepStorage *__31__HDSPDemoModeEnvironment_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepStorage alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepScheduleModelManager *__31__HDSPDemoModeEnvironment_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepScheduleModelManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepEventScheduler *__31__HDSPDemoModeEnvironment_init__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepEventScheduler alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepStoreServer *__31__HDSPDemoModeEnvironment_init__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepStoreServer alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepScheduleStateCoordinator *__31__HDSPDemoModeEnvironment_init__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepScheduleStateCoordinator alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepActionManager *__31__HDSPDemoModeEnvironment_init__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepActionManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepAlarmManager *__31__HDSPDemoModeEnvironment_init__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepAlarmManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPContextStoreManager *__31__HDSPDemoModeEnvironment_init__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPContextStoreManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPBiomeManager *__31__HDSPDemoModeEnvironment_init__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPBiomeManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepScheduleModelMigrationManager *__31__HDSPDemoModeEnvironment_init__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepScheduleModelMigrationManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPNotificationListener *__31__HDSPDemoModeEnvironment_init__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPNotificationListener alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepLockScreenManager *__31__HDSPDemoModeEnvironment_init__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepLockScreenManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSleepWidgetManager *__31__HDSPDemoModeEnvironment_init__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSleepWidgetManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPIDSServiceManager *__31__HDSPDemoModeEnvironment_init__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPIDSServiceManager alloc] initWithEnvironment:v2];

  return v3;
}

HDSPDiagnostics *__31__HDSPDemoModeEnvironment_init__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPDiagnostics alloc] initWithEnvironment:v2];

  return v3;
}

HDSPSystemMonitor *__31__HDSPDemoModeEnvironment_init__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPSystemMonitor alloc] initWithEnvironment:v2];

  return v3;
}

HDSPTimeChangeListener *__31__HDSPDemoModeEnvironment_init__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDSPTimeChangeListener alloc] initWithEnvironment:v2];

  return v3;
}

id __31__HDSPDemoModeEnvironment_init__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D624C8];
  v3 = a2;
  v4 = [[v2 alloc] initWithEnvironment:v3];

  return v4;
}

id __52__HDSPDemoModeEnvironment__sleepModeManagerProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isUnitTestEnvironment];
  v4 = [HDSPSleepModeManager alloc];
  if (v3)
  {
    v5 = [(HDSPSleepModeManager *)v4 initWithEnvironment:v2 sleepFocusModeBridge:0 sleepProactiveBridge:0];
  }

  else
  {
    v5 = [(HDSPSleepModeManager *)v4 initWithEnvironment:v2];
  }

  v6 = v5;

  return v6;
}

- (void)environmentDidBecomeReady
{
  v3.receiver = self;
  v3.super_class = HDSPDemoModeEnvironment;
  [(HDSPEnvironment *)&v3 environmentDidBecomeReady];
  [(HDSPDemoModeEnvironment *)self setInitialSchedule];
}

- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4
{
  [(HDSPDemoModeEnvironment *)self resetDemoMode:a3];
  v4 = MEMORY[0x277D2C900];

  return [v4 futureWithNoResult];
}

- (void)setInitialSchedule
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPEnvironment *)self sleepScheduleModelManager];
  v4 = [v3 sleepSchedule];

  if (!v4)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v6 = v9;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting initial demo schedule", &v8, 0xCu);
    }

    [(HDSPDemoModeEnvironment *)self resetDemoMode];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resetDemoMode
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetDemoMode", buf, 0xCu);
  }

  v5 = [(HDSPEnvironment *)self sleepModeManager];
  [v5 setSleepMode:0];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HDSPDemoModeEnvironment_resetDemoMode__block_invoke;
  v7[3] = &unk_279C7B108;
  v7[4] = self;
  [(HDSPEnvironment *)self perform:v7 withSource:self];
  v6 = *MEMORY[0x277D85DE8];
}

void __40__HDSPDemoModeEnvironment_resetDemoMode__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) sleepScheduleModelManager];
  v18 = 0;
  v3 = [v2 saveSleepSchedule:0 error:&v18];
  v4 = v18;

  if ((v3 & 1) == 0)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v4;
      v13 = v12;
      _os_log_error_impl(&dword_269B11000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] failed to delete schedule with error %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v5 = [*(a1 + 32) sleepScheduleModelManager];
  v6 = [*(a1 + 32) demoScheduleModel];
  v17 = v4;
  v7 = [v5 saveSleepScheduleModel:v6 error:&v17];
  v8 = v17;

  if ((v7 & 1) == 0)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      *buf = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v8;
      v16 = v15;
      _os_log_error_impl(&dword_269B11000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save model with error %{public}@", buf, 0x16u);
    }

    v4 = v8;
LABEL_8:

    v8 = v4;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)demoScheduleModel
{
  v3 = MEMORY[0x277D62500];
  v4 = [(HDSPDemoModeEnvironment *)self demoSleepSchedule];
  v5 = [(HDSPDemoModeEnvironment *)self demoSleepSettings];
  v6 = [(HDSPDemoModeEnvironment *)self demoEventRecord];
  v7 = [v3 sleepScheduleModelWithSleepSchedule:v4 sleepSettings:v5 sleepEventRecord:v6];

  return v7;
}

- (id)demoSleepSettings
{
  v2 = objc_alloc_init(MEMORY[0x277D62498]);
  [v2 setScheduledSleepMode:1];
  [v2 setSleepTracking:1];
  [v2 setTimeInBedTracking:1];
  [v2 setBedtimeReminders:1];
  [v2 setChargingReminders:1];
  [v2 setWakeUpResults:1];
  [v2 setSleepModeOptions:{objc_msgSend(v2, "sleepModeOptions") | 0x4000}];

  return v2;
}

- (id)demoSleepSchedule
{
  v2 = objc_alloc_init(MEMORY[0x277D62490]);
  [v2 setWeekdays:*MEMORY[0x277D623A8]];
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v3 setHour:7];
  [v3 setMinute:0];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setHour:23];
  [v4 setMinute:0];
  [v2 setWakeUpComponents:v3];
  [v2 setBedtimeComponents:v4];
  v5 = [v2 alarmConfiguration];
  v6 = [v5 mutableCopy];

  [v6 setEnabled:0];
  [v2 setAlarmConfiguration:v6];
  v7 = objc_alloc_init(MEMORY[0x277D62490]);
  [v7 setWeekdays:*MEMORY[0x277D623B0]];
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setHour:8];
  [v8 setMinute:0];
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v9 setHour:0];
  [v9 setMinute:0];
  [v7 setWakeUpComponents:v8];
  [v7 setBedtimeComponents:v9];
  v10 = [v7 alarmConfiguration];
  v11 = [v10 mutableCopy];

  [v11 setEnabled:0];
  [v7 setAlarmConfiguration:v11];
  v12 = objc_alloc_init(MEMORY[0x277D62488]);
  [v12 saveOccurrence:v2];
  [v12 saveOccurrence:v7];
  [v12 setSleepDurationGoal:*MEMORY[0x277D62188] * 3600.0];
  v13 = [v12 copy];

  return v13;
}

- (id)demoEventRecord
{
  v3 = [(HDSPEnvironment *)self sleepScheduleModelManager];
  v4 = [v3 sleepEventRecord];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D62480]);
  }

  v8 = v7;

  [v8 setSleepCoachingOnboardingCompletedVersion:3];
  [v8 setSleepTrackingOnboardingCompletedVersion:3];
  [v8 setSleepWindDownShortcutsOnboardingCompletedVersion:2];
  v9 = [v8 sleepCoachingOnboardingFirstCompletedDate];
  if (v9)
  {
    [v8 setSleepCoachingOnboardingFirstCompletedDate:v9];
  }

  else
  {
    v10 = [(HDSPEnvironment *)self currentDateProvider];
    v11 = v10[2]();
    [v8 setSleepCoachingOnboardingFirstCompletedDate:v11];
  }

  v12 = [v8 sleepTrackingOnboardingFirstCompletedDate];
  if (v12)
  {
    [v8 setSleepTrackingOnboardingFirstCompletedDate:v12];
  }

  else
  {
    v13 = [(HDSPEnvironment *)self currentDateProvider];
    v14 = v13[2]();
    [v8 setSleepTrackingOnboardingFirstCompletedDate:v14];
  }

  v15 = [v8 sleepWindDownShortcutsOnboardingFirstCompletedDate];
  if (v15)
  {
    [v8 setSleepWindDownShortcutsOnboardingFirstCompletedDate:v15];
  }

  else
  {
    v16 = [(HDSPEnvironment *)self currentDateProvider];
    v17 = v16[2]();
    [v8 setSleepWindDownShortcutsOnboardingFirstCompletedDate:v17];
  }

  return v8;
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end