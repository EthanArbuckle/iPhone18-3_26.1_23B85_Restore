@interface NSCalendar(WorkflowKit)
- (id)wf_weekdays;
- (id)wf_weekendDays;
- (id)wf_workweekDays;
@end

@implementation NSCalendar(WorkflowKit)

- (id)wf_weekdays
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = [a1 weekdaySymbols];
  v4 = [v2 setWithCapacity:{objc_msgSend(v3, "count")}];

  v5 = [a1 weekdaySymbols];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 1;
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [v4 addObject:v8];

      ++v7;
      v9 = [a1 weekdaySymbols];
      v10 = [v9 count];
    }

    while (v7 <= v10);
  }

  v11 = [v4 copy];

  return v11;
}

- (id)wf_workweekDays
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 weekdaySymbols];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      if (([a1 isDateInWeekend:v3] & 1) == 0)
      {
        v7 = [a1 components:512 fromDate:v3];
        v8 = [v7 weekday];

        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        [v2 addObject:v9];
      }

      v10 = [a1 dateByAddingUnit:16 value:1 toDate:v3 options:0];

      ++v6;
      v11 = [a1 weekdaySymbols];
      v12 = [v11 count];

      v3 = v10;
    }

    while (v6 < v12);
  }

  else
  {
    v10 = v3;
  }

  v13 = [v2 copy];

  return v13;
}

- (id)wf_weekendDays
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 weekdaySymbols];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      if ([a1 isDateInWeekend:v3])
      {
        v7 = [a1 components:512 fromDate:v3];
        v8 = [v7 weekday];

        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        [v2 addObject:v9];
      }

      v10 = [a1 dateByAddingUnit:16 value:1 toDate:v3 options:0];

      ++v6;
      v11 = [a1 weekdaySymbols];
      v12 = [v11 count];

      v3 = v10;
    }

    while (v6 < v12);
  }

  else
  {
    v10 = v3;
  }

  v13 = [v2 copy];

  return v13;
}

@end