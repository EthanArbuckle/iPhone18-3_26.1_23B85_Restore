@interface HKSPSleepSchedule
+ (id)emptyScheduleWithSyncAnchor:(id)a3;
+ (id)innerClasses;
- (BOOL)hasOccurrences;
- (BOOL)isDefaultSchedule;
- (BOOL)isEnabledAndHasOccurrences;
- (BOOL)meetsDefaultSleepGoal;
- (HKSPSleepSchedule)init;
- (HKSPSleepSchedule)initWithCoder:(id)a3;
- (HKSPSleepScheduleOccurrence)overrideOccurrence;
- (NSArray)occurrences;
- (double)maximumAllowableWindDown;
- (id)_unsortedOccurrences;
- (id)_wakeUpComponentsByAddingSleepDurationGoalToBedtimeComponents:(id)a3;
- (id)allowableRangeForModifiedOccurrence:(id)a3 gregorianCalendar:(id)a4;
- (id)allowableRangeForWeekdays:(unint64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)emptyCopy;
- (id)initFromObject:(id)a3;
- (id)mutableCopy;
- (id)mutableOccurrenceTemplate;
- (id)objectWithSyncAnchor:(id)a3;
- (id)occurrenceOnDay:(int64_t)a3;
- (id)occurrencesAfterDate:(id)a3 gregorianCalendar:(id)a4;
- (id)occurrencesOnDays:(unint64_t)a3;
- (id)overridenOccurrenceForOverrideOccurrence:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)weekdaysWithOccurrences;
- (void)_enumerateDayOccurrencesWithBlock:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPSleepSchedule

- (HKSPSleepSchedule)init
{
  v6.receiver = self;
  v6.super_class = HKSPSleepSchedule;
  v2 = [(HKSPSleepSchedule *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v2->_enabled = 1;
    v2->_sleepDurationGoal = 0.0;
    v2->_windDownTime = 900.0;
    v4 = v2;
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
    v6 = [(HKSPSleepSchedule *)self init];
    HKSPCopyFromObject(v5, v6);
    v7 = [v5 syncAnchor];

    v8 = [v7 copyWithZone:0];
    syncAnchor = v6->_syncAnchor;
    v6->_syncAnchor = v8;

    self = v6;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectWithSyncAnchor:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initFromObject:self];
  v6 = [v4 copyWithZone:0];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

+ (id)emptyScheduleWithSyncAnchor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_HKSPEmptySleepSchedule);
  v5 = [(HKSPSleepSchedule *)v4 objectWithSyncAnchor:v3];

  return v5;
}

- (HKSPSleepSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKSPSleepSchedule;
  v5 = [(HKSPSleepSchedule *)&v11 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, v4);
    if (([v4 hksp_serializationOptions] & 1) == 0)
    {
      v7 = [v4 decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"HKSPScheduleSyncAnchor"];
      syncAnchor = v6->_syncAnchor;
      v6->_syncAnchor = v7;
    }

    v9 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  HKSPEncodeObjectWithCoder(self, v4);
  if (([v4 hksp_serializationOptions] & 1) == 0)
  {
    [v4 encodeObject:self->_syncAnchor forKey:@"HKSPScheduleSyncAnchor"];
  }
}

- (void)_enumerateDayOccurrencesWithBlock:(id)a3
{
  v21 = a3;
  v4 = [(HKSPSleepSchedule *)self mondayOccurrence];

  if (v4)
  {
    v5 = [(HKSPSleepSchedule *)self mondayOccurrence];
    v21[2](v21, 2, v5);
  }

  v6 = [(HKSPSleepSchedule *)self tuesdayOccurrence];

  if (v6)
  {
    v7 = [(HKSPSleepSchedule *)self tuesdayOccurrence];
    v21[2](v21, 3, v7);
  }

  v8 = [(HKSPSleepSchedule *)self wednesdayOccurrence];

  if (v8)
  {
    v9 = [(HKSPSleepSchedule *)self wednesdayOccurrence];
    v21[2](v21, 4, v9);
  }

  v10 = [(HKSPSleepSchedule *)self thursdayOccurrence];

  if (v10)
  {
    v11 = [(HKSPSleepSchedule *)self thursdayOccurrence];
    v21[2](v21, 5, v11);
  }

  v12 = [(HKSPSleepSchedule *)self fridayOccurrence];

  if (v12)
  {
    v13 = [(HKSPSleepSchedule *)self fridayOccurrence];
    v21[2](v21, 6, v13);
  }

  v14 = [(HKSPSleepSchedule *)self saturdayOccurrence];

  if (v14)
  {
    v15 = [(HKSPSleepSchedule *)self saturdayOccurrence];
    v21[2](v21, 7, v15);
  }

  v16 = [(HKSPSleepSchedule *)self sundayOccurrence];

  if (v16)
  {
    v17 = [(HKSPSleepSchedule *)self sundayOccurrence];
    v21[2](v21, 1, v17);
  }

  v18 = [(HKSPSleepSchedule *)self overrideDayOccurrence];

  v19 = v21;
  if (v18)
  {
    v20 = [(HKSPSleepSchedule *)self overrideDayOccurrence];
    v21[2](v21, 0, v20);

    v19 = v21;
  }
}

- (id)_unsortedOccurrences
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__HKSPSleepSchedule__unsortedOccurrences__block_invoke;
  v17[3] = &unk_279C74BD8;
  v6 = v3;
  v18 = v6;
  v19 = v4;
  v7 = v5;
  v20 = v7;
  v8 = v4;
  [(HKSPSleepSchedule *)self _enumerateDayOccurrencesWithBlock:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__HKSPSleepSchedule__unsortedOccurrences__block_invoke_2;
  v14[3] = &unk_279C74C00;
  v15 = v7;
  v9 = v6;
  v16 = v9;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __41__HKSPSleepSchedule__unsortedOccurrences__block_invoke(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    v6 = [v5 groupingIdentifier];
    v7 = [a1[5] objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [a1[5] setObject:v7 forKeyedSubscript:v6];
    }

    [v7 addObject:v11];
    v8 = [a1[6] objectForKeyedSubscript:v6];
    v9 = [v8 unsignedIntegerValue];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:HKSPWeekdaysFromDay(a2) | v9];
    [a1[6] setObject:v10 forKeyedSubscript:v6];
  }

  else
  {
    v6 = [v5 generateSleepScheduleOccurrenceWithWeekdays:0];
    [a1[4] addObject:v6];
  }
}

void __41__HKSPSleepSchedule__unsortedOccurrences__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 firstObject];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  v8 = [v6 generateSleepScheduleOccurrenceWithWeekdays:{objc_msgSend(v7, "unsignedIntegerValue")}];

  [*(a1 + 40) addObject:v8];
}

- (BOOL)hasOccurrences
{
  v2 = [(HKSPSleepSchedule *)self _unsortedOccurrences];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isEnabledAndHasOccurrences
{
  v3 = [(HKSPSleepSchedule *)self isEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(HKSPSleepSchedule *)self hasOccurrences];
  }

  return v3;
}

- (BOOL)meetsDefaultSleepGoal
{
  v3 = [(HKSPSleepSchedule *)self hasOccurrences];
  if (v3)
  {
    v4 = [(HKSPSleepSchedule *)self occurrences];
    v5 = [v4 na_all:&__block_literal_global_11];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isDefaultSchedule
{
  if (![(HKSPSleepSchedule *)self isEnabled])
  {
    return 0;
  }

  v3 = [(HKSPSleepSchedule *)self occurrencesOnDays:127];
  if ([v3 count] == 1 && (objc_msgSend(v3, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "weekdays"), v4, v5 == 127))
  {
    v6 = [v3 firstObject];
    v7 = [v6 usesDefaultBedtimeAndWakeUpComponents];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)occurrences
{
  v2 = [(HKSPSleepSchedule *)self _unsortedOccurrences];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_301_0];

  return v3;
}

uint64_t __32__HKSPSleepSchedule_occurrences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 isSingleDayOverride];
  if (v6 == [v4 isSingleDayOverride])
  {
    v9 = [v5 weekdays];

    v8 = HKSPCompareWeekdaysInCurrentCalendar(v9, [v4 weekdays]);
  }

  else
  {
    v7 = [v5 isSingleDayOverride];

    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (HKSPSleepScheduleOccurrence)overrideOccurrence
{
  v2 = [(HKSPSleepSchedule *)self overrideDayOccurrence];
  v3 = [v2 generateSleepScheduleOccurrenceWithWeekdays:0];

  return v3;
}

- (id)overridenOccurrenceForOverrideOccurrence:(id)a3
{
  v4 = a3;
  if ([v4 isSingleDayOverride])
  {
    v5 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v6 = [(HKSPSleepSchedule *)self occurrences];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__HKSPSleepSchedule_overridenOccurrenceForOverrideOccurrence___block_invoke;
    v10[3] = &unk_279C74C68;
    v11 = v4;
    v12 = v5;
    v7 = v5;
    v8 = [v6 na_firstObjectPassingTest:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __62__HKSPSleepSchedule_overridenOccurrenceForOverrideOccurrence___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSingleDayOverride])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) overrideAppliesToOccurrence:v3 gregorianCalendar:*(a1 + 40)];
  }

  return v4;
}

- (id)occurrencesAfterDate:(id)a3 gregorianCalendar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 calendarIdentifier];
  v10 = [v9 isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HKSPSleepSchedule.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  v11 = [(HKSPSleepSchedule *)self occurrences];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HKSPSleepSchedule_occurrencesAfterDate_gregorianCalendar___block_invoke;
  v17[3] = &unk_279C74C68;
  v18 = v8;
  v19 = v7;
  v12 = v7;
  v13 = v8;
  v14 = [v11 na_filter:v17];

  return v14;
}

uint64_t __60__HKSPSleepSchedule_occurrencesAfterDate_gregorianCalendar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSingleDayOverride])
  {
    v4 = *(a1 + 32);
    v5 = [v3 wakeUpComponents];
    v6 = [v4 dateFromComponents:v5];

    v7 = [v6 hksp_isAfterDate:*(a1 + 40)];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)mutableOccurrenceTemplate
{
  v3 = [(HKSPSleepSchedule *)self occurrences];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_314];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(HKSPSleepScheduleOccurrence);
  }

  v7 = v6;

  v8 = [[HKSPMutableSleepScheduleOccurrence alloc] initWithTemplateOccurrence:v7];
  [(HKSPMutableSleepScheduleOccurrence *)v8 setWeekdays:[(HKSPSleepSchedule *)self weekdaysWithoutOccurrences]];
  v9 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [(HKSPMutableSleepScheduleOccurrence *)v8 setBedtimeComponents:v10];
  }

  v11 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [(HKSPMutableSleepScheduleOccurrence *)v8 setWakeUpComponents:v12];
  }

  v13 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
  if ([v13 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 1;
  }

  else
  {
    v15 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
    v14 = [v15 minute] == 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
  if ([v16 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 1;
  }

  else
  {
    v18 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
    v17 = [v18 minute] == 0x7FFFFFFFFFFFFFFFLL;
  }

  [(HKSPSleepSchedule *)self sleepDurationGoal];
  v20 = v19;
  if (v14)
  {
    v21 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
    [v21 setHour:22];

    v22 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
    [v22 setMinute:30];
  }

  if (v17)
  {
    if (v20 <= 0.0)
    {
      v29 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
      [v29 setHour:7];

      v24 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
      [v24 setMinute:0];
    }

    else
    {
      v23 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
      v24 = [(HKSPSleepSchedule *)self _wakeUpComponentsByAddingSleepDurationGoalToBedtimeComponents:v23];

      v25 = [v24 hour];
      v26 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
      [v26 setHour:v25];

      v27 = [v24 minute];
      v28 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
      [v28 setMinute:v27];
    }
  }

  return v8;
}

- (id)_wakeUpComponentsByAddingSleepDurationGoalToBedtimeComponents:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 dateFromComponents:v5];

  [(HKSPSleepSchedule *)self sleepDurationGoal];
  v8 = [v7 dateByAddingTimeInterval:?];
  v9 = [v6 components:96 fromDate:v8];

  return v9;
}

- (id)occurrencesOnDays:(unint64_t)a3
{
  v4 = [(HKSPSleepSchedule *)self occurrences];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HKSPSleepSchedule_occurrencesOnDays___block_invoke;
  v7[3] = &__block_descriptor_40_e37_B16__0__HKSPSleepScheduleOccurrence_8l;
  v7[4] = a3;
  v5 = [v4 na_filter:v7];

  return v5;
}

- (id)occurrenceOnDay:(int64_t)a3
{
  v4 = [(HKSPSleepSchedule *)self occurrences];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HKSPSleepSchedule_occurrenceOnDay___block_invoke;
  v7[3] = &__block_descriptor_40_e37_B16__0__HKSPSleepScheduleOccurrence_8l;
  v7[4] = a3;
  v5 = [v4 na_firstObjectPassingTest:v7];

  return v5;
}

BOOL __37__HKSPSleepSchedule_occurrenceOnDay___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = HKSPWeekdaysFromDay(v2);
  v5 = [v3 weekdays];

  return (v5 & v4) != 0;
}

- (unint64_t)weekdaysWithOccurrences
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(HKSPSleepSchedule *)self occurrences];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 weekdays] != 0xFFFFFFFFLL)
        {
          v5 |= [v8 weekdays];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)allowableRangeForWeekdays:(unint64_t)a3
{
  v5 = HKSPDaysForWeekdays(a3);
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __47__HKSPSleepSchedule_allowableRangeForWeekdays___block_invoke;
  v42[3] = &unk_279C74CB0;
  v8 = v5;
  v43 = v8;
  v9 = v6;
  v44 = v9;
  v10 = v7;
  v45 = v10;
  HKSPWeekdaysEnumerateDays(a3, v42, 0);
  v11 = [(HKSPSleepSchedule *)self occurrencesOnDays:HKSPWeekdaysFromDays(v9)];
  v12 = [v11 na_filter:&__block_literal_global_321];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  v41 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __47__HKSPSleepSchedule_allowableRangeForWeekdays___block_invoke_322;
  v35[3] = &unk_279C74CD8;
  v35[4] = &v36;
  [v12 na_each:v35];
  v13 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v27 = v8;
  if (v37[5])
  {
    [(HKSPSleepSchedule *)self windDownTime];
    v15 = [v13 hksp_componentsByAddingTimeInterval:v37[5] toComponents:-v14];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v15 setHour:23];
    [v15 setMinute:59];
  }

  v16 = [v13 hksp_componentsByAddingTimeInterval:v15 toComponents:-60.0];
  v17 = [(HKSPSleepSchedule *)self occurrencesOnDays:HKSPWeekdaysFromDays(v10)];
  v26 = v12;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__HKSPSleepSchedule_allowableRangeForWeekdays___block_invoke_2_324;
  v28[3] = &unk_279C74CD8;
  v28[4] = &v29;
  [v17 na_each:v28];
  v18 = v11;
  if (v30[5])
  {
    [(HKSPSleepSchedule *)self windDownTime];
    v19 = [v13 hksp_componentsByAddingTimeInterval:v30[5] toComponents:?];
    v20 = [v30[5] hksp_compareHourAndMinuteComponents:v19];
    v21 = [v13 hksp_componentsByAddingTimeInterval:v19 toComponents:60.0];
    v22 = v20 != 1;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v23 setHour:0];
    [v23 setMinute:0];
    v19 = v23;
    v22 = 1;
    v21 = v19;
  }

  v24 = [[HKSPSleepScheduleRange alloc] initWithLatestWakeUpComponents:v15 latestBedtimeComponents:v16 earliestWakeUpComponents:v21 earliestBedtimeComponents:v19 earliestBedtimeIsOnPreviousDay:v22];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v36, 8);

  return v24;
}

uint64_t __47__HKSPSleepSchedule_allowableRangeForWeekdays___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 7)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (([*(a1 + 32) containsIndex:v4] & 1) == 0)
  {
    [*(a1 + 40) addIndex:v4];
  }

  if (a2 == 1)
  {
    v5 = 7;
  }

  else
  {
    v5 = a2 - 1;
  }

  result = [*(a1 + 32) containsIndex:v5];
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 48);

    return [v7 addIndex:v5];
  }

  return result;
}

void __47__HKSPSleepSchedule_allowableRangeForWeekdays___block_invoke_322(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    goto LABEL_4;
  }

  v4 = [v3 bedtimeComponents];
  v5 = [v4 hour];
  if (v5 < [*(*(*(a1 + 32) + 8) + 40) hour])
  {

    v3 = v13;
    goto LABEL_4;
  }

  v8 = [v13 bedtimeComponents];
  v9 = [v8 hour];
  if (v9 != [*(*(*(a1 + 32) + 8) + 40) hour])
  {

    goto LABEL_5;
  }

  v10 = [v13 bedtimeComponents];
  v11 = [v10 minute];
  v12 = [*(*(*(a1 + 32) + 8) + 40) minute];

  v3 = v13;
  if (v11 < v12)
  {
LABEL_4:
    v6 = [v3 bedtimeComponents];
    v7 = *(*(a1 + 32) + 8);
    v4 = *(v7 + 40);
    *(v7 + 40) = v6;
LABEL_5:

    v3 = v13;
  }
}

void __47__HKSPSleepSchedule_allowableRangeForWeekdays___block_invoke_2_324(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    goto LABEL_4;
  }

  v4 = [v3 wakeUpComponents];
  v5 = [v4 hour];
  if (v5 > [*(*(*(a1 + 32) + 8) + 40) hour])
  {

    v3 = v13;
    goto LABEL_4;
  }

  v8 = [v13 wakeUpComponents];
  v9 = [v8 hour];
  if (v9 != [*(*(*(a1 + 32) + 8) + 40) hour])
  {

    goto LABEL_5;
  }

  v10 = [v13 wakeUpComponents];
  v11 = [v10 minute];
  v12 = [*(*(*(a1 + 32) + 8) + 40) minute];

  v3 = v13;
  if (v11 > v12)
  {
LABEL_4:
    v6 = [v3 wakeUpComponents];
    v7 = *(*(a1 + 32) + 8);
    v4 = *(v7 + 40);
    *(v7 + 40) = v6;
LABEL_5:

    v3 = v13;
  }
}

- (id)allowableRangeForModifiedOccurrence:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKSPSleepSchedule *)self mutableCopy];
  if ([v6 isSingleDayOverride])
  {
    v9 = HKSPWeekdaysFromDay([v6 overrideDayInCalendar:v7]);
    v10 = v9;
  }

  else
  {
    v11 = [v6 changeSet];
    v12 = [v11 originalValueForPropertyIdentifier:@"HKSPOccurrenceWeekdays"];
    v10 = [v12 unsignedIntegerValue];

    v9 = [v6 weekdays];
  }

  [v8 _modifyDayOccurrencesForWeekdays:v10 block:&__block_literal_global_328];
  v13 = [v8 allowableRangeForWeekdays:v9];

  return v13;
}

- (double)maximumAllowableWindDown
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 1;
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HKSPSleepSchedule_maximumAllowableWindDown__block_invoke;
  v7[3] = &unk_279C74D20;
  v7[4] = self;
  v4 = v3;
  v8 = v4;
  v9 = &v13;
  v10 = v11;
  HKSPEnumerateDaysOfWeek(v7, 0);
  v5 = v14[3];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  return v5;
}

void __45__HKSPSleepSchedule_maximumAllowableWindDown__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = [*(a1 + 32) occurrenceOnDay:a2];
  if (a2 == 7)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 + 1;
  }

  v5 = [*(a1 + 32) occurrenceOnDay:v4];
  if (v18)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v10 = [v18 wakeUpComponents];
    v11 = [v10 copy];

    if ((a2 - 1) >= 7)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2;
    }

    [v11 setWeekday:v12];
    v13 = [v5 bedtimeComponents];
    v8 = [v13 copy];

    if ([v5 crossesDayBoundary])
    {
      v14 = a2;
    }

    else
    {
      v14 = v4;
    }

    if ((v14 - 1) >= 7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    [v8 setWeekday:v15];
    [*(a1 + 40) hksp_timeIntervalFromComponents:v11 toComponents:v8];
    v17 = *(*(a1 + 48) + 8);
    if (v16 >= *(v17 + 24) && *(*(*(a1 + 56) + 8) + 24) != 1)
    {
      goto LABEL_25;
    }

    *(v17 + 24) = v16;
    v7 = a1 + 56;
LABEL_24:
    *(*(*v7 + 8) + 24) = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (v18)
  {
    v7 = a1 + 56;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v11 = [v18 wakeUpComponents];
      v8 = [v18 bedtimeComponents];
      [*(a1 + 40) hksp_timeIntervalFromComponents:v11 toComponents:v8];
      *(*(*(a1 + 48) + 8) + 24) = v9;
      goto LABEL_24;
    }
  }

LABEL_26:
}

- (id)emptyCopy
{
  v2 = [(HKSPSleepSchedule *)self mutableCopy];
  v3 = [v2 occurrences];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HKSPSleepSchedule_emptyCopy__block_invoke;
  v7[3] = &unk_279C74D48;
  v8 = v2;
  v4 = v2;
  [v3 na_each:v7];

  v5 = [v4 copy];

  return v5;
}

+ (id)innerClasses
{
  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v3 = MEMORY[0x277CBEB98];
  v4 = +[HKSPSleepScheduleDayOccurrence innerClasses];
  v5 = [v3 setWithSet:v4];
  v6 = [v2 setByAddingObjectsFromSet:v5];

  return v6;
}

- (id)mutableCopy
{
  v3 = [HKSPMutableSleepSchedule alloc];

  return [(HKSPMutableSleepSchedule *)v3 initFromObject:self];
}

- (id)succinctDescription
{
  v2 = [(HKSPSleepSchedule *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HKSPSleepSchedule isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HKSPSleepSchedule *)self occurrences];
  v7 = [v5 stringWithFormat:@"%lu occurrences", objc_msgSend(v6, "count")];
  [v3 appendString:v7 withName:@"occurrences"];

  [(HKSPSleepSchedule *)self windDownTime];
  v8 = [v3 appendDouble:@"windDownTime" withName:1 decimalPrecision:?];
  [(HKSPSleepSchedule *)self sleepDurationGoal];
  v9 = [v3 appendDouble:@"sleepDurationGoal" withName:1 decimalPrecision:?];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPSleepSchedule *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v7 = [v6 appendBool:-[HKSPSleepSchedule isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v8 = [(HKSPSleepSchedule *)self occurrences];
  [v6 appendArraySection:v8 withName:@"occurrences" multilinePrefix:v5 skipIfEmpty:0];

  [(HKSPSleepSchedule *)self windDownTime];
  v9 = [v6 appendDouble:@"windDownTime" withName:1 decimalPrecision:?];
  [(HKSPSleepSchedule *)self sleepDurationGoal];
  v10 = [v6 appendDouble:@"sleepDurationGoal" withName:1 decimalPrecision:?];

  return v6;
}

@end