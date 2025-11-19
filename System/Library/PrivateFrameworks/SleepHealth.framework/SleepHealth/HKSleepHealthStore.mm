@interface HKSleepHealthStore
+ (BOOL)_areAllSamplesSleepTrackingSamples:(id)a3;
+ (NSString)taskIdentifier;
- (HKSleepHealthStore)initWithHealthStore:(id)a3;
- (void)saveSleepTrackingSamples:(id)a3 replacingSamplesInDateInterval:(id)a4 completion:(id)a5;
- (void)startSleepTrackingSession;
- (void)stopSleepTrackingSession;
- (void)updateCurrentSleepSchedules:(id)a3 sleepDurationGoal:(id)a4 completion:(id)a5;
@end

@implementation HKSleepHealthStore

+ (NSString)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HKSleepHealthStore)initWithHealthStore:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HKSleepHealthStore;
  v6 = [(HKSleepHealthStore *)&v15 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D2C938] serialDispatchQueueSchedulerWithName:@"com.apple.HKSleepHealthStore"];
    scheduler = v6->_scheduler;
    v6->_scheduler = v7;

    objc_storeStrong(&v6->_healthStore, a3);
    v9 = objc_alloc(MEMORY[0x277CCDAA0]);
    v10 = [objc_opt_class() taskIdentifier];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v9 initWithHealthStore:v5 taskIdentifier:v10 exportedObject:v6 taskUUID:v11];
    proxyProvider = v6->_proxyProvider;
    v6->_proxyProvider = v12;
  }

  return v6;
}

- (void)updateCurrentSleepSchedules:(id)a3 sleepDurationGoal:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 138543618;
    v27 = objc_opt_class();
    v28 = 2112;
    v29 = v8;
    v13 = v27;
    _os_log_impl(&dword_269BCF000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating current sleep schedules: %@", buf, 0x16u);
  }

  v14 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v10];

  proxyProvider = self->_proxyProvider;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__HKSleepHealthStore_updateCurrentSleepSchedules_sleepDurationGoal_completion___block_invoke;
  v22[3] = &unk_279C82580;
  v23 = v8;
  v24 = v9;
  v25 = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__HKSleepHealthStore_updateCurrentSleepSchedules_sleepDurationGoal_completion___block_invoke_2;
  v20[3] = &unk_279C825A8;
  v21 = v25;
  v16 = v25;
  v17 = v9;
  v18 = v8;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v22 errorHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startSleepTrackingSession
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_269BCF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] starting a sleep tracking session", buf, 0xCu);
  }

  proxyProvider = self->_proxyProvider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HKSleepHealthStore_startSleepTrackingSession__block_invoke_2;
  v8[3] = &unk_279C825F0;
  v8[4] = self;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_0 errorHandler:v8];
  v7 = *MEMORY[0x277D85DE8];
}

void __47__HKSleepHealthStore_startSleepTrackingSession__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_269BCF000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to start a sleep tracking session with error: %@", &v9, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopSleepTrackingSession
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_269BCF000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] stopping a sleep tracking session", buf, 0xCu);
  }

  proxyProvider = self->_proxyProvider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HKSleepHealthStore_stopSleepTrackingSession__block_invoke_2;
  v8[3] = &unk_279C825F0;
  v8[4] = self;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_300 errorHandler:v8];
  v7 = *MEMORY[0x277D85DE8];
}

void __46__HKSleepHealthStore_stopSleepTrackingSession__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_269BCF000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to stop a sleep tracking session with error: %@", &v9, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_areAllSamplesSleepTrackingSamples:(id)a3
{
  v3 = MEMORY[0x277CCD0C0];
  v4 = *MEMORY[0x277CCBAB8];
  v5 = a3;
  v6 = [v3 categoryTypeForIdentifier:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HKSleepHealthStore__areAllSamplesSleepTrackingSamples___block_invoke;
  v9[3] = &unk_279C82618;
  v10 = v6;
  v7 = v6;
  LOBYTE(v4) = [v5 hk_allObjectsPassTest:v9];

  return v4;
}

uint64_t __57__HKSleepHealthStore__areAllSamplesSleepTrackingSamples___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sampleType];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)saveSleepTrackingSamples:(id)a3 replacingSamplesInDateInterval:(id)a4 completion:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = MEMORY[0x277CCC320];
  v12 = *MEMORY[0x277CCC320];
  v13 = os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = v12;
    *buf = 138543874;
    v34 = objc_opt_class();
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v8;
    v15 = v34;
    v16 = "[%{public}@] replacing sleep samples in %@ with sleep tracking samples: %@";
    v17 = v14;
    v18 = 32;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = v12;
    *buf = 138543618;
    v34 = objc_opt_class();
    v35 = 2112;
    v36 = v8;
    v15 = v34;
    v16 = "[%{public}@] saving sleep tracking samples: %@";
    v17 = v14;
    v18 = 22;
  }

  _os_log_impl(&dword_269BCF000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);

LABEL_7:
  if ([objc_opt_class() _areAllSamplesSleepTrackingSamples:v8])
  {
    v19 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v10];

    proxyProvider = self->_proxyProvider;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __89__HKSleepHealthStore_saveSleepTrackingSamples_replacingSamplesInDateInterval_completion___block_invoke;
    v29[3] = &unk_279C82580;
    v30 = v8;
    v31 = v9;
    v32 = v19;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __89__HKSleepHealthStore_saveSleepTrackingSamples_replacingSamplesInDateInterval_completion___block_invoke_2;
    v27[3] = &unk_279C825A8;
    v10 = v32;
    v28 = v10;
    [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v29 errorHandler:v27];

    v21 = v30;
  }

  else
  {
    _HKInitializeLogging();
    v22 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v24 = v22;
      v25 = objc_opt_class();
      *buf = 138543362;
      v34 = v25;
      v26 = v25;
      _os_log_error_impl(&dword_269BCF000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] attempted to save non-sleep samples", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"attempted to save non-sleep samples"];
    (*(v10 + 2))(v10, 0, v21);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end