@interface NSDateInterval
- (BOOL)_intersectsDateComponents:(uint64_t)components accuracy:;
@end

@implementation NSDateInterval

- (BOOL)_intersectsDateComponents:(uint64_t)components accuracy:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v22 = 0.0;
    calendar = [v5 calendar];
    v21 = 0;
    date = [v6 date];
    v9 = [calendar rangeOfUnit:components startDate:&v21 interval:&v22 forDate:date];
    v10 = v21;

    if ((v9 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      date2 = [v6 date];
      calendar2 = [v6 calendar];
      [currentHandler handleFailureInMethod:sel__intersectsDateComponents_accuracy_ object:self file:@"NSDateInterval+UICalendarAdditions.m" lineNumber:41 description:{@"Unable to calculate range for date %@ in calendar %@ with accuracy %tu.", date2, calendar2, components}];
    }

    v11 = [v10 dateByAddingTimeInterval:v22];
    startDate = [self startDate];
    v13 = [startDate compare:v11];

    endDate = [self endDate];
    v15 = [v10 compare:endDate];

    self = v15 != 1 && v13 == -1;
  }

  return self;
}

@end