@interface NSArray(PowerUIAdditions)
- (double)mean;
- (double)percentile:()PowerUIAdditions;
- (double)standardDeviation;
- (id)percentiles:()PowerUIAdditions;
@end

@implementation NSArray(PowerUIAdditions)

- (double)mean
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = 0.0;
  if ([a1 count])
  {
    v3 = [a1 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = a1;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v13 + 1) + 8 * v9) doubleValue];
            v2 = v2 + v10;
            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v2 = v2 / [v5 count];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (double)standardDeviation
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = 0.0;
  if ([a1 count] >= 2)
  {
    v3 = [a1 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [a1 mean];
      v6 = v5;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = a1;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        v11 = 0.0;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v16 + 1) + 8 * i) doubleValue];
            v11 = v11 + (v13 - v6) * (v13 - v6);
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 0.0;
      }

      v2 = sqrt(v11 / ([v7 count] - 1));
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (double)percentile:()PowerUIAdditions
{
  v4 = [a1 count];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = [a1 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (v6 == 1)
      {
        v9 = [a1 firstObject];
        [v9 doubleValue];
        v5 = v10;
LABEL_12:

        return v5;
      }

      v11 = [a1 sortedArrayUsingSelector:sel_compare_];
      v9 = v11;
      if (a2 >= 1.0)
      {
        v26 = [a1 lastObject];
      }

      else
      {
        if (a2 > 0.0)
        {
          v12 = ((v6 - 1) * a2);
          v13 = v6 + -1.0;
          v14 = v12 / v13;
          v15 = (v12 + 1) / v13;
          v16 = a2 - v14;
          v17 = [v11 objectAtIndexedSubscript:v12 + 1];
          [v17 doubleValue];
          v19 = v18;
          v20 = v12;
          v21 = [v9 objectAtIndexedSubscript:v12];
          [v21 doubleValue];
          v23 = v19 - v22;

          v24 = [v9 objectAtIndexedSubscript:v20];
          [v24 doubleValue];
          v5 = v16 * v23 / (v15 - v14) + v25;
LABEL_11:

          goto LABEL_12;
        }

        v26 = [a1 firstObject];
      }

      v24 = v26;
      [v26 doubleValue];
      v5 = v27;
      goto LABEL_11;
    }
  }

  return v5;
}

- (id)percentiles:()PowerUIAdditions
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 count];
  v6 = objc_opt_new();
  v31 = [a1 sortedArrayUsingSelector:sel_compare_];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v30 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v33 + 1) + 8 * i) doubleValue];
        v13 = 0.0;
        if (v5)
        {
          v14 = v12;
          v15 = [a1 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            if (v5 == 1)
            {
              goto LABEL_9;
            }

            if (v14 >= 1.0)
            {
              v17 = [a1 lastObject];
            }

            else
            {
              if (v14 > 0.0)
              {
                v18 = (v14 * (v5 - 1));
                v32 = [v31 objectAtIndexedSubscript:v18 + 1];
                [v32 doubleValue];
                v20 = v19;
                v21 = [v31 objectAtIndexedSubscript:v18];
                [v21 doubleValue];
                v23 = v20 - v22;

                v7 = v30;
                v24 = [v31 objectAtIndexedSubscript:v18];
                [v24 doubleValue];
                v13 = (v14 - v18 / (v5 + -1.0)) * v23 / ((v18 + 1) / (v5 + -1.0) - v18 / (v5 + -1.0)) + v25;
LABEL_15:

                goto LABEL_16;
              }

LABEL_9:
              v17 = [a1 firstObject];
            }

            v24 = v17;
            [v17 doubleValue];
            v13 = v26;
            goto LABEL_15;
          }
        }

LABEL_16:
        v27 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        [v6 addObject:v27];
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v6;
}

@end