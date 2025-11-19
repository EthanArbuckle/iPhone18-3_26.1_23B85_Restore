@interface HDSHBreathingDisturbanceAnalyzer
+ (BOOL)_areSamplesInSameSleepDayWithFirstSample:(id)a3 secondSample:(id)a4 calendar:(id)a5;
+ (BOOL)isAnalysisNeededWithAnchorDate:(id)a3 referenceDate:(id)a4 calendar:(id)a5;
+ (id)_sampleWithHighestDurationWithFirstSample:(id)a3 secondSample:(id)a4;
+ (id)constructAnalysisDateIntervalFromDate:(id)a3 withCalendar:(id)a4;
+ (id)endDateFromMostRecentlyAnalyzedDateIntervalWithDate:(id)a3 numberOfAnalysisAttempts:(int64_t)a4 calendar:(id)a5;
+ (id)samplesFilteredBySleepDay:(id)a3;
+ (int64_t)numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:(id)a3 referenceDate:(id)a4 calendar:(id)a5;
- (BOOL)_requestBreathingDisturbanceAnalysisWithSamples:(id)a3 analysisInterval:(id)a4;
- (BOOL)_writePossibleSleepApneaNotificationSampleWithAnalysisInterval:(id)a3 algorithmVersion:(id)a4 error:(id *)a5;
- (BOOL)performBreathingDisturbanceAnalysisWithIsForced:(BOOL)a3 date:(id)a4 numberOfAnalysisAttempts:(int64_t)a5;
- (HDSHBreathingDisturbanceAnalyzer)initWithProfile:(id)a3;
- (id)_createEnumeratorWithAnalysisInterval:(id)a3 profile:(id)a4 includeTimeZones:(BOOL)a5;
- (void)_sendAnalyticsWithPayload:(id)a3;
- (void)_sendPossibleSleepApneaNotificationWithRequest:(id)a3;
@end

@implementation HDSHBreathingDisturbanceAnalyzer

- (HDSHBreathingDisturbanceAnalyzer)initWithProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDSHBreathingDisturbanceAnalyzer;
  v5 = [(HDSHBreathingDisturbanceAnalyzer *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277CCCFE8]);
    v8 = *MEMORY[0x277CCC320];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v10 = [v7 initWithLoggingCategory:v8 healthDataSource:WeakRetained];
    analyticsEventSubmissionManager = v6->_analyticsEventSubmissionManager;
    v6->_analyticsEventSubmissionManager = v10;
  }

  return v6;
}

- (BOOL)performBreathingDisturbanceAnalysisWithIsForced:(BOOL)a3 date:(id)a4 numberOfAnalysisAttempts:(int64_t)a5
{
  v6 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  if (v6)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v11 setDay:~*MEMORY[0x277D62648]];
    v12 = [v10 dateByAddingComponents:v11 toDate:v9 options:0];

    v9 = v11;
  }

  else
  {
    v12 = [HDSHBreathingDisturbanceAnalyzer endDateFromMostRecentlyAnalyzedDateIntervalWithDate:v8 numberOfAnalysisAttempts:a5 calendar:v10];
  }

  v13 = [HDSHBreathingDisturbanceAnalyzer constructAnalysisDateIntervalFromDate:v12 withCalendar:v10];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v24 = 0;
  v15 = [(HDSHBreathingDisturbanceAnalyzer *)self fetchSamplesWithAnalysisInterval:v13 profile:WeakRetained includeTimeZones:0 error:&v24];
  v16 = v24;

  if (v16)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC320];
    v18 = 0;
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v17;
      v20 = objc_opt_class();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      v21 = v20;
      _os_log_impl(&dword_269C02000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not get breathing disturbance samples with error: %@", buf, 0x16u);

      v18 = 0;
    }
  }

  else
  {
    v18 = [(HDSHBreathingDisturbanceAnalyzer *)self _requestBreathingDisturbanceAnalysisWithSamples:v15 analysisInterval:v13];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_createEnumeratorWithAnalysisInterval:(id)a3 profile:(id)a4 includeTimeZones:(BOOL)a5
{
  v5 = a5;
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277CCD720];
  v9 = *MEMORY[0x277CCC930];
  v10 = a4;
  v11 = [v8 quantityTypeForIdentifier:v9];
  v12 = HDSampleEntityPredicateForDateInterval();
  v13 = [MEMORY[0x277D10810] entityEnumeratorWithType:v11 profile:v10];

  [v13 setPredicate:v12];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:1];
  v35[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [v13 setSortDescriptors:v15];

  if (v5)
  {
    v33 = *MEMORY[0x277D10400];
    v34 = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v13 addEncodingOptionsFromDictionary:v16];
  }

  _HKInitializeLogging();
  v17 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = objc_opt_class();
    v26 = v19;
    v20 = [v7 startDate];
    v21 = [v20 description];
    v22 = [v7 endDate];
    v23 = [v22 description];
    *buf = 138543874;
    v28 = v19;
    v29 = 2112;
    v30 = v21;
    v31 = 2112;
    v32 = v23;
    _os_log_impl(&dword_269C02000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Constructed query for breathing disturbance samples with analysis window for start date: %@, end date: %@", buf, 0x20u);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_requestBreathingDisturbanceAnalysisWithSamples:(id)a3 analysisInterval:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC320];
  v9 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [v6 count];
    v14 = [v7 description];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v35 = v14;
    _os_log_impl(&dword_269C02000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting analysis with %lu samples and analysis interval of %@", buf, 0x20u);
  }

  memset(buf, 0, sizeof(buf));
  [MEMORY[0x277CF33B0] analyzeSamples:v6 dateInterval:v7];
  if (buf[16] == 1)
  {
    _HKInitializeLogging();
    v15 = *v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 138543362;
      v31 = objc_opt_class();
      v16 = v31;
      _os_log_impl(&dword_269C02000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Possible sleep apnea detected from breathing disturbance samples.", v30, 0xCu);
    }

    v29 = 0;
    v17 = [(HDSHBreathingDisturbanceAnalyzer *)self _writePossibleSleepApneaNotificationSampleWithAnalysisInterval:v7 algorithmVersion:*buf error:&v29];
    v18 = v29;
    if (!v17)
    {
      _HKInitializeLogging();
      v19 = *v8;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *v30 = 138543618;
        v31 = v20;
        v32 = 2112;
        v33 = v18;
        v21 = v20;
        _os_log_impl(&dword_269C02000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to write sleep apnea event sample with error: %@. Not sending notification and will attempt to retry in one day.", v30, 0x16u);
      }

      v22 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = *v8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 138543362;
      v31 = objc_opt_class();
      v23 = v31;
      _os_log_impl(&dword_269C02000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Possible sleep apnea NOT detected from breathing disturbance samples.", v30, 0xCu);
    }
  }

  _HKInitializeLogging();
  v24 = *v8;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    *v30 = 138543362;
    v31 = v25;
    v26 = v25;
    _os_log_impl(&dword_269C02000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Analysis successfully performed!", v30, 0xCu);
  }

  [(HDSHBreathingDisturbanceAnalyzer *)self _sendAnalyticsWithPayload:*&buf[8]];
  v22 = 1;
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)_writePossibleSleepApneaNotificationSampleWithAnalysisInterval:(id)a3 algorithmVersion:(id)a4 error:(id *)a5
{
  v44[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v43 = *MEMORY[0x277CCC428];
  v44[0] = v8;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a3;
  v11 = [v9 dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v12 = MEMORY[0x277CCD0B0];
  v13 = [MEMORY[0x277CCD0C0] _typeWithIdentifier:*MEMORY[0x277CCBAC0]];
  v14 = [v10 startDate];
  v15 = [v10 endDate];

  v16 = [v12 categorySampleWithType:v13 value:0 startDate:v14 endDate:v15 metadata:v11];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = [WeakRetained sourceManager];
  v19 = [v18 localDeviceSourceWithError:a5];

  v20 = objc_loadWeakRetained(&self->_profile);
  v22 = [v20 deviceManager];
  v21 = [v22 currentDeviceEntityWithError:a5];

  LOBYTE(v22) = 0;
  if (v19 && v21)
  {
    v36 = v11;
    v37 = v8;
    v22 = objc_loadWeakRetained(&self->_profile);
    v23 = [v22 dataProvenanceManager];
    v24 = [v23 localDataProvenanceForSourceEntity:v19 version:0 deviceEntity:v21];

    v25 = objc_loadWeakRetained(&self->_profile);
    v26 = [v25 dataManager];
    v42 = v16;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    LODWORD(v22) = [v26 insertDataObjects:v27 withProvenance:v24 creationDate:0 skipInsertionFilter:a5 error:CFAbsoluteTimeGetCurrent()];

    if (v22)
    {
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        *buf = 138543618;
        v39 = objc_opt_class();
        v40 = 2112;
        v41 = v19;
        v30 = v39;
        _os_log_impl(&dword_269C02000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully wrote possible sleep apnea event sample with source %@", buf, 0x16u);
      }

      v31 = [v16 UUID];
      v32 = [v31 UUIDString];
      v33 = HKSHCreatePossibleSleepApneaDetectedNotificationRequest();

      [(HDSHBreathingDisturbanceAnalyzer *)self _sendPossibleSleepApneaNotificationWithRequest:v33];
    }

    v8 = v37;
    v11 = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_sendAnalyticsWithPayload:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    _os_log_impl(&dword_269C02000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to send analytics.", buf, 0xCu);
  }

  analyticsEventSubmissionManager = self->_analyticsEventSubmissionManager;
  v9 = [[HDSHBreathingDisturbanceAnalysisAnalyticsEvent alloc] initWithDefaultAnalyticsPayload:v4];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HDSHBreathingDisturbanceAnalyzer__sendAnalyticsWithPayload___block_invoke;
  v11[3] = &unk_279C83090;
  v11[4] = self;
  [(HKAnalyticsEventSubmissionManager *)analyticsEventSubmissionManager submitEvent:v9 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __62__HDSHBreathingDisturbanceAnalyzer__sendAnalyticsWithPayload___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  v7 = *MEMORY[0x277CCC320];
  if ((a2 & 1) == 0)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v12 = *(a1 + 32);
    v9 = v6;
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v5;
    v10 = v14;
    _os_log_error_impl(&dword_269C02000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error attempting to send analytics payload: %@", &v13, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v13 = 138543362;
    v14 = objc_opt_class();
    v10 = v14;
    _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully sent analytics payload!", &v13, 0xCu);
LABEL_4:
  }

LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendPossibleSleepApneaNotificationWithRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke;
  v6[3] = &unk_279C830B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    *buf = 138543362;
    v12 = objc_opt_class();
    v5 = v12;
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] About to post possible sleep apnea detected notification.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained notificationManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke_311;
  v10[3] = &unk_279C83090;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  [v7 postNotificationWithRequest:v8 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke_311(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = v4;
      v8 = v11;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error posting notification: %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)constructAnalysisDateIntervalFromDate:(id)a3 withCalendar:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEAB8];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [v7 hk_sleepDayStartWithCalendar:v5];
  v10 = [v9 hk_isBeforeDate:v7];

  if (v10)
  {
    [v8 setDay:1];
    v11 = [v5 dateByAddingComponents:v8 toDate:v9 options:0];

    v9 = v11;
  }

  [v8 setDay:*MEMORY[0x277D62648]];
  v12 = [v5 dateByAddingComponents:v8 toDate:v9 options:0];
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v12];

  return v13;
}

+ (id)endDateFromMostRecentlyAnalyzedDateIntervalWithDate:(id)a3 numberOfAnalysisAttempts:(int64_t)a4 calendar:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    v9 = MEMORY[0x277CBEAB8];
    v10 = a5;
    v11 = objc_alloc_init(v9);
    [v11 setDay:*MEMORY[0x277D62648] * a4];
    v12 = [v10 dateByAddingComponents:v11 toDate:v8 options:0];

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v18 = 138544130;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v8;
      v22 = 2048;
      v23 = a4;
      v24 = 2112;
      v25 = v12;
      v15 = v19;
      _os_log_impl(&dword_269C02000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] With date %@ and number of analysis attempts %ld, end date of most recently analyzed date interval is %@.", &v18, 0x2Au);
    }
  }

  else
  {
    v12 = v7;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)isAnalysisNeededWithAnchorDate:(id)a3 referenceDate:(id)a4 calendar:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [a5 components:16 fromDate:a3 toDate:a4 options:0];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v14 = 138543618;
    v15 = v8;
    v16 = 2048;
    v17 = [v5 day];
    _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of days since last analysis: %ld", &v14, 0x16u);
  }

  v10 = [v5 day];
  v11 = v10 >= *MEMORY[0x277D62648];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (int64_t)numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:(id)a3 referenceDate:(id)a4 calendar:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [a5 components:16 fromDate:v7 toDate:v8 options:0];
  v10 = [v9 day];
  v11 = v10 / *MEMORY[0x277D62648];
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v17 = 138544130;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 2048;
    v24 = v11;
    v14 = v18;
    _os_log_impl(&dword_269C02000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of expected analysis attempts between %@ and %@ is: %ld", &v17, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)samplesFilteredBySleepDay:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    if ([v3 count])
    {
      v7 = 0;
      do
      {
        v8 = [v3 objectAtIndexedSubscript:v7];
        if ([objc_opt_class() _areSamplesInSameSleepDayWithFirstSample:v4 secondSample:v8 calendar:v6])
        {
          v9 = [objc_opt_class() _sampleWithHighestDurationWithFirstSample:v4 secondSample:v8];
        }

        else
        {
          [v5 addObject:v4];
          v9 = v8;
        }

        v10 = v9;

        ++v7;
        v4 = v10;
      }

      while (v7 < [v3 count]);
    }

    else
    {
      v10 = v4;
    }

    [v5 addObject:v10];
    if ([v5 count] <= 0x1E)
    {
      v13 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_FAULT))
      {
        v16 = v12;
        *v18 = 138543618;
        *&v18[4] = objc_opt_class();
        *&v18[12] = 1024;
        *&v18[14] = 30;
        v17 = *&v18[4];
        _os_log_fault_impl(&dword_269C02000, v16, OS_LOG_TYPE_FAULT, "[%{public}@] Unexpectedly filtered to more than %d samples, will only return that amount starting from the first sample.", v18, 0x12u);
      }

      v13 = [v5 subarrayWithRange:{0, 30, *v18, *&v18[16], v19}];
    }

    v11 = v13;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)_areSamplesInSameSleepDayWithFirstSample:(id)a3 secondSample:(id)a4 calendar:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 endDate];
  v10 = [v9 hk_morningIndexWithCalendar:v7];

  v11 = [v8 endDate];

  v12 = [v11 hk_morningIndexWithCalendar:v7];
  return v10 == v12;
}

+ (id)_sampleWithHighestDurationWithFirstSample:(id)a3 secondSample:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 endDate];
  v8 = [v5 startDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  v11 = [v6 endDate];
  v12 = [v6 startDate];
  [v11 timeIntervalSinceDate:v12];
  v14 = v13;

  if (v10 == v14)
  {
    v15 = [v5 quantity];
    [v15 _value];
    v17 = v16;
    v18 = [v6 quantity];
    [v18 _value];
    if (v17 <= v19)
    {
      v20 = v5;
    }

    else
    {
      v20 = v6;
    }

    v21 = v20;
  }

  else
  {
    if (v10 <= v14)
    {
      v22 = v6;
    }

    else
    {
      v22 = v5;
    }

    v21 = v22;
  }

  return v21;
}

@end