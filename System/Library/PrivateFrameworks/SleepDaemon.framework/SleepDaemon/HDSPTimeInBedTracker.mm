@interface HDSPTimeInBedTracker
- (BOOL)isTimeInBedTrackingEnabled;
- (HDSPEnvironment)environment;
- (HDSPSleepTrackerDelegate)delegate;
- (HDSPTimeInBedTracker)initWithEnvironment:(id)environment;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (id)_computeSessionMetadataForInterval:(id)interval;
- (id)_computeSleepSessionStartBeforeDate:(id)date;
- (id)_createSleepSessionWithEndDate:(id)date endReason:(unint64_t)reason;
- (id)computeSleepIntervalsForInterval:(id)interval;
- (id)processedSessionForSession:(id)session;
- (void)_compareWithCoreDuetInBedDetectionForInterval:(id)interval;
- (void)_endSleepSessionWithReason:(unint64_t)reason;
- (void)_logDetections:(id)detections;
- (void)environmentWillBecomeReady:(id)ready;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason;
@end

@implementation HDSPTimeInBedTracker

- (HDSPTimeInBedTracker)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = HDSPTimeInBedTracker;
  v5 = [(HDSPTimeInBedTracker *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
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

- (void)environmentWillBecomeReady:(id)ready
{
  sleepCoordinator = [ready sleepCoordinator];
  [sleepCoordinator addObserver:self];
}

- (BOOL)isTimeInBedTrackingEnabled
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  features = [behavior features];
  timeInBedTracking = [features timeInBedTracking];

  if ((timeInBedTracking & 1) == 0)
  {
    sleepScheduleModel = HKSPLogForCategory();
    if (os_log_type_enabled(sleepScheduleModel, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v13 = v20;
      _os_log_impl(&dword_269B11000, sleepScheduleModel, OS_LOG_TYPE_DEFAULT, "[%{public}@] time in bed tracking feature disabled", &v19, 0xCu);
    }

    goto LABEL_13;
  }

  sleepScheduleModel = [(HDSPTimeInBedTracker *)self sleepScheduleModel];
  sleepSchedule = [sleepScheduleModel sleepSchedule];
  isEnabledAndHasOccurrences = [sleepSchedule isEnabledAndHasOccurrences];

  if ((isEnabledAndHasOccurrences & 1) == 0)
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

  sleepSettings = [sleepScheduleModel sleepSettings];
  timeInBedTracking2 = [sleepSettings timeInBedTracking];

  if ((timeInBedTracking2 & 1) == 0)
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
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];

  return sleepScheduleModel;
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state reason:(unint64_t)reason
{
  v18 = *MEMORY[0x277D85DE8];
  isTimeInBedTrackingEnabled = [(HDSPTimeInBedTracker *)self isTimeInBedTrackingEnabled];
  if (change == 1 && isTimeInBedTrackingEnabled)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = NSStringFromHKSPSleepScheduleStateChangeReason();
      v14 = 138543618;
      selfCopy = v9;
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
        selfCopy = self;
        _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] ending time in bed tracking", &v14, 0xCu);
      }

      [(HDSPTimeInBedTracker *)self _endSleepSessionWithReason:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_endSleepSessionWithReason:(unint64_t)reason
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = HDSPSleepSessionEndReasonDescription(reason);
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] ending sleep session with reason %{public}@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [WeakRetained currentDateProvider];
  v11 = currentDateProvider[2]();

  v12 = [(HDSPTimeInBedTracker *)self _createSleepSessionWithEndDate:v11 endReason:reason];
  delegate = [(HDSPTimeInBedTracker *)self delegate];
  [delegate sleepTracker:self didEndSession:v12 reason:reason];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_createSleepSessionWithEndDate:(id)date endReason:(unint64_t)reason
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = [(HDSPTimeInBedTracker *)self _computeSleepSessionStartBeforeDate:dateCopy];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:dateCopy];
    v9 = [(HDSPTimeInBedTracker *)self _computeSessionMetadataForInterval:v8];
    v10 = [HDSPSleepSession sleepSessionWithDateInterval:v8 sleepIntervals:MEMORY[0x277CBEBF8] endReason:reason metadata:v9 requiresFirstUnlock:1];
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

- (id)_computeSleepSessionStartBeforeDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  sleepScheduleModel = [(HDSPTimeInBedTracker *)self sleepScheduleModel];
  v6 = [sleepScheduleModel previousEventWithIdentifier:*MEMORY[0x277D621B8] dueBeforeDate:dateCopy];

  v7 = v6;
  sleepSettings = [sleepScheduleModel sleepSettings];
  sleepTracking = [sleepSettings sleepTracking];

  if (sleepTracking)
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

- (id)computeSleepIntervalsForInterval:(id)interval
{
  v19 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = objc_opt_class();
    v17 = 2114;
    v18 = intervalCopy;
    v6 = v16;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] computing in bed intervals inside %{public}@", buf, 0x16u);
  }

  v7 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDSPTimeInBedTracker_computeSleepIntervalsForInterval___block_invoke;
  v13[3] = &unk_279C7B230;
  v13[4] = self;
  v14 = intervalCopy;
  sleepIntervalScheduler = self->_sleepIntervalScheduler;
  v9 = intervalCopy;
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

- (void)_logDetections:(id)detections
{
  v14 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    *buf = 138543618;
    v11 = v6;
    v12 = 2048;
    v13 = [detectionsCopy count];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] found %lu in-bed intervals", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__HDSPTimeInBedTracker__logDetections___block_invoke;
  v9[3] = &unk_279C7B258;
  v9[4] = self;
  [detectionsCopy na_each:v9];

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

- (void)_compareWithCoreDuetInBedDetectionForInterval:(id)interval
{
  v14 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] comparing against _CDInBedDetector...", buf, 0xCu);
  }

  v7 = +[HDSPCDInBedDetector inBedDetector];
  v8 = [v7 detectInBedTimesDuringInterval:intervalCopy];

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

- (id)_computeSessionMetadataForInterval:(id)interval
{
  v39 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = intervalCopy;
    v6 = v34;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _computeSessionMetadataForInterval: %{public}@", buf, 0x16u);
  }

  sleepScheduleModel = [(HDSPTimeInBedTracker *)self sleepScheduleModel];
  endDate = [intervalCopy endDate];
  v9 = [sleepScheduleModel previousOccurrenceBeforeDate:endDate];

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
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    wakeUpComponents = [v9 wakeUpComponents];
    v15 = [hk_gregorianCalendar dateFromComponents:wakeUpComponents];

    hk_gregorianCalendar2 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    bedtimeComponents = [v9 bedtimeComponents];
    [hk_gregorianCalendar2 dateFromComponents:bedtimeComponents];
  }

  else
  {
    endDate2 = [intervalCopy endDate];
    wakeUpComponents2 = [v9 wakeUpComponents];
    v15 = [endDate2 hksp_dateNearestMatchingComponents:wakeUpComponents2];

    hk_gregorianCalendar2 = [intervalCopy startDate];
    bedtimeComponents = [v9 bedtimeComponents];
    [hk_gregorianCalendar2 hksp_dateNearestMatchingComponents:bedtimeComponents];
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
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    name = [systemTimeZone name];
    v27 = *MEMORY[0x277CCE0F8];
    v32[0] = name;
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

- (id)processedSessionForSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy requiresFirstUnlock])
  {
    interval = [sessionCopy interval];
    v6 = [(HDSPTimeInBedTracker *)self computeSleepIntervalsForInterval:interval];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__HDSPTimeInBedTracker_processedSessionForSession___block_invoke;
    v9[3] = &unk_279C7B1E0;
    v10 = sessionCopy;
    selfCopy = self;
    v7 = [v6 flatMap:v9];
  }

  else
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:sessionCopy];
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