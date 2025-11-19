@interface SCLTimeIntervalModel
+ (SCLTimeInterval)defaultTimeInterval;
- (NSArray)constraintIntervals;
- (NSArray)timeIntervals;
- (SCLTimeIntervalModel)initWithTimeIntervals:(id)a3;
- (id)canonicalDateIntervalForTimeInterval:(id)a3;
- (id)nextProposedTimeInterval;
- (id)scheduleTimeWithDate:(id)a3;
- (void)_recalculateCanAppend;
- (void)appendTimeInterval:(id)a3;
- (void)removeTimeIntervalAtIndex:(unint64_t)a3;
- (void)replaceTimeIntervalAtIndex:(unint64_t)a3 withTimeInterval:(id)a4;
- (void)setTimeIntervals:(id)a3;
@end

@implementation SCLTimeIntervalModel

+ (SCLTimeInterval)defaultTimeInterval
{
  v2 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:8 minute:0];
  v3 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:15 minute:0];
  v4 = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:v2 endTime:v3];

  return v4;
}

- (SCLTimeIntervalModel)initWithTimeIntervals:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SCLTimeIntervalModel;
  v5 = [(SCLTimeIntervalModel *)&v18 init];
  v6 = v5;
  if (v5)
  {
    [(SCLTimeIntervalModel *)v5 setTimeIntervals:v4];
    v7 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    calendar = v6->_calendar;
    v6->_calendar = v7;

    v9 = v6->_calendar;
    v10 = [MEMORY[0x277CBEBB0] defaultTimeZone];
    [(NSCalendar *)v9 setTimeZone:v10];

    v11 = v6->_calendar;
    v12 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    [(NSCalendar *)v11 setLocale:v12];

    v13 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:0 minute:0];
    v14 = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:v13 endTime:v13];
    v15 = [(SCLTimeIntervalModel *)v6 canonicalDateIntervalForTimeInterval:v14];
    canonicalDateInterval = v6->_canonicalDateInterval;
    v6->_canonicalDateInterval = v15;

    [(SCLTimeIntervalModel *)v6 _recalculateCanAppend];
  }

  return v6;
}

- (void)setTimeIntervals:(id)a3
{
  v6 = [a3 sortedArrayUsingComparator:&__block_literal_global];
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
  v4 = [(SCLTimeIntervalModel *)self timeIntervals];
  if ([v4 count] == 1)
  {
    v5 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:0 minute:0];
    v6 = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:v5 endTime:v5];
    [v3 addObject:v6];
  }

  else
  {
    if ([v4 count] < 2)
    {
      goto LABEL_6;
    }

    v5 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:0 minute:0];
    v7 = [v4 count];
    v8 = objc_alloc(MEMORY[0x277D4B778]);
    v9 = [v4 objectAtIndexedSubscript:1];
    v10 = [v9 startTime];
    v11 = [v8 initWithStartTime:v5 endTime:v10];
    [v3 addObject:v11];

    v12 = [v4 count];
    v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, v12 - 2}];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __43__SCLTimeIntervalModel_constraintIntervals__block_invoke;
    v24 = &unk_279B6F0B0;
    v14 = v4;
    v25 = v14;
    v15 = v3;
    v26 = v15;
    [v14 enumerateObjectsAtIndexes:v13 options:0 usingBlock:&v21];

    v16 = objc_alloc(MEMORY[0x277D4B778]);
    v17 = [v14 objectAtIndexedSubscript:{v7 - 2, v21, v22, v23, v24}];
    v18 = [v17 endTime];
    v19 = [v16 initWithStartTime:v18 endTime:v5];
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

- (id)canonicalDateIntervalForTimeInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 startTime];
  v6 = [v4 endTime];
  v7 = -[NSCalendar dateWithEra:year:month:day:hour:minute:second:nanosecond:](self->_calendar, "dateWithEra:year:month:day:hour:minute:second:nanosecond:", 1, 2019, 1, 1, [v5 hour], objc_msgSend(v5, "minute"), 0, 0);
  if ([v5 isEqual:v6] & 1) != 0 || (objc_msgSend(v4, "crossesDayBoundary"))
  {
    goto LABEL_3;
  }

  v9 = [v4 endTime];
  if ([v9 hour])
  {
  }

  else
  {
    v10 = [v4 endTime];
    v11 = [v10 minute];

    if (!v11)
    {
LABEL_3:
      v8 = 2;
      goto LABEL_8;
    }
  }

  v8 = 1;
LABEL_8:
  v12 = -[NSCalendar dateWithEra:year:month:day:hour:minute:second:nanosecond:](self->_calendar, "dateWithEra:year:month:day:hour:minute:second:nanosecond:", 1, 2019, 1, v8, [v6 hour], objc_msgSend(v6, "minute"), 0, 0);
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v12];

  return v13;
}

- (id)scheduleTimeWithDate:(id)a3
{
  v6 = 0;
  v7 = 0;
  [(NSCalendar *)self->_calendar getHour:&v7 minute:&v6 second:0 nanosecond:0 fromDate:a3];
  v3 = objc_alloc(MEMORY[0x277D4B758]);
  v4 = [v3 initWithHour:v7 minute:v6];

  return v4;
}

- (id)nextProposedTimeInterval
{
  v2 = [(NSMutableArray *)self->_timeIntervals lastObject];
  v3 = v2;
  if (v2)
  {
    if ([v2 crossesDayBoundary])
    {
      v4 = 0;
    }

    else
    {
      v5 = [v3 endTime];
      v6 = [v5 hour];

      if ((v6 + 1) > 0x17)
      {
        v7 = [v3 endTime];
        v8 = objc_alloc(MEMORY[0x277D4B758]);
        v9 = 0;
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:v6 + 1 minute:0];
        v8 = objc_alloc(MEMORY[0x277D4B758]);
        if ((v6 + 2) >= 0x18)
        {
          v9 = v6 - 22;
        }

        else
        {
          v9 = v6 + 2;
        }
      }

      v10 = [v8 initWithHour:v9 minute:0];
      v4 = [objc_alloc(MEMORY[0x277D4B778]) initWithStartTime:v7 endTime:v10];
    }
  }

  else
  {
    v4 = [objc_opt_class() defaultTimeInterval];
  }

  return v4;
}

- (void)removeTimeIntervalAtIndex:(unint64_t)a3
{
  if ([(SCLTimeIntervalModel *)self canRemoveTimeIntervals])
  {
    [(NSMutableArray *)self->_timeIntervals removeObjectAtIndex:a3];

    [(SCLTimeIntervalModel *)self _recalculateCanAppend];
  }

  else
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];

    [v5 raise:v6 format:@"Cannot remove the last time interval from the interval mode."];
  }
}

- (void)appendTimeInterval:(id)a3
{
  v9 = a3;
  v4 = [(NSMutableArray *)self->_timeIntervals lastObject];
  v5 = v4;
  if (v4 && ([v4 endTime], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "startTime"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compare:", v7), v7, v6, v8 == 1))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Cannot append %@ because it starts before the end time of %@", v9, v5}];
  }

  else
  {
    [(NSMutableArray *)self->_timeIntervals addObject:v9];
    [(SCLTimeIntervalModel *)self _recalculateCanAppend];
  }
}

- (void)replaceTimeIntervalAtIndex:(unint64_t)a3 withTimeInterval:(id)a4
{
  v13 = a4;
  if (a3)
  {
    v6 = [(NSMutableArray *)self->_timeIntervals objectAtIndex:a3 - 1];
    v7 = [v6 endTime];
    v8 = [v13 startTime];
    v9 = [v7 compare:v8];

    if (v9 == 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Cannot append %@ because it starts before the end time of %@", v13, v6}];
LABEL_8:

      goto LABEL_11;
    }
  }

  if (a3 + 2 < [(NSMutableArray *)self->_timeIntervals count])
  {
    v6 = [(NSMutableArray *)self->_timeIntervals objectAtIndex:a3 + 1];
    v10 = [v13 endTime];
    v11 = [v6 startTime];
    v12 = [v10 compare:v11];

    if (v12 == 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Cannot append %@ because it ends after the start time time of %@", v13, v6}];
      goto LABEL_8;
    }
  }

  [(NSMutableArray *)self->_timeIntervals replaceObjectAtIndex:a3 withObject:v13];
  [(SCLTimeIntervalModel *)self _recalculateCanAppend];
LABEL_11:
}

- (void)_recalculateCanAppend
{
  v6 = [objc_alloc(MEMORY[0x277D4B758]) initWithHour:0 minute:0];
  v3 = [(NSMutableArray *)self->_timeIntervals lastObject];
  v4 = [v3 endTime];
  v5 = [v4 isEqual:v6];

  [(SCLTimeIntervalModel *)self setCanAppendTimeInterval:v5 ^ 1u];
}

@end