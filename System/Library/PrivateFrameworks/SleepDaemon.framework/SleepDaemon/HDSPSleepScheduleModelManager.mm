@interface HDSPSleepScheduleModelManager
- (BOOL)_locked_saveSleepEventRecord:(id)record error:(id *)error preNotifyBlock:(id)block;
- (BOOL)_locked_saveSleepSchedule:(id)schedule error:(id *)error;
- (BOOL)_locked_saveSleepSettings:(id)settings error:(id *)error;
- (BOOL)_locked_updateModelWithBlock:(id)block persistBlock:(id)persistBlock error:(id *)error;
- (BOOL)_shouldTurnOffSleepSchedule;
- (BOOL)_shouldTurnOffWatchSleepFeatures;
- (BOOL)removeSleepScheduleModelWithError:(id *)error;
- (BOOL)saveSleepEventRecord:(id)record error:(id *)error;
- (BOOL)saveSleepEventRecord:(id)record error:(id *)error preNotifyBlock:(id)block;
- (BOOL)saveSleepSchedule:(id)schedule error:(id *)error;
- (BOOL)saveSleepScheduleModel:(id)model error:(id *)error;
- (BOOL)saveSleepSettings:(id)settings error:(id *)error;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPSleepScheduleModelManager)initWithEnvironment:(id)environment;
- (HKSPSleepEventRecord)sleepEventRecord;
- (HKSPSleepSchedule)sleepSchedule;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (HKSPSleepSettings)sleepSettings;
- (NSString)providerIdentifier;
- (NSString)sourceIdentifier;
- (id)_earliestDateToScheduleEventsForDate:(id)date;
- (id)_loadSleepEventRecord:(id *)record;
- (id)_loadSleepSchedule:(id *)schedule;
- (id)_loadSleepScheduleModel:(id *)model;
- (id)_loadSleepSettings:(id *)settings;
- (id)_locked_applyNecessaryChangesBeforeSaving:(id)saving;
- (id)_locked_applyNecessaryChangesBeforeSavingSleepEventRecord:(id)record;
- (id)_locked_applyNecessaryChangesBeforeSavingSleepSchedule:(id)schedule validationResult:(id)result;
- (id)_locked_loadSleepEventRecord:(id *)record;
- (id)_locked_loadSleepSchedule:(id *)schedule;
- (id)_locked_loadSleepScheduleModel:(id *)model;
- (id)_locked_loadSleepSettings:(id *)settings;
- (id)_locked_removeSleepSchedule;
- (id)_locked_resetSleepEventRecord;
- (id)_locked_resetSleepSettings;
- (id)_locked_saveSleepEventRecord:(id)record;
- (id)_locked_saveSleepSchedule:(id)schedule;
- (id)_locked_saveSleepSettings:(id)settings;
- (id)_locked_setSleepEventRecord:(id)record;
- (id)_locked_setSleepSchedule:(id)schedule;
- (id)_locked_setSleepSettings:(id)settings;
- (id)_locked_updateSleepEventRecord:(id)record;
- (id)_locked_updateSleepSchedule:(id)schedule;
- (id)_locked_updateSleepSettings:(id)settings;
- (id)_locked_validateSleepSchedule:(id)schedule generateValidSchedule:(BOOL)validSchedule;
- (id)diagnosticDescription;
- (id)upcomingEventsDueAfterDate:(id)date;
- (void)_locked_applyNecessaryEventRecordChangesBeforeSavingSleepSchedule:(id)schedule validationResult:(id)result;
- (void)_locked_applyNecessarySleepSettingsChangesBeforeSavingSleepEventRecord:(id)record;
- (void)_locked_notifyObserversForSleepEventRecordChange:(id)change;
- (void)_locked_notifyObserversForSleepScheduleChange:(id)change;
- (void)_locked_notifyObserversForSleepScheduleModelChange:(id)change;
- (void)_locked_notifyObserversForSleepSettingsChange:(id)change;
- (void)_turnOffSleepSchedule;
- (void)_turnOffWatchSleepFeatures;
- (void)addObserver:(id)observer;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)notifyObserversForSleepEventRecordChange:(id)change;
- (void)notifyObserversForSleepScheduleChange:(id)change;
- (void)notifyObserversForSleepSettingsChange:(id)change;
- (void)observedApplicationDidUninstall:(id)uninstall;
- (void)removeObserver:(id)observer;
- (void)significantTimeChangeDetected:(id)detected;
- (void)sleepStorageDidChangeExternally:(id)externally;
@end

@implementation HDSPSleepScheduleModelManager

uint64_t __49__HDSPSleepScheduleModelManager_sleepEventRecord__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (HKSPSleepEventRecord)sleepEventRecord
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepScheduleModelManager_sleepEventRecord__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepScheduleModelManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (HKSPSleepSettings)sleepSettings
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HDSPSleepScheduleModelManager_sleepSettings__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepScheduleModelManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __46__HDSPSleepScheduleModelManager_sleepSettings__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (HDSPSleepScheduleModelManager)initWithEnvironment:(id)environment
{
  v26 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v21.receiver = self;
  v21.super_class = HDSPSleepScheduleModelManager;
  v5 = [(HDSPSleepScheduleModelManager *)&v21 init];
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v23 = v7;
      v24 = 2048;
      v25 = v5;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v5->_environment, environmentCopy);
    mutexGenerator = [environmentCopy mutexGenerator];
    v10 = mutexGenerator[2]();
    mutexProvider = v5->_mutexProvider;
    v5->_mutexProvider = v10;

    v12 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v14 = [v12 initWithCallbackScheduler:defaultCallbackScheduler];
    observers = v5->_observers;
    v5->_observers = v14;

    v16 = [[HDSPSleepScheduleModelChangeEvaluator alloc] initWithEnvironment:environmentCopy];
    changeEvaluator = v5->_changeEvaluator;
    v5->_changeEvaluator = v16;

    v18 = v5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(HKSPObserverSet *)self->_observers addObserver:?];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(HKSPObserverSet *)self->_observers removeObserver:?];
  }
}

- (void)environmentWillBecomeReady:(id)ready
{
  readyCopy = ready;
  changeEvaluator = self->_changeEvaluator;
  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepScheduleModelChangeEvaluator *)self->_changeEvaluator environmentWillBecomeReady:readyCopy];
  }

  sleepScheduler = [readyCopy sleepScheduler];
  [sleepScheduler addEventProvider:self];

  timeChangeListener = [readyCopy timeChangeListener];
  [timeChangeListener addObserver:self];

  sleepStorage = [readyCopy sleepStorage];
  [sleepStorage addObserver:self];

  diagnostics = [readyCopy diagnostics];
  [diagnostics addProvider:self];

  systemMonitor = [readyCopy systemMonitor];
  applicationWorkspaceMonitor = [systemMonitor applicationWorkspaceMonitor];
  [applicationWorkspaceMonitor addObserver:self];
}

- (void)environmentDidBecomeReady:(id)ready
{
  v17 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  v12 = 0;
  v5 = [(HDSPSleepScheduleModelManager *)self _loadSleepScheduleModel:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to load model: %{public}@", buf, 0x16u);
    }
  }

  changeEvaluator = self->_changeEvaluator;
  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepScheduleModelChangeEvaluator *)self->_changeEvaluator environmentDidBecomeReady:readyCopy];
  }

  if ([(HDSPSleepScheduleModelManager *)self _shouldTurnOffWatchSleepFeatures])
  {
    [(HDSPSleepScheduleModelManager *)self _turnOffWatchSleepFeatures];
  }

  if ([(HDSPSleepScheduleModelManager *)self _shouldTurnOffSleepSchedule])
  {
    [(HDSPSleepScheduleModelManager *)self _turnOffSleepSchedule];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_loadSleepScheduleModel:(id *)model
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading model...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__21;
  v20 = __Block_byref_object_dispose__21;
  v21 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDSPSleepScheduleModelManager__loadSleepScheduleModel___block_invoke;
  v10[3] = &unk_279C7D0B8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &buf;
  [(HDSPSleepScheduleModelManager *)self _withLock:v10];
  if (model)
  {
    *model = *(*(&buf + 1) + 40);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __57__HDSPSleepScheduleModelManager__loadSleepScheduleModel___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _locked_loadSleepScheduleModel:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_locked_loadSleepScheduleModel:(id *)model
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v5 = [(HDSPSleepScheduleModelManager *)self _locked_loadSleepSchedule:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v29 = v19;
      v30 = 2114;
      v31 = v6;
      v20 = v19;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to load schedule: %{public}@", buf, 0x16u);
    }
  }

  v26 = 0;
  v8 = [(HDSPSleepScheduleModelManager *)self _locked_loadSleepSettings:&v26];
  v9 = v26;
  if (v9)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v29 = v21;
      v30 = 2114;
      v31 = v9;
      v22 = v21;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] failed to load settings: %{public}@", buf, 0x16u);
    }
  }

  v25 = 0;
  v11 = [(HDSPSleepScheduleModelManager *)self _locked_loadSleepEventRecord:&v25];
  v12 = v25;
  if (v12)
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      *buf = 138543618;
      v29 = v23;
      v30 = 2114;
      v31 = v12;
      v24 = v23;
      _os_log_error_impl(&dword_269B11000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] failed to load record: %{public}@", buf, 0x16u);
    }
  }

  v14 = [MEMORY[0x277D62500] sleepScheduleModelWithSleepSchedule:v5 sleepSettings:v8 sleepEventRecord:v11];
  if (model)
  {
    if (v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }

    if (v6)
    {
      v16 = v6;
    }

    else
    {
      v16 = v15;
    }

    *model = v16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)saveSleepScheduleModel:(id)model error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentSource = [environment currentSource];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = modelCopy;
    *&buf[22] = 2114;
    v26 = currentSource;
    v10 = *&buf[4];
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleModel: %{public}@ - %{public}@", buf, 0x20u);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy__21;
  v27 = __Block_byref_object_dispose__21;
  v28 = 0;
  if (objc_opt_respondsToSelector())
  {
    v11 = [currentSource dontNotify] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HDSPSleepScheduleModelManager_saveSleepScheduleModel_error___block_invoke;
  v16[3] = &unk_279C7D0E0;
  v16[4] = self;
  v12 = modelCopy;
  v17 = v12;
  v18 = &v21;
  v19 = buf;
  v20 = v11;
  [(HDSPSleepScheduleModelManager *)self _withLock:v16];
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v13 = *(v22 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v21, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __62__HDSPSleepScheduleModelManager_saveSleepScheduleModel_error___block_invoke(uint64_t a1)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) sleepSchedule];
  v5 = [v3 _locked_saveSleepSchedule:v4];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) sleepSettings];
  v8 = [v6 _locked_saveSleepSettings:v7];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) sleepEventRecord];
  v11 = [v9 _locked_saveSleepEventRecord:v10];

  v12 = [v5 success];
  if (v12)
  {
    v12 = [v8 success];
    if (v12)
    {
      LOBYTE(v12) = [v11 success];
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v12;
  v13 = [v5 error];
  v14 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v17 = [v8 error];
    v1 = v17;
    if (v17)
    {
      v15 = 0;
      v16 = v17;
    }

    else
    {
      v16 = [v11 error];
      v15 = 1;
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v16);
  if (v15)
  {
  }

  if (!v14)
  {
  }

  if (*(a1 + 64) == 1)
  {
    if ([v5 shouldNotify] & 1) != 0 || (objc_msgSend(v8, "shouldNotify"))
    {
      v18 = 1;
    }

    else
    {
      v18 = [v11 shouldNotify];
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1 && v18)
    {
      v19 = [v5 changeEvaluation];
      v20 = [v8 changeEvaluation];
      v25[1] = v20;
      v21 = [v11 changeEvaluation];
      v25[2] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
      v23 = [HDSPSleepScheduleModelChangeEvaluation combinedEvaluation:v22];

      [*(a1 + 32) _locked_notifyObserversForSleepScheduleModelChange:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeSleepScheduleModelWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentSource = [environment currentSource];

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = currentSource;
    v8 = *&buf[4];
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] removeSleepScheduleModel %{public}@", buf, 0x16u);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__21;
  v21 = __Block_byref_object_dispose__21;
  v22 = 0;
  if (objc_opt_respondsToSelector())
  {
    v9 = [currentSource dontNotify] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__HDSPSleepScheduleModelManager_removeSleepScheduleModelWithError___block_invoke;
  v13[3] = &unk_279C7D108;
  v13[4] = self;
  v13[5] = &v15;
  v13[6] = buf;
  v14 = v9;
  [(HDSPSleepScheduleModelManager *)self _withLock:v13];
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v10 = *(v16 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void __67__HDSPSleepScheduleModelManager_removeSleepScheduleModelWithError___block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) _locked_saveSleepSchedule:0];
  v4 = [*(a1 + 32) _locked_saveSleepSettings:0];
  v5 = [*(a1 + 32) _locked_saveSleepEventRecord:0];
  v6 = [v3 success];
  if (v6)
  {
    v6 = [v4 success];
    if (v6)
    {
      LOBYTE(v6) = [v5 success];
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  v7 = [v3 error];
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v11 = [v4 error];
    v1 = v11;
    if (v11)
    {
      v9 = 0;
      v10 = v11;
    }

    else
    {
      v10 = [v5 error];
      v9 = 1;
    }
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
  if (v9)
  {
  }

  if (!v8)
  {
  }

  if (*(a1 + 56) == 1)
  {
    if ([v3 shouldNotify] & 1) != 0 || (objc_msgSend(v4, "shouldNotify"))
    {
      v12 = 1;
    }

    else
    {
      v12 = [v5 shouldNotify];
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1 && v12 != 0)
    {
      v14 = [v3 changeEvaluation];
      v15 = [v4 changeEvaluation];
      v20[1] = v15;
      v16 = [v5 changeEvaluation];
      v20[2] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
      v18 = [HDSPSleepScheduleModelChangeEvaluation combinedEvaluation:v17];

      [*(a1 + 32) _locked_notifyObserversForSleepScheduleModelChange:v18];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_locked_notifyObserversForSleepScheduleModelChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentContext = [environment currentContext];
  v7 = currentContext;
  if (currentContext)
  {
    v8 = currentContext;
  }

  else
  {
    v8 = objc_alloc_init(HDSPEnvironmentContext);
  }

  v9 = v8;

  v10 = [(HDSPEnvironmentContext *)v9 contextByApplyingChangeEvaluation:changeCopy];

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    source = [v10 source];
    *buf = 138543618;
    v24 = v12;
    v25 = 2114;
    v26 = source;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying observers for sleepScheduleModel changes from %{public}@", buf, 0x16u);
  }

  _locked_sleepScheduleModel = [(HDSPSleepScheduleModelManager *)self _locked_sleepScheduleModel];
  observers = self->_observers;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepScheduleModelChange___block_invoke;
  v20[3] = &unk_279C7D130;
  v20[4] = self;
  v21 = _locked_sleepScheduleModel;
  v22 = v10;
  v17 = v10;
  v18 = _locked_sleepScheduleModel;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __84__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepScheduleModelChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) environment];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepScheduleModelChange___block_invoke_2;
  v9[3] = &unk_279C7C050;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 48);
  v8 = v3;
  [v4 perform:v9 withContext:v7];
}

void __84__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepScheduleModelChange___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  if (v3)
  {
    v5 = a1[5];
    v6 = a1[6];

    [v4 sleepScheduleModelManager:v5 didUpdateSleepScheduleModel:v6];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = [a1[6] sleepSchedule];
      [v7 sleepScheduleModelManager:v8 didUpdateSleepSchedule:v9];
    }

    v10 = a1[4];
    if (objc_opt_respondsToSelector())
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = [a1[6] sleepSettings];
      [v11 sleepScheduleModelManager:v12 didUpdateSleepSettings:v13];
    }

    v14 = a1[4];
    if (objc_opt_respondsToSelector())
    {
      v15 = a1[4];
      v16 = a1[5];
      v17 = [a1[6] sleepEventRecord];
      [v15 sleepScheduleModelManager:v16 didUpdateSleepEventRecord:v17];
    }
  }
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HDSPSleepScheduleModelManager_sleepScheduleModel__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepScheduleModelManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __51__HDSPSleepScheduleModelManager_sleepScheduleModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_sleepScheduleModel];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_loadSleepSchedule:(id *)schedule
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading schedule...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__21;
  v20 = __Block_byref_object_dispose__21;
  v21 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HDSPSleepScheduleModelManager__loadSleepSchedule___block_invoke;
  v10[3] = &unk_279C7D0B8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &buf;
  [(HDSPSleepScheduleModelManager *)self _withLock:v10];
  if (schedule)
  {
    *schedule = *(*(&buf + 1) + 40);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __52__HDSPSleepScheduleModelManager__loadSleepSchedule___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _locked_loadSleepSchedule:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_locked_loadSleepSchedule:(id *)schedule
{
  v33 = *MEMORY[0x277D85DE8];
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  sleepStorage = [environment sleepStorage];
  v7 = [sleepStorage loadSleepSchedule:schedule];

  v8 = [(HDSPSleepScheduleModelManager *)self _locked_validateSleepSchedule:v7 generateValidSchedule:1];
  timelineResults = [v8 timelineResults];
  validSleepSchedule = [timelineResults validSleepSchedule];

  if (([v8 success] & 1) == 0)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v29 = 138543618;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = v7;
      v25 = v30;
      _os_log_error_impl(&dword_269B11000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] persisted schedule invalid: %{public}@", &v29, 0x16u);
    }

    environment2 = HKSPLogForCategory();
    v13 = os_log_type_enabled(environment2, OS_LOG_TYPE_ERROR);
    if (validSleepSchedule)
    {
      if (v13)
      {
        v26 = objc_opt_class();
        v29 = 138543618;
        v30 = v26;
        v31 = 2114;
        v32 = validSleepSchedule;
        v27 = v26;
        _os_log_error_impl(&dword_269B11000, environment2, OS_LOG_TYPE_ERROR, "[%{public}@] persisting valid schedule: %{public}@", &v29, 0x16u);
      }

      environment2 = [(HDSPSleepScheduleModelManager *)self environment];
      sleepStorage2 = [environment2 sleepStorage];
      [sleepStorage2 saveSleepSchedule:validSleepSchedule error:schedule];
    }

    else
    {
      if (!v13)
      {
        goto LABEL_10;
      }

      v28 = objc_opt_class();
      v29 = 138543362;
      v30 = v28;
      sleepStorage2 = v28;
      _os_log_error_impl(&dword_269B11000, environment2, OS_LOG_TYPE_ERROR, "[%{public}@] no valid schedule could be made", &v29, 0xCu);
    }

LABEL_10:
    v15 = validSleepSchedule;

    v7 = v15;
  }

  v16 = *schedule;
  v17 = HKSPLogForCategory();
  v18 = v17;
  if (v16)
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = objc_opt_class();
    v20 = *schedule;
    v29 = 138543618;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    v21 = v19;
    _os_log_error_impl(&dword_269B11000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] failed to load schedule with error %{public}@", &v29, 0x16u);
  }

  else
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v22 = objc_opt_class();
    v29 = 138543618;
    v30 = v22;
    v31 = 2114;
    v32 = v7;
    v21 = v22;
    _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] loaded %{public}@", &v29, 0x16u);
  }

LABEL_17:
  objc_storeStrong(&self->_sleepSchedule, v7);

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)saveSleepSchedule:(id)schedule error:(id *)error
{
  scheduleCopy = schedule;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__21;
  v18 = __Block_byref_object_dispose__21;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDSPSleepScheduleModelManager_saveSleepSchedule_error___block_invoke;
  v10[3] = &unk_279C7D158;
  v12 = &v20;
  v10[4] = self;
  v7 = scheduleCopy;
  v11 = v7;
  v13 = &v14;
  [(HDSPSleepScheduleModelManager *)self _withLock:v10];
  if (error)
  {
    *error = v15[5];
  }

  v8 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __57__HDSPSleepScheduleModelManager_saveSleepSchedule_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _locked_saveSleepSchedule:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)_locked_saveSleepSchedule:(id)schedule error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentSource = [environment currentSource];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138543874;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = scheduleCopy;
    *&v19[22] = 2114;
    v20 = currentSource;
    v10 = *&v19[4];
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] saveSleepSchedule: %{public}@ - %{public}@", v19, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    dontNotify = [currentSource dontNotify];
    v12 = [(HDSPSleepScheduleModelManager *)self _locked_saveSleepSchedule:scheduleCopy];
    v13 = v12;
    if (dontNotify)
    {
      [v12 success];
      goto LABEL_10;
    }
  }

  else
  {
    v13 = [(HDSPSleepScheduleModelManager *)self _locked_saveSleepSchedule:scheduleCopy];
  }

  shouldNotify = [v13 shouldNotify];
  if ([v13 success] && shouldNotify)
  {
    changeEvaluation = [v13 changeEvaluation];
    [(HDSPSleepScheduleModelManager *)self _locked_notifyObserversForSleepScheduleChange:changeEvaluation];
  }

LABEL_10:
  if (error)
  {
    *error = [v13 error];
  }

  success = [v13 success];

  v17 = *MEMORY[0x277D85DE8];
  return success;
}

- (id)_locked_saveSleepSchedule:(id)schedule
{
  v14 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  sleepSchedule = self->_sleepSchedule;
  if (NAEqualObjects())
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] no changes to save", &v12, 0xCu);
    }

    _locked_removeSleepSchedule = +[HDSPSleepScheduleModelSaveResult emptyResult];
  }

  else if (scheduleCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_sleepSchedule)
    {
      _locked_removeSleepSchedule = [(HDSPSleepScheduleModelManager *)self _locked_updateSleepSchedule:scheduleCopy];
    }

    else
    {
      _locked_removeSleepSchedule = [(HDSPSleepScheduleModelManager *)self _locked_setSleepSchedule:scheduleCopy];
    }
  }

  else
  {
    _locked_removeSleepSchedule = [(HDSPSleepScheduleModelManager *)self _locked_removeSleepSchedule];
  }

  v9 = _locked_removeSleepSchedule;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_locked_setSleepSchedule:(id)schedule
{
  v30 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule was created", &buf, 0xCu);
  }

  v7 = [(HDSPSleepScheduleModelManager *)self _locked_validateSleepSchedule:scheduleCopy generateValidSchedule:0];
  if ([v7 success])
  {
    error = [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryChangesBeforeSaving:scheduleCopy];
    v9 = [error copy];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__21;
    v28 = __Block_byref_object_dispose__21;
    v29 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__HDSPSleepScheduleModelManager__locked_setSleepSchedule___block_invoke;
    v22[3] = &unk_279C7B6C8;
    v22[4] = self;
    v23 = v9;
    p_buf = &buf;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__HDSPSleepScheduleModelManager__locked_setSleepSchedule___block_invoke_2;
    v20[3] = &unk_279C7D180;
    v20[4] = self;
    v10 = v23;
    v21 = v10;
    v19 = 0;
    v11 = [(HDSPSleepScheduleModelManager *)self _locked_updateModelWithBlock:v22 persistBlock:v20 error:&v19];
    v12 = v19;
    v13 = [HDSPSleepScheduleModelSaveResult alloc];
    v14 = *(*(&buf + 1) + 40);
    v15 = v14;
    if (!v14)
    {
      v15 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
    }

    v16 = [(HDSPSleepScheduleModelSaveResult *)v13 initWithSuccess:v11 changeEvaluation:v15 error:v12 shouldNotify:1];
    if (!v14)
    {
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    error = [v7 error];
    v16 = [HDSPSleepScheduleModelSaveResult saveFailedWithError:error];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __58__HDSPSleepScheduleModelManager__locked_setSleepSchedule___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = [*(*(a1 + 32) + 64) evaluateSleepScheduleAdd:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__HDSPSleepScheduleModelManager__locked_setSleepSchedule___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepStorage];
  v6 = [v5 saveSleepSchedule:*(a1 + 40) error:a2];

  return v6;
}

- (id)_locked_updateSleepSchedule:(id)schedule
{
  v33 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = objc_opt_class();
    v6 = *&buf[4];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule was updated", buf, 0xCu);
  }

  changeSet = [scheduleCopy changeSet];
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = changeSet;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] applying changes: %{public}@", buf, 0x16u);
  }

  v11 = [(HKSPSleepSchedule *)self->_sleepSchedule mutableCopy];
  HKSPApplyChangesToObject();
  v12 = [(HDSPSleepScheduleModelManager *)self _locked_validateSleepSchedule:v11 generateValidSchedule:0];
  if ([v12 success])
  {
    v13 = [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryChangesBeforeSavingSleepSchedule:v11 validationResult:v12];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = __Block_byref_object_copy__21;
    v31 = __Block_byref_object_dispose__21;
    v32 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __61__HDSPSleepScheduleModelManager__locked_updateSleepSchedule___block_invoke;
    v26[3] = &unk_279C7B6C8;
    v26[4] = self;
    v27 = v13;
    v28 = buf;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __61__HDSPSleepScheduleModelManager__locked_updateSleepSchedule___block_invoke_2;
    v24[3] = &unk_279C7D180;
    v24[4] = self;
    scheduleCopy = v27;
    v25 = scheduleCopy;
    v23 = 0;
    v14 = [(HDSPSleepScheduleModelManager *)self _locked_updateModelWithBlock:v26 persistBlock:v24 error:&v23];
    v15 = v23;
    v16 = [HDSPSleepScheduleModelSaveResult alloc];
    v17 = *(*&buf[8] + 40);
    v18 = v17;
    if (!v17)
    {
      v18 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
    }

    v19 = [(HDSPSleepScheduleModelSaveResult *)v16 initWithSuccess:v14 changeEvaluation:v18 error:v15 shouldNotify:1];
    if (!v17)
    {
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    error = [v12 error];
    v19 = [HDSPSleepScheduleModelSaveResult saveFailedWithError:error];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __61__HDSPSleepScheduleModelManager__locked_updateSleepSchedule___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [*(*(a1 + 32) + 64) evaluateSleepScheduleUpdate:*(*(a1 + 32) + 16)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__HDSPSleepScheduleModelManager__locked_updateSleepSchedule___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepStorage];
  v6 = [*(a1 + 40) changeSet];
  v7 = [v5 saveSleepScheduleChanges:v6 error:a2];

  return v7;
}

- (id)_locked_applyNecessaryChangesBeforeSavingSleepSchedule:(id)schedule validationResult:(id)result
{
  resultCopy = result;
  v7 = [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryChangesBeforeSaving:schedule];
  [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryEventRecordChangesBeforeSavingSleepSchedule:v7 validationResult:resultCopy];

  return v7;
}

- (void)_locked_applyNecessaryEventRecordChangesBeforeSavingSleepSchedule:(id)schedule validationResult:(id)result
{
  v74 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  resultCopy = result;
  _locked_sleepScheduleModel = [(HDSPSleepScheduleModelManager *)self _locked_sleepScheduleModel];
  sleepEventRecord = [_locked_sleepScheduleModel sleepEventRecord];
  v10 = [sleepEventRecord mutableCopy];

  timelineResults = [resultCopy timelineResults];

  LODWORD(resultCopy) = [timelineResults snoozeFireDateNeedsReset];
  if (resultCopy)
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v69 = objc_opt_class();
      v13 = v69;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetting snooze fire date", buf, 0xCu);
    }

    [v10 setWakeUpAlarmSnoozedUntilDate:0];
  }

  changeSet = [scheduleCopy changeSet];
  v15 = *MEMORY[0x277D620D0];
  v16 = [changeSet hasChangeForPropertyIdentifier:*MEMORY[0x277D620D0]];

  if (v16)
  {
    changeSet2 = [scheduleCopy changeSet];
    v18 = [changeSet2 originalValueForPropertyIdentifier:v15];

    changeSet3 = [scheduleCopy changeSet];
    v20 = [changeSet3 changedValueForPropertyIdentifier:v15];

    v65 = v18;
    if (!v18)
    {
LABEL_37:

      goto LABEL_38;
    }

    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    wakeUpComponents = [v18 wakeUpComponents];
    v64 = [hk_gregorianCalendar dateFromComponents:wakeUpComponents];

    if (v20)
    {
      wakeUpComponents2 = [v20 wakeUpComponents];
      v63 = [hk_gregorianCalendar dateFromComponents:wakeUpComponents2];
    }

    else
    {
      v63 = 0;
    }

    environment = [(HDSPSleepScheduleModelManager *)self environment];
    currentDateProvider = [environment currentDateProvider];
    v26 = currentDateProvider[2]();

    v61 = hk_gregorianCalendar;
    v27 = [hk_gregorianCalendar isDate:v64 inSameDayAsDate:v26];
    v28 = [_locked_sleepScheduleModel previousResolvedOccurrenceBeforeDate:v26];
    wakeUpEvent = [v28 wakeUpEvent];
    dueDate = [wakeUpEvent dueDate];

    v60 = v28;
    occurrence = [v28 occurrence];
    v62 = dueDate;
    if ([occurrence isSingleDayOverride])
    {
      v32 = [dueDate hksp_isBeforeOrSameAsDate:v26];
    }

    else
    {
      v32 = 0;
    }

    if (v20)
    {
      v33 = v63;
      if ([v63 hksp_isAfterDate:v26])
      {
        v34 = [v61 isDate:v63 inSameDayAsDate:v26] ^ 1;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v34 = 0;
      v33 = v63;
    }

    if (v20)
    {
      v35 = v34;
    }

    else
    {
      v35 = 1;
    }

    if ((v27 & v32) != 1 || !v35)
    {
LABEL_36:

      goto LABEL_37;
    }

    if (v34)
    {
      v36 = HKSPLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        *buf = 138543874;
        v69 = v37;
        v70 = 2114;
        v71 = v64;
        v72 = 2114;
        v73 = v33;
        v38 = v37;
        v39 = "[%{public}@] override that happened today (%{public}@) moving to the future (%{public}@)";
        v40 = v36;
        v41 = 32;
LABEL_29:
        _os_log_impl(&dword_269B11000, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
      }
    }

    else
    {
      if (v20)
      {
LABEL_31:
        [v10 setWakeUpOverriddenDate:dueDate];
        v43 = HKSPLogForCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = objc_opt_class();
          v45 = v44;
          wakeUpOverriddenDate = [v10 wakeUpOverriddenDate];
          *buf = 138543618;
          v69 = v44;
          v70 = 2114;
          v71 = wakeUpOverriddenDate;
          _os_log_impl(&dword_269B11000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] set wakeUpOverriddenDate to %{public}@", buf, 0x16u);
        }

        v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
        wakeUpConfirmedUntilDate = [v10 wakeUpConfirmedUntilDate];
        [v47 na_safeAddObject:wakeUpConfirmedUntilDate];

        v49 = [_locked_sleepScheduleModel computeConfirmedWakeUpUntilDateForOverrideWakeUpDate:v64];
        [v47 na_safeAddObject:v49];

        v50 = [MEMORY[0x277CBEAA8] hksp_latestFromDates:v47];
        [v10 setWakeUpConfirmedUntilDate:v50];

        v51 = HKSPLogForCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = objc_opt_class();
          v59 = v52;
          wakeUpConfirmedUntilDate2 = [v10 wakeUpConfirmedUntilDate];
          *buf = 138543618;
          v69 = v52;
          v70 = 2114;
          v71 = wakeUpConfirmedUntilDate2;
          _os_log_impl(&dword_269B11000, v51, OS_LOG_TYPE_DEFAULT, "[%{public}@] set wakeUpConfirmedUntilDate to %{public}@", buf, 0x16u);
        }

        v33 = v63;
        goto LABEL_36;
      }

      v36 = HKSPLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_opt_class();
        *buf = 138543618;
        v69 = v42;
        v70 = 2114;
        v71 = v64;
        v38 = v42;
        v39 = "[%{public}@] override that happened today (%{public}@) deleted";
        v40 = v36;
        v41 = 22;
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

LABEL_38:
  changeSet4 = [v10 changeSet];
  changes = [changeSet4 changes];
  v56 = [changes count];

  if (v56)
  {
    environment2 = [(HDSPSleepScheduleModelManager *)self environment];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __116__HDSPSleepScheduleModelManager__locked_applyNecessaryEventRecordChangesBeforeSavingSleepSchedule_validationResult___block_invoke;
    v66[3] = &unk_279C7B2D0;
    v66[4] = self;
    v67 = v10;
    [environment2 perform:v66 withSource:self];
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (id)_locked_validateSleepSchedule:(id)schedule generateValidSchedule:(BOOL)validSchedule
{
  validScheduleCopy = validSchedule;
  v31 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  occurrences = [scheduleCopy occurrences];
  if ([occurrences count])
  {
    occurrences2 = [scheduleCopy occurrences];
    v9 = [occurrences2 na_all:&__block_literal_global_30];

    if ((v9 & 1) == 0)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v27 = 138543362;
        v28 = objc_opt_class();
        v26 = v28;
        _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] sleep schedule validation failed due to invalid occurrence", &v27, 0xCu);
      }

      v11 = [MEMORY[0x277CCA9B8] hksp_validationErrorWithReason:1];
      v12 = [HDSPSleepScheduleModelValidationResult emptyFailureWithError:v11];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = [MEMORY[0x277D62500] sleepScheduleModelWithSleepSchedule:scheduleCopy sleepSettings:self->_sleepSettings sleepEventRecord:self->_sleepEventRecord];
  v14 = MEMORY[0x277D624E0];
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v17 = currentDateProvider[2]();
  v18 = [v14 builderWithSleepScheduleModel:v13 date:v17];

  if (validScheduleCopy)
  {
    v19 = 7;
  }

  else
  {
    v19 = 3;
  }

  v11 = [v18 buildTimelineWithOptions:v19];
  sleepScheduleInvalid = [v11 sleepScheduleInvalid];
  if (sleepScheduleInvalid)
  {
    v21 = [MEMORY[0x277CCA9B8] hksp_validationErrorWithReason:{objc_msgSend(v11, "sleepScheduleInvalidReason")}];
    v22 = HKSPLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = 138543618;
      v28 = objc_opt_class();
      v29 = 2114;
      v30 = v21;
      v25 = v28;
      _os_log_error_impl(&dword_269B11000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] sleep schedule validation failed: %{public}@", &v27, 0x16u);
    }
  }

  else
  {
    v21 = 0;
  }

  v12 = [[HDSPSleepScheduleModelValidationResult alloc] initWithSuccess:sleepScheduleInvalid ^ 1u timelineResults:v11 error:v21];

LABEL_16:
  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_locked_removeSleepSchedule
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v4 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep schedule was deleted", &buf, 0xCu);
  }

  _locked_resetSleepEventRecord = [(HDSPSleepScheduleModelManager *)self _locked_resetSleepEventRecord];
  if ([_locked_resetSleepEventRecord success])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__21;
    v21 = __Block_byref_object_dispose__21;
    v22 = 0;
    v16[4] = self;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__HDSPSleepScheduleModelManager__locked_removeSleepSchedule__block_invoke;
    v17[3] = &unk_279C7B130;
    v17[4] = self;
    v17[5] = &buf;
    v15 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__HDSPSleepScheduleModelManager__locked_removeSleepSchedule__block_invoke_2;
    v16[3] = &unk_279C7D1C8;
    v6 = [(HDSPSleepScheduleModelManager *)self _locked_updateModelWithBlock:v17 persistBlock:v16 error:&v15];
    v7 = v15;
    v8 = [HDSPSleepScheduleModelSaveResult alloc];
    v9 = *(*(&buf + 1) + 40);
    v10 = v9;
    if (!v9)
    {
      v10 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
    }

    v11 = [(HDSPSleepScheduleModelSaveResult *)v8 initWithSuccess:v6 changeEvaluation:v10 error:v7 shouldNotify:1];
    if (!v9)
    {
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    error = [_locked_resetSleepEventRecord error];
    v11 = [HDSPSleepScheduleModelSaveResult saveFailedWithError:error];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __60__HDSPSleepScheduleModelManager__locked_removeSleepSchedule__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = [*(*(a1 + 32) + 64) evaluateSleepScheduleRemove];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

uint64_t __60__HDSPSleepScheduleModelManager__locked_removeSleepSchedule__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) environment];
  v4 = [v3 sleepStorage];
  v5 = [v4 removeSleepScheduleWithError:a2];

  return v5;
}

- (void)notifyObserversForSleepScheduleChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDSPSleepScheduleModelManager_notifyObserversForSleepScheduleChange___block_invoke;
  v6[3] = &unk_279C7B2D0;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  [(HDSPSleepScheduleModelManager *)self _withLock:v6];
}

- (void)_locked_notifyObserversForSleepScheduleChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentContext = [environment currentContext];
  v7 = currentContext;
  if (currentContext)
  {
    v8 = currentContext;
  }

  else
  {
    v8 = objc_alloc_init(HDSPEnvironmentContext);
  }

  v9 = v8;

  v10 = [(HDSPEnvironmentContext *)v9 contextByApplyingChangeEvaluation:changeCopy];

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    source = [v10 source];
    *buf = 138543618;
    v24 = v12;
    v25 = 2114;
    v26 = source;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying observers for sleepSchedule change from %{public}@", buf, 0x16u);
  }

  _locked_sleepScheduleModel = [(HDSPSleepScheduleModelManager *)self _locked_sleepScheduleModel];
  observers = self->_observers;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepScheduleChange___block_invoke;
  v20[3] = &unk_279C7D130;
  v20[4] = self;
  v21 = _locked_sleepScheduleModel;
  v22 = v10;
  v17 = v10;
  v18 = _locked_sleepScheduleModel;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __79__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepScheduleChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) environment];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepScheduleChange___block_invoke_2;
  v9[3] = &unk_279C7C050;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 48);
  v8 = v3;
  [v4 perform:v9 withContext:v7];
}

void __79__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepScheduleChange___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  if (v3)
  {
    v5 = a1[5];
    v6 = a1[6];

    [v4 sleepScheduleModelManager:v5 didUpdateSleepScheduleModel:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [a1[6] sleepSchedule];
    [v7 sleepScheduleModelManager:v8 didUpdateSleepSchedule:v9];
  }
}

- (HKSPSleepSchedule)sleepSchedule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HDSPSleepScheduleModelManager_sleepSchedule__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepScheduleModelManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __46__HDSPSleepScheduleModelManager_sleepSchedule__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_loadSleepSettings:(id *)settings
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading settings...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__21;
  v20 = __Block_byref_object_dispose__21;
  v21 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HDSPSleepScheduleModelManager__loadSleepSettings___block_invoke;
  v10[3] = &unk_279C7D0B8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &buf;
  [(HDSPSleepScheduleModelManager *)self _withLock:v10];
  if (settings)
  {
    *settings = *(*(&buf + 1) + 40);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __52__HDSPSleepScheduleModelManager__loadSleepSettings___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _locked_loadSleepSettings:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_locked_loadSleepSettings:(id *)settings
{
  v20 = *MEMORY[0x277D85DE8];
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  sleepStorage = [environment sleepStorage];
  v7 = [sleepStorage loadSleepSettings:settings];

  v8 = *settings;
  v9 = HKSPLogForCategory();
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = objc_opt_class();
    v12 = *settings;
    v16 = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v13 = v11;
    _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] failed to load settings with error %{public}@", &v16, 0x16u);
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v16 = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = v7;
    v13 = v17;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] loaded %{public}@", &v16, 0x16u);
  }

LABEL_7:
  objc_storeStrong(&self->_sleepSettings, v7);
  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)saveSleepSettings:(id)settings error:(id *)error
{
  settingsCopy = settings;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__21;
  v18 = __Block_byref_object_dispose__21;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDSPSleepScheduleModelManager_saveSleepSettings_error___block_invoke;
  v10[3] = &unk_279C7D158;
  v12 = &v20;
  v10[4] = self;
  v7 = settingsCopy;
  v11 = v7;
  v13 = &v14;
  [(HDSPSleepScheduleModelManager *)self _withLock:v10];
  if (error)
  {
    *error = v15[5];
  }

  v8 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __57__HDSPSleepScheduleModelManager_saveSleepSettings_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _locked_saveSleepSettings:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)_locked_saveSleepSettings:(id)settings error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentSource = [environment currentSource];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 138543874;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2114;
    *&v19[14] = settingsCopy;
    *&v19[22] = 2114;
    v20 = currentSource;
    v10 = *&v19[4];
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] saveSleepSettings: %{public}@ - %{public}@", v19, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    dontNotify = [currentSource dontNotify];
    v12 = [(HDSPSleepScheduleModelManager *)self _locked_saveSleepSettings:settingsCopy];
    v13 = v12;
    if (dontNotify)
    {
      [v12 success];
      goto LABEL_10;
    }
  }

  else
  {
    v13 = [(HDSPSleepScheduleModelManager *)self _locked_saveSleepSettings:settingsCopy];
  }

  shouldNotify = [v13 shouldNotify];
  if ([v13 success] && shouldNotify)
  {
    changeEvaluation = [v13 changeEvaluation];
    [(HDSPSleepScheduleModelManager *)self _locked_notifyObserversForSleepSettingsChange:changeEvaluation];
  }

LABEL_10:
  if (error)
  {
    *error = [v13 error];
  }

  success = [v13 success];

  v17 = *MEMORY[0x277D85DE8];
  return success;
}

- (id)_locked_saveSleepSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  sleepSettings = self->_sleepSettings;
  if (NAEqualObjects())
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] no changes to save", &v12, 0xCu);
    }

    _locked_resetSleepSettings = +[HDSPSleepScheduleModelSaveResult emptyResult];
  }

  else if (settingsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_sleepSettings)
    {
      _locked_resetSleepSettings = [(HDSPSleepScheduleModelManager *)self _locked_updateSleepSettings:settingsCopy];
    }

    else
    {
      _locked_resetSleepSettings = [(HDSPSleepScheduleModelManager *)self _locked_setSleepSettings:settingsCopy];
    }
  }

  else
  {
    _locked_resetSleepSettings = [(HDSPSleepScheduleModelManager *)self _locked_resetSleepSettings];
  }

  v9 = _locked_resetSleepSettings;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_locked_setSleepSettings:(id)settings
{
  v29 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep settings were created", &buf, 0xCu);
  }

  v7 = [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryChangesBeforeSaving:settingsCopy];
  v8 = [v7 copy];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__21;
  v27 = __Block_byref_object_dispose__21;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__HDSPSleepScheduleModelManager__locked_setSleepSettings___block_invoke;
  v21[3] = &unk_279C7B6C8;
  v21[4] = self;
  v22 = v8;
  p_buf = &buf;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__HDSPSleepScheduleModelManager__locked_setSleepSettings___block_invoke_2;
  v19[3] = &unk_279C7D180;
  v19[4] = self;
  v9 = v22;
  v20 = v9;
  v18 = 0;
  v10 = [(HDSPSleepScheduleModelManager *)self _locked_updateModelWithBlock:v21 persistBlock:v19 error:&v18];
  v11 = v18;
  v12 = [HDSPSleepScheduleModelSaveResult alloc];
  v13 = *(*(&buf + 1) + 40);
  v14 = v13;
  if (!v13)
  {
    v14 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
  }

  v15 = [(HDSPSleepScheduleModelSaveResult *)v12 initWithSuccess:v10 changeEvaluation:v14 error:v11 shouldNotify:1];
  if (!v13)
  {
  }

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __58__HDSPSleepScheduleModelManager__locked_setSleepSettings___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = [*(*(a1 + 32) + 64) evaluateSleepSettingsAdd:*(*(a1 + 32) + 24)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__HDSPSleepScheduleModelManager__locked_setSleepSettings___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepStorage];
  v6 = [v5 saveSleepSettings:*(a1 + 40) error:a2];

  return v6;
}

- (id)_locked_updateSleepSettings:(id)settings
{
  v32 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = objc_opt_class();
    v6 = *&buf[4];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep settings were updated", buf, 0xCu);
  }

  changeSet = [settingsCopy changeSet];

  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = changeSet;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] applying changes: %{public}@", buf, 0x16u);
  }

  v11 = [(HKSPSleepSettings *)self->_sleepSettings mutableCopy];
  HKSPApplyChangesToObject();
  v12 = [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryChangesBeforeSaving:v11];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__21;
  v30 = __Block_byref_object_dispose__21;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__HDSPSleepScheduleModelManager__locked_updateSleepSettings___block_invoke;
  v25[3] = &unk_279C7B6C8;
  v25[4] = self;
  v26 = v12;
  v27 = buf;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__HDSPSleepScheduleModelManager__locked_updateSleepSettings___block_invoke_2;
  v23[3] = &unk_279C7D180;
  v23[4] = self;
  v13 = v26;
  v24 = v13;
  v22 = 0;
  v14 = [(HDSPSleepScheduleModelManager *)self _locked_updateModelWithBlock:v25 persistBlock:v23 error:&v22];
  v15 = v22;
  v16 = [HDSPSleepScheduleModelSaveResult alloc];
  v17 = *(*&buf[8] + 40);
  v18 = v17;
  if (!v17)
  {
    v18 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
  }

  v19 = [(HDSPSleepScheduleModelSaveResult *)v16 initWithSuccess:v14 changeEvaluation:v18 error:v15 shouldNotify:1];
  if (!v17)
  {
  }

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __61__HDSPSleepScheduleModelManager__locked_updateSleepSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [*(*(a1 + 32) + 64) evaluateSleepSettingsUpdate:*(*(a1 + 32) + 24)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__HDSPSleepScheduleModelManager__locked_updateSleepSettings___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepStorage];
  v6 = [*(a1 + 40) changeSet];
  v7 = [v5 saveSleepSettingsChanges:v6 error:a2];

  return v7;
}

- (id)_locked_resetSleepSettings
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep settings were reset", &v9, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277D62520]);
  v6 = [(HDSPSleepScheduleModelManager *)self _locked_setSleepSettings:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)notifyObserversForSleepSettingsChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDSPSleepScheduleModelManager_notifyObserversForSleepSettingsChange___block_invoke;
  v6[3] = &unk_279C7B2D0;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  [(HDSPSleepScheduleModelManager *)self _withLock:v6];
}

- (void)_locked_notifyObserversForSleepSettingsChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentContext = [environment currentContext];
  v7 = currentContext;
  if (currentContext)
  {
    v8 = currentContext;
  }

  else
  {
    v8 = objc_alloc_init(HDSPEnvironmentContext);
  }

  v9 = v8;

  v10 = [(HDSPEnvironmentContext *)v9 contextByApplyingChangeEvaluation:changeCopy];

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    source = [v10 source];
    *buf = 138543618;
    v24 = v12;
    v25 = 2114;
    v26 = source;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying observers for sleepSettings change from %{public}@", buf, 0x16u);
  }

  _locked_sleepScheduleModel = [(HDSPSleepScheduleModelManager *)self _locked_sleepScheduleModel];
  observers = self->_observers;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepSettingsChange___block_invoke;
  v20[3] = &unk_279C7D130;
  v20[4] = self;
  v21 = _locked_sleepScheduleModel;
  v22 = v10;
  v17 = v10;
  v18 = _locked_sleepScheduleModel;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __79__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepSettingsChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) environment];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepSettingsChange___block_invoke_2;
  v9[3] = &unk_279C7C050;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 48);
  v8 = v3;
  [v4 perform:v9 withContext:v7];
}

void __79__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepSettingsChange___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  if (v3)
  {
    v5 = a1[5];
    v6 = a1[6];

    [v4 sleepScheduleModelManager:v5 didUpdateSleepScheduleModel:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [a1[6] sleepSettings];
    [v7 sleepScheduleModelManager:v8 didUpdateSleepSettings:v9];
  }
}

- (id)_loadSleepEventRecord:(id *)record
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading event record...", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__21;
  v20 = __Block_byref_object_dispose__21;
  v21 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HDSPSleepScheduleModelManager__loadSleepEventRecord___block_invoke;
  v10[3] = &unk_279C7D0B8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &buf;
  [(HDSPSleepScheduleModelManager *)self _withLock:v10];
  if (record)
  {
    *record = *(*(&buf + 1) + 40);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __55__HDSPSleepScheduleModelManager__loadSleepEventRecord___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _locked_loadSleepEventRecord:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_locked_loadSleepEventRecord:(id *)record
{
  v20 = *MEMORY[0x277D85DE8];
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  sleepStorage = [environment sleepStorage];
  v7 = [sleepStorage loadSleepEventRecord:record];

  v8 = *record;
  v9 = HKSPLogForCategory();
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = objc_opt_class();
    v12 = *record;
    v16 = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v13 = v11;
    _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] failed to load event record with error %{public}@", &v16, 0x16u);
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v16 = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = v7;
    v13 = v17;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] loaded %{public}@", &v16, 0x16u);
  }

LABEL_7:
  objc_storeStrong(&self->_sleepEventRecord, v7);
  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)saveSleepEventRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__21;
  v18 = __Block_byref_object_dispose__21;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HDSPSleepScheduleModelManager_saveSleepEventRecord_error___block_invoke;
  v10[3] = &unk_279C7D158;
  v12 = &v20;
  v10[4] = self;
  v7 = recordCopy;
  v11 = v7;
  v13 = &v14;
  [(HDSPSleepScheduleModelManager *)self _withLock:v10];
  if (error)
  {
    *error = v15[5];
  }

  v8 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __60__HDSPSleepScheduleModelManager_saveSleepEventRecord_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _locked_saveSleepEventRecord:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)saveSleepEventRecord:(id)record error:(id *)error preNotifyBlock:(id)block
{
  recordCopy = record;
  blockCopy = block;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__21;
  v23 = __Block_byref_object_dispose__21;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__HDSPSleepScheduleModelManager_saveSleepEventRecord_error_preNotifyBlock___block_invoke;
  v14[3] = &unk_279C7D210;
  v17 = &v25;
  v14[4] = self;
  v10 = recordCopy;
  v15 = v10;
  v18 = &v19;
  v11 = blockCopy;
  v16 = v11;
  [(HDSPSleepScheduleModelManager *)self _withLock:v14];
  if (error)
  {
    *error = v20[5];
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __75__HDSPSleepScheduleModelManager_saveSleepEventRecord_error_preNotifyBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 _locked_saveSleepEventRecord:v3 error:&obj preNotifyBlock:v4];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (BOOL)_locked_saveSleepEventRecord:(id)record error:(id *)error preNotifyBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  blockCopy = block;
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentSource = [environment currentSource];

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v29 = objc_opt_class();
    v30 = 2114;
    v31 = recordCopy;
    v32 = 2114;
    v33 = currentSource;
    v13 = v29;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] saveSleepEventRecord: %{public}@ - %{public}@", buf, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    dontNotify = [currentSource dontNotify];
    v15 = [(HDSPSleepScheduleModelManager *)self _locked_saveSleepEventRecord:recordCopy];
    if (dontNotify)
    {
      shouldNotify = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = [(HDSPSleepScheduleModelManager *)self _locked_saveSleepEventRecord:recordCopy];
  }

  shouldNotify = [v15 shouldNotify];
LABEL_8:
  if ([v15 success])
  {
    v17 = blockCopy[2](blockCopy);
    if (shouldNotify)
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __83__HDSPSleepScheduleModelManager__locked_saveSleepEventRecord_error_preNotifyBlock___block_invoke;
      v25 = &unk_279C7D238;
      selfCopy = self;
      v27 = v15;
      v18 = [v17 addCompletionBlock:&v22];
    }
  }

  if (error)
  {
    *error = [v15 error];
  }

  success = [v15 success];

  v20 = *MEMORY[0x277D85DE8];
  return success;
}

void __83__HDSPSleepScheduleModelManager__locked_saveSleepEventRecord_error_preNotifyBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) changeEvaluation];
  [v1 _locked_notifyObserversForSleepEventRecordChange:v2];
}

- (id)_locked_saveSleepEventRecord:(id)record
{
  v14 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  sleepEventRecord = self->_sleepEventRecord;
  if (NAEqualObjects())
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] no changes to save", &v12, 0xCu);
    }

    _locked_resetSleepEventRecord = +[HDSPSleepScheduleModelSaveResult emptyResult];
  }

  else if (recordCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_sleepEventRecord)
    {
      _locked_resetSleepEventRecord = [(HDSPSleepScheduleModelManager *)self _locked_updateSleepEventRecord:recordCopy];
    }

    else
    {
      _locked_resetSleepEventRecord = [(HDSPSleepScheduleModelManager *)self _locked_setSleepEventRecord:recordCopy];
    }
  }

  else
  {
    _locked_resetSleepEventRecord = [(HDSPSleepScheduleModelManager *)self _locked_resetSleepEventRecord];
  }

  v9 = _locked_resetSleepEventRecord;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_locked_updateSleepEventRecord:(id)record
{
  v32 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = objc_opt_class();
    v6 = *&buf[4];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep event record was updated", buf, 0xCu);
  }

  changeSet = [recordCopy changeSet];

  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = changeSet;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] applying changes: %{public}@", buf, 0x16u);
  }

  v11 = [(HKSPSleepEventRecord *)self->_sleepEventRecord mutableCopy];
  HKSPApplyChangesToObject();
  v12 = [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryChangesBeforeSavingSleepEventRecord:v11];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__21;
  v30 = __Block_byref_object_dispose__21;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __64__HDSPSleepScheduleModelManager__locked_updateSleepEventRecord___block_invoke;
  v25[3] = &unk_279C7B6C8;
  v25[4] = self;
  v26 = v12;
  v27 = buf;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__HDSPSleepScheduleModelManager__locked_updateSleepEventRecord___block_invoke_2;
  v23[3] = &unk_279C7D180;
  v23[4] = self;
  v13 = v26;
  v24 = v13;
  v22 = 0;
  v14 = [(HDSPSleepScheduleModelManager *)self _locked_updateModelWithBlock:v25 persistBlock:v23 error:&v22];
  v15 = v22;
  v16 = [HDSPSleepScheduleModelSaveResult alloc];
  v17 = *(*&buf[8] + 40);
  v18 = v17;
  if (!v17)
  {
    v18 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
  }

  v19 = [(HDSPSleepScheduleModelSaveResult *)v16 initWithSuccess:v14 changeEvaluation:v18 error:v15 shouldNotify:1];
  if (!v17)
  {
  }

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __64__HDSPSleepScheduleModelManager__locked_updateSleepEventRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(*(a1 + 32) + 64) evaluateSleepRecordUpdate:*(*(a1 + 32) + 32)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

uint64_t __64__HDSPSleepScheduleModelManager__locked_updateSleepEventRecord___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepStorage];
  v6 = [*(a1 + 40) changeSet];
  v7 = [v5 saveSleepEventRecordChanges:v6 error:a2];

  return v7;
}

- (id)_locked_applyNecessaryChangesBeforeSavingSleepEventRecord:(id)record
{
  v4 = [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryChangesBeforeSaving:record];
  [(HDSPSleepScheduleModelManager *)self _locked_applyNecessarySleepSettingsChangesBeforeSavingSleepEventRecord:v4];

  return v4;
}

- (void)_locked_applyNecessarySleepSettingsChangesBeforeSavingSleepEventRecord:(id)record
{
  v26 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  _locked_sleepScheduleModel = [(HDSPSleepScheduleModelManager *)self _locked_sleepScheduleModel];
  sleepSettings = [_locked_sleepScheduleModel sleepSettings];
  v7 = [sleepSettings mutableCopy];

  changeSet = [recordCopy changeSet];
  if ([changeSet hasChangeForPropertyIdentifier:*MEMORY[0x277D62180]])
  {
    isAnySleepCoachingOnboardingCompleted = [recordCopy isAnySleepCoachingOnboardingCompleted];

    if (isAnySleepCoachingOnboardingCompleted)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = objc_opt_class();
        v11 = v25;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep coaching completed, enabling dnd during wind down", buf, 0xCu);
      }

      [v7 setSleepModeOptions:{objc_msgSend(v7, "sleepModeOptions") | 0x840}];
    }
  }

  else
  {
  }

  changeSet2 = [recordCopy changeSet];
  if ([changeSet2 hasChangeForPropertyIdentifier:*MEMORY[0x277D62308]])
  {
    isAnySleepTrackingOnboardingCompleted = [recordCopy isAnySleepTrackingOnboardingCompleted];

    if (isAnySleepTrackingOnboardingCompleted)
    {
      v14 = HKSPLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        *buf = 138543362;
        v25 = v15;
        v16 = v15;
        _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep tracking completed, enabling watch screen", buf, 0xCu);
      }

      [v7 setSleepModeOptions:{objc_msgSend(v7, "sleepModeOptions") | 4}];
    }
  }

  else
  {
  }

  changeSet3 = [v7 changeSet];
  changes = [changeSet3 changes];
  v19 = [changes count];

  if (v19)
  {
    environment = [(HDSPSleepScheduleModelManager *)self environment];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __104__HDSPSleepScheduleModelManager__locked_applyNecessarySleepSettingsChangesBeforeSavingSleepEventRecord___block_invoke;
    v22[3] = &unk_279C7B2D0;
    v22[4] = self;
    v23 = v7;
    [environment perform:v22 withSource:self];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_locked_setSleepEventRecord:(id)record
{
  v29 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep event record was created", &buf, 0xCu);
  }

  v7 = [(HDSPSleepScheduleModelManager *)self _locked_applyNecessaryChangesBeforeSaving:recordCopy];
  v8 = [v7 copy];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__21;
  v27 = __Block_byref_object_dispose__21;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__HDSPSleepScheduleModelManager__locked_setSleepEventRecord___block_invoke;
  v21[3] = &unk_279C7B6C8;
  v21[4] = self;
  v22 = v8;
  p_buf = &buf;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__HDSPSleepScheduleModelManager__locked_setSleepEventRecord___block_invoke_2;
  v19[3] = &unk_279C7D180;
  v19[4] = self;
  v9 = v22;
  v20 = v9;
  v18 = 0;
  v10 = [(HDSPSleepScheduleModelManager *)self _locked_updateModelWithBlock:v21 persistBlock:v19 error:&v18];
  v11 = v18;
  v12 = [HDSPSleepScheduleModelSaveResult alloc];
  v13 = *(*(&buf + 1) + 40);
  v14 = v13;
  if (!v13)
  {
    v14 = +[HDSPSleepScheduleModelChangeEvaluation emptyEvaluation];
  }

  v15 = [(HDSPSleepScheduleModelSaveResult *)v12 initWithSuccess:v10 changeEvaluation:v14 error:v11 shouldNotify:1];
  if (!v13)
  {
  }

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __61__HDSPSleepScheduleModelManager__locked_setSleepEventRecord___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = [*(*(a1 + 32) + 64) evaluateSleepRecordAdd:*(*(a1 + 32) + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__HDSPSleepScheduleModelManager__locked_setSleepEventRecord___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) environment];
  v5 = [v4 sleepStorage];
  v6 = [v5 saveSleepEventRecord:*(a1 + 40) error:a2];

  return v6;
}

- (id)_locked_resetSleepEventRecord
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep event record was reset", &v9, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277D624D8]);
  v6 = [(HDSPSleepScheduleModelManager *)self _locked_setSleepEventRecord:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_locked_updateModelWithBlock:(id)block persistBlock:(id)persistBlock error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v15 = 0;
  v8 = (*(persistBlock + 2))(persistBlock, &v15);
  v9 = v15;
  if (v8)
  {
    blockCopy[2](blockCopy);
  }

  else if (error)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v9;
      v14 = v13;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] save failed with error: %{public}@", buf, 0x16u);
    }

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D621B0] code:1 userInfo:0];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_locked_applyNecessaryChangesBeforeSaving:(id)saving
{
  v4 = [saving mutableCopy];
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v7 = currentDateProvider[2]();
  [v4 setLastModifiedDate:v7];

  return v4;
}

- (void)notifyObserversForSleepEventRecordChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__HDSPSleepScheduleModelManager_notifyObserversForSleepEventRecordChange___block_invoke;
  v6[3] = &unk_279C7B2D0;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  [(HDSPSleepScheduleModelManager *)self _withLock:v6];
}

- (void)_locked_notifyObserversForSleepEventRecordChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentContext = [environment currentContext];
  v7 = currentContext;
  if (currentContext)
  {
    v8 = currentContext;
  }

  else
  {
    v8 = objc_alloc_init(HDSPEnvironmentContext);
  }

  v9 = v8;

  v10 = [(HDSPEnvironmentContext *)v9 contextByApplyingChangeEvaluation:changeCopy];

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    source = [v10 source];
    *buf = 138543618;
    v24 = v12;
    v25 = 2114;
    v26 = source;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying observers for sleepEventRecord change from %{public}@", buf, 0x16u);
  }

  _locked_sleepScheduleModel = [(HDSPSleepScheduleModelManager *)self _locked_sleepScheduleModel];
  observers = self->_observers;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepEventRecordChange___block_invoke;
  v20[3] = &unk_279C7D130;
  v20[4] = self;
  v21 = _locked_sleepScheduleModel;
  v22 = v10;
  v17 = v10;
  v18 = _locked_sleepScheduleModel;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __82__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepEventRecordChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) environment];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepEventRecordChange___block_invoke_2;
  v9[3] = &unk_279C7C050;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 48);
  v8 = v3;
  [v4 perform:v9 withContext:v7];
}

void __82__HDSPSleepScheduleModelManager__locked_notifyObserversForSleepEventRecordChange___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_respondsToSelector();
  v4 = a1[4];
  if (v3)
  {
    v5 = a1[5];
    v6 = a1[6];

    [v4 sleepScheduleModelManager:v5 didUpdateSleepScheduleModel:v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [a1[6] sleepEventRecord];
    [v7 sleepScheduleModelManager:v8 didUpdateSleepEventRecord:v9];
  }
}

- (NSString)providerIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)upcomingEventsDueAfterDate:(id)date
{
  v4 = [(HDSPSleepScheduleModelManager *)self _earliestDateToScheduleEventsForDate:date];
  sleepScheduleModel = [(HDSPSleepScheduleModelManager *)self sleepScheduleModel];
  v6 = [sleepScheduleModel upcomingEventsDueAfterDate:v4];

  return v6;
}

- (id)_earliestDateToScheduleEventsForDate:(id)date
{
  dateCopy = date;
  sleepEventRecord = [(HDSPSleepScheduleModelManager *)self sleepEventRecord];
  wakeUpAlarmDismissedDate = [sleepEventRecord wakeUpAlarmDismissedDate];

  if ([wakeUpAlarmDismissedDate hksp_isAfterDate:dateCopy])
  {
    v7 = wakeUpAlarmDismissedDate;
  }

  else
  {
    v7 = dateCopy;
  }

  v8 = v7;

  return v7;
}

- (void)significantTimeChangeDetected:(id)detected
{
  v62 = *MEMORY[0x277D85DE8];
  detectedCopy = detected;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v61 = objc_opt_class();
    v5 = v61;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] significantTimeChangeDetected", buf, 0xCu);
  }

  environment = [(HDSPSleepScheduleModelManager *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v8 = currentDateProvider[2]();

  sleepSchedule = [(HDSPSleepScheduleModelManager *)self sleepSchedule];
  v10 = [sleepSchedule mutableCopy];

  sleepSettings = [(HDSPSleepScheduleModelManager *)self sleepSettings];
  v12 = [sleepSettings mutableCopy];

  sleepEventRecord = [(HDSPSleepScheduleModelManager *)self sleepEventRecord];
  v14 = [sleepEventRecord mutableCopy];

  lastModifiedDate = [v10 lastModifiedDate];
  v16 = [lastModifiedDate hksp_isAfterDate:v8];

  if (v16)
  {
    v17 = HKSPLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138543362;
      v61 = v18;
      v19 = v18;
      _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting lastModifiedDate on schedule to current date because it's in the future", buf, 0xCu);
    }

    [v10 setLastModifiedDate:v8];
  }

  lastModifiedDate2 = [v12 lastModifiedDate];
  v21 = [lastModifiedDate2 hksp_isAfterDate:v8];

  if (v21)
  {
    v22 = HKSPLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *buf = 138543362;
      v61 = v23;
      v24 = v23;
      _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting lastModifiedDate on settings to current date because it's in the future", buf, 0xCu);
    }

    [v12 setLastModifiedDate:v8];
  }

  wakeUpEarlyNotificationConfirmedDate = [v14 wakeUpEarlyNotificationConfirmedDate];
  LODWORD(v26) = [wakeUpEarlyNotificationConfirmedDate hksp_isAfterDate:v8];

  if (v26)
  {
    v27 = HKSPLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      *buf = 138543362;
      v61 = v28;
      v29 = v28;
      _os_log_impl(&dword_269B11000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetting wakeUpEarlyNotificationConfirmedDate because it's in the future", buf, 0xCu);
    }

    [v14 setWakeUpEarlyNotificationConfirmedDate:0];
    [v14 setWakeUpConfirmedUntilDate:0];
  }

  wakeUpOverriddenDate = [v14 wakeUpOverriddenDate];
  v31 = [wakeUpOverriddenDate hksp_isAfterDate:v8];

  if (v31)
  {
    v26 = HKSPLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      *buf = 138543362;
      v61 = v32;
      v33 = v32;
      _os_log_impl(&dword_269B11000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetting wakeUpOverriddenDate because it's in the future", buf, 0xCu);
    }

    [v14 setWakeUpOverriddenDate:0];
    [v14 setWakeUpConfirmedUntilDate:0];
    LOBYTE(v26) = 1;
  }

  lastModifiedDate3 = [v14 lastModifiedDate];
  v35 = [lastModifiedDate3 hksp_isAfterDate:v8];

  if (v35)
  {
    v26 = HKSPLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      *buf = 138543362;
      v61 = v36;
      v37 = v36;
      _os_log_impl(&dword_269B11000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting lastModifiedDate on event record to current date because it's in the future", buf, 0xCu);
    }

    [v14 setLastModifiedDate:v8];
    LOBYTE(v26) = 1;
  }

  wakeUpAlarmDismissedDate = [v14 wakeUpAlarmDismissedDate];
  v39 = [wakeUpAlarmDismissedDate hksp_isAfterDate:v8];

  if (v39)
  {
    v26 = HKSPLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      *buf = 138543362;
      v61 = v40;
      v41 = v40;
      _os_log_impl(&dword_269B11000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting wakeUpAlarmDismissedDate on event record to current date because it's in the future", buf, 0xCu);
    }

    [v14 setWakeUpAlarmDismissedDate:v8];
    LOBYTE(v26) = 1;
  }

  goodMorningDismissedDate = [v14 goodMorningDismissedDate];
  v43 = [goodMorningDismissedDate hksp_isAfterDate:v8];

  if (v43)
  {
    v26 = HKSPLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      *buf = 138543362;
      v61 = v44;
      v45 = v44;
      _os_log_impl(&dword_269B11000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] setting goodMorningDismissedDate on event record to current date because it's in the future", buf, 0xCu);
    }

    [v14 setGoodMorningDismissedDate:v8];
    LOBYTE(v26) = 1;
  }

  environment2 = [(HDSPSleepScheduleModelManager *)self environment];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __63__HDSPSleepScheduleModelManager_significantTimeChangeDetected___block_invoke;
  v53[3] = &unk_279C7D260;
  v57 = v16;
  v53[4] = self;
  v54 = v10;
  v58 = v21;
  v59 = v26;
  v55 = v12;
  v56 = v14;
  v47 = v14;
  v48 = v12;
  v49 = v10;
  [environment2 perform:v53 withSource:v52];

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HDSPSleepScheduleModelManager_significantTimeChangeDetected___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 64) == 1)
  {
    result = [*(result + 32) saveSleepSchedule:*(result + 40) error:0];
  }

  if (*(v1 + 65) == 1)
  {
    result = [*(v1 + 32) saveSleepSettings:*(v1 + 48) error:0];
  }

  if (*(v1 + 66) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 56);

    return [v2 saveSleepEventRecord:v3 error:0];
  }

  return result;
}

- (void)observedApplicationDidUninstall:(id)uninstall
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] observedApplicationDidUninstall", v7, 0xCu);
  }

  if ([(HDSPSleepScheduleModelManager *)self _shouldTurnOffWatchSleepFeatures])
  {
    [(HDSPSleepScheduleModelManager *)self _turnOffWatchSleepFeatures];
  }

  if ([(HDSPSleepScheduleModelManager *)self _shouldTurnOffSleepSchedule])
  {
    [(HDSPSleepScheduleModelManager *)self _turnOffSleepSchedule];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldTurnOffWatchSleepFeatures
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  if ([behavior isAppleWatch])
  {
    systemMonitor = [WeakRetained systemMonitor];
    applicationWorkspaceMonitor = [systemMonitor applicationWorkspaceMonitor];
    v6 = [applicationWorkspaceMonitor isApplicationInstalled:*MEMORY[0x277D62090]] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_turnOffWatchSleepFeatures
{
  v14 = *MEMORY[0x277D85DE8];
  sleepSettings = [(HDSPSleepScheduleModelManager *)self sleepSettings];
  if ([sleepSettings watchSleepFeaturesEnabled])
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = objc_opt_class();
      v5 = v13;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] turning off watch sleep features since sleep app was removed", buf, 0xCu);
    }

    v6 = [sleepSettings mutableCopy];
    [v6 setWatchSleepFeaturesEnabled:0];
    environment = [(HDSPSleepScheduleModelManager *)self environment];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__HDSPSleepScheduleModelManager__turnOffWatchSleepFeatures__block_invoke;
    v10[3] = &unk_279C7B2D0;
    v10[4] = self;
    v11 = v6;
    v8 = v6;
    [environment perform:v10 withSource:self];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __59__HDSPSleepScheduleModelManager__turnOffWatchSleepFeatures__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 saveSleepSettings:v3 error:&v11];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      v10 = v9;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to turn off watch sleep features with error %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldTurnOffSleepSchedule
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  if ([behavior isAppleWatch])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    systemMonitor = [WeakRetained systemMonitor];
    applicationWorkspaceMonitor = [systemMonitor applicationWorkspaceMonitor];
    v4 = [applicationWorkspaceMonitor isApplicationInstalled:*MEMORY[0x277CCE3A8]] ^ 1;
  }

  return v4;
}

- (void)_turnOffSleepSchedule
{
  sleepSettings = [(HDSPSleepScheduleModelManager *)self sleepSettings];
  v4 = [sleepSettings mutableCopy];
  [v4 setShareAcrossDevices:0];
  environment = [(HDSPSleepScheduleModelManager *)self environment];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDSPSleepScheduleModelManager__turnOffSleepSchedule__block_invoke;
  v7[3] = &unk_279C7B2D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [environment perform:v7 withSource:self];
}

void __54__HDSPSleepScheduleModelManager__turnOffSleepSchedule__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v21 = 0;
  v4 = [v2 saveSleepSettings:v3 error:&v21];
  v5 = v21;
  if (v4)
  {
    v6 = [*(a1 + 32) sleepSchedule];
    if ([v6 isEnabled])
    {
      v7 = HKSPLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = objc_opt_class();
        *buf = 138543362;
        v23 = v9;
        v10 = v9;
        _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] turning off sleep schedule since Health app was removed", buf, 0xCu);
      }

      v11 = [v6 mutableCopy];
      [v11 setEnabled:0];
      v12 = *(a1 + 32);
      v20 = v5;
      v13 = [v12 saveSleepSchedule:v11 error:&v20];
      v14 = v20;

      if ((v13 & 1) == 0)
      {
        v15 = HKSPLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 32);
          v18 = objc_opt_class();
          *buf = 138543618;
          v23 = v18;
          v24 = 2114;
          v25 = v14;
          v19 = v18;
          _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] failed to turn off sleep schedule with error %{public}@", buf, 0x16u);
        }
      }

      v5 = v14;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)sleepStorageDidChangeExternally:(id)externally
{
  v13 = *MEMORY[0x277D85DE8];
  externallyCopy = externally;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepStorageDidChangeExternally", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HDSPSleepScheduleModelManager_sleepStorageDidChangeExternally___block_invoke;
  v9[3] = &unk_279C7B2D0;
  v9[4] = self;
  v10 = externallyCopy;
  v7 = externallyCopy;
  [(HDSPSleepScheduleModelManager *)self _withLock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __65__HDSPSleepScheduleModelManager_sleepStorageDidChangeExternally___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v19 = 0;
  v3 = [v2 _locked_loadSleepScheduleModel:&v19];
  v4 = v19;
  if (v4)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      *buf = 138543618;
      v21 = v7;
      v22 = 2114;
      v23 = v4;
      v8 = v7;
      _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] failed to load sleep schedule after sync with error %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = v9[8];
    v11 = [v9 _locked_sleepScheduleModel];
    v12 = [v10 evaluateSleepScheduleModelChange:v11];

    v13 = [*(a1 + 32) environment];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__HDSPSleepScheduleModelManager_sleepStorageDidChangeExternally___block_invoke_2;
    v17[3] = &unk_279C7B2D0;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17[4] = v14;
    v18 = v12;
    v5 = v12;
    [v13 perform:v17 withSource:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v2 = MEMORY[0x277CCACA8];
  sleepScheduleModel = [(HDSPSleepScheduleModelManager *)self sleepScheduleModel];
  v4 = [v2 stringWithFormat:@"Sleep Schedule Model: %@", sleepScheduleModel];

  return v4;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSleepEventDelegate)sleepEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepEventDelegate);

  return WeakRetained;
}

@end