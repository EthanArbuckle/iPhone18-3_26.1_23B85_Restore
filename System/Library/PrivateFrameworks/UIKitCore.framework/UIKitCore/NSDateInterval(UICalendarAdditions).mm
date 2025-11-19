@interface NSDateInterval(UICalendarAdditions)
- (id)_ui_dateInRangeForDate:()UICalendarAdditions;
@end

@implementation NSDateInterval(UICalendarAdditions)

- (id)_ui_dateInRangeForDate:()UICalendarAdditions
{
  v4 = a3;
  if ([a1 containsDate:v4])
  {
    v5 = v4;
  }

  else
  {
    v6 = [a1 startDate];
    v7 = [v4 compare:v6];

    if (v7 == 1)
    {
      [a1 endDate];
    }

    else
    {
      [a1 startDate];
    }
    v5 = ;
  }

  v8 = v5;

  return v8;
}

@end