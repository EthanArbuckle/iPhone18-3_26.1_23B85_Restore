@interface HKSPSleepSchedule
+ (id)emptyScheduleWithSyncAnchor:(id)anchor;
+ (id)innerClasses;
- (BOOL)hasOccurrences;
- (BOOL)isDefaultSchedule;
- (BOOL)isEnabledAndHasOccurrences;
- (BOOL)meetsDefaultSleepGoal;
- (HKSPSleepSchedule)init;
- (HKSPSleepSchedule)initWithCoder:(id)coder;
- (HKSPSleepScheduleOccurrence)overrideOccurrence;
- (NSArray)occurrences;
- (double)maximumAllowableWindDown;
- (id)_unsortedOccurrences;
- (id)_wakeUpComponentsByAddingSleepDurationGoalToBedtimeComponents:(id)components;
- (id)allowableRangeForModifiedOccurrence:(id)occurrence gregorianCalendar:(id)calendar;
- (id)allowableRangeForWeekdays:(unint64_t)weekdays;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)emptyCopy;
- (id)initFromObject:(id)object;
- (id)mutableCopy;
- (id)mutableOccurrenceTemplate;
- (id)objectWithSyncAnchor:(id)anchor;
- (id)occurrenceOnDay:(int64_t)day;
- (id)occurrencesAfterDate:(id)date gregorianCalendar:(id)calendar;
- (id)occurrencesOnDays:(unint64_t)days;
- (id)overridenOccurrenceForOverrideOccurrence:(id)occurrence;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)weekdaysWithOccurrences;
- (void)_enumerateDayOccurrencesWithBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
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

- (id)initFromObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    v6 = [(HKSPSleepSchedule *)self init];
    HKSPCopyFromObject(v5, v6);
    syncAnchor = [v5 syncAnchor];

    v8 = [syncAnchor copyWithZone:0];
    syncAnchor = v6->_syncAnchor;
    v6->_syncAnchor = v8;

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)objectWithSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [objc_alloc(objc_opt_class()) initFromObject:self];
  v6 = [anchorCopy copyWithZone:0];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

+ (id)emptyScheduleWithSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  v4 = objc_alloc_init(_HKSPEmptySleepSchedule);
  v5 = [(HKSPSleepSchedule *)v4 objectWithSyncAnchor:anchorCopy];

  return v5;
}

- (HKSPSleepSchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKSPSleepSchedule;
  v5 = [(HKSPSleepSchedule *)&v11 init];
  v6 = v5;
  if (v5)
  {
    HKSPDecodeObjectWithCoder(v5, coderCopy);
    if (([coderCopy hksp_serializationOptions] & 1) == 0)
    {
      v7 = [coderCopy decodeObjectOfClass:HKSPSyncAnchorClass() forKey:@"HKSPScheduleSyncAnchor"];
      syncAnchor = v6->_syncAnchor;
      v6->_syncAnchor = v7;
    }

    v9 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  HKSPEncodeObjectWithCoder(self, coderCopy);
  if (([coderCopy hksp_serializationOptions] & 1) == 0)
  {
    [coderCopy encodeObject:self->_syncAnchor forKey:@"HKSPScheduleSyncAnchor"];
  }
}

- (void)_enumerateDayOccurrencesWithBlock:(id)block
{
  blockCopy = block;
  mondayOccurrence = [(HKSPSleepSchedule *)self mondayOccurrence];

  if (mondayOccurrence)
  {
    mondayOccurrence2 = [(HKSPSleepSchedule *)self mondayOccurrence];
    blockCopy[2](blockCopy, 2, mondayOccurrence2);
  }

  tuesdayOccurrence = [(HKSPSleepSchedule *)self tuesdayOccurrence];

  if (tuesdayOccurrence)
  {
    tuesdayOccurrence2 = [(HKSPSleepSchedule *)self tuesdayOccurrence];
    blockCopy[2](blockCopy, 3, tuesdayOccurrence2);
  }

  wednesdayOccurrence = [(HKSPSleepSchedule *)self wednesdayOccurrence];

  if (wednesdayOccurrence)
  {
    wednesdayOccurrence2 = [(HKSPSleepSchedule *)self wednesdayOccurrence];
    blockCopy[2](blockCopy, 4, wednesdayOccurrence2);
  }

  thursdayOccurrence = [(HKSPSleepSchedule *)self thursdayOccurrence];

  if (thursdayOccurrence)
  {
    thursdayOccurrence2 = [(HKSPSleepSchedule *)self thursdayOccurrence];
    blockCopy[2](blockCopy, 5, thursdayOccurrence2);
  }

  fridayOccurrence = [(HKSPSleepSchedule *)self fridayOccurrence];

  if (fridayOccurrence)
  {
    fridayOccurrence2 = [(HKSPSleepSchedule *)self fridayOccurrence];
    blockCopy[2](blockCopy, 6, fridayOccurrence2);
  }

  saturdayOccurrence = [(HKSPSleepSchedule *)self saturdayOccurrence];

  if (saturdayOccurrence)
  {
    saturdayOccurrence2 = [(HKSPSleepSchedule *)self saturdayOccurrence];
    blockCopy[2](blockCopy, 7, saturdayOccurrence2);
  }

  sundayOccurrence = [(HKSPSleepSchedule *)self sundayOccurrence];

  if (sundayOccurrence)
  {
    sundayOccurrence2 = [(HKSPSleepSchedule *)self sundayOccurrence];
    blockCopy[2](blockCopy, 1, sundayOccurrence2);
  }

  overrideDayOccurrence = [(HKSPSleepSchedule *)self overrideDayOccurrence];

  v19 = blockCopy;
  if (overrideDayOccurrence)
  {
    overrideDayOccurrence2 = [(HKSPSleepSchedule *)self overrideDayOccurrence];
    blockCopy[2](blockCopy, 0, overrideDayOccurrence2);

    v19 = blockCopy;
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
  _unsortedOccurrences = [(HKSPSleepSchedule *)self _unsortedOccurrences];
  v3 = [_unsortedOccurrences count] != 0;

  return v3;
}

- (BOOL)isEnabledAndHasOccurrences
{
  isEnabled = [(HKSPSleepSchedule *)self isEnabled];
  if (isEnabled)
  {

    LOBYTE(isEnabled) = [(HKSPSleepSchedule *)self hasOccurrences];
  }

  return isEnabled;
}

- (BOOL)meetsDefaultSleepGoal
{
  hasOccurrences = [(HKSPSleepSchedule *)self hasOccurrences];
  if (hasOccurrences)
  {
    occurrences = [(HKSPSleepSchedule *)self occurrences];
    v5 = [occurrences na_all:&__block_literal_global_11];

    LOBYTE(hasOccurrences) = v5;
  }

  return hasOccurrences;
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
    firstObject = [v3 firstObject];
    usesDefaultBedtimeAndWakeUpComponents = [firstObject usesDefaultBedtimeAndWakeUpComponents];
  }

  else
  {
    usesDefaultBedtimeAndWakeUpComponents = 0;
  }

  return usesDefaultBedtimeAndWakeUpComponents;
}

- (NSArray)occurrences
{
  _unsortedOccurrences = [(HKSPSleepSchedule *)self _unsortedOccurrences];
  v3 = [_unsortedOccurrences sortedArrayUsingComparator:&__block_literal_global_301_0];

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
  overrideDayOccurrence = [(HKSPSleepSchedule *)self overrideDayOccurrence];
  v3 = [overrideDayOccurrence generateSleepScheduleOccurrenceWithWeekdays:0];

  return v3;
}

- (id)overridenOccurrenceForOverrideOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if ([occurrenceCopy isSingleDayOverride])
  {
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    occurrences = [(HKSPSleepSchedule *)self occurrences];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__HKSPSleepSchedule_overridenOccurrenceForOverrideOccurrence___block_invoke;
    v10[3] = &unk_279C74C68;
    v11 = occurrenceCopy;
    v12 = hk_gregorianCalendar;
    v7 = hk_gregorianCalendar;
    v8 = [occurrences na_firstObjectPassingTest:v10];
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

- (id)occurrencesAfterDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  calendarIdentifier = [calendarCopy calendarIdentifier];
  v10 = [calendarIdentifier isEqualToString:*MEMORY[0x277CBE5C0]];

  if ((v10 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepSchedule.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"[[gregorianCalendar calendarIdentifier] isEqualToString:NSCalendarIdentifierGregorian]"}];
  }

  occurrences = [(HKSPSleepSchedule *)self occurrences];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HKSPSleepSchedule_occurrencesAfterDate_gregorianCalendar___block_invoke;
  v17[3] = &unk_279C74C68;
  v18 = calendarCopy;
  v19 = dateCopy;
  v12 = dateCopy;
  v13 = calendarCopy;
  v14 = [occurrences na_filter:v17];

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
  occurrences = [(HKSPSleepSchedule *)self occurrences];
  v4 = [occurrences na_firstObjectPassingTest:&__block_literal_global_314];
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
  bedtimeComponents = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];

  if (!bedtimeComponents)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [(HKSPMutableSleepScheduleOccurrence *)v8 setBedtimeComponents:v10];
  }

  wakeUpComponents = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];

  if (!wakeUpComponents)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [(HKSPMutableSleepScheduleOccurrence *)v8 setWakeUpComponents:v12];
  }

  bedtimeComponents2 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
  if ([bedtimeComponents2 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 1;
  }

  else
  {
    bedtimeComponents3 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
    v14 = [bedtimeComponents3 minute] == 0x7FFFFFFFFFFFFFFFLL;
  }

  wakeUpComponents2 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
  if ([wakeUpComponents2 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 1;
  }

  else
  {
    wakeUpComponents3 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
    v17 = [wakeUpComponents3 minute] == 0x7FFFFFFFFFFFFFFFLL;
  }

  [(HKSPSleepSchedule *)self sleepDurationGoal];
  v20 = v19;
  if (v14)
  {
    bedtimeComponents4 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
    [bedtimeComponents4 setHour:22];

    bedtimeComponents5 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
    [bedtimeComponents5 setMinute:30];
  }

  if (v17)
  {
    if (v20 <= 0.0)
    {
      wakeUpComponents4 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
      [wakeUpComponents4 setHour:7];

      wakeUpComponents5 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
      [wakeUpComponents5 setMinute:0];
    }

    else
    {
      bedtimeComponents6 = [(HKSPSleepScheduleOccurrence *)v8 bedtimeComponents];
      wakeUpComponents5 = [(HKSPSleepSchedule *)self _wakeUpComponentsByAddingSleepDurationGoalToBedtimeComponents:bedtimeComponents6];

      hour = [wakeUpComponents5 hour];
      wakeUpComponents6 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
      [wakeUpComponents6 setHour:hour];

      minute = [wakeUpComponents5 minute];
      wakeUpComponents7 = [(HKSPSleepScheduleOccurrence *)v8 wakeUpComponents];
      [wakeUpComponents7 setMinute:minute];
    }
  }

  return v8;
}

- (id)_wakeUpComponentsByAddingSleepDurationGoalToBedtimeComponents:(id)components
{
  v4 = MEMORY[0x277CBEA80];
  componentsCopy = components;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar dateFromComponents:componentsCopy];

  [(HKSPSleepSchedule *)self sleepDurationGoal];
  v8 = [v7 dateByAddingTimeInterval:?];
  v9 = [currentCalendar components:96 fromDate:v8];

  return v9;
}

- (id)occurrencesOnDays:(unint64_t)days
{
  occurrences = [(HKSPSleepSchedule *)self occurrences];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HKSPSleepSchedule_occurrencesOnDays___block_invoke;
  v7[3] = &__block_descriptor_40_e37_B16__0__HKSPSleepScheduleOccurrence_8l;
  v7[4] = days;
  v5 = [occurrences na_filter:v7];

  return v5;
}

- (id)occurrenceOnDay:(int64_t)day
{
  occurrences = [(HKSPSleepSchedule *)self occurrences];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HKSPSleepSchedule_occurrenceOnDay___block_invoke;
  v7[3] = &__block_descriptor_40_e37_B16__0__HKSPSleepScheduleOccurrence_8l;
  v7[4] = day;
  v5 = [occurrences na_firstObjectPassingTest:v7];

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
  occurrences = [(HKSPSleepSchedule *)self occurrences];
  v3 = [occurrences countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(occurrences);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 weekdays] != 0xFFFFFFFFLL)
        {
          v5 |= [v8 weekdays];
        }
      }

      v4 = [occurrences countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)allowableRangeForWeekdays:(unint64_t)weekdays
{
  v5 = HKSPDaysForWeekdays(weekdays);
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
  HKSPWeekdaysEnumerateDays(weekdays, v42, 0);
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
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v27 = v8;
  if (v37[5])
  {
    [(HKSPSleepSchedule *)self windDownTime];
    v15 = [hk_gregorianCalendar hksp_componentsByAddingTimeInterval:v37[5] toComponents:-v14];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v15 setHour:23];
    [v15 setMinute:59];
  }

  v16 = [hk_gregorianCalendar hksp_componentsByAddingTimeInterval:v15 toComponents:-60.0];
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
    v19 = [hk_gregorianCalendar hksp_componentsByAddingTimeInterval:v30[5] toComponents:?];
    v20 = [v30[5] hksp_compareHourAndMinuteComponents:v19];
    v21 = [hk_gregorianCalendar hksp_componentsByAddingTimeInterval:v19 toComponents:60.0];
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

- (id)allowableRangeForModifiedOccurrence:(id)occurrence gregorianCalendar:(id)calendar
{
  occurrenceCopy = occurrence;
  calendarCopy = calendar;
  v8 = [(HKSPSleepSchedule *)self mutableCopy];
  if ([occurrenceCopy isSingleDayOverride])
  {
    weekdays = HKSPWeekdaysFromDay([occurrenceCopy overrideDayInCalendar:calendarCopy]);
    unsignedIntegerValue = weekdays;
  }

  else
  {
    changeSet = [occurrenceCopy changeSet];
    v12 = [changeSet originalValueForPropertyIdentifier:@"HKSPOccurrenceWeekdays"];
    unsignedIntegerValue = [v12 unsignedIntegerValue];

    weekdays = [occurrenceCopy weekdays];
  }

  [v8 _modifyDayOccurrencesForWeekdays:unsignedIntegerValue block:&__block_literal_global_328];
  v13 = [v8 allowableRangeForWeekdays:weekdays];

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
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HKSPSleepSchedule_maximumAllowableWindDown__block_invoke;
  v7[3] = &unk_279C74D20;
  v7[4] = self;
  v4 = hk_gregorianCalendar;
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
  occurrences = [v2 occurrences];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HKSPSleepSchedule_emptyCopy__block_invoke;
  v7[3] = &unk_279C74D48;
  v8 = v2;
  v4 = v2;
  [occurrences na_each:v7];

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
  succinctDescriptionBuilder = [(HKSPSleepSchedule *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HKSPSleepSchedule isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v5 = MEMORY[0x277CCACA8];
  occurrences = [(HKSPSleepSchedule *)self occurrences];
  v7 = [v5 stringWithFormat:@"%lu occurrences", objc_msgSend(occurrences, "count")];
  [v3 appendString:v7 withName:@"occurrences"];

  [(HKSPSleepSchedule *)self windDownTime];
  v8 = [v3 appendDouble:@"windDownTime" withName:1 decimalPrecision:?];
  [(HKSPSleepSchedule *)self sleepDurationGoal];
  v9 = [v3 appendDouble:@"sleepDurationGoal" withName:1 decimalPrecision:?];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPSleepSchedule *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v7 = [v6 appendBool:-[HKSPSleepSchedule isEnabled](self withName:{"isEnabled"), @"enabled"}];
  occurrences = [(HKSPSleepSchedule *)self occurrences];
  [v6 appendArraySection:occurrences withName:@"occurrences" multilinePrefix:prefixCopy skipIfEmpty:0];

  [(HKSPSleepSchedule *)self windDownTime];
  v9 = [v6 appendDouble:@"windDownTime" withName:1 decimalPrecision:?];
  [(HKSPSleepSchedule *)self sleepDurationGoal];
  v10 = [v6 appendDouble:@"sleepDurationGoal" withName:1 decimalPrecision:?];

  return v6;
}

@end