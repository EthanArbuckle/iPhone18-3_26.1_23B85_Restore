@interface SCLSchedule
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isScheduledForDay:(int64_t)day;
- (BOOL)isValid;
- (NSArray)uniformTimeIntervals;
- (SCLSchedule)initWithCoder:(id)coder;
- (id)endTimeForDay:(int64_t)day;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)recurrencesForDay:(int64_t)day;
- (id)startTimeForDay:(int64_t)day;
- (id)timeIntervalsForDay:(int64_t)day;
- (int64_t)scheduledDays;
- (unint64_t)hash;
@end

@implementation SCLSchedule

- (SCLSchedule)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCLSchedule;
  return [(SCLSchedule *)&v4 init];
}

- (id)startTimeForDay:(int64_t)day
{
  v3 = [(SCLSchedule *)self recurrencesForDay:day];
  firstObject = [v3 firstObject];
  timeInterval = [firstObject timeInterval];
  startTime = [timeInterval startTime];

  return startTime;
}

- (id)endTimeForDay:(int64_t)day
{
  v3 = [(SCLSchedule *)self recurrencesForDay:day];
  lastObject = [v3 lastObject];
  timeInterval = [lastObject timeInterval];
  endTime = [timeInterval endTime];

  return endTime;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"%@ should be implemented by a concrete subclass of %@", v5, objc_opt_class()}];

  return self;
}

- (BOOL)isEmpty
{
  recurrences = [(SCLSchedule *)self recurrences];
  v3 = [recurrences count] == 0;

  return v3;
}

- (unint64_t)hash
{
  recurrences = [(SCLSchedule *)self recurrences];
  v3 = [recurrences hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (int64_t)scheduledDays
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  recurrences = [(SCLSchedule *)self recurrences];
  v3 = [recurrences countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(recurrences);
        }

        v5 |= SCLRepeatScheduleForDay([*(*(&v10 + 1) + 8 * i) day]);
      }

      v4 = [recurrences countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isScheduledForDay:(int64_t)day
{
  scheduledDays = [(SCLSchedule *)self scheduledDays];

  return SCLRepeatScheduleContainsDay(scheduledDays, day);
}

- (BOOL)isValid
{
  v2 = [[SCLScheduleAttributes alloc] initWithSchedule:self];
  isValid = [(SCLScheduleAttributes *)v2 isValid];

  return isValid;
}

- (id)recurrencesForDay:(int64_t)day
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__SCLSchedule_recurrencesForDay___block_invoke;
  v8[3] = &__block_descriptor_40_e48_B24__0__SCLScheduleRecurrence_8__NSDictionary_16l;
  v8[4] = day;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v8];
  recurrences = [(SCLSchedule *)self recurrences];
  v6 = [recurrences filteredArrayUsingPredicate:v4];

  return v6;
}

- (NSArray)uniformTimeIntervals
{
  scheduledDays = [(SCLSchedule *)self scheduledDays];
  if (scheduledDays)
  {
    v4 = scheduledDays;
    v5 = [MEMORY[0x277CBEB58] set];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __48__SCLSchedule_Convenience__uniformTimeIntervals__block_invoke;
    v12 = &unk_279B6C200;
    selfCopy = self;
    v6 = v5;
    v14 = v6;
    SCLEnumerateDaysInRepeatSchedule(v4, &v9);
    if ([v6 count] == 1)
    {
      anyObject = [v6 anyObject];
    }

    else
    {
      anyObject = 0;
    }
  }

  else
  {
    anyObject = MEMORY[0x277CBEBF8];
  }

  return anyObject;
}

void __48__SCLSchedule_Convenience__uniformTimeIntervals__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) timeIntervalsForDay:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)timeIntervalsForDay:(int64_t)day
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(SCLSchedule *)self recurrencesForDay:day];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        timeInterval = [*(*(&v14 + 1) + 8 * i) timeInterval];
        [v5 addObject:timeInterval];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

@end