@interface NSCalendar(WorkflowKit)
- (id)wf_weekdays;
- (id)wf_weekendDays;
- (id)wf_workweekDays;
@end

@implementation NSCalendar(WorkflowKit)

- (id)wf_weekdays
{
  v2 = MEMORY[0x1E695DFA8];
  weekdaySymbols = [self weekdaySymbols];
  v4 = [v2 setWithCapacity:{objc_msgSend(weekdaySymbols, "count")}];

  weekdaySymbols2 = [self weekdaySymbols];
  v6 = [weekdaySymbols2 count];

  if (v6)
  {
    v7 = 1;
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [v4 addObject:v8];

      ++v7;
      weekdaySymbols3 = [self weekdaySymbols];
      v10 = [weekdaySymbols3 count];
    }

    while (v7 <= v10);
  }

  v11 = [v4 copy];

  return v11;
}

- (id)wf_workweekDays
{
  v2 = [MEMORY[0x1E695DFA8] set];
  date = [MEMORY[0x1E695DF00] date];
  weekdaySymbols = [self weekdaySymbols];
  v5 = [weekdaySymbols count];

  if (v5)
  {
    v6 = 0;
    do
    {
      if (([self isDateInWeekend:date] & 1) == 0)
      {
        v7 = [self components:512 fromDate:date];
        weekday = [v7 weekday];

        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:weekday];
        [v2 addObject:v9];
      }

      v10 = [self dateByAddingUnit:16 value:1 toDate:date options:0];

      ++v6;
      weekdaySymbols2 = [self weekdaySymbols];
      v12 = [weekdaySymbols2 count];

      date = v10;
    }

    while (v6 < v12);
  }

  else
  {
    v10 = date;
  }

  v13 = [v2 copy];

  return v13;
}

- (id)wf_weekendDays
{
  v2 = [MEMORY[0x1E695DFA8] set];
  date = [MEMORY[0x1E695DF00] date];
  weekdaySymbols = [self weekdaySymbols];
  v5 = [weekdaySymbols count];

  if (v5)
  {
    v6 = 0;
    do
    {
      if ([self isDateInWeekend:date])
      {
        v7 = [self components:512 fromDate:date];
        weekday = [v7 weekday];

        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:weekday];
        [v2 addObject:v9];
      }

      v10 = [self dateByAddingUnit:16 value:1 toDate:date options:0];

      ++v6;
      weekdaySymbols2 = [self weekdaySymbols];
      v12 = [weekdaySymbols2 count];

      date = v10;
    }

    while (v6 < v12);
  }

  else
  {
    v10 = date;
  }

  v13 = [v2 copy];

  return v13;
}

@end