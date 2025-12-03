@interface HDSPAnalyticsDailyReportBuilder
+ (unint64_t)_stageDurationPercentage:(double)percentage ofTotalDuration:(double)duration;
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (BOOL)_changedSchedule:(id)schedule withinNumberOfDays:(unint64_t)days currentDate:(id)date calendar:(id)calendar;
- (BOOL)_didInteractWithWindDownActionsWithinLastTwoDays;
- (BOOL)_woreWatchToSleepLastNight;
- (HDSPAnalyticsDailyReportBuilder)initWithEnvironment:(id)environment daySummaries:(id)summaries breathingDisturbanceSamples:(id)samples sleepApneaEventSamples:(id)eventSamples sleepApneaFeatureOnboardingRecord:(id)record morningIndexRange:(id)range;
- (HDSPAnalyticsDailyReportBuilder)initWithEnvironment:(id)environment daySummaries:(id)summaries morningIndexRange:(id)range;
- (HDSPEnvironment)environment;
- (double)_bucketedSleepDurationLastNight;
- (double)_lastNightsDurationForSleepStage:(int64_t)stage;
- (double)_sleepDurationLastNightIncludingAwake:(BOOL)awake;
- (id)_biologicalSex;
- (id)_dailyReportEvent;
- (id)_dateOfLastSuccessfulBreathingDisturbanceAnalysis;
- (id)_userAgeForCurrentDate:(id)date;
- (id)_weeksSinceOnboardDate:(id)date currentDate:(id)currentDate calendar:(id)calendar;
- (id)_windDownEvents;
- (id)analyticsManager;
- (id)analyticsStore;
- (id)buildReports;
- (id)currentDate;
- (id)healthStore;
- (id)sleepFocusConfiguration;
- (id)sleepSchedule;
- (id)sleepSettings;
- (int64_t)_daysWatchWornToSleepOverLastNumberOfDays:(int64_t)days excludeWeekdays:(BOOL)weekdays calendar:(id)calendar;
- (int64_t)_lastNightsNumberOfAwakeEvents;
@end

@implementation HDSPAnalyticsDailyReportBuilder

- (HDSPAnalyticsDailyReportBuilder)initWithEnvironment:(id)environment daySummaries:(id)summaries morningIndexRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  environmentCopy = environment;
  summariesCopy = summaries;
  v18.receiver = self;
  v18.super_class = HDSPAnalyticsDailyReportBuilder;
  v11 = [(HDSPAnalyticsDailyReportBuilder *)&v18 init];
  v12 = v11;
  v13 = 0;
  if (summariesCopy && v11)
  {
    if (var0 == *MEMORY[0x277CCBBF8] && var1 == *(MEMORY[0x277CCBBF8] + 8))
    {
      v13 = 0;
    }

    else
    {
      objc_storeWeak(&v11->_environment, environmentCopy);
      v15 = [summariesCopy copy];
      daySummaries = v12->_daySummaries;
      v12->_daySummaries = v15;

      v12->_morningIndexRange.start = var0;
      v12->_morningIndexRange.duration = var1;
      v13 = v12;
    }
  }

  return v13;
}

- (HDSPAnalyticsDailyReportBuilder)initWithEnvironment:(id)environment daySummaries:(id)summaries breathingDisturbanceSamples:(id)samples sleepApneaEventSamples:(id)eventSamples sleepApneaFeatureOnboardingRecord:(id)record morningIndexRange:(id)range
{
  recordCopy = record;
  eventSamplesCopy = eventSamples;
  samplesCopy = samples;
  summariesCopy = summaries;
  environmentCopy = environment;
  v17 = [HDSPSleepApneaAnalyticsBuilder alloc];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  _dateOfLastSuccessfulBreathingDisturbanceAnalysis = [(HDSPAnalyticsDailyReportBuilder *)self _dateOfLastSuccessfulBreathingDisturbanceAnalysis];
  v20 = [(HDSPSleepApneaAnalyticsBuilder *)v17 initWithBreathingDisturbanceSamples:samplesCopy sleepApneaEventSamples:eventSamplesCopy sleepApneaFeatureOnboardingRecord:recordCopy morningIndexRange:range.var0 gregorianCalendar:range.var1 dateOfLastAnalysis:hk_gregorianCalendar currentDateProvider:_dateOfLastSuccessfulBreathingDisturbanceAnalysis, &__block_literal_global_3];

  sleepApneaAnalyticsBuilder = self->_sleepApneaAnalyticsBuilder;
  self->_sleepApneaAnalyticsBuilder = v20;

  v22 = [(HDSPAnalyticsDailyReportBuilder *)self initWithEnvironment:environmentCopy daySummaries:summariesCopy morningIndexRange:range.var0, range.var1];
  return v22;
}

- (id)buildReports
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = v3;
    daySummaries = [(HDSPAnalyticsDailyReportBuilder *)self daySummaries];
    v6 = [daySummaries count];
    [(HDSPAnalyticsDailyReportBuilder *)self morningIndexRange];
    v7 = NSStringFromHKDayIndexRange();
    *buf = 138543874;
    v32 = v3;
    v33 = 2050;
    v34 = v6;
    v35 = 2114;
    v36 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Building daily analytics report from %{public}lu summaries in range %{public}@", buf, 0x20u);
  }

  if (HKShowSensitiveLogItems())
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    daySummaries2 = [(HDSPAnalyticsDailyReportBuilder *)self daySummaries];
    v9 = [daySummaries2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(daySummaries2);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = HKSPLogForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            v16 = v15;
            v17 = HKSensitiveLogItem();
            *buf = 138543618;
            v32 = v15;
            v33 = 2114;
            v34 = v17;
            _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Summary: %{public}@", buf, 0x16u);
          }
        }

        v10 = [daySummaries2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _dailyReportEvent = [(HDSPAnalyticsDailyReportBuilder *)self _dailyReportEvent];
  [v18 addObject:_dailyReportEvent];

  _windDownEvents = [(HDSPAnalyticsDailyReportBuilder *)self _windDownEvents];
  [v18 addObjectsFromArray:_windDownEvents];

  analyticsStore = [(HDSPAnalyticsDailyReportBuilder *)self analyticsStore];
  [analyticsStore markAllActionsAsCollected];

  v22 = [v18 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)currentDate
{
  environment = [(HDSPAnalyticsDailyReportBuilder *)self environment];
  currentDateProvider = [environment currentDateProvider];
  v4 = currentDateProvider[2]();

  return v4;
}

- (id)healthStore
{
  environment = [(HDSPAnalyticsDailyReportBuilder *)self environment];
  healthStoreProvider = [environment healthStoreProvider];
  healthStore = [healthStoreProvider healthStore];

  return healthStore;
}

- (id)sleepSchedule
{
  environment = [(HDSPAnalyticsDailyReportBuilder *)self environment];
  sleepScheduleModelManager = [environment sleepScheduleModelManager];
  sleepSchedule = [sleepScheduleModelManager sleepSchedule];

  return sleepSchedule;
}

- (id)sleepSettings
{
  environment = [(HDSPAnalyticsDailyReportBuilder *)self environment];
  sleepScheduleModelManager = [environment sleepScheduleModelManager];
  sleepSettings = [sleepScheduleModelManager sleepSettings];

  return sleepSettings;
}

- (id)sleepFocusConfiguration
{
  environment = [(HDSPAnalyticsDailyReportBuilder *)self environment];
  sleepModeManager = [environment sleepModeManager];
  sleepFocusModeBridge = [sleepModeManager sleepFocusModeBridge];
  v5 = [sleepFocusModeBridge sleepFocusConfiguration:0];

  return v5;
}

- (id)analyticsManager
{
  environment = [(HDSPAnalyticsDailyReportBuilder *)self environment];
  analyticsManager = [environment analyticsManager];
  v3AnalyticsManager = [analyticsManager analyticsManager];

  return v3AnalyticsManager;
}

- (id)analyticsStore
{
  analyticsManager = [(HDSPAnalyticsDailyReportBuilder *)self analyticsManager];
  analyticsStore = [analyticsManager analyticsStore];

  return analyticsStore;
}

- (id)_dailyReportEvent
{
  currentDate = [(HDSPAnalyticsDailyReportBuilder *)self currentDate];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v5 = MEMORY[0x277CCD9D0];
  daySummaries = [(HDSPAnalyticsDailyReportBuilder *)self daySummaries];
  morningIndexRange = [(HDSPAnalyticsDailyReportBuilder *)self morningIndexRange];
  v73 = [v5 sleepMetricsForDaySummaries:daySummaries inMorningIndexRange:{morningIndexRange, v8}];

  v9 = objc_alloc_init(MEMORY[0x277D62408]);
  sleepSchedule = [(HDSPAnalyticsDailyReportBuilder *)self sleepSchedule];
  sleepSettings = [(HDSPAnalyticsDailyReportBuilder *)self sleepSettings];
  analyticsManager = [(HDSPAnalyticsDailyReportBuilder *)self analyticsManager];
  [v9 setIsImproveHealthAndActivitySubmissionAllowed:{objc_msgSend(analyticsManager, "isImproveHealthAndActivitySubmissionAllowed")}];

  v13 = [(HDSPAnalyticsDailyReportBuilder *)self _userAgeForCurrentDate:currentDate];
  [v9 setUserAge:v13];

  _biologicalSex = [(HDSPAnalyticsDailyReportBuilder *)self _biologicalSex];
  [v9 setBiologicalSex:_biologicalSex];

  activePairedWatchProductType = [MEMORY[0x277D62410] activePairedWatchProductType];
  [v9 setActiveWatchProductType:activePairedWatchProductType];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];

  sleepCoachingOnboardingFirstCompletedDate = [sleepEventRecord sleepCoachingOnboardingFirstCompletedDate];
  v20 = [(HDSPAnalyticsDailyReportBuilder *)self _weeksSinceOnboardDate:sleepCoachingOnboardingFirstCompletedDate currentDate:currentDate calendar:hk_gregorianCalendar];

  sleepTrackingOnboardingFirstCompletedDate = [sleepEventRecord sleepTrackingOnboardingFirstCompletedDate];
  v22 = [(HDSPAnalyticsDailyReportBuilder *)self _weeksSinceOnboardDate:sleepTrackingOnboardingFirstCompletedDate currentDate:currentDate calendar:hk_gregorianCalendar];

  sleepWindDownShortcutsOnboardingFirstCompletedDate = [sleepEventRecord sleepWindDownShortcutsOnboardingFirstCompletedDate];
  v74 = currentDate;
  v69 = hk_gregorianCalendar;
  v24 = [(HDSPAnalyticsDailyReportBuilder *)self _weeksSinceOnboardDate:sleepWindDownShortcutsOnboardingFirstCompletedDate currentDate:currentDate calendar:hk_gregorianCalendar];

  [v9 setWeeksSinceOnboardedSleepSchedule:v20];
  [v9 setWeeksSinceOnboardedSleepTracking:v22];
  v68 = v24;
  [v9 setWeeksSinceOnboardedWindDownActions:v24];
  v70 = v20;
  if (v20)
  {
    hasOccurrences = 0;
  }

  else
  {
    hasOccurrences = [sleepSchedule hasOccurrences];
  }

  [v9 setScheduleMigration:hasOccurrences];
  [sleepSchedule sleepDurationGoal];
  [v9 setSleepGoal:?];
  [v9 setWatchSleepTrackingEnabled:{objc_msgSend(sleepSettings, "sleepTracking")}];
  [v9 setTimeInBedTrackingEnabled:{objc_msgSend(sleepSettings, "timeInBedTracking")}];
  [v9 setBedTimeWindDownRemindersEnabled:{objc_msgSend(sleepSettings, "bedtimeReminders")}];
  [v9 setWakeUpResultsEnabled:{objc_msgSend(sleepSettings, "wakeUpResults")}];
  [v9 setScheduledSleepModeEnabled:{objc_msgSend(sleepSettings, "scheduledSleepMode")}];
  [v9 setChargeRemindersEnabled:{objc_msgSend(sleepSettings, "chargingReminders")}];
  [v9 setInteractedWithWindDownLast24Hrs:{-[HDSPAnalyticsDailyReportBuilder _didInteractWithWindDownActionsWithinLastTwoDays](self, "_didInteractWithWindDownActionsWithinLastTwoDays")}];
  [v9 setUseSleepScreen:{(objc_msgSend(sleepSettings, "sleepModeOptions") >> 14) & 1}];
  [v9 setMaxSleepCoachingVersionOnboarded:{objc_msgSend(sleepEventRecord, "sleepCoachingOnboardingCompletedVersion")}];
  [v9 setMaxSleepTrackingVersionOnboarded:{objc_msgSend(sleepEventRecord, "sleepTrackingOnboardingCompletedVersion")}];
  sleepFocusConfiguration = [(HDSPAnalyticsDailyReportBuilder *)self sleepFocusConfiguration];
  v71 = sleepEventRecord;
  v72 = sleepSettings;
  v67 = sleepFocusConfiguration;
  if ([sleepFocusConfiguration hasSleepFocusMode])
  {
    v27 = [sleepFocusConfiguration state] != 1;
  }

  else
  {
    v27 = 0;
  }

  [v9 setHasSleepFocusConfigured:v27];
  v28 = [sleepSchedule occurrenceOnDay:2];
  [v9 setScheduleMonday:v28 != 0];
  alarmConfiguration = [v28 alarmConfiguration];
  [v9 setAlarmMonday:{objc_msgSend(alarmConfiguration, "isEnabled")}];

  v66 = v28;
  alarmConfiguration2 = [v28 alarmConfiguration];
  toneIdentifier = [alarmConfiguration2 toneIdentifier];
  [v9 setHapticToneIdentifierMonday:toneIdentifier];

  [v9 setIsDefaultScheduleMonday:{objc_msgSend(v28, "usesDefaultBedtimeAndWakeUpComponents")}];
  v32 = [sleepSchedule occurrenceOnDay:3];
  [v9 setScheduleTuesday:v32 != 0];
  alarmConfiguration3 = [v32 alarmConfiguration];
  [v9 setAlarmTuesday:{objc_msgSend(alarmConfiguration3, "isEnabled")}];

  v65 = v32;
  alarmConfiguration4 = [v32 alarmConfiguration];
  toneIdentifier2 = [alarmConfiguration4 toneIdentifier];
  [v9 setHapticToneIdentifierTuesday:toneIdentifier2];

  [v9 setIsDefaultScheduleTuesday:{objc_msgSend(v32, "usesDefaultBedtimeAndWakeUpComponents")}];
  v36 = [sleepSchedule occurrenceOnDay:4];
  [v9 setScheduleWednesday:v36 != 0];
  alarmConfiguration5 = [v36 alarmConfiguration];
  [v9 setAlarmWednesday:{objc_msgSend(alarmConfiguration5, "isEnabled")}];

  v64 = v36;
  alarmConfiguration6 = [v36 alarmConfiguration];
  toneIdentifier3 = [alarmConfiguration6 toneIdentifier];
  [v9 setHapticToneIdentifierWednesday:toneIdentifier3];

  [v9 setIsDefaultScheduleWednesday:{objc_msgSend(v36, "usesDefaultBedtimeAndWakeUpComponents")}];
  v40 = [sleepSchedule occurrenceOnDay:5];
  [v9 setScheduleThursday:v40 != 0];
  alarmConfiguration7 = [v40 alarmConfiguration];
  [v9 setAlarmThursday:{objc_msgSend(alarmConfiguration7, "isEnabled")}];

  alarmConfiguration8 = [v40 alarmConfiguration];
  toneIdentifier4 = [alarmConfiguration8 toneIdentifier];
  [v9 setHapticToneIdentifierThursday:toneIdentifier4];

  [v9 setIsDefaultScheduleThursday:{objc_msgSend(v40, "usesDefaultBedtimeAndWakeUpComponents")}];
  v44 = [sleepSchedule occurrenceOnDay:6];
  [v9 setScheduleFriday:v44 != 0];
  alarmConfiguration9 = [v44 alarmConfiguration];
  [v9 setAlarmFriday:{objc_msgSend(alarmConfiguration9, "isEnabled")}];

  alarmConfiguration10 = [v44 alarmConfiguration];
  toneIdentifier5 = [alarmConfiguration10 toneIdentifier];
  [v9 setHapticToneIdentifierFriday:toneIdentifier5];

  [v9 setIsDefaultScheduleFriday:{objc_msgSend(v44, "usesDefaultBedtimeAndWakeUpComponents")}];
  v48 = [sleepSchedule occurrenceOnDay:7];
  [v9 setScheduleSaturday:v48 != 0];
  alarmConfiguration11 = [v48 alarmConfiguration];
  [v9 setAlarmSaturday:{objc_msgSend(alarmConfiguration11, "isEnabled")}];

  alarmConfiguration12 = [v48 alarmConfiguration];
  toneIdentifier6 = [alarmConfiguration12 toneIdentifier];
  [v9 setHapticToneIdentifierSaturday:toneIdentifier6];

  [v9 setIsDefaultScheduleSaturday:{objc_msgSend(v48, "usesDefaultBedtimeAndWakeUpComponents")}];
  v52 = [sleepSchedule occurrenceOnDay:1];
  [v9 setScheduleSunday:v52 != 0];
  alarmConfiguration13 = [v52 alarmConfiguration];
  [v9 setAlarmSunday:{objc_msgSend(alarmConfiguration13, "isEnabled")}];

  alarmConfiguration14 = [v52 alarmConfiguration];
  toneIdentifier7 = [alarmConfiguration14 toneIdentifier];
  [v9 setHapticToneIdentifierSunday:toneIdentifier7];

  [v9 setIsDefaultScheduleSunday:{objc_msgSend(v52, "usesDefaultBedtimeAndWakeUpComponents")}];
  [v9 setScheduleDisabled:{objc_msgSend(sleepSchedule, "isEnabled") ^ 1}];
  [v9 setScheduleChangePast24Hours:{-[HDSPAnalyticsDailyReportBuilder _changedSchedule:withinNumberOfDays:currentDate:calendar:](self, "_changedSchedule:withinNumberOfDays:currentDate:calendar:", sleepSchedule, 1, v74, v69)}];
  [v9 setScheduleChangePast7days:{-[HDSPAnalyticsDailyReportBuilder _changedSchedule:withinNumberOfDays:currentDate:calendar:](self, "_changedSchedule:withinNumberOfDays:currentDate:calendar:", sleepSchedule, 7, v74, v69)}];
  standardDeviationActualTimeAsleep = [v73 standardDeviationActualTimeAsleep];
  [v9 setStddevActualTimeAsleep:standardDeviationActualTimeAsleep];

  standardDeviationScheduledTimeAsleep = [v73 standardDeviationScheduledTimeAsleep];
  [v9 setStddevScheduledTimeAsleep:standardDeviationScheduledTimeAsleep];

  standardDeviationActualVsScheduledTimeAsleep = [v73 standardDeviationActualVsScheduledTimeAsleep];
  [v9 setStddevActualVsScheduledTimeAsleep:standardDeviationActualVsScheduledTimeAsleep];

  [v9 setDaysWornWatchToSleepInLast7Days:{-[HDSPAnalyticsDailyReportBuilder _daysWatchWornToSleepOverLastNumberOfDays:excludeWeekdays:calendar:](self, "_daysWatchWornToSleepOverLastNumberOfDays:excludeWeekdays:calendar:", 7, 0, v69)}];
  [v9 setDaysWornWatchToSleepInLast30Days:{-[HDSPAnalyticsDailyReportBuilder _daysWatchWornToSleepOverLastNumberOfDays:excludeWeekdays:calendar:](self, "_daysWatchWornToSleepOverLastNumberOfDays:excludeWeekdays:calendar:", 30, 0, v69)}];
  [v9 setWeekendDaysWornWatchToSleepInLast7Days:{-[HDSPAnalyticsDailyReportBuilder _daysWatchWornToSleepOverLastNumberOfDays:excludeWeekdays:calendar:](self, "_daysWatchWornToSleepOverLastNumberOfDays:excludeWeekdays:calendar:", 7, 1, v69)}];
  [v9 setDidWearWatchToSleepLastNight:{-[HDSPAnalyticsDailyReportBuilder _woreWatchToSleepLastNight](self, "_woreWatchToSleepLastNight")}];
  [(HDSPAnalyticsDailyReportBuilder *)self _bucketedSleepDurationLastNight];
  [v9 setSleepDurationLastNight:?];
  [(HDSPAnalyticsDailyReportBuilder *)self _sleepDurationLastNightIncludingAwake:1];
  [v9 setNumberOfAwakeEventsLastNight:{-[HDSPAnalyticsDailyReportBuilder _lastNightsNumberOfAwakeEvents](self, "_lastNightsNumberOfAwakeEvents")}];
  v59 = objc_opt_class();
  [(HDSPAnalyticsDailyReportBuilder *)self _lastNightsDurationForSleepStage:2];
  [v9 setSleepStagePercentAwakeLastNight:{objc_msgSend(v59, "_stageDurationPercentage:ofTotalDuration:")}];
  v60 = objc_opt_class();
  [(HDSPAnalyticsDailyReportBuilder *)self _lastNightsDurationForSleepStage:5];
  [v9 setSleepStagePercentRemLastNight:{objc_msgSend(v60, "_stageDurationPercentage:ofTotalDuration:")}];
  v61 = objc_opt_class();
  [(HDSPAnalyticsDailyReportBuilder *)self _lastNightsDurationForSleepStage:3];
  [v9 setSleepStagePercentCoreLastNight:{objc_msgSend(v61, "_stageDurationPercentage:ofTotalDuration:")}];
  v62 = objc_opt_class();
  [(HDSPAnalyticsDailyReportBuilder *)self _lastNightsDurationForSleepStage:4];
  [v9 setSleepStagePercentDeepLastNight:{objc_msgSend(v62, "_stageDurationPercentage:ofTotalDuration:")}];
  [(HDSPSleepApneaAnalyticsBuilder *)self->_sleepApneaAnalyticsBuilder updateDailyReportWithSleepApneaAnalytics:v9];

  return v9;
}

- (int64_t)_daysWatchWornToSleepOverLastNumberOfDays:(int64_t)days excludeWeekdays:(BOOL)weekdays calendar:(id)calendar
{
  calendarCopy = calendar;
  v9 = calendarCopy;
  duration = self->_morningIndexRange.duration;
  v11 = self->_morningIndexRange.start + duration - 1;
  if (duration <= 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v11 - days + 1;
  hk_weekendDays = [calendarCopy hk_weekendDays];
  daySummaries = self->_daySummaries;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__HDSPAnalyticsDailyReportBuilder__daysWatchWornToSleepOverLastNumberOfDays_excludeWeekdays_calendar___block_invoke;
  v20[3] = &unk_279C7B9A0;
  v23 = v12;
  daysCopy = days;
  weekdaysCopy = weekdays;
  v21 = v9;
  v22 = hk_weekendDays;
  v15 = hk_weekendDays;
  v16 = v9;
  v17 = [(NSArray *)daySummaries hk_filter:v20];
  v18 = [v17 count];

  return v18;
}

uint64_t __102__HDSPAnalyticsDailyReportBuilder__daysWatchWornToSleepOverLastNumberOfDays_excludeWeekdays_calendar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 morningIndex];
  v5 = *(a1 + 48);
  v6 = __OFSUB__(v4, v5);
  v7 = v4 - v5;
  v8 = v7 < 0 == v6 && v7 < *(a1 + 56);
  if (v8 && [v3 containsPeriodsWithAppleSleepTrackingData])
  {
    if (*(a1 + 64) == 1)
    {
      v9 = *(a1 + 32);
      v10 = [v3 dateInterval];
      v11 = [v10 endDate];
      v12 = [v9 component:512 fromDate:v11];

      v13 = *(a1 + 40);
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
      v15 = [v13 containsObject:v14];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_woreWatchToSleepLastNight
{
  duration = self->_morningIndexRange.duration;
  v3 = self->_morningIndexRange.start + duration - 1;
  if (duration <= 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  daySummaries = self->_daySummaries;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HDSPAnalyticsDailyReportBuilder__woreWatchToSleepLastNight__block_invoke;
  v8[3] = &__block_descriptor_48_e27_B16__0__HKSleepDaySummary_8l;
  v8[4] = v3;
  v8[5] = 1;
  v5 = [(NSArray *)daySummaries na_firstObjectPassingTest:v8];
  containsPeriodsWithAppleSleepTrackingData = [v5 containsPeriodsWithAppleSleepTrackingData];

  return containsPeriodsWithAppleSleepTrackingData;
}

BOOL __61__HDSPAnalyticsDailyReportBuilder__woreWatchToSleepLastNight__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morningIndex];
  v4 = *(a1 + 32);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  return v6 < 0 == v5 && v6 < *(a1 + 40);
}

- (double)_bucketedSleepDurationLastNight
{
  [(HDSPAnalyticsDailyReportBuilder *)self _sleepDurationLastNightIncludingAwake:0];
  v3 = v2 / 60.0;
  v4 = v3 / 0x3C;
  v5 = v3 % 0x3C;
  v6 = dbl_269B98280[v5 < 0x2D];
  if (v5 < 0xF)
  {
    v6 = 0.0;
  }

  return v6 + v4 * 3600.0;
}

- (double)_sleepDurationLastNightIncludingAwake:(BOOL)awake
{
  duration = self->_morningIndexRange.duration;
  v5 = self->_morningIndexRange.start + duration - 1;
  if (duration <= 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  daySummaries = self->_daySummaries;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HDSPAnalyticsDailyReportBuilder__sleepDurationLastNightIncludingAwake___block_invoke;
  v16[3] = &__block_descriptor_48_e27_B16__0__HKSleepDaySummary_8l;
  v16[4] = v5;
  v16[5] = 1;
  v7 = [(NSArray *)daySummaries na_firstObjectPassingTest:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HDSPAnalyticsDailyReportBuilder__sleepDurationLastNightIncludingAwake___block_invoke_2;
  v10[3] = &unk_279C7BA10;
  awakeCopy = awake;
  v10[4] = &v12;
  [v7 hdsp_enumerateFirstPartyWatchSleepTrackingSegmentsWithBlock:v10];
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v8;
}

BOOL __73__HDSPAnalyticsDailyReportBuilder__sleepDurationLastNightIncludingAwake___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morningIndex];
  v4 = *(a1 + 32);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  return v6 < 0 == v5 && v6 < *(a1 + 40);
}

void __73__HDSPAnalyticsDailyReportBuilder__sleepDurationLastNightIncludingAwake___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HKCategoryValueSleepAnalysisAsleepValues();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "category")}];
  if ([v4 containsObject:v5])
  {
  }

  else
  {
    if (*(a1 + 40) != 1)
    {

      goto LABEL_8;
    }

    v6 = [v3 category];

    if (v6 != 2)
    {
      goto LABEL_9;
    }
  }

  v4 = [v3 sampleIntervals];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HDSPAnalyticsDailyReportBuilder__sleepDurationLastNightIncludingAwake___block_invoke_3;
  v7[3] = &unk_279C7B9E8;
  v7[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v7];
LABEL_8:

LABEL_9:
}

double __73__HDSPAnalyticsDailyReportBuilder__sleepDurationLastNightIncludingAwake___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 duration];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

- (double)_lastNightsDurationForSleepStage:(int64_t)stage
{
  duration = self->_morningIndexRange.duration;
  v5 = self->_morningIndexRange.start + duration - 1;
  if (duration <= 0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  daySummaries = self->_daySummaries;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HDSPAnalyticsDailyReportBuilder__lastNightsDurationForSleepStage___block_invoke;
  v15[3] = &__block_descriptor_48_e27_B16__0__HKSleepDaySummary_8l;
  v15[4] = v5;
  v15[5] = 1;
  v7 = [(NSArray *)daySummaries na_firstObjectPassingTest:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HDSPAnalyticsDailyReportBuilder__lastNightsDurationForSleepStage___block_invoke_2;
  v10[3] = &unk_279C7BA38;
  v10[4] = &v11;
  v10[5] = stage;
  [v7 hdsp_enumerateFirstPartyWatchSleepTrackingSegmentsWithBlock:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

BOOL __68__HDSPAnalyticsDailyReportBuilder__lastNightsDurationForSleepStage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morningIndex];
  v4 = *(a1 + 32);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  return v6 < 0 == v5 && v6 < *(a1 + 40);
}

void __68__HDSPAnalyticsDailyReportBuilder__lastNightsDurationForSleepStage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 category] == *(a1 + 40))
  {
    v4 = [v3 sampleIntervals];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __68__HDSPAnalyticsDailyReportBuilder__lastNightsDurationForSleepStage___block_invoke_3;
    v5[3] = &unk_279C7B9E8;
    v5[4] = *(a1 + 32);
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

double __68__HDSPAnalyticsDailyReportBuilder__lastNightsDurationForSleepStage___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 duration];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

+ (unint64_t)_stageDurationPercentage:(double)percentage ofTotalDuration:(double)duration
{
  if (duration <= 0.0)
  {
    return 0;
  }

  else
  {
    return vcvtad_u64_f64(percentage / duration * 100.0);
  }
}

- (int64_t)_lastNightsNumberOfAwakeEvents
{
  duration = self->_morningIndexRange.duration;
  v3 = self->_morningIndexRange.start + duration - 1;
  if (duration <= 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  daySummaries = self->_daySummaries;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__HDSPAnalyticsDailyReportBuilder__lastNightsNumberOfAwakeEvents__block_invoke;
  v17[3] = &__block_descriptor_48_e27_B16__0__HKSleepDaySummary_8l;
  v17[4] = v3;
  v17[5] = 1;
  v5 = [(NSArray *)daySummaries na_firstObjectPassingTest:v17];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HDSPAnalyticsDailyReportBuilder__lastNightsNumberOfAwakeEvents__block_invoke_2;
  v8[3] = &unk_279C7BA60;
  v8[4] = &v9;
  v8[5] = &v13;
  [v5 hdsp_enumerateFirstPartyWatchSleepTrackingSegmentsWithBlock:v8];
  v6 = v14[3];
  if (*(v10 + 24) == 1 && v6 >= 1)
  {
    v14[3] = --v6;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

BOOL __65__HDSPAnalyticsDailyReportBuilder__lastNightsNumberOfAwakeEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morningIndex];
  v4 = *(a1 + 32);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  return v6 < 0 == v5 && v6 < *(a1 + 40);
}

uint64_t __65__HDSPAnalyticsDailyReportBuilder__lastNightsNumberOfAwakeEvents__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 category];
  v4 = *(*(a1 + 32) + 8);
  if (result == 2)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
      v4 = *(*(a1 + 32) + 8);
    }

    *(v4 + 24) = 1;
  }

  else
  {
    *(v4 + 24) = 0;
  }

  return result;
}

- (id)_windDownEvents
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  analyticsStore = [(HDSPAnalyticsDailyReportBuilder *)self analyticsStore];
  uncollectedWindDownActions = [analyticsStore uncollectedWindDownActions];

  activePairedWatchProductType = [MEMORY[0x277D62410] activePairedWatchProductType];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];

  sleepWindDownShortcutsOnboardingFirstCompletedDate = [sleepEventRecord sleepWindDownShortcutsOnboardingFirstCompletedDate];
  currentDate = [(HDSPAnalyticsDailyReportBuilder *)self currentDate];
  v12 = [(HDSPAnalyticsDailyReportBuilder *)self _weeksSinceOnboardDate:sleepWindDownShortcutsOnboardingFirstCompletedDate currentDate:currentDate calendar:hk_gregorianCalendar];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__HDSPAnalyticsDailyReportBuilder__windDownEvents__block_invoke;
  v17[3] = &unk_279C7BA88;
  v18 = activePairedWatchProductType;
  v19 = v12;
  v13 = v12;
  v14 = activePairedWatchProductType;
  v15 = [uncollectedWindDownActions na_map:v17];

  return v15;
}

id __50__HDSPAnalyticsDailyReportBuilder__windDownEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D62430];
  v4 = a2;
  v5 = [[v3 alloc] initWithWindDownEventData:v4 watchProductType:*(a1 + 32) weeksSinceOnboarded:*(a1 + 40)];

  return v5;
}

- (id)_dateOfLastSuccessfulBreathingDisturbanceAnalysis
{
  v3 = objc_alloc(MEMORY[0x277CCD570]);
  v4 = *MEMORY[0x277D62650];
  healthStore = [(HDSPAnalyticsDailyReportBuilder *)self healthStore];
  v6 = [v3 initWithCategory:2 domainName:v4 healthStore:healthStore];

  v7 = [v6 dateForKey:*MEMORY[0x277D62638] error:0];

  return v7;
}

- (BOOL)_didInteractWithWindDownActionsWithinLastTwoDays
{
  v32 = *MEMORY[0x277D85DE8];
  currentDate = [(HDSPAnalyticsDailyReportBuilder *)self currentDate];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v5 = [currentDate hk_morningIndexWithCalendar:hk_gregorianCalendar] - 2;

  analyticsStore = [(HDSPAnalyticsDailyReportBuilder *)self analyticsStore];
  v7 = [analyticsStore windDownActionsAfterMorningIndex:v5];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allValues = [v7 allValues];
  v9 = [allValues countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v23;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([*(*(&v22 + 1) + 8 * j) wasUsed])
              {

                v19 = 1;
                goto LABEL_19;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v26 objects:v31 count:16];
      v19 = 0;
    }

    while (v10);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_changedSchedule:(id)schedule withinNumberOfDays:(unint64_t)days currentDate:(id)date calendar:(id)calendar
{
  v24 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  dateCopy = date;
  calendarCopy = calendar;
  lastModifiedDate = [scheduleCopy lastModifiedDate];

  if (lastModifiedDate)
  {
    lastModifiedDate2 = [scheduleCopy lastModifiedDate];
    v14 = [lastModifiedDate2 hksp_isAfterDate:dateCopy];

    if (!v14)
    {
      lastModifiedDate3 = [scheduleCopy lastModifiedDate];
      v18 = [calendarCopy components:16 fromDate:lastModifiedDate3 toDate:dateCopy options:0];

      v16 = [v18 day] <= days;
      goto LABEL_8;
    }

    v15 = HKSPLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = 138543362;
      v23 = objc_opt_class();
      v21 = v23;
      _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Schedule's last modified date occurred after the current date", &v22, 0xCu);
    }
  }

  v16 = 0;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_weeksSinceOnboardDate:(id)date currentDate:(id)currentDate calendar:(id)calendar
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  currentDateCopy = currentDate;
  calendarCopy = calendar;
  if (!dateCopy)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

  if ([dateCopy hksp_isAfterDate:currentDateCopy])
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v17 = v19;
      _os_log_error_impl(&dword_269B11000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Onboard date occurred after the current date", &v18, 0xCu);
    }

    goto LABEL_6;
  }

  v12 = [calendarCopy startOfDayForDate:dateCopy];
  v13 = [calendarCopy startOfDayForDate:currentDateCopy];
  v14 = [calendarCopy components:0x2000 fromDate:v12 toDate:v13 options:0];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "weekOfYear")}];

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_biologicalSex
{
  v17 = *MEMORY[0x277D85DE8];
  healthStore = [(HDSPAnalyticsDailyReportBuilder *)self healthStore];
  v12 = 0;
  v3 = [healthStore biologicalSexWithError:&v12];
  v4 = v12;

  if (v4)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v4;
      v11 = v10;
      _os_log_error_impl(&dword_269B11000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Unable access biological sex due to error: %{public}@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  biologicalSex = [v3 biologicalSex];
  if (biologicalSex > 3)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = off_279C7BAF8[biologicalSex];
LABEL_8:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_userAgeForCurrentDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  healthStore = [(HDSPAnalyticsDailyReportBuilder *)self healthStore];
  v15 = 0;
  v6 = [healthStore dateOfBirthComponentsWithError:&v15];
  v7 = v15;

  if (v7)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v7;
      v14 = v13;
      _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Unable access age due to error: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v10 = [v6 hk_ageWithCurrentDate:dateCopy];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange
{
  duration = self->_morningIndexRange.duration;
  start = self->_morningIndexRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end