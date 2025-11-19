@interface HDSHWidgetSchedulingManager
+ (void)_logSleepSampleStatistics:(id)a3;
- (HDSHWidgetSchedulingManager)initWithProfile:(id)a3;
- (void)_reloadWidgetsWithReasons:(unint64_t)a3;
- (void)_startObservingSleep;
- (void)_stopObservingSleep;
- (void)_updateWidgetRelevances;
- (void)daemonReady:(id)a3;
- (void)dealloc;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
@end

@implementation HDSHWidgetSchedulingManager

- (HDSHWidgetSchedulingManager)initWithProfile:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HDSHWidgetSchedulingManager;
  v5 = [(HDSHWidgetSchedulingManager *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc(MEMORY[0x277D62528]);
    v10 = HKSPGenerateSleepStoreIdentifier();
    v11 = [v9 initWithIdentifier:v10 healthStore:0 options:8];
    sleepStore = v6->_sleepStore;
    v6->_sleepStore = v11;

    objc_initWeak(&location, v6);
    v13 = objc_alloc(MEMORY[0x277D62540]);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __47__HDSHWidgetSchedulingManager_initWithProfile___block_invoke;
    v22 = &unk_279C831A0;
    objc_copyWeak(&v23, &location);
    v14 = [v13 initWithInterval:&v19 executeBlock:1.0];
    reloadThrottler = v6->_reloadThrottler;
    v6->_reloadThrottler = v14;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v17 = [WeakRetained daemon];
    [v17 registerDaemonReadyObserver:v6 queue:v6->_queue];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __47__HDSHWidgetSchedulingManager_initWithProfile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadWidgetsWithReasons:1];
  [WeakRetained _updateWidgetRelevances];
}

- (void)dealloc
{
  [(HDSHWidgetSchedulingManager *)self _stopObservingSleep];
  v3.receiver = self;
  v3.super_class = HDSHWidgetSchedulingManager;
  [(HDSHWidgetSchedulingManager *)&v3 dealloc];
}

- (void)_startObservingSleep
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained dataManager];
  v4 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  [v3 addObserver:self forDataType:v4];
}

- (void)_stopObservingSleep
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained dataManager];
  v4 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  [v3 removeObserver:self forDataType:v4];
}

- (void)_reloadWidgetsWithReasons:(unint64_t)a3
{
  v4 = [(HKSPSleepStore *)self->_sleepStore widgetManager];
  [v4 reloadWidgetsWithReason:a3];
}

- (void)_updateWidgetRelevances
{
  v2 = [(HKSPSleepStore *)self->_sleepStore widgetManager];
  [v2 invalidateRelevances];
}

- (void)daemonReady:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] daemonReady", buf, 0xCu);
  }

  [(HDSHWidgetSchedulingManager *)self _startObservingSleep];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__HDSHWidgetSchedulingManager_daemonReady___block_invoke;
  v11[3] = &unk_279C830E0;
  v11[4] = self;
  [v8 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __43__HDSHWidgetSchedulingManager_daemonReady___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v5 = *&v8[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] first unlock occurred", v8, 0xCu);
  }

  result = [*(a1 + 32) _reloadWidgetsWithReasons:{2, *v8}];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v5 = [a3 na_filter:{&__block_literal_global_0, a4}];
  if ([v5 count])
  {
    [objc_opt_class() _logSleepSampleStatistics:v5];
    [(HKSPThrottler *)self->_reloadThrottler execute];
  }
}

uint64_t __51__HDSHWidgetSchedulingManager_samplesAdded_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 categoryType];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCBAB8]];

  return v8;
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  if ([a3 na_any:{&__block_literal_global_307, a4}])
  {
    reloadThrottler = self->_reloadThrottler;

    [(HKSPThrottler *)reloadThrottler execute];
  }
}

uint64_t __64__HDSHWidgetSchedulingManager_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCBAB8]];

  return v3;
}

+ (void)_logSleepSampleStatistics:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__HDSHWidgetSchedulingManager__logSleepSampleStatistics___block_invoke;
  v25[3] = &unk_279C83208;
  v25[4] = &v38;
  v25[5] = &v34;
  v25[6] = &v26;
  v25[7] = &v30;
  [v3 na_each:v25];
  _HKInitializeLogging();
  v4 = MEMORY[0x277CCC320];
  v5 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v3 count];
    *buf = 138543618;
    v43 = v6;
    v44 = 2048;
    v45 = v7;
    _os_log_impl(&dword_269C02000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] %ld sleep samples added", buf, 0x16u);
  }

  _HKInitializeLogging();
  v8 = *v4;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v39[3];
    *buf = 138543618;
    v43 = v9;
    v44 = 2048;
    v45 = v10;
    v11 = v9;
    _os_log_impl(&dword_269C02000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] in bed: %ld", buf, 0x16u);
  }

  _HKInitializeLogging();
  v12 = *v4;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v35[3];
    *buf = 138543618;
    v43 = v13;
    v44 = 2048;
    v45 = v14;
    v15 = v13;
    _os_log_impl(&dword_269C02000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] asleep: %ld", buf, 0x16u);
  }

  _HKInitializeLogging();
  v16 = *v4;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = v31[3];
    *buf = 138543618;
    v43 = v17;
    v44 = 2048;
    v45 = v18;
    v19 = v17;
    _os_log_impl(&dword_269C02000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep stages: %ld", buf, 0x16u);
  }

  _HKInitializeLogging();
  v20 = *v4;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = v27[3];
    *buf = 138543618;
    v43 = v21;
    v44 = 2048;
    v45 = v22;
    v23 = v21;
    _os_log_impl(&dword_269C02000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] first party asleep: %ld", buf, 0x16u);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __57__HDSHWidgetSchedulingManager__logSleepSampleStatistics___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (![v12 value])
  {
    v10 = 32;
    goto LABEL_9;
  }

  v3 = HKCategoryValueSleepAnalysisAsleepValues();
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "value")}];
  v5 = [v3 containsObject:v4];

  v6 = v12;
  if (!v5)
  {
    goto LABEL_11;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v7 = [v12 sourceRevision];
  v8 = [v7 source];
  v9 = [v8 _isAppleWatch];

  if (v9)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  if ([v12 value] == 5 || objc_msgSend(v12, "value") == 3)
  {
    v10 = 56;
LABEL_9:
    v6 = v12;
LABEL_10:
    ++*(*(*(a1 + v10) + 8) + 24);
    goto LABEL_11;
  }

  v11 = [v12 value] == 4;
  v6 = v12;
  if (v11)
  {
    v10 = 56;
    goto LABEL_10;
  }

LABEL_11:
}

@end