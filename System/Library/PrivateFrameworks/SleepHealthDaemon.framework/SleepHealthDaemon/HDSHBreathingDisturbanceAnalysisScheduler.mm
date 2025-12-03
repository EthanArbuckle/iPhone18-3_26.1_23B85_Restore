@interface HDSHBreathingDisturbanceAnalysisScheduler
- (BOOL)_areNotificationsEnabled;
- (BOOL)_isFeatureOnboardedWithFeatureOnboardingRecord:(id)record;
- (BOOL)_writeDateOfMostRecentSuccessfulAnalysisAttempt;
- (HDSHBreathingDisturbanceAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider featureAvailabilityProviding:(id)providing currentDateProvider:(id)dateProvider;
- (HDSHBreathingDisturbanceAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider featureAvailabilityProviding:(id)providing currentDateProvider:(id)dateProvider protectedDataOperation:(id)operation profileDidBecomeReadyBlock:(id)block;
- (id)_getEarliestOnboardingDate;
- (void)_requestBreathingDisturbanceAnalysisIfNeeded;
- (void)_runCompletionIfExistsWithResult:(int64_t)result retryInterval:(double)interval shouldUpdateActivityCriteria:(BOOL)criteria;
- (void)_updateActivityCriteriaAndResetActivity;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)overrideAnalysisTimeIntervalAndResetActivityWithTimeInterval:(double)interval;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation HDSHBreathingDisturbanceAnalysisScheduler

- (HDSHBreathingDisturbanceAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider featureAvailabilityProviding:(id)providing currentDateProvider:(id)dateProvider
{
  v10 = MEMORY[0x277D10800];
  dateProviderCopy = dateProvider;
  providingCopy = providing;
  providerCopy = provider;
  profileCopy = profile;
  v15 = [[v10 alloc] initWithProfile:profileCopy debugIdentifier:@"BreathingDisturbanceAnalysisProtectedDataOperation" delegate:self];
  v16 = [(HDSHBreathingDisturbanceAnalysisScheduler *)self initWithProfile:profileCopy featureStatusProvider:providerCopy featureAvailabilityProviding:providingCopy currentDateProvider:dateProviderCopy protectedDataOperation:v15 profileDidBecomeReadyBlock:0];

  return v16;
}

- (HDSHBreathingDisturbanceAnalysisScheduler)initWithProfile:(id)profile featureStatusProvider:(id)provider featureAvailabilityProviding:(id)providing currentDateProvider:(id)dateProvider protectedDataOperation:(id)operation profileDidBecomeReadyBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  providerCopy = provider;
  providingCopy = providing;
  dateProviderCopy = dateProvider;
  operationCopy = operation;
  blockCopy = block;
  v43.receiver = self;
  v43.super_class = HDSHBreathingDisturbanceAnalysisScheduler;
  v19 = [(HDSHBreathingDisturbanceAnalysisScheduler *)&v43 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_profile, profileCopy);
    objc_storeStrong(&v20->_featureStatusProvider, provider);
    v21 = objc_alloc(MEMORY[0x277D10718]);
    v22 = [v21 initWithCategory:102 domainName:*MEMORY[0x277D62650] profile:{profileCopy, providerCopy}];
    keyValueDomain = v20->_keyValueDomain;
    v20->_keyValueDomain = v22;

    v24 = [dateProviderCopy copy];
    currentDateProvider = v20->_currentDateProvider;
    v20->_currentDateProvider = v24;

    v20->_analysisTimeInterval = *MEMORY[0x277D86298];
    v26 = HKCreateSerialUtilityDispatchQueue();
    queue = v20->_queue;
    v20->_queue = v26;

    objc_storeStrong(&v20->_featureAvailabilityProviding, providing);
    [(HKFeatureAvailabilityProviding *)v20->_featureAvailabilityProviding registerObserver:v20 queue:v20->_queue];
    v20->_useTimeIntervalOverride = 0;
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    cachedCalendar = v20->_cachedCalendar;
    v20->_cachedCalendar = hk_gregorianCalendar;

    v30 = [blockCopy copy];
    unitTesting_profileDidBecomeReadyBlock = v20->_unitTesting_profileDidBecomeReadyBlock;
    v20->_unitTesting_profileDidBecomeReadyBlock = v30;

    WeakRetained = objc_loadWeakRetained(&v20->_profile);
    [WeakRetained registerProfileReadyObserver:v20 queue:0];

    v20->_periodicActivityCompletionLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_protectedDataOperation, operation);
    protectedDataOperation = v20->_protectedDataOperation;
    v42 = 0;
    LOBYTE(WeakRetained) = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v42];
    v34 = v42;
    if ((WeakRetained & 1) == 0)
    {
      _HKInitializeLogging();
      v35 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
      {
        v38 = v35;
        v39 = objc_opt_class();
        *buf = 138543618;
        v45 = v39;
        v46 = 2112;
        v47 = v34;
        v40 = v39;
        _os_log_error_impl(&dword_269C02000, v38, OS_LOG_TYPE_ERROR, "[%{public}@] Request was not processed with error: %@", buf, 0x16u);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)performWorkForOperation:(id)operation profile:(id)profile databaseAccessibilityAssertion:(id)assertion completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  debugIdentifier = [operation debugIdentifier];
  v10 = [debugIdentifier isEqualToString:@"BreathingDisturbanceAnalysisProtectedDataOperation"];

  if (v10)
  {
    [(HDSHBreathingDisturbanceAnalysisScheduler *)self _requestBreathingDisturbanceAnalysisIfNeeded];
    completionCopy[2](completionCopy);
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v15 = 138543362;
      v16 = objc_opt_class();
      v13 = v16;
      _os_log_impl(&dword_269C02000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unexpected operation received; not performing operation.", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)profileDidBecomeReady:(id)ready
{
  v4 = objc_alloc(MEMORY[0x277D107E8]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [v4 initWithProfile:WeakRetained name:@"com.apple.healthd.sleep.breathingdisturbanceanalysisactivity" interval:self delegate:*MEMORY[0x277CCC320] loggingCategory:self->_analysisTimeInterval];
  activity = self->_activity;
  self->_activity = v6;

  unitTesting_profileDidBecomeReadyBlock = self->_unitTesting_profileDidBecomeReadyBlock;
  if (unitTesting_profileDidBecomeReadyBlock)
  {
    v9 = *(unitTesting_profileDidBecomeReadyBlock + 2);

    v9();
  }
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v6 = *&v8[4];
    _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding record has updated. Recalculating activity criteria.", v8, 0xCu);
  }

  [(HDSHBreathingDisturbanceAnalysisScheduler *)self _updateActivityCriteriaAndResetActivity];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  activityCopy = activity;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC320];
  v9 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543362;
    v37 = objc_opt_class();
    v11 = v37;
    _os_log_impl(&dword_269C02000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Periodic activity interval has been met.", buf, 0xCu);
  }

  name = [activityCopy name];

  os_unfair_lock_lock(&self->_periodicActivityCompletionLock);
  if (self->_periodicActivityCompletion)
  {
    _HKInitializeLogging();
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_FAULT))
    {
      v26 = v13;
      v27 = objc_opt_class();
      *buf = 138543362;
      v37 = v27;
      v28 = v27;
      _os_log_fault_impl(&dword_269C02000, v26, OS_LOG_TYPE_FAULT, "[%{public}@] performPeriodicActivity called, but we already have a completion from a previous call; overwriting with a new one.", buf, 0xCu);
    }
  }

  v14 = [completionCopy copy];
  periodicActivityCompletion = self->_periodicActivityCompletion;
  self->_periodicActivityCompletion = v14;

  os_unfair_lock_unlock(&self->_periodicActivityCompletionLock);
  if ([name isEqualToString:@"com.apple.healthd.sleep.breathingdisturbanceanalysisactivity"])
  {
    protectedDataOperation = self->_protectedDataOperation;
    v35 = 0;
    v17 = [(HDProtectedDataOperation *)protectedDataOperation requestWorkWithPriority:2 error:&v35];
    v18 = v35;
    _HKInitializeLogging();
    v19 = *v8;
    v20 = *v8;
    if (v17)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v19;
        v22 = objc_opt_class();
        *buf = 138543362;
        v37 = v22;
        v23 = v22;
        _os_log_impl(&dword_269C02000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request was processed, completion will be called when request is complete.", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v32 = v19;
        v33 = objc_opt_class();
        *buf = 138543618;
        v37 = v33;
        v38 = 2112;
        v39 = v18;
        v34 = v33;
        _os_log_error_impl(&dword_269C02000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Request was not processed with error: %@\nWill try analysis again in a day.", buf, 0x16u);
      }

      [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:2 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
    }
  }

  else
  {
    _HKInitializeLogging();
    v24 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v29 = v24;
      v30 = objc_opt_class();
      *buf = 138543362;
      v37 = v30;
      v31 = v30;
      _os_log_error_impl(&dword_269C02000, v29, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected activity received; not performing activity.", buf, 0xCu);
    }

    [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:1 retryInterval:0 shouldUpdateActivityCriteria:0.0];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v23 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  name = [activity name];
  if ([name isEqualToString:@"com.apple.healthd.sleep.breathingdisturbanceanalysisactivity"])
  {
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(criteriaCopy, *MEMORY[0x277D86360], 1);
    if (self->_useTimeIntervalOverride)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = objc_opt_class();
        analysisTimeInterval = self->_analysisTimeInterval;
        v19 = 138543618;
        v20 = v10;
        v21 = 2048;
        v22 = analysisTimeInterval;
        v12 = v10;
        _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Using time interval override of %f.", &v19, 0x16u);
      }

      v13 = *MEMORY[0x277D86288];
      v14 = self->_analysisTimeInterval;
    }

    else
    {
      v13 = *MEMORY[0x277D86288];
      v14 = *MEMORY[0x277D86298];
    }

    xpc_dictionary_set_int64(criteriaCopy, v13, v14);
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v19 = 138543362;
      v20 = objc_opt_class();
      v17 = v20;
      _os_log_impl(&dword_269C02000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unexpected activity received; not setting activity criteria.", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)overrideAnalysisTimeIntervalAndResetActivityWithTimeInterval:(double)interval
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    analysisTimeInterval = self->_analysisTimeInterval;
    *v11 = 138543874;
    *&v11[4] = v7;
    *&v11[12] = 2048;
    *&v11[14] = analysisTimeInterval;
    *&v11[22] = 2048;
    intervalCopy = interval;
    v9 = v7;
    _os_log_impl(&dword_269C02000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Overriding old time interval of %f with new time interval of %f.", v11, 0x20u);
  }

  self->_analysisTimeInterval = interval;
  self->_useTimeIntervalOverride = 1;
  [(HDSHBreathingDisturbanceAnalysisScheduler *)self _updateActivityCriteriaAndResetActivity:*v11];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_runCompletionIfExistsWithResult:(int64_t)result retryInterval:(double)interval shouldUpdateActivityCriteria:(BOOL)criteria
{
  criteriaCopy = criteria;
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_periodicActivityCompletionLock);
  v9 = [self->_periodicActivityCompletion copy];
  periodicActivityCompletion = self->_periodicActivityCompletion;
  self->_periodicActivityCompletion = 0;

  os_unfair_lock_unlock(&self->_periodicActivityCompletionLock);
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC320];
  v12 = os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v13 = v11;
      v14 = objc_opt_class();
      v15 = v14;
      v16 = HDStringFromPeriodicActivityResult();
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      v24 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_269C02000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calling completion with task result: %@, retry interval %f", &v20, 0x20u);
    }

    v9[2](v9, result, 0, interval);
  }

  else if (v12)
  {
    v17 = v11;
    v20 = 138543362;
    v21 = objc_opt_class();
    v18 = v21;
    _os_log_impl(&dword_269C02000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] nil completion block; unless healthd has just launched, this is unexpected.", &v20, 0xCu);
  }

  if (criteriaCopy)
  {
    [(HDSHBreathingDisturbanceAnalysisScheduler *)self _updateActivityCriteriaAndResetActivity];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_writeDateOfMostRecentSuccessfulAnalysisAttempt
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = (*(self->_currentDateProvider + 2))();
  keyValueDomain = self->_keyValueDomain;
  v5 = *MEMORY[0x277D62638];
  v16 = 0;
  v6 = [(HDKeyValueDomain *)keyValueDomain setDate:v3 forKey:v5 error:&v16];
  v7 = v16;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC320];
  v9 = *MEMORY[0x277CCC320];
  if ((v6 & 1) == 0)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    v10 = v8;
    v15 = objc_opt_class();
    *buf = 138543618;
    v18 = v15;
    v19 = 2112;
    v20 = v7;
    v12 = v15;
    _os_log_fault_impl(&dword_269C02000, v10, OS_LOG_TYPE_FAULT, "[%{public}@] Could not write date of last analysis attempt with error %@", buf, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
    v11 = objc_opt_class();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v3;
    v12 = v11;
    _os_log_impl(&dword_269C02000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Wrote date of last analysis attempt: %@", buf, 0x16u);
LABEL_4:
  }

LABEL_6:

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_areNotificationsEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  featureStatusProvider = self->_featureStatusProvider;
  v14 = 0;
  v3 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v14];
  v4 = v14;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC320];
    areAllRequirementsSatisfied = 0;
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5;
      v8 = objc_opt_class();
      *buf = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v4;
      v9 = v8;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error getting feature status: %@", buf, 0x16u);

      areAllRequirementsSatisfied = 0;
    }
  }

  else
  {
    requirementsEvaluationByContext = [v3 requirementsEvaluationByContext];
    v11 = [requirementsEvaluationByContext objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    areAllRequirementsSatisfied = [v11 areAllRequirementsSatisfied];
  }

  v12 = *MEMORY[0x277D85DE8];
  return areAllRequirementsSatisfied;
}

- (BOOL)_isFeatureOnboardedWithFeatureOnboardingRecord:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = recordCopy;
  if (!recordCopy)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "[%{public}@] Received nil onboarding record. Will assume feature is not onboarded.";
LABEL_8:
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, v9, &v13, 0xCu);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  if ([recordCopy onboardingState] != 2)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v10;
      v13 = 138543362;
      v14 = objc_opt_class();
      v8 = v14;
      v9 = "[%{public}@] User is not onboarded in a supported region.";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v5 = 1;
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_getEarliestOnboardingDate
{
  v18 = *MEMORY[0x277D85DE8];
  featureAvailabilityProviding = self->_featureAvailabilityProviding;
  v13 = 0;
  v4 = [(HKFeatureAvailabilityProviding *)featureAvailabilityProviding featureOnboardingRecordWithError:&v13];
  v5 = v13;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      v9 = v8;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error fetching onboarding record: %@\nReturning nil onboarding date.", buf, 0x16u);
    }
  }

  else if ([(HDSHBreathingDisturbanceAnalysisScheduler *)self _isFeatureOnboardedWithFeatureOnboardingRecord:v4])
  {
    earliestDateOfAnyOnboardingCompletion = [v4 earliestDateOfAnyOnboardingCompletion];
    goto LABEL_7;
  }

  earliestDateOfAnyOnboardingCompletion = 0;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return earliestDateOfAnyOnboardingCompletion;
}

- (void)_requestBreathingDisturbanceAnalysisIfNeeded
{
  v75 = *MEMORY[0x277D85DE8];
  if ([(HDSHBreathingDisturbanceAnalysisScheduler *)self _areNotificationsEnabled])
  {
    _getEarliestOnboardingDate = [(HDSHBreathingDisturbanceAnalysisScheduler *)self _getEarliestOnboardingDate];
    if (_getEarliestOnboardingDate)
    {
      keyValueDomain = self->_keyValueDomain;
      v5 = *MEMORY[0x277D62640];
      v70 = 0;
      v6 = [(HDKeyValueDomain *)keyValueDomain numberForKey:v5 error:&v70];
      v7 = v70;
      integerValue = [v6 integerValue];

      _HKInitializeLogging();
      v9 = MEMORY[0x277CCC320];
      v10 = *MEMORY[0x277CCC320];
      v11 = os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v11)
        {
          v12 = v10;
          v13 = objc_opt_class();
          *buf = 138543618;
          v72 = v13;
          v73 = 2112;
          v74 = v7;
          v14 = v13;
          _os_log_impl(&dword_269C02000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error fetching number of analysis attempts: %@.", buf, 0x16u);
        }

        [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:2 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
      }

      else
      {
        if (v11)
        {
          v21 = v10;
          v22 = objc_opt_class();
          *buf = 138543618;
          v72 = v22;
          v73 = 2048;
          v74 = integerValue;
          v23 = v22;
          _os_log_impl(&dword_269C02000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of analysis attempts: %ld.", buf, 0x16u);
        }

        v24 = [HDSHBreathingDisturbanceAnalyzer endDateFromMostRecentlyAnalyzedDateIntervalWithDate:_getEarliestOnboardingDate numberOfAnalysisAttempts:integerValue calendar:self->_cachedCalendar];
        v25 = (*(self->_currentDateProvider + 2))();
        cachedCalendar = self->_cachedCalendar;
        v67 = v25;
        v68 = [HDSHBreathingDisturbanceAnalyzer numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:"numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:referenceDate:calendar:" referenceDate:_getEarliestOnboardingDate calendar:?];
        _HKInitializeLogging();
        v27 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          v29 = objc_opt_class();
          *buf = 138543618;
          v72 = v29;
          v73 = 2048;
          v74 = integerValue;
          v30 = v29;
          _os_log_impl(&dword_269C02000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of expected analysis attempts: %ld", buf, 0x16u);
        }

        v31 = [HDSHBreathingDisturbanceAnalyzer isAnalysisNeededWithAnchorDate:v24 referenceDate:v67 calendar:self->_cachedCalendar];
        _HKInitializeLogging();
        v32 = *v9;
        v33 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          v66 = v24;
          if (v33)
          {
            v34 = v32;
            v35 = objc_opt_class();
            *buf = 138543362;
            v72 = v35;
            v36 = v35;
            _os_log_impl(&dword_269C02000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis is needed. Analyzing over date intervals that have not been analyzed.", buf, 0xCu);
          }

          v37 = [HDSHBreathingDisturbanceAnalyzer alloc];
          WeakRetained = objc_loadWeakRetained(&self->_profile);
          v39 = [(HDSHBreathingDisturbanceAnalyzer *)v37 initWithProfile:WeakRetained];

          if (integerValue >= v68)
          {
LABEL_29:
            v54 = 0;
LABEL_39:
            v24 = v66;
          }

          else
          {
            while (1)
            {
              v40 = [(HDSHBreathingDisturbanceAnalyzer *)v39 performBreathingDisturbanceAnalysisWithIsForced:0 date:_getEarliestOnboardingDate numberOfAnalysisAttempts:integerValue];
              _HKInitializeLogging();
              v41 = *v9;
              v42 = *v9;
              if (!v40)
              {
                break;
              }

              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = v41;
                v44 = objc_opt_class();
                *buf = 138543362;
                v72 = v44;
                v45 = v44;
                _os_log_impl(&dword_269C02000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully performed analysis! Attempting to update count.", buf, 0xCu);
              }

              ++integerValue;
              v46 = self->_keyValueDomain;
              v47 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
              v69 = 0;
              v48 = [(HDKeyValueDomain *)v46 setNumber:v47 forKey:v5 error:&v69];
              v49 = v69;

              if ((v48 & 1) == 0)
              {
                _HKInitializeLogging();
                v58 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                {
                  v63 = v58;
                  v64 = objc_opt_class();
                  *buf = 138543618;
                  v72 = v64;
                  v73 = 2112;
                  v74 = v49;
                  v65 = v64;
                  _os_log_error_impl(&dword_269C02000, v63, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to write updated count of analysis attempts with error: %@\nWill retry this window in one day.", buf, 0x16u);
                }

                v54 = 2;
                goto LABEL_39;
              }

              if (![(HDSHBreathingDisturbanceAnalysisScheduler *)self _writeDateOfMostRecentSuccessfulAnalysisAttempt])
              {
                _HKInitializeLogging();
                v50 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
                {
                  v51 = v50;
                  v52 = objc_opt_class();
                  *buf = 138543362;
                  v72 = v52;
                  v53 = v52;
                  _os_log_impl(&dword_269C02000, v51, OS_LOG_TYPE_DEFAULT, "[%{public}@] Date write failed while performing analysis.", buf, 0xCu);
                }
              }

              if (v68 == integerValue)
              {
                goto LABEL_29;
              }
            }

            v24 = v66;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v60 = v41;
              v61 = objc_opt_class();
              *buf = 138543362;
              v72 = v61;
              v62 = v61;
              _os_log_error_impl(&dword_269C02000, v60, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to perform successful analysis.\nWill retry in one day.", buf, 0xCu);
            }

            v54 = 2;
          }

          [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:v54 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
        }

        else
        {
          if (v33)
          {
            v55 = v32;
            v56 = objc_opt_class();
            *buf = 138543362;
            v72 = v56;
            v57 = v56;
            _os_log_impl(&dword_269C02000, v55, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis is not needed.", buf, 0xCu);
          }

          [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:0 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        *buf = 138543362;
        v72 = objc_opt_class();
        v20 = v72;
        _os_log_impl(&dword_269C02000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got nil onboarding date, not checking if analysis is overdue.", buf, 0xCu);
      }

      [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:2 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
    }
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      *buf = 138543362;
      v72 = objc_opt_class();
      v17 = v72;
      _os_log_impl(&dword_269C02000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature is disabled; not going to check if analysis is overdue.", buf, 0xCu);
    }

    [(HDSHBreathingDisturbanceAnalysisScheduler *)self _runCompletionIfExistsWithResult:0 retryInterval:1 shouldUpdateActivityCriteria:*MEMORY[0x277D86298]];
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_updateActivityCriteriaAndResetActivity
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activity criteria will be updated and reset.", v7, 0xCu);
  }

  [(HDPeriodicActivity *)self->_activity resetInterval];
  v6 = *MEMORY[0x277D85DE8];
}

@end