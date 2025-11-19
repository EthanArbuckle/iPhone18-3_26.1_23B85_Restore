@interface HKSPSleepStore
+ (id)_updatedHistoricalSleepGoalForSleepSchedule:(id)a3 options:(unint64_t)a4 date:(id)a5;
+ (id)_updatedHistoricalSleepSchedulesFromSleepSchedule:(id)a3 options:(unint64_t)a4 date:(id)a5;
- (BOOL)_resultHasSchedule:(id)a3;
- (BOOL)_resultScheduleIsValid:(id)a3;
- (BOOL)_resultScheduleMeetsDefaultGoal:(id)a3;
- (BOOL)_shouldNotifyObserversForClientIdentifier:(id)a3;
- (BOOL)hasSleepFocusMode;
- (BOOL)shouldReloadWidgetOfKind:(id)a3;
- (HKSPSleepFocusConfiguration)sleepFocusConfiguration;
- (HKSPSleepStore)init;
- (HKSPSleepStore)initWithConnectionProviderProvider:(id)a3 identifier:(id)a4 healthStore:(id)a5 options:(unint64_t)a6;
- (HKSPSleepStore)initWithConnectionProviderProvider:(id)a3 identifier:(id)a4 healthStore:(id)a5 options:(unint64_t)a6 analyticsManager:(id)a7 throttlerProvider:(id)a8 callbackScheduler:(id)a9 sleepFocusModeBridgeProvider:(id)a10 widgetTimelineControllersProvider:(id)a11 widgetRelevanceControllerProvider:(id)a12 currentDateProvider:(id)a13;
- (HKSPSleepStore)initWithHealthStore:(id)a3;
- (NSString)description;
- (id)_clearWidgetOverrideOnServer;
- (id)_confirmAwakeOnServer;
- (id)_dismissGoodMorningOnServer;
- (id)_dismissSleepLockOnServer;
- (id)_prepareObjectForSave:(id)a3 options:(unint64_t)a4;
- (id)_publishNotificationOnServerWithIdentifier:(id)a3 userInfo:(id)a4;
- (id)_publishWakeUpResultsNotificationOnServer;
- (id)_saveCurrentSleepEventRecordOnServer:(id)a3 options:(unint64_t)a4;
- (id)_saveCurrentSleepScheduleOnServer:(id)a3 options:(unint64_t)a4;
- (id)_saveCurrentSleepSettingsOnServer:(id)a3 options:(unint64_t)a4;
- (id)_sendScheduleChangedAnalyticsWithContext:(id)a3;
- (id)_setLockScreenOverrideStateOnServerWithState:(int64_t)a3 userInfo:(id)a4;
- (id)_setSleepModeOnServer:(int64_t)a3 reason:(unint64_t)a4;
- (id)_setWidgetOverrideStateOnServerWithState:(int64_t)a3;
- (id)_sleepAlarmWasDismissedOnDateOnServer:(id)a3 source:(unint64_t)a4;
- (id)_sleepAlarmWasModifiedOnServer:(unint64_t)a3;
- (id)_sleepAlarmWasSnoozedUntilDateOnServer:(id)a3 source:(unint64_t)a4;
- (id)_writeHistoricalSchedule:(id)a3 options:(unint64_t)a4;
- (id)currentSleepEventRecordWithError:(id *)a3;
- (id)currentSleepScheduleWithError:(id *)a3;
- (id)currentSleepSettingsWithError:(id *)a3;
- (id)nextEventDueAfterDate:(id)a3 error:(id *)a4;
- (id)nextEventDueAfterDateFuture:(id)a3;
- (id)nextEventWithIdentifier:(id)a3 dueAfterDate:(id)a4 error:(id *)a5;
- (id)nextEventWithIdentifierFuture:(id)a3 dueAfterDate:(id)a4;
- (id)saveCurrentSleepEventRecord:(id)a3 options:(unint64_t)a4;
- (id)saveCurrentSleepSchedule:(id)a3 options:(unint64_t)a4 context:(id)a5;
- (id)saveCurrentSleepSettings:(id)a3 options:(unint64_t)a4;
- (id)sleepModeOnFuture;
- (id)sleepScheduleModelWithError:(id *)a3;
- (id)upcomingResolvedScheduleOccurrenceAfterDate:(id)a3 alarmStatus:(int64_t *)a4 error:(id *)a5;
- (id)upcomingScheduleOccurrenceAfterDate:(id)a3 alarmStatus:(int64_t *)a4 error:(id *)a5;
- (id)upcomingScheduleOccurrenceAfterDate:(id)a3 error:(id *)a4;
- (id)upcomingScheduleOccurrenceAfterDateFuture:(id)a3;
- (int64_t)sleepModeWithError:(id *)a3;
- (int64_t)sleepWidgetStateWithError:(id *)a3;
- (unint64_t)currentSleepScheduleStateWithError:(id *)a3;
- (void)_checkInWithCurrentSyncAnchor;
- (void)_notifyObserversForChangedSleepEventRecord:(id)a3;
- (void)_notifyObserversForChangedSleepMode:(int64_t)a3 reason:(unint64_t)a4;
- (void)_notifyObserversForChangedSleepSchedule:(id)a3;
- (void)_notifyObserversForChangedSleepScheduleState:(unint64_t)a3 reason:(unint64_t)a4;
- (void)_notifyObserversForChangedSleepSettings:(id)a3;
- (void)_notifyObserversForSleepEvent:(id)a3;
- (void)_updateAndNotifyForChangedSleepEventRecord:(id)a3 clientIdentifier:(id)a4;
- (void)_updateAndNotifyForChangedSleepMode:(id)a3;
- (void)_updateAndNotifyForChangedSleepSchedule:(id)a3 clientIdentifier:(id)a4;
- (void)_updateAndNotifyForChangedSleepScheduleState:(id)a3;
- (void)_updateAndNotifyForChangedSleepSettings:(id)a3 clientIdentifier:(id)a4;
- (void)_updateAndNotifyForSleepEvent:(id)a3;
- (void)clearWidgetOverrideWithCompletion:(id)a3;
- (void)configureSleepFocusWithState:(unint64_t)a3 completion:(id)a4;
- (void)confirmAwakeWithCompletion:(id)a3;
- (void)connectSynchronously:(BOOL)a3;
- (void)createSleepFocusInState:(unint64_t)a3 completion:(id)a4;
- (void)currentSleepEventRecordWithCompletion:(id)a3;
- (void)currentSleepScheduleStateWithCompletion:(id)a3;
- (void)currentSleepScheduleWithCompletion:(id)a3;
- (void)currentSleepSettingsWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteSleepFocusModeWithCompletion:(id)a3;
- (void)dismissGoodMorningWithCompletion:(id)a3;
- (void)dismissSleepLockWithCompletion:(id)a3;
- (void)nextEventDueAfterDate:(id)a3 completion:(id)a4;
- (void)nextEventWithIdentifier:(id)a3 dueAfterDate:(id)a4 completion:(id)a5;
- (void)publishNotificationWithIdentifier:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)publishWakeUpResultsNotificationWithCompletion:(id)a3;
- (void)reconnect;
- (void)saveCurrentSleepEventRecord:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)saveCurrentSleepSchedule:(id)a3 options:(unint64_t)a4 context:(id)a5 completion:(id)a6;
- (void)saveCurrentSleepSettings:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)setLockScreenOverrideState:(int64_t)a3 userInfo:(id)a4 completion:(id)a5;
- (void)setSleepCoachingOnboardingCompletedVersion:(int64_t)a3 completion:(id)a4;
- (void)setSleepModeOn:(BOOL)a3 reason:(unint64_t)a4 completion:(id)a5;
- (void)setSleepTrackingOnboardingCompletedVersion:(int64_t)a3 completion:(id)a4;
- (void)setSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)a3 completion:(id)a4;
- (void)setWidgetOverrideState:(int64_t)a3 completion:(id)a4;
- (void)sleepAlarmWasDismissedOnDate:(id)a3 source:(unint64_t)a4 completion:(id)a5;
- (void)sleepAlarmWasModifiedFromSource:(unint64_t)a3 completion:(id)a4;
- (void)sleepAlarmWasSnoozedUntilDate:(id)a3 source:(unint64_t)a4 completion:(id)a5;
- (void)sleepFocusModeBridge:(id)a3 didUpdateSleepFocusConfiguration:(id)a4;
- (void)sleepModeOnWithCompletion:(id)a3;
- (void)sleepModeWithCompletion:(id)a3;
- (void)sleepScheduleModelWithCompletion:(id)a3;
- (void)sleepWidgetStateWithCompletion:(id)a3;
- (void)suggestedSleepScheduleWithProviders:(id)a3 completion:(id)a4;
- (void)trackSleepDataInteractionEventWithType:(unint64_t)a3 isOnboardedVitals:(BOOL)a4 completion:(id)a5;
- (void)upcomingScheduleOccurrenceAfterDate:(id)a3 completion:(id)a4;
@end

@implementation HKSPSleepStore

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HKSPXPCClientIdentifier *)self->_clientIdentifier loggingIdentifier];
  v7 = [v3 stringWithFormat:@"[%@.%@.%p]", v5, v6, self];

  return v7;
}

- (void)trackSleepDataInteractionEventWithType:(unint64_t)a3 isOnboardedVitals:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HKSPSleepStore_Analytics__trackSleepDataInteractionEventWithType_isOnboardedVitals_completion___block_invoke;
  v10[3] = &unk_279C73D20;
  v10[4] = self;
  v11 = v8;
  v12 = a3;
  v13 = a4;
  v9 = v8;
  [(HKSPSleepStore *)self sleepScheduleModelWithCompletion:v10];
}

void __97__HKSPSleepStore_Analytics__trackSleepDataInteractionEventWithType_isOnboardedVitals_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  if (v3)
  {
    v4 = [v3 sleepEventRecord];
    v5 = [*(a1 + 32) currentDateProvider];
    v6 = v5[2]();
    v7 = [v4 secondsSinceAlarmDismissalFromDate:v6];

    v8 = [v17 sleepEventRecord];
    v9 = [v8 isAnySleepTrackingOnboardingCompleted];

    v10 = [v17 sleepSettings];
    v11 = [v10 sleepTracking];

    v12 = [v17 sleepSchedule];
    v13 = v12;
    if (v12)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isEnabled")}];
    }

    else
    {
      v14 = 0;
    }

    v15 = [[HKSPAnalyticsSleepDataInteractionEvent alloc] initWithType:*(a1 + 48) secondsSinceAlarmDismissal:v7 isSleepOnWatchOnboarded:v9 isWatchSleepTrackingEnabled:v11 isSleepScheduleEnabled:v14 isOnboardedVitals:*(a1 + 56)];
    v16 = [*(a1 + 32) analyticsManager];
    [v16 trackEvent:v15];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)suggestedSleepScheduleWithProviders:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting suggested sleep schedule", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke;
  v12[3] = &unk_279C74550;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v9 = v6;
  v10 = v7;
  [(HKSPSleepStore *)self currentSleepScheduleWithCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (![v5 hasOccurrences])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_295;
      v18[3] = &unk_279C744D8;
      v11 = *(a1 + 40);
      v18[4] = *(a1 + 32);
      v12 = [v11 na_map:v18];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_300;
      v17[3] = &unk_279C74500;
      v17[4] = *(a1 + 32);
      v13 = [MEMORY[0x277D2C900] hksp_chainFutures:v12 returningFirstPassingTest:v17 ignoreErrors:1];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_2_302;
      v15[3] = &unk_279C74528;
      v15[4] = *(a1 + 32);
      v16 = *(a1 + 48);
      v14 = [v13 addCompletionBlock:v15];

      goto LABEL_8;
    }

    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ returning existing sleep schedule: %{public}@", buf, 0x16u);
    }

    v7 = *(*(a1 + 48) + 16);
  }

  v7();
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

id __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_295(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_2;
  v9[3] = &unk_279C744B0;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 lazyFutureWithBlock:v9];

  return v7;
}

void __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_2(int8x16_t *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_3;
  v7[3] = &unk_279C74488;
  v6 = a1[2];
  v4 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = v3;
  v5 = v3;
  [v4 hksp_suggestedSleepScheduleWithCompletion:v7];
}

void __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HKSPLogForCategory(1uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v6;
      v11 = "%{public}@ provider %{public}@ failed to suggest sleep schedule: %{public}@";
LABEL_6:
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, v11, &v16, 0x20u);
    }
  }

  else if (v8)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v5;
    v11 = "%{public}@ provider %{public}@ suggested sleep schedule: %{public}@";
    goto LABEL_6;
  }

  v14 = objc_alloc_init(_HKSPScheduleAndProviderPair);
  [(_HKSPScheduleAndProviderPair *)v14 setProvider:*(a1 + 40)];
  [(_HKSPScheduleAndProviderPair *)v14 setSchedule:v5];
  [*(a1 + 48) finishWithResult:v14 error:v6];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_300(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _resultHasSchedule:v3] && objc_msgSend(*(a1 + 32), "_resultScheduleMeetsDefaultGoal:", v3))
  {
    v4 = [*(a1 + 32) _resultScheduleIsValid:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke_2_302(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = NAEmptyResult();
  v8 = [v5 isEqual:v7];

  v9 = HKSPLogForCategory(1uLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = 138543618;
      v20 = v18;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "%{public}@ no suggested sleep schedule found (error: %{public}@)", &v19, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v5 schedule];
      v13 = [v5 provider];
      v19 = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ returning suggested sleep schedule: %{public}@ (provider: %{public}@)", &v19, 0x20u);
    }

    v14 = *(a1 + 40);
    v15 = [v5 schedule];
    v16 = [v5 provider];
    (*(v14 + 16))(v14, v15, v16, v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_resultHasSchedule:(id)a3
{
  v3 = [a3 schedule];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_resultScheduleMeetsDefaultGoal:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 schedule];
  v5 = [v4 meetsDefaultSleepGoal];

  v6 = HKSPLogForCategory(1uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138543362;
      v12 = self;
      v8 = "%{public}@ suggested schedule meets default sleep goal";
LABEL_6:
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
    }
  }

  else if (v7)
  {
    v11 = 138543362;
    v12 = self;
    v8 = "%{public}@ suggested schedule doesn't meet default sleep goal";
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_resultScheduleIsValid:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKSPSleepStore *)self sleepScheduleModelWithError:0];
  v6 = [v4 schedule];

  v7 = [v5 sleepSettings];
  v8 = [v5 sleepEventRecord];
  v9 = [HKSPSleepScheduleModel sleepScheduleModelWithSleepSchedule:v6 sleepSettings:v7 sleepEventRecord:v8];

  v10 = [(HKSPSleepStore *)self currentDateProvider];
  v11 = v10[2]();
  v12 = [HKSPSleepEventTimelineBuilder builderWithSleepScheduleModel:v9 date:v11];

  v13 = [v12 buildTimelineWithOptions:2];
  v14 = [v13 sleepScheduleInvalid];
  v15 = HKSPLogForCategory(1uLL);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v20 = 138543362;
      v21 = self;
      v17 = "%{public}@ suggested schedule is invalid";
LABEL_6:
      _os_log_impl(&dword_269A84000, v15, OS_LOG_TYPE_DEFAULT, v17, &v20, 0xCu);
    }
  }

  else if (v16)
  {
    v20 = 138543362;
    v21 = self;
    v17 = "%{public}@ suggested schedule is valid";
    goto LABEL_6;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14 ^ 1;
}

- (HKSPSleepStore)init
{
  v3 = HKSPGenerateSleepStoreIdentifier(&stru_287A719F0);
  v4 = [(HKSPSleepStore *)self initWithIdentifier:v3];

  return v4;
}

- (HKSPSleepStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v5 = HKSPGenerateSleepStoreIdentifier(&stru_287A719F0);
  v6 = [(HKSPSleepStore *)self initWithIdentifier:v5 healthStore:v4];

  return v6;
}

id __57__HKSPSleepStore_initWithIdentifier_healthStore_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 hksp_supportsSleepDaemon];

  if (v4)
  {
    v5 = HKSPSleepServerInterface();
    v6 = [v2 sleepStoreExportedObject];
    v7 = HKSPSleepClientInterface();
    v8 = [HKSPXPCConnectionInfo infoForMachServiceName:@"com.apple.sleepd.sleepserver" remoteObjectInterface:v5 exportedObject:v6 exportedObjectInterface:v7 lifecycleNotification:@"com.apple.sleepd.wakeup" requiredEntitlement:@"com.apple.private.sleepd" options:0];

    v9 = [HKSPXPCConnectionProvider providerWithConnectionInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HKSPSleepStore)initWithConnectionProviderProvider:(id)a3 identifier:(id)a4 healthStore:(id)a5 options:(unint64_t)a6
{
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __84__HKSPSleepStore_initWithConnectionProviderProvider_identifier_healthStore_options___block_invoke_2;
  v24 = &__block_descriptor_40_e33____HKSPSleepFocusModeBridge__8__0l;
  v25 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = MEMORY[0x26D64AA30](&v21);
  v14 = [HKSPAnalyticsManager alloc];
  v15 = [MEMORY[0x277CBEBD0] hksp_analyticsUserDefaults];
  v16 = [(HKSPAnalyticsManager *)v14 initWithUserDefaults:v15];
  v17 = [MEMORY[0x277D2C938] hkspMainThreadScheduler];
  v18 = HKSPCurrentDateProvider();
  v19 = [(HKSPSleepStore *)self initWithConnectionProviderProvider:v12 identifier:v11 healthStore:v10 options:a6 analyticsManager:v16 throttlerProvider:&__block_literal_global_306_0 callbackScheduler:v17 sleepFocusModeBridgeProvider:v13 widgetTimelineControllersProvider:&__block_literal_global_315 widgetRelevanceControllerProvider:&__block_literal_global_319 currentDateProvider:v18, v21, v22, v23, v24, v25];

  return v19;
}

HKSPThrottler *__84__HKSPSleepStore_initWithConnectionProviderProvider_identifier_healthStore_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HKSPThrottler alloc];
  v4 = [MEMORY[0x277D2C938] serialDispatchQueueSchedulerWithName:@"com.apple.sleep.HKSPSleepStore"];
  v5 = [(HKSPThrottler *)v3 initWithInterval:v2 executeBlock:v4 scheduler:0.1];

  return v5;
}

- (HKSPSleepStore)initWithConnectionProviderProvider:(id)a3 identifier:(id)a4 healthStore:(id)a5 options:(unint64_t)a6 analyticsManager:(id)a7 throttlerProvider:(id)a8 callbackScheduler:(id)a9 sleepFocusModeBridgeProvider:(id)a10 widgetTimelineControllersProvider:(id)a11 widgetRelevanceControllerProvider:(id)a12 currentDateProvider:(id)a13
{
  v68 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v62 = a5;
  obj = a7;
  v57 = a7;
  v19 = a8;
  v61 = a9;
  v60 = a10;
  v59 = a11;
  v20 = a12;
  v21 = a13;
  v65.receiver = self;
  v65.super_class = HKSPSleepStore;
  v22 = [(HKSPSleepStore *)&v65 init];
  if (v22)
  {
    v23 = [HKSPXPCClientIdentifier alloc];
    v24 = [MEMORY[0x277CCAD78] UUID];
    v25 = [(HKSPXPCClientIdentifier *)v23 initWithUniqueIdentifier:v24 loggingIdentifier:v18];
    clientIdentifier = v22->_clientIdentifier;
    v22->_clientIdentifier = v25;

    v27 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v67 = v22;
      _os_log_impl(&dword_269A84000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    v28 = [[HKSPSyncAnchorContainer alloc] initWithIdentifier:v18];
    syncAnchorContainer = v22->_syncAnchorContainer;
    v22->_syncAnchorContainer = v28;

    v30 = objc_alloc_init(HKSPSleepStoreExportedObject);
    sleepStoreExportedObject = v22->_sleepStoreExportedObject;
    v22->_sleepStoreExportedObject = v30;

    [(HKSPSleepStoreExportedObject *)v22->_sleepStoreExportedObject setSleepStore:v22];
    if (v17)
    {
      v32 = v17[2](v17, v22);
    }

    else
    {
      v32 = 0;
    }

    connectionProvider = v22->_connectionProvider;
    v22->_connectionProvider = v32;

    [(HKSPXPCConnectionProvider *)v22->_connectionProvider setDelegate:v22];
    if (v62)
    {
      v34 = [MEMORY[0x277CCDD30] sharedBehavior];
      if ([v34 hksp_supportsHealthData])
      {
        v35 = [objc_alloc(MEMORY[0x277D626B0]) initWithHealthStore:v62];
      }

      else
      {
        v35 = 0;
      }

      sleepHealthStore = v22->_sleepHealthStore;
      v22->_sleepHealthStore = v35;
    }

    else
    {
      v34 = v22->_sleepHealthStore;
      v22->_sleepHealthStore = 0;
    }

    v22->_options = a6;
    if ([(HKSPSleepStore *)v22 _cachingEnabled])
    {
      v37 = objc_alloc_init(HKSPSleepStoreModelCache);
    }

    else
    {
      v37 = 0;
    }

    sleepStoreCache = v22->_sleepStoreCache;
    v22->_sleepStoreCache = v37;

    v39 = [[HKSPObserverSet alloc] initWithCallbackScheduler:v61];
    observers = v22->_observers;
    v22->_observers = v39;

    v41 = [v21 copy];
    currentDateProvider = v22->_currentDateProvider;
    v22->_currentDateProvider = v41;

    objc_storeStrong(&v22->_analyticsManager, obj);
    if ([(HKSPSleepStore *)v22 _observeSleepFocusMode])
    {
      v43 = v60[2]();
    }

    else
    {
      v43 = 0;
    }

    sleepFocusModeBridge = v22->_sleepFocusModeBridge;
    v22->_sleepFocusModeBridge = v43;

    [(HKSPSleepFocusModeBridge *)v22->_sleepFocusModeBridge setDelegate:v22];
    if ([(HKSPSleepStore *)v22 _reloadsWidgets])
    {
      v45 = [HKSPSleepWidgetManager alloc];
      v46 = v59[2]();
      v47 = v20[2](v20);
      v48 = [(HKSPSleepWidgetManager *)v45 initWithTimelineControllers:v46 relevanceController:v47];
      widgetManager = v22->_widgetManager;
      v22->_widgetManager = v48;
    }

    else
    {
      v46 = v22->_widgetManager;
      v22->_widgetManager = 0;
    }

    [(HKSPSleepWidgetManager *)v22->_widgetManager setDelegate:v22];
    objc_initWeak(buf, v22);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __254__HKSPSleepStore_initWithConnectionProviderProvider_identifier_healthStore_options_analyticsManager_throttlerProvider_callbackScheduler_sleepFocusModeBridgeProvider_widgetTimelineControllersProvider_widgetRelevanceControllerProvider_currentDateProvider___block_invoke;
    v63[3] = &unk_279C74E70;
    objc_copyWeak(&v64, buf);
    v50 = v19[2](v19, v63);
    reconnectThrottler = v22->_reconnectThrottler;
    v22->_reconnectThrottler = v50;

    if ([(HKSPSleepStore *)v22 _connectAutomatically])
    {
      [(HKSPSleepStore *)v22 connect];
    }

    v52 = v22;
    objc_destroyWeak(&v64);
    objc_destroyWeak(buf);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v22;
}

void __254__HKSPSleepStore_initWithConnectionProviderProvider_identifier_healthStore_options_analyticsManager_throttlerProvider_callbackScheduler_sleepFocusModeBridgeProvider_widgetTimelineControllersProvider_widgetRelevanceControllerProvider_currentDateProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkInWithCurrentSyncAnchor];
}

- (void)reconnect
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reconnecting", &v5, 0xCu);
  }

  [(HKSPThrottler *)self->_reconnectThrottler execute];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)connectSynchronously:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 hksp_supportsSleepDaemon];

  if (v6)
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = self;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ connecting", buf, 0xCu);
    }

    v8 = [(HKSPSleepStore *)self description];
    objc_initWeak(buf, self);
    v9 = [HKSPXPCMessage alloc];
    if (v3)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__HKSPSleepStore_connectSynchronously___block_invoke;
    v19[3] = &unk_279C74EC0;
    objc_copyWeak(&v20, buf);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __39__HKSPSleepStore_connectSynchronously___block_invoke_3;
    v17 = &unk_279C74EE8;
    v11 = v8;
    v18 = v11;
    v12 = [(HKSPXPCMessage *)v9 initWithIdentifier:@"connect" block:v19 options:v10 errorHandler:&v14];
    [(HKSPXPCConnectionProvider *)self->_connectionProvider sendMessage:v12, v14, v15, v16, v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __39__HKSPSleepStore_connectSynchronously___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__HKSPSleepStore_connectSynchronously___block_invoke_2;
  v8[3] = &unk_279C74E98;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v6;
  v9 = v7;
  [v5 connectWithCompletion:v8];

  objc_destroyWeak(&v10);
}

void __39__HKSPSleepStore_connectSynchronously___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained syncAnchorContainer];
  [v7 updateWithContainer:v6];

  (*(*(a1 + 32) + 16))();
}

void __39__HKSPSleepStore_connectSynchronously___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to connect: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_checkInWithCurrentSyncAnchor
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 hksp_supportsSleepDaemon];

  if (v4)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(HKSPSleepStore *)self syncAnchorContainer];
      *buf = 138543618;
      v19 = self;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ checking in with sync anchor container: %{public}@", buf, 0x16u);
    }

    v7 = [(HKSPSleepStore *)self description];
    v8 = [HKSPXPCMessage alloc];
    v16 = v7;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__HKSPSleepStore__checkInWithCurrentSyncAnchor__block_invoke;
    v17[3] = &unk_279C74F10;
    v17[4] = self;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __47__HKSPSleepStore__checkInWithCurrentSyncAnchor__block_invoke_2;
    v15 = &unk_279C74EE8;
    v9 = v7;
    v10 = [(HKSPXPCMessage *)v8 initWithIdentifier:@"checkIn" block:v17 options:2 errorHandler:&v12];
    [(HKSPXPCConnectionProvider *)self->_connectionProvider sendMessage:v10, v12, v13, v14, v15];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __47__HKSPSleepStore__checkInWithCurrentSyncAnchor__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 syncAnchorContainer];
  [v6 checkInWithSyncAnchorContainer:v7 completion:v5];
}

void __47__HKSPSleepStore__checkInWithCurrentSyncAnchor__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to check in: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __52__HKSPSleepStore__getSleepScheduleFromServerDoSync___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HKSPSleepStore__getSleepScheduleFromServerDoSync___block_invoke_2;
  v6[3] = &unk_279C74488;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 getSleepScheduleWithCompletion:v6];
}

void __52__HKSPSleepStore__getSleepScheduleFromServerDoSync___block_invoke_2(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = HKSPNullify(v5);
  [v7 finishWithResult:v8 error:v6];

  v9 = HKSPLogForCategory(1uLL);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep schedule: %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[6];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received sleep schedule from server: %{public}@", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __52__HKSPSleepStore__getSleepScheduleFromServerDoSync___block_invoke_346(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep schedule: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentSleepScheduleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self currentSleepScheduleFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HKSPSleepStore_currentSleepScheduleWithCompletion___block_invoke;
  v8[3] = &unk_279C74FB0;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __53__HKSPSleepStore_currentSleepScheduleWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (id)currentSleepScheduleWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v4 = [(HKSPSleepStore *)self _getSleepScheduleDoSync:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HKSPSleepStore_currentSleepScheduleWithError___block_invoke;
  v8[3] = &unk_279C74FD8;
  v8[4] = &v15;
  v8[5] = &v9;
  v5 = [v4 addCompletionBlock:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __48__HKSPSleepStore_currentSleepScheduleWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = HKSPNilify(a2);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (id)upcomingScheduleOccurrenceAfterDate:(id)a3 error:(id *)a4
{
  v4 = [(HKSPSleepStore *)self upcomingResolvedScheduleOccurrenceAfterDate:a3 error:a4];
  v5 = [v4 occurrence];

  return v5;
}

- (id)upcomingScheduleOccurrenceAfterDate:(id)a3 alarmStatus:(int64_t *)a4 error:(id *)a5
{
  v5 = [(HKSPSleepStore *)self upcomingResolvedScheduleOccurrenceAfterDate:a3 alarmStatus:a4 error:a5];
  v6 = [v5 occurrence];

  return v6;
}

- (id)upcomingResolvedScheduleOccurrenceAfterDate:(id)a3 alarmStatus:(int64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HKSPSleepStore *)self sleepScheduleModelWithError:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 upcomingResolvedOccurrenceAfterDate:v8];
    v12 = v11;
    if (a4)
    {
      v13 = [v11 occurrence];
      *a4 = [v10 alarmStatusForOccurrence:v13];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)upcomingScheduleOccurrenceAfterDate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HKSPSleepStore *)self upcomingScheduleOccurrenceAfterDateFuture:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HKSPSleepStore_upcomingScheduleOccurrenceAfterDate_completion___block_invoke;
  v10[3] = &unk_279C75000;
  v11 = v6;
  v8 = v6;
  v9 = [v7 addCompletionBlock:v10];
}

void __65__HKSPSleepStore_upcomingScheduleOccurrenceAfterDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (id)upcomingScheduleOccurrenceAfterDateFuture:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self sleepScheduleModelFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HKSPSleepStore_upcomingScheduleOccurrenceAfterDateFuture___block_invoke;
  v9[3] = &unk_279C75028;
  v10 = v4;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __60__HKSPSleepStore_upcomingScheduleOccurrenceAfterDateFuture___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 upcomingOccurrenceAfterDate:*(a1 + 32)];
  v3 = MEMORY[0x277D2C900];
  v4 = HKSPNilify(v2);
  v5 = [v3 futureWithResult:v4];

  return v5;
}

void __52__HKSPSleepStore__getSleepSettingsFromServerDoSync___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HKSPSleepStore__getSleepSettingsFromServerDoSync___block_invoke_2;
  v6[3] = &unk_279C75050;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 getSleepSettingsWithCompletion:v6];
}

void __52__HKSPSleepStore__getSleepSettingsFromServerDoSync___block_invoke_2(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = HKSPNullify(v5);
  [v7 finishWithResult:v8 error:v6];

  v9 = HKSPLogForCategory(1uLL);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep settings: %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[6];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received sleep settings from server: %{public}@", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __52__HKSPSleepStore__getSleepSettingsFromServerDoSync___block_invoke_351(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep settings: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentSleepSettingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self currentSleepSettingsFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HKSPSleepStore_currentSleepSettingsWithCompletion___block_invoke;
  v8[3] = &unk_279C75078;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __53__HKSPSleepStore_currentSleepSettingsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (id)currentSleepSettingsWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v4 = [(HKSPSleepStore *)self _getSleepSettingsDoSync:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HKSPSleepStore_currentSleepSettingsWithError___block_invoke;
  v8[3] = &unk_279C750A0;
  v8[4] = &v15;
  v8[5] = &v9;
  v5 = [v4 addCompletionBlock:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __48__HKSPSleepStore_currentSleepSettingsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = HKSPNilify(a2);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

void __55__HKSPSleepStore__getSleepEventRecordFromServerDoSync___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HKSPSleepStore__getSleepEventRecordFromServerDoSync___block_invoke_2;
  v6[3] = &unk_279C750C8;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 getSleepEventRecordWithCompletion:v6];
}

void __55__HKSPSleepStore__getSleepEventRecordFromServerDoSync___block_invoke_2(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = HKSPNullify(v5);
  [v7 finishWithResult:v8 error:v6];

  v9 = HKSPLogForCategory(1uLL);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep event record: %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[6];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received sleep event record from server: %{public}@", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __55__HKSPSleepStore__getSleepEventRecordFromServerDoSync___block_invoke_353(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep event record: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentSleepEventRecordWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self currentSleepEventRecordFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HKSPSleepStore_currentSleepEventRecordWithCompletion___block_invoke;
  v8[3] = &unk_279C750F0;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __56__HKSPSleepStore_currentSleepEventRecordWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (id)currentSleepEventRecordWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v4 = [(HKSPSleepStore *)self _getSleepEventRecordDoSync:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HKSPSleepStore_currentSleepEventRecordWithError___block_invoke;
  v8[3] = &unk_279C75118;
  v8[4] = &v15;
  v8[5] = &v9;
  v5 = [v4 addCompletionBlock:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __51__HKSPSleepStore_currentSleepEventRecordWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = HKSPNilify(a2);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

void __57__HKSPSleepStore__getSleepScheduleModelFromServerDoSync___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HKSPSleepStore__getSleepScheduleModelFromServerDoSync___block_invoke_2;
  v6[3] = &unk_279C75140;
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  [a2 getSleepScheduleModelWithCompletion:v6];
}

void __57__HKSPSleepStore__getSleepScheduleModelFromServerDoSync___block_invoke_2(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = HKSPNullify(v5);
  [v7 finishWithResult:v8 error:v6];

  v9 = HKSPLogForCategory(1uLL);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep schedule model: %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[6];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received sleep schedule model from server: %{public}@", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__HKSPSleepStore__getSleepScheduleModelFromServerDoSync___block_invoke_355(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep schedule model: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self sleepScheduleModelFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HKSPSleepStore_sleepScheduleModelWithCompletion___block_invoke;
  v8[3] = &unk_279C75168;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __51__HKSPSleepStore_sleepScheduleModelWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (id)sleepScheduleModelWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v4 = [(HKSPSleepStore *)self _getSleepScheduleModelDoSync:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HKSPSleepStore_sleepScheduleModelWithError___block_invoke;
  v8[3] = &unk_279C75190;
  v8[4] = &v15;
  v8[5] = &v9;
  v5 = [v4 addCompletionBlock:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __46__HKSPSleepStore_sleepScheduleModelWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = HKSPNilify(a2);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

void __48__HKSPSleepStore__getSleepModeFromServerDoSync___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__HKSPSleepStore__getSleepModeFromServerDoSync___block_invoke_2;
  v4[3] = &unk_279C751B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 getSleepModeWithCompletion:v4];
}

void __48__HKSPSleepStore__getSleepModeFromServerDoSync___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v6 finishWithResult:v7 error:v5];

  if (v5)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep mode: %{public}@", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __48__HKSPSleepStore__getSleepModeFromServerDoSync___block_invoke_358(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep mode: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)sleepModeOnFuture
{
  v2 = [(HKSPSleepStore *)self sleepModeFuture];
  v3 = [v2 flatMap:&__block_literal_global_361];

  return v3;
}

id __35__HKSPSleepStore_sleepModeOnFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = HKSPNilify(a2);
  v3 = [v2 integerValue];

  v4 = MEMORY[0x277D2C900];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3 != 0];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (void)sleepModeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self sleepModeFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HKSPSleepStore_sleepModeWithCompletion___block_invoke;
  v8[3] = &unk_279C75228;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __42__HKSPSleepStore_sleepModeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, [v6 integerValue], a2 != 0, v5);
  }
}

- (void)sleepModeOnWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self sleepModeOnFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HKSPSleepStore_sleepModeOnWithCompletion___block_invoke;
  v8[3] = &unk_279C75228;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __44__HKSPSleepStore_sleepModeOnWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, [v6 BOOLValue], a2 != 0, v5);
  }
}

- (int64_t)sleepModeWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(HKSPSleepStore *)self _getSleepModeDoSync:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HKSPSleepStore_sleepModeWithError___block_invoke;
  v7[3] = &unk_279C75250;
  v7[4] = &v8;
  v4 = [v3 addCompletionBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __37__HKSPSleepStore_sleepModeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = HKSPNilify(a2);
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

void __55__HKSPSleepStore__getSleepWidgetStateFromServerDoSync___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__HKSPSleepStore__getSleepWidgetStateFromServerDoSync___block_invoke_2;
  v4[3] = &unk_279C751B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 getSleepWidgetStateWithCompletion:v4];
}

void __55__HKSPSleepStore__getSleepWidgetStateFromServerDoSync___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v6 finishWithResult:v7 error:v5];

  if (v5)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep widget state: %{public}@", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __55__HKSPSleepStore__getSleepWidgetStateFromServerDoSync___block_invoke_363(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep widget state: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sleepWidgetStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self sleepWidgetStateFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HKSPSleepStore_sleepWidgetStateWithCompletion___block_invoke;
  v8[3] = &unk_279C75228;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __49__HKSPSleepStore_sleepWidgetStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, [v6 integerValue], a2 != 0, v5);
  }
}

- (int64_t)sleepWidgetStateWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(HKSPSleepStore *)self _getSleepWidgetStateDoSync:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HKSPSleepStore_sleepWidgetStateWithError___block_invoke;
  v7[3] = &unk_279C75250;
  v7[4] = &v8;
  v4 = [v3 addCompletionBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __44__HKSPSleepStore_sleepWidgetStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = HKSPNilify(a2);
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

- (BOOL)shouldReloadWidgetOfKind:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if ([a3 isEqualToString:@"com.apple.health.SleepWidget"])
  {
    v12 = 0;
    v4 = [(HKSPSleepStore *)self sleepWidgetStateWithError:&v12];
    v5 = v12;
    if (v5)
    {
      v6 = HKSPLogForCategory(0x12uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        *buf = 138543618;
        v14 = v10;
        v15 = 2114;
        v16 = v5;
        v11 = v10;
        _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to fetch sleep widget state with error: %{public}@", buf, 0x16u);
      }

      v7 = 0;
    }

    else
    {
      v7 = (v4 - 6) < 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void __57__HKSPSleepStore__getSleepScheduleStateFromServerDoSync___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HKSPSleepStore__getSleepScheduleStateFromServerDoSync___block_invoke_2;
  v4[3] = &unk_279C75278;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 getSleepScheduleStateWithCompletion:v4];
}

void __57__HKSPSleepStore__getSleepScheduleStateFromServerDoSync___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v6 finishWithResult:v7 error:v5];

  if (v5)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep schedule state: %{public}@", &v11, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __57__HKSPSleepStore__getSleepScheduleStateFromServerDoSync___block_invoke_365(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to get sleep schedule state: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentSleepScheduleStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self currentSleepScheduleStateFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HKSPSleepStore_currentSleepScheduleStateWithCompletion___block_invoke;
  v8[3] = &unk_279C75228;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __58__HKSPSleepStore_currentSleepScheduleStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = HKSPNilify(a2);
  (*(v4 + 16))(v4, [v6 integerValue], a2 != 0, v5);
}

- (unint64_t)currentSleepScheduleStateWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(HKSPSleepStore *)self _getSleepScheduleStateOnDoSync:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HKSPSleepStore_currentSleepScheduleStateWithError___block_invoke;
  v7[3] = &unk_279C75250;
  v7[4] = &v8;
  v4 = [v3 addCompletionBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __53__HKSPSleepStore_currentSleepScheduleStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = HKSPNilify(a2);
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
}

- (id)_saveCurrentSleepScheduleOnServer:(id)a3 options:(unint64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  v7 = [v6 hksp_supportsSleepDaemon];

  if (v7)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = self;
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updating current sleep schedule on server: %{public}@", buf, 0x16u);
    }

    [(HKSPSleepStoreModelCache *)self->_sleepStoreCache updateCachedSleepSchedule:v5];
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __60__HKSPSleepStore__saveCurrentSleepScheduleOnServer_options___block_invoke;
    v28[3] = &unk_279C74EE8;
    v28[4] = self;
    v10 = [v9 addFailureBlock:v28];
    v11 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__HKSPSleepStore__saveCurrentSleepScheduleOnServer_options___block_invoke_2;
    v24[3] = &unk_279C74F38;
    v25 = v5;
    v26 = v11;
    v27 = v9;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__HKSPSleepStore__saveCurrentSleepScheduleOnServer_options___block_invoke_366;
    v21[3] = &unk_279C74F60;
    v22 = v26;
    v13 = v27;
    v23 = v13;
    v14 = v26;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v24 withErrorHandler:v21];
    v15 = v23;
    v16 = v13;
  }

  else
  {
    v17 = MEMORY[0x277D2C900];
    v18 = [objc_opt_class() _sleepDisabledError];
    v16 = [v17 futureWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

void __60__HKSPSleepStore__saveCurrentSleepScheduleOnServer_options___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HKSPSleepStore__saveCurrentSleepScheduleOnServer_options___block_invoke_3;
  v5[3] = &unk_279C74F60;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [a2 saveSleepSchedule:v4 completion:v5];
}

void __60__HKSPSleepStore__saveCurrentSleepScheduleOnServer_options___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to save sleep schedule on server: %{public}@", &v7, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __60__HKSPSleepStore__saveCurrentSleepScheduleOnServer_options___block_invoke_366(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to save sleep schedule on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)saveCurrentSleepSchedule:(id)a3 options:(unint64_t)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x277CCDD30] sharedBehavior];
  v12 = [v11 hksp_supportsHealthData];

  if (a4 & 4) != 0 || (v12)
  {
    if ((a4 & 4) == 0 && !self->_sleepHealthStore)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"HKSPSleepStore.m" lineNumber:791 description:@"Attempted to save a sleep schedule without a sleep health store"];
    }

    v16 = [(HKSPSleepStore *)self _prepareObjectForSave:v9 options:a4];
    v17 = [(HKSPSleepStore *)self _saveCurrentSleepScheduleOnServer:v16 options:a4];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__HKSPSleepStore_saveCurrentSleepSchedule_options_context___block_invoke;
    v21[3] = &unk_279C752C8;
    v21[4] = self;
    v22 = v16;
    v24 = a4;
    v23 = v10;
    v18 = v16;
    v15 = [v17 flatMap:v21];
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:3 userInfo:0];
    v15 = [v13 futureWithError:v14];
  }

  return v15;
}

id __59__HKSPSleepStore_saveCurrentSleepSchedule_options_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _writeHistoricalSchedule:*(a1 + 40) options:*(a1 + 56)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HKSPSleepStore_saveCurrentSleepSchedule_options_context___block_invoke_2;
  v5[3] = &unk_279C752A0;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = [v2 flatMap:v5];

  return v3;
}

- (id)_sendScheduleChangedAnalyticsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self currentSleepSettingsFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HKSPSleepStore__sendScheduleChangedAnalyticsWithContext___block_invoke;
  v9[3] = &unk_279C752F0;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v9];

  return v5;
}

void __59__HKSPSleepStore__sendScheduleChangedAnalyticsWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HKSPLogForCategory(1uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch current sleep settings with error: %{public}@", &v19, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v19 = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetched current sleep settings: %@", &v19, 0x16u);
    }

    v11 = *(*(a1 + 32) + 8);
    v8 = [objc_opt_class() activePairedWatchProductType];
    v12 = [v5 sleepTracking];
    v13 = [*(a1 + 40) objectForKeyedSubscript:@"HKSPAnalyticsSleepScheduleChangeApplication"];
    v14 = [[HKSPAnalyticsSleepScheduleChangeInfo alloc] initWithApplication:HKSPAnalyticsSleepScheduleChangeApplicationFromValue(v13) activePairedWatchProductType:v8 isSleepTrackingEnabled:v12];
    v15 = [*(a1 + 40) objectForKeyedSubscript:@"HKSPAnalyticsSleepScheduleChangeProvenanceInfo"];
    v16 = *(*(a1 + 32) + 8);
    v17 = [[HKSPAnalyticsSleepScheduleChangeEvent alloc] initWithScheduleChangeInfo:v14 provenanceInfo:v15];
    [v16 trackEvent:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)saveCurrentSleepSchedule:(id)a3 options:(unint64_t)a4 context:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(HKSPSleepStore *)self saveCurrentSleepSchedule:a3 options:a4 context:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HKSPSleepStore_saveCurrentSleepSchedule_options_context_completion___block_invoke;
  v14[3] = &unk_279C75318;
  v15 = v10;
  v12 = v10;
  v13 = [v11 addCompletionBlock:v14];
}

- (id)_writeHistoricalSchedule:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  if (self->_sleepHealthStore)
  {
    v7 = (*(self->_currentDateProvider + 2))();
    v8 = [objc_opt_class() _updatedHistoricalSleepSchedulesFromSleepSchedule:v6 options:a4 date:v7];
    v9 = [objc_opt_class() _updatedHistoricalSleepGoalForSleepSchedule:v6 options:a4 date:v7];
    v10 = objc_alloc_init(MEMORY[0x277D2C900]);
    sleepHealthStore = self->_sleepHealthStore;
    v12 = [v10 hksp_BOOLErrorCompletionHandlerAdapter];
    [(HKSleepHealthStore *)sleepHealthStore updateCurrentSleepSchedules:v8 sleepDurationGoal:v9 completion:v12];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__HKSPSleepStore__writeHistoricalSchedule_options___block_invoke;
    v17[3] = &unk_279C75340;
    v17[4] = self;
    v18 = v8;
    v19 = v9;
    v13 = v9;
    v14 = v8;
    v15 = [v10 addCompletionBlock:v17];
  }

  else
  {
    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v10;
}

void __51__HKSPSleepStore__writeHistoricalSchedule_options___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPLogForCategory(1uLL);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[6];
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated current sleep schedules: %@ and sleep goal: %@ in HealthKit", &v13, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = a1[4];
    v13 = 138543618;
    v14 = v12;
    v15 = 2114;
    v16 = v5;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to update current sleep schedules in HealthKit with error: %{public}@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_updatedHistoricalSleepSchedulesFromSleepSchedule:(id)a3 options:(unint64_t)a4 date:(id)a5
{
  v6 = a4;
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (!v7 || (v6 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 hasChangeAffectingScheduling])
  {
    v9 = [v7 occurrences];
    v10 = [v9 na_filter:&__block_literal_global_382];

    if ([v10 count] && objc_msgSend(v7, "isEnabled"))
    {
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __81__HKSPSleepStore__updatedHistoricalSleepSchedulesFromSleepSchedule_options_date___block_invoke_2;
      v37 = &unk_279C75368;
      v11 = v8;
      v38 = v11;
      v12 = [v10 na_map:&v34];
      if ([v7 weekdaysWithoutOccurrences])
      {
        v13 = MEMORY[0x277CCD9E8];
        v14 = HKSleepScheduleWeekdaysFromHKSPWeekdays([v7 weekdaysWithoutOccurrences]);
        v15 = [v13 sleepScheduleWithDate:v11 weekdays:v14 wakeTimeComponents:0 bedTimeComponents:0 overrideDayIndex:0 device:0 metadata:{0, v34, v35, v36, v37}];
        v16 = [v12 arrayByAddingObject:v15];

        v12 = v16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v7;
        if ([v17 hasOverrideOccurrenceRemoval])
        {
          v18 = [v17 lastOverrideOccurrenceWakeUpComponents];
          v19 = v18;
          if (v18)
          {
            v20 = MEMORY[0x277CCD9E8];
            v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "hk_dayIndex")}];
            v22 = [v20 sleepScheduleWithDate:v11 weekdays:0 wakeTimeComponents:0 bedTimeComponents:0 overrideDayIndex:v21 device:0 metadata:0];

            v23 = [v12 arrayByAddingObject:v22];

            v12 = v23;
          }
        }
      }

      v24 = v38;
    }

    else
    {
      v25 = [MEMORY[0x277CCD9E8] sleepScheduleWithDate:v8 weekdays:*MEMORY[0x277CCCDD0] wakeTimeComponents:0 bedTimeComponents:0 overrideDayIndex:0 device:0 metadata:0];
      v39[0] = v25;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];

      v26 = [v7 overrideOccurrence];

      if (!v26)
      {
LABEL_20:

        goto LABEL_22;
      }

      v27 = [v7 overrideOccurrence];
      v24 = [v27 wakeUpComponents];

      if (v24)
      {
        v28 = MEMORY[0x277CCD9E8];
        v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "hk_dayIndex")}];
        v30 = [v28 sleepScheduleWithDate:v8 weekdays:0 wakeTimeComponents:0 bedTimeComponents:0 overrideDayIndex:v29 device:0 metadata:0];

        v31 = [v12 arrayByAddingObject:v30];

        v12 = v31;
      }
    }

    goto LABEL_20;
  }

  v12 = 0;
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return v12;
}

id __81__HKSPSleepStore__updatedHistoricalSleepSchedulesFromSleepSchedule_options_date___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 weekdays])
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [v3 wakeUpComponents];
    v4 = [v5 numberWithInteger:{objc_msgSend(v6, "hk_dayIndex")}];
  }

  v7 = MEMORY[0x277CCD9E8];
  v8 = *(a1 + 32);
  v9 = HKSleepScheduleWeekdaysFromHKSPWeekdays([v3 weekdays]);
  v10 = [v3 wakeUpComponents];
  v11 = [v3 bedtimeComponents];
  v12 = [v7 sleepScheduleWithDate:v8 weekdays:v9 wakeTimeComponents:v10 bedTimeComponents:v11 overrideDayIndex:v4 device:0 metadata:0];

  return v12;
}

+ (id)_updatedHistoricalSleepGoalForSleepSchedule:(id)a3 options:(unint64_t)a4 date:(id)a5
{
  v6 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (!v8 || (v6 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 hasChangeToSleepDurationGoal])
  {
    v10 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      v21 = a1;
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep duration goal changed", &v20, 0xCu);
    }

    v11 = MEMORY[0x277CCD800];
    v12 = [MEMORY[0x277CCD830] sleepDurationGoalType];
    v13 = MEMORY[0x277CCD7E8];
    v14 = MEMORY[0x277CCABB0];
    [v8 sleepDurationGoal];
    v15 = [v14 numberWithDouble:?];
    v16 = [v13 hk_quantityWithSeconds:v15];
    v17 = [v11 quantitySampleWithType:v12 quantity:v16 startDate:v9 endDate:v9];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_saveCurrentSleepSettingsOnServer:(id)a3 options:(unint64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  v7 = [v6 hksp_supportsSleepDaemon];

  if (v7)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = self;
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updating current sleep settings on server: %{public}@", buf, 0x16u);
    }

    [(HKSPSleepStoreModelCache *)self->_sleepStoreCache updateCachedSleepSettings:v5];
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __60__HKSPSleepStore__saveCurrentSleepSettingsOnServer_options___block_invoke;
    v28[3] = &unk_279C74EE8;
    v28[4] = self;
    v10 = [v9 addFailureBlock:v28];
    v11 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__HKSPSleepStore__saveCurrentSleepSettingsOnServer_options___block_invoke_2;
    v24[3] = &unk_279C74F38;
    v25 = v5;
    v26 = v11;
    v27 = v9;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__HKSPSleepStore__saveCurrentSleepSettingsOnServer_options___block_invoke_389;
    v21[3] = &unk_279C74F60;
    v22 = v26;
    v13 = v27;
    v23 = v13;
    v14 = v26;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v24 withErrorHandler:v21];
    v15 = v23;
    v16 = v13;
  }

  else
  {
    v17 = MEMORY[0x277D2C900];
    v18 = [objc_opt_class() _sleepDisabledError];
    v16 = [v17 futureWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

void __60__HKSPSleepStore__saveCurrentSleepSettingsOnServer_options___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HKSPSleepStore__saveCurrentSleepSettingsOnServer_options___block_invoke_3;
  v5[3] = &unk_279C74F60;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [a2 saveSleepSettings:v4 completion:v5];
}

void __60__HKSPSleepStore__saveCurrentSleepSettingsOnServer_options___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to save sleep settings on server: %{public}@", &v7, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __60__HKSPSleepStore__saveCurrentSleepSettingsOnServer_options___block_invoke_389(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to save sleep settings on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)saveCurrentSleepSettings:(id)a3 options:(unint64_t)a4
{
  v6 = [(HKSPSleepStore *)self _prepareObjectForSave:a3 options:?];
  v7 = [(HKSPSleepStore *)self _saveCurrentSleepSettingsOnServer:v6 options:a4];

  return v7;
}

- (void)saveCurrentSleepSettings:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(HKSPSleepStore *)self saveCurrentSleepSettings:a3 options:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HKSPSleepStore_saveCurrentSleepSettings_options_completion___block_invoke;
  v12[3] = &unk_279C75318;
  v13 = v8;
  v10 = v8;
  v11 = [v9 addCompletionBlock:v12];
}

- (id)_prepareObjectForSave:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if ([v5 conformsToProtocol:&unk_287A88DD8])
  {
    if ((v4 & 2) != 0)
    {
      v7 = [v5 copyWithZone:0];
    }

    else
    {
      v7 = [v5 mutableCopy];
    }

    v6 = v7;
    [v5 freeze];
  }

  return v6;
}

- (id)_saveCurrentSleepEventRecordOnServer:(id)a3 options:(unint64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  v7 = [v6 hksp_supportsSleepDaemon];

  if (v7)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = self;
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updating current sleep event record on server: %{public}@", buf, 0x16u);
    }

    [(HKSPSleepStoreModelCache *)self->_sleepStoreCache updateCachedSleepEventRecord:v5];
    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__HKSPSleepStore__saveCurrentSleepEventRecordOnServer_options___block_invoke;
    v28[3] = &unk_279C74EE8;
    v28[4] = self;
    v10 = [v9 addFailureBlock:v28];
    v11 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__HKSPSleepStore__saveCurrentSleepEventRecordOnServer_options___block_invoke_2;
    v24[3] = &unk_279C74F38;
    v25 = v5;
    v26 = v11;
    v27 = v9;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __63__HKSPSleepStore__saveCurrentSleepEventRecordOnServer_options___block_invoke_485;
    v21[3] = &unk_279C74F60;
    v22 = v26;
    v13 = v27;
    v23 = v13;
    v14 = v26;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v24 withErrorHandler:v21];
    v15 = v23;
    v16 = v13;
  }

  else
  {
    v17 = MEMORY[0x277D2C900];
    v18 = [objc_opt_class() _sleepDisabledError];
    v16 = [v17 futureWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

void __63__HKSPSleepStore__saveCurrentSleepEventRecordOnServer_options___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HKSPSleepStore__saveCurrentSleepEventRecordOnServer_options___block_invoke_3;
  v5[3] = &unk_279C74F60;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [a2 saveSleepEventRecord:v4 completion:v5];
}

void __63__HKSPSleepStore__saveCurrentSleepEventRecordOnServer_options___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to save sleep event record on server: %{public}@", &v7, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __63__HKSPSleepStore__saveCurrentSleepEventRecordOnServer_options___block_invoke_485(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to save sleep event record on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)saveCurrentSleepEventRecord:(id)a3 options:(unint64_t)a4
{
  v6 = [(HKSPSleepStore *)self _prepareObjectForSave:a3 options:?];
  v7 = [(HKSPSleepStore *)self _saveCurrentSleepEventRecordOnServer:v6 options:a4];

  return v7;
}

- (void)saveCurrentSleepEventRecord:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(HKSPSleepStore *)self saveCurrentSleepEventRecord:a3 options:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HKSPSleepStore_saveCurrentSleepEventRecord_options_completion___block_invoke;
  v12[3] = &unk_279C75318;
  v13 = v8;
  v10 = v8;
  v11 = [v9 addCompletionBlock:v12];
}

- (id)_setSleepModeOnServer:(int64_t)a3 reason:(unint64_t)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 hksp_supportsSleepDaemon];

  if (v8)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromHKSPSleepMode(a3);
      v11 = NSStringFromHKSPSleepModeChangeReason(a4);
      *buf = 138543874;
      v34 = self;
      v35 = 2114;
      v36 = v10;
      v37 = 2114;
      v38 = v11;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ updating sleep mode on server: %{public}@ (%{public}@)", buf, 0x20u);
    }

    [(HKSPSleepStoreModelCache *)self->_sleepStoreCache updateCachedSleepMode:a3];
    v12 = objc_alloc_init(MEMORY[0x277D2C900]);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __47__HKSPSleepStore__setSleepModeOnServer_reason___block_invoke;
    v32[3] = &unk_279C74EE8;
    v32[4] = self;
    v13 = [v12 addFailureBlock:v32];
    v14 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47__HKSPSleepStore__setSleepModeOnServer_reason___block_invoke_2;
    v27[3] = &unk_279C75390;
    v30 = a3;
    v31 = a4;
    v28 = v14;
    v29 = v12;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__HKSPSleepStore__setSleepModeOnServer_reason___block_invoke_486;
    v24[3] = &unk_279C74F60;
    v25 = v28;
    v16 = v29;
    v26 = v16;
    v17 = v28;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v27 withErrorHandler:v24];
    v18 = v26;
    v19 = v16;
  }

  else
  {
    v20 = MEMORY[0x277D2C900];
    v21 = [objc_opt_class() _sleepDisabledError];
    v19 = [v20 futureWithError:v21];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

void __47__HKSPSleepStore__setSleepModeOnServer_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HKSPSleepStore__setSleepModeOnServer_reason___block_invoke_3;
  v6[3] = &unk_279C74F60;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [a2 setSleepMode:v4 reason:v5 completion:v6];
}

void __47__HKSPSleepStore__setSleepModeOnServer_reason___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to set sleep mode on server: %{public}@", &v7, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    [*(a1 + 40) finishWithNoResult];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __47__HKSPSleepStore__setSleepModeOnServer_reason___block_invoke_486(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to set sleep mode on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setSleepModeOn:(BOOL)a3 reason:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (a4 <= 0xA && ((1 << a4) & 0x60C) != 0)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = NSStringFromHKSPSleepModeChangeReason(a4);
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring set sleep mode with reason: %{public}@", buf, 0x16u);
    }

    v8[2](v8, 1, 0);
  }

  else
  {
    if (v6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(HKSPSleepStore *)self _setSleepModeOnServer:v14 reason:a4];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__HKSPSleepStore_setSleepModeOn_reason_completion___block_invoke;
    v17[3] = &unk_279C75318;
    v18 = v8;
    v16 = [v15 addCompletionBlock:v17];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HKSPSleepStore_setSleepModeOn_reason_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_confirmAwakeOnServer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 hksp_supportsSleepDaemon];

  if (v4)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Confirming awake on server", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    v7 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__HKSPSleepStore__confirmAwakeOnServer__block_invoke;
    v19[3] = &unk_279C751E0;
    v20 = v6;
    v21 = v7;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__HKSPSleepStore__confirmAwakeOnServer__block_invoke_488;
    v16[3] = &unk_279C74F60;
    v17 = v21;
    v9 = v20;
    v18 = v9;
    v10 = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v10 = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:v10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __39__HKSPSleepStore__confirmAwakeOnServer__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__HKSPSleepStore__confirmAwakeOnServer__block_invoke_2;
  v4[3] = &unk_279C753B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 confirmAwakeWithCompletion:v4];
}

void __39__HKSPSleepStore__confirmAwakeOnServer__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to confirm awake on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __39__HKSPSleepStore__confirmAwakeOnServer__block_invoke_488(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to confirn awake on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)confirmAwakeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self _confirmAwakeOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HKSPSleepStore_confirmAwakeWithCompletion___block_invoke;
  v8[3] = &unk_279C75318;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

uint64_t __45__HKSPSleepStore_confirmAwakeWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_dismissGoodMorningOnServer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 hksp_supportsSleepDaemon];

  if (v4)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Dismissing good morning on server", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    v7 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__HKSPSleepStore__dismissGoodMorningOnServer__block_invoke;
    v19[3] = &unk_279C751E0;
    v20 = v6;
    v21 = v7;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__HKSPSleepStore__dismissGoodMorningOnServer__block_invoke_489;
    v16[3] = &unk_279C74F60;
    v17 = v21;
    v9 = v20;
    v18 = v9;
    v10 = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v10 = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:v10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __45__HKSPSleepStore__dismissGoodMorningOnServer__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__HKSPSleepStore__dismissGoodMorningOnServer__block_invoke_2;
  v4[3] = &unk_279C753B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 dismissGoodMorningWithCompletion:v4];
}

void __45__HKSPSleepStore__dismissGoodMorningOnServer__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to dismiss good morning on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __45__HKSPSleepStore__dismissGoodMorningOnServer__block_invoke_489(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to dismiss good morning on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dismissGoodMorningWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self _dismissGoodMorningOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HKSPSleepStore_dismissGoodMorningWithCompletion___block_invoke;
  v8[3] = &unk_279C75318;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

uint64_t __51__HKSPSleepStore_dismissGoodMorningWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_dismissSleepLockOnServer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 hksp_supportsSleepDaemon];

  if (v4)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Dismissing sleep lock on server", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    v7 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__HKSPSleepStore__dismissSleepLockOnServer__block_invoke;
    v19[3] = &unk_279C751E0;
    v20 = v6;
    v21 = v7;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__HKSPSleepStore__dismissSleepLockOnServer__block_invoke_490;
    v16[3] = &unk_279C74F60;
    v17 = v21;
    v9 = v20;
    v18 = v9;
    v10 = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v10 = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:v10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __43__HKSPSleepStore__dismissSleepLockOnServer__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HKSPSleepStore__dismissSleepLockOnServer__block_invoke_2;
  v4[3] = &unk_279C753B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 dismissSleepLockWithCompletion:v4];
}

void __43__HKSPSleepStore__dismissSleepLockOnServer__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to dismiss sleep lock on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __43__HKSPSleepStore__dismissSleepLockOnServer__block_invoke_490(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to dismiss good morning on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dismissSleepLockWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self _dismissSleepLockOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HKSPSleepStore_dismissSleepLockWithCompletion___block_invoke;
  v8[3] = &unk_279C75318;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

uint64_t __49__HKSPSleepStore_dismissSleepLockWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)sleepAlarmWasDismissedOnDate:(id)a3 source:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(HKSPSleepStore *)self _sleepAlarmWasDismissedOnDateOnServer:a3 source:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HKSPSleepStore_sleepAlarmWasDismissedOnDate_source_completion___block_invoke;
  v12[3] = &unk_279C75318;
  v13 = v8;
  v10 = v8;
  v11 = [v9 addCompletionBlock:v12];
}

uint64_t __65__HKSPSleepStore_sleepAlarmWasDismissedOnDate_source_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_sleepAlarmWasDismissedOnDateOnServer:(id)a3 source:(unint64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 hksp_supportsSleepDaemon];

  if (v8)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"Local";
      if (a4 == 1)
      {
        v10 = @"NanoSync";
      }

      if (a4 == 2)
      {
        v10 = @"CloudSync";
      }

      v11 = v10;
      *buf = 138543874;
      v32 = self;
      v33 = 2114;
      v34 = v6;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Sleep alarm was dismissed on date %{public}@ (%{public}@)", buf, 0x20u);
    }

    v12 = objc_alloc_init(MEMORY[0x277D2C900]);
    v13 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__HKSPSleepStore__sleepAlarmWasDismissedOnDateOnServer_source___block_invoke;
    v26[3] = &unk_279C753E0;
    v27 = v6;
    v30 = a4;
    v28 = v12;
    v29 = v13;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__HKSPSleepStore__sleepAlarmWasDismissedOnDateOnServer_source___block_invoke_491;
    v23[3] = &unk_279C74F60;
    v24 = v29;
    v15 = v28;
    v25 = v15;
    v16 = v29;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v26 withErrorHandler:v23];
    v17 = v25;
    v18 = v15;
  }

  else
  {
    v19 = MEMORY[0x277D2C900];
    v20 = [objc_opt_class() _sleepDisabledError];
    v18 = [v19 futureWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __63__HKSPSleepStore__sleepAlarmWasDismissedOnDateOnServer_source___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HKSPSleepStore__sleepAlarmWasDismissedOnDateOnServer_source___block_invoke_2;
  v6[3] = &unk_279C753B8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [a2 sleepAlarmWasDismissedOnDate:v5 source:v4 completion:v6];
}

void __63__HKSPSleepStore__sleepAlarmWasDismissedOnDateOnServer_source___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to dismiss sleep alarm on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __63__HKSPSleepStore__sleepAlarmWasDismissedOnDateOnServer_source___block_invoke_491(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to dismiss sleep alarm on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sleepAlarmWasSnoozedUntilDate:(id)a3 source:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(HKSPSleepStore *)self _sleepAlarmWasSnoozedUntilDateOnServer:a3 source:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HKSPSleepStore_sleepAlarmWasSnoozedUntilDate_source_completion___block_invoke;
  v12[3] = &unk_279C75318;
  v13 = v8;
  v10 = v8;
  v11 = [v9 addCompletionBlock:v12];
}

uint64_t __66__HKSPSleepStore_sleepAlarmWasSnoozedUntilDate_source_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_sleepAlarmWasSnoozedUntilDateOnServer:(id)a3 source:(unint64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 hksp_supportsSleepDaemon];

  if (v8)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"Local";
      if (a4 == 1)
      {
        v10 = @"NanoSync";
      }

      if (a4 == 2)
      {
        v10 = @"CloudSync";
      }

      v11 = v10;
      *buf = 138543874;
      v32 = self;
      v33 = 2114;
      v34 = v6;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Sleep alarm was snoozed until date %{public}@ (%{public}@)", buf, 0x20u);
    }

    v12 = objc_alloc_init(MEMORY[0x277D2C900]);
    v13 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __64__HKSPSleepStore__sleepAlarmWasSnoozedUntilDateOnServer_source___block_invoke;
    v26[3] = &unk_279C753E0;
    v27 = v6;
    v30 = a4;
    v28 = v12;
    v29 = v13;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__HKSPSleepStore__sleepAlarmWasSnoozedUntilDateOnServer_source___block_invoke_492;
    v23[3] = &unk_279C74F60;
    v24 = v29;
    v15 = v28;
    v25 = v15;
    v16 = v29;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v26 withErrorHandler:v23];
    v17 = v25;
    v18 = v15;
  }

  else
  {
    v19 = MEMORY[0x277D2C900];
    v20 = [objc_opt_class() _sleepDisabledError];
    v18 = [v19 futureWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

void __64__HKSPSleepStore__sleepAlarmWasSnoozedUntilDateOnServer_source___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HKSPSleepStore__sleepAlarmWasSnoozedUntilDateOnServer_source___block_invoke_2;
  v6[3] = &unk_279C753B8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [a2 sleepAlarmWasSnoozedUntilDate:v5 source:v4 completion:v6];
}

void __64__HKSPSleepStore__sleepAlarmWasSnoozedUntilDateOnServer_source___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to snooze sleep alarm on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __64__HKSPSleepStore__sleepAlarmWasSnoozedUntilDateOnServer_source___block_invoke_492(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to snooze sleep alarm on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sleepAlarmWasModifiedFromSource:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HKSPSleepStore *)self _sleepAlarmWasModifiedOnServer:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HKSPSleepStore_sleepAlarmWasModifiedFromSource_completion___block_invoke;
  v10[3] = &unk_279C75318;
  v11 = v6;
  v8 = v6;
  v9 = [v7 addCompletionBlock:v10];
}

uint64_t __61__HKSPSleepStore_sleepAlarmWasModifiedFromSource_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_sleepAlarmWasModifiedOnServer:(unint64_t)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 hksp_supportsSleepDaemon];

  if (v6)
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"Local";
      if (a3 == 1)
      {
        v8 = @"NanoSync";
      }

      if (a3 == 2)
      {
        v8 = @"CloudSync";
      }

      v9 = v8;
      *buf = 138543618;
      v29 = self;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sleep alarm was modified (%{public}@)", buf, 0x16u);
    }

    v10 = objc_alloc_init(MEMORY[0x277D2C900]);
    v11 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__HKSPSleepStore__sleepAlarmWasModifiedOnServer___block_invoke;
    v24[3] = &unk_279C75408;
    v27 = a3;
    v25 = v10;
    v26 = v11;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__HKSPSleepStore__sleepAlarmWasModifiedOnServer___block_invoke_493;
    v21[3] = &unk_279C74F60;
    v22 = v26;
    v13 = v25;
    v23 = v13;
    v14 = v26;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v24 withErrorHandler:v21];
    v15 = v23;
    v16 = v13;
  }

  else
  {
    v17 = MEMORY[0x277D2C900];
    v18 = [objc_opt_class() _sleepDisabledError];
    v16 = [v17 futureWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

void __49__HKSPSleepStore__sleepAlarmWasModifiedOnServer___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HKSPSleepStore__sleepAlarmWasModifiedOnServer___block_invoke_2;
  v5[3] = &unk_279C753B8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a2 sleepAlarmWasModifiedFromSource:v4 completion:v5];
}

void __49__HKSPSleepStore__sleepAlarmWasModifiedOnServer___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to modify sleep alarm on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __49__HKSPSleepStore__sleepAlarmWasModifiedOnServer___block_invoke_493(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to modify sleep alarm on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

void __75__HKSPSleepStore_setWakeUpAlarmEnabled_resolvedOccurrence_date_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 mutableCopy];
    [v6 saveOccurrence:*(a1 + 32)];
    [*(a1 + 40) saveCurrentSleepSchedule:v6 completion:*(a1 + 48)];
  }

  else
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "%{public}@ failed to fetch sleep schedule: %{public}@", &v10, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_publishNotificationOnServerWithIdentifier:(id)a3 userInfo:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCDD30] sharedBehavior];
  v9 = [v8 hksp_supportsSleepDaemon];

  if (v9)
  {
    v10 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = self;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Publishing notification with identifier on server: %{public}@", buf, 0x16u);
    }

    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v12 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__HKSPSleepStore__publishNotificationOnServerWithIdentifier_userInfo___block_invoke;
    v24[3] = &unk_279C75458;
    v25 = v6;
    v26 = v7;
    v27 = v11;
    v28 = v12;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__HKSPSleepStore__publishNotificationOnServerWithIdentifier_userInfo___block_invoke_495;
    v21[3] = &unk_279C74F60;
    v22 = v28;
    v14 = v27;
    v23 = v14;
    v15 = v28;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v24 withErrorHandler:v21];
    v16 = v23;
    v17 = v14;
  }

  else
  {
    v18 = MEMORY[0x277D2C900];
    v15 = [objc_opt_class() _sleepDisabledError];
    v17 = [v18 futureWithError:v15];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

void __70__HKSPSleepStore__publishNotificationOnServerWithIdentifier_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HKSPSleepStore__publishNotificationOnServerWithIdentifier_userInfo___block_invoke_2;
  v6[3] = &unk_279C753B8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [a2 publishNotificationWithIdentifier:v4 userInfo:v5 completion:v6];
}

void __70__HKSPSleepStore__publishNotificationOnServerWithIdentifier_userInfo___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to publish notification on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __70__HKSPSleepStore__publishNotificationOnServerWithIdentifier_userInfo___block_invoke_495(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to publish notification on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publishNotificationWithIdentifier:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 copy];
  v11 = [(HKSPSleepStore *)self _publishNotificationOnServerWithIdentifier:v9 userInfo:v10];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HKSPSleepStore_publishNotificationWithIdentifier_userInfo_completion___block_invoke;
  v14[3] = &unk_279C75318;
  v15 = v8;
  v12 = v8;
  v13 = [v11 addCompletionBlock:v14];
}

uint64_t __72__HKSPSleepStore_publishNotificationWithIdentifier_userInfo_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_setLockScreenOverrideStateOnServerWithState:(int64_t)a3 userInfo:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 hksp_supportsSleepDaemon];

  if (v8)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromHKSPSleepLockScreenState(a3);
      *buf = 138543874;
      v31 = self;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = v6;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Overriding lock screen state on server: %{public}@ (userInfo: %{public}@)", buf, 0x20u);
    }

    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v12 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72__HKSPSleepStore__setLockScreenOverrideStateOnServerWithState_userInfo___block_invoke;
    v25[3] = &unk_279C753E0;
    v29 = a3;
    v26 = v6;
    v27 = v11;
    v28 = v12;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__HKSPSleepStore__setLockScreenOverrideStateOnServerWithState_userInfo___block_invoke_496;
    v22[3] = &unk_279C74F60;
    v23 = v28;
    v14 = v27;
    v24 = v14;
    v15 = v28;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v25 withErrorHandler:v22];
    v16 = v24;
    v17 = v14;
  }

  else
  {
    v18 = MEMORY[0x277D2C900];
    v19 = [objc_opt_class() _sleepDisabledError];
    v17 = [v18 futureWithError:v19];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

void __72__HKSPSleepStore__setLockScreenOverrideStateOnServerWithState_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__HKSPSleepStore__setLockScreenOverrideStateOnServerWithState_userInfo___block_invoke_2;
  v6[3] = &unk_279C753B8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [a2 setLockScreenOverrideState:v4 userInfo:v5 completion:v6];
}

void __72__HKSPSleepStore__setLockScreenOverrideStateOnServerWithState_userInfo___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to override lock screen state on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __72__HKSPSleepStore__setLockScreenOverrideStateOnServerWithState_userInfo___block_invoke_496(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to override lock screen state on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setLockScreenOverrideState:(int64_t)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [a4 copy];
  v10 = [(HKSPSleepStore *)self _setLockScreenOverrideStateOnServerWithState:a3 userInfo:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HKSPSleepStore_setLockScreenOverrideState_userInfo_completion___block_invoke;
  v13[3] = &unk_279C75318;
  v14 = v8;
  v11 = v8;
  v12 = [v10 addCompletionBlock:v13];
}

uint64_t __65__HKSPSleepStore_setLockScreenOverrideState_userInfo_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)createSleepFocusInState:(unint64_t)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 hksp_supportsSleepDaemon];

  if (v8)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromHKSPSleepFocusConfigurationState(a3);
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating sleep focus (%{public}@) mode on server", buf, 0x16u);
    }

    v11 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__HKSPSleepStore_createSleepFocusInState_completion___block_invoke;
    v18[3] = &unk_279C75480;
    v20 = a3;
    v19 = v6;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__HKSPSleepStore_createSleepFocusInState_completion___block_invoke_2;
    v15[3] = &unk_279C754A8;
    v16 = v11;
    v17 = v19;
    v13 = v11;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v18 withErrorHandler:v15];
  }

  else
  {
    v13 = [objc_opt_class() _sleepDisabledError];
    (*(v6 + 2))(v6, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __53__HKSPSleepStore_createSleepFocusInState_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create sleep focus mode on server: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteSleepFocusModeWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 hksp_supportsSleepDaemon];

  if (v6)
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting sleep focus mode on server", buf, 0xCu);
    }

    v8 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__HKSPSleepStore_deleteSleepFocusModeWithCompletion___block_invoke;
    v16[3] = &unk_279C754D0;
    v17 = v4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__HKSPSleepStore_deleteSleepFocusModeWithCompletion___block_invoke_2;
    v13[3] = &unk_279C754A8;
    v14 = v8;
    v15 = v17;
    v10 = v8;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v16 withErrorHandler:v13];
  }

  else
  {
    v11 = [objc_opt_class() _sleepDisabledError];
    (*(v4 + 2))(v4, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53__HKSPSleepStore_deleteSleepFocusModeWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to delete sleep focus mode on server: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureSleepFocusWithState:(unint64_t)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 hksp_supportsSleepDaemon];

  if (v8)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromHKSPSleepFocusConfigurationState(a3);
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Configuring sleep focus (state: %{public}@) on server", buf, 0x16u);
    }

    v11 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__HKSPSleepStore_configureSleepFocusWithState_completion___block_invoke;
    v18[3] = &unk_279C75480;
    v20 = a3;
    v19 = v6;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__HKSPSleepStore_configureSleepFocusWithState_completion___block_invoke_2;
    v15[3] = &unk_279C754A8;
    v16 = v11;
    v17 = v19;
    v13 = v11;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v18 withErrorHandler:v15];
  }

  else
  {
    v13 = [objc_opt_class() _sleepDisabledError];
    (*(v6 + 2))(v6, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __58__HKSPSleepStore_configureSleepFocusWithState_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to configure sleep focus mode on server: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (id)_setWidgetOverrideStateOnServerWithState:(int64_t)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 hksp_supportsSleepDaemon];

  if (v6)
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromHKSPSleepWidgetState(a3);
      *buf = 138543618;
      v28 = self;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Overriding sleep widget state on server: %{public}@", buf, 0x16u);
    }

    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    v10 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__HKSPSleepStore__setWidgetOverrideStateOnServerWithState___block_invoke;
    v23[3] = &unk_279C75408;
    v26 = a3;
    v24 = v9;
    v25 = v10;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__HKSPSleepStore__setWidgetOverrideStateOnServerWithState___block_invoke_497;
    v20[3] = &unk_279C74F60;
    v21 = v25;
    v12 = v24;
    v22 = v12;
    v13 = v25;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v23 withErrorHandler:v20];
    v14 = v22;
    v15 = v12;
  }

  else
  {
    v16 = MEMORY[0x277D2C900];
    v17 = [objc_opt_class() _sleepDisabledError];
    v15 = [v16 futureWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

void __59__HKSPSleepStore__setWidgetOverrideStateOnServerWithState___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HKSPSleepStore__setWidgetOverrideStateOnServerWithState___block_invoke_2;
  v5[3] = &unk_279C753B8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a2 setWidgetOverrideState:v4 completion:v5];
}

void __59__HKSPSleepStore__setWidgetOverrideStateOnServerWithState___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to override sleep widget state on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __59__HKSPSleepStore__setWidgetOverrideStateOnServerWithState___block_invoke_497(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to override sleep widget state on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setWidgetOverrideState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HKSPSleepStore *)self _setWidgetOverrideStateOnServerWithState:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HKSPSleepStore_setWidgetOverrideState_completion___block_invoke;
  v10[3] = &unk_279C75318;
  v11 = v6;
  v8 = v6;
  v9 = [v7 addCompletionBlock:v10];
}

uint64_t __52__HKSPSleepStore_setWidgetOverrideState_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_clearWidgetOverrideOnServer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 hksp_supportsSleepDaemon];

  if (v4)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Clearing sleep widget override on server", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    v7 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __46__HKSPSleepStore__clearWidgetOverrideOnServer__block_invoke;
    v19[3] = &unk_279C751E0;
    v20 = v6;
    v21 = v7;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__HKSPSleepStore__clearWidgetOverrideOnServer__block_invoke_498;
    v16[3] = &unk_279C74F60;
    v17 = v21;
    v9 = v20;
    v18 = v9;
    v10 = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v10 = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:v10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __46__HKSPSleepStore__clearWidgetOverrideOnServer__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HKSPSleepStore__clearWidgetOverrideOnServer__block_invoke_2;
  v4[3] = &unk_279C753B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 clearWidgetOverrideWithCompletion:v4];
}

void __46__HKSPSleepStore__clearWidgetOverrideOnServer__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  else
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to clear sleep widget override on server: %{public}@", &v11, 0x16u);
    }

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 finishWithError:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sleep" code:1000 userInfo:0];
      [v7 finishWithError:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __46__HKSPSleepStore__clearWidgetOverrideOnServer__block_invoke_498(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to clear sleep widget override on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearWidgetOverrideWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self _clearWidgetOverrideOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HKSPSleepStore_clearWidgetOverrideWithCompletion___block_invoke;
  v8[3] = &unk_279C75318;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

uint64_t __52__HKSPSleepStore_clearWidgetOverrideWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (id)_publishWakeUpResultsNotificationOnServer
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 hksp_supportsSleepDaemon];

  if (v4)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Publishing wake up results notification on server", buf, 0xCu);
    }

    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    v7 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __59__HKSPSleepStore__publishWakeUpResultsNotificationOnServer__block_invoke;
    v19[3] = &unk_279C751E0;
    v20 = v6;
    v21 = v7;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__HKSPSleepStore__publishWakeUpResultsNotificationOnServer__block_invoke_500;
    v16[3] = &unk_279C74F60;
    v17 = v21;
    v9 = v20;
    v18 = v9;
    v10 = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    v10 = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:v10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __59__HKSPSleepStore__publishWakeUpResultsNotificationOnServer__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HKSPSleepStore__publishWakeUpResultsNotificationOnServer__block_invoke_2;
  v4[3] = &unk_279C754F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 publishWakeUpResultsNotificationWithCompletion:v4];
}

void __59__HKSPSleepStore__publishWakeUpResultsNotificationOnServer__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to publish wake up results notification on server: %{public}@", &v11, 0x16u);
    }

    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = HKSPNullify(a2);
    [v7 finishWithResult:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __59__HKSPSleepStore__publishWakeUpResultsNotificationOnServer__block_invoke_500(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269A84000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to publish wake up results notification on server: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) finishWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publishWakeUpResultsNotificationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self _publishWakeUpResultsNotificationOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HKSPSleepStore_publishWakeUpResultsNotificationWithCompletion___block_invoke;
  v8[3] = &unk_279C75520;
  v9 = v4;
  v6 = v4;
  v7 = [v5 addCompletionBlock:v8];
}

void __65__HKSPSleepStore_publishWakeUpResultsNotificationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = HKSPNilify(a2);
  (*(v4 + 16))(v4, v6, v5);
}

- (void)nextEventDueAfterDate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(HKSPSleepStore *)self nextEventDueAfterDateFuture:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HKSPSleepStore_nextEventDueAfterDate_completion___block_invoke;
  v10[3] = &unk_279C75548;
  v11 = v6;
  v8 = v6;
  v9 = [v7 addCompletionBlock:v10];
}

void __51__HKSPSleepStore_nextEventDueAfterDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (void)nextEventWithIdentifier:(id)a3 dueAfterDate:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(HKSPSleepStore *)self nextEventWithIdentifierFuture:a3 dueAfterDate:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HKSPSleepStore_nextEventWithIdentifier_dueAfterDate_completion___block_invoke;
  v12[3] = &unk_279C75570;
  v13 = v8;
  v10 = v8;
  v11 = [v9 addCompletionBlock:v12];
}

void __66__HKSPSleepStore_nextEventWithIdentifier_dueAfterDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = HKSPNilify(a2);
    (*(v3 + 16))(v3, v6, v5);
  }
}

- (id)nextEventDueAfterDateFuture:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self sleepScheduleModelFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HKSPSleepStore_nextEventDueAfterDateFuture___block_invoke;
  v9[3] = &unk_279C75028;
  v10 = v4;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __46__HKSPSleepStore_nextEventDueAfterDateFuture___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 nextEventDueAfterDate:*(a1 + 32)];
  v3 = MEMORY[0x277D2C900];
  v4 = HKSPNullify(v2);
  v5 = [v3 futureWithResult:v4];

  return v5;
}

- (id)nextEventDueAfterDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKSPSleepStore *)self sleepScheduleModelWithError:a4];
  v8 = [v7 nextEventDueAfterDate:v6];

  return v8;
}

- (id)nextEventWithIdentifierFuture:(id)a3 dueAfterDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKSPSleepStore *)self sleepScheduleModelFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HKSPSleepStore_nextEventWithIdentifierFuture_dueAfterDate___block_invoke;
  v13[3] = &unk_279C75598;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 flatMap:v13];

  return v11;
}

id __61__HKSPSleepStore_nextEventWithIdentifierFuture_dueAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 nextEventWithIdentifier:*(a1 + 32) dueAfterDate:*(a1 + 40)];
  v3 = MEMORY[0x277D2C900];
  v4 = HKSPNullify(v2);
  v5 = [v3 futureWithResult:v4];

  return v5;
}

- (id)nextEventWithIdentifier:(id)a3 dueAfterDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HKSPSleepStore *)self sleepScheduleModelWithError:a5];
  v11 = [v10 nextEventWithIdentifier:v9 dueAfterDate:v8];

  return v11;
}

- (void)setSleepCoachingOnboardingCompletedVersion:(int64_t)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting sleep coaching onboarding version to %{public}@", buf, 0x16u);
  }

  v9 = [(HKSPSleepStore *)self currentSleepEventRecordFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HKSPSleepStore_setSleepCoachingOnboardingCompletedVersion_completion___block_invoke;
  v13[3] = &unk_279C755C0;
  v13[4] = self;
  v14 = v6;
  v15 = a3;
  v10 = v6;
  v11 = [v9 addCompletionBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __72__HKSPSleepStore_setSleepCoachingOnboardingCompletedVersion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPNilify(a2);
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v10 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v13;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve event record for setting sleep coaching onboarding: %{public}@", &v14, 0x16u);
    }

    v11 = *(*(a1 + 40) + 16);
    goto LABEL_8;
  }

  v8 = *(a1 + 48);
  v9 = (*(*(*(a1 + 32) + 80) + 16))();
  LODWORD(v8) = [v7 updateSleepCoachingOnboardingCompletedVersion:v8 completedDate:v9];

  if (!v8)
  {
    v11 = *(*(a1 + 40) + 16);
LABEL_8:
    v11();
    goto LABEL_9;
  }

  [*(a1 + 32) saveCurrentSleepEventRecord:v7 completion:*(a1 + 40)];
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setSleepTrackingOnboardingCompletedVersion:(int64_t)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting sleep tracking onboarding version to %{public}@", buf, 0x16u);
  }

  v9 = [(HKSPSleepStore *)self currentSleepEventRecordFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HKSPSleepStore_setSleepTrackingOnboardingCompletedVersion_completion___block_invoke;
  v13[3] = &unk_279C755C0;
  v13[4] = self;
  v14 = v6;
  v15 = a3;
  v10 = v6;
  v11 = [v9 addCompletionBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __72__HKSPSleepStore_setSleepTrackingOnboardingCompletedVersion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPNilify(a2);
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v10 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v13;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve event record for setting sleep tracking onboarding: %{public}@", &v14, 0x16u);
    }

    v11 = *(*(a1 + 40) + 16);
    goto LABEL_8;
  }

  v8 = *(a1 + 48);
  v9 = (*(*(*(a1 + 32) + 80) + 16))();
  LODWORD(v8) = [v7 updateSleepTrackingOnboardingCompletedVersion:v8 completedDate:v9];

  if (!v8)
  {
    v11 = *(*(a1 + 40) + 16);
LABEL_8:
    v11();
    goto LABEL_9;
  }

  [*(a1 + 32) saveCurrentSleepEventRecord:v7 completion:*(a1 + 40)];
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting sleep wind down shortcuts onboarding version to %{public}@", buf, 0x16u);
  }

  v9 = [(HKSPSleepStore *)self currentSleepEventRecordFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HKSPSleepStore_setSleepWindDownShortcutsOnboardingCompletedVersion_completion___block_invoke;
  v13[3] = &unk_279C755C0;
  v13[4] = self;
  v14 = v6;
  v15 = a3;
  v10 = v6;
  v11 = [v9 addCompletionBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __81__HKSPSleepStore_setSleepWindDownShortcutsOnboardingCompletedVersion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPNilify(a2);
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v10 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138543618;
      v15 = v13;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve event record for setting sleep wind down shortcuts onboarding: %{public}@", &v14, 0x16u);
    }

    v11 = *(*(a1 + 40) + 16);
    goto LABEL_8;
  }

  v8 = *(a1 + 48);
  v9 = (*(*(*(a1 + 32) + 80) + 16))();
  LODWORD(v8) = [v7 updateSleepWindDownShortcutsOnboardingCompletedVersion:v8 completedDate:v9];

  if (!v8)
  {
    v11 = *(*(a1 + 40) + 16);
LABEL_8:
    v11();
    goto LABEL_9;
  }

  [*(a1 + 32) saveCurrentSleepEventRecord:v7 completion:*(a1 + 40)];
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversForChangedSleepSchedule:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for changed sleep schedule: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HKSPSleepStore__notifyObserversForChangedSleepSchedule___block_invoke;
  v9[3] = &unk_279C75610;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __58__HKSPSleepStore__notifyObserversForChangedSleepSchedule___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) sleepScheduleModelFuture];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__HKSPSleepStore__notifyObserversForChangedSleepSchedule___block_invoke_2;
    v8[3] = &unk_279C755E8;
    v9 = *(a1 + 40);
    v5 = v3;
    v6 = *(a1 + 32);
    v10 = v5;
    v11 = v6;
    v7 = [v4 addSuccessBlock:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:*(a1 + 32) sleepScheduleDidChange:*(a1 + 40)];
  }
}

void __58__HKSPSleepStore__notifyObserversForChangedSleepSchedule___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 sleepSettings];
  v6 = [v4 sleepEventRecord];

  v7 = [HKSPSleepScheduleModel sleepScheduleModelWithSleepSchedule:v3 sleepSettings:v5 sleepEventRecord:v6];

  [*(a1 + 40) sleepStore:*(a1 + 48) sleepScheduleModelDidChange:v7];
}

- (void)_notifyObserversForChangedSleepSettings:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for changed sleep settings: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HKSPSleepStore__notifyObserversForChangedSleepSettings___block_invoke;
  v9[3] = &unk_279C75610;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __58__HKSPSleepStore__notifyObserversForChangedSleepSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = v3;
    v5 = [*(a1 + 32) sleepScheduleModelFuture];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__HKSPSleepStore__notifyObserversForChangedSleepSettings___block_invoke_2;
    v8[3] = &unk_279C755E8;
    v9 = *(a1 + 40);
    v10 = v4;
    v11 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 addSuccessBlock:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:*(a1 + 32) sleepSettingsDidChange:*(a1 + 40)];
  }
}

void __58__HKSPSleepStore__notifyObserversForChangedSleepSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sleepSchedule];
  v5 = *(a1 + 32);
  v6 = [v3 sleepEventRecord];

  v7 = [HKSPSleepScheduleModel sleepScheduleModelWithSleepSchedule:v4 sleepSettings:v5 sleepEventRecord:v6];

  [*(a1 + 40) sleepStore:*(a1 + 48) sleepScheduleModelDidChange:v7];
}

- (void)_notifyObserversForChangedSleepEventRecord:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for changed sleep event record: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HKSPSleepStore__notifyObserversForChangedSleepEventRecord___block_invoke;
  v9[3] = &unk_279C75610;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __61__HKSPSleepStore__notifyObserversForChangedSleepEventRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) sleepScheduleModelFuture];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__HKSPSleepStore__notifyObserversForChangedSleepEventRecord___block_invoke_2;
    v8[3] = &unk_279C755E8;
    v9 = *(a1 + 40);
    v5 = v3;
    v6 = *(a1 + 32);
    v10 = v5;
    v11 = v6;
    v7 = [v4 addSuccessBlock:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:*(a1 + 32) sleepEventRecordDidChange:*(a1 + 40)];
  }
}

void __61__HKSPSleepStore__notifyObserversForChangedSleepEventRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sleepSchedule];
  v5 = [v3 sleepSettings];

  v6 = [HKSPSleepScheduleModel sleepScheduleModelWithSleepSchedule:v4 sleepSettings:v5 sleepEventRecord:*(a1 + 32)];

  [*(a1 + 40) sleepStore:*(a1 + 48) sleepScheduleModelDidChange:v6];
}

- (void)_notifyObserversForChangedSleepMode:(int64_t)a3 reason:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepMode(a3);
    v9 = NSStringFromHKSPSleepModeChangeReason(a4);
    *buf = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for changed sleep mode: %{public}@ (%{public}@)", buf, 0x20u);
  }

  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HKSPSleepStore__notifyObserversForChangedSleepMode_reason___block_invoke;
  v12[3] = &unk_279C75638;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = a4;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v12];
  v11 = *MEMORY[0x277D85DE8];
}

void __61__HKSPSleepStore__notifyObserversForChangedSleepMode_reason___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:a1[4] sleepModeDidChange:a1[5] reason:a1[6]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:a1[4] sleepModeOnDidChange:a1[5] != 0];
  }
}

- (void)_notifyObserversForSleepEvent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for sleep event: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HKSPSleepStore__notifyObserversForSleepEvent___block_invoke;
  v9[3] = &unk_279C75610;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __48__HKSPSleepStore__notifyObserversForSleepEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:*(a1 + 32) sleepEventDidOccur:*(a1 + 40)];
  }
}

- (void)_notifyObserversForChangedSleepScheduleState:(unint64_t)a3 reason:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepScheduleState(a3);
    v9 = NSStringFromHKSPSleepScheduleStateChangeReason(a4);
    *buf = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for sleep state: %{public}@ (%{public}@)", buf, 0x20u);
  }

  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HKSPSleepStore__notifyObserversForChangedSleepScheduleState_reason___block_invoke;
  v12[3] = &unk_279C75638;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = a4;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v12];
  v11 = *MEMORY[0x277D85DE8];
}

void __70__HKSPSleepStore__notifyObserversForChangedSleepScheduleState_reason___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:a1[4] sleepScheduleStateDidChange:a1[5] reason:a1[6]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:a1[4] sleepScheduleStateDidChange:a1[5]];
  }
}

- (BOOL)_shouldNotifyObserversForClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepStore *)self options];
  LOBYTE(v6) = 1;
  if (v4 && (v5 & 0x20) != 0)
  {
    v7 = [(HKSPSleepStore *)self clientIdentifier];

    if (v7)
    {
      v8 = [(HKSPSleepStore *)self clientIdentifier];
      v6 = [v4 isEqual:v8] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (void)_updateAndNotifyForChangedSleepSchedule:(id)a3 clientIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = HKSPSleepScheduleUnwrap(v7);
  v9 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepScheduleChanged: %{public}@", &v15, 0x16u);
  }

  v10 = [(HKSPSleepStore *)self syncAnchorContainer];
  v11 = [v7 syncAnchor];

  [v10 updateSleepScheduleSyncAnchor:v11];
  v12 = [(HKSPSleepStore *)self clientIdentifier];
  LODWORD(v10) = [v6 isEqual:v12];

  if (!v10 || !v8)
  {
    v13 = [(HKSPSleepStore *)self sleepStoreCache];
    [v13 updateCachedSleepSchedule:v8];
  }

  if ([(HKSPSleepStore *)self _shouldNotifyObserversForClientIdentifier:v6])
  {
    [(HKSPSleepStore *)self _notifyObserversForChangedSleepSchedule:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForChangedSleepSettings:(id)a3 clientIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepSettingsChanged: %{public}@", &v14, 0x16u);
  }

  v9 = [(HKSPSleepStore *)self syncAnchorContainer];
  v10 = [v6 syncAnchor];
  [v9 updateSleepSettingsSyncAnchor:v10];

  v11 = [(HKSPSleepStore *)self clientIdentifier];
  LOBYTE(v10) = [v7 isEqual:v11];

  if ((v10 & 1) == 0)
  {
    v12 = [(HKSPSleepStore *)self sleepStoreCache];
    [v12 updateCachedSleepSettings:v6];
  }

  if ([(HKSPSleepStore *)self _shouldNotifyObserversForClientIdentifier:v7])
  {
    [(HKSPSleepStore *)self _notifyObserversForChangedSleepSettings:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForChangedSleepEventRecord:(id)a3 clientIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepEventRecordChanged: %{public}@", &v14, 0x16u);
  }

  v9 = [(HKSPSleepStore *)self syncAnchorContainer];
  v10 = [v6 syncAnchor];
  [v9 updateSleepEventRecordSyncAnchor:v10];

  v11 = [(HKSPSleepStore *)self clientIdentifier];
  LOBYTE(v10) = [v7 isEqual:v11];

  if ((v10 & 1) == 0)
  {
    v12 = [(HKSPSleepStore *)self sleepStoreCache];
    [v12 updateCachedSleepEventRecord:v6];
  }

  if ([(HKSPSleepStore *)self _shouldNotifyObserversForClientIdentifier:v7])
  {
    [(HKSPSleepStore *)self _notifyObserversForChangedSleepEventRecord:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForSleepEvent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepEventOccurred: %{public}@", &v9, 0x16u);
  }

  v6 = [(HKSPSleepStore *)self syncAnchorContainer];
  v7 = [v4 syncAnchor];
  [v6 updateSleepEventSyncAnchor:v7];

  [(HKSPSleepStore *)self _notifyObserversForSleepEvent:v4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForChangedSleepScheduleState:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 scheduleState];
  v6 = [v4 changeReason];
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepScheduleState(v5);
    v9 = NSStringFromHKSPSleepScheduleStateChangeReason(v6);
    v14 = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepScheduleStateChanged: %{public}@ (%{public}@)", &v14, 0x20u);
  }

  v10 = [(HKSPSleepStore *)self syncAnchorContainer];
  v11 = [v4 syncAnchor];
  [v10 updateSleepScheduleStateSyncAnchor:v11];

  v12 = [(HKSPSleepStore *)self sleepStoreCache];
  [v12 updateCachedSleepScheduleState:v5];

  [(HKSPSleepStore *)self _notifyObserversForChangedSleepScheduleState:v5 reason:v6];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForChangedSleepMode:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sleepMode];
  v6 = [v4 changeReason];
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepMode(v5);
    v9 = NSStringFromHKSPSleepModeChangeReason(v6);
    v14 = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepModeChanged: %{public}@ (%{public}@)", &v14, 0x20u);
  }

  v10 = [(HKSPSleepStore *)self syncAnchorContainer];
  v11 = [v4 syncAnchor];
  [v10 updateSleepModeSyncAnchor:v11];

  v12 = [(HKSPSleepStore *)self sleepStoreCache];
  [v12 updateCachedSleepMode:v5];

  [(HKSPSleepStore *)self _notifyObserversForChangedSleepMode:v5 reason:v6];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  [(HKSPXPCConnectionProvider *)self->_connectionProvider invalidate];
  [(HKSPSleepFocusModeBridge *)self->_sleepFocusModeBridge invalidate];
  v5.receiver = self;
  v5.super_class = HKSPSleepStore;
  [(HKSPSleepStore *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sleepFocusModeBridge:(id)a3 didUpdateSleepFocusConfiguration:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for sleep focus mode update: %{public}@", buf, 0x16u);
  }

  v7 = [(HKSPSleepStore *)self sleepStoreCache];
  [v7 purgeCachedSleepMode];

  observers = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HKSPSleepStore_sleepFocusModeBridge_didUpdateSleepFocusConfiguration___block_invoke;
  v11[3] = &unk_279C75610;
  v11[4] = self;
  v12 = v5;
  v9 = v5;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __72__HKSPSleepStore_sleepFocusModeBridge_didUpdateSleepFocusConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sleepStore:*(a1 + 32) sleepFocusConfigurationDidUpdate:*(a1 + 40)];
  }
}

- (BOOL)hasSleepFocusMode
{
  v2 = [(HKSPSleepStore *)self sleepFocusConfiguration];
  v3 = [v2 hasSleepFocusMode];

  return v3;
}

- (HKSPSleepFocusConfiguration)sleepFocusConfiguration
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPSleepStore *)self sleepFocusModeBridge];

  if (v3)
  {
    v4 = [(HKSPSleepStore *)self sleepFocusModeBridge];
    v11 = 0;
    v5 = [v4 sleepFocusConfiguration:&v11];
    v6 = v11;

    v7 = HKSPLogForCategory(1uLL);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v13 = self;
        v14 = 2114;
        v15 = v6;
        _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "%{public}@ error retrieving sleep focus config: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepFocusConfiguration: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v5 = [[HKSPSleepFocusConfiguration alloc] initWithUUID:0 mirrorsFocusModes:0 state:0];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

@end