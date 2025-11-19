@interface PGMemoryTrigger
+ (id)dateNodesInGraph:(id)a3 startDayOffset:(int64_t)a4 endDayOffset:(int64_t)a5 fromLocalDate:(id)a6 inTimeZone:(id)a7;
+ (id)localDateIntervalFromLocalDate:(id)a3 startDayOffset:(int64_t)a4 endDayOffset:(int64_t)a5 inTimeZone:(id)a6;
+ (id)memoryTriggerResultsForMemoryNodes:(id)a3 withValidityInterval:(id)a4;
+ (id)memoryTriggerResultsForMemoryNodesArray:(id)a3 withValidityInterval:(id)a4;
+ (id)monthDayCalendarUnitValuesForLocalDateInterval:(id)a3;
+ (id)monthDayNodesInGraph:(id)a3 startDayOffset:(int64_t)a4 endDayOffset:(int64_t)a5 fromLocalDate:(id)a6 inTimeZone:(id)a7;
+ (id)singleDayValidityIntervalWithContext:(id)a3;
+ (id)stringFromTriggerType:(unint64_t)a3;
+ (id)validityIntervalForLocalStartDate:(id)a3 localEndDate:(id)a4 timeZone:(id)a5;
+ (unint64_t)triggerTypeFromString:(id)a3;
- (PGMemoryTrigger)init;
- (PGMemoryTrigger)initWithLoggingConnection:(id)a3;
- (id)relevantFeatureNodesInFeatureNodes:(id)a3;
- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5;
- (unint64_t)triggerType;
@end

@implementation PGMemoryTrigger

- (id)relevantFeatureNodesInFeatureNodes:(id)a3
{
  v5 = a3;
  v6 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (id)resultsTriggeredWithContext:(id)a3 inGraph:(id)a4 progressReporter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v12);
}

- (unint64_t)triggerType
{
  v2 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (PGMemoryTrigger)initWithLoggingConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGMemoryTrigger;
  v6 = [(PGMemoryTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, a3);
  }

  return v7;
}

- (PGMemoryTrigger)init
{
  v3 = +[PGLogging sharedLogging];
  v4 = [v3 loggingConnection];
  v5 = [(PGMemoryTrigger *)self initWithLoggingConnection:v4];

  return v5;
}

+ (id)monthDayNodesInGraph:(id)a3 startDayOffset:(int64_t)a4 endDayOffset:(int64_t)a5 fromLocalDate:(id)a6 inTimeZone:(id)a7
{
  v12 = a3;
  v13 = [a1 localDateIntervalFromLocalDate:a6 startDayOffset:a4 endDayOffset:a5 inTimeZone:a7];
  v14 = [a1 monthDayCalendarUnitValuesForLocalDateInterval:v13];
  v15 = [(PGGraphCalendarUnitNodeCollection *)PGGraphMonthDayNodeCollection calendarUnitNodesForUnitValues:v14 inGraph:v12];

  return v15;
}

+ (id)monthDayCalendarUnitValuesForLocalDateInterval:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v3 startDate];
  [v5 timeIntervalSince1970];
  v7 = v6;

  v8 = [v3 endDate];
  [v8 timeIntervalSince1970];
  v10 = v9;

  while (v7 <= v10)
  {
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
    v12 = [MEMORY[0x277D27690] dateComponentsWithLocalDate:v11];
    v13 = +[PGGraphCalendarUnitNode encodedMonthDayForMonth:day:](PGGraphCalendarUnitNode, "encodedMonthDayForMonth:day:", [v12 month], objc_msgSend(v12, "day"));
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v4 addObject:v14];

    v7 = v7 + 86400.0;
  }

  return v4;
}

+ (id)dateNodesInGraph:(id)a3 startDayOffset:(int64_t)a4 endDayOffset:(int64_t)a5 fromLocalDate:(id)a6 inTimeZone:(id)a7
{
  v12 = a3;
  v13 = [a1 localDateIntervalFromLocalDate:a6 startDayOffset:a4 endDayOffset:a5 inTimeZone:a7];
  v14 = [v12 dateNodesForLocalDateInterval:v13];

  return v14;
}

+ (id)localDateIntervalFromLocalDate:(id)a3 startDayOffset:(int64_t)a4 endDayOffset:(int64_t)a5 inTimeZone:(id)a6
{
  v9 = MEMORY[0x277D27690];
  v10 = a6;
  v11 = [v9 universalDateFromLocalDate:a3 inTimeZone:v10];
  v12 = [MEMORY[0x277D27690] dateByAddingDays:a4 toDate:v11];
  v13 = [MEMORY[0x277D27690] dateByAddingDays:a5 toDate:v11];
  v14 = [MEMORY[0x277D27690] localDateFromUniversalDate:v12 inTimeZone:v10];
  v15 = [MEMORY[0x277D27690] localDateFromUniversalDate:v13 inTimeZone:v10];

  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];

  return v16;
}

+ (id)stringFromTriggerType:(unint64_t)a3
{
  if (a3 - 1 > 0x1A)
  {
    return @"PGMemoryTriggerTypeUnknown";
  }

  else
  {
    return off_27887EC60[a3 - 1];
  }
}

+ (unint64_t)triggerTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PGMemoryTriggerTypeHoliday"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypePersonBirthday"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeFeatureCentricHoliday"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeSameDayInHistory"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeEndOfYear"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeBeginningOfMonth"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeSameWeekInHistory"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeBeginningOfSeason"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeSeasonInHistory"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentMomentWithPerson"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeThrowbackWeekInHistory"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentHolidayCelebration"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentMomentWithSocialGroup"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentTrip"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypePersonAnniversary"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentHighlights"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentSyndicatedAssets"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeUpcomingHoliday"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentMeaningfulEvent"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeUpcomingCalendarEvent"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeLastWeekend"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeLastWeek"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentBreakoutOfRoutine"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeUpcomingPersonCentricHoliday"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeUpcomingBirthday"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeUpcomingAnniversary"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"PGMemoryTriggerTypeRecentTrendsMoment"])
  {
    v4 = 27;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)memoryTriggerResultsForMemoryNodesArray:(id)a3 withValidityInterval:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [PGMemoryTriggerResult alloc];
        v15 = [(PGMemoryTriggerResult *)v14 initWithMemoryNode:v13 validityInterval:v6, v18];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)memoryTriggerResultsForMemoryNodes:(id)a3 withValidityInterval:(id)a4
{
  v6 = a4;
  v7 = [a3 array];
  v8 = [a1 memoryTriggerResultsForMemoryNodesArray:v7 withValidityInterval:v6];

  return v8;
}

+ (id)singleDayValidityIntervalWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 localDate];
  v6 = [MEMORY[0x277D27690] startOfDayForDate:v5];
  v7 = [MEMORY[0x277D27690] endOfDayForDate:v5];
  v8 = [v4 timeZone];

  v9 = [a1 validityIntervalForLocalStartDate:v6 localEndDate:v7 timeZone:v8];

  return v9;
}

+ (id)validityIntervalForLocalStartDate:(id)a3 localEndDate:(id)a4 timeZone:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PGMemoryDate alloc] initWithLocalDate:v9];

  v11 = [(PGMemoryDate *)v10 universalDateInTimeZone:v7];
  v12 = [[PGMemoryDate alloc] initWithLocalDate:v8];

  v13 = [(PGMemoryDate *)v12 universalDateInTimeZone:v7];

  v14 = [v13 laterDate:v11];
  v15 = [v14 isEqualToDate:v11];

  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v20 = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v13;
      _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[PGMemoryTrigger] Start date %@ cannot be later in time than end date %@. Setting universalEndDate = universalStartDate", &v20, 0x16u);
    }

    v16 = v11;

    v13 = v16;
  }

  v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 endDate:v13];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end