@interface SCLTimeIntervalModel
+ (SCLTimeInterval)defaultTimeInterval;
- (NSArray)constraintIntervals;
- (NSArray)timeIntervals;
- (SCLTimeIntervalModel)initWithTimeIntervals:(id)intervals;
- (id)canonicalDateIntervalForTimeInterval:(id)interval;
- (id)nextProposedTimeInterval;
- (id)scheduleTimeWithDate:(id)date;
- (void)_recalculateCanAppend;
- (void)appendTimeInterval:(id)interval;
- (void)removeTimeIntervalAtIndex:(unint64_t)index;
- (void)replaceTimeIntervalAtIndex:(unint64_t)index withTimeInterval:(id)interval;
- (void)setTimeIntervals:(id)intervals;
@end

@implementation SCLTimeIntervalModel

+ (SCLTimeInterval)defaultTimeInterval
{
  v2 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:8 minute:0];
  v3 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:15 minute:0];
  v4 = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:v2 endTime:v3];

  return v4;
}

- (SCLTimeIntervalModel)initWithTimeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  v18.receiver = self;
  v18.super_class = SCLTimeIntervalModel;
  v5 = [(SCLTimeIntervalModel *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(SCLTimeIntervalModel *)v5 setTimeIntervals:intervalsCopy];
    v7 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    calendar = v6->_calendar;
    v6->_calendar = v7;

    v9 = v6->_calendar;
    defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    [(NSCalendar *)v9 setTimeZone:defaultTimeZone];

    v11 = v6->_calendar;
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(NSCalendar *)v11 setLocale:autoupdatingCurrentLocale];

    v13 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:0 minute:0];
    v14 = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:v13 endTime:v13];
    v15 = [(SCLTimeIntervalModel *)v6 canonicalDateIntervalForTimeInterval:v14];
    canonicalDateInterval = v6->_canonicalDateInterval;
    v6->_canonicalDateInterval = v15;

    [(SCLTimeIntervalModel *)v6 _recalculateCanAppend];
  }

  return v6;
}

- (void)setTimeIntervals:(id)intervals
{
  v6 = [intervals sortedArrayUsingComparator:&__block_literal_global];
  v4 = [v6 mutableCopy];
  timeIntervals = self->_timeIntervals;
  self->_timeIntervals = v4;
}

uint64_t __41__SCLTimeIntervalModel_setTimeIntervals___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startTime];
  v6 = [v4 startTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (NSArray)timeIntervals
{
  v2 = [(NSMutableArray *)self->_timeIntervals copy];

  return v2;
}

- (NSArray)constraintIntervals
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  timeIntervals = [(SCLTimeIntervalModel *)self timeIntervals];
  if ([timeIntervals count] == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:0 minute:0];
    v6 = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:v5 endTime:v5];
    [v3 addObject:v6];
  }

  else
  {
    if ([timeIntervals count] < 2)
    {
      goto LABEL_6;
    }

    v5 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:0 minute:0];
    v7 = [timeIntervals count];
    v8 = objc_alloc(MEMORY[0x277D4B778]);
    v9 = [timeIntervals objectAtIndexedSubscript:1];
    startTime = [v9 startTime];
    v11 = [v8 initWithStartTime:v5 endTime:startTime];
    [v3 addObject:v11];

    v12 = [timeIntervals count];
    v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, v12 - 2}];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __43__SCLTimeIntervalModel_constraintIntervals__block_invoke;
    v24 = &unk_279B6F0B0;
    v14 = timeIntervals;
    v25 = v14;
    v15 = v3;
    v26 = v15;
    [v14 enumerateObjectsAtIndexes:v13 options:0 usingBlock:&v21];

    v16 = objc_alloc(MEMORY[0x277D4B778]);
    v17 = [v14 objectAtIndexedSubscript:{v7 - 2, v21, v22, v23, v24}];
    endTime = [v17 endTime];
    v19 = [v16 initWithStartTime:endTime endTime:v5];
    [v15 addObject:v19];
  }

LABEL_6:

  return v3;
}

void __43__SCLTimeIntervalModel_constraintIntervals__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3 - 1];
  v10 = [v5 endTime];

  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  v7 = [v6 startTime];

  v8 = *(a1 + 40);
  v9 = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:v10 endTime:v7];
  [v8 addObject:v9];
}

- (id)canonicalDateIntervalForTimeInterval:(id)interval
{
  intervalCopy = interval;
  startTime = [intervalCopy startTime];
  endTime = [intervalCopy endTime];
  v7 = -[NSCalendar dateWithEra:year:month:day:hour:minute:second:nanosecond:](self->_calendar, "dateWithEra:year:month:day:hour:minute:second:nanosecond:", 1, 2019, 1, 1, [startTime hour], objc_msgSend(startTime, "minute"), 0, 0);
  if ([startTime isEqual:endTime] & 1) != 0 || (objc_msgSend(intervalCopy, "crossesDayBoundary"))
  {
    goto LABEL_3;
  }

  endTime2 = [intervalCopy endTime];
  if ([endTime2 hour])
  {
  }

  else
  {
    endTime3 = [intervalCopy endTime];
    minute = [endTime3 minute];

    if (!minute)
    {
LABEL_3:
      v8 = 2;
      goto LABEL_8;
    }
  }

  v8 = 1;
LABEL_8:
  v12 = -[NSCalendar dateWithEra:year:month:day:hour:minute:second:nanosecond:](self->_calendar, "dateWithEra:year:month:day:hour:minute:second:nanosecond:", 1, 2019, 1, v8, [endTime hour], objc_msgSend(endTime, "minute"), 0, 0);
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v12];

  return v13;
}

- (id)scheduleTimeWithDate:(id)date
{
  v6 = 0;
  v7 = 0;
  [(NSCalendar *)self->_calendar getHour:&v7 minute:&v6 second:0 nanosecond:0 fromDate:date];
  v3 = objc_alloc(MEMORY[0x277D4B758]);
  v4 = [v3 initWithHour:v7 minute:v6];

  return v4;
}

- (id)nextProposedTimeInterval
{
  lastObject = [(NSMutableArray *)self->_timeIntervals lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    if ([lastObject crossesDayBoundary])
    {
      defaultTimeInterval = 0;
    }

    else
    {
      endTime = [v3 endTime];
      hour = [endTime hour];

      if ((hour + 1) > 0x17)
      {
        endTime2 = [v3 endTime];
        v8 = objc_alloc(MEMORY[0x277D4B758]);
        v9 = 0;
      }

      else
      {
        endTime2 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:hour + 1 minute:0];
        v8 = objc_alloc(MEMORY[0x277D4B758]);
        if ((hour + 2) >= 0x18)
        {
          v9 = hour - 22;
        }

        else
        {
          v9 = hour + 2;
        }
      }

      v10 = [v8 initWithHour:v9 minute:0];
      defaultTimeInterval = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:endTime2 endTime:v10];
    }
  }

  else
  {
    defaultTimeInterval = [objc_opt_class() defaultTimeInterval];
  }

  return defaultTimeInterval;
}

- (void)removeTimeIntervalAtIndex:(unint64_t)index
{
  if ([(SCLTimeIntervalModel *)self canRemoveTimeIntervals])
  {
    [(NSMutableArray *)self->_timeIntervals removeObjectAtIndex:index];

    [(SCLTimeIntervalModel *)self _recalculateCanAppend];
  }

  else
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];

    [v5 raise:v6 format:@"Cannot remove the last time interval from the interval mode."];
  }
}

- (void)appendTimeInterval:(id)interval
{
  intervalCopy = interval;
  lastObject = [(NSMutableArray *)self->_timeIntervals lastObject];
  v5 = lastObject;
  if (lastObject && ([lastObject endTime], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(intervalCopy, "startTime"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compare:", v7), v7, v6, v8 == 1))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Cannot append %@ because it starts before the end time of %@", intervalCopy, v5}];
  }

  else
  {
    [(NSMutableArray *)self->_timeIntervals addObject:intervalCopy];
    [(SCLTimeIntervalModel *)self _recalculateCanAppend];
  }
}

- (void)replaceTimeIntervalAtIndex:(unint64_t)index withTimeInterval:(id)interval
{
  intervalCopy = interval;
  if (index)
  {
    v6 = [(NSMutableArray *)self->_timeIntervals objectAtIndex:index - 1];
    endTime = [v6 endTime];
    startTime = [intervalCopy startTime];
    v9 = [endTime compare:startTime];

    if (v9 == 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Cannot append %@ because it starts before the end time of %@", intervalCopy, v6}];
LABEL_8:

      goto LABEL_11;
    }
  }

  if (index + 2 < [(NSMutableArray *)self->_timeIntervals count])
  {
    v6 = [(NSMutableArray *)self->_timeIntervals objectAtIndex:index + 1];
    endTime2 = [intervalCopy endTime];
    startTime2 = [v6 startTime];
    v12 = [endTime2 compare:startTime2];

    if (v12 == 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Cannot append %@ because it ends after the start time time of %@", intervalCopy, v6}];
      goto LABEL_8;
    }
  }

  [(NSMutableArray *)self->_timeIntervals replaceObjectAtIndex:index withObject:intervalCopy];
  [(SCLTimeIntervalModel *)self _recalculateCanAppend];
LABEL_11:
}

- (void)_recalculateCanAppend
{
  v6 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:0 minute:0];
  lastObject = [(NSMutableArray *)self->_timeIntervals lastObject];
  endTime = [lastObject endTime];
  v5 = [endTime isEqual:v6];

  [(SCLTimeIntervalModel *)self setCanAppendTimeInterval:v5 ^ 1u];
}

@end