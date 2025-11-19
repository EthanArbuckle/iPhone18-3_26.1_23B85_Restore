@interface NSTimeZone(ICSTranslation)
- (id)ICSComputeTimeZoneChangeListFromDate:()ICSTranslation toDate:;
@end

@implementation NSTimeZone(ICSTranslation)

- (id)ICSComputeTimeZoneChangeListFromDate:()ICSTranslation toDate:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = objc_alloc(MEMORY[0x277CBEA80]);
  v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v10 setTimeZone:a1];
  v33 = [v6 components];
  v11 = [v10 dateFromComponents:?];
  v32 = [v7 components];
  v12 = [v10 dateFromComponents:?];
  [v11 timeIntervalSinceReferenceDate];
  v14 = v13;
  [v12 timeIntervalSinceReferenceDate];
  v16 = v15;
  v17 = [v11 dateByAddingTimeInterval:1.0];
  v18 = [a1 secondsFromGMTForDate:v17];

  v19 = [a1 nextDaylightSavingTimeTransitionAfterDate:v11];
  if (v19)
  {
    v20 = v19;
    v30 = v7;
    v31 = v6;
    do
    {
      [v20 timeIntervalSinceReferenceDate];
      v22 = v21;
      if (v21 >= v14 && v21 <= v16)
      {
        v24 = [v20 dateByAddingTimeInterval:1.0];
        v18 = [a1 secondsFromGMTForDate:v24];

        v25 = [[ICSTimeZoneChange alloc] initWithTimeInterval:v18 tzOffsetTo:v22];
        [v8 addObject:v25];
      }

      if (v22 > v16)
      {
        break;
      }

      v26 = [v20 dateByAddingTimeInterval:1.0];
      v27 = [a1 nextDaylightSavingTimeTransitionAfterDate:v26];

      if ([v27 compare:v20] != 1)
      {

        break;
      }

      v20 = v27;
    }

    while (v27);

    v7 = v30;
    v6 = v31;
  }

  if (![v8 count])
  {
    v28 = [[ICSTimeZoneChange alloc] initWithTimeInterval:v18 tzOffsetTo:0.0];
    [v8 addObject:v28];
  }

  [v8 sortUsingSelector:sel_compare_];

  return v8;
}

@end