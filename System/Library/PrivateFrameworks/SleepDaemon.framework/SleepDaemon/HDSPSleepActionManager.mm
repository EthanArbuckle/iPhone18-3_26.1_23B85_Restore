@interface HDSPSleepActionManager
+ (BOOL)_isValidSnoozeDate:(id)date;
+ (id)_latestDateInAlarms:(id)alarms dateBlock:(id)block;
- (HDSPEnvironment)environment;
- (HDSPSleepActionManager)initWithEnvironment:(id)environment;
- (NSString)sourceIdentifier;
- (void)confirmWakeUp:(BOOL)up date:(id)date confirmUntilDate:(id)untilDate;
- (void)dismissGoodMorning;
- (void)dismissGoodMorningOnDate:(id)date;
- (void)dismissSleepLock;
- (void)sleepAlarmDismissedOnDate:(id)date source:(unint64_t)source;
- (void)sleepAlarmSnoozedUntilDate:(id)date source:(unint64_t)source;
- (void)sleepAlarmWasModified;
@end

@implementation HDSPSleepActionManager

- (HDSPSleepActionManager)initWithEnvironment:(id)environment
{
  v21 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
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

    objc_storeWeak(&v5->_environment, environmentCopy);
    v9 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v11 = [v9 initWithCallbackScheduler:defaultCallbackScheduler];
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

- (void)confirmWakeUp:(BOOL)up date:(id)date confirmUntilDate:(id)untilDate
{
  upCopy = up;
  v44 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  untilDateCopy = untilDate;
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    source = [currentContext source];
    *buf = 138544386;
    v35 = v13;
    v36 = 2114;
    v37 = dateCopy;
    v38 = 2114;
    v39 = untilDateCopy;
    v40 = 1024;
    v41 = upCopy;
    v42 = 2114;
    v43 = source;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up notification confirmed at %{public}@, until %{public}@, (wasExplicitConfirmation: %d, %{public}@)", buf, 0x30u);
  }

  environment2 = [(HDSPSleepActionManager *)self environment];
  sleepScheduleModelManager = [environment2 sleepScheduleModelManager];
  sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
  v19 = [sleepEventRecord mutableCopy];

  [v19 setWakeUpEarlyNotificationConfirmedDate:dateCopy];
  [v19 setWakeUpConfirmedUntilDate:untilDateCopy];
  environment3 = [(HDSPSleepActionManager *)self environment];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __62__HDSPSleepActionManager_confirmWakeUp_date_confirmUntilDate___block_invoke;
  v28[3] = &unk_279C7CC40;
  v29 = sleepScheduleModelManager;
  v30 = v19;
  v33 = upCopy;
  selfCopy = self;
  v32 = currentContext;
  v21 = currentContext;
  v22 = v19;
  v23 = sleepScheduleModelManager;
  source2 = [v21 source];
  sourceIdentifier = [(HDSPSleepActionManager *)self sourceIdentifier];
  v26 = HDSPSourceByReplacingIdentifier(source2, sourceIdentifier);
  [environment3 perform:v28 withSource:v26];

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
  environment = [(HDSPSleepActionManager *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v5 = currentDateProvider[2]();

  [(HDSPSleepActionManager *)self dismissGoodMorningOnDate:v5];
}

- (void)dismissGoodMorningOnDate:(id)date
{
  v36 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    source = [currentContext source];
    *buf = 138543618;
    v33 = v8;
    v34 = 2114;
    v35 = source;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissing good morning (%{public}@)", buf, 0x16u);
  }

  environment2 = [(HDSPSleepActionManager *)self environment];
  sleepScheduleModelManager = [environment2 sleepScheduleModelManager];

  sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
  v14 = [sleepEventRecord mutableCopy];

  [v14 setGoodMorningDismissedDate:dateCopy];
  v15 = HKSPLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    goodMorningDismissedDate = [v14 goodMorningDismissedDate];
    *buf = 138543618;
    v33 = v16;
    v34 = 2114;
    v35 = goodMorningDismissedDate;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Good morning was dismissed %{public}@", buf, 0x16u);
  }

  environment3 = [(HDSPSleepActionManager *)self environment];
  v27 = MEMORY[0x277D85DD0];
  v28 = sleepScheduleModelManager;
  v29 = v14;
  selfCopy = self;
  v31 = currentContext;
  v20 = currentContext;
  v21 = v14;
  v22 = sleepScheduleModelManager;
  source2 = [v20 source];
  sourceIdentifier = [(HDSPSleepActionManager *)self sourceIdentifier];
  v25 = HDSPSourceByReplacingIdentifier(source2, sourceIdentifier);
  [environment3 perform:&v27 withSource:v25];

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
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    source = [currentContext source];
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = source;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissed sleep lock (%{public}@)", buf, 0x16u);
  }

  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__HDSPSleepActionManager_dismissSleepLock__block_invoke;
  v12[3] = &unk_279C7CCE0;
  v12[4] = self;
  v13 = currentContext;
  v10 = currentContext;
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

- (void)sleepAlarmDismissedOnDate:(id)date source:(unint64_t)source
{
  v55 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    source = [currentContext source];
    *buf = 138543874;
    v50 = v10;
    v51 = 2114;
    v52 = dateCopy;
    v53 = 2114;
    v54 = source;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm did dismiss: %{public}@ (%{public}@)", buf, 0x20u);
  }

  if (dateCopy)
  {
    environment2 = [(HDSPSleepActionManager *)self environment];
    currentDateProvider = [environment2 currentDateProvider];
    v15 = currentDateProvider[2]();

    [dateCopy timeIntervalSinceDate:v15];
    if (fabs(v16) > 86400.0)
    {
      sleepScheduleModelManager = HKSPLogForCategory();
      if (os_log_type_enabled(sleepScheduleModelManager, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *buf = 138543618;
        v50 = v18;
        v51 = 2114;
        v52 = dateCopy;
        v19 = v18;
        _os_log_error_impl(&dword_269B11000, sleepScheduleModelManager, OS_LOG_TYPE_ERROR, "[%{public}@] ignoring sleepAlarm with old dismiss date: %{public}@", buf, 0x16u);
      }

      goto LABEL_19;
    }

    environment3 = [(HDSPSleepActionManager *)self environment];
    sleepScheduleModelManager = [environment3 sleepScheduleModelManager];

    environment4 = [(HDSPSleepActionManager *)self environment];
    sleepCoordinator = [environment4 sleepCoordinator];
    currentSleepScheduleState = [sleepCoordinator currentSleepScheduleState];

    if (currentSleepScheduleState != 6)
    {
      sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];
      v27 = [sleepScheduleModel closestEventWithIdentifier:*MEMORY[0x277D621E0] dueAroundDate:v15];
      if (([v27 hksp_isWithinInterval:dateCopy ofDate:60.0] & 1) == 0)
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

    sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
    v29 = [sleepEventRecord mutableCopy];

    [v29 setWakeUpAlarmDismissedDate:dateCopy];
    v30 = HKSPLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v42 = v31;
      wakeUpAlarmDismissedDate = [v29 wakeUpAlarmDismissedDate];
      *buf = 138543618;
      v50 = v31;
      v51 = 2114;
      v52 = wakeUpAlarmDismissedDate;
      _os_log_impl(&dword_269B11000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm dismissed at %{public}@", buf, 0x16u);
    }

    environment5 = [(HDSPSleepActionManager *)self environment];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __59__HDSPSleepActionManager_sleepAlarmDismissedOnDate_source___block_invoke;
    v43[3] = &unk_279C7CD58;
    v44 = sleepScheduleModelManager;
    v45 = v29;
    selfCopy = self;
    sourceCopy = source;
    v47 = currentContext;
    sleepScheduleModel = v29;
    source2 = [v47 source];
    sourceIdentifier = [(HDSPSleepActionManager *)self sourceIdentifier];
    v36 = HDSPSourceByReplacingIdentifier(source2, sourceIdentifier);
    [environment5 perform:v43 withSource:v36];

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

- (void)sleepAlarmSnoozedUntilDate:(id)date source:(unint64_t)source
{
  v41 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  environment = [(HDSPSleepActionManager *)self environment];
  currentContext = [environment currentContext];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    source = [currentContext source];
    *buf = 138543874;
    v36 = v10;
    v37 = 2114;
    v38 = dateCopy;
    v39 = 2114;
    v40 = source;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm did snooze: %{public}@ (%{public}@)", buf, 0x20u);
  }

  environment2 = [(HDSPSleepActionManager *)self environment];
  sleepScheduleModelManager = [environment2 sleepScheduleModelManager];

  sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
  v16 = [sleepEventRecord mutableCopy];

  [v16 setWakeUpAlarmSnoozedUntilDate:dateCopy];
  v17 = HKSPLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = v18;
    wakeUpAlarmSnoozedUntilDate = [v16 wakeUpAlarmSnoozedUntilDate];
    *buf = 138543618;
    v36 = v18;
    v37 = 2114;
    v38 = wakeUpAlarmSnoozedUntilDate;
    _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep alarm snoozed until %{public}@", buf, 0x16u);
  }

  environment3 = [(HDSPSleepActionManager *)self environment];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__HDSPSleepActionManager_sleepAlarmSnoozedUntilDate_source___block_invoke;
  v29[3] = &unk_279C7CD58;
  v30 = sleepScheduleModelManager;
  v31 = v16;
  v33 = currentContext;
  sourceCopy = source;
  selfCopy = self;
  v22 = currentContext;
  v23 = v16;
  v24 = sleepScheduleModelManager;
  source2 = [v22 source];
  sourceIdentifier = [(HDSPSleepActionManager *)self sourceIdentifier];
  v27 = HDSPSourceByReplacingIdentifier(source2, sourceIdentifier);
  [environment3 perform:v29 withSource:v27];

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

+ (id)_latestDateInAlarms:(id)alarms dateBlock:(id)block
{
  alarmsCopy = alarms;
  blockCopy = block;
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
  v7 = blockCopy;
  v11 = v7;
  v12 = &v13;
  [alarmsCopy na_each:v10];
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

+ (BOOL)_isValidSnoozeDate:(id)date
{
  if (!date)
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  distantPast = [v3 distantPast];
  LOBYTE(v3) = [dateCopy isEqualToDate:distantPast];

  v6 = v3 ^ 1;
  return v6;
}

- (void)sleepAlarmWasModified
{
  environment = [(HDSPSleepActionManager *)self environment];
  sleepAlarmManager = [environment sleepAlarmManager];
  currentSleepAlarms = [sleepAlarmManager currentSleepAlarms];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HDSPSleepActionManager_sleepAlarmWasModified__block_invoke;
  v7[3] = &unk_279C7B280;
  v7[4] = self;
  v6 = [currentSleepAlarms addCompletionBlock:v7];
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