@interface HKSPSleepEventTimelineBuilder
+ (id)builderWithSleepScheduleModel:(id)model date:(id)date;
- (HKSPSleepEventTimelineBuilder)initWithSleepScheduleModel:(id)model date:(id)date;
- (id)_windDownDateForBedtimeDate:(id)date;
- (id)buildTimelineWithOptions:(unint64_t)options;
- (void)_addSessionToTimelineWithWakeUpDate:(id)date bedtimeDate:(id)bedtimeDate windDownDate:(id)downDate occurrence:(id)occurrence;
- (void)_adjustSessionForConfirmedWakeUp;
- (void)_adjustSessionForSnoozedWakeUpAlarm;
- (void)_adjustSessions;
- (void)_gatherSessions;
- (void)_gatherSessionsForOccurrence:(id)occurrence overrideOccurrence:(id)overrideOccurrence;
- (void)_gatherSessionsForValidationForOccurrence:(id)occurrence overrideOccurrence:(id)overrideOccurrence;
- (void)_validateSessionAdjustmentForSnoozedWakeUpAlarm;
@end

@implementation HKSPSleepEventTimelineBuilder

+ (id)builderWithSleepScheduleModel:(id)model date:(id)date
{
  dateCopy = date;
  modelCopy = model;
  v8 = [[self alloc] initWithSleepScheduleModel:modelCopy date:dateCopy];

  return v8;
}

- (HKSPSleepEventTimelineBuilder)initWithSleepScheduleModel:(id)model date:(id)date
{
  modelCopy = model;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = HKSPSleepEventTimelineBuilder;
  v9 = [(HKSPSleepEventTimelineBuilder *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepScheduleModel, model);
    objc_storeStrong(&v10->_date, date);
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    calendar = v10->_calendar;
    v10->_calendar = hk_gregorianCalendar;

    v13 = v10;
  }

  return v10;
}

- (id)buildTimelineWithOptions:(unint64_t)options
{
  v5 = objc_alloc_init(HKSPSleepEventTimelineResults);
  results = self->_results;
  self->_results = v5;

  self->_options = options;
  if ((options & 4) != 0)
  {
    sleepSchedule = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepSchedule];
    [(HKSPSleepEventTimelineResults *)self->_results setOriginalSleepSchedule:sleepSchedule];

    sleepSchedule2 = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepSchedule];
    emptyCopy = [sleepSchedule2 emptyCopy];
    v10 = [emptyCopy mutableCopy];
    [(HKSPSleepEventTimelineResults *)self->_results setMutableValidSleepSchedule:v10];
  }

  v11 = [[HKSPSleepEventTimeline alloc] initWithOriginDate:self->_date];
  [(HKSPSleepEventTimelineResults *)self->_results setTimeline:v11];

  sleepSchedule3 = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepSchedule];
  if ([sleepSchedule3 isEnabled])
  {
  }

  else
  {
    options = self->_options;

    if ((options & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  [(HKSPSleepEventTimelineBuilder *)self _gatherSessions];
  v14 = self->_options;
  if ((v14 & 2) != 0)
  {
    [(HKSPSleepEventTimelineBuilder *)self _validateSessionAdjustments];
  }

  else if ((v14 & 1) == 0)
  {
    [(HKSPSleepEventTimelineBuilder *)self _adjustSessions];
  }

LABEL_10:
  v15 = self->_results;

  return v15;
}

- (void)_gatherSessions
{
  v3 = (LOBYTE(self->_options) >> 1) & 1;
  sleepSchedule = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepSchedule];
  overrideOccurrence = [sleepSchedule overrideOccurrence];

  sleepSchedule2 = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepSchedule];
  occurrences = [sleepSchedule2 occurrences];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HKSPSleepEventTimelineBuilder__gatherSessions__block_invoke;
  v11[3] = &unk_279C76128;
  v13 = v3;
  v11[4] = self;
  v12 = overrideOccurrence;
  v8 = overrideOccurrence;
  [occurrences na_each:v11];

  timeline = [(HKSPSleepEventTimelineResults *)self->_results timeline];
  v10 = [timeline copy];
  [(HKSPSleepEventTimelineResults *)self->_results setUnadjustedTimeline:v10];
}

void __48__HKSPSleepEventTimelineBuilder__gatherSessions__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 isValidOccurrence];
  v5 = *(a1 + 48);
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48))
    {
      [v6 _gatherSessionsForValidationForOccurrence:v3 overrideOccurrence:v7];
    }

    else
    {
      [v6 _gatherSessionsForOccurrence:v3 overrideOccurrence:v7];
    }
  }

  else if (*(a1 + 48))
  {
    v8 = HKSPLogForCategory(6uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v3;
      _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] occurrence is invalid %{public}@", &v11, 0x16u);
    }

    [*(*(a1 + 32) + 8) setSleepScheduleInvalid:1];
    [*(*(a1 + 32) + 8) setSleepScheduleInvalidReason:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_gatherSessionsForValidationForOccurrence:(id)occurrence overrideOccurrence:(id)overrideOccurrence
{
  occurrenceCopy = occurrence;
  overrideOccurrenceCopy = overrideOccurrence;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__10;
  v33[4] = __Block_byref_object_dispose__10;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [occurrenceCopy mutableCopy];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __94__HKSPSleepEventTimelineBuilder__gatherSessionsForValidationForOccurrence_overrideOccurrence___block_invoke;
  v26 = &unk_279C76178;
  v9 = occurrenceCopy;
  v27 = v9;
  selfCopy = self;
  v31 = v33;
  v32 = &v35;
  v10 = overrideOccurrenceCopy;
  v29 = v10;
  v11 = v8;
  v30 = v11;
  v12 = MEMORY[0x26D64AA30](&v23);
  if ([v9 isSingleDayOverride])
  {
    calendar = self->_calendar;
    wakeUpComponents = [v10 wakeUpComponents];
    mutableValidSleepSchedule2 = [(NSCalendar *)calendar dateFromComponents:wakeUpComponents];

    v16 = self->_calendar;
    bedtimeComponents = [v10 bedtimeComponents];
    v18 = [(NSCalendar *)v16 dateFromComponents:bedtimeComponents];

    v19 = [(HKSPSleepEventTimelineBuilder *)self _windDownDateForBedtimeDate:v18];
    [(HKSPSleepEventTimelineBuilder *)self _addSessionToTimelineWithWakeUpDate:mutableValidSleepSchedule2 bedtimeDate:v18 windDownDate:v19 occurrence:v10];
    if ((self->_options & 4) != 0)
    {
      mutableValidSleepSchedule = [(HKSPSleepEventTimelineResults *)self->_results mutableValidSleepSchedule];
      [mutableValidSleepSchedule saveOccurrence:v11];
    }

    goto LABEL_8;
  }

  (v12)[2](v12, [v9 weekdays], self->_date, 0);
  v21 = HKSPPreviousDayInWeekdays(v36[3], [v9 weekdays]);
  v22 = HKSPWeekdaysFromDay(v21);
  (v12)[2](v12, v22, self->_date, 1);
  if ((self->_options & 4) != 0 && [v11 weekdays])
  {
    mutableValidSleepSchedule2 = [(HKSPSleepEventTimelineResults *)self->_results mutableValidSleepSchedule];
    [mutableValidSleepSchedule2 saveOccurrence:v11];
LABEL_8:
  }

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);
}

void __94__HKSPSleepEventTimelineBuilder__gatherSessionsForValidationForOccurrence_overrideOccurrence___block_invoke(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__HKSPSleepEventTimelineBuilder__gatherSessionsForValidationForOccurrence_overrideOccurrence___block_invoke_2;
  v10[3] = &unk_279C76150;
  v11 = *(a1 + 32);
  v12 = v7;
  v17 = a4;
  v8 = *(a1 + 48);
  v13 = *(a1 + 40);
  v16 = *(a1 + 64);
  v14 = v8;
  v15 = *(a1 + 56);
  v9 = v7;
  HKSPWeekdaysEnumerateDays(a2, v10, 0);
}

void __94__HKSPSleepEventTimelineBuilder__gatherSessionsForValidationForOccurrence_overrideOccurrence___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) wakeUpDateForDate:*(a1 + 40) day:a2 searchBackwards:*(a1 + 88) gregorianCalendar:*(*(a1 + 48) + 32)];
  if ([v4 hksp_isBeforeDate:*(*(*(a1 + 72) + 8) + 40)])
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v4);
    *(*(*(a1 + 80) + 8) + 24) = a2;
  }

  if (([*(a1 + 56) overridesWakeUpForOccurrenceOnDate:v4 gregorianCalendar:*(*(a1 + 48) + 32)] & 1) == 0)
  {
    v5 = [*(a1 + 32) bedtimeDateForWakeUpDate:v4 gregorianCalendar:*(*(a1 + 48) + 32)];
    v6 = [*(a1 + 48) _windDownDateForBedtimeDate:v5];
    v7 = [HKSPResolvedSleepScheduleOccurrence alloc];
    v8 = *(a1 + 32);
    v9 = [HKSPSleepEvent sleepEventWithIdentifier:@"HKSPSleepEventIdentifierWakeUp" dueDate:v4];
    v10 = [HKSPSleepEvent sleepEventWithIdentifier:@"HKSPSleepEventIdentifierBedtime" dueDate:v5];
    if (v6)
    {
      v11 = [HKSPSleepEvent sleepEventWithIdentifier:@"HKSPSleepEventIdentifierWindDown" dueDate:v6];
      v12 = [(HKSPResolvedSleepScheduleOccurrence *)v7 initWithOccurrence:v8 wakeUpEvent:v9 bedtimeEvent:v10 windDownEvent:v11];
    }

    else
    {
      v12 = [(HKSPResolvedSleepScheduleOccurrence *)v7 initWithOccurrence:v8 wakeUpEvent:v9 bedtimeEvent:v10 windDownEvent:0];
    }

    v13 = [*(*(a1 + 48) + 8) timeline];
    v14 = [v13 resolvedOccurrenceOverlappingOccurrence:v12];

    if (v14)
    {
      v15 = [v14 occurrence];
      v16 = [v15 isSingleDayOverride];

      if (v16)
      {
        v17 = [v14 occurrence];
        v18 = [v17 wakeUpComponents];

        v19 = [*(*(a1 + 48) + 32) dateFromComponents:v18];
        if ([v19 hksp_isBeforeDate:*(*(a1 + 48) + 24)])
        {
          v20 = HKSPLogForCategory(6uLL);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 48);
            v22 = [v14 occurrence];
            v27 = 138543618;
            v28 = v21;
            v29 = 2114;
            v30 = v22;
            _os_log_impl(&dword_269A84000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring overlap with expired override occurrence %{public}@", &v27, 0x16u);
          }

          goto LABEL_19;
        }
      }

      [*(*(a1 + 48) + 8) setSleepScheduleInvalid:1];
      v24 = [v14 occurrence];
      if ([v24 isSingleDayOverride])
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      [*(*(a1 + 48) + 8) setSleepScheduleInvalidReason:v25];

      [*(a1 + 64) turnOffWeekdays:HKSPWeekdaysFromDay(a2)];
    }

    else
    {
      v23 = [*(*(a1 + 48) + 8) timeline];
      [v23 addResolvedOccurrence:v12];
    }

LABEL_19:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_gatherSessionsForOccurrence:(id)occurrence overrideOccurrence:(id)overrideOccurrence
{
  occurrenceCopy = occurrence;
  overrideOccurrenceCopy = overrideOccurrence;
  if ([occurrenceCopy isSingleDayOverride])
  {
    calendar = self->_calendar;
    wakeUpComponents = [occurrenceCopy wakeUpComponents];
    v9 = [(NSCalendar *)calendar dateFromComponents:wakeUpComponents];

    v10 = self->_calendar;
    bedtimeComponents = [occurrenceCopy bedtimeComponents];
    v12 = [(NSCalendar *)v10 dateFromComponents:bedtimeComponents];

    v13 = [(HKSPSleepEventTimelineBuilder *)self _windDownDateForBedtimeDate:v12];
    [(HKSPSleepEventTimelineBuilder *)self _addSessionToTimelineWithWakeUpDate:v9 bedtimeDate:v12 windDownDate:v13 occurrence:occurrenceCopy];
  }

  else
  {
    v9 = [occurrenceCopy wakeUpDateForDate:self->_date searchBackwards:0 gregorianCalendar:self->_calendar];
    if (([overrideOccurrenceCopy overridesWakeUpForOccurrenceOnDate:v9 gregorianCalendar:self->_calendar] & 1) == 0)
    {
      v14 = [occurrenceCopy bedtimeDateForWakeUpDate:v9 gregorianCalendar:self->_calendar];
      v15 = [(HKSPSleepEventTimelineBuilder *)self _windDownDateForBedtimeDate:v14];
      [(HKSPSleepEventTimelineBuilder *)self _addSessionToTimelineWithWakeUpDate:v9 bedtimeDate:v14 windDownDate:v15 occurrence:occurrenceCopy];
    }

    v12 = [occurrenceCopy wakeUpDateForDate:v9 searchBackwards:0 gregorianCalendar:self->_calendar];
    if (([overrideOccurrenceCopy overridesWakeUpForOccurrenceOnDate:v12 gregorianCalendar:self->_calendar] & 1) == 0)
    {
      v16 = [occurrenceCopy bedtimeDateForWakeUpDate:v12 gregorianCalendar:self->_calendar];
      v17 = [(HKSPSleepEventTimelineBuilder *)self _windDownDateForBedtimeDate:v16];
      [(HKSPSleepEventTimelineBuilder *)self _addSessionToTimelineWithWakeUpDate:v12 bedtimeDate:v16 windDownDate:v17 occurrence:occurrenceCopy];
    }

    v18 = [(NSDate *)self->_date dateByAddingTimeInterval:1.0];
    v13 = [occurrenceCopy wakeUpDateForDate:v18 searchBackwards:1 gregorianCalendar:self->_calendar];

    if (([overrideOccurrenceCopy overridesWakeUpForOccurrenceOnDate:v13 gregorianCalendar:self->_calendar] & 1) == 0)
    {
      v19 = [occurrenceCopy bedtimeDateForWakeUpDate:v13 gregorianCalendar:self->_calendar];
      v20 = [(HKSPSleepEventTimelineBuilder *)self _windDownDateForBedtimeDate:v19];
      [(HKSPSleepEventTimelineBuilder *)self _addSessionToTimelineWithWakeUpDate:v13 bedtimeDate:v19 windDownDate:v20 occurrence:occurrenceCopy];
    }

    v21 = [occurrenceCopy wakeUpDateForDate:v13 searchBackwards:1 gregorianCalendar:self->_calendar];
    if (([overrideOccurrenceCopy overridesWakeUpForOccurrenceOnDate:v21 gregorianCalendar:self->_calendar] & 1) == 0)
    {
      v22 = [occurrenceCopy bedtimeDateForWakeUpDate:v21 gregorianCalendar:self->_calendar];
      v23 = [(HKSPSleepEventTimelineBuilder *)self _windDownDateForBedtimeDate:v22];
      [(HKSPSleepEventTimelineBuilder *)self _addSessionToTimelineWithWakeUpDate:v21 bedtimeDate:v22 windDownDate:v23 occurrence:occurrenceCopy];
    }
  }
}

- (void)_addSessionToTimelineWithWakeUpDate:(id)date bedtimeDate:(id)bedtimeDate windDownDate:(id)downDate occurrence:(id)occurrence
{
  downDateCopy = downDate;
  occurrenceCopy = occurrence;
  bedtimeDateCopy = bedtimeDate;
  dateCopy = date;
  v13 = [HKSPResolvedSleepScheduleOccurrence alloc];
  v14 = [HKSPSleepEvent sleepEventWithIdentifier:@"HKSPSleepEventIdentifierWakeUp" dueDate:dateCopy];

  v15 = [HKSPSleepEvent sleepEventWithIdentifier:@"HKSPSleepEventIdentifierBedtime" dueDate:bedtimeDateCopy];

  if (downDateCopy)
  {
    v16 = [HKSPSleepEvent sleepEventWithIdentifier:@"HKSPSleepEventIdentifierWindDown" dueDate:downDateCopy];
    v17 = [(HKSPResolvedSleepScheduleOccurrence *)v13 initWithOccurrence:occurrenceCopy wakeUpEvent:v14 bedtimeEvent:v15 windDownEvent:v16];
  }

  else
  {
    v17 = [(HKSPResolvedSleepScheduleOccurrence *)v13 initWithOccurrence:occurrenceCopy wakeUpEvent:v14 bedtimeEvent:v15 windDownEvent:0];
  }

  timeline = [(HKSPSleepEventTimelineResults *)self->_results timeline];
  [timeline addResolvedOccurrence:v17];
}

- (id)_windDownDateForBedtimeDate:(id)date
{
  dateCopy = date;
  sleepSchedule = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepSchedule];
  [sleepSchedule windDownTime];
  v7 = v6;

  if (v7)
  {
    v8 = [(NSCalendar *)self->_calendar dateByAddingUnit:128 value:-v7 toDate:dateCopy options:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_adjustSessions
{
  [(HKSPSleepEventTimelineBuilder *)self _adjustSessionForSnoozedWakeUpAlarm];

  [(HKSPSleepEventTimelineBuilder *)self _adjustSessionForConfirmedWakeUp];
}

- (void)_adjustSessionForSnoozedWakeUpAlarm
{
  v17 = *MEMORY[0x277D85DE8];
  sleepEventRecord = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepEventRecord];
  wakeUpAlarmSnoozedUntilDate = [sleepEventRecord wakeUpAlarmSnoozedUntilDate];

  if (HKSPIsValidDate(wakeUpAlarmSnoozedUntilDate))
  {
    unadjustedTimeline = [(HKSPSleepEventTimelineResults *)self->_results unadjustedTimeline];
    v6 = [unadjustedTimeline resolvedOccurrencePrecedingDate:wakeUpAlarmSnoozedUntilDate];

    if (v6)
    {
      occurrence = [v6 occurrence];
      alarmConfiguration = [occurrence alarmConfiguration];

      if ([alarmConfiguration isEnabled])
      {
        v9 = HKSPLogForCategory(6uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v13 = 138543618;
          selfCopy = self;
          v15 = 2114;
          v16 = wakeUpAlarmSnoozedUntilDate;
          _os_log_debug_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] snoozed wake up alarm until %{public}@", &v13, 0x16u);
        }

        v10 = [HKSPSleepEvent sleepEventWithIdentifier:@"HKSPSleepEventIdentifierWakeUp" dueDate:wakeUpAlarmSnoozedUntilDate type:1];
        timeline = [(HKSPSleepEventTimelineResults *)self->_results timeline];
        [timeline adjustResolvedOccurrence:v6 withEvent:v10];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_adjustSessionForConfirmedWakeUp
{
  v38 = *MEMORY[0x277D85DE8];
  sleepEventRecord = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepEventRecord];
  wakeUpAlarmDismissedDate = [sleepEventRecord wakeUpAlarmDismissedDate];

  sleepEventRecord2 = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepEventRecord];
  wakeUpConfirmedUntilDate = [sleepEventRecord2 wakeUpConfirmedUntilDate];

  if ((HKSPIsValidDate(wakeUpAlarmDismissedDate) & 1) != 0 || HKSPIsValidDate(wakeUpConfirmedUntilDate))
  {
    if (HKSPIsValidDate(wakeUpAlarmDismissedDate) && HKSPIsValidDate(wakeUpConfirmedUntilDate))
    {
      v7 = [wakeUpAlarmDismissedDate laterDate:wakeUpConfirmedUntilDate];
    }

    else
    {
      if (HKSPIsValidDate(wakeUpAlarmDismissedDate))
      {
        v8 = wakeUpAlarmDismissedDate;
      }

      else
      {
        v8 = wakeUpConfirmedUntilDate;
      }

      v7 = v8;
    }

    v9 = v7;
    if (v7 == wakeUpConfirmedUntilDate)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      sleepEventRecord3 = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepEventRecord];
      wakeUpEarlyNotificationConfirmedDate = [sleepEventRecord3 wakeUpEarlyNotificationConfirmedDate];

      [v11 na_safeAddObject:wakeUpEarlyNotificationConfirmedDate];
      sleepEventRecord4 = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepEventRecord];
      wakeUpOverriddenDate = [sleepEventRecord4 wakeUpOverriddenDate];

      [v11 na_safeAddObject:wakeUpOverriddenDate];
      v10 = [MEMORY[0x277CBEAA8] hksp_latestFromDates:v11];
    }

    else
    {
      v10 = wakeUpAlarmDismissedDate;
    }

    if (HKSPIsValidDate(v10))
    {
      unadjustedTimeline = [(HKSPSleepEventTimelineResults *)self->_results unadjustedTimeline];
      v17 = [unadjustedTimeline resolvedOccurrenceContainingOrPrecedingDate:v9];

      if (v17)
      {
        wakeUpEvent = [v17 wakeUpEvent];
        dueDate = [wakeUpEvent dueDate];
        v20 = [v9 hksp_isAfterOrSameAsDate:dueDate];

        v21 = HKSPLogForCategory(6uLL);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          if (v22)
          {
            v32 = 138543874;
            selfCopy3 = self;
            v34 = 2114;
            v35 = v10;
            v36 = 2114;
            v37 = v9;
            _os_log_debug_impl(&dword_269A84000, v21, OS_LOG_TYPE_DEBUG, "[%{public}@] confirmed wake up at %{public}@ until %{public}@", &v32, 0x20u);
          }

          timeline = [(HKSPSleepEventTimelineResults *)self->_results timeline];
          v21 = [timeline resolvedOccurrenceContainingOrPrecedingDate:v9];

          bedtimeEvent = [v21 bedtimeEvent];
          dueDate2 = [bedtimeEvent dueDate];
          v26 = [dueDate2 hksp_isAfterDate:v10];

          if (v26)
          {
            v27 = HKSPLogForCategory(6uLL);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              bedtimeEvent2 = [v21 bedtimeEvent];
              dueDate3 = [bedtimeEvent2 dueDate];
              v32 = 138543618;
              selfCopy3 = self;
              v34 = 2114;
              v35 = dueDate3;
              _os_log_debug_impl(&dword_269A84000, v27, OS_LOG_TYPE_DEBUG, "[%{public}@] ignoring confirmed wake up because bedtime event was at %{public}@", &v32, 0x16u);
            }
          }

          else
          {
            v27 = [HKSPSleepEvent sleepEventWithIdentifier:@"HKSPSleepEventIdentifierWakeUp" dueDate:v10];
            timeline2 = [(HKSPSleepEventTimelineResults *)self->_results timeline];
            [timeline2 adjustResolvedOccurrence:v17 withEvent:v27];
          }
        }

        else if (v22)
        {
          v32 = 138543362;
          selfCopy3 = self;
          _os_log_debug_impl(&dword_269A84000, v21, OS_LOG_TYPE_DEBUG, "[%{public}@] not adjusting occurrence because wake up date is after confirmed until date", &v32, 0xCu);
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_validateSessionAdjustmentForSnoozedWakeUpAlarm
{
  v15 = *MEMORY[0x277D85DE8];
  sleepEventRecord = [(HKSPSleepScheduleModel *)self->_sleepScheduleModel sleepEventRecord];
  wakeUpAlarmSnoozedUntilDate = [sleepEventRecord wakeUpAlarmSnoozedUntilDate];

  if (wakeUpAlarmSnoozedUntilDate)
  {
    unadjustedTimeline = [(HKSPSleepEventTimelineResults *)self->_results unadjustedTimeline];
    v6 = [unadjustedTimeline resolvedOccurrencePrecedingDate:wakeUpAlarmSnoozedUntilDate];

    if (v6)
    {
      occurrence = [v6 occurrence];
      alarmConfiguration = [occurrence alarmConfiguration];

      if (([alarmConfiguration isEnabled] & 1) == 0)
      {
        v9 = HKSPLogForCategory(6uLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v11 = 138543618;
          selfCopy = self;
          v13 = 2114;
          v14 = wakeUpAlarmSnoozedUntilDate;
          _os_log_debug_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] snoozed wake up alarm for %{public}@ is for disabled alarm", &v11, 0x16u);
        }

        [(HKSPSleepEventTimelineResults *)self->_results setSnoozeFireDateNeedsReset:1];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end