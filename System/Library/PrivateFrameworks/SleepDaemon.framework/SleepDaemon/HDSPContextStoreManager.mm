@interface HDSPContextStoreManager
+ (id)healthAppForegroundPredicate;
+ (id)sleepAppForegroundPredicate;
- (HDSPContextStoreManager)initWithEnvironment:(id)environment;
- (HDSPContextStoreManager)initWithEnvironment:(id)environment context:(id)context;
- (HDSPEnvironment)environment;
- (_CDLocalContext)context;
- (id)registerPredicate:(id)predicate identifier:(id)identifier callback:(id)callback;
- (void)_withLock:(id)lock;
- (void)_writeSleepInfoToContextStore:(id)store;
- (void)environmentWillBecomeReady:(id)ready;
- (void)sleepEventIsDue:(id)due;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
- (void)unregister:(id)unregister;
- (void)updateForScheduleModelModifiedOnDate:(id)date;
@end

@implementation HDSPContextStoreManager

- (HDSPContextStoreManager)initWithEnvironment:(id)environment
{
  v4 = MEMORY[0x277CFE318];
  environmentCopy = environment;
  userContext = [v4 userContext];
  v7 = [(HDSPContextStoreManager *)self initWithEnvironment:environmentCopy context:userContext];

  return v7;
}

- (HDSPContextStoreManager)initWithEnvironment:(id)environment context:(id)context
{
  environmentCopy = environment;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HDSPContextStoreManager;
  v8 = [(HDSPContextStoreManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeStrong(&v9->_context, context);
    v9->_contextLock._os_unfair_lock_opaque = 0;
    v10 = v9;
  }

  return v9;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_contextLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_contextLock);
}

- (id)registerPredicate:(id)predicate identifier:(id)identifier callback:(id)callback
{
  v29 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  identifierCopy = identifier;
  callbackCopy = callback;
  v11 = objc_opt_class();
  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v24 = v11;
    v25 = 2114;
    v26 = predicateCopy;
    v27 = 2114;
    v28 = identifierCopy;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] registering predicate %{public}@ for identifier %{public}@", buf, 0x20u);
  }

  v13 = MEMORY[0x277CFE350];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__HDSPContextStoreManager_registerPredicate_identifier_callback___block_invoke;
  v19[3] = &unk_279C7B6F0;
  v21 = callbackCopy;
  v22 = v11;
  v20 = identifierCopy;
  v14 = callbackCopy;
  v15 = identifierCopy;
  v16 = [v13 localWakingRegistrationWithIdentifier:v15 contextualPredicate:predicateCopy clientIdentifier:@"com.apple.sleepd.contextstore-registration" callback:v19];
  [(_CDLocalContext *)self->_context registerCallback:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __65__HDSPContextStoreManager_registerPredicate_identifier_callback___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 isEqualToString:a1[4]])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      v8 = a1[4];
      v15 = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] processing callback with identifier %{public}@", &v15, 0x16u);
    }

    v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFE3C0]];
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFE3C8]];
    v11 = a1[5];
    v12 = [v9 value];
    v13 = [v10 value];
    (*(v11 + 16))(v11, v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)unregister:(id)unregister
{
  v12 = *MEMORY[0x277D85DE8];
  unregisterCopy = unregister;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = unregisterCopy;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] unregistering %{public}@", &v8, 0x16u);
  }

  [(_CDLocalContext *)self->_context deregisterCallback:unregisterCopy];
  v7 = *MEMORY[0x277D85DE8];
}

+ (id)healthAppForegroundPredicate
{
  v2 = MEMORY[0x277CFE360];
  keyPathForDefaultPairedDeviceForegroundApp = [MEMORY[0x277CFE338] keyPathForDefaultPairedDeviceForegroundApp];
  v4 = [v2 predicateForKeyPath:keyPathForDefaultPairedDeviceForegroundApp equalToValue:*MEMORY[0x277CCE3A8]];

  return v4;
}

+ (id)sleepAppForegroundPredicate
{
  v2 = MEMORY[0x277CFE360];
  keyPathForForegroundApp = [MEMORY[0x277CFE338] keyPathForForegroundApp];
  v4 = [v2 predicateForKeyPath:keyPathForForegroundApp equalToValue:*MEMORY[0x277D62090]];

  return v4;
}

- (void)environmentWillBecomeReady:(id)ready
{
  readyCopy = ready;
  sleepCoordinator = [readyCopy sleepCoordinator];
  [sleepCoordinator addObserver:self];

  sleepScheduleModelManager = [readyCopy sleepScheduleModelManager];
  [sleepScheduleModelManager addObserver:self];

  sleepModeManager = [readyCopy sleepModeManager];
  [sleepModeManager addObserver:self];

  sleepScheduler = [readyCopy sleepScheduler];

  [sleepScheduler addEventHandler:self];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v29 = *MEMORY[0x277D85DE8];
  if (state != change)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromHKSPSleepScheduleState();
      v11 = NSStringFromHKSPSleepScheduleState();
      v12 = NSStringFromHKSPSleepScheduleStateChangeReason();
      *buf = 138544130;
      v22 = v8;
      v23 = 2114;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep state changed from %{public}@ to %{public}@ (%{public}@)", buf, 0x2Au);
    }

    if (change == 1 && (HKSPSleepScheduleStateChangeReasonIsExpected() & 1) == 0)
    {
      sleepScheduleState = HKSPLogForCategory();
      if (os_log_type_enabled(sleepScheduleState, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        *buf = 138543362;
        v22 = v17;
        v18 = v17;
        _os_log_impl(&dword_269B11000, sleepScheduleState, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring wake up state as it was not due to normal reason", buf, 0xCu);
      }
    }

    else
    {
      sleepScheduleState = [MEMORY[0x277CFE338] sleepScheduleState];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{change, sleepScheduleState}];
      v20 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [(HDSPContextStoreManager *)self _writeSleepInfoToContextStore:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)manager didUpdateSleepScheduleModel:(id)model
{
  v15 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  lastModifiedDate = [modelCopy lastModifiedDate];

  if (lastModifiedDate)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = modelCopy;
      v8 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepScheduleModel: %{public}@", &v11, 0x16u);
    }

    lastModifiedDate2 = [modelCopy lastModifiedDate];
    [(HDSPContextStoreManager *)self updateForScheduleModelModifiedOnDate:lastModifiedDate2];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateForScheduleModelModifiedOnDate:(id)date
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CFE338];
  dateCopy = date;
  sleepScheduleModelDateModified = [v4 sleepScheduleModelDateModified];
  v9 = sleepScheduleModelDateModified;
  v10[0] = dateCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(HDSPContextStoreManager *)self _writeSleepInfoToContextStore:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sleepEventIsDue:(id)due
{
  v19 = *MEMORY[0x277D85DE8];
  dueCopy = due;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    identifier = [dueCopy identifier];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = identifier;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep event due %{public}@", buf, 0x16u);
  }

  sleepEvent = [MEMORY[0x277CFE338] sleepEvent];
  identifier2 = [dueCopy identifier];
  v14 = identifier2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [(HDSPContextStoreManager *)self _writeSleepInfoToContextStore:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  if (change != mode)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromHKSPSleepMode();
      v11 = NSStringFromHKSPSleepMode();
      v12 = NSStringFromHKSPSleepModeChangeReason();
      *buf = 138544130;
      v23 = v8;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode changed from %{public}@ to %{public}@ (%{public}@)", buf, 0x2Au);
    }

    v13 = change != 0;
    sleepModeState = [MEMORY[0x277CFE338] sleepModeState];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{change, sleepModeState}];
    v21[0] = v15;
    sleepModeOn = [MEMORY[0x277CFE338] sleepModeOn];
    v20[1] = sleepModeOn;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    v21[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [(HDSPContextStoreManager *)self _writeSleepInfoToContextStore:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_writeSleepInfoToContextStore:(id)store
{
  v15 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = storeCopy;
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] adding %{public}@ to context", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HDSPContextStoreManager__writeSleepInfoToContextStore___block_invoke;
  v9[3] = &unk_279C7B2D0;
  v9[4] = self;
  v10 = storeCopy;
  v7 = storeCopy;
  [(HDSPContextStoreManager *)self _withLock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __57__HDSPContextStoreManager__writeSleepInfoToContextStore___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() contextualKeyPath];
  v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v3];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *v20 = 138543618;
    *&v20[4] = objc_opt_class();
    *&v20[12] = 2114;
    *&v20[14] = v4;
    v7 = *&v20[4];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] previous context is %{public}@", v20, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 mutableCopy];
  }

  else
  {
    if (v4)
    {
      v9 = HKSPLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = objc_opt_class();
        v18 = v17;
        v19 = objc_opt_class();
        *v20 = 138543618;
        *&v20[4] = v17;
        *&v20[12] = 2114;
        *&v20[14] = v19;
        _os_log_error_impl(&dword_269B11000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] previous context is of unexpected class %{public}@", v20, 0x16u);
      }
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v10 = v8;
  [v8 addEntriesFromDictionary:{*(a1 + 40), *v20, *&v20[16], v21}];
  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    *v20 = 138543618;
    *&v20[4] = v13;
    *&v20[12] = 2114;
    *&v20[14] = v10;
    v14 = v13;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] new context is %{public}@", v20, 0x16u);
  }

  [*(*(a1 + 32) + 24) setObject:v10 forKeyedSubscript:v3];
  v15 = *MEMORY[0x277D85DE8];
}

- (_CDLocalContext)context
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__HDSPContextStoreManager_context__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPContextStoreManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end