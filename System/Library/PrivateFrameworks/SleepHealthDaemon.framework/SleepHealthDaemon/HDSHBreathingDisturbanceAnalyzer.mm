@interface HDSHBreathingDisturbanceAnalyzer
+ (BOOL)_areSamplesInSameSleepDayWithFirstSample:(id)sample secondSample:(id)secondSample calendar:(id)calendar;
+ (BOOL)isAnalysisNeededWithAnchorDate:(id)date referenceDate:(id)referenceDate calendar:(id)calendar;
+ (id)_sampleWithHighestDurationWithFirstSample:(id)sample secondSample:(id)secondSample;
+ (id)constructAnalysisDateIntervalFromDate:(id)date withCalendar:(id)calendar;
+ (id)endDateFromMostRecentlyAnalyzedDateIntervalWithDate:(id)date numberOfAnalysisAttempts:(int64_t)attempts calendar:(id)calendar;
+ (id)samplesFilteredBySleepDay:(id)day;
+ (int64_t)numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:(id)date referenceDate:(id)referenceDate calendar:(id)calendar;
- (BOOL)_requestBreathingDisturbanceAnalysisWithSamples:(id)samples analysisInterval:(id)interval;
- (BOOL)_writePossibleSleepApneaNotificationSampleWithAnalysisInterval:(id)interval algorithmVersion:(id)version error:(id *)error;
- (BOOL)performBreathingDisturbanceAnalysisWithIsForced:(BOOL)forced date:(id)date numberOfAnalysisAttempts:(int64_t)attempts;
- (HDSHBreathingDisturbanceAnalyzer)initWithProfile:(id)profile;
- (id)_createEnumeratorWithAnalysisInterval:(id)interval profile:(id)profile includeTimeZones:(BOOL)zones;
- (void)_sendAnalyticsWithPayload:(id)payload;
- (void)_sendPossibleSleepApneaNotificationWithRequest:(id)request;
@end

@implementation HDSHBreathingDisturbanceAnalyzer

- (HDSHBreathingDisturbanceAnalyzer)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDSHBreathingDisturbanceAnalyzer;
  v5 = [(HDSHBreathingDisturbanceAnalyzer *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277CCCFE8]);
    v8 = *MEMORY[0x277CCC320];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v10 = [v7 initWithLoggingCategory:v8 healthDataSource:WeakRetained];
    analyticsEventSubmissionManager = v6->_analyticsEventSubmissionManager;
    v6->_analyticsEventSubmissionManager = v10;
  }

  return v6;
}

- (BOOL)performBreathingDisturbanceAnalysisWithIsForced:(BOOL)forced date:(id)date numberOfAnalysisAttempts:(int64_t)attempts
{
  forcedCopy = forced;
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v9 = [MEMORY[0x277CBEAA8] now];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  if (forcedCopy)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v11 setDay:~*MEMORY[0x277D62648]];
    v12 = [hk_gregorianCalendar dateByAddingComponents:v11 toDate:v9 options:0];

    v9 = v11;
  }

  else
  {
    v12 = [HDSHBreathingDisturbanceAnalyzer endDateFromMostRecentlyAnalyzedDateIntervalWithDate:dateCopy numberOfAnalysisAttempts:attempts calendar:hk_gregorianCalendar];
  }

  v13 = [HDSHBreathingDisturbanceAnalyzer constructAnalysisDateIntervalFromDate:v12 withCalendar:hk_gregorianCalendar];
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

- (id)_createEnumeratorWithAnalysisInterval:(id)interval profile:(id)profile includeTimeZones:(BOOL)zones
{
  zonesCopy = zones;
  v35[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v8 = MEMORY[0x277CCD720];
  v9 = *MEMORY[0x277CCC930];
  profileCopy = profile;
  v11 = [v8 quantityTypeForIdentifier:v9];
  v12 = HDSampleEntityPredicateForDateInterval();
  v13 = [MEMORY[0x277D10810] entityEnumeratorWithType:v11 profile:profileCopy];

  [v13 setPredicate:v12];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:1];
  v35[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [v13 setSortDescriptors:v15];

  if (zonesCopy)
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
    startDate = [intervalCopy startDate];
    v21 = [startDate description];
    endDate = [intervalCopy endDate];
    v23 = [endDate description];
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

- (BOOL)_requestBreathingDisturbanceAnalysisWithSamples:(id)samples analysisInterval:(id)interval
{
  v36 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  intervalCopy = interval;
  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC320];
  v9 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [samplesCopy count];
    v14 = [intervalCopy description];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v35 = v14;
    _os_log_impl(&dword_269C02000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting analysis with %lu samples and analysis interval of %@", buf, 0x20u);
  }

  memset(buf, 0, sizeof(buf));
  [MEMORY[0x277CF33B0] analyzeSamples:samplesCopy dateInterval:intervalCopy];
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
    v17 = [(HDSHBreathingDisturbanceAnalyzer *)self _writePossibleSleepApneaNotificationSampleWithAnalysisInterval:intervalCopy algorithmVersion:*buf error:&v29];
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

- (BOOL)_writePossibleSleepApneaNotificationSampleWithAnalysisInterval:(id)interval algorithmVersion:(id)version error:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v43 = *MEMORY[0x277CCC428];
  v44[0] = versionCopy;
  v9 = MEMORY[0x277CBEAC0];
  intervalCopy = interval;
  v11 = [v9 dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v12 = MEMORY[0x277CCD0B0];
  v13 = [MEMORY[0x277CCD0C0] _typeWithIdentifier:*MEMORY[0x277CCBAC0]];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v16 = [v12 categorySampleWithType:v13 value:0 startDate:startDate endDate:endDate metadata:v11];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v19 = [sourceManager localDeviceSourceWithError:error];

  v20 = objc_loadWeakRetained(&self->_profile);
  deviceManager = [v20 deviceManager];
  v21 = [deviceManager currentDeviceEntityWithError:error];

  LOBYTE(deviceManager) = 0;
  if (v19 && v21)
  {
    v36 = v11;
    v37 = versionCopy;
    deviceManager = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [deviceManager dataProvenanceManager];
    v24 = [dataProvenanceManager localDataProvenanceForSourceEntity:v19 version:0 deviceEntity:v21];

    v25 = objc_loadWeakRetained(&self->_profile);
    dataManager = [v25 dataManager];
    v42 = v16;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    LODWORD(deviceManager) = [dataManager insertDataObjects:v27 withProvenance:v24 creationDate:0 skipInsertionFilter:error error:CFAbsoluteTimeGetCurrent()];

    if (deviceManager)
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

      uUID = [v16 UUID];
      uUIDString = [uUID UUIDString];
      v33 = HKSHCreatePossibleSleepApneaDetectedNotificationRequest();

      [(HDSHBreathingDisturbanceAnalyzer *)self _sendPossibleSleepApneaNotificationWithRequest:v33];
    }

    versionCopy = v37;
    v11 = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
  return deviceManager;
}

- (void)_sendAnalyticsWithPayload:(id)payload
{
  v14 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
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
  v9 = [[HDSHBreathingDisturbanceAnalysisAnalyticsEvent alloc] initWithDefaultAnalyticsPayload:payloadCopy];

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

- (void)_sendPossibleSleepApneaNotificationWithRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HDSHBreathingDisturbanceAnalyzer__sendPossibleSleepApneaNotificationWithRequest___block_invoke;
  v6[3] = &unk_279C830B8;
  v6[4] = self;
  v7 = requestCopy;
  v5 = requestCopy;
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

+ (id)constructAnalysisDateIntervalFromDate:(id)date withCalendar:(id)calendar
{
  calendarCopy = calendar;
  v6 = MEMORY[0x277CBEAB8];
  dateCopy = date;
  v8 = objc_alloc_init(v6);
  v9 = [dateCopy hk_sleepDayStartWithCalendar:calendarCopy];
  v10 = [v9 hk_isBeforeDate:dateCopy];

  if (v10)
  {
    [v8 setDay:1];
    v11 = [calendarCopy dateByAddingComponents:v8 toDate:v9 options:0];

    v9 = v11;
  }

  [v8 setDay:*MEMORY[0x277D62648]];
  v12 = [calendarCopy dateByAddingComponents:v8 toDate:v9 options:0];
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v12];

  return v13;
}

+ (id)endDateFromMostRecentlyAnalyzedDateIntervalWithDate:(id)date numberOfAnalysisAttempts:(int64_t)attempts calendar:(id)calendar
{
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v8 = dateCopy;
  if (attempts)
  {
    v9 = MEMORY[0x277CBEAB8];
    calendarCopy = calendar;
    v11 = objc_alloc_init(v9);
    [v11 setDay:*MEMORY[0x277D62648] * attempts];
    v12 = [calendarCopy dateByAddingComponents:v11 toDate:v8 options:0];

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
      attemptsCopy = attempts;
      v24 = 2112;
      v25 = v12;
      v15 = v19;
      _os_log_impl(&dword_269C02000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] With date %@ and number of analysis attempts %ld, end date of most recently analyzed date interval is %@.", &v18, 0x2Au);
    }
  }

  else
  {
    v12 = dateCopy;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)isAnalysisNeededWithAnchorDate:(id)date referenceDate:(id)referenceDate calendar:(id)calendar
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [calendar components:16 fromDate:date toDate:referenceDate options:0];
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

+ (int64_t)numberOfExpectedAnalysisAttemptsStartingFromAnchorDate:(id)date referenceDate:(id)referenceDate calendar:(id)calendar
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  referenceDateCopy = referenceDate;
  v9 = [calendar components:16 fromDate:dateCopy toDate:referenceDateCopy options:0];
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
    v20 = dateCopy;
    v21 = 2112;
    v22 = referenceDateCopy;
    v23 = 2048;
    v24 = v11;
    v14 = v18;
    _os_log_impl(&dword_269C02000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Number of expected analysis attempts between %@ and %@ is: %ld", &v17, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)samplesFilteredBySleepDay:(id)day
{
  v19 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  if ([dayCopy count])
  {
    firstObject = [dayCopy firstObject];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    if ([dayCopy count])
    {
      v7 = 0;
      do
      {
        v8 = [dayCopy objectAtIndexedSubscript:v7];
        if ([objc_opt_class() _areSamplesInSameSleepDayWithFirstSample:firstObject secondSample:v8 calendar:hk_gregorianCalendar])
        {
          v9 = [objc_opt_class() _sampleWithHighestDurationWithFirstSample:firstObject secondSample:v8];
        }

        else
        {
          [v5 addObject:firstObject];
          v9 = v8;
        }

        v10 = v9;

        ++v7;
        firstObject = v10;
      }

      while (v7 < [dayCopy count]);
    }

    else
    {
      v10 = firstObject;
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

+ (BOOL)_areSamplesInSameSleepDayWithFirstSample:(id)sample secondSample:(id)secondSample calendar:(id)calendar
{
  calendarCopy = calendar;
  secondSampleCopy = secondSample;
  endDate = [sample endDate];
  v10 = [endDate hk_morningIndexWithCalendar:calendarCopy];

  endDate2 = [secondSampleCopy endDate];

  v12 = [endDate2 hk_morningIndexWithCalendar:calendarCopy];
  return v10 == v12;
}

+ (id)_sampleWithHighestDurationWithFirstSample:(id)sample secondSample:(id)secondSample
{
  sampleCopy = sample;
  secondSampleCopy = secondSample;
  endDate = [sampleCopy endDate];
  startDate = [sampleCopy startDate];
  [endDate timeIntervalSinceDate:startDate];
  v10 = v9;

  endDate2 = [secondSampleCopy endDate];
  startDate2 = [secondSampleCopy startDate];
  [endDate2 timeIntervalSinceDate:startDate2];
  v14 = v13;

  if (v10 == v14)
  {
    quantity = [sampleCopy quantity];
    [quantity _value];
    v17 = v16;
    quantity2 = [secondSampleCopy quantity];
    [quantity2 _value];
    if (v17 <= v19)
    {
      v20 = sampleCopy;
    }

    else
    {
      v20 = secondSampleCopy;
    }

    v21 = v20;
  }

  else
  {
    if (v10 <= v14)
    {
      v22 = secondSampleCopy;
    }

    else
    {
      v22 = sampleCopy;
    }

    v21 = v22;
  }

  return v21;
}

@end