@interface NSCalendar(PLExtensions)
- (BOOL)pl_isDateValid:()PLExtensions;
- (id)pl_dateByAddingDays:()PLExtensions toDate:;
- (id)pl_endOfDayForDate:()PLExtensions;
- (id)pl_endOfPreviousDayForDate:()PLExtensions;
- (id)pl_endOfWeekForDate:()PLExtensions;
- (id)pl_startOfDayForDate:()PLExtensions;
- (id)pl_startOfMonthForDate:()PLExtensions;
- (id)pl_startOfNextDayForDate:()PLExtensions;
- (id)pl_startOfWeekForDate:()PLExtensions;
- (id)pl_validDateForDate:()PLExtensions;
@end

@implementation NSCalendar(PLExtensions)

- (id)pl_startOfMonthForDate:()PLExtensions
{
  v4 = a3;
  if ([a1 pl_isDateValid:v4])
  {
    v7 = 0;
    [a1 rangeOfUnit:8 startDate:&v7 interval:0 forDate:v4];

    v5 = v7;
  }

  else
  {
    v5 = [a1 pl_validDateForDate:v4];
  }

  return v5;
}

- (id)pl_startOfWeekForDate:()PLExtensions
{
  v4 = a3;
  if ([a1 pl_isDateValid:v4])
  {
    v7 = 0;
    [a1 rangeOfUnit:0x2000 startDate:&v7 interval:0 forDate:v4];

    v5 = v7;
  }

  else
  {
    v5 = [a1 pl_validDateForDate:v4];
  }

  return v5;
}

- (id)pl_startOfDayForDate:()PLExtensions
{
  v4 = a3;
  if ([a1 pl_isDateValid:v4])
  {
    [a1 startOfDayForDate:v4];
  }

  else
  {
    [a1 pl_validDateForDate:v4];
  }
  v5 = ;

  return v5;
}

- (id)pl_endOfWeekForDate:()PLExtensions
{
  v4 = a3;
  if ([a1 pl_isDateValid:v4])
  {
    v8 = 0;
    v9 = 0.0;
    [a1 rangeOfUnit:0x2000 startDate:&v8 interval:&v9 forDate:v4];

    v4 = v8;
    v5 = [v4 dateByAddingTimeInterval:v9 + -0.001];
  }

  else
  {
    v5 = [a1 pl_validDateForDate:v4];
  }

  v6 = v5;

  return v6;
}

- (id)pl_dateByAddingDays:()PLExtensions toDate:
{
  v6 = a4;
  if ([a1 pl_isDateValid:v6])
  {
    [a1 dateByAddingUnit:16 value:a3 toDate:v6 options:0];
  }

  else
  {
    [a1 pl_validDateForDate:v6];
  }
  v7 = ;

  return v7;
}

- (id)pl_endOfDayForDate:()PLExtensions
{
  v4 = a3;
  if ([a1 pl_isDateValid:v4])
  {
    v5 = [a1 startOfDayForDate:v4];

    v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v6 setDay:1];
    [v6 setNanosecond:-1000000];
    v7 = [a1 dateByAddingComponents:v6 toDate:v5 options:0];

    v4 = v5;
  }

  else
  {
    v7 = [a1 pl_validDateForDate:v4];
  }

  return v7;
}

- (id)pl_endOfPreviousDayForDate:()PLExtensions
{
  v4 = a3;
  if ([a1 pl_isDateValid:v4])
  {
    v5 = [a1 startOfDayForDate:v4];

    v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v6 setNanosecond:-1000000];
    v7 = [a1 dateByAddingComponents:v6 toDate:v5 options:0];

    v4 = v5;
  }

  else
  {
    v7 = [a1 pl_validDateForDate:v4];
  }

  return v7;
}

- (id)pl_startOfNextDayForDate:()PLExtensions
{
  v4 = a3;
  if ([a1 pl_isDateValid:v4])
  {
    v5 = [a1 startOfDayForDate:v4];

    v6 = [a1 pl_dateByAddingDays:1 toDate:v5];
    v4 = v5;
  }

  else
  {
    v6 = [a1 pl_validDateForDate:v4];
  }

  return v6;
}

- (id)pl_validDateForDate:()PLExtensions
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [v3 compare:v4];

  if (v5 == -1)
  {
    v8 = [MEMORY[0x1E695DF00] distantPast];

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v6 = [MEMORY[0x1E695DF00] distantFuture];
  v7 = [v6 compare:v3];

  v8 = v3;
  if (v7 == -1)
  {
    v8 = [MEMORY[0x1E695DF00] distantFuture];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v8;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid date found: %@, using %@ instead.", &v10, 0x16u);
    }
  }

LABEL_8:

  return v8;
}

- (BOOL)pl_isDateValid:()PLExtensions
{
  v5 = a3;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"NSCalendar+PLExtensions.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"date"}];
    goto LABEL_5;
  }

  v6 = [MEMORY[0x1E695DF00] distantPast];
  if ([v5 compare:v6] == -1)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v7 compare:v5] != -1;

LABEL_6:
  return v8;
}

@end