@interface HKSPSleepStore
+ (id)_updatedHistoricalSleepGoalForSleepSchedule:(id)schedule options:(unint64_t)options date:(id)date;
+ (id)_updatedHistoricalSleepSchedulesFromSleepSchedule:(id)schedule options:(unint64_t)options date:(id)date;
- (BOOL)_resultHasSchedule:(id)schedule;
- (BOOL)_resultScheduleIsValid:(id)valid;
- (BOOL)_resultScheduleMeetsDefaultGoal:(id)goal;
- (BOOL)_shouldNotifyObserversForClientIdentifier:(id)identifier;
- (BOOL)hasSleepFocusMode;
- (BOOL)shouldReloadWidgetOfKind:(id)kind;
- (HKSPSleepFocusConfiguration)sleepFocusConfiguration;
- (HKSPSleepStore)init;
- (HKSPSleepStore)initWithConnectionProviderProvider:(id)provider identifier:(id)identifier healthStore:(id)store options:(unint64_t)options;
- (HKSPSleepStore)initWithConnectionProviderProvider:(id)provider identifier:(id)identifier healthStore:(id)store options:(unint64_t)options analyticsManager:(id)manager throttlerProvider:(id)throttlerProvider callbackScheduler:(id)scheduler sleepFocusModeBridgeProvider:(id)self0 widgetTimelineControllersProvider:(id)self1 widgetRelevanceControllerProvider:(id)self2 currentDateProvider:(id)self3;
- (HKSPSleepStore)initWithHealthStore:(id)store;
- (NSString)description;
- (id)_clearWidgetOverrideOnServer;
- (id)_confirmAwakeOnServer;
- (id)_dismissGoodMorningOnServer;
- (id)_dismissSleepLockOnServer;
- (id)_prepareObjectForSave:(id)save options:(unint64_t)options;
- (id)_publishNotificationOnServerWithIdentifier:(id)identifier userInfo:(id)info;
- (id)_publishWakeUpResultsNotificationOnServer;
- (id)_saveCurrentSleepEventRecordOnServer:(id)server options:(unint64_t)options;
- (id)_saveCurrentSleepScheduleOnServer:(id)server options:(unint64_t)options;
- (id)_saveCurrentSleepSettingsOnServer:(id)server options:(unint64_t)options;
- (id)_sendScheduleChangedAnalyticsWithContext:(id)context;
- (id)_setLockScreenOverrideStateOnServerWithState:(int64_t)state userInfo:(id)info;
- (id)_setSleepModeOnServer:(int64_t)server reason:(unint64_t)reason;
- (id)_setWidgetOverrideStateOnServerWithState:(int64_t)state;
- (id)_sleepAlarmWasDismissedOnDateOnServer:(id)server source:(unint64_t)source;
- (id)_sleepAlarmWasModifiedOnServer:(unint64_t)server;
- (id)_sleepAlarmWasSnoozedUntilDateOnServer:(id)server source:(unint64_t)source;
- (id)_writeHistoricalSchedule:(id)schedule options:(unint64_t)options;
- (id)currentSleepEventRecordWithError:(id *)error;
- (id)currentSleepScheduleWithError:(id *)error;
- (id)currentSleepSettingsWithError:(id *)error;
- (id)nextEventDueAfterDate:(id)date error:(id *)error;
- (id)nextEventDueAfterDateFuture:(id)future;
- (id)nextEventWithIdentifier:(id)identifier dueAfterDate:(id)date error:(id *)error;
- (id)nextEventWithIdentifierFuture:(id)future dueAfterDate:(id)date;
- (id)saveCurrentSleepEventRecord:(id)record options:(unint64_t)options;
- (id)saveCurrentSleepSchedule:(id)schedule options:(unint64_t)options context:(id)context;
- (id)saveCurrentSleepSettings:(id)settings options:(unint64_t)options;
- (id)sleepModeOnFuture;
- (id)sleepScheduleModelWithError:(id *)error;
- (id)upcomingResolvedScheduleOccurrenceAfterDate:(id)date alarmStatus:(int64_t *)status error:(id *)error;
- (id)upcomingScheduleOccurrenceAfterDate:(id)date alarmStatus:(int64_t *)status error:(id *)error;
- (id)upcomingScheduleOccurrenceAfterDate:(id)date error:(id *)error;
- (id)upcomingScheduleOccurrenceAfterDateFuture:(id)future;
- (int64_t)sleepModeWithError:(id *)error;
- (int64_t)sleepWidgetStateWithError:(id *)error;
- (unint64_t)currentSleepScheduleStateWithError:(id *)error;
- (void)_checkInWithCurrentSyncAnchor;
- (void)_notifyObserversForChangedSleepEventRecord:(id)record;
- (void)_notifyObserversForChangedSleepMode:(int64_t)mode reason:(unint64_t)reason;
- (void)_notifyObserversForChangedSleepSchedule:(id)schedule;
- (void)_notifyObserversForChangedSleepScheduleState:(unint64_t)state reason:(unint64_t)reason;
- (void)_notifyObserversForChangedSleepSettings:(id)settings;
- (void)_notifyObserversForSleepEvent:(id)event;
- (void)_updateAndNotifyForChangedSleepEventRecord:(id)record clientIdentifier:(id)identifier;
- (void)_updateAndNotifyForChangedSleepMode:(id)mode;
- (void)_updateAndNotifyForChangedSleepSchedule:(id)schedule clientIdentifier:(id)identifier;
- (void)_updateAndNotifyForChangedSleepScheduleState:(id)state;
- (void)_updateAndNotifyForChangedSleepSettings:(id)settings clientIdentifier:(id)identifier;
- (void)_updateAndNotifyForSleepEvent:(id)event;
- (void)clearWidgetOverrideWithCompletion:(id)completion;
- (void)configureSleepFocusWithState:(unint64_t)state completion:(id)completion;
- (void)confirmAwakeWithCompletion:(id)completion;
- (void)connectSynchronously:(BOOL)synchronously;
- (void)createSleepFocusInState:(unint64_t)state completion:(id)completion;
- (void)currentSleepEventRecordWithCompletion:(id)completion;
- (void)currentSleepScheduleStateWithCompletion:(id)completion;
- (void)currentSleepScheduleWithCompletion:(id)completion;
- (void)currentSleepSettingsWithCompletion:(id)completion;
- (void)dealloc;
- (void)deleteSleepFocusModeWithCompletion:(id)completion;
- (void)dismissGoodMorningWithCompletion:(id)completion;
- (void)dismissSleepLockWithCompletion:(id)completion;
- (void)nextEventDueAfterDate:(id)date completion:(id)completion;
- (void)nextEventWithIdentifier:(id)identifier dueAfterDate:(id)date completion:(id)completion;
- (void)publishNotificationWithIdentifier:(id)identifier userInfo:(id)info completion:(id)completion;
- (void)publishWakeUpResultsNotificationWithCompletion:(id)completion;
- (void)reconnect;
- (void)saveCurrentSleepEventRecord:(id)record options:(unint64_t)options completion:(id)completion;
- (void)saveCurrentSleepSchedule:(id)schedule options:(unint64_t)options context:(id)context completion:(id)completion;
- (void)saveCurrentSleepSettings:(id)settings options:(unint64_t)options completion:(id)completion;
- (void)setLockScreenOverrideState:(int64_t)state userInfo:(id)info completion:(id)completion;
- (void)setSleepCoachingOnboardingCompletedVersion:(int64_t)version completion:(id)completion;
- (void)setSleepModeOn:(BOOL)on reason:(unint64_t)reason completion:(id)completion;
- (void)setSleepTrackingOnboardingCompletedVersion:(int64_t)version completion:(id)completion;
- (void)setSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)version completion:(id)completion;
- (void)setWidgetOverrideState:(int64_t)state completion:(id)completion;
- (void)sleepAlarmWasDismissedOnDate:(id)date source:(unint64_t)source completion:(id)completion;
- (void)sleepAlarmWasModifiedFromSource:(unint64_t)source completion:(id)completion;
- (void)sleepAlarmWasSnoozedUntilDate:(id)date source:(unint64_t)source completion:(id)completion;
- (void)sleepFocusModeBridge:(id)bridge didUpdateSleepFocusConfiguration:(id)configuration;
- (void)sleepModeOnWithCompletion:(id)completion;
- (void)sleepModeWithCompletion:(id)completion;
- (void)sleepScheduleModelWithCompletion:(id)completion;
- (void)sleepWidgetStateWithCompletion:(id)completion;
- (void)suggestedSleepScheduleWithProviders:(id)providers completion:(id)completion;
- (void)trackSleepDataInteractionEventWithType:(unint64_t)type isOnboardedVitals:(BOOL)vitals completion:(id)completion;
- (void)upcomingScheduleOccurrenceAfterDate:(id)date completion:(id)completion;
@end

@implementation HKSPSleepStore

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  loggingIdentifier = [(HKSPXPCClientIdentifier *)self->_clientIdentifier loggingIdentifier];
  v7 = [v3 stringWithFormat:@"[%@.%@.%p]", v5, loggingIdentifier, self];

  return v7;
}

- (void)trackSleepDataInteractionEventWithType:(unint64_t)type isOnboardedVitals:(BOOL)vitals completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HKSPSleepStore_Analytics__trackSleepDataInteractionEventWithType_isOnboardedVitals_completion___block_invoke;
  v10[3] = &unk_279C73D20;
  v10[4] = self;
  v11 = completionCopy;
  typeCopy = type;
  vitalsCopy = vitals;
  v9 = completionCopy;
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

- (void)suggestedSleepScheduleWithProviders:(id)providers completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  completionCopy = completion;
  v8 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting suggested sleep schedule", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HKSPSleepStore_Proactive__suggestedSleepScheduleWithProviders_completion___block_invoke;
  v12[3] = &unk_279C74550;
  v13 = providersCopy;
  v14 = completionCopy;
  v12[4] = self;
  v9 = providersCopy;
  v10 = completionCopy;
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

- (BOOL)_resultHasSchedule:(id)schedule
{
  schedule = [schedule schedule];
  v4 = schedule != 0;

  return v4;
}

- (BOOL)_resultScheduleMeetsDefaultGoal:(id)goal
{
  v13 = *MEMORY[0x277D85DE8];
  schedule = [goal schedule];
  meetsDefaultSleepGoal = [schedule meetsDefaultSleepGoal];

  v6 = HKSPLogForCategory(1uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (meetsDefaultSleepGoal)
  {
    if (v7)
    {
      v11 = 138543362;
      selfCopy2 = self;
      v8 = "%{public}@ suggested schedule meets default sleep goal";
LABEL_6:
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
    }
  }

  else if (v7)
  {
    v11 = 138543362;
    selfCopy2 = self;
    v8 = "%{public}@ suggested schedule doesn't meet default sleep goal";
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
  return meetsDefaultSleepGoal;
}

- (BOOL)_resultScheduleIsValid:(id)valid
{
  v22 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  v5 = [(HKSPSleepStore *)self sleepScheduleModelWithError:0];
  schedule = [validCopy schedule];

  sleepSettings = [v5 sleepSettings];
  sleepEventRecord = [v5 sleepEventRecord];
  v9 = [HKSPSleepScheduleModel sleepScheduleModelWithSleepSchedule:schedule sleepSettings:sleepSettings sleepEventRecord:sleepEventRecord];

  currentDateProvider = [(HKSPSleepStore *)self currentDateProvider];
  v11 = currentDateProvider[2]();
  v12 = [HKSPSleepEventTimelineBuilder builderWithSleepScheduleModel:v9 date:v11];

  v13 = [v12 buildTimelineWithOptions:2];
  sleepScheduleInvalid = [v13 sleepScheduleInvalid];
  v15 = HKSPLogForCategory(1uLL);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (sleepScheduleInvalid)
  {
    if (v16)
    {
      v20 = 138543362;
      selfCopy2 = self;
      v17 = "%{public}@ suggested schedule is invalid";
LABEL_6:
      _os_log_impl(&dword_269A84000, v15, OS_LOG_TYPE_DEFAULT, v17, &v20, 0xCu);
    }
  }

  else if (v16)
  {
    v20 = 138543362;
    selfCopy2 = self;
    v17 = "%{public}@ suggested schedule is valid";
    goto LABEL_6;
  }

  v18 = *MEMORY[0x277D85DE8];
  return sleepScheduleInvalid ^ 1;
}

- (HKSPSleepStore)init
{
  v3 = HKSPGenerateSleepStoreIdentifier(&stru_287A719F0);
  v4 = [(HKSPSleepStore *)self initWithIdentifier:v3];

  return v4;
}

- (HKSPSleepStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v5 = HKSPGenerateSleepStoreIdentifier(&stru_287A719F0);
  v6 = [(HKSPSleepStore *)self initWithIdentifier:v5 healthStore:storeCopy];

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

- (HKSPSleepStore)initWithConnectionProviderProvider:(id)provider identifier:(id)identifier healthStore:(id)store options:(unint64_t)options
{
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __84__HKSPSleepStore_initWithConnectionProviderProvider_identifier_healthStore_options___block_invoke_2;
  v24 = &__block_descriptor_40_e33____HKSPSleepFocusModeBridge__8__0l;
  optionsCopy = options;
  storeCopy = store;
  identifierCopy = identifier;
  providerCopy = provider;
  v13 = MEMORY[0x26D64AA30](&v21);
  v14 = [HKSPAnalyticsManager alloc];
  hksp_analyticsUserDefaults = [MEMORY[0x277CBEBD0] hksp_analyticsUserDefaults];
  v16 = [(HKSPAnalyticsManager *)v14 initWithUserDefaults:hksp_analyticsUserDefaults];
  hkspMainThreadScheduler = [MEMORY[0x277D2C938] hkspMainThreadScheduler];
  v18 = HKSPCurrentDateProvider();
  optionsCopy = [(HKSPSleepStore *)self initWithConnectionProviderProvider:providerCopy identifier:identifierCopy healthStore:storeCopy options:options analyticsManager:v16 throttlerProvider:&__block_literal_global_306_0 callbackScheduler:hkspMainThreadScheduler sleepFocusModeBridgeProvider:v13 widgetTimelineControllersProvider:&__block_literal_global_315 widgetRelevanceControllerProvider:&__block_literal_global_319 currentDateProvider:v18, v21, v22, v23, v24, optionsCopy];

  return optionsCopy;
}

HKSPThrottler *__84__HKSPSleepStore_initWithConnectionProviderProvider_identifier_healthStore_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HKSPThrottler alloc];
  v4 = [MEMORY[0x277D2C938] serialDispatchQueueSchedulerWithName:@"com.apple.sleep.HKSPSleepStore"];
  v5 = [(HKSPThrottler *)v3 initWithInterval:v2 executeBlock:v4 scheduler:0.1];

  return v5;
}

- (HKSPSleepStore)initWithConnectionProviderProvider:(id)provider identifier:(id)identifier healthStore:(id)store options:(unint64_t)options analyticsManager:(id)manager throttlerProvider:(id)throttlerProvider callbackScheduler:(id)scheduler sleepFocusModeBridgeProvider:(id)self0 widgetTimelineControllersProvider:(id)self1 widgetRelevanceControllerProvider:(id)self2 currentDateProvider:(id)self3
{
  v68 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  identifierCopy = identifier;
  storeCopy = store;
  obj = manager;
  managerCopy = manager;
  throttlerProviderCopy = throttlerProvider;
  schedulerCopy = scheduler;
  bridgeProviderCopy = bridgeProvider;
  controllersProviderCopy = controllersProvider;
  controllerProviderCopy = controllerProvider;
  dateProviderCopy = dateProvider;
  v65.receiver = self;
  v65.super_class = HKSPSleepStore;
  v22 = [(HKSPSleepStore *)&v65 init];
  if (v22)
  {
    v23 = [HKSPXPCClientIdentifier alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v25 = [(HKSPXPCClientIdentifier *)v23 initWithUniqueIdentifier:uUID loggingIdentifier:identifierCopy];
    clientIdentifier = v22->_clientIdentifier;
    v22->_clientIdentifier = v25;

    v27 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v67 = v22;
      _os_log_impl(&dword_269A84000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    v28 = [[HKSPSyncAnchorContainer alloc] initWithIdentifier:identifierCopy];
    syncAnchorContainer = v22->_syncAnchorContainer;
    v22->_syncAnchorContainer = v28;

    v30 = objc_alloc_init(HKSPSleepStoreExportedObject);
    sleepStoreExportedObject = v22->_sleepStoreExportedObject;
    v22->_sleepStoreExportedObject = v30;

    [(HKSPSleepStoreExportedObject *)v22->_sleepStoreExportedObject setSleepStore:v22];
    if (providerCopy)
    {
      v32 = providerCopy[2](providerCopy, v22);
    }

    else
    {
      v32 = 0;
    }

    connectionProvider = v22->_connectionProvider;
    v22->_connectionProvider = v32;

    [(HKSPXPCConnectionProvider *)v22->_connectionProvider setDelegate:v22];
    if (storeCopy)
    {
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      if ([mEMORY[0x277CCDD30] hksp_supportsHealthData])
      {
        v35 = [objc_alloc(MEMORY[0x277D626B0]) initWithHealthStore:storeCopy];
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
      mEMORY[0x277CCDD30] = v22->_sleepHealthStore;
      v22->_sleepHealthStore = 0;
    }

    v22->_options = options;
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

    v39 = [[HKSPObserverSet alloc] initWithCallbackScheduler:schedulerCopy];
    observers = v22->_observers;
    v22->_observers = v39;

    v41 = [dateProviderCopy copy];
    currentDateProvider = v22->_currentDateProvider;
    v22->_currentDateProvider = v41;

    objc_storeStrong(&v22->_analyticsManager, obj);
    if ([(HKSPSleepStore *)v22 _observeSleepFocusMode])
    {
      v43 = bridgeProviderCopy[2]();
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
      v46 = controllersProviderCopy[2]();
      v47 = controllerProviderCopy[2](controllerProviderCopy);
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
    v50 = throttlerProviderCopy[2](throttlerProviderCopy, v63);
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
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reconnecting", &v5, 0xCu);
  }

  [(HKSPThrottler *)self->_reconnectThrottler execute];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)connectSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  v23 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ connecting", buf, 0xCu);
    }

    v8 = [(HKSPSleepStore *)self description];
    objc_initWeak(buf, self);
    v9 = [HKSPXPCMessage alloc];
    if (synchronouslyCopy)
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      syncAnchorContainer = [(HKSPSleepStore *)self syncAnchorContainer];
      *buf = 138543618;
      selfCopy = self;
      v20 = 2114;
      v21 = syncAnchorContainer;
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

- (void)currentSleepScheduleWithCompletion:(id)completion
{
  completionCopy = completion;
  currentSleepScheduleFuture = [(HKSPSleepStore *)self currentSleepScheduleFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HKSPSleepStore_currentSleepScheduleWithCompletion___block_invoke;
  v8[3] = &unk_279C74FB0;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [currentSleepScheduleFuture addCompletionBlock:v8];
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

- (id)currentSleepScheduleWithError:(id *)error
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

  if (error)
  {
    *error = v10[5];
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

- (id)upcomingScheduleOccurrenceAfterDate:(id)date error:(id *)error
{
  v4 = [(HKSPSleepStore *)self upcomingResolvedScheduleOccurrenceAfterDate:date error:error];
  occurrence = [v4 occurrence];

  return occurrence;
}

- (id)upcomingScheduleOccurrenceAfterDate:(id)date alarmStatus:(int64_t *)status error:(id *)error
{
  v5 = [(HKSPSleepStore *)self upcomingResolvedScheduleOccurrenceAfterDate:date alarmStatus:status error:error];
  occurrence = [v5 occurrence];

  return occurrence;
}

- (id)upcomingResolvedScheduleOccurrenceAfterDate:(id)date alarmStatus:(int64_t *)status error:(id *)error
{
  dateCopy = date;
  v9 = [(HKSPSleepStore *)self sleepScheduleModelWithError:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 upcomingResolvedOccurrenceAfterDate:dateCopy];
    v12 = v11;
    if (status)
    {
      occurrence = [v11 occurrence];
      *status = [v10 alarmStatusForOccurrence:occurrence];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)upcomingScheduleOccurrenceAfterDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  v7 = [(HKSPSleepStore *)self upcomingScheduleOccurrenceAfterDateFuture:date];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HKSPSleepStore_upcomingScheduleOccurrenceAfterDate_completion___block_invoke;
  v10[3] = &unk_279C75000;
  v11 = completionCopy;
  v8 = completionCopy;
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

- (id)upcomingScheduleOccurrenceAfterDateFuture:(id)future
{
  futureCopy = future;
  sleepScheduleModelFuture = [(HKSPSleepStore *)self sleepScheduleModelFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HKSPSleepStore_upcomingScheduleOccurrenceAfterDateFuture___block_invoke;
  v9[3] = &unk_279C75028;
  v10 = futureCopy;
  v6 = futureCopy;
  v7 = [sleepScheduleModelFuture flatMap:v9];

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

- (void)currentSleepSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  currentSleepSettingsFuture = [(HKSPSleepStore *)self currentSleepSettingsFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HKSPSleepStore_currentSleepSettingsWithCompletion___block_invoke;
  v8[3] = &unk_279C75078;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [currentSleepSettingsFuture addCompletionBlock:v8];
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

- (id)currentSleepSettingsWithError:(id *)error
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

  if (error)
  {
    *error = v10[5];
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

- (void)currentSleepEventRecordWithCompletion:(id)completion
{
  completionCopy = completion;
  currentSleepEventRecordFuture = [(HKSPSleepStore *)self currentSleepEventRecordFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HKSPSleepStore_currentSleepEventRecordWithCompletion___block_invoke;
  v8[3] = &unk_279C750F0;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [currentSleepEventRecordFuture addCompletionBlock:v8];
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

- (id)currentSleepEventRecordWithError:(id *)error
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

  if (error)
  {
    *error = v10[5];
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

- (void)sleepScheduleModelWithCompletion:(id)completion
{
  completionCopy = completion;
  sleepScheduleModelFuture = [(HKSPSleepStore *)self sleepScheduleModelFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HKSPSleepStore_sleepScheduleModelWithCompletion___block_invoke;
  v8[3] = &unk_279C75168;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [sleepScheduleModelFuture addCompletionBlock:v8];
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

- (id)sleepScheduleModelWithError:(id *)error
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

  if (error)
  {
    *error = v10[5];
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
  sleepModeFuture = [(HKSPSleepStore *)self sleepModeFuture];
  v3 = [sleepModeFuture flatMap:&__block_literal_global_361];

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

- (void)sleepModeWithCompletion:(id)completion
{
  completionCopy = completion;
  sleepModeFuture = [(HKSPSleepStore *)self sleepModeFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HKSPSleepStore_sleepModeWithCompletion___block_invoke;
  v8[3] = &unk_279C75228;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [sleepModeFuture addCompletionBlock:v8];
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

- (void)sleepModeOnWithCompletion:(id)completion
{
  completionCopy = completion;
  sleepModeOnFuture = [(HKSPSleepStore *)self sleepModeOnFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HKSPSleepStore_sleepModeOnWithCompletion___block_invoke;
  v8[3] = &unk_279C75228;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [sleepModeOnFuture addCompletionBlock:v8];
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

- (int64_t)sleepModeWithError:(id *)error
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

- (void)sleepWidgetStateWithCompletion:(id)completion
{
  completionCopy = completion;
  sleepWidgetStateFuture = [(HKSPSleepStore *)self sleepWidgetStateFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HKSPSleepStore_sleepWidgetStateWithCompletion___block_invoke;
  v8[3] = &unk_279C75228;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [sleepWidgetStateFuture addCompletionBlock:v8];
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

- (int64_t)sleepWidgetStateWithError:(id *)error
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

- (BOOL)shouldReloadWidgetOfKind:(id)kind
{
  v17 = *MEMORY[0x277D85DE8];
  if ([kind isEqualToString:@"com.apple.health.SleepWidget"])
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

- (void)currentSleepScheduleStateWithCompletion:(id)completion
{
  completionCopy = completion;
  currentSleepScheduleStateFuture = [(HKSPSleepStore *)self currentSleepScheduleStateFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HKSPSleepStore_currentSleepScheduleStateWithCompletion___block_invoke;
  v8[3] = &unk_279C75228;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [currentSleepScheduleStateFuture addCompletionBlock:v8];
}

void __58__HKSPSleepStore_currentSleepScheduleStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = HKSPNilify(a2);
  (*(v4 + 16))(v4, [v6 integerValue], a2 != 0, v5);
}

- (unint64_t)currentSleepScheduleStateWithError:(id *)error
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

- (id)_saveCurrentSleepScheduleOnServer:(id)server options:(unint64_t)options
{
  v33 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v31 = 2114;
      v32 = serverCopy;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updating current sleep schedule on server: %{public}@", buf, 0x16u);
    }

    [(HKSPSleepStoreModelCache *)self->_sleepStoreCache updateCachedSleepSchedule:serverCopy];
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
    v25 = serverCopy;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v16 = [v17 futureWithError:_sleepDisabledError];
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

- (id)saveCurrentSleepSchedule:(id)schedule options:(unint64_t)options context:(id)context
{
  scheduleCopy = schedule;
  contextCopy = context;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsHealthData = [mEMORY[0x277CCDD30] hksp_supportsHealthData];

  if (options & 4) != 0 || (hksp_supportsHealthData)
  {
    if ((options & 4) == 0 && !self->_sleepHealthStore)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepStore.m" lineNumber:791 description:@"Attempted to save a sleep schedule without a sleep health store"];
    }

    v16 = [(HKSPSleepStore *)self _prepareObjectForSave:scheduleCopy options:options];
    v17 = [(HKSPSleepStore *)self _saveCurrentSleepScheduleOnServer:v16 options:options];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59__HKSPSleepStore_saveCurrentSleepSchedule_options_context___block_invoke;
    v21[3] = &unk_279C752C8;
    v21[4] = self;
    v22 = v16;
    optionsCopy = options;
    v23 = contextCopy;
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

- (id)_sendScheduleChangedAnalyticsWithContext:(id)context
{
  contextCopy = context;
  currentSleepSettingsFuture = [(HKSPSleepStore *)self currentSleepSettingsFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HKSPSleepStore__sendScheduleChangedAnalyticsWithContext___block_invoke;
  v9[3] = &unk_279C752F0;
  v9[4] = self;
  v10 = contextCopy;
  v6 = contextCopy;
  v7 = [currentSleepSettingsFuture addCompletionBlock:v9];

  return currentSleepSettingsFuture;
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

- (void)saveCurrentSleepSchedule:(id)schedule options:(unint64_t)options context:(id)context completion:(id)completion
{
  completionCopy = completion;
  v11 = [(HKSPSleepStore *)self saveCurrentSleepSchedule:schedule options:options context:context];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HKSPSleepStore_saveCurrentSleepSchedule_options_context_completion___block_invoke;
  v14[3] = &unk_279C75318;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = [v11 addCompletionBlock:v14];
}

- (id)_writeHistoricalSchedule:(id)schedule options:(unint64_t)options
{
  scheduleCopy = schedule;
  if (self->_sleepHealthStore)
  {
    v7 = (*(self->_currentDateProvider + 2))();
    v8 = [objc_opt_class() _updatedHistoricalSleepSchedulesFromSleepSchedule:scheduleCopy options:options date:v7];
    v9 = [objc_opt_class() _updatedHistoricalSleepGoalForSleepSchedule:scheduleCopy options:options date:v7];
    futureWithNoResult = objc_alloc_init(MEMORY[0x277D2C900]);
    sleepHealthStore = self->_sleepHealthStore;
    hksp_BOOLErrorCompletionHandlerAdapter = [futureWithNoResult hksp_BOOLErrorCompletionHandlerAdapter];
    [(HKSleepHealthStore *)sleepHealthStore updateCurrentSleepSchedules:v8 sleepDurationGoal:v9 completion:hksp_BOOLErrorCompletionHandlerAdapter];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__HKSPSleepStore__writeHistoricalSchedule_options___block_invoke;
    v17[3] = &unk_279C75340;
    v17[4] = self;
    v18 = v8;
    v19 = v9;
    v13 = v9;
    v14 = v8;
    v15 = [futureWithNoResult addCompletionBlock:v17];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
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

+ (id)_updatedHistoricalSleepSchedulesFromSleepSchedule:(id)schedule options:(unint64_t)options date:(id)date
{
  optionsCopy = options;
  v39[1] = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  dateCopy = date;
  if (!scheduleCopy || (optionsCopy & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [scheduleCopy hasChangeAffectingScheduling])
  {
    occurrences = [scheduleCopy occurrences];
    v10 = [occurrences na_filter:&__block_literal_global_382];

    if ([v10 count] && objc_msgSend(scheduleCopy, "isEnabled"))
    {
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __81__HKSPSleepStore__updatedHistoricalSleepSchedulesFromSleepSchedule_options_date___block_invoke_2;
      v37 = &unk_279C75368;
      v11 = dateCopy;
      v38 = v11;
      v12 = [v10 na_map:&v34];
      if ([scheduleCopy weekdaysWithoutOccurrences])
      {
        v13 = MEMORY[0x277CCD9E8];
        v14 = HKSleepScheduleWeekdaysFromHKSPWeekdays([scheduleCopy weekdaysWithoutOccurrences]);
        v15 = [v13 sleepScheduleWithDate:v11 weekdays:v14 wakeTimeComponents:0 bedTimeComponents:0 overrideDayIndex:0 device:0 metadata:{0, v34, v35, v36, v37}];
        v16 = [v12 arrayByAddingObject:v15];

        v12 = v16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = scheduleCopy;
        if ([v17 hasOverrideOccurrenceRemoval])
        {
          lastOverrideOccurrenceWakeUpComponents = [v17 lastOverrideOccurrenceWakeUpComponents];
          v19 = lastOverrideOccurrenceWakeUpComponents;
          if (lastOverrideOccurrenceWakeUpComponents)
          {
            v20 = MEMORY[0x277CCD9E8];
            v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(lastOverrideOccurrenceWakeUpComponents, "hk_dayIndex")}];
            v22 = [v20 sleepScheduleWithDate:v11 weekdays:0 wakeTimeComponents:0 bedTimeComponents:0 overrideDayIndex:v21 device:0 metadata:0];

            v23 = [v12 arrayByAddingObject:v22];

            v12 = v23;
          }
        }
      }

      wakeUpComponents = v38;
    }

    else
    {
      v25 = [MEMORY[0x277CCD9E8] sleepScheduleWithDate:dateCopy weekdays:*MEMORY[0x277CCCDD0] wakeTimeComponents:0 bedTimeComponents:0 overrideDayIndex:0 device:0 metadata:0];
      v39[0] = v25;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];

      overrideOccurrence = [scheduleCopy overrideOccurrence];

      if (!overrideOccurrence)
      {
LABEL_20:

        goto LABEL_22;
      }

      overrideOccurrence2 = [scheduleCopy overrideOccurrence];
      wakeUpComponents = [overrideOccurrence2 wakeUpComponents];

      if (wakeUpComponents)
      {
        v28 = MEMORY[0x277CCD9E8];
        v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(wakeUpComponents, "hk_dayIndex")}];
        v30 = [v28 sleepScheduleWithDate:dateCopy weekdays:0 wakeTimeComponents:0 bedTimeComponents:0 overrideDayIndex:v29 device:0 metadata:0];

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

+ (id)_updatedHistoricalSleepGoalForSleepSchedule:(id)schedule options:(unint64_t)options date:(id)date
{
  optionsCopy = options;
  v22 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  dateCopy = date;
  if (!scheduleCopy || (optionsCopy & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [scheduleCopy hasChangeToSleepDurationGoal])
  {
    v10 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sleep duration goal changed", &v20, 0xCu);
    }

    v11 = MEMORY[0x277CCD800];
    sleepDurationGoalType = [MEMORY[0x277CCD830] sleepDurationGoalType];
    v13 = MEMORY[0x277CCD7E8];
    v14 = MEMORY[0x277CCABB0];
    [scheduleCopy sleepDurationGoal];
    v15 = [v14 numberWithDouble:?];
    v16 = [v13 hk_quantityWithSeconds:v15];
    v17 = [v11 quantitySampleWithType:sleepDurationGoalType quantity:v16 startDate:dateCopy endDate:dateCopy];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_saveCurrentSleepSettingsOnServer:(id)server options:(unint64_t)options
{
  v33 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v31 = 2114;
      v32 = serverCopy;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updating current sleep settings on server: %{public}@", buf, 0x16u);
    }

    [(HKSPSleepStoreModelCache *)self->_sleepStoreCache updateCachedSleepSettings:serverCopy];
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
    v25 = serverCopy;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v16 = [v17 futureWithError:_sleepDisabledError];
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

- (id)saveCurrentSleepSettings:(id)settings options:(unint64_t)options
{
  v6 = [(HKSPSleepStore *)self _prepareObjectForSave:settings options:?];
  v7 = [(HKSPSleepStore *)self _saveCurrentSleepSettingsOnServer:v6 options:options];

  return v7;
}

- (void)saveCurrentSleepSettings:(id)settings options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v9 = [(HKSPSleepStore *)self saveCurrentSleepSettings:settings options:options];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HKSPSleepStore_saveCurrentSleepSettings_options_completion___block_invoke;
  v12[3] = &unk_279C75318;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [v9 addCompletionBlock:v12];
}

- (id)_prepareObjectForSave:(id)save options:(unint64_t)options
{
  optionsCopy = options;
  saveCopy = save;
  v6 = saveCopy;
  if ([saveCopy conformsToProtocol:&unk_287A88DD8])
  {
    if ((optionsCopy & 2) != 0)
    {
      v7 = [saveCopy copyWithZone:0];
    }

    else
    {
      v7 = [saveCopy mutableCopy];
    }

    v6 = v7;
    [saveCopy freeze];
  }

  return v6;
}

- (id)_saveCurrentSleepEventRecordOnServer:(id)server options:(unint64_t)options
{
  v33 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v31 = 2114;
      v32 = serverCopy;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updating current sleep event record on server: %{public}@", buf, 0x16u);
    }

    [(HKSPSleepStoreModelCache *)self->_sleepStoreCache updateCachedSleepEventRecord:serverCopy];
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
    v25 = serverCopy;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v16 = [v17 futureWithError:_sleepDisabledError];
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

- (id)saveCurrentSleepEventRecord:(id)record options:(unint64_t)options
{
  v6 = [(HKSPSleepStore *)self _prepareObjectForSave:record options:?];
  v7 = [(HKSPSleepStore *)self _saveCurrentSleepEventRecordOnServer:v6 options:options];

  return v7;
}

- (void)saveCurrentSleepEventRecord:(id)record options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v9 = [(HKSPSleepStore *)self saveCurrentSleepEventRecord:record options:options];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HKSPSleepStore_saveCurrentSleepEventRecord_options_completion___block_invoke;
  v12[3] = &unk_279C75318;
  v13 = completionCopy;
  v10 = completionCopy;
  v11 = [v9 addCompletionBlock:v12];
}

- (id)_setSleepModeOnServer:(int64_t)server reason:(unint64_t)reason
{
  v39 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromHKSPSleepMode(server);
      v11 = NSStringFromHKSPSleepModeChangeReason(reason);
      *buf = 138543874;
      selfCopy = self;
      v35 = 2114;
      v36 = v10;
      v37 = 2114;
      v38 = v11;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ updating sleep mode on server: %{public}@ (%{public}@)", buf, 0x20u);
    }

    [(HKSPSleepStoreModelCache *)self->_sleepStoreCache updateCachedSleepMode:server];
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
    serverCopy = server;
    reasonCopy = reason;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v19 = [v20 futureWithError:_sleepDisabledError];
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

- (void)setSleepModeOn:(BOOL)on reason:(unint64_t)reason completion:(id)completion
{
  onCopy = on;
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (reason <= 0xA && ((1 << reason) & 0x60C) != 0)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = NSStringFromHKSPSleepModeChangeReason(reason);
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring set sleep mode with reason: %{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    if (onCopy)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(HKSPSleepStore *)self _setSleepModeOnServer:v14 reason:reason];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__HKSPSleepStore_setSleepModeOn_reason_completion___block_invoke;
    v17[3] = &unk_279C75318;
    v18 = completionCopy;
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
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
    _sleepDisabledError = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:_sleepDisabledError];
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

- (void)confirmAwakeWithCompletion:(id)completion
{
  completionCopy = completion;
  _confirmAwakeOnServer = [(HKSPSleepStore *)self _confirmAwakeOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HKSPSleepStore_confirmAwakeWithCompletion___block_invoke;
  v8[3] = &unk_279C75318;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [_confirmAwakeOnServer addCompletionBlock:v8];
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
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
    _sleepDisabledError = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:_sleepDisabledError];
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

- (void)dismissGoodMorningWithCompletion:(id)completion
{
  completionCopy = completion;
  _dismissGoodMorningOnServer = [(HKSPSleepStore *)self _dismissGoodMorningOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HKSPSleepStore_dismissGoodMorningWithCompletion___block_invoke;
  v8[3] = &unk_279C75318;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [_dismissGoodMorningOnServer addCompletionBlock:v8];
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
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
    _sleepDisabledError = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:_sleepDisabledError];
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

- (void)dismissSleepLockWithCompletion:(id)completion
{
  completionCopy = completion;
  _dismissSleepLockOnServer = [(HKSPSleepStore *)self _dismissSleepLockOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HKSPSleepStore_dismissSleepLockWithCompletion___block_invoke;
  v8[3] = &unk_279C75318;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [_dismissSleepLockOnServer addCompletionBlock:v8];
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

- (void)sleepAlarmWasDismissedOnDate:(id)date source:(unint64_t)source completion:(id)completion
{
  completionCopy = completion;
  v9 = [(HKSPSleepStore *)self _sleepAlarmWasDismissedOnDateOnServer:date source:source];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HKSPSleepStore_sleepAlarmWasDismissedOnDate_source_completion___block_invoke;
  v12[3] = &unk_279C75318;
  v13 = completionCopy;
  v10 = completionCopy;
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

- (id)_sleepAlarmWasDismissedOnDateOnServer:(id)server source:(unint64_t)source
{
  v37 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"Local";
      if (source == 1)
      {
        v10 = @"NanoSync";
      }

      if (source == 2)
      {
        v10 = @"CloudSync";
      }

      v11 = v10;
      *buf = 138543874;
      selfCopy = self;
      v33 = 2114;
      v34 = serverCopy;
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
    v27 = serverCopy;
    sourceCopy = source;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v18 = [v19 futureWithError:_sleepDisabledError];
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

- (void)sleepAlarmWasSnoozedUntilDate:(id)date source:(unint64_t)source completion:(id)completion
{
  completionCopy = completion;
  v9 = [(HKSPSleepStore *)self _sleepAlarmWasSnoozedUntilDateOnServer:date source:source];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HKSPSleepStore_sleepAlarmWasSnoozedUntilDate_source_completion___block_invoke;
  v12[3] = &unk_279C75318;
  v13 = completionCopy;
  v10 = completionCopy;
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

- (id)_sleepAlarmWasSnoozedUntilDateOnServer:(id)server source:(unint64_t)source
{
  v37 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"Local";
      if (source == 1)
      {
        v10 = @"NanoSync";
      }

      if (source == 2)
      {
        v10 = @"CloudSync";
      }

      v11 = v10;
      *buf = 138543874;
      selfCopy = self;
      v33 = 2114;
      v34 = serverCopy;
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
    v27 = serverCopy;
    sourceCopy = source;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v18 = [v19 futureWithError:_sleepDisabledError];
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

- (void)sleepAlarmWasModifiedFromSource:(unint64_t)source completion:(id)completion
{
  completionCopy = completion;
  v7 = [(HKSPSleepStore *)self _sleepAlarmWasModifiedOnServer:source];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HKSPSleepStore_sleepAlarmWasModifiedFromSource_completion___block_invoke;
  v10[3] = &unk_279C75318;
  v11 = completionCopy;
  v8 = completionCopy;
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

- (id)_sleepAlarmWasModifiedOnServer:(unint64_t)server
{
  v32 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"Local";
      if (server == 1)
      {
        v8 = @"NanoSync";
      }

      if (server == 2)
      {
        v8 = @"CloudSync";
      }

      v9 = v8;
      *buf = 138543618;
      selfCopy = self;
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
    serverCopy = server;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v16 = [v17 futureWithError:_sleepDisabledError];
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

- (id)_publishNotificationOnServerWithIdentifier:(id)identifier userInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v10 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v31 = 2114;
      v32 = identifierCopy;
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Publishing notification with identifier on server: %{public}@", buf, 0x16u);
    }

    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v12 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__HKSPSleepStore__publishNotificationOnServerWithIdentifier_userInfo___block_invoke;
    v24[3] = &unk_279C75458;
    v25 = identifierCopy;
    v26 = infoCopy;
    v27 = v11;
    v28 = v12;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__HKSPSleepStore__publishNotificationOnServerWithIdentifier_userInfo___block_invoke_495;
    v21[3] = &unk_279C74F60;
    v22 = v28;
    v14 = v27;
    v23 = v14;
    _sleepDisabledError = v28;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v24 withErrorHandler:v21];
    v16 = v23;
    v17 = v14;
  }

  else
  {
    v18 = MEMORY[0x277D2C900];
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v17 = [v18 futureWithError:_sleepDisabledError];
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

- (void)publishNotificationWithIdentifier:(id)identifier userInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = [info copy];
  v11 = [(HKSPSleepStore *)self _publishNotificationOnServerWithIdentifier:identifierCopy userInfo:v10];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HKSPSleepStore_publishNotificationWithIdentifier_userInfo_completion___block_invoke;
  v14[3] = &unk_279C75318;
  v15 = completionCopy;
  v12 = completionCopy;
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

- (id)_setLockScreenOverrideStateOnServerWithState:(int64_t)state userInfo:(id)info
{
  v36 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromHKSPSleepLockScreenState(state);
      *buf = 138543874;
      selfCopy = self;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = infoCopy;
      _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Overriding lock screen state on server: %{public}@ (userInfo: %{public}@)", buf, 0x20u);
    }

    v11 = objc_alloc_init(MEMORY[0x277D2C900]);
    v12 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72__HKSPSleepStore__setLockScreenOverrideStateOnServerWithState_userInfo___block_invoke;
    v25[3] = &unk_279C753E0;
    stateCopy = state;
    v26 = infoCopy;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v17 = [v18 futureWithError:_sleepDisabledError];
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

- (void)setLockScreenOverrideState:(int64_t)state userInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  v9 = [info copy];
  v10 = [(HKSPSleepStore *)self _setLockScreenOverrideStateOnServerWithState:state userInfo:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HKSPSleepStore_setLockScreenOverrideState_userInfo_completion___block_invoke;
  v13[3] = &unk_279C75318;
  v14 = completionCopy;
  v11 = completionCopy;
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

- (void)createSleepFocusInState:(unint64_t)state completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromHKSPSleepFocusConfigurationState(state);
      *buf = 138543618;
      selfCopy = self;
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
    stateCopy = state;
    v19 = completionCopy;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__HKSPSleepStore_createSleepFocusInState_completion___block_invoke_2;
    v15[3] = &unk_279C754A8;
    v16 = v11;
    v17 = v19;
    _sleepDisabledError = v11;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v18 withErrorHandler:v15];
  }

  else
  {
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    (*(completionCopy + 2))(completionCopy, 0, _sleepDisabledError);
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

- (void)deleteSleepFocusModeWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Deleting sleep focus mode on server", buf, 0xCu);
    }

    v8 = [(HKSPSleepStore *)self description];
    connectionProvider = self->_connectionProvider;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__HKSPSleepStore_deleteSleepFocusModeWithCompletion___block_invoke;
    v16[3] = &unk_279C754D0;
    v17 = completionCopy;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    (*(completionCopy + 2))(completionCopy, 0, _sleepDisabledError);
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

- (void)configureSleepFocusWithState:(unint64_t)state completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v9 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromHKSPSleepFocusConfigurationState(state);
      *buf = 138543618;
      selfCopy = self;
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
    stateCopy = state;
    v19 = completionCopy;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__HKSPSleepStore_configureSleepFocusWithState_completion___block_invoke_2;
    v15[3] = &unk_279C754A8;
    v16 = v11;
    v17 = v19;
    _sleepDisabledError = v11;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v18 withErrorHandler:v15];
  }

  else
  {
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    (*(completionCopy + 2))(completionCopy, 0, _sleepDisabledError);
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

- (id)_setWidgetOverrideStateOnServerWithState:(int64_t)state
{
  v31 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v7 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromHKSPSleepWidgetState(state);
      *buf = 138543618;
      selfCopy = self;
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
    stateCopy = state;
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
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v15 = [v16 futureWithError:_sleepDisabledError];
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

- (void)setWidgetOverrideState:(int64_t)state completion:(id)completion
{
  completionCopy = completion;
  v7 = [(HKSPSleepStore *)self _setWidgetOverrideStateOnServerWithState:state];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HKSPSleepStore_setWidgetOverrideState_completion___block_invoke;
  v10[3] = &unk_279C75318;
  v11 = completionCopy;
  v8 = completionCopy;
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
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
    _sleepDisabledError = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:_sleepDisabledError];
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

- (void)clearWidgetOverrideWithCompletion:(id)completion
{
  completionCopy = completion;
  _clearWidgetOverrideOnServer = [(HKSPSleepStore *)self _clearWidgetOverrideOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HKSPSleepStore_clearWidgetOverrideWithCompletion___block_invoke;
  v8[3] = &unk_279C75318;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [_clearWidgetOverrideOnServer addCompletionBlock:v8];
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if (hksp_supportsSleepDaemon)
  {
    v5 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
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
    _sleepDisabledError = v21;
    [(HKSPXPCConnectionProvider *)connectionProvider performRemoteBlock:v19 withErrorHandler:v16];
    v11 = v18;
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D2C900];
    _sleepDisabledError = [objc_opt_class() _sleepDisabledError];
    v12 = [v13 futureWithError:_sleepDisabledError];
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

- (void)publishWakeUpResultsNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  _publishWakeUpResultsNotificationOnServer = [(HKSPSleepStore *)self _publishWakeUpResultsNotificationOnServer];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HKSPSleepStore_publishWakeUpResultsNotificationWithCompletion___block_invoke;
  v8[3] = &unk_279C75520;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [_publishWakeUpResultsNotificationOnServer addCompletionBlock:v8];
}

void __65__HKSPSleepStore_publishWakeUpResultsNotificationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = HKSPNilify(a2);
  (*(v4 + 16))(v4, v6, v5);
}

- (void)nextEventDueAfterDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  v7 = [(HKSPSleepStore *)self nextEventDueAfterDateFuture:date];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HKSPSleepStore_nextEventDueAfterDate_completion___block_invoke;
  v10[3] = &unk_279C75548;
  v11 = completionCopy;
  v8 = completionCopy;
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

- (void)nextEventWithIdentifier:(id)identifier dueAfterDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  v9 = [(HKSPSleepStore *)self nextEventWithIdentifierFuture:identifier dueAfterDate:date];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HKSPSleepStore_nextEventWithIdentifier_dueAfterDate_completion___block_invoke;
  v12[3] = &unk_279C75570;
  v13 = completionCopy;
  v10 = completionCopy;
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

- (id)nextEventDueAfterDateFuture:(id)future
{
  futureCopy = future;
  sleepScheduleModelFuture = [(HKSPSleepStore *)self sleepScheduleModelFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HKSPSleepStore_nextEventDueAfterDateFuture___block_invoke;
  v9[3] = &unk_279C75028;
  v10 = futureCopy;
  v6 = futureCopy;
  v7 = [sleepScheduleModelFuture flatMap:v9];

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

- (id)nextEventDueAfterDate:(id)date error:(id *)error
{
  dateCopy = date;
  v7 = [(HKSPSleepStore *)self sleepScheduleModelWithError:error];
  v8 = [v7 nextEventDueAfterDate:dateCopy];

  return v8;
}

- (id)nextEventWithIdentifierFuture:(id)future dueAfterDate:(id)date
{
  futureCopy = future;
  dateCopy = date;
  sleepScheduleModelFuture = [(HKSPSleepStore *)self sleepScheduleModelFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HKSPSleepStore_nextEventWithIdentifierFuture_dueAfterDate___block_invoke;
  v13[3] = &unk_279C75598;
  v14 = futureCopy;
  v15 = dateCopy;
  v9 = dateCopy;
  v10 = futureCopy;
  v11 = [sleepScheduleModelFuture flatMap:v13];

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

- (id)nextEventWithIdentifier:(id)identifier dueAfterDate:(id)date error:(id *)error
{
  dateCopy = date;
  identifierCopy = identifier;
  v10 = [(HKSPSleepStore *)self sleepScheduleModelWithError:error];
  v11 = [v10 nextEventWithIdentifier:identifierCopy dueAfterDate:dateCopy];

  return v11;
}

- (void)setSleepCoachingOnboardingCompletedVersion:(int64_t)version completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting sleep coaching onboarding version to %{public}@", buf, 0x16u);
  }

  currentSleepEventRecordFuture = [(HKSPSleepStore *)self currentSleepEventRecordFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HKSPSleepStore_setSleepCoachingOnboardingCompletedVersion_completion___block_invoke;
  v13[3] = &unk_279C755C0;
  v13[4] = self;
  v14 = completionCopy;
  versionCopy = version;
  v10 = completionCopy;
  v11 = [currentSleepEventRecordFuture addCompletionBlock:v13];

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

- (void)setSleepTrackingOnboardingCompletedVersion:(int64_t)version completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting sleep tracking onboarding version to %{public}@", buf, 0x16u);
  }

  currentSleepEventRecordFuture = [(HKSPSleepStore *)self currentSleepEventRecordFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HKSPSleepStore_setSleepTrackingOnboardingCompletedVersion_completion___block_invoke;
  v13[3] = &unk_279C755C0;
  v13[4] = self;
  v14 = completionCopy;
  versionCopy = version;
  v10 = completionCopy;
  v11 = [currentSleepEventRecordFuture addCompletionBlock:v13];

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

- (void)setSleepWindDownShortcutsOnboardingCompletedVersion:(int64_t)version completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting sleep wind down shortcuts onboarding version to %{public}@", buf, 0x16u);
  }

  currentSleepEventRecordFuture = [(HKSPSleepStore *)self currentSleepEventRecordFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HKSPSleepStore_setSleepWindDownShortcutsOnboardingCompletedVersion_completion___block_invoke;
  v13[3] = &unk_279C755C0;
  v13[4] = self;
  v14 = completionCopy;
  versionCopy = version;
  v10 = completionCopy;
  v11 = [currentSleepEventRecordFuture addCompletionBlock:v13];

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

- (void)_notifyObserversForChangedSleepSchedule:(id)schedule
{
  v15 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = scheduleCopy;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for changed sleep schedule: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HKSPSleepStore__notifyObserversForChangedSleepSchedule___block_invoke;
  v9[3] = &unk_279C75610;
  v9[4] = self;
  v10 = scheduleCopy;
  v7 = scheduleCopy;
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

- (void)_notifyObserversForChangedSleepSettings:(id)settings
{
  v15 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = settingsCopy;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for changed sleep settings: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HKSPSleepStore__notifyObserversForChangedSleepSettings___block_invoke;
  v9[3] = &unk_279C75610;
  v9[4] = self;
  v10 = settingsCopy;
  v7 = settingsCopy;
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

- (void)_notifyObserversForChangedSleepEventRecord:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = recordCopy;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for changed sleep event record: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HKSPSleepStore__notifyObserversForChangedSleepEventRecord___block_invoke;
  v9[3] = &unk_279C75610;
  v9[4] = self;
  v10 = recordCopy;
  v7 = recordCopy;
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

- (void)_notifyObserversForChangedSleepMode:(int64_t)mode reason:(unint64_t)reason
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepMode(mode);
    v9 = NSStringFromHKSPSleepModeChangeReason(reason);
    *buf = 138543874;
    selfCopy = self;
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
  v12[5] = mode;
  v12[6] = reason;
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

- (void)_notifyObserversForSleepEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = eventCopy;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for sleep event: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HKSPSleepStore__notifyObserversForSleepEvent___block_invoke;
  v9[3] = &unk_279C75610;
  v9[4] = self;
  v10 = eventCopy;
  v7 = eventCopy;
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

- (void)_notifyObserversForChangedSleepScheduleState:(unint64_t)state reason:(unint64_t)reason
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepScheduleState(state);
    v9 = NSStringFromHKSPSleepScheduleStateChangeReason(reason);
    *buf = 138543874;
    selfCopy = self;
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
  v12[5] = state;
  v12[6] = reason;
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

- (BOOL)_shouldNotifyObserversForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  options = [(HKSPSleepStore *)self options];
  LOBYTE(v6) = 1;
  if (identifierCopy && (options & 0x20) != 0)
  {
    clientIdentifier = [(HKSPSleepStore *)self clientIdentifier];

    if (clientIdentifier)
    {
      clientIdentifier2 = [(HKSPSleepStore *)self clientIdentifier];
      v6 = [identifierCopy isEqual:clientIdentifier2] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (void)_updateAndNotifyForChangedSleepSchedule:(id)schedule clientIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  scheduleCopy = schedule;
  v8 = HKSPSleepScheduleUnwrap(scheduleCopy);
  v9 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepScheduleChanged: %{public}@", &v15, 0x16u);
  }

  syncAnchorContainer = [(HKSPSleepStore *)self syncAnchorContainer];
  syncAnchor = [scheduleCopy syncAnchor];

  [syncAnchorContainer updateSleepScheduleSyncAnchor:syncAnchor];
  clientIdentifier = [(HKSPSleepStore *)self clientIdentifier];
  LODWORD(syncAnchorContainer) = [identifierCopy isEqual:clientIdentifier];

  if (!syncAnchorContainer || !v8)
  {
    sleepStoreCache = [(HKSPSleepStore *)self sleepStoreCache];
    [sleepStoreCache updateCachedSleepSchedule:v8];
  }

  if ([(HKSPSleepStore *)self _shouldNotifyObserversForClientIdentifier:identifierCopy])
  {
    [(HKSPSleepStore *)self _notifyObserversForChangedSleepSchedule:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForChangedSleepSettings:(id)settings clientIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  v8 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = settingsCopy;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepSettingsChanged: %{public}@", &v14, 0x16u);
  }

  syncAnchorContainer = [(HKSPSleepStore *)self syncAnchorContainer];
  syncAnchor = [settingsCopy syncAnchor];
  [syncAnchorContainer updateSleepSettingsSyncAnchor:syncAnchor];

  clientIdentifier = [(HKSPSleepStore *)self clientIdentifier];
  LOBYTE(syncAnchor) = [identifierCopy isEqual:clientIdentifier];

  if ((syncAnchor & 1) == 0)
  {
    sleepStoreCache = [(HKSPSleepStore *)self sleepStoreCache];
    [sleepStoreCache updateCachedSleepSettings:settingsCopy];
  }

  if ([(HKSPSleepStore *)self _shouldNotifyObserversForClientIdentifier:identifierCopy])
  {
    [(HKSPSleepStore *)self _notifyObserversForChangedSleepSettings:settingsCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForChangedSleepEventRecord:(id)record clientIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  identifierCopy = identifier;
  v8 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = recordCopy;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepEventRecordChanged: %{public}@", &v14, 0x16u);
  }

  syncAnchorContainer = [(HKSPSleepStore *)self syncAnchorContainer];
  syncAnchor = [recordCopy syncAnchor];
  [syncAnchorContainer updateSleepEventRecordSyncAnchor:syncAnchor];

  clientIdentifier = [(HKSPSleepStore *)self clientIdentifier];
  LOBYTE(syncAnchor) = [identifierCopy isEqual:clientIdentifier];

  if ((syncAnchor & 1) == 0)
  {
    sleepStoreCache = [(HKSPSleepStore *)self sleepStoreCache];
    [sleepStoreCache updateCachedSleepEventRecord:recordCopy];
  }

  if ([(HKSPSleepStore *)self _shouldNotifyObserversForClientIdentifier:identifierCopy])
  {
    [(HKSPSleepStore *)self _notifyObserversForChangedSleepEventRecord:recordCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForSleepEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = eventCopy;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepEventOccurred: %{public}@", &v9, 0x16u);
  }

  syncAnchorContainer = [(HKSPSleepStore *)self syncAnchorContainer];
  syncAnchor = [eventCopy syncAnchor];
  [syncAnchorContainer updateSleepEventSyncAnchor:syncAnchor];

  [(HKSPSleepStore *)self _notifyObserversForSleepEvent:eventCopy];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForChangedSleepScheduleState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  scheduleState = [stateCopy scheduleState];
  changeReason = [stateCopy changeReason];
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepScheduleState(scheduleState);
    v9 = NSStringFromHKSPSleepScheduleStateChangeReason(changeReason);
    v14 = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepScheduleStateChanged: %{public}@ (%{public}@)", &v14, 0x20u);
  }

  syncAnchorContainer = [(HKSPSleepStore *)self syncAnchorContainer];
  syncAnchor = [stateCopy syncAnchor];
  [syncAnchorContainer updateSleepScheduleStateSyncAnchor:syncAnchor];

  sleepStoreCache = [(HKSPSleepStore *)self sleepStoreCache];
  [sleepStoreCache updateCachedSleepScheduleState:scheduleState];

  [(HKSPSleepStore *)self _notifyObserversForChangedSleepScheduleState:scheduleState reason:changeReason];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndNotifyForChangedSleepMode:(id)mode
{
  v20 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  sleepMode = [modeCopy sleepMode];
  changeReason = [modeCopy changeReason];
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepMode(sleepMode);
    v9 = NSStringFromHKSPSleepModeChangeReason(changeReason);
    v14 = 138543874;
    selfCopy = self;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ sleepModeChanged: %{public}@ (%{public}@)", &v14, 0x20u);
  }

  syncAnchorContainer = [(HKSPSleepStore *)self syncAnchorContainer];
  syncAnchor = [modeCopy syncAnchor];
  [syncAnchorContainer updateSleepModeSyncAnchor:syncAnchor];

  sleepStoreCache = [(HKSPSleepStore *)self sleepStoreCache];
  [sleepStoreCache updateCachedSleepMode:sleepMode];

  [(HKSPSleepStore *)self _notifyObserversForChangedSleepMode:sleepMode reason:changeReason];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  [(HKSPXPCConnectionProvider *)self->_connectionProvider invalidate];
  [(HKSPSleepFocusModeBridge *)self->_sleepFocusModeBridge invalidate];
  v5.receiver = self;
  v5.super_class = HKSPSleepStore;
  [(HKSPSleepStore *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sleepFocusModeBridge:(id)bridge didUpdateSleepFocusConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = configurationCopy;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying observers for sleep focus mode update: %{public}@", buf, 0x16u);
  }

  sleepStoreCache = [(HKSPSleepStore *)self sleepStoreCache];
  [sleepStoreCache purgeCachedSleepMode];

  observers = self->_observers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HKSPSleepStore_sleepFocusModeBridge_didUpdateSleepFocusConfiguration___block_invoke;
  v11[3] = &unk_279C75610;
  v11[4] = self;
  v12 = configurationCopy;
  v9 = configurationCopy;
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
  sleepFocusConfiguration = [(HKSPSleepStore *)self sleepFocusConfiguration];
  hasSleepFocusMode = [sleepFocusConfiguration hasSleepFocusMode];

  return hasSleepFocusMode;
}

- (HKSPSleepFocusConfiguration)sleepFocusConfiguration
{
  v16 = *MEMORY[0x277D85DE8];
  sleepFocusModeBridge = [(HKSPSleepStore *)self sleepFocusModeBridge];

  if (sleepFocusModeBridge)
  {
    sleepFocusModeBridge2 = [(HKSPSleepStore *)self sleepFocusModeBridge];
    v11 = 0;
    v5 = [sleepFocusModeBridge2 sleepFocusConfiguration:&v11];
    v6 = v11;

    v7 = HKSPLogForCategory(1uLL);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v14 = 2114;
        v15 = v6;
        _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "%{public}@ error retrieving sleep focus config: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
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