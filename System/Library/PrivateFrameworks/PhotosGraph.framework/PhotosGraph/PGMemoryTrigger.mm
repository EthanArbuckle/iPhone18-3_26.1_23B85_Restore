@interface PGMemoryTrigger
+ (id)dateNodesInGraph:(id)graph startDayOffset:(int64_t)offset endDayOffset:(int64_t)dayOffset fromLocalDate:(id)date inTimeZone:(id)zone;
+ (id)localDateIntervalFromLocalDate:(id)date startDayOffset:(int64_t)offset endDayOffset:(int64_t)dayOffset inTimeZone:(id)zone;
+ (id)memoryTriggerResultsForMemoryNodes:(id)nodes withValidityInterval:(id)interval;
+ (id)memoryTriggerResultsForMemoryNodesArray:(id)array withValidityInterval:(id)interval;
+ (id)monthDayCalendarUnitValuesForLocalDateInterval:(id)interval;
+ (id)monthDayNodesInGraph:(id)graph startDayOffset:(int64_t)offset endDayOffset:(int64_t)dayOffset fromLocalDate:(id)date inTimeZone:(id)zone;
+ (id)singleDayValidityIntervalWithContext:(id)context;
+ (id)stringFromTriggerType:(unint64_t)type;
+ (id)validityIntervalForLocalStartDate:(id)date localEndDate:(id)endDate timeZone:(id)zone;
+ (unint64_t)triggerTypeFromString:(id)string;
- (PGMemoryTrigger)init;
- (PGMemoryTrigger)initWithLoggingConnection:(id)connection;
- (id)relevantFeatureNodesInFeatureNodes:(id)nodes;
- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter;
- (unint64_t)triggerType;
@end

@implementation PGMemoryTrigger

- (id)relevantFeatureNodesInFeatureNodes:(id)nodes
{
  nodesCopy = nodes;
  v6 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (id)resultsTriggeredWithContext:(id)context inGraph:(id)graph progressReporter:(id)reporter
{
  contextCopy = context;
  graphCopy = graph;
  reporterCopy = reporter;
  v12 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v12);
}

- (unint64_t)triggerType
{
  v2 = PGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (PGMemoryTrigger)initWithLoggingConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PGMemoryTrigger;
  v6 = [(PGMemoryTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, connection);
  }

  return v7;
}

- (PGMemoryTrigger)init
{
  v3 = +[PGLogging sharedLogging];
  loggingConnection = [v3 loggingConnection];
  v5 = [(PGMemoryTrigger *)self initWithLoggingConnection:loggingConnection];

  return v5;
}

+ (id)monthDayNodesInGraph:(id)graph startDayOffset:(int64_t)offset endDayOffset:(int64_t)dayOffset fromLocalDate:(id)date inTimeZone:(id)zone
{
  graphCopy = graph;
  v13 = [self localDateIntervalFromLocalDate:date startDayOffset:offset endDayOffset:dayOffset inTimeZone:zone];
  v14 = [self monthDayCalendarUnitValuesForLocalDateInterval:v13];
  v15 = [(PGGraphCalendarUnitNodeCollection *)PGGraphMonthDayNodeCollection calendarUnitNodesForUnitValues:v14 inGraph:graphCopy];

  return v15;
}

+ (id)monthDayCalendarUnitValuesForLocalDateInterval:(id)interval
{
  intervalCopy = interval;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v7 = v6;

  endDate = [intervalCopy endDate];
  [endDate timeIntervalSince1970];
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

+ (id)dateNodesInGraph:(id)graph startDayOffset:(int64_t)offset endDayOffset:(int64_t)dayOffset fromLocalDate:(id)date inTimeZone:(id)zone
{
  graphCopy = graph;
  v13 = [self localDateIntervalFromLocalDate:date startDayOffset:offset endDayOffset:dayOffset inTimeZone:zone];
  v14 = [graphCopy dateNodesForLocalDateInterval:v13];

  return v14;
}

+ (id)localDateIntervalFromLocalDate:(id)date startDayOffset:(int64_t)offset endDayOffset:(int64_t)dayOffset inTimeZone:(id)zone
{
  v9 = MEMORY[0x277D27690];
  zoneCopy = zone;
  v11 = [v9 universalDateFromLocalDate:date inTimeZone:zoneCopy];
  v12 = [MEMORY[0x277D27690] dateByAddingDays:offset toDate:v11];
  v13 = [MEMORY[0x277D27690] dateByAddingDays:dayOffset toDate:v11];
  v14 = [MEMORY[0x277D27690] localDateFromUniversalDate:v12 inTimeZone:zoneCopy];
  v15 = [MEMORY[0x277D27690] localDateFromUniversalDate:v13 inTimeZone:zoneCopy];

  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];

  return v16;
}

+ (id)stringFromTriggerType:(unint64_t)type
{
  if (type - 1 > 0x1A)
  {
    return @"PGMemoryTriggerTypeUnknown";
  }

  else
  {
    return off_27887EC60[type - 1];
  }
}

+ (unint64_t)triggerTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeHoliday"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypePersonBirthday"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeFeatureCentricHoliday"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeSameDayInHistory"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeEndOfYear"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeBeginningOfMonth"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeSameWeekInHistory"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeBeginningOfSeason"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeSeasonInHistory"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentMomentWithPerson"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeThrowbackWeekInHistory"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentHolidayCelebration"])
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentMomentWithSocialGroup"])
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentTrip"])
  {
    v4 = 14;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypePersonAnniversary"])
  {
    v4 = 15;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentHighlights"])
  {
    v4 = 16;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentSyndicatedAssets"])
  {
    v4 = 18;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeUpcomingHoliday"])
  {
    v4 = 17;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentMeaningfulEvent"])
  {
    v4 = 19;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeUpcomingCalendarEvent"])
  {
    v4 = 26;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeLastWeekend"])
  {
    v4 = 20;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeLastWeek"])
  {
    v4 = 21;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentBreakoutOfRoutine"])
  {
    v4 = 22;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeUpcomingPersonCentricHoliday"])
  {
    v4 = 23;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeUpcomingBirthday"])
  {
    v4 = 24;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeUpcomingAnniversary"])
  {
    v4 = 25;
  }

  else if ([stringCopy isEqualToString:@"PGMemoryTriggerTypeRecentTrendsMoment"])
  {
    v4 = 27;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)memoryTriggerResultsForMemoryNodesArray:(id)array withValidityInterval:(id)interval
{
  v23 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  intervalCopy = interval;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = arrayCopy;
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
        v15 = [(PGMemoryTriggerResult *)v14 initWithMemoryNode:v13 validityInterval:intervalCopy, v18];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)memoryTriggerResultsForMemoryNodes:(id)nodes withValidityInterval:(id)interval
{
  intervalCopy = interval;
  array = [nodes array];
  v8 = [self memoryTriggerResultsForMemoryNodesArray:array withValidityInterval:intervalCopy];

  return v8;
}

+ (id)singleDayValidityIntervalWithContext:(id)context
{
  contextCopy = context;
  localDate = [contextCopy localDate];
  v6 = [MEMORY[0x277D27690] startOfDayForDate:localDate];
  v7 = [MEMORY[0x277D27690] endOfDayForDate:localDate];
  timeZone = [contextCopy timeZone];

  v9 = [self validityIntervalForLocalStartDate:v6 localEndDate:v7 timeZone:timeZone];

  return v9;
}

+ (id)validityIntervalForLocalStartDate:(id)date localEndDate:(id)endDate timeZone:(id)zone
{
  v24 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  endDateCopy = endDate;
  dateCopy = date;
  v10 = [[PGMemoryDate alloc] initWithLocalDate:dateCopy];

  v11 = [(PGMemoryDate *)v10 universalDateInTimeZone:zoneCopy];
  v12 = [[PGMemoryDate alloc] initWithLocalDate:endDateCopy];

  v13 = [(PGMemoryDate *)v12 universalDateInTimeZone:zoneCopy];

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