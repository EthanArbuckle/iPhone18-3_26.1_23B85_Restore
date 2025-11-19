@interface HDSPSleepActionManager
+ (BOOL)_isValidSnoozeDate:(id)a3;
+ (id)_latestDateInAlarms:(id)a3 dateBlock:(id)a4;
- (HDSPEnvironment)environment;
- (HDSPSleepActionManager)initWithEnvironment:(id)a3;
- (NSString)sourceIdentifier;
- (void)confirmWakeUp:(BOOL)a3 date:(id)a4 confirmUntilDate:(id)a5;
- (void)dismissGoodMorning;
- (void)dismissGoodMorningOnDate:(id)a3;
- (void)dismissSleepLock;
- (void)sleepAlarmDismissedOnDate:(id)a3 source:(unint64_t)a4;
- (void)sleepAlarmSnoozedUntilDate:(id)a3 source:(unint64_t)a4;
- (void)sleepAlarmWasModified;
@end

@implementation HDSPSleepActionManager

- (HDSPSleepActionManager)initWithEnvironment:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDSPSleepActionManager;
  v5 = [(HDSPSleepActionManager *)&v16 init];
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v18 = v7;
      v19 = 2048;
      v20 = v5;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v5->_environment, v4);
    v9 = objc_alloc(MEMORY[0x277D624A0]);
    v10 = [v4 defaultCallbackScheduler];
    v11 = [v9 initWithCallbackScheduler:v10];
    observers = v5->_observers;
    v5->_observers = v11;

    v13 = v5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)confirmWakeUp:(BOOL)a3 date:(id)a4 confirmUntilDate:(id)a5
{
  v6 = a3;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HDSPSleepActionManager *)self environment];
  v11 = [v10 currentContext];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [v11 source];
    *buf = 138544386;
    v35 = v13;
    v36 = 2114;
    v37 = v8;
    v38 = 2114;
    v39 = v9;
    v40 = 1024;
    v41 = v6;
    v42 = 2114;
    v43 = v15;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up notification confirmed at %{public}@, until %{public}@, (wasExplicitConfirmation: %d, %{public}@)", buf, 0x30u);
  }

  v16 = [(HDSPSleepActionManager *)self environment];
  v17 = [v16 sleepScheduleModelManager];
  v18 = [v17 sleepEventRecord];
  v19 = [v18 mutableCopy];

  [v19 setWakeUpEarlyNotificationConfirmedDate:v8];
  [v19 setWakeUpConfirmedUntilDate:v9];
  v20 = [(HDSPSleepActionManager *)self environment];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke;
  v28[3] = &unk_279C7CC40;
  v29 = v17;
  v30 = v19;
  v33 = v6;
  v31 = self;
  v32 = v11;
  v21 = v11;
  v22 = v19;
  v23 = v17;
  v24 = [v21 source];
  v25 = [(HDSPSleepActionManager *)self sourceIdentifier];
  v26 = HDSPSourceByReplacingIdentifier(v24, v25);
  [v20 perform:v28 withSource:v26];

  v27 = *MEMORY[0x277D85DE8];
}

void __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_2;
  v11[3] = &unk_279C7CC18;
  v4 = *(a1 + 56);
  v11[4] = *(a1 + 48);
  v13 = *(a1 + 64);
  v12 = v4;
  LOBYTE(v3) = [v2 saveSleepEventRecord:v3 error:&v14 preNotifyBlock:v11];
  v5 = v14;
  if ((v3 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = objc_opt_class();
      *buf = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v5;
      v10 = v9;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

id __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_3;
  v5[3] = &unk_279C7CBF0;
  v5[4] = v1;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  v3 = [v2 enumerateObserversWithFutureBlock:v5];

  return v3;
}

id __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke_4;
    v10 = &unk_279C7CAC8;
    v11 = v3;
    v12 = *(a1 + 48);
    [v4 perform:&v7 withContext:*(a1 + 40)];
  }

  v5 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v5;
}

- (void)dismissGoodMorning
{
  v3 = [(HDSPSleepActionManager *)self environment];
  v4 = [v3 currentDateProvider];
  v5 = v4[2]();

  [(HDSPSleepActionManager *)self dismissGoodMorningOnDate:v5];
}

- (void)dismissGoodMorningOnDate:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDSPSleepActionManager *)self environment];
  v6 = [v5 currentContext];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v6 source];
    *buf = 138543618;
    v33 = v8;
    v34 = 2114;
    v35 = v10;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissing good morning (%{public}@)", buf, 0x16u);
  }

  v11 = [(HDSPSleepActionManager *)self environment];
  v12 = [v11 sleepScheduleModelManager];

  v13 = [v12 sleepEventRecord];
  v14 = [v13 mutableCopy];

  [v14 setGoodMorningDismissedDate:v4];
  v15 = HKSPLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = [v14 goodMorningDismissedDate];
    *buf = 138543618;
    v33 = v16;
    v34 = 2114;
    v35 = v18;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Good morning was dismissed %{public}@", buf, 0x16u);
  }

  v19 = [(HDSPSleepActionManager *)self environment];
  v27 = MEMORY[0x277D85DD0];
  v28 = v12;
  v29 = v14;
  v30 = self;
  v31 = v6;
  v20 = v6;
  v21 = v14;
  v22 = v12;
  v23 = [v20 source];
  v24 = [(HDSPSleepActionManager *)self sourceIdentifier];
  v25 = HDSPSourceByReplacingIdentifier(v23, v24);
  [v19 perform:&v27 withSource:v25];

  v26 = *MEMORY[0x277D85DE8];
}

void __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v13 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_2;
  v11[3] = &unk_279C7CC90;
  v4 = a1[7];
  v11[4] = a1[6];
  v12 = v4;
  LOBYTE(v3) = [v2 saveSleepEventRecord:v3 error:&v13 preNotifyBlock:v11];
  v5 = v13;
  if ((v3 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[6];
      v9 = objc_opt_class();
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v10 = v9;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

id __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_3;
  v6[3] = &unk_279C7CC68;
  v6[4] = v2;
  v7 = v1;
  v4 = [v3 enumerateObserversWithFutureBlock:v6];

  return v4;
}

id __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__HDSPSleepActionManager_dismissGoodMorningOnDate___block_invoke_4;
    v7[3] = &unk_279C7B108;
    v8 = v3;
    [v4 perform:v7 withContext:*(a1 + 40)];
  }

  v5 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v5;
}

- (void)dismissSleepLock
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPSleepActionManager *)self environment];
  v4 = [v3 currentContext];

  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 source];
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissed sleep lock (%{public}@)", buf, 0x16u);
  }

  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__HDSPSleepActionManager_dismissSleepLock__block_invoke;
  v12[3] = &unk_279C7CCE0;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __42__HDSPSleepActionManager_dismissSleepLock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__HDSPSleepActionManager_dismissSleepLock__block_invoke_2;
    v5[3] = &unk_279C7B108;
    v6 = v3;
    [v4 perform:v5 withContext:*(a1 + 40)];
  }
}

- (void)sleepAlarmDismissedOnDate:(id)a3 source:(unint64_t)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDSPSleepActionManager *)self environment];
  v8 = [v7 currentContext];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [v8 source];
    *buf = 138543874;
    v50 = v10;
    v51 = 2114;
    v52 = v6;
    v53 = 2114;
    v54 = v12;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm did dismiss: %{public}@ (%{public}@)", buf, 0x20u);
  }

  if (v6)
  {
    v13 = [(HDSPSleepActionManager *)self environment];
    v14 = [v13 currentDateProvider];
    v15 = v14[2]();

    [v6 timeIntervalSinceDate:v15];
    if (fabs(v16) > 86400.0)
    {
      v17 = HKSPLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *buf = 138543618;
        v50 = v18;
        v51 = 2114;
        v52 = v6;
        v19 = v18;
        _os_log_error_impl(&dword_269B11000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] ignoring sleepAlarm with old dismiss date: %{public}@", buf, 0x16u);
      }

      goto LABEL_19;
    }

    v22 = [(HDSPSleepActionManager *)self environment];
    v17 = [v22 sleepScheduleModelManager];

    v23 = [(HDSPSleepActionManager *)self environment];
    v24 = [v23 sleepCoordinator];
    v25 = [v24 currentSleepScheduleState];

    if (v25 != 6)
    {
      v26 = [v17 sleepScheduleModel];
      v27 = [v26 closestEventWithIdentifier:*MEMORY[0x277D621E0] dueAroundDate:v15];
      if (([v27 hksp_isWithinInterval:v6 ofDate:60.0] & 1) == 0)
      {
        v37 = HKSPLogForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = objc_opt_class();
          v39 = v38;
          v40 = NSStringFromHKSPSleepScheduleState();
          *buf = 138543618;
          v50 = v38;
          v51 = 2114;
          v52 = v40;
          _os_log_impl(&dword_269B11000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring sleepAlarm dismissed outside of allowed window during %{public}@", buf, 0x16u);
        }

        goto LABEL_18;
      }
    }

    v28 = [v17 sleepEventRecord];
    v29 = [v28 mutableCopy];

    [v29 setWakeUpAlarmDismissedDate:v6];
    v30 = HKSPLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v42 = v31;
      v32 = [v29 wakeUpAlarmDismissedDate];
      *buf = 138543618;
      v50 = v31;
      v51 = 2114;
      v52 = v32;
      _os_log_impl(&dword_269B11000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm dismissed at %{public}@", buf, 0x16u);
    }

    v33 = [(HDSPSleepActionManager *)self environment];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke;
    v43[3] = &unk_279C7CD58;
    v44 = v17;
    v45 = v29;
    v46 = self;
    v48 = a4;
    v47 = v8;
    v26 = v29;
    v34 = [v47 source];
    v35 = [(HDSPSleepActionManager *)self sourceIdentifier];
    v36 = HDSPSourceByReplacingIdentifier(v34, v35);
    [v33 perform:v43 withSource:v36];

    v27 = v44;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v15 = HKSPLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v20 = objc_opt_class();
    *buf = 138543362;
    v50 = v20;
    v21 = v20;
    _os_log_fault_impl(&dword_269B11000, v15, OS_LOG_TYPE_FAULT, "[%{public}@] sleepAlarm has nil dismiss date", buf, 0xCu);
  }

LABEL_20:

  v41 = *MEMORY[0x277D85DE8];
}

void __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_2;
  v12[3] = &unk_279C7CD30;
  v5 = a1[7];
  v4 = a1[8];
  v12[4] = a1[6];
  v14 = v4;
  v15 = 0;
  v13 = v5;
  LOBYTE(v3) = [v2 saveSleepEventRecord:v3 error:&v15 preNotifyBlock:v12];
  v6 = v15;
  if ((v3 & 1) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[6];
      v10 = objc_opt_class();
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

id __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_2(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_3;
  v7[3] = &unk_279C7CD08;
  v4 = a1[5];
  v3 = a1[6];
  v7[4] = v1;
  v9 = v3;
  v8 = v4;
  v5 = [v2 enumerateObserversWithFutureBlock:v7];

  return v5;
}

id __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke_4;
    v13 = &unk_279C7B740;
    v5 = v3;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = v5;
    v15 = v7;
    [v4 perform:&v10 withContext:v6];
  }

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v8;
}

- (void)sleepAlarmSnoozedUntilDate:(id)a3 source:(unint64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDSPSleepActionManager *)self environment];
  v8 = [v7 currentContext];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [v8 source];
    *buf = 138543874;
    v36 = v10;
    v37 = 2114;
    v38 = v6;
    v39 = 2114;
    v40 = v12;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm did snooze: %{public}@ (%{public}@)", buf, 0x20u);
  }

  v13 = [(HDSPSleepActionManager *)self environment];
  v14 = [v13 sleepScheduleModelManager];

  v15 = [v14 sleepEventRecord];
  v16 = [v15 mutableCopy];

  [v16 setWakeUpAlarmSnoozedUntilDate:v6];
  v17 = HKSPLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = v18;
    v20 = [v16 wakeUpAlarmSnoozedUntilDate];
    *buf = 138543618;
    v36 = v18;
    v37 = 2114;
    v38 = v20;
    _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm snoozed until %{public}@", buf, 0x16u);
  }

  v21 = [(HDSPSleepActionManager *)self environment];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke;
  v29[3] = &unk_279C7CD58;
  v30 = v14;
  v31 = v16;
  v33 = v8;
  v34 = a4;
  v32 = self;
  v22 = v8;
  v23 = v16;
  v24 = v14;
  v25 = [v22 source];
  v26 = [(HDSPSleepActionManager *)self sourceIdentifier];
  v27 = HDSPSourceByReplacingIdentifier(v25, v26);
  [v21 perform:v29 withSource:v27];

  v28 = *MEMORY[0x277D85DE8];
}

void __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_2;
  v12[3] = &unk_279C7CD30;
  v5 = a1[7];
  v4 = a1[8];
  v12[4] = a1[6];
  v14 = v4;
  v15 = 0;
  v13 = v5;
  LOBYTE(v3) = [v2 saveSleepEventRecord:v3 error:&v15 preNotifyBlock:v12];
  v6 = v15;
  if ((v3 & 1) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[6];
      v10 = objc_opt_class();
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

id __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_2(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_3;
  v7[3] = &unk_279C7CD08;
  v4 = a1[5];
  v3 = a1[6];
  v7[4] = v1;
  v9 = v3;
  v8 = v4;
  v5 = [v2 enumerateObserversWithFutureBlock:v7];

  return v5;
}

id __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) environment];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke_4;
    v13 = &unk_279C7B740;
    v5 = v3;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = v5;
    v15 = v7;
    [v4 perform:&v10 withContext:v6];
  }

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v8;
}

+ (id)_latestDateInAlarms:(id)a3 dateBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HDSPSleepActionManager__latestDateInAlarms_dateBlock___block_invoke;
  v10[3] = &unk_279C7CD80;
  v7 = v6;
  v11 = v7;
  v12 = &v13;
  [v5 na_each:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __56__HDSPSleepActionManager__latestDateInAlarms_dateBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = v2;
  v4 = *(*(a1 + 40) + 8);
  obj = v2;
  if (*(v4 + 40))
  {
    if (![v2 hksp_isAfterDate:?])
    {
      goto LABEL_5;
    }

    v4 = *(*(a1 + 40) + 8);
    v3 = obj;
  }

  objc_storeStrong((v4 + 40), v3);
LABEL_5:
}

+ (BOOL)_isValidSnoozeDate:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 distantPast];
  LOBYTE(v3) = [v4 isEqualToDate:v5];

  v6 = v3 ^ 1;
  return v6;
}

- (void)sleepAlarmWasModified
{
  v3 = [(HDSPSleepActionManager *)self environment];
  v4 = [v3 sleepAlarmManager];
  v5 = [v4 currentSleepAlarms];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke;
  v7[3] = &unk_279C7B280;
  v7[4] = self;
  v6 = [v5 addCompletionBlock:v7];
}

void __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPNilify();
  v6 = v5;
  if (v4)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v53 = objc_opt_class();
      v54 = 2114;
      v55 = v4;
      v9 = v53;
      v10 = "[%{public}@] fetch alarms failed with error: %{public}@";
      v11 = v7;
      v12 = 22;
LABEL_4:
      _os_log_error_impl(&dword_269B11000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    }
  }

  else
  {
    if (![v5 count])
    {
      v7 = HKSPLogForCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v47 = *(a1 + 32);
      *buf = 138543362;
      v53 = objc_opt_class();
      v9 = v53;
      v10 = "[%{public}@] no sleep alarms found";
      v11 = v7;
      v12 = 12;
      goto LABEL_4;
    }

    v13 = [*(a1 + 32) environment];
    v7 = [v13 currentContext];

    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [v7 source];
      *buf = 138543618;
      v53 = v16;
      v54 = 2114;
      v55 = v18;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarms modified (%{public}@)", buf, 0x16u);
    }

    v19 = *(a1 + 32);
    v20 = [objc_opt_class() _latestDateInAlarms:v6 dateBlock:&__block_literal_global_24];
    v21 = HKSPLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = objc_opt_class();
      *buf = 138543618;
      v53 = v23;
      v54 = 2114;
      v55 = v20;
      v24 = v23;
      _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] latest sleep alarm modified date: %{public}@", buf, 0x16u);
    }

    v25 = *(a1 + 32);
    v26 = [objc_opt_class() _latestDateInAlarms:v6 dateBlock:&__block_literal_global_313_0];
    v27 = HKSPLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      v29 = objc_opt_class();
      *buf = 138543618;
      v53 = v29;
      v54 = 2114;
      v55 = v26;
      v30 = v29;
      _os_log_impl(&dword_269B11000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] latest sleep alarm snooze date: %{public}@", buf, 0x16u);
    }

    v31 = [*(a1 + 32) environment];
    v32 = [v31 sleepScheduleModelManager];

    v33 = [v32 sleepEventRecord];
    v34 = [v33 mutableCopy];

    v35 = *(a1 + 32);
    if (([objc_opt_class() _isValidSnoozeDate:v26] & 1) == 0)
    {
      v36 = *(a1 + 32);
      v37 = objc_opt_class();
      v38 = [v34 wakeUpAlarmSnoozedUntilDate];
      LODWORD(v37) = [v37 _isValidSnoozeDate:v38];

      if (v37)
      {
        v39 = HKSPLogForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 32);
          v41 = objc_opt_class();
          *buf = 138543362;
          v53 = v41;
          v42 = v41;
          _os_log_impl(&dword_269B11000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] snooze date was reset", buf, 0xCu);
        }

        [v34 setWakeUpAlarmSnoozedUntilDate:0];
        v43 = [*(a1 + 32) environment];
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke_314;
        v48[3] = &unk_279C7C050;
        v49 = v32;
        v44 = v34;
        v45 = *(a1 + 32);
        v50 = v44;
        v51 = v45;
        [v43 perform:v48 withSource:?];
      }
    }
  }

LABEL_19:

  v46 = *MEMORY[0x277D85DE8];
}

void __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke_314(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = [v2 saveSleepEventRecord:v3 error:&v11];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[6];
      v9 = objc_opt_class();
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      v10 = v9;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end