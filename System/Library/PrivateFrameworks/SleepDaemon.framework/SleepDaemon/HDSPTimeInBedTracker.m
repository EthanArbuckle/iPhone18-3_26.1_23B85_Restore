@interface HDSPTimeInBedTracker
- (BOOL)isTimeInBedTrackingEnabled;
- (HDSPEnvironment)environment;
- (HDSPSleepTrackerDelegate)delegate;
- (HDSPTimeInBedTracker)initWithEnvironment:(id)a3;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (id)_computeSessionMetadataForInterval:(id)a3;
- (id)_computeSleepSessionStartBeforeDate:(id)a3;
- (id)_createSleepSessionWithEndDate:(id)a3 endReason:(unint64_t)a4;
- (id)computeSleepIntervalsForInterval:(id)a3;
- (id)processedSessionForSession:(id)a3;
- (void)_compareWithCoreDuetInBedDetectionForInterval:(id)a3;
- (void)_endSleepSessionWithReason:(unint64_t)a3;
- (void)_logDetections:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5;
@end

@implementation HDSPTimeInBedTracker

- (HDSPTimeInBedTracker)initWithEnvironment:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HDSPTimeInBedTracker;
  v5 = [(HDSPTimeInBedTracker *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = HKSPDispatchQueueName();
    v8 = HKSPSerialQueueBackedScheduler();
    sleepIntervalScheduler = v6->_sleepIntervalScheduler;
    v6->_sleepIntervalScheduler = v8;

    v10 = +[HDSPBiomeInBedDetector inBedDetector];
    inBedDetector = v6->_inBedDetector;
    v6->_inBedDetector = v10;

    v12 = v6;
  }

  return v6;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v4 = [a3 sleepCoordinator];
  [v4 addObserver:self];
}

- (BOOL)isTimeInBedTrackingEnabled
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained behavior];
  v5 = [v4 features];
  v6 = [v5 timeInBedTracking];

  if ((v6 & 1) == 0)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v13 = v20;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] time in bed tracking feature disabled", &v19, 0xCu);
    }

    goto LABEL_13;
  }

  v7 = [(HDSPTimeInBedTracker *)self sleepScheduleModel];
  v8 = [v7 sleepSchedule];
  v9 = [v8 isEnabledAndHasOccurrences];

  if ((v9 & 1) == 0)
  {
    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      v16 = "[%{public}@] sleep schedule disabled";
LABEL_11:
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, v16, &v19, 0xCu);
    }

LABEL_12:

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v10 = [v7 sleepSettings];
  v11 = [v10 timeInBedTracking];

  if ((v11 & 1) == 0)
  {
    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v15 = v20;
      v16 = "[%{public}@] time in bed tracking disabled";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v12 = 1;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepScheduleModelManager];
  v4 = [v3 sleepScheduleModel];

  return v4;
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = [(HDSPTimeInBedTracker *)self isTimeInBedTrackingEnabled];
  if (a3 == 1 && v7)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromHKSPSleepScheduleStateChangeReason();
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] state changed to wake up (%{public}@)", &v14, 0x16u);
    }

    if (HKSPSleepScheduleStateIsForBedtime() && HKSPSleepScheduleStateChangeReasonIsExpected())
    {
      v12 = HKSPLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = self;
        _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] ending time in bed tracking", &v14, 0xCu);
      }

      [(HDSPTimeInBedTracker *)self _endSleepSessionWithReason:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_endSleepSessionWithReason:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = HDSPSleepSessionEndReasonDescription(a3);
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] ending sleep session with reason %{public}@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v10 = [WeakRetained currentDateProvider];
  v11 = v10[2]();

  v12 = [(HDSPTimeInBedTracker *)self _createSleepSessionWithEndDate:v11 endReason:a3];
  v13 = [(HDSPTimeInBedTracker *)self delegate];
  [v13 sleepTracker:self didEndSession:v12 reason:a3];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_createSleepSessionWithEndDate:(id)a3 endReason:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDSPTimeInBedTracker *)self _computeSleepSessionStartBeforeDate:v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v6];
    v9 = [(HDSPTimeInBedTracker *)self _computeSessionMetadataForInterval:v8];
    v10 = [HDSPSleepSession sleepSessionWithDateInterval:v8 sleepIntervals:MEMORY[0x277CBEBF8] endReason:a4 metadata:v9 requiresFirstUnlock:1];
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v10;
      v12 = v16;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] created %{public}@", &v15, 0x16u);
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_computeSleepSessionStartBeforeDate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDSPTimeInBedTracker *)self sleepScheduleModel];
  v6 = [v5 previousEventWithIdentifier:*MEMORY[0x277D621B8] dueBeforeDate:v4];

  v7 = v6;
  v8 = [v5 sleepSettings];
  v9 = [v8 sleepTracking];

  if (v9)
  {
    v10 = [v7 dateByAddingTimeInterval:-5400.0];

    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v10;
      v12 = v17;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] using 90 minutes before bedtime %{public}@ as session start", &v16, 0x16u);
    }
  }

  else
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v7;
      v13 = v17;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] using bedtime date %{public}@ as session start", &v16, 0x16u);
    }

    v10 = v7;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)computeSleepIntervalsForInterval:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = v4;
    v6 = v16;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] computing in bed intervals inside %{public}@", buf, 0x16u);
  }

  v7 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDSPTimeInBedTracker_computeSleepIntervalsForInterval___block_invoke;
  v13[3] = &unk_279C7B230;
  v13[4] = self;
  v14 = v4;
  sleepIntervalScheduler = self->_sleepIntervalScheduler;
  v9 = v4;
  v10 = [v7 futureWithBlock:v13 scheduler:sleepIntervalScheduler];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __57__HDSPTimeInBedTracker_computeSleepIntervalsForInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) detectInBedTimesDuringInterval:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HDSPTimeInBedTracker_computeSleepIntervalsForInterval___block_invoke_2;
  v11[3] = &unk_279C7B1E0;
  v5 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v5;
  v6 = [v4 flatMap:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HDSPTimeInBedTracker_computeSleepIntervalsForInterval___block_invoke_4;
  v9[3] = &unk_279C7B208;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  v8 = [v6 addCompletionBlock:v9];
}

id __57__HDSPTimeInBedTracker_computeSleepIntervalsForInterval___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _logDetections:v4];
  v5 = [v4 na_map:&__block_literal_global];

  [*(a1 + 32) _compareWithCoreDuetInBedDetectionForInterval:*(a1 + 40)];
  v6 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v6;
}

void __57__HDSPTimeInBedTracker_computeSleepIntervalsForInterval___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *v11 = 138543618;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2114;
      *&v11[14] = v6;
      v10 = *&v11[4];
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to detect time-in-bed with error: %{public}@", v11, 0x16u);
    }
  }

  [*(a1 + 40) finishWithResult:v5 error:{v6, *v11, *&v11[16], v12}];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_logDetections:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    *buf = 138543618;
    v11 = v6;
    v12 = 2048;
    v13 = [v4 count];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] found %lu in-bed intervals", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__HDSPTimeInBedTracker__logDetections___block_invoke;
  v9[3] = &unk_279C7B258;
  v9[4] = self;
  [v4 na_each:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __39__HDSPTimeInBedTracker__logDetections___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v3 startDate];
    v9 = [v3 endDate];
    v11 = 138543874;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] inBed [%@ - %@]", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_compareWithCoreDuetInBedDetectionForInterval:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] comparing against _CDInBedDetector...", buf, 0xCu);
  }

  v7 = +[HDSPCDInBedDetector inBedDetector];
  v8 = [v7 detectInBedTimesDuringInterval:v4];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HDSPTimeInBedTracker__compareWithCoreDuetInBedDetectionForInterval___block_invoke;
  v11[3] = &unk_279C7B280;
  v11[4] = self;
  v9 = [v8 addCompletionBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __70__HDSPTimeInBedTracker__compareWithCoreDuetInBedDetectionForInterval___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v5;
      v9 = v11;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to detect time-in-bed with error: %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) _logDetections:a2];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_computeSessionMetadataForInterval:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = v4;
    v6 = v34;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _computeSessionMetadataForInterval: %{public}@", buf, 0x16u);
  }

  v7 = [(HDSPTimeInBedTracker *)self sleepScheduleModel];
  v8 = [v4 endDate];
  v9 = [v7 previousOccurrenceBeforeDate:v8];

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543618;
    v34 = v11;
    v35 = 2114;
    v36 = v9;
    v12 = v11;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] previous occurrence: %{public}@", buf, 0x16u);
  }

  if ([v9 isSingleDayOverride])
  {
    v13 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v14 = [v9 wakeUpComponents];
    v15 = [v13 dateFromComponents:v14];

    v16 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v17 = [v9 bedtimeComponents];
    [v16 dateFromComponents:v17];
  }

  else
  {
    v18 = [v4 endDate];
    v19 = [v9 wakeUpComponents];
    v15 = [v18 hksp_dateNearestMatchingComponents:v19];

    v16 = [v4 startDate];
    v17 = [v9 bedtimeComponents];
    [v16 hksp_dateNearestMatchingComponents:v17];
  }
  v20 = ;

  v21 = HKSPLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    *buf = 138543874;
    v34 = v22;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v20;
    v23 = v22;
    _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] user set wake time: %{public}@ user set bed time: %{public}@", buf, 0x20u);
  }

  v24 = MEMORY[0x277CBEC10];
  if (v20 && v15)
  {
    v25 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v26 = [v25 name];
    v27 = *MEMORY[0x277CCE0F8];
    v32[0] = v26;
    v32[1] = v20;
    v28 = *MEMORY[0x277CCE100];
    v31[1] = v27;
    v31[2] = v28;
    v32[2] = v15;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)processedSessionForSession:(id)a3
{
  v4 = a3;
  if ([v4 requiresFirstUnlock])
  {
    v5 = [v4 interval];
    v6 = [(HDSPTimeInBedTracker *)self computeSleepIntervalsForInterval:v5];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__HDSPTimeInBedTracker_processedSessionForSession___block_invoke;
    v9[3] = &unk_279C7B1E0;
    v10 = v4;
    v11 = self;
    v7 = [v6 flatMap:v9];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v4];
  }

  return v7;
}

id __51__HDSPTimeInBedTracker_processedSessionForSession___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 interval];
  v6 = [*(a1 + 32) endReason];
  v7 = [*(a1 + 32) metadata];
  v8 = [HDSPSleepSession sleepSessionWithDateInterval:v5 sleepIntervals:v4 endReason:v6 metadata:v7 requiresFirstUnlock:0];

  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v20 = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v8;
    v11 = v21;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] finished processing session: %{public}@", &v20, 0x16u);
  }

  v12 = HKSPLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v14 = objc_opt_class();
    v15 = v14;
    v16 = [v8 sleepIntervals];
    v20 = 138543618;
    v21 = v14;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] processed session has intervals: %@", &v20, 0x16u);
  }

  v17 = [MEMORY[0x277D2C900] futureWithResult:v8];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSleepTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end