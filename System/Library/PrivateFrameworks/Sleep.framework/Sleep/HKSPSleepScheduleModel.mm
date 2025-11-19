@interface HKSPSleepScheduleModel
+ (id)_computeUpcomingDateIntervalForDate:(id)a3;
+ (id)sleepScheduleModelWithSleepSchedule:(id)a3 sleepSettings:(id)a4 sleepEventRecord:(id)a5;
+ (id)templateModelForSchedule:(id)a3;
- (BOOL)chargingRemindersEnabledWithLogObject:(id)a3;
- (BOOL)goodMorningAlertNotificationsEnabledWithLogObject:(id)a3;
- (BOOL)goodMorningScreenEnabledWithLogObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentTo:(id)a3;
- (HKSPSleepScheduleModel)initWithCoder:(id)a3;
- (NSDate)lastModifiedDate;
- (id)_computeOriginalWakeUpForOverrideDateHelper:(id)a3;
- (id)_timelineResultsDueAfterDate:(id)a3;
- (id)_upcomingEventsDueAfterDate:(id)a3 searchBackwards:(BOOL)a4;
- (id)_upcomingResolvedOccurrencesDueAfterDate:(id)a3 searchBackwards:(BOOL)a4;
- (id)closestEventWithIdentifier:(id)a3 dueAroundDate:(id)a4;
- (id)computeConfirmedWakeUpUntilDateForEarlyWakeUpDate:(id)a3;
- (id)computeConfirmedWakeUpUntilDateForOverrideWakeUpDate:(id)a3;
- (id)computeTemplateGenerationDateForCurrentDate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)generateOverrideOccurrenceForCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)generateOverrideOccurrenceForCurrentDate:(id)a3 gregorianCalendar:(id)a4 schedule:(id)a5;
- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)a3;
- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)a3 gregorianCalendar:(id)a4 mutableOccurrence:(id)a5;
- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)a3 gregorianCalendar:(id)a4 schedule:(id)a5;
- (id)modelByApplyingChangesFromOccurrence:(id)a3;
- (id)nextEventDueAfterDate:(id)a3;
- (id)nextEventWithIdentifier:(id)a3 dueAfterDate:(id)a4;
- (id)nextOccurrenceAfterDate:(id)a3;
- (id)nextOccurrenceInInterval:(id)a3;
- (id)nextResolvedOccurrenceAfterDate:(id)a3;
- (id)nextResolvedOccurrenceInInterval:(id)a3;
- (id)overrideOccurrenceGenerationResultForCurrentDate:(id)a3 gregorianCalendar:(id)a4 schedule:(id)a5;
- (id)previousEventWithIdentifier:(id)a3 dueBeforeDate:(id)a4;
- (id)previousOccurrenceBeforeDate:(id)a3;
- (id)previousResolvedOccurrenceBeforeDate:(id)a3;
- (id)succinctDescription;
- (id)timelineForDate:(id)a3;
- (id)upcomingOccurrenceAfterDate:(id)a3;
- (id)upcomingResolvedOccurrenceAfterDate:(id)a3;
- (int64_t)alarmStatusForOccurrence:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPSleepScheduleModel

+ (id)sleepScheduleModelWithSleepSchedule:(id)a3 sleepSettings:(id)a4 sleepEventRecord:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(HKSPSleepScheduleModel);
  v11 = [v9 copy];

  sleepSchedule = v10->_sleepSchedule;
  v10->_sleepSchedule = v11;

  v13 = [v8 copy];
  sleepSettings = v10->_sleepSettings;
  v10->_sleepSettings = v13;

  v15 = [v7 copy];
  sleepEventRecord = v10->_sleepEventRecord;
  v10->_sleepEventRecord = v15;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HKSPSleepScheduleModel);
  v5 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  sleepSchedule = v4->_sleepSchedule;
  v4->_sleepSchedule = v5;

  v7 = [(HKSPSleepScheduleModel *)self sleepSettings];
  sleepSettings = v4->_sleepSettings;
  v4->_sleepSettings = v7;

  v9 = [(HKSPSleepScheduleModel *)self sleepEventRecord];
  sleepEventRecord = v4->_sleepEventRecord;
  v4->_sleepEventRecord = v9;

  return v4;
}

- (NSDate)lastModifiedDate
{
  v3 = [(HKSPSleepSchedule *)self->_sleepSchedule lastModifiedDate];
  if (!v3 || (-[HKSPSleepSettings lastModifiedDate](self->_sleepSettings, "lastModifiedDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 hksp_isAfterDate:v3], v4, v5))
  {
    v6 = [(HKSPSleepSettings *)self->_sleepSettings lastModifiedDate];

    v3 = v6;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v7 = [(HKSPSleepEventRecord *)self->_sleepEventRecord lastModifiedDate];
  v8 = [v7 hksp_isAfterDate:v3];

  if (v8)
  {
LABEL_5:
    v9 = [(HKSPSleepEventRecord *)self->_sleepEventRecord lastModifiedDate];

    v3 = v9;
  }

  return v3;
}

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HKSPSleepScheduleModel *)self sleepSchedule];
    v6 = [v4 sleepSchedule];
    if ([v5 isEquivalentTo:v6])
    {
      v7 = [(HKSPSleepScheduleModel *)self sleepSettings];
      v8 = [v4 sleepSettings];
      if ([v7 isEquivalentTo:v8])
      {
        v9 = [(HKSPSleepScheduleModel *)self sleepEventRecord];
        v10 = [v4 sleepEventRecord];
        v11 = [v9 isEquivalentTo:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      sleepSchedule = self->_sleepSchedule;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __34__HKSPSleepScheduleModel_isEqual___block_invoke;
      v22[3] = &unk_279C73C80;
      v8 = v5;
      v23 = v8;
      v9 = [v6 appendObject:sleepSchedule counterpart:v22];
      sleepSettings = self->_sleepSettings;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __34__HKSPSleepScheduleModel_isEqual___block_invoke_2;
      v20[3] = &unk_279C73CA8;
      v11 = v8;
      v21 = v11;
      v12 = [v6 appendObject:sleepSettings counterpart:v20];
      sleepEventRecord = self->_sleepEventRecord;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __34__HKSPSleepScheduleModel_isEqual___block_invoke_3;
      v18[3] = &unk_279C73CD0;
      v19 = v11;
      v14 = v11;
      v15 = [v6 appendObject:sleepEventRecord counterpart:v18];
      v16 = [v6 isEqual];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)nextEventWithIdentifier:(id)a3 dueAfterDate:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HKSPSleepEvent standardEventIdentifiers];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(HKSPSleepScheduleModel *)self upcomingEventsDueAfterDate:v7];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__HKSPSleepScheduleModel_nextEventWithIdentifier_dueAfterDate___block_invoke;
    v16[3] = &unk_279C73CF8;
    v17 = v6;
    v11 = [v10 na_firstObjectPassingTest:v16];
    v12 = [v11 dueDate];
  }

  else
  {
    v10 = HKSPLogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v6;
      v15 = v19;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ not in known identifiers", buf, 0x16u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __63__HKSPSleepScheduleModel_nextEventWithIdentifier_dueAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)previousEventWithIdentifier:(id)a3 dueBeforeDate:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HKSPSleepEvent standardEventIdentifiers];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(HKSPSleepScheduleModel *)self _upcomingEventsDueAfterDate:v7 searchBackwards:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__HKSPSleepScheduleModel_previousEventWithIdentifier_dueBeforeDate___block_invoke;
    v16[3] = &unk_279C73CF8;
    v17 = v6;
    v11 = [v10 na_firstObjectPassingTest:v16];
    v12 = [v11 dueDate];
  }

  else
  {
    v10 = HKSPLogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v6;
      v15 = v19;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ not in known identifiers", buf, 0x16u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __68__HKSPSleepScheduleModel_previousEventWithIdentifier_dueBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)closestEventWithIdentifier:(id)a3 dueAroundDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKSPSleepScheduleModel *)self nextEventWithIdentifier:v7 dueAfterDate:v6];
  v9 = [(HKSPSleepScheduleModel *)self previousEventWithIdentifier:v7 dueBeforeDate:v6];

  v10 = v9;
  if (v8)
  {
    v10 = v8;
    if (v9)
    {
      [v8 timeIntervalSinceDate:v6];
      v12 = v11;
      [v6 timeIntervalSinceDate:v9];
      if (v12 > v13)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }
    }
  }

  v14 = v10;

  return v14;
}

- (id)nextEventDueAfterDate:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self upcomingEventsDueAfterDate:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_upcomingEventsDueAfterDate:(id)a3 searchBackwards:(BOOL)a4
{
  if (a3)
  {
    v5 = [HKSPSleepEventTimelineBuilder builderWithSleepScheduleModel:self date:a3];
    v6 = [v5 buildTimelineWithOptions:0];
    v7 = [v6 timeline];
    v8 = v7;
    if (a4)
    {
      [v7 previousEvents];
    }

    else
    {
      [v7 upcomingEvents];
    }
    v10 = ;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__HKSPSleepScheduleModel__upcomingEventsDueAfterDate_searchBackwards___block_invoke;
    v14[3] = &unk_279C73CF8;
    v15 = v11;
    v12 = v11;
    v9 = [v10 na_filter:v14];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

uint64_t __70__HKSPSleepScheduleModel__upcomingEventsDueAfterDate_searchBackwards___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [v3 identifier];
    [v7 addObject:v8];
  }

  return v6 ^ 1u;
}

- (id)upcomingOccurrenceAfterDate:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self upcomingResolvedOccurrenceAfterDate:a3];
  v4 = [v3 occurrence];

  return v4;
}

+ (id)_computeUpcomingDateIntervalForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 hk_gregorianCalendar];
  v6 = [v5 hk_dateByAddingDays:2 toDate:v4];
  v7 = [v5 startOfDayForDate:v6];
  v8 = [v7 dateByAddingTimeInterval:-1.0];
  v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v8];

  return v9;
}

- (id)upcomingResolvedOccurrenceAfterDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _computeUpcomingDateIntervalForDate:v4];

  v6 = [(HKSPSleepScheduleModel *)self nextResolvedOccurrenceInInterval:v5];

  return v6;
}

- (id)nextOccurrenceAfterDate:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self nextResolvedOccurrenceAfterDate:a3];
  v4 = [v3 occurrence];

  return v4;
}

- (id)nextOccurrenceInInterval:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self nextResolvedOccurrenceInInterval:a3];
  v4 = [v3 occurrence];

  return v4;
}

- (id)nextResolvedOccurrenceAfterDate:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self _upcomingResolvedOccurrencesDueAfterDate:a3 searchBackwards:0];
  v4 = [v3 firstObject];

  return v4;
}

- (id)nextResolvedOccurrenceInInterval:(id)a3
{
  v4 = a3;
  if ([(HKSPSleepSchedule *)self->_sleepSchedule isEnabled])
  {
    v5 = [v4 startDate];
    v6 = [(HKSPSleepScheduleModel *)self timelineForDate:v5];

    v7 = [v4 endDate];
    v8 = [v6 upcomingResolvedOccurrencesBeforeDate:v7];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)previousOccurrenceBeforeDate:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self previousResolvedOccurrenceBeforeDate:a3];
  v4 = [v3 occurrence];

  return v4;
}

- (id)previousResolvedOccurrenceBeforeDate:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self _upcomingResolvedOccurrencesDueAfterDate:a3 searchBackwards:1];
  v4 = [v3 firstObject];

  return v4;
}

- (id)timelineForDate:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self _timelineResultsDueAfterDate:a3];
  v4 = [v3 timeline];

  return v4;
}

- (id)_timelineResultsDueAfterDate:(id)a3
{
  v3 = [HKSPSleepEventTimelineBuilder builderWithSleepScheduleModel:self date:a3];
  v4 = [v3 buildTimelineWithOptions:0];

  return v4;
}

- (id)_upcomingResolvedOccurrencesDueAfterDate:(id)a3 searchBackwards:(BOOL)a4
{
  v6 = a3;
  if ([(HKSPSleepSchedule *)self->_sleepSchedule isEnabled])
  {
    v7 = [(HKSPSleepScheduleModel *)self timelineForDate:v6];
    v8 = v7;
    if (a4)
    {
      [v7 previousResolvedOccurrences];
    }

    else
    {
      [v7 upcomingResolvedOccurrences];
    }
    v9 = ;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (int64_t)alarmStatusForOccurrence:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isSingleDayOverride])
    {
      v6 = [(HKSPSleepScheduleModel *)self sleepSchedule];
      v7 = [v6 overridenOccurrenceForOverrideOccurrence:v5];
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 alarmConfiguration];
    v10 = [v9 isEnabled];

    if (v10)
    {
      if (![v5 isSingleDayOverride] || v7 && (objc_msgSend(v7, "isAlarmEquivalentToOverrideOccurrence:", v5) & 1) != 0)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }

    else if (v7)
    {
      v11 = [v7 alarmConfiguration];
      v12 = [v11 isEnabled];

      v8 = v12 & 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)templateModelForSchedule:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_alloc_init(HKSPSleepSettings);
  v6 = objc_alloc_init(HKSPSleepEventRecord);
  v7 = [v4 sleepScheduleModelWithSleepSchedule:v3 sleepSettings:v5 sleepEventRecord:v6];

  return v7;
}

- (id)modelByApplyingChangesFromOccurrence:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  v6 = [v5 mutableCopy];

  [v6 saveOccurrence:v4];
  v7 = objc_opt_class();
  v8 = [v6 copy];
  v9 = [(HKSPSleepScheduleModel *)self sleepSettings];
  v10 = [(HKSPSleepScheduleModel *)self sleepEventRecord];
  v11 = [v7 sleepScheduleModelWithSleepSchedule:v8 sleepSettings:v9 sleepEventRecord:v10];

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  v5 = [v3 appendObject:v4];

  v6 = [(HKSPSleepScheduleModel *)self sleepSettings];
  v7 = [v3 appendObject:v6];

  v8 = [(HKSPSleepScheduleModel *)self sleepEventRecord];
  v9 = [v3 appendObject:v8];

  v10 = [v3 hash];
  return v10;
}

- (HKSPSleepScheduleModel)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKSPSleepScheduleModel;
  v5 = [(HKSPSleepScheduleModel *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sleepSchedule"];
    sleepSchedule = v5->_sleepSchedule;
    v5->_sleepSchedule = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sleepSettings"];
    sleepSettings = v5->_sleepSettings;
    v5->_sleepSettings = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sleepEventRecord"];
    sleepEventRecord = v5->_sleepEventRecord;
    v5->_sleepEventRecord = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sleepSchedule = self->_sleepSchedule;
  v5 = a3;
  [v5 encodeObject:sleepSchedule forKey:@"sleepSchedule"];
  [v5 encodeObject:self->_sleepSettings forKey:@"sleepSettings"];
  [v5 encodeObject:self->_sleepEventRecord forKey:@"sleepEventRecord"];
}

- (id)succinctDescription
{
  v2 = [(HKSPSleepScheduleModel *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPSleepScheduleModel *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HKSPSleepScheduleModel_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279C73B58;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

id __64__HKSPSleepScheduleModel_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"sleepSchedule"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"sleepSettings"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"sleepEventRecord"];
}

- (id)computeConfirmedWakeUpUntilDateForEarlyWakeUpDate:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v43 = objc_opt_class();
    v44 = 2114;
    v45 = v4;
    v6 = v43;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] computing wake up confirmed date for early wake up (%{public}@)", buf, 0x16u);
  }

  v7 = [(HKSPSleepScheduleModel *)self nextResolvedOccurrenceAfterDate:v4];
  v8 = [v7 wakeUpEvent];
  v9 = [v8 dueDate];

  v10 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543618;
    v43 = v11;
    v44 = 2114;
    v45 = v9;
    v12 = v11;
    _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] next wake up is %{public}@", buf, 0x16u);
  }

  v13 = [v7 scheduledInterval];
  v14 = [v13 containsDate:v4];

  if (v14)
  {
    goto LABEL_22;
  }

  v15 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    *buf = 138543618;
    v43 = v16;
    v44 = 2114;
    v45 = v4;
    v17 = v16;
    _os_log_impl(&dword_269A84000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] early wake up detected outside of expected interval (%{public}@)", buf, 0x16u);
  }

  v18 = [(HKSPSleepScheduleModel *)self sleepEventRecord];
  v19 = [v18 wakeUpEarlyNotificationConfirmedDate];
  v20 = [v18 wakeUpConfirmedUntilDate];
  if ([v20 hksp_isAfterDate:v19])
  {
    v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 endDate:v20];
    if ([v21 hksp_containsDate:v4])
    {
      v22 = HKSPLogForCategory(9uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543618;
        v43 = v23;
        v44 = 2114;
        v45 = v20;
        v24 = v23;
        _os_log_impl(&dword_269A84000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] possible duplicate early wake up detected, using that wake up date (%{public}@)", buf, 0x16u);
      }

      goto LABEL_23;
    }
  }

  v40 = v19;
  v39 = [(HKSPSleepScheduleModel *)self previousResolvedOccurrenceBeforeDate:v4];
  v25 = [v39 wakeUpEvent];
  v26 = [v25 dueDate];

  v27 = MEMORY[0x277CBEAA8];
  v41[0] = v26;
  v41[1] = v9;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v29 = [v27 hksp_closestFromDates:v28 toDate:v4];

  v30 = HKSPLogForCategory(9uLL);
  v31 = v30;
  if (v29 == v26)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      *buf = 138543618;
      v43 = v33;
      v44 = 2114;
      v45 = v26;
      v34 = v33;
      _os_log_impl(&dword_269A84000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] possible late early wake up detected, using previous wake up date (%{public}@)", buf, 0x16u);
    }

    v32 = v26;
  }

  else
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      *buf = 138543362;
      v43 = v37;
      v38 = v37;
      _os_log_error_impl(&dword_269A84000, v31, OS_LOG_TYPE_ERROR, "[%{public}@] unexpected early wake up detected", buf, 0xCu);
    }

    v32 = v20;
  }

  v20 = v32;
  if (v29 != v26)
  {
LABEL_22:
    v20 = v9;
  }

LABEL_23:

  v35 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)computeConfirmedWakeUpUntilDateForOverrideWakeUpDate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v4;
    v6 = v11;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] computing wake up confirmed date for override wake up (%{public}@)", &v10, 0x16u);
  }

  v7 = [(HKSPSleepScheduleModel *)self _computeOriginalWakeUpForOverrideDateHelper:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)computeTemplateGenerationDateForCurrentDate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v4;
    v6 = v11;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] computing template generation date for current date (%{public}@)", &v10, 0x16u);
  }

  v7 = [(HKSPSleepScheduleModel *)self _computeOriginalWakeUpForOverrideDateHelper:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_computeOriginalWakeUpForOverrideDateHelper:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKSPSleepScheduleModel *)self previousOccurrenceBeforeDate:v4];
  v6 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  v7 = [v6 overridenOccurrenceForOverrideOccurrence:v5];

  if (!v7)
  {
    v8 = HKSPLogForCategory(9uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v17 = v25;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] override occurrence doesn't override anything", &v24, 0xCu);
    }

    goto LABEL_15;
  }

  v8 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v9 = [v5 wakeUpComponents];
  v10 = [v8 dateFromComponents:v9];

  v11 = [v7 nextDateIntervalWithWakeUpAfterDate:v10 gregorianCalendar:v8];
  v12 = [v11 endDate];

  if (![v8 date:v12 isSameDayAsDate:v10])
  {
    v14 = HKSPLogForCategory(9uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v18 = v25;
      v19 = "[%{public}@] override occurrence was later than normal occurrence";
      v20 = v14;
      v21 = 12;
LABEL_13:
      _os_log_impl(&dword_269A84000, v20, OS_LOG_TYPE_DEFAULT, v19, &v24, v21);
    }

LABEL_14:

LABEL_15:
    v12 = v4;
    goto LABEL_16;
  }

  v13 = [v12 hksp_isAfterDate:v4];
  v14 = HKSPLogForCategory(9uLL);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      v24 = 138543618;
      v25 = objc_opt_class();
      v26 = 2114;
      v27 = v12;
      v18 = v25;
      v19 = "[%{public}@] wake up for override was later than normal occurrence wake up time (%{public}@)";
      v20 = v14;
      v21 = 22;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v15)
  {
    v24 = 138543618;
    v25 = objc_opt_class();
    v26 = 2114;
    v27 = v12;
    v16 = v25;
    _os_log_impl(&dword_269A84000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up for override was earlier than normal occurrence wake up time (%{public}@)", &v24, 0x16u);
  }

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)generateOverrideOccurrenceForCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if (v8)
  {
    v9 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceForCurrentDate:v6 gregorianCalendar:v7 schedule:v8];
  }

  else
  {
    v10 = objc_alloc_init(HKSPSleepSchedule);
    v9 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceForCurrentDate:v6 gregorianCalendar:v7 schedule:v10];
  }

  return v9;
}

- (id)generateOverrideOccurrenceForCurrentDate:(id)a3 gregorianCalendar:(id)a4 schedule:(id)a5
{
  v5 = [(HKSPSleepScheduleModel *)self overrideOccurrenceGenerationResultForCurrentDate:a3 gregorianCalendar:a4 schedule:a5];
  v6 = [v5 overrideOccurrence];

  return v6;
}

- (id)overrideOccurrenceGenerationResultForCurrentDate:(id)a3 gregorianCalendar:(id)a4 schedule:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [v8 hkspDescription];
    *buf = 138543874;
    v37 = v12;
    v38 = 2114;
    v39 = v14;
    v40 = 2114;
    v41 = v10;
    _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] generating an override occurrence for current date: %{public}@ from schedule: %{public}@", buf, 0x20u);
  }

  v15 = objc_alloc_init(HKSPOverrideOccurrenceGenerationResult);
  v16 = [(HKSPSleepScheduleModel *)self upcomingResolvedOccurrenceAfterDate:v8];
  v17 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v35 = self;
    v19 = v9;
    v20 = v10;
    v21 = v18;
    [v8 hkspDescription];
    v23 = v22 = v8;
    *buf = 138543874;
    v37 = v18;
    v38 = 2114;
    v39 = v23;
    v40 = 2114;
    v41 = v16;
    _os_log_impl(&dword_269A84000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] upcoming resolved occurrence for current date: %{public}@ is: %{public}@", buf, 0x20u);

    v8 = v22;
    v10 = v20;
    v9 = v19;
    self = v35;
  }

  v24 = HKSPLogForCategory(9uLL);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v25)
    {
      v26 = objc_opt_class();
      *buf = 138543362;
      v37 = v26;
      v27 = v26;
      _os_log_impl(&dword_269A84000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] generating an override from resolved upcoming occurrence", buf, 0xCu);
    }

    [(HKSPOverrideOccurrenceGenerationResult *)v15 setWasGeneratedFromTemplate:0];
    v28 = [v16 occurrence];
    -[HKSPOverrideOccurrenceGenerationResult setUpcomingOccurrenceWasOverride:](v15, "setUpcomingOccurrenceWasOverride:", [v28 isSingleDayOverride]);

    v29 = [v16 generateOverrideOccurrenceForCurrentDate:v8 gregorianCalendar:v9];
  }

  else
  {
    if (v25)
    {
      v30 = objc_opt_class();
      *buf = 138543362;
      v37 = v30;
      v31 = v30;
      _os_log_impl(&dword_269A84000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] no upcoming occurrence, generating an override from template", buf, 0xCu);
    }

    [(HKSPOverrideOccurrenceGenerationResult *)v15 setWasGeneratedFromTemplate:1];
    [(HKSPOverrideOccurrenceGenerationResult *)v15 setUpcomingOccurrenceWasOverride:0];
    v29 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:v8 gregorianCalendar:v9 schedule:v10];
  }

  v32 = v29;
  [(HKSPOverrideOccurrenceGenerationResult *)v15 setOverrideOccurrence:v29];

  v33 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 hk_gregorianCalendar];
  v7 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:v5 gregorianCalendar:v6];

  return v7;
}

- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if (v8)
  {
    v9 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:v6 gregorianCalendar:v7 schedule:v8];
  }

  else
  {
    v10 = objc_alloc_init(HKSPSleepSchedule);
    v9 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:v6 gregorianCalendar:v7 schedule:v10];
  }

  return v9;
}

- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)a3 gregorianCalendar:(id)a4 schedule:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 mutableOccurrenceTemplate];
  v11 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:v9 gregorianCalendar:v8 mutableOccurrence:v10];

  return v11;
}

- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)a3 gregorianCalendar:(id)a4 mutableOccurrence:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(HKSPSleepScheduleModel *)self computeTemplateGenerationDateForCurrentDate:a3];
  v11 = [v8 overrideOccurrenceTemplateForCurrentDate:v10 gregorianCalendar:v9];

  return v11;
}

- (BOOL)goodMorningAlertNotificationsEnabledWithLogObject:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if ([v5 isEnabledAndHasOccurrences])
  {
    v6 = [(HKSPSleepScheduleModel *)self sleepSettings];
    if (([v6 watchSleepFeaturesEnabled]& 1) != 0)
    {
      if (([v6 scheduledSleepMode]& 1) != 0)
      {
        v7 = [(HKSPSleepScheduleModel *)self sleepEventRecord];
        v8 = [v7 isAnySleepCoachingOnboardingCompleted];
        v9 = v8;
        if (!v4 || (v8 & 1) != 0)
        {
          goto LABEL_21;
        }

        v10 = HKSPLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = v4;
          _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting good morning alert because onboarding hasn't completed", &v14, 0xCu);
        }

LABEL_20:
        v9 = 0;
LABEL_21:

LABEL_23:
        goto LABEL_24;
      }

      if (v4)
      {
        v7 = HKSPLogForCategory(0);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v14 = 138543362;
        v15 = v4;
        v11 = "[%{public}@] not posting morning notification because scheduledSleepMode isn't enabled";
        goto LABEL_19;
      }
    }

    else if (v4)
    {
      v7 = HKSPLogForCategory(0);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v14 = 138543362;
      v15 = v4;
      v11 = "[%{public}@] not posting morning notification because sleep features are disabled for this watch";
LABEL_19:
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, v11, &v14, 0xCu);
      goto LABEL_20;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  if (v4)
  {
    v6 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v4;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting morning notification because sleep schedule isn't enabled", &v14, 0xCu);
    }

    goto LABEL_22;
  }

  v9 = 0;
LABEL_24:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)goodMorningScreenEnabledWithLogObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if (([v5 isEnabledAndHasOccurrences] & 1) == 0)
  {
    if (!v4)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v6 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] not showing morning screen because sleep schedule isn't enabled", &v12, 0xCu);
    }

    goto LABEL_15;
  }

  v6 = [(HKSPSleepScheduleModel *)self sleepSettings];
  if (([v6 scheduledSleepMode]& 1) != 0)
  {
    if (([v6 sleepModeOptions]& 0x4000) != 0)
    {
      v9 = 1;
      goto LABEL_16;
    }

    if (v4)
    {
      v7 = HKSPLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v4;
        v8 = "[%{public}@] not showing morning screen because it isn't enabled";
LABEL_13:
        _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if (v4)
  {
    v7 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      v8 = "[%{public}@] not showing morning screen because scheduledSleepMode isn't enabled";
      goto LABEL_13;
    }

LABEL_14:
  }

LABEL_15:
  v9 = 0;
LABEL_16:

LABEL_17:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)chargingRemindersEnabledWithLogObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if ([v5 isEnabledAndHasOccurrences])
  {
    v6 = [(HKSPSleepScheduleModel *)self sleepSettings];
    if (([v6 watchSleepFeaturesEnabled]& 1) != 0)
    {
      if (([v6 chargingReminders]& 1) != 0)
      {
        v7 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (v4)
      {
        v8 = HKSPLogForCategory(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          v13 = v4;
          v9 = "[%{public}@] not posting charging reminder because charging reminders aren't enabled";
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else if (v4)
    {
      v8 = HKSPLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v4;
        v9 = "[%{public}@] not posting charging reminder because sleep features are disabled for this watch";
LABEL_15:
        _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
      }

LABEL_16:
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  if (v4)
  {
    v6 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting charging reminder because sleep schedule isn't enabled", &v12, 0xCu);
    }

    goto LABEL_17;
  }

  v7 = 0;
LABEL_19:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

@end