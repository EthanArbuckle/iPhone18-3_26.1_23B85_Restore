@interface AWDCoreRoutineLocationAwarenessLocationTimeHistograms(MetricManager)
- (BOOL)valid:()MetricManager;
- (char)_init;
@end

@implementation AWDCoreRoutineLocationAwarenessLocationTimeHistograms(MetricManager)

- (char)_init
{
  v19.receiver = a1;
  v19.super_class = &off_2846279A0;
  v1 = objc_msgSendSuper2(&v19, sel_init);
  if (v1)
  {
    v2 = objc_opt_new();
    v3 = *MEMORY[0x277D81B30];
    v4 = *&v1[v3];
    *&v1[v3] = v2;

    v5 = objc_opt_new();
    v6 = *MEMORY[0x277D81B38];
    v7 = *&v1[v6];
    *&v1[v6] = v5;

    v8 = objc_opt_new();
    v9 = *MEMORY[0x277D81B48];
    v10 = *&v1[v9];
    *&v1[v9] = v8;

    v11 = objc_opt_new();
    v12 = *MEMORY[0x277D81B50];
    v13 = *&v1[v12];
    *&v1[v12] = v11;

    v14 = objc_opt_new();
    v15 = *MEMORY[0x277D81B40];
    v16 = *&v1[v15];
    *&v1[v15] = v14;

    v17 = 24;
    do
    {
      [*&v1[v3] addCount:0];
      [*&v1[v6] addCount:0];
      [*&v1[v9] addCount:0];
      [*&v1[v12] addCount:0];
      [*&v1[v15] addCount:0];
      --v17;
    }

    while (v17);
  }

  return v1;
}

- (BOOL)valid:()MetricManager
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (([a1 conformsToProtocol:&unk_284624910] & 1) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = NSStringFromProtocol(&unk_284624910);
    [v11 stringWithFormat:@"Invalid metric. metric does not conform to the %@ protocol.", v12];
    v10 = LABEL_18:;

    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = *MEMORY[0x277D81B30];
    if ([*&a1[v5] countsCount] == 24)
    {
      v6 = *MEMORY[0x277D81B38];
      if ([*&a1[v6] countsCount] == 24)
      {
        v7 = *MEMORY[0x277D81B48];
        if ([*&a1[v7] countsCount] == 24)
        {
          v8 = *MEMORY[0x277D81B50];
          if ([*&a1[v8] countsCount] == 24)
          {
            v9 = *MEMORY[0x277D81B40];
            if ([*&a1[v9] countsCount] == 24)
            {
              v10 = 0;
              goto LABEL_21;
            }

            v13 = MEMORY[0x277CCACA8];
            v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*&a1[v9], "countsCount")}];
            v18 = v12;
            v14 = @"Invalid metric. lessThan200mHistogram bin count, %@";
          }

          else
          {
            v13 = MEMORY[0x277CCACA8];
            v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*&a1[v8], "countsCount")}];
            v18 = v12;
            v14 = @"Invalid metric. lessThan55mHistogram bin count, %@";
          }
        }

        else
        {
          v13 = MEMORY[0x277CCACA8];
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*&a1[v7], "countsCount")}];
          v18 = v12;
          v14 = @"Invalid metric. lessThan20mHistogram bin count, %@";
        }
      }

      else
      {
        v13 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*&a1[v6], "countsCount")}];
        v18 = v12;
        v14 = @"Invalid metric. lessThan10mHistogram bin count, %@";
      }
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*&a1[v5], "countsCount")}];
      v18 = v12;
      v14 = @"Invalid metric. anyPositiveHistogram bin count, %@";
    }

    [v13 stringWithFormat:v14, v18];
    goto LABEL_18;
  }

  v10 = @"Invalid metric. the metric does not have an ID.";
  if (!a3)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v10)
  {
    v15 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = v10;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a3 = [v15 errorWithDomain:@"RTMetricManagerErrorDomain" code:1 userInfo:v16];
  }

LABEL_21:

  return v10 == 0;
}

@end