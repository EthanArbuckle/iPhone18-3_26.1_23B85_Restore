@interface HKSHSleepApneaControl
- (BOOL)forceBreathingDisturbanceAnalysisWithError:(id *)a3;
- (BOOL)overrideTimeIntervalAndResetActivityWithTimeInterval:(double)a3 error:(id *)a4;
- (HKSHSleepApneaControl)initWithHealthStore:(id)a3;
- (id)getDateIntervalOfLastAnalysis;
- (id)getSamplesFromLastAnalysisWithError:(id *)a3;
@end

@implementation HKSHSleepApneaControl

- (HKSHSleepApneaControl)initWithHealthStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HKSHSleepApneaControl;
  v6 = [(HKSHSleepApneaControl *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v8 initWithHealthStore:v5 taskIdentifier:@"HKSHSleepApneaControlServer" exportedObject:v7 taskUUID:v9];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
    v12 = objc_alloc_init(MEMORY[0x277CCDA98]);
    [(HKTaskServerProxyProvider *)v7->_proxyProvider setTaskConfiguration:v12];
  }

  return v7;
}

- (BOOL)forceBreathingDisturbanceAnalysisWithError:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HKSHSleepApneaControl_forceBreathingDisturbanceAnalysisWithError___block_invoke_2;
  v10[3] = &unk_279C824E8;
  v10[4] = &v11;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:&__block_literal_global errorHandler:v10];
  v5 = v12[5];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = v12[5] == 0;
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (BOOL)overrideTimeIntervalAndResetActivityWithTimeInterval:(double)a3 error:(id *)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  proxyProvider = self->_proxyProvider;
  v11[4] = &v13;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HKSHSleepApneaControl_overrideTimeIntervalAndResetActivityWithTimeInterval_error___block_invoke;
  v12[3] = &__block_descriptor_40_e39_v16__0___HKSHSleepApneaControlServer__8l;
  *&v12[4] = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HKSHSleepApneaControl_overrideTimeIntervalAndResetActivityWithTimeInterval_error___block_invoke_2;
  v11[3] = &unk_279C824E8;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
  v6 = v14[5];
  v7 = v6;
  if (v6)
  {
    if (a4)
    {
      v8 = v6;
      *a4 = v7;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v9 = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)getSamplesFromLastAnalysisWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  proxyProvider = self->_proxyProvider;
  v10[4] = &v18;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HKSHSleepApneaControl_getSamplesFromLastAnalysisWithError___block_invoke;
  v11[3] = &unk_279C82558;
  v11[4] = self;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HKSHSleepApneaControl_getSamplesFromLastAnalysisWithError___block_invoke_3;
  v10[3] = &unk_279C824E8;
  [(HKTaskServerProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v11 errorHandler:v10];
  v5 = v19[5];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __61__HKSHSleepApneaControl_getSamplesFromLastAnalysisWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 getDateIntervalOfLastAnalysis];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HKSHSleepApneaControl_getSamplesFromLastAnalysisWithError___block_invoke_2;
  v6[3] = &unk_279C82530;
  v6[4] = *(a1 + 40);
  [v4 remote_getBreathingDisturbanceSamplesInDateInterval:v5 includeTimeZones:1 completion:v6];
}

- (id)getDateIntervalOfLastAnalysis
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCD570]) initWithCategory:2 domainName:@"com.apple.health.Sleep.BreathingDisturbanceAnalysis" healthStore:self->_healthStore];
  v38 = 0;
  v4 = [v3 numberForKey:@"HDSHBreathingDisturbanceAnalysisSchedulerSuccessfulAnalysisAttemptCountKey" error:&v38];
  v5 = v38;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (!os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v7 = 0;
      goto LABEL_13;
    }

    v14 = v6;
    v26 = objc_opt_class();
    *buf = 138543618;
    v40 = v26;
    v41 = 2112;
    v42 = v5;
    v16 = v26;
    v17 = "[%{public}@] Error fetching count of successful analysis attempts: %@";
    v18 = v14;
    v19 = 22;
LABEL_17:
    _os_log_error_impl(&dword_269BCF000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);

    goto LABEL_3;
  }

  if (!v4)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC320];
    if (!os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v14 = v13;
    v15 = objc_opt_class();
    *buf = 138543362;
    v40 = v15;
    v16 = v15;
    v17 = "[%{public}@] No analysis has been performed yet; not returning date interval from the most recent analysis.";
    v18 = v14;
    v19 = 12;
    goto LABEL_17;
  }

  v8 = objc_alloc(MEMORY[0x277CCD438]);
  v9 = [v8 initWithFeatureIdentifier:*MEMORY[0x277CCC0D8] healthStore:self->_healthStore];
  v37 = 0;
  v10 = [v9 featureOnboardingRecordWithError:&v37];
  v11 = v37;
  if (v11)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC320];
    if (!os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v28 = v12;
    v34 = objc_opt_class();
    *buf = 138543618;
    v40 = v34;
    v41 = 2112;
    v42 = v11;
    v30 = v34;
    v31 = "[%{public}@] Unable to fetch onboarding record with error: %@";
    v32 = v28;
    v33 = 22;
LABEL_21:
    _os_log_error_impl(&dword_269BCF000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);

    goto LABEL_7;
  }

  if (v10)
  {
    v36 = [v10 earliestDateOfAnyOnboardingCompletion];
    v20 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v21 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v21 setDay:{30 * objc_msgSend(v4, "integerValue") - 30}];
    v35 = v20;
    v22 = [v20 dateByAddingComponents:v21 toDate:v36 options:0];
    [v21 setDay:{30 * objc_msgSend(v4, "integerValue")}];
    v23 = [v20 dateByAddingComponents:v21 toDate:v36 options:0];
    v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v22 endDate:v23];

    goto LABEL_12;
  }

  _HKInitializeLogging();
  v27 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
  {
    v28 = v27;
    v29 = objc_opt_class();
    *buf = 138543362;
    v40 = v29;
    v30 = v29;
    v31 = "[%{public}@] Fetched nil onboarding record; cannot calculate date interval.";
    v32 = v28;
    v33 = 12;
    goto LABEL_21;
  }

LABEL_7:
  v7 = 0;
LABEL_12:

LABEL_13:
  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

@end