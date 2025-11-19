@interface HKSPSleepScheduleOccurrence
+ (id)occurrenceWithWeekdays:(unint64_t)a3 backingOccurrence:(id)a4;
- (BOOL)crossesDayBoundary;
- (BOOL)isAlarmEquivalentToOverrideOccurrence:(id)a3;
- (BOOL)isEquivalentToOverrideOccurrence:(id)a3;
- (BOOL)isRepeating;
- (BOOL)isSingleDayOverride;
- (BOOL)isValidOccurrence;
- (BOOL)overrideAppliesToOccurrence:(id)a3 gregorianCalendar:(id)a4;
- (BOOL)overridesWakeUpForOccurrenceOnDate:(id)a3 gregorianCalendar:(id)a4;
- (BOOL)usesDefaultBedtimeAndWakeUpComponents;
- (HKSPAlarmConfiguration)alarmConfiguration;
- (HKSPSleepScheduleOccurrence)init;
- (HKSPSleepScheduleOccurrence)initWithCoder:(id)a3;
- (NSDateComponents)bedtimeComponents;
- (NSDateComponents)wakeUpComponents;
- (double)actualSleepInterval;
- (double)generalSleepInterval;
- (id)bedtimeDateForWakeUpDate:(id)a3 gregorianCalendar:(id)a4;
- (id)changesFromOccurrence:(id)a3;
- (id)convertToScheduledOccurrenceOnSameDaysAsOccurrence:(id)a3;
- (id)initFromObject:(id)a3;
- (id)mutableCopy;
- (id)nextDateIntervalWithWakeUpAfterDate:(id)a3 gregorianCalendar:(id)a4;
- (id)overrideOccurrenceTemplateForCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)overrideOccurrenceWithWakeUpComponents:(id)a3 bedtimeComponents:(id)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)wakeUpDateForDate:(id)a3 day:(int64_t)a4 searchBackwards:(BOOL)a5 gregorianCalendar:(id)a6;
- (id)wakeUpDateForDate:(id)a3 searchBackwards:(BOOL)a4 gregorianCalendar:(id)a5;
- (int64_t)overrideDayInCalendar:(id)a3;
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

- (id)initFromObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HKSPSleepScheduleOccurrence *)self init];
    HKSPCopyFromObject(v5, v6);

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HKSPSleepScheduleOccurrence)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKSPSleepScheduleOccurrence;
  v5 = [(HKSPSleepScheduleOccurrence *)&v9 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, v4);
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
  v2 = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  v3 = [v2 bedtimeComponents];

  return v3;
}

- (NSDateComponents)wakeUpComponents
{
  v2 = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  v3 = [v2 wakeUpComponents];

  return v3;
}

- (HKSPAlarmConfiguration)alarmConfiguration
{
  v2 = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  v3 = [v2 alarmConfiguration];

  return v3;
}

- (BOOL)isRepeating
{
  v3 = [(HKSPSleepScheduleOccurrence *)self isInitialized];
  if (v3)
  {
    LOBYTE(v3) = ![(HKSPSleepScheduleOccurrence *)self isSingleDayOverride];
  }

  return v3;
}

- (BOOL)isSingleDayOverride
{
  if ([(HKSPSleepScheduleOccurrence *)self weekdays])
  {
    return 0;
  }

  v4 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v3 = [v4 year] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (BOOL)usesDefaultBedtimeAndWakeUpComponents
{
  v3 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  if ([v3 hour] == 22)
  {
    v4 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
    if ([v4 minute] == 30)
    {
      v5 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
      if ([v5 hour] == 7)
      {
        v6 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
        v7 = [v6 minute] == 0;
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

- (id)overrideOccurrenceWithWakeUpComponents:(id)a3 bedtimeComponents:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HKSPMutableSleepScheduleOccurrence alloc] initWithTemplateOccurrence:self];
  [(HKSPMutableSleepScheduleOccurrence *)v8 setWeekdays:0];
  [(HKSPMutableSleepScheduleOccurrence *)v8 setWakeUpComponents:v7];

  [(HKSPMutableSleepScheduleOccurrence *)v8 setBedtimeComponents:v6];

  return v8;
}

- (id)overrideOccurrenceTemplateForCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 calendarIdentifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v11 = [[HKSPMutableSleepScheduleOccurrence alloc] initWithTemplateOccurrence:self];
  }

  else
  {
    v12 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v13 = [v8 hksp_nextDateAfterDate:v7 matchingComponents:v12];

    v14 = [(HKSPSleepScheduleOccurrence *)self bedtimeDateForWakeUpDate:v13 gregorianCalendar:v8];
    v15 = [v8 components:124 fromDate:v13];
    v16 = [v8 components:124 fromDate:v14];
    v11 = [(HKSPSleepScheduleOccurrence *)self overrideOccurrenceWithWakeUpComponents:v15 bedtimeComponents:v16];
  }

  return v11;
}

- (id)convertToScheduledOccurrenceOnSameDaysAsOccurrence:(id)a3
{
  v4 = a3;
  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v5 = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
    v6 = [v5 mutableCopy];

    v7 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v8 = [v7 hksp_timeComponents];
    [v6 setWakeUpComponents:v8];

    v9 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
    v10 = [v9 hksp_timeComponents];
    [v6 setBedtimeComponents:v10];

    v11 = [v4 backingOccurrence];
    v12 = [v11 mutableCopy];

    v13 = HKSPGenerateChangeSetBetweenObjects(v12, v6);
    HKSPApplyChangesToObject(v12, v13);
    v14 = [v12 generateSleepScheduleOccurrenceWithWeekdays:{objc_msgSend(v4, "weekdays")}];
    v15 = [v14 mutableCopy];
  }

  else
  {
    v15 = [(HKSPSleepScheduleOccurrence *)self mutableCopy];
  }

  return v15;
}

- (id)changesFromOccurrence:(id)a3
{
  v4 = a3;
  v5 = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  v6 = [v4 backingOccurrence];

  v7 = [v5 changesFromOccurrence:v6];

  return v7;
}

+ (id)occurrenceWithWeekdays:(unint64_t)a3 backingOccurrence:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(HKSPMutableSleepScheduleOccurrence);
  v7 = [v5 copy];

  [(HKSPMutableSleepScheduleOccurrence *)v6 setBackingOccurrence:v7];
  [(HKSPMutableSleepScheduleOccurrence *)v6 setWeekdays:a3];
  v8 = [(HKSPMutableSleepScheduleOccurrence *)v6 copy];

  return v8;
}

- (BOOL)overridesWakeUpForOccurrenceOnDate:(id)a3 gregorianCalendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 calendarIdentifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v11 = [v8 startOfDayForDate:v7];
    v12 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v13 = [v8 dateFromComponents:v12];

    v14 = [v8 startOfDayForDate:v13];
    v15 = [v14 isEqualToDate:v11];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)overrideAppliesToOccurrence:(id)a3 gregorianCalendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 calendarIdentifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v11 = [(HKSPSleepScheduleOccurrence *)self overrideDayInCalendar:v8];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v12 = [v7 weekdays];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__HKSPSleepScheduleOccurrence_overrideAppliesToOccurrence_gregorianCalendar___block_invoke;
    v16[3] = &unk_279C74B28;
    v16[4] = &v17;
    v16[5] = v11;
    HKSPWeekdaysEnumerateDays(v12, v16, 0);
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

- (int64_t)overrideDayInCalendar:(id)a3
{
  v5 = a3;
  v6 = [v5 calendarIdentifier];
  v7 = [v6 isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v7 & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"[gregorianCalendar.calendarIdentifier isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v8 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v9 = [v5 dateFromComponents:v8];

    if (v9)
    {
      v10 = [v5 component:512 fromDate:v9];
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

- (id)nextDateIntervalWithWakeUpAfterDate:(id)a3 gregorianCalendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 calendarIdentifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v11 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    v12 = [v8 dateFromComponents:v11];

    v13 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
    v14 = [v8 dateFromComponents:v13];
  }

  else
  {
    v12 = [(HKSPSleepScheduleOccurrence *)self wakeUpDateForDate:v7 searchBackwards:0 gregorianCalendar:v8];
    v14 = [(HKSPSleepScheduleOccurrence *)self bedtimeDateForWakeUpDate:v12 gregorianCalendar:v8];
  }

  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v12];

  return v15;
}

- (id)wakeUpDateForDate:(id)a3 day:(int64_t)a4 searchBackwards:(BOOL)a5 gregorianCalendar:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v13 = [v12 copy];

  [v13 setSecond:0];
  if (![(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    if ((a4 - 1) >= 7)
    {
      v14 = 0;
    }

    else
    {
      v14 = a4;
    }

    [v13 setWeekday:v14];
  }

  if (v7)
  {
    [v11 hksp_previousDateBeforeDate:v10 matchingComponents:v13];
  }

  else
  {
    [v11 hksp_nextDateAfterDate:v10 matchingComponents:v13];
  }
  v15 = ;

  return v15;
}

- (id)wakeUpDateForDate:(id)a3 searchBackwards:(BOOL)a4 gregorianCalendar:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  if (a4)
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }
  v25 = ;
  v10 = [(HKSPSleepScheduleOccurrence *)self weekdays];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__HKSPSleepScheduleOccurrence_wakeUpDateForDate_searchBackwards_gregorianCalendar___block_invoke;
  v15[3] = &unk_279C74B00;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v19 = a4;
  v12 = v9;
  v17 = v12;
  v18 = &v20;
  HKSPWeekdaysEnumerateDays(v10, v15, a4);
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

- (id)bedtimeDateForWakeUpDate:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v9 = [v8 copy];

  [v9 setSecond:0];
  v10 = [v6 hksp_previousDateBeforeDate:v7 matchingComponents:v9];

  return v10;
}

- (BOOL)isValidOccurrence
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  if (!v3 || (v4 = v3, [(HKSPSleepScheduleOccurrence *)self bedtimeComponents], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v12 = HKSPLogForCategory(5uLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v24 = 138543362;
    v25 = objc_opt_class();
    v18 = v25;
    v19 = "[%{public}@] nil date components found";
    goto LABEL_25;
  }

  v6 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  if ([v6 hour] >= 24)
  {

    goto LABEL_16;
  }

  v7 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v8 = [v7 hour];

  if (v8 >= 24)
  {
LABEL_16:
    v12 = HKSPLogForCategory(5uLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
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
    v9 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    if ([v9 year] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
      v11 = [v10 year];

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v12 = HKSPLogForCategory(5uLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v24 = 138543362;
    v25 = objc_opt_class();
    v18 = v25;
    v19 = "[%{public}@] invalid components for repeating occurrence";
LABEL_25:
    _os_log_error_impl(&dword_269A84000, v12, OS_LOG_TYPE_ERROR, v19, &v24, 0xCu);

    goto LABEL_17;
  }

LABEL_8:
  if (![(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v20 = 1;
    goto LABEL_19;
  }

  v12 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v13 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v14 = [v12 dateFromComponents:v13];

  v15 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v16 = [v12 dateFromComponents:v15];

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
  v3 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v4 = [v3 hour];
  v5 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  if (v4 <= [v5 hour])
  {
    v7 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
    v8 = [v7 hour];
    v9 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
    if (v8 == [v9 hour])
    {
      v10 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
      v11 = [v10 minute];
      v12 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
      v6 = v11 > [v12 minute];
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

- (BOOL)isEquivalentToOverrideOccurrence:(id)a3
{
  v5 = a3;
  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:299 description:@"This should not be called on an override occurrence"];
  }

  if (([v5 isSingleDayOverride] & 1) == 0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:300 description:@"overrideOccurrence should be an actual override occurrence"];
  }

  v6 = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  v7 = [v5 backingOccurrence];
  v8 = [v6 isEquivalentToOccurrenceIgnoringDates:v7];

  return v8;
}

- (BOOL)isAlarmEquivalentToOverrideOccurrence:(id)a3
{
  v5 = a3;
  if ([(HKSPSleepScheduleOccurrence *)self isSingleDayOverride])
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:305 description:@"This should not be called on an override occurrence"];
  }

  if (([v5 isSingleDayOverride] & 1) == 0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HKSPSleepScheduleOccurrence.m" lineNumber:306 description:@"overrideOccurrence should be an actual override occurrence"];
  }

  v6 = [(HKSPSleepScheduleOccurrence *)self backingOccurrence];
  v7 = [v5 backingOccurrence];
  v8 = [v6 isAlarmEquivalentToOccurrenceIgnoringDates:v7];

  return v8;
}

- (double)actualSleepInterval
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v5 = [(HKSPSleepScheduleOccurrence *)self nextDateIntervalWithWakeUpAfterDate:v3 gregorianCalendar:v4];
  [v5 duration];
  v7 = v6;

  return v7;
}

- (double)generalSleepInterval
{
  v3 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v4 = [v3 hour];
  v5 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v6 = [v5 minute] * 60.0 + v4 * 3600.0;

  v7 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v8 = [v7 hour];
  v9 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v10 = [v9 minute] * 60.0;

  v11 = [(HKSPSleepScheduleOccurrence *)self crossesDayBoundary];
  v12 = 86400.0 - (v10 + v8 * 3600.0);
  if (!v11)
  {
    v12 = -(v10 + v8 * 3600.0);
  }

  return v6 + v12;
}

- (id)succinctDescription
{
  v2 = [(HKSPSleepScheduleOccurrence *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HKSPSleepScheduleOccurrence *)self bedtimeComponents];
  v5 = [v4 hksp_description];
  [v3 appendString:v5 withName:@"bedtime"];

  v6 = [(HKSPSleepScheduleOccurrence *)self wakeUpComponents];
  v7 = [v6 hksp_description];
  [v3 appendString:v7 withName:@"wakeUp"];

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
  v10 = [(HKSPSleepScheduleOccurrence *)self alarmConfiguration];
  v11 = [v3 appendBool:objc_msgSend(v10 withName:{"isEnabled"), @"alarm"}];

  return v3;
}

@end