@interface NSDateInterval(UICalendarAdditions)
- (id)_ui_dateInRangeForDate:()UICalendarAdditions;
@end

@implementation NSDateInterval(UICalendarAdditions)

- (id)_ui_dateInRangeForDate:()UICalendarAdditions
{
  v4 = a3;
  if ([self containsDate:v4])
  {
    v5 = v4;
  }

  else
  {
    startDate = [self startDate];
    v7 = [v4 compare:startDate];

    if (v7 == 1)
    {
      [self endDate];
    }

    else
    {
      [self startDate];
    }
    v5 = ;
  }

  v8 = v5;

  return v8;
}

@end