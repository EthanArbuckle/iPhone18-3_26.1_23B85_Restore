@interface NSDateInterval
- (BOOL)_intersectsDateComponents:(uint64_t)a3 accuracy:;
@end

@implementation NSDateInterval

- (BOOL)_intersectsDateComponents:(uint64_t)a3 accuracy:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v22 = 0.0;
    v7 = [v5 calendar];
    v21 = 0;
    v8 = [v6 date];
    v9 = [v7 rangeOfUnit:a3 startDate:&v21 interval:&v22 forDate:v8];
    v10 = v21;

    if ((v9 & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [v6 date];
      v20 = [v6 calendar];
      [v18 handleFailureInMethod:sel__intersectsDateComponents_accuracy_ object:a1 file:@"NSDateInterval+UICalendarAdditions.m" lineNumber:41 description:{@"Unable to calculate range for date %@ in calendar %@ with accuracy %tu.", v19, v20, a3}];
    }

    v11 = [v10 dateByAddingTimeInterval:v22];
    v12 = [a1 startDate];
    v13 = [v12 compare:v11];

    v14 = [a1 endDate];
    v15 = [v10 compare:v14];

    a1 = v15 != 1 && v13 == -1;
  }

  return a1;
}

@end