@interface HDSPSleepScheduleModelMigrationManager
- (BOOL)needDataMigration;
- (HDSPEnvironment)environment;
- (HDSPSleepScheduleModelMigrationManager)initWithEnvironment:(id)a3;
- (NSString)sourceIdentifier;
- (id)_migrateHomeScreenPage;
- (id)_migrateOnboardingSettings;
- (id)_migrateSleepFocus;
- (id)_migrateSleepScheduleFromMobileTimer;
- (id)_migrateToCloudKit;
- (id)performDataMigration;
@end

@implementation HDSPSleepScheduleModelMigrationManager

- (HDSPSleepScheduleModelMigrationManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSPSleepScheduleModelMigrationManager;
  v5 = [(HDSPSleepScheduleModelMigrationManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = v6;
  }

  return v6;
}

- (BOOL)needDataMigration
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepStorage];
  v4 = [v3 needsMigration];

  return v4;
}

- (id)performDataMigration
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(HDSPSleepScheduleModelMigrationManager *)self _migrateToCloudKit];
  [v3 addObject:v4];

  v5 = [(HDSPSleepScheduleModelMigrationManager *)self _migrateSleepScheduleFromMobileTimer];
  [v3 addObject:v5];

  v6 = [(HDSPSleepScheduleModelMigrationManager *)self _migrateSleepFocus];
  [v3 addObject:v6];

  v7 = [(HDSPSleepScheduleModelMigrationManager *)self _migrateOnboardingSettings];
  [v3 addObject:v7];

  v8 = [(HDSPSleepScheduleModelMigrationManager *)self _migrateHomeScreenPage];
  [v3 addObject:v8];

  v9 = [MEMORY[0x277D2C900] chainFutures:v3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HDSPSleepScheduleModelMigrationManager_performDataMigration__block_invoke;
  v12[3] = &unk_279C7C0A0;
  v12[4] = self;
  v10 = [v9 addSuccessBlock:v12];

  return v10;
}

void __62__HDSPSleepScheduleModelMigrationManager_performDataMigration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v1 = [v2 sleepStorage];
  [v1 saveDataVersion];
}

- (id)_migrateToCloudKit
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke;
  v7[3] = &unk_279C7C0F0;
  v7[4] = self;
  v3 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke_2;
  v6[3] = &unk_279C7C118;
  v6[4] = self;
  v4 = [v3 recover:v6];

  return v4;
}

void __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained behavior];
  v6 = [v5 features];
  v7 = [v6 sleepCloudKitSync];

  if ((v7 & 1) == 0)
  {
    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v22 = objc_opt_class();
      v16 = v22;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping CloudKit migration because feature is disabled", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = [WeakRetained sleepStorage];
  v9 = [v8 cloudStorageDataVersion];

  if (v9)
  {
LABEL_9:
    v17 = NAEmptyResult();
    [v3 finishWithResult:v17];

    goto LABEL_10;
  }

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v22 = objc_opt_class();
    v12 = v22;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing CloudKit migration", buf, 0xCu);
  }

  v13 = [WeakRetained sleepStorage];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke_294;
  v19[3] = &unk_279C7C0C8;
  v20 = v3;
  [v13 performInitialSyncWithCompletion:v19];

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
}

void __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke_294(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = NAEmptyResult();
  [v3 finishWithResult:v5 error:v4];
}

id __60__HDSPSleepScheduleModelMigrationManager__migrateToCloudKit__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = objc_opt_class();
    v7 = v9;
    _os_log_error_impl(&dword_269B11000, v2, OS_LOG_TYPE_ERROR, "[%{public}@] initial sync failed, continuing anyway", &v8, 0xCu);
  }

  v3 = [MEMORY[0x277D2C900] futureWithNoResult];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_migrateSleepScheduleFromMobileTimer
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__HDSPSleepScheduleModelMigrationManager__migrateSleepScheduleFromMobileTimer__block_invoke;
  v4[3] = &unk_279C7C0F0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __78__HDSPSleepScheduleModelMigrationManager__migrateSleepScheduleFromMobileTimer__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sleepStorage];
  v6 = [v5 dataVersion];

  if (v6)
  {
LABEL_9:
    v21 = NAEmptyResult();
    [v3 finishWithResult:v21];

    goto LABEL_10;
  }

  v7 = [WeakRetained behavior];
  v8 = [v7 hksp_supportsLegacySleepAlarms];

  if ((v8 & 1) == 0)
  {
    v18 = HKSPLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138543362;
      v28 = objc_opt_class();
      v20 = v28;
      _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping MobileTimer migration because this device doesn't support legacy alarms", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v28 = objc_opt_class();
    v11 = v28;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating from MobileTimer", buf, 0xCu);
  }

  v12 = [WeakRetained sleepAlarmManager];
  v13 = [v12 sleepAlarmProvider];

  v14 = [v13 sleepAlarmsFuture];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__HDSPSleepScheduleModelMigrationManager__migrateSleepScheduleFromMobileTimer__block_invoke_298;
  v23[3] = &unk_279C7C140;
  v15 = v3;
  v16 = *(a1 + 32);
  v24 = v15;
  v25 = v16;
  v26 = WeakRetained;
  v17 = [v14 addCompletionBlock:v23];

LABEL_10:
  v22 = *MEMORY[0x277D85DE8];
}

void __78__HDSPSleepScheduleModelMigrationManager__migrateSleepScheduleFromMobileTimer__block_invoke_298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x277D85DE8];

    [v4 finishWithError:?];
  }

  else
  {
    v6 = HKSPNilify();
    v7 = [v6 firstObject];
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v7;
      v10 = v19;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating from sleep alarm %{public}@", buf, 0x16u);
    }

    v11 = [HDSPMobileTimerBridge sleepScheduleModelFromSleepAlarm:v7];
    v12 = [*(a1 + 48) sleepStorage];
    v17 = 0;
    [v12 saveSleepScheduleModel:v11 error:&v17];
    v13 = v17;

    v14 = *(a1 + 32);
    v15 = NAEmptyResult();
    [v14 finishWithResult:v15 error:v13];

    v16 = *MEMORY[0x277D85DE8];
  }
}

- (id)_migrateOnboardingSettings
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__HDSPSleepScheduleModelMigrationManager__migrateOnboardingSettings__block_invoke;
  v4[3] = &unk_279C7C0F0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __68__HDSPSleepScheduleModelMigrationManager__migrateOnboardingSettings__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sleepStorage];
  v6 = [v5 dataVersion];

  if (v6 < 8)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v34 = objc_opt_class();
      v10 = v34;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating settings based on onboarding", buf, 0xCu);
    }

    v11 = [WeakRetained sleepStorage];
    v32 = 0;
    v12 = [v11 loadSleepEventRecord:&v32];
    v13 = v32;

    if (v12)
    {
      v14 = [WeakRetained sleepStorage];
      v31 = v13;
      v15 = [v14 loadSleepSettings:&v31];
      v16 = v31;

      v17 = [v15 mutableCopy];
      if (v17)
      {
        if ([v12 isAnySleepCoachingOnboardingCompleted])
        {
          v18 = HKSPLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 32);
            v20 = objc_opt_class();
            *buf = 138543362;
            v34 = v20;
            v21 = v20;
            _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep coaching completed, enabling dnd during wind down", buf, 0xCu);
          }

          [v17 setSleepModeOptions:{objc_msgSend(v17, "sleepModeOptions") | 0x840}];
        }

        if ([v12 isAnySleepTrackingOnboardingCompleted])
        {
          v22 = HKSPLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a1 + 32);
            v24 = objc_opt_class();
            *buf = 138543362;
            v34 = v24;
            v25 = v24;
            _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep tracking completed, enabling watch face", buf, 0xCu);
          }

          [v17 setSleepModeOptions:{objc_msgSend(v17, "sleepModeOptions") | 4}];
        }

        v26 = [WeakRetained sleepStorage];
        v30 = v16;
        [v26 saveSleepSettings:v17 error:&v30];
        v27 = v30;

        v16 = v27;
      }

      v28 = NAEmptyResult();
      [v3 finishWithResult:v28 error:v16];

      v13 = v16;
    }

    else
    {
      v17 = NAEmptyResult();
      [v3 finishWithResult:v17 error:v13];
    }
  }

  else
  {
    v7 = NAEmptyResult();
    [v3 finishWithResult:v7];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_migrateSleepFocus
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HDSPSleepScheduleModelMigrationManager__migrateSleepFocus__block_invoke;
  v4[3] = &unk_279C7C0F0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __60__HDSPSleepScheduleModelMigrationManager__migrateSleepFocus__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sleepStorage];
  v6 = [v5 dataVersion];

  if (v6 < 6)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v37 = objc_opt_class();
      v10 = v37;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating sleep focus", buf, 0xCu);
    }

    v11 = [WeakRetained sleepStorage];
    v35 = 0;
    v12 = [v11 loadSleepEventRecord:&v35];
    v13 = v35;

    if (!v12)
    {
      v15 = NAEmptyResult();
      [v3 finishWithResult:v15 error:v13];
      v16 = v13;
LABEL_22:

      goto LABEL_23;
    }

    v14 = [WeakRetained sleepStorage];
    v34 = v13;
    v15 = [v14 loadSleepSettings:&v34];
    v16 = v34;

    if (!v15)
    {
      v23 = NAEmptyResult();
      [v3 finishWithResult:v23 error:v16];
LABEL_21:

      goto LABEL_22;
    }

    if (([v12 isAnySleepCoachingOnboardingCompleted] & 1) != 0 || objc_msgSend(v15, "scheduledSleepMode"))
    {
      v17 = HKSPLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = objc_opt_class();
        *buf = 138543362;
        v37 = v19;
        v20 = v19;
        _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating sleep focus because we've already onboarded or enabled scheduledSleepMode", buf, 0xCu);
      }

      v21 = [WeakRetained sleepModeManager];
      v33 = 0;
      v22 = [v21 createFocusModeInState:objc_msgSend(MEMORY[0x277D624E8] error:{"defaultConfigurationState"), &v33}];
      v23 = v33;

      if (v22)
      {
        goto LABEL_20;
      }

      v24 = HKSPLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        v26 = objc_opt_class();
        *buf = 138543362;
        v37 = v26;
        v27 = v26;
        _os_log_error_impl(&dword_269B11000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] failed to migrate sleep focus", buf, 0xCu);
      }
    }

    else
    {
      v24 = HKSPLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = objc_opt_class();
        *buf = 138543362;
        v37 = v29;
        v30 = v29;
        _os_log_impl(&dword_269B11000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping focus creation", buf, 0xCu);
      }

      v23 = 0;
    }

LABEL_20:
    v31 = NAEmptyResult();
    [v3 finishWithResult:v31 error:v23];

    goto LABEL_21;
  }

  v7 = NAEmptyResult();
  [v3 finishWithResult:v7];

LABEL_23:
  v32 = *MEMORY[0x277D85DE8];
}

- (id)_migrateHomeScreenPage
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HDSPSleepScheduleModelMigrationManager__migrateHomeScreenPage__block_invoke;
  v4[3] = &unk_279C7C0F0;
  v4[4] = self;
  v2 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v4];

  return v2;
}

void __64__HDSPSleepScheduleModelMigrationManager__migrateHomeScreenPage__block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sleepStorage];
  v6 = [v5 localDataVersion];

  if (v6)
  {
    [v3 finishWithNoResult];
  }

  else
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v37 = objc_opt_class();
      v9 = v37;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] migrating home screen", buf, 0xCu);
    }

    v10 = [WeakRetained sleepStorage];
    v35 = 0;
    v11 = [v10 loadSleepEventRecord:&v35];
    v12 = v35;

    if (v11)
    {
      v13 = [WeakRetained sleepStorage];
      v34 = v12;
      v14 = [v13 loadSleepSettings:&v34];
      v15 = v34;

      v16 = [v14 mutableCopy];
      if (v16)
      {
        if ([v11 isAnySleepWindDownShortcutsOnboardingCompleted] && (objc_msgSend(MEMORY[0x277CBEBD0], "hksp_springBoardUserDefaults"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hksp_BOOLForKey:", *MEMORY[0x277D62028]), v17, v18))
        {
          v19 = HKSPLogForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 32);
            v21 = objc_opt_class();
            *buf = 138543362;
            v37 = v21;
            v22 = v21;
            _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating home screen page because we've already onboarded shortcuts", buf, 0xCu);
          }

          v23 = [WeakRetained sleepModeManager];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __64__HDSPSleepScheduleModelMigrationManager__migrateHomeScreenPage__block_invoke_303;
          v30[3] = &unk_279C7C168;
          v30[4] = *(a1 + 32);
          v31 = v3;
          v16 = v16;
          v32 = v16;
          v33 = WeakRetained;
          [v23 createHomeScreenPageWithCompletion:v30];
        }

        else
        {
          v24 = HKSPLogForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 32);
            v26 = objc_opt_class();
            *buf = 138543362;
            v37 = v26;
            v27 = v26;
            _os_log_impl(&dword_269B11000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping home screen page creation because we haven't onboarded shortcuts", buf, 0xCu);
          }

          [v3 finishWithNoResult];
        }
      }

      else
      {
        v28 = NAEmptyResult();
        [v3 finishWithResult:v28 error:v15];
      }
    }

    else
    {
      v16 = NAEmptyResult();
      [v3 finishWithResult:v16 error:v12];
      v15 = v12;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __64__HDSPSleepScheduleModelMigrationManager__migrateHomeScreenPage__block_invoke_303(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v6;
      v12 = v15;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to migrate home screen: %{public}@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (a2)
    {
      [*(a1 + 48) setSpringBoardSuggestedPageCreated:1];
      v8 = [*(a1 + 56) sleepStorage];
      v9 = *(a1 + 48);
      v13 = 0;
      [v8 saveSleepSettings:v9 error:&v13];
      v6 = v13;
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 40) finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end