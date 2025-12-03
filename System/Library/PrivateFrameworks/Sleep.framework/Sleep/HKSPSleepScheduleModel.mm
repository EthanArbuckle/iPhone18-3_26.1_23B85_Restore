@interface HKSPSleepScheduleModel
+ (id)_computeUpcomingDateIntervalForDate:(id)date;
+ (id)sleepScheduleModelWithSleepSchedule:(id)schedule sleepSettings:(id)settings sleepEventRecord:(id)record;
+ (id)templateModelForSchedule:(id)schedule;
- (BOOL)chargingRemindersEnabledWithLogObject:(id)object;
- (BOOL)goodMorningAlertNotificationsEnabledWithLogObject:(id)object;
- (BOOL)goodMorningScreenEnabledWithLogObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentTo:(id)to;
- (HKSPSleepScheduleModel)initWithCoder:(id)coder;
- (NSDate)lastModifiedDate;
- (id)_computeOriginalWakeUpForOverrideDateHelper:(id)helper;
- (id)_timelineResultsDueAfterDate:(id)date;
- (id)_upcomingEventsDueAfterDate:(id)date searchBackwards:(BOOL)backwards;
- (id)_upcomingResolvedOccurrencesDueAfterDate:(id)date searchBackwards:(BOOL)backwards;
- (id)closestEventWithIdentifier:(id)identifier dueAroundDate:(id)date;
- (id)computeConfirmedWakeUpUntilDateForEarlyWakeUpDate:(id)date;
- (id)computeConfirmedWakeUpUntilDateForOverrideWakeUpDate:(id)date;
- (id)computeTemplateGenerationDateForCurrentDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)generateOverrideOccurrenceForCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)generateOverrideOccurrenceForCurrentDate:(id)date gregorianCalendar:(id)calendar schedule:(id)schedule;
- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)date;
- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)date gregorianCalendar:(id)calendar mutableOccurrence:(id)occurrence;
- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)date gregorianCalendar:(id)calendar schedule:(id)schedule;
- (id)modelByApplyingChangesFromOccurrence:(id)occurrence;
- (id)nextEventDueAfterDate:(id)date;
- (id)nextEventWithIdentifier:(id)identifier dueAfterDate:(id)date;
- (id)nextOccurrenceAfterDate:(id)date;
- (id)nextOccurrenceInInterval:(id)interval;
- (id)nextResolvedOccurrenceAfterDate:(id)date;
- (id)nextResolvedOccurrenceInInterval:(id)interval;
- (id)overrideOccurrenceGenerationResultForCurrentDate:(id)date gregorianCalendar:(id)calendar schedule:(id)schedule;
- (id)previousEventWithIdentifier:(id)identifier dueBeforeDate:(id)date;
- (id)previousOccurrenceBeforeDate:(id)date;
- (id)previousResolvedOccurrenceBeforeDate:(id)date;
- (id)succinctDescription;
- (id)timelineForDate:(id)date;
- (id)upcomingOccurrenceAfterDate:(id)date;
- (id)upcomingResolvedOccurrenceAfterDate:(id)date;
- (int64_t)alarmStatusForOccurrence:(id)occurrence;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPSleepScheduleModel

+ (id)sleepScheduleModelWithSleepSchedule:(id)schedule sleepSettings:(id)settings sleepEventRecord:(id)record
{
  recordCopy = record;
  settingsCopy = settings;
  scheduleCopy = schedule;
  v10 = objc_alloc_init(HKSPSleepScheduleModel);
  v11 = [scheduleCopy copy];

  sleepSchedule = v10->_sleepSchedule;
  v10->_sleepSchedule = v11;

  v13 = [settingsCopy copy];
  sleepSettings = v10->_sleepSettings;
  v10->_sleepSettings = v13;

  v15 = [recordCopy copy];
  sleepEventRecord = v10->_sleepEventRecord;
  v10->_sleepEventRecord = v15;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HKSPSleepScheduleModel);
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  sleepSchedule = v4->_sleepSchedule;
  v4->_sleepSchedule = sleepSchedule;

  sleepSettings = [(HKSPSleepScheduleModel *)self sleepSettings];
  sleepSettings = v4->_sleepSettings;
  v4->_sleepSettings = sleepSettings;

  sleepEventRecord = [(HKSPSleepScheduleModel *)self sleepEventRecord];
  sleepEventRecord = v4->_sleepEventRecord;
  v4->_sleepEventRecord = sleepEventRecord;

  return v4;
}

- (NSDate)lastModifiedDate
{
  lastModifiedDate = [(HKSPSleepSchedule *)self->_sleepSchedule lastModifiedDate];
  if (!lastModifiedDate || (-[HKSPSleepSettings lastModifiedDate](self->_sleepSettings, "lastModifiedDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 hksp_isAfterDate:lastModifiedDate], v4, v5))
  {
    lastModifiedDate2 = [(HKSPSleepSettings *)self->_sleepSettings lastModifiedDate];

    lastModifiedDate = lastModifiedDate2;
    if (!lastModifiedDate2)
    {
      goto LABEL_5;
    }
  }

  lastModifiedDate3 = [(HKSPSleepEventRecord *)self->_sleepEventRecord lastModifiedDate];
  v8 = [lastModifiedDate3 hksp_isAfterDate:lastModifiedDate];

  if (v8)
  {
LABEL_5:
    lastModifiedDate4 = [(HKSPSleepEventRecord *)self->_sleepEventRecord lastModifiedDate];

    lastModifiedDate = lastModifiedDate4;
  }

  return lastModifiedDate;
}

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
    sleepSchedule2 = [toCopy sleepSchedule];
    if ([sleepSchedule isEquivalentTo:sleepSchedule2])
    {
      sleepSettings = [(HKSPSleepScheduleModel *)self sleepSettings];
      sleepSettings2 = [toCopy sleepSettings];
      if ([sleepSettings isEquivalentTo:sleepSettings2])
      {
        sleepEventRecord = [(HKSPSleepScheduleModel *)self sleepEventRecord];
        sleepEventRecord2 = [toCopy sleepEventRecord];
        v11 = [sleepEventRecord isEquivalentTo:sleepEventRecord2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)nextEventWithIdentifier:(id)identifier dueAfterDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  v8 = +[HKSPSleepEvent standardEventIdentifiers];
  v9 = [v8 containsObject:identifierCopy];

  if (v9)
  {
    v10 = [(HKSPSleepScheduleModel *)self upcomingEventsDueAfterDate:dateCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__HKSPSleepScheduleModel_nextEventWithIdentifier_dueAfterDate___block_invoke;
    v16[3] = &unk_279C73CF8;
    v17 = identifierCopy;
    v11 = [v10 na_firstObjectPassingTest:v16];
    dueDate = [v11 dueDate];
  }

  else
  {
    v10 = HKSPLogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = identifierCopy;
      v15 = v19;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ not in known identifiers", buf, 0x16u);
    }

    dueDate = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return dueDate;
}

uint64_t __63__HKSPSleepScheduleModel_nextEventWithIdentifier_dueAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)previousEventWithIdentifier:(id)identifier dueBeforeDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  v8 = +[HKSPSleepEvent standardEventIdentifiers];
  v9 = [v8 containsObject:identifierCopy];

  if (v9)
  {
    v10 = [(HKSPSleepScheduleModel *)self _upcomingEventsDueAfterDate:dateCopy searchBackwards:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__HKSPSleepScheduleModel_previousEventWithIdentifier_dueBeforeDate___block_invoke;
    v16[3] = &unk_279C73CF8;
    v17 = identifierCopy;
    v11 = [v10 na_firstObjectPassingTest:v16];
    dueDate = [v11 dueDate];
  }

  else
  {
    v10 = HKSPLogForCategory(6uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = identifierCopy;
      v15 = v19;
      _os_log_error_impl(&dword_269A84000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ not in known identifiers", buf, 0x16u);
    }

    dueDate = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return dueDate;
}

uint64_t __68__HKSPSleepScheduleModel_previousEventWithIdentifier_dueBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)closestEventWithIdentifier:(id)identifier dueAroundDate:(id)date
{
  dateCopy = date;
  identifierCopy = identifier;
  v8 = [(HKSPSleepScheduleModel *)self nextEventWithIdentifier:identifierCopy dueAfterDate:dateCopy];
  v9 = [(HKSPSleepScheduleModel *)self previousEventWithIdentifier:identifierCopy dueBeforeDate:dateCopy];

  v10 = v9;
  if (v8)
  {
    v10 = v8;
    if (v9)
    {
      [v8 timeIntervalSinceDate:dateCopy];
      v12 = v11;
      [dateCopy timeIntervalSinceDate:v9];
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

- (id)nextEventDueAfterDate:(id)date
{
  v3 = [(HKSPSleepScheduleModel *)self upcomingEventsDueAfterDate:date];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)_upcomingEventsDueAfterDate:(id)date searchBackwards:(BOOL)backwards
{
  if (date)
  {
    v5 = [HKSPSleepEventTimelineBuilder builderWithSleepScheduleModel:self date:date];
    v6 = [v5 buildTimelineWithOptions:0];
    timeline = [v6 timeline];
    v8 = timeline;
    if (backwards)
    {
      [timeline previousEvents];
    }

    else
    {
      [timeline upcomingEvents];
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

- (id)upcomingOccurrenceAfterDate:(id)date
{
  v3 = [(HKSPSleepScheduleModel *)self upcomingResolvedOccurrenceAfterDate:date];
  occurrence = [v3 occurrence];

  return occurrence;
}

+ (id)_computeUpcomingDateIntervalForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  hk_gregorianCalendar = [v3 hk_gregorianCalendar];
  v6 = [hk_gregorianCalendar hk_dateByAddingDays:2 toDate:dateCopy];
  v7 = [hk_gregorianCalendar startOfDayForDate:v6];
  v8 = [v7 dateByAddingTimeInterval:-1.0];
  v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:v8];

  return v9;
}

- (id)upcomingResolvedOccurrenceAfterDate:(id)date
{
  dateCopy = date;
  v5 = [objc_opt_class() _computeUpcomingDateIntervalForDate:dateCopy];

  v6 = [(HKSPSleepScheduleModel *)self nextResolvedOccurrenceInInterval:v5];

  return v6;
}

- (id)nextOccurrenceAfterDate:(id)date
{
  v3 = [(HKSPSleepScheduleModel *)self nextResolvedOccurrenceAfterDate:date];
  occurrence = [v3 occurrence];

  return occurrence;
}

- (id)nextOccurrenceInInterval:(id)interval
{
  v3 = [(HKSPSleepScheduleModel *)self nextResolvedOccurrenceInInterval:interval];
  occurrence = [v3 occurrence];

  return occurrence;
}

- (id)nextResolvedOccurrenceAfterDate:(id)date
{
  v3 = [(HKSPSleepScheduleModel *)self _upcomingResolvedOccurrencesDueAfterDate:date searchBackwards:0];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)nextResolvedOccurrenceInInterval:(id)interval
{
  intervalCopy = interval;
  if ([(HKSPSleepSchedule *)self->_sleepSchedule isEnabled])
  {
    startDate = [intervalCopy startDate];
    v6 = [(HKSPSleepScheduleModel *)self timelineForDate:startDate];

    endDate = [intervalCopy endDate];
    v8 = [v6 upcomingResolvedOccurrencesBeforeDate:endDate];
    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)previousOccurrenceBeforeDate:(id)date
{
  v3 = [(HKSPSleepScheduleModel *)self previousResolvedOccurrenceBeforeDate:date];
  occurrence = [v3 occurrence];

  return occurrence;
}

- (id)previousResolvedOccurrenceBeforeDate:(id)date
{
  v3 = [(HKSPSleepScheduleModel *)self _upcomingResolvedOccurrencesDueAfterDate:date searchBackwards:1];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)timelineForDate:(id)date
{
  v3 = [(HKSPSleepScheduleModel *)self _timelineResultsDueAfterDate:date];
  timeline = [v3 timeline];

  return timeline;
}

- (id)_timelineResultsDueAfterDate:(id)date
{
  v3 = [HKSPSleepEventTimelineBuilder builderWithSleepScheduleModel:self date:date];
  v4 = [v3 buildTimelineWithOptions:0];

  return v4;
}

- (id)_upcomingResolvedOccurrencesDueAfterDate:(id)date searchBackwards:(BOOL)backwards
{
  dateCopy = date;
  if ([(HKSPSleepSchedule *)self->_sleepSchedule isEnabled])
  {
    v7 = [(HKSPSleepScheduleModel *)self timelineForDate:dateCopy];
    v8 = v7;
    if (backwards)
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

- (int64_t)alarmStatusForOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v5 = occurrenceCopy;
  if (occurrenceCopy)
  {
    if ([occurrenceCopy isSingleDayOverride])
    {
      sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
      v7 = [sleepSchedule overridenOccurrenceForOverrideOccurrence:v5];
    }

    else
    {
      v7 = 0;
    }

    alarmConfiguration = [v5 alarmConfiguration];
    isEnabled = [alarmConfiguration isEnabled];

    if (isEnabled)
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
      alarmConfiguration2 = [v7 alarmConfiguration];
      isEnabled2 = [alarmConfiguration2 isEnabled];

      v8 = isEnabled2 & 1;
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

+ (id)templateModelForSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v4 = objc_opt_class();
  v5 = objc_alloc_init(HKSPSleepSettings);
  v6 = objc_alloc_init(HKSPSleepEventRecord);
  v7 = [v4 sleepScheduleModelWithSleepSchedule:scheduleCopy sleepSettings:v5 sleepEventRecord:v6];

  return v7;
}

- (id)modelByApplyingChangesFromOccurrence:(id)occurrence
{
  v4 = [occurrence mutableCopy];
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  v6 = [sleepSchedule mutableCopy];

  [v6 saveOccurrence:v4];
  v7 = objc_opt_class();
  v8 = [v6 copy];
  sleepSettings = [(HKSPSleepScheduleModel *)self sleepSettings];
  sleepEventRecord = [(HKSPSleepScheduleModel *)self sleepEventRecord];
  v11 = [v7 sleepScheduleModelWithSleepSchedule:v8 sleepSettings:sleepSettings sleepEventRecord:sleepEventRecord];

  return v11;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  v5 = [builder appendObject:sleepSchedule];

  sleepSettings = [(HKSPSleepScheduleModel *)self sleepSettings];
  v7 = [builder appendObject:sleepSettings];

  sleepEventRecord = [(HKSPSleepScheduleModel *)self sleepEventRecord];
  v9 = [builder appendObject:sleepEventRecord];

  v10 = [builder hash];
  return v10;
}

- (HKSPSleepScheduleModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKSPSleepScheduleModel;
  v5 = [(HKSPSleepScheduleModel *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sleepSchedule"];
    sleepSchedule = v5->_sleepSchedule;
    v5->_sleepSchedule = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sleepSettings"];
    sleepSettings = v5->_sleepSettings;
    v5->_sleepSettings = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sleepEventRecord"];
    sleepEventRecord = v5->_sleepEventRecord;
    v5->_sleepEventRecord = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sleepSchedule = self->_sleepSchedule;
  coderCopy = coder;
  [coderCopy encodeObject:sleepSchedule forKey:@"sleepSchedule"];
  [coderCopy encodeObject:self->_sleepSettings forKey:@"sleepSettings"];
  [coderCopy encodeObject:self->_sleepEventRecord forKey:@"sleepEventRecord"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPSleepScheduleModel *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPSleepScheduleModel *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HKSPSleepScheduleModel_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279C73B58;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

id __64__HKSPSleepScheduleModel_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"sleepSchedule"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"sleepSettings"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"sleepEventRecord"];
}

- (id)computeConfirmedWakeUpUntilDateForEarlyWakeUpDate:(id)date
{
  v46 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v43 = objc_opt_class();
    v44 = 2114;
    v45 = dateCopy;
    v6 = v43;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] computing wake up confirmed date for early wake up (%{public}@)", buf, 0x16u);
  }

  v7 = [(HKSPSleepScheduleModel *)self nextResolvedOccurrenceAfterDate:dateCopy];
  wakeUpEvent = [v7 wakeUpEvent];
  dueDate = [wakeUpEvent dueDate];

  v10 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543618;
    v43 = v11;
    v44 = 2114;
    v45 = dueDate;
    v12 = v11;
    _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] next wake up is %{public}@", buf, 0x16u);
  }

  scheduledInterval = [v7 scheduledInterval];
  v14 = [scheduledInterval containsDate:dateCopy];

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
    v45 = dateCopy;
    v17 = v16;
    _os_log_impl(&dword_269A84000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] early wake up detected outside of expected interval (%{public}@)", buf, 0x16u);
  }

  sleepEventRecord = [(HKSPSleepScheduleModel *)self sleepEventRecord];
  wakeUpEarlyNotificationConfirmedDate = [sleepEventRecord wakeUpEarlyNotificationConfirmedDate];
  wakeUpConfirmedUntilDate = [sleepEventRecord wakeUpConfirmedUntilDate];
  if ([wakeUpConfirmedUntilDate hksp_isAfterDate:wakeUpEarlyNotificationConfirmedDate])
  {
    v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:wakeUpEarlyNotificationConfirmedDate endDate:wakeUpConfirmedUntilDate];
    if ([v21 hksp_containsDate:dateCopy])
    {
      v22 = HKSPLogForCategory(9uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543618;
        v43 = v23;
        v44 = 2114;
        v45 = wakeUpConfirmedUntilDate;
        v24 = v23;
        _os_log_impl(&dword_269A84000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] possible duplicate early wake up detected, using that wake up date (%{public}@)", buf, 0x16u);
      }

      goto LABEL_23;
    }
  }

  v40 = wakeUpEarlyNotificationConfirmedDate;
  v39 = [(HKSPSleepScheduleModel *)self previousResolvedOccurrenceBeforeDate:dateCopy];
  wakeUpEvent2 = [v39 wakeUpEvent];
  dueDate2 = [wakeUpEvent2 dueDate];

  v27 = MEMORY[0x277CBEAA8];
  v41[0] = dueDate2;
  v41[1] = dueDate;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v29 = [v27 hksp_closestFromDates:v28 toDate:dateCopy];

  v30 = HKSPLogForCategory(9uLL);
  v31 = v30;
  if (v29 == dueDate2)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      *buf = 138543618;
      v43 = v33;
      v44 = 2114;
      v45 = dueDate2;
      v34 = v33;
      _os_log_impl(&dword_269A84000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] possible late early wake up detected, using previous wake up date (%{public}@)", buf, 0x16u);
    }

    v32 = dueDate2;
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

    v32 = wakeUpConfirmedUntilDate;
  }

  wakeUpConfirmedUntilDate = v32;
  if (v29 != dueDate2)
  {
LABEL_22:
    wakeUpConfirmedUntilDate = dueDate;
  }

LABEL_23:

  v35 = *MEMORY[0x277D85DE8];

  return wakeUpConfirmedUntilDate;
}

- (id)computeConfirmedWakeUpUntilDateForOverrideWakeUpDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = dateCopy;
    v6 = v11;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] computing wake up confirmed date for override wake up (%{public}@)", &v10, 0x16u);
  }

  v7 = [(HKSPSleepScheduleModel *)self _computeOriginalWakeUpForOverrideDateHelper:dateCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)computeTemplateGenerationDateForCurrentDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = dateCopy;
    v6 = v11;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] computing template generation date for current date (%{public}@)", &v10, 0x16u);
  }

  v7 = [(HKSPSleepScheduleModel *)self _computeOriginalWakeUpForOverrideDateHelper:dateCopy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_computeOriginalWakeUpForOverrideDateHelper:(id)helper
{
  v28 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  v5 = [(HKSPSleepScheduleModel *)self previousOccurrenceBeforeDate:helperCopy];
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  v7 = [sleepSchedule overridenOccurrenceForOverrideOccurrence:v5];

  if (!v7)
  {
    hk_gregorianCalendar = HKSPLogForCategory(9uLL);
    if (os_log_type_enabled(hk_gregorianCalendar, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = objc_opt_class();
      v17 = v25;
      _os_log_impl(&dword_269A84000, hk_gregorianCalendar, OS_LOG_TYPE_DEFAULT, "[%{public}@] override occurrence doesn't override anything", &v24, 0xCu);
    }

    goto LABEL_15;
  }

  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  wakeUpComponents = [v5 wakeUpComponents];
  v10 = [hk_gregorianCalendar dateFromComponents:wakeUpComponents];

  v11 = [v7 nextDateIntervalWithWakeUpAfterDate:v10 gregorianCalendar:hk_gregorianCalendar];
  endDate = [v11 endDate];

  if (![hk_gregorianCalendar date:endDate isSameDayAsDate:v10])
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
    endDate = helperCopy;
    goto LABEL_16;
  }

  v13 = [endDate hksp_isAfterDate:helperCopy];
  v14 = HKSPLogForCategory(9uLL);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      v24 = 138543618;
      v25 = objc_opt_class();
      v26 = 2114;
      v27 = endDate;
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
    v27 = endDate;
    v16 = v25;
    _os_log_impl(&dword_269A84000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake up for override was earlier than normal occurrence wake up time (%{public}@)", &v24, 0x16u);
  }

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];

  return endDate;
}

- (id)generateOverrideOccurrenceForCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if (sleepSchedule)
  {
    v9 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceForCurrentDate:dateCopy gregorianCalendar:calendarCopy schedule:sleepSchedule];
  }

  else
  {
    v10 = objc_alloc_init(HKSPSleepSchedule);
    v9 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceForCurrentDate:dateCopy gregorianCalendar:calendarCopy schedule:v10];
  }

  return v9;
}

- (id)generateOverrideOccurrenceForCurrentDate:(id)date gregorianCalendar:(id)calendar schedule:(id)schedule
{
  v5 = [(HKSPSleepScheduleModel *)self overrideOccurrenceGenerationResultForCurrentDate:date gregorianCalendar:calendar schedule:schedule];
  overrideOccurrence = [v5 overrideOccurrence];

  return overrideOccurrence;
}

- (id)overrideOccurrenceGenerationResultForCurrentDate:(id)date gregorianCalendar:(id)calendar schedule:(id)schedule
{
  v42 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  calendarCopy = calendar;
  scheduleCopy = schedule;
  v11 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    hkspDescription = [dateCopy hkspDescription];
    *buf = 138543874;
    v37 = v12;
    v38 = 2114;
    v39 = hkspDescription;
    v40 = 2114;
    v41 = scheduleCopy;
    _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] generating an override occurrence for current date: %{public}@ from schedule: %{public}@", buf, 0x20u);
  }

  v15 = objc_alloc_init(HKSPOverrideOccurrenceGenerationResult);
  v16 = [(HKSPSleepScheduleModel *)self upcomingResolvedOccurrenceAfterDate:dateCopy];
  v17 = HKSPLogForCategory(9uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    selfCopy = self;
    v19 = calendarCopy;
    v20 = scheduleCopy;
    v21 = v18;
    [dateCopy hkspDescription];
    v23 = v22 = dateCopy;
    *buf = 138543874;
    v37 = v18;
    v38 = 2114;
    v39 = v23;
    v40 = 2114;
    v41 = v16;
    _os_log_impl(&dword_269A84000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] upcoming resolved occurrence for current date: %{public}@ is: %{public}@", buf, 0x20u);

    dateCopy = v22;
    scheduleCopy = v20;
    calendarCopy = v19;
    self = selfCopy;
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
    occurrence = [v16 occurrence];
    -[HKSPOverrideOccurrenceGenerationResult setUpcomingOccurrenceWasOverride:](v15, "setUpcomingOccurrenceWasOverride:", [occurrence isSingleDayOverride]);

    v29 = [v16 generateOverrideOccurrenceForCurrentDate:dateCopy gregorianCalendar:calendarCopy];
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
    v29 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:dateCopy gregorianCalendar:calendarCopy schedule:scheduleCopy];
  }

  v32 = v29;
  [(HKSPOverrideOccurrenceGenerationResult *)v15 setOverrideOccurrence:v29];

  v33 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)date
{
  v4 = MEMORY[0x277CBEA80];
  dateCopy = date;
  hk_gregorianCalendar = [v4 hk_gregorianCalendar];
  v7 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:dateCopy gregorianCalendar:hk_gregorianCalendar];

  return v7;
}

- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if (sleepSchedule)
  {
    v9 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:dateCopy gregorianCalendar:calendarCopy schedule:sleepSchedule];
  }

  else
  {
    v10 = objc_alloc_init(HKSPSleepSchedule);
    v9 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:dateCopy gregorianCalendar:calendarCopy schedule:v10];
  }

  return v9;
}

- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)date gregorianCalendar:(id)calendar schedule:(id)schedule
{
  calendarCopy = calendar;
  dateCopy = date;
  mutableOccurrenceTemplate = [schedule mutableOccurrenceTemplate];
  v11 = [(HKSPSleepScheduleModel *)self generateOverrideOccurrenceFromTemplateForCurrentDate:dateCopy gregorianCalendar:calendarCopy mutableOccurrence:mutableOccurrenceTemplate];

  return v11;
}

- (id)generateOverrideOccurrenceFromTemplateForCurrentDate:(id)date gregorianCalendar:(id)calendar mutableOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  calendarCopy = calendar;
  v10 = [(HKSPSleepScheduleModel *)self computeTemplateGenerationDateForCurrentDate:date];
  v11 = [occurrenceCopy overrideOccurrenceTemplateForCurrentDate:v10 gregorianCalendar:calendarCopy];

  return v11;
}

- (BOOL)goodMorningAlertNotificationsEnabledWithLogObject:(id)object
{
  v16 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if ([sleepSchedule isEnabledAndHasOccurrences])
  {
    sleepSettings = [(HKSPSleepScheduleModel *)self sleepSettings];
    if (([sleepSettings watchSleepFeaturesEnabled]& 1) != 0)
    {
      if (([sleepSettings scheduledSleepMode]& 1) != 0)
      {
        sleepEventRecord = [(HKSPSleepScheduleModel *)self sleepEventRecord];
        isAnySleepCoachingOnboardingCompleted = [sleepEventRecord isAnySleepCoachingOnboardingCompleted];
        v9 = isAnySleepCoachingOnboardingCompleted;
        if (!objectCopy || (isAnySleepCoachingOnboardingCompleted & 1) != 0)
        {
          goto LABEL_21;
        }

        v10 = HKSPLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543362;
          v15 = objectCopy;
          _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting good morning alert because onboarding hasn't completed", &v14, 0xCu);
        }

LABEL_20:
        v9 = 0;
LABEL_21:

LABEL_23:
        goto LABEL_24;
      }

      if (objectCopy)
      {
        sleepEventRecord = HKSPLogForCategory(0);
        if (!os_log_type_enabled(sleepEventRecord, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        v14 = 138543362;
        v15 = objectCopy;
        v11 = "[%{public}@] not posting morning notification because scheduledSleepMode isn't enabled";
        goto LABEL_19;
      }
    }

    else if (objectCopy)
    {
      sleepEventRecord = HKSPLogForCategory(0);
      if (!os_log_type_enabled(sleepEventRecord, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v14 = 138543362;
      v15 = objectCopy;
      v11 = "[%{public}@] not posting morning notification because sleep features are disabled for this watch";
LABEL_19:
      _os_log_impl(&dword_269A84000, sleepEventRecord, OS_LOG_TYPE_DEFAULT, v11, &v14, 0xCu);
      goto LABEL_20;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  if (objectCopy)
  {
    sleepSettings = HKSPLogForCategory(0);
    if (os_log_type_enabled(sleepSettings, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = objectCopy;
      _os_log_impl(&dword_269A84000, sleepSettings, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting morning notification because sleep schedule isn't enabled", &v14, 0xCu);
    }

    goto LABEL_22;
  }

  v9 = 0;
LABEL_24:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)goodMorningScreenEnabledWithLogObject:(id)object
{
  v14 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if (([sleepSchedule isEnabledAndHasOccurrences] & 1) == 0)
  {
    if (!objectCopy)
    {
      v9 = 0;
      goto LABEL_17;
    }

    sleepSettings = HKSPLogForCategory(0);
    if (os_log_type_enabled(sleepSettings, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objectCopy;
      _os_log_impl(&dword_269A84000, sleepSettings, OS_LOG_TYPE_DEFAULT, "[%{public}@] not showing morning screen because sleep schedule isn't enabled", &v12, 0xCu);
    }

    goto LABEL_15;
  }

  sleepSettings = [(HKSPSleepScheduleModel *)self sleepSettings];
  if (([sleepSettings scheduledSleepMode]& 1) != 0)
  {
    if (([sleepSettings sleepModeOptions]& 0x4000) != 0)
    {
      v9 = 1;
      goto LABEL_16;
    }

    if (objectCopy)
    {
      v7 = HKSPLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = objectCopy;
        v8 = "[%{public}@] not showing morning screen because it isn't enabled";
LABEL_13:
        _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if (objectCopy)
  {
    v7 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objectCopy;
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

- (BOOL)chargingRemindersEnabledWithLogObject:(id)object
{
  v14 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  sleepSchedule = [(HKSPSleepScheduleModel *)self sleepSchedule];
  if ([sleepSchedule isEnabledAndHasOccurrences])
  {
    sleepSettings = [(HKSPSleepScheduleModel *)self sleepSettings];
    if (([sleepSettings watchSleepFeaturesEnabled]& 1) != 0)
    {
      if (([sleepSettings chargingReminders]& 1) != 0)
      {
        v7 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (objectCopy)
      {
        v8 = HKSPLogForCategory(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          v13 = objectCopy;
          v9 = "[%{public}@] not posting charging reminder because charging reminders aren't enabled";
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else if (objectCopy)
    {
      v8 = HKSPLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = objectCopy;
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

  if (objectCopy)
  {
    sleepSettings = HKSPLogForCategory(0);
    if (os_log_type_enabled(sleepSettings, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objectCopy;
      _os_log_impl(&dword_269A84000, sleepSettings, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting charging reminder because sleep schedule isn't enabled", &v12, 0xCu);
    }

    goto LABEL_17;
  }

  v7 = 0;
LABEL_19:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

@end