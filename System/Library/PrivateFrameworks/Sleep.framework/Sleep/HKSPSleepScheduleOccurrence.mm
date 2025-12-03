@interface HKSPSleepScheduleOccurrence
+ (id)occurrenceWithWeekdays:(unint64_t)weekdays backingOccurrence:(id)occurrence;
- (BOOL)crossesDayBoundary;
- (BOOL)isAlarmEquivalentToOverrideOccurrence:(id)occurrence;
- (BOOL)isEquivalentToOverrideOccurrence:(id)occurrence;
- (BOOL)isRepeating;
- (BOOL)isSingleDayOverride;
- (BOOL)isValidOccurrence;
- (BOOL)overrideAppliesToOccurrence:(id)occurrence gregorianCalendar:(id)calendar;
- (BOOL)overridesWakeUpForOccurrenceOnDate:(id)date gregorianCalendar:(id)calendar;
- (BOOL)usesDefaultBedtimeAndWakeUpComponents;
- (HKSPAlarmConfiguration)alarmConfiguration;
- (HKSPSleepScheduleOccurrence)init;
- (HKSPSleepScheduleOccurrence)initWithCoder:(id)coder;
- (NSDateComponents)bedtimeComponents;
- (NSDateComponents)wakeUpComponents;
- (double)actualSleepInterval;
- (double)generalSleepInterval;
- (id)bedtimeDateForWakeUpDate:(id)date gregorianCalendar:(id)calendar;
- (id)changesFromOccurrence:(id)occurrence;
- (id)convertToScheduledOccurrenceOnSameDaysAsOccurrence:(id)occurrence;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (id)nextDateIntervalWithWakeUpAfterDate:(id)date gregorianCalendar:(id)calendar;
- (id)overrideOccurrenceTemplateForCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)overrideOccurrenceWithWakeUpComponents:(id)components bedtimeComponents:(id)bedtimeComponents;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)wakeUpDateForDate:(id)date day:(int64_t)day searchBackwards:(BOOL)backwards gregorianCalendar:(id)calendar;
- (id)wakeUpDateForDate:(id)date searchBackwards:(BOOL)backwards gregorianCalendar:(id)calendar;
- (int64_t)overrideDayInCalendar:(id)calendar;
@end

@implementation HKSPSleepScheduleOccurrence

- (HKSPSleepScheduleOccurrence)init
{
  v8.receiver = self;
  v8.super_class = HKSPSleepScheduleOccurrence;
  v2 = [(HKSPSleepScheduleOccurrence *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_269AE63B0;
    v4 = objc_alloc_init(HKSPSleepScheduleDayOccurrence);
    backingOccurrence = v3->_backingOccurrence;
    v3->_backingOccurrence = v4;

    v6 = v3;
  }

  return v3;
}

- (id)initFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v6 = [(HKSPSleepScheduleOccurrence *)self init];
    HKSPCopyFromObject(v5, v6);

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HKSPSleepScheduleOccurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKSPSleepScheduleOccurrence;
  v5 = [(HKSPSleepScheduleOccurrence *)&v9 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, coderCopy);
    v7 = v6;
  }

  return v6;
}

- (id)mutableCopy
{
  v3 = [HKSPMutableSleepScheduleOccurrence alloc];

  return [(HKSPMutableSleepScheduleOccurrence *)v3 initFromObject:self];
}

- (NSDateComponents)bedtimeComponents
{
  backingOccurrence = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  bedtimeComponents = [backingOccurrence bedtimeComponents];

  return bedtimeComponents;
}

- (NSDateComponents)wakeUpComponents
{
  backingOccurrence = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  wakeUpComponents = [backingOccurrence wakeUpComponents];

  return wakeUpComponents;
}

- (HKSPAlarmConfiguration)alarmConfiguration
{
  backingOccurrence = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  alarmConfiguration = [backingOccurrence alarmConfiguration];

  return alarmConfiguration;
}

- (BOOL)isRepeating
{
  isInitialized = [(HKSPSleepScheduleOccurrence *)self isInitialized];
  if (isInitialized)
  {
    LOBYTE(isInitialized) = ![(HKSPSleepScheduleOccurrence *)self isSingleDayOverride];
  }

  return isInitialized;
}

- (BOOL)isSingleDayOverride
{
  if ([(HKSPSleepScheduleOccurrence *)self weekdays])
  {
    return 0;
  }

  wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v3 = [wakeUpComponents year] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (BOOL)usesDefaultBedtimeAndWakeUpComponents
{
  bedtimeComponents = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  if ([bedtimeComponents hour] == 22)
  {
    bedtimeComponents2 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
    if ([bedtimeComponents2 minute] == 30)
    {
      wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
      if ([wakeUpComponents hour] == 7)
      {
        wakeUpComponents2 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
        v7 = [wakeUpComponents2 minute] == 0;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)overrideOccurrenceWithWakeUpComponents:(id)components bedtimeComponents:(id)bedtimeComponents
{
  bedtimeComponentsCopy = bedtimeComponents;
  componentsCopy = components;
  v8 = [[HKSPMutableSleepScheduleOccurrence alloc] initWithTemplateOccurrence:self];
  [(HKSPMutableSleepScheduleOccurrence *)v8 setWeekdays:0];
  [(HKSPMutableSleepScheduleOccurrence *)v8 setWakeUpComponents:componentsCopy];

  [(HKSPMutableSleepScheduleOccurrence *)v8 setBedtimeComponents:bedtimeComponentsCopy];

  return v8;
}

- (id)overrideOccurrenceTemplateForCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  v10 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v11 = [[HKSPMutableSleepScheduleOccurrence alloc] initWithTemplateOccurrence:self];
  }

  else
  {
    wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v13 = [calendarCopy hksp_nextDateAfterDate:dateCopy matchingComponents:wakeUpComponents];

    v14 = [(HKSPSleepScheduleOccurrence *)self bedtimeDateForWakeUpDate:v13 gregorianCalendar:calendarCopy];
    v15 = [calendarCopy components:124 fromDate:v13];
    v16 = [calendarCopy components:124 fromDate:v14];
    v11 = [(HKSPSleepScheduleOccurrence *)self overrideOccurrenceWithWakeUpComponents:v15 bedtimeComponents:v16];
  }

  return v11;
}

- (id)convertToScheduledOccurrenceOnSameDaysAsOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    backingOccurrence = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
    v6 = [backingOccurrence mutableCopy];

    wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    hksp_timeComponents = [wakeUpComponents hksp_timeComponents];
    [v6 setWakeUpComponents:hksp_timeComponents];

    bedtimeComponents = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
    hksp_timeComponents2 = [bedtimeComponents hksp_timeComponents];
    [v6 setBedtimeComponents:hksp_timeComponents2];

    backingOccurrence2 = [occurrenceCopy backingOccurrence];
    v12 = [backingOccurrence2 mutableCopy];

    v13 = HKSPGenerateChangeSetBetweenObjects(v12, v6);
    HKSPApplyChangesToObject(v12, v13);
    v14 = [v12 generateSleepScheduleOccurrenceWithWeekdays:{objc_msgSend(occurrenceCopy, "weekdays")}];
    v15 = [v14 mutableCopy];
  }

  else
  {
    v15 = [(HKSPSleepScheduleOccurrence *)self mutableCopy];
  }

  return v15;
}

- (id)changesFromOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  backingOccurrence = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  backingOccurrence2 = [occurrenceCopy backingOccurrence];

  v7 = [backingOccurrence changesFromOccurrence:backingOccurrence2];

  return v7;
}

+ (id)occurrenceWithWeekdays:(unint64_t)weekdays backingOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v6 = objc_alloc_init(HKSPMutableSleepScheduleOccurrence);
  v7 = [occurrenceCopy copy];

  [(HKSPMutableSleepScheduleOccurrence *)v6 setBackingOccurrence:v7];
  [(HKSPMutableSleepScheduleOccurrence *)v6 setWeekdays:weekdays];
  v8 = [(HKSPMutableSleepScheduleOccurrence *)v6 copy];

  return v8;
}

- (BOOL)overridesWakeUpForOccurrenceOnDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  v10 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v11 = [calendarCopy startOfDayForDate:dateCopy];
    wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v13 = [calendarCopy dateFromComponents:wakeUpComponents];

    v14 = [calendarCopy startOfDayForDate:v13];
    v15 = [v14 isEqualToDate:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)overrideAppliesToOccurrence:(id)occurrence gregorianCalendar:(id)calendar
{
  occurrenceCopy = occurrence;
  calendarCopy = calendar;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  v10 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v11 = [(HKSPSleepScheduleOccurrence *)self overrideDayInCalendar:calendarCopy];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    weekdays = [occurrenceCopy weekdays];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__HKSPSleepScheduleOccurrence_overrideAppliesToOccurrence_gregorianCalendar___block_invoke;
    v16[3] = &unk_279C74B28;
    v16[4] = &v17;
    v16[5] = v11;
    HKSPWeekdaysEnumerateDays(weekdays, v16, 0);
    v13 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t __77__HKSPSleepScheduleOccurrence_overrideAppliesToOccurrence_gregorianCalendar___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (int64_t)overrideDayInCalendar:(id)calendar
{
  calendarCopy = calendar;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  v7 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v7 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"[gregorianCalendar.calendarIdentifier isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v9 = [calendarCopy dateFromComponents:wakeUpComponents];

    if (v9)
    {
      v10 = [calendarCopy component:512 fromDate:v9];
      if ((v10 - 1) >= 7)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
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

- (id)nextDateIntervalWithWakeUpAfterDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  v10 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v12 = [calendarCopy dateFromComponents:wakeUpComponents];

    bedtimeComponents = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
    v14 = [calendarCopy dateFromComponents:bedtimeComponents];
  }

  else
  {
    v12 = [(HKSPSleepScheduleOccurrence *)self wakeUpDateForDate:dateCopy searchBackwards:0 gregorianCalendar:calendarCopy];
    v14 = [(HKSPSleepScheduleOccurrence *)self bedtimeDateForWakeUpDate:v12 gregorianCalendar:calendarCopy];
  }

  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v12];

  return v15;
}

- (id)wakeUpDateForDate:(id)date day:(int64_t)day searchBackwards:(BOOL)backwards gregorianCalendar:(id)calendar
{
  backwardsCopy = backwards;
  dateCopy = date;
  calendarCopy = calendar;
  wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v13 = [wakeUpComponents copy];

  [v13 setSecond:0];
  if (![(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    if ((day - 1) >= 7)
    {
      dayCopy = 0;
    }

    else
    {
      dayCopy = day;
    }

    [v13 setWeekday:dayCopy];
  }

  if (backwardsCopy)
  {
    [calendarCopy hksp_previousDateBeforeDate:dateCopy matchingComponents:v13];
  }

  else
  {
    [calendarCopy hksp_nextDateAfterDate:dateCopy matchingComponents:v13];
  }
  v15 = ;

  return v15;
}

- (id)wakeUpDateForDate:(id)date searchBackwards:(BOOL)backwards gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  if (backwards)
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }
  v25 = ;
  weekdays = [(HKSPSleepScheduleOccurrence *)self weekdays];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__HKSPSleepScheduleOccurrence_wakeUpDateForDate_searchBackwards_gregorianCalendar___block_invoke;
  v15[3] = &unk_279C74B00;
  v15[4] = self;
  v11 = dateCopy;
  v16 = v11;
  backwardsCopy = backwards;
  v12 = calendarCopy;
  v17 = v12;
  v18 = &v20;
  HKSPWeekdaysEnumerateDays(weekdays, v15, backwards);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __83__HKSPSleepScheduleOccurrence_wakeUpDateForDate_searchBackwards_gregorianCalendar___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) wakeUpDateForDate:*(a1 + 40) day:a2 searchBackwards:*(a1 + 64) gregorianCalendar:*(a1 + 48)];
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v6 = v3;
  if (*(a1 + 64) == 1)
  {
    [v3 laterDate:v4];
  }

  else
  {
    [v3 earlierDate:v4];
  }
  v5 = ;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
}

- (id)bedtimeDateForWakeUpDate:(id)date gregorianCalendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  bedtimeComponents = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v9 = [bedtimeComponents copy];

  [v9 setSecond:0];
  v10 = [calendarCopy hksp_previousDateBeforeDate:dateCopy matchingComponents:v9];

  return v10;
}

- (BOOL)isValidOccurrence
{
  v26 = *MEMORY[0x277D85DE8];
  wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  if (!wakeUpComponents || (v4 = wakeUpComponents, [(HKSPSleepScheduleOccurrence *)self bedtimeComponents], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    hk_gregorianCalendar = HKSPLogForCategory(5uLL);
    if (!os_log_type_enabled(hk_gregorianCalendar, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v24 = 138543362;
    v25 = objc_opt_class();
    v18 = v25;
    v19 = "[%{public}@] nil date components found";
    goto LABEL_25;
  }

  wakeUpComponents2 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  if ([wakeUpComponents2 hour] >= 24)
  {

    goto LABEL_16;
  }

  bedtimeComponents = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  hour = [bedtimeComponents hour];

  if (hour >= 24)
  {
LABEL_16:
    hk_gregorianCalendar = HKSPLogForCategory(5uLL);
    if (!os_log_type_enabled(hk_gregorianCalendar, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v24 = 138543362;
    v25 = objc_opt_class();
    v18 = v25;
    v19 = "[%{public}@] invalid date components found";
    goto LABEL_25;
  }

  if ([(HKSPSleepScheduleOccurrence *)self weekdays])
  {
    wakeUpComponents3 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    if ([wakeUpComponents3 year] == 0x7FFFFFFFFFFFFFFFLL)
    {
      bedtimeComponents2 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
      year = [bedtimeComponents2 year];

      if (year == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    hk_gregorianCalendar = HKSPLogForCategory(5uLL);
    if (!os_log_type_enabled(hk_gregorianCalendar, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v24 = 138543362;
    v25 = objc_opt_class();
    v18 = v25;
    v19 = "[%{public}@] invalid components for repeating occurrence";
LABEL_25:
    _os_log_error_impl(&dword_269A84000, hk_gregorianCalendar, OS_LOG_TYPE_ERROR, v19, &v24, 0xCu);

    goto LABEL_17;
  }

LABEL_8:
  if (![(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v20 = 1;
    goto LABEL_19;
  }

  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  wakeUpComponents4 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v14 = [hk_gregorianCalendar dateFromComponents:wakeUpComponents4];

  bedtimeComponents3 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v16 = [hk_gregorianCalendar dateFromComponents:bedtimeComponents3];

  if (![v16 hksp_isAfterOrSameAsDate:v14])
  {

    v20 = 1;
    goto LABEL_18;
  }

  v17 = HKSPLogForCategory(5uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v24 = 138543362;
    v25 = objc_opt_class();
    v23 = v25;
    _os_log_error_impl(&dword_269A84000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] bedtime is after wakeup", &v24, 0xCu);
  }

LABEL_17:
  v20 = 0;
LABEL_18:

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)crossesDayBoundary
{
  bedtimeComponents = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  hour = [bedtimeComponents hour];
  wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  if (hour <= [wakeUpComponents hour])
  {
    bedtimeComponents2 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
    hour2 = [bedtimeComponents2 hour];
    wakeUpComponents2 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    if (hour2 == [wakeUpComponents2 hour])
    {
      bedtimeComponents3 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
      minute = [bedtimeComponents3 minute];
      wakeUpComponents3 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
      v6 = minute > [wakeUpComponents3 minute];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isEquivalentToOverrideOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:299 description:@"This should not be called on an override occurrence"];
  }

  if (([occurrenceCopy isSingleDayOverride] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:300 description:@"overrideOccurrence should be an actual override occurrence"];
  }

  backingOccurrence = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  backingOccurrence2 = [occurrenceCopy backingOccurrence];
  v8 = [backingOccurrence isEquivalentToOccurrenceIgnoringDates:backingOccurrence2];

  return v8;
}

- (BOOL)isAlarmEquivalentToOverrideOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:305 description:@"This should not be called on an override occurrence"];
  }

  if (([occurrenceCopy isSingleDayOverride] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:306 description:@"overrideOccurrence should be an actual override occurrence"];
  }

  backingOccurrence = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  backingOccurrence2 = [occurrenceCopy backingOccurrence];
  v8 = [backingOccurrence isAlarmEquivalentToOccurrenceIgnoringDates:backingOccurrence2];

  return v8;
}

- (double)actualSleepInterval
{
  date = [MEMORY[0x277CBEAA8] date];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v5 = [(HKSPSleepScheduleOccurrence *)self nextDateIntervalWithWakeUpAfterDate:date gregorianCalendar:hk_gregorianCalendar];
  [v5 duration];
  v7 = v6;

  return v7;
}

- (double)generalSleepInterval
{
  wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  hour = [wakeUpComponents hour];
  wakeUpComponents2 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v6 = [wakeUpComponents2 minute] * 60.0 + hour * 3600.0;

  bedtimeComponents = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  hour2 = [bedtimeComponents hour];
  bedtimeComponents2 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v10 = [bedtimeComponents2 minute] * 60.0;

  crossesDayBoundary = [(HKSPSleepScheduleOccurrence *)self crossesDayBoundary];
  v12 = 86400.0 - (v10 + hour2 * 3600.0);
  if (!crossesDayBoundary)
  {
    v12 = -(v10 + hour2 * 3600.0);
  }

  return v6 + v12;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPSleepScheduleOccurrence *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bedtimeComponents = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  hksp_description = [bedtimeComponents hksp_description];
  [v3 appendString:hksp_description withName:@"bedtime"];

  wakeUpComponents = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  hksp_description2 = [wakeUpComponents hksp_description];
  [v3 appendString:hksp_description2 withName:@"wakeUp"];

  if ([(HKSPSleepScheduleOccurrence *)self weekdays]== 0xFFFFFFFF)
  {
    v8 = @"(unset)";
  }

  else
  {
    if ([(HKSPSleepScheduleOccurrence *)self weekdays])
    {
      v9 = NSStringFromHKSPWeekdays([(HKSPSleepScheduleOccurrence *)self weekdays]);
      [v3 appendString:v9 withName:@"weekdays"];

      goto LABEL_7;
    }

    v8 = @"None";
  }

  [v3 appendString:v8 withName:@"weekdays"];
LABEL_7:
  alarmConfiguration = [(HKSPSleepScheduleOccurrence *)self alarmConfiguration];
  v11 = [v3 appendBool:objc_msgSend(alarmConfiguration withName:{"isEnabled"), @"alarm"}];

  return v3;
}

@end