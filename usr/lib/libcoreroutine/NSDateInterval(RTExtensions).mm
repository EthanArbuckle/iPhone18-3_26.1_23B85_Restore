@interface NSDateInterval(RTExtensions)
+ (id)dateIntervals:()RTExtensions intersectingDateInterval:;
+ (id)invertDateIntervals:()RTExtensions;
+ (id)mergeDateIntervals:()RTExtensions;
- (id)description;
- (id)rt_initWithStartDate:()RTExtensions endDate:error:;
@end

@implementation NSDateInterval(RTExtensions)

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 startDate];
  v4 = [v3 stringFromDate];
  v5 = [a1 endDate];
  v6 = [v5 stringFromDate];
  v7 = [v2 stringWithFormat:@"startDate, %@, endDate, %@", v4, v6];

  return v7;
}

- (id)rt_initWithStartDate:()RTExtensions endDate:error:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"startDate or endDate is nil";
    v12 = MEMORY[0x277CBEAC0];
    v13 = v21;
    v14 = &v20;
    goto LABEL_6;
  }

  if ([v7 compare:v8] == 1)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"startDate cannot be after endDate";
    v12 = MEMORY[0x277CBEAC0];
    v13 = &v19;
    v14 = &v18;
LABEL_6:
    v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
    *a5 = [v10 errorWithDomain:v11 code:7 userInfo:v15];

    v16 = 0;
    goto LABEL_8;
  }

  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v9];
LABEL_8:

  return v16;
}

+ (id)mergeDateIntervals:()RTExtensions
{
  v3 = a3;
  if ([v3 count] && objc_msgSend(v3, "count") != 1)
  {
    v5 = [v3 sortedArrayUsingComparator:&__block_literal_global_54];
    v6 = objc_opt_new();
    v7 = [v5 firstObject];
    v8 = [v7 startDate];
    v20 = v7;
    v9 = [v7 endDate];
    if ([v5 count] < 2)
    {
      v17 = v9;
    }

    else
    {
      v10 = 1;
      do
      {
        v11 = [v5 objectAtIndex:v10];
        v12 = [v11 startDate];
        v13 = [v12 earlierDate:v9];
        v14 = [v11 startDate];

        if (v13 == v14)
        {
          v15 = [v11 endDate];
          v17 = [v9 laterDate:v15];
        }

        else
        {
          v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
          if (v15)
          {
            [v6 addObject:v15];
          }

          v16 = [v11 startDate];

          v17 = [v11 endDate];
          v8 = v16;
        }

        ++v10;
        v9 = v17;
      }

      while ([v5 count] > v10);
    }

    v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v17];
    if (v18)
    {
      [v6 addObject:v18];
    }

    v4 = v6;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)invertDateIntervals:()RTExtensions
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v24 = v4;
    v5 = [a1 mergeDateIntervals:v4];
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CBEAA8] distantPast];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        v13 = v7;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v25 + 1) + 8 * v12);
          v15 = objc_alloc(MEMORY[0x277CCA970]);
          v16 = [v14 startDate];
          v17 = [v15 initWithStartDate:v13 endDate:v16];

          [v17 duration];
          if (v18 > 0.0)
          {
            [v6 addObject:v17];
          }

          v7 = [v14 endDate];

          ++v12;
          v13 = v7;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v19 = objc_alloc(MEMORY[0x277CCA970]);
    v20 = [MEMORY[0x277CBEAA8] distantFuture];
    v21 = [v19 initWithStartDate:v7 endDate:v20];

    [v21 duration];
    if (v22 > 0.0)
    {
      [v6 addObject:v21];
    }

    v4 = v24;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

+ (id)dateIntervals:()RTExtensions intersectingDateInterval:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6 && [v5 count])
  {
    v7 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) intersectionWithDateInterval:{v6, v15}];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

@end