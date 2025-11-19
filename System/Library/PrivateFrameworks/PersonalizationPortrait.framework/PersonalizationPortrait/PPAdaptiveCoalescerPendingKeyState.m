@interface PPAdaptiveCoalescerPendingKeyState
- (BOOL)shouldGarbageCollectForNowDate:(id)a3;
- (PPAdaptiveCoalescerPendingKeyState)initWithKey:(id)a3;
- (double)currentDelayForNowDate:(id)a3;
- (double)currentQPSForDateInterval:(id)a3;
- (double)currentQPSForNowDate:(id)a3;
- (void)addDate:(id)a3;
@end

@implementation PPAdaptiveCoalescerPendingKeyState

- (BOOL)shouldGarbageCollectForNowDate:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_handlers count])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_dates lastObject];
    [v4 timeIntervalSinceDate:v6];
    v5 = v7 > 600.0;
  }

  return v5;
}

- (double)currentDelayForNowDate:(id)a3
{
  v4 = MEMORY[0x1E696AB80];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 dateByAddingTimeInterval:-1.0];
  v8 = [v6 initWithStartDate:v7 endDate:v5];

  [(PPAdaptiveCoalescerPendingKeyState *)self currentQPSForDateInterval:v8];
  if (v9 < 1.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = objc_alloc(MEMORY[0x1E696AB80]);
  v12 = [v5 dateByAddingTimeInterval:-20.0];
  v13 = [v11 initWithStartDate:v12 endDate:v5];

  [(PPAdaptiveCoalescerPendingKeyState *)self currentQPSForDateInterval:v13];
  v15 = v14;

  v16 = objc_alloc(MEMORY[0x1E696AB80]);
  v17 = [v5 dateByAddingTimeInterval:-300.0];
  v18 = [v16 initWithStartDate:v17 endDate:v5];

  [(PPAdaptiveCoalescerPendingKeyState *)self currentQPSForDateInterval:v18];
  if (v19 < 0.0333333333)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 30.0;
  }

  v21 = objc_alloc(MEMORY[0x1E696AB80]);
  v22 = [v5 dateByAddingTimeInterval:-21600.0];
  v23 = [v21 initWithStartDate:v22 endDate:v5];

  [(PPAdaptiveCoalescerPendingKeyState *)self currentQPSForDateInterval:v23];
  v25 = v24;

  result = 4.0;
  if (v15 < 0.25)
  {
    result = v10;
  }

  v27 = 300.0;
  if (v25 < 0.00222222222)
  {
    v27 = v20;
  }

  if (result < v27)
  {
    return v27;
  }

  return result;
}

- (double)currentQPSForNowDate:(id)a3
{
  v4 = MEMORY[0x1E696AB80];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E695DF00] distantPast];
  v8 = [v6 initWithStartDate:v7 endDate:v5];

  [(PPAdaptiveCoalescerPendingKeyState *)self currentQPSForDateInterval:v8];
  v10 = v9;

  return v10;
}

- (double)currentQPSForDateInterval:(id)a3
{
  v5 = a3;
  v6 = 0.0;
  if ([(NSMutableArray *)self->_dates count])
  {
    dates = self->_dates;
    v8 = [v5 startDate];
    v9 = [(NSMutableArray *)dates indexOfObject:v8 inSortedRange:0 options:[(NSMutableArray *)self->_dates count] usingComparator:1024, &__block_literal_global_1831];

    v10 = self->_dates;
    v11 = [v5 endDate];
    v12 = [(NSMutableArray *)v10 indexOfObject:v11 inSortedRange:0 options:[(NSMutableArray *)self->_dates count] usingComparator:1024, &__block_literal_global_1831];

    if (v12 < v9)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"PPAdaptiveCoalescer.m" lineNumber:82 description:{@"expected startIndex <= endIndex, got startIndex %tu endIndex %tu (dateInterval=%@, _dates=%@)", v9, v12, v5, self->_dates}];
    }

    v13 = v12 - v9;
    if (v13)
    {
      if (!v9 && [(NSMutableArray *)self->_dates count]== 48)
      {
        v14 = [(NSMutableArray *)self->_dates objectAtIndexedSubscript:0];
        if ([v5 containsDate:v14])
        {
          v15 = objc_alloc(MEMORY[0x1E696AB80]);
          v16 = [v5 endDate];
          v17 = [v15 initWithStartDate:v14 endDate:v16];

          v5 = v17;
        }
      }

      [v5 duration];
      v6 = v13 / v18;
    }
  }

  return v6;
}

- (void)addDate:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableArray *)self->_dates indexOfObject:v8 inSortedRange:0 options:[(NSMutableArray *)self->_dates count] usingComparator:1024, &__block_literal_global_1831];
  v5 = [(NSMutableArray *)self->_dates count];
  if (v5 < 0x31 || v4 != 0)
  {
    v7 = v5;
    [(NSMutableArray *)self->_dates insertObject:v8 atIndex:v4];
    if (v7 >= 0x31)
    {
      [(NSMutableArray *)self->_dates removeObjectAtIndex:0];
    }
  }
}

- (PPAdaptiveCoalescerPendingKeyState)initWithKey:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PPAdaptiveCoalescerPendingKeyState;
  v6 = [(PPAdaptiveCoalescerPendingKeyState *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
    v8 = objc_opt_new();
    handlers = v7->_handlers;
    v7->_handlers = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:48];
    dates = v7->_dates;
    v7->_dates = v10;
  }

  return v7;
}

@end