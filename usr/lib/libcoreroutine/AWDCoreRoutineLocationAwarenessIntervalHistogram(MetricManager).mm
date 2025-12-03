@interface AWDCoreRoutineLocationAwarenessIntervalHistogram(MetricManager)
+ (id)_defaultIntervalHistogram;
+ (uint64_t)checkIntervalHistogramDimensions:()MetricManager;
- (BOOL)valid:()MetricManager;
- (char)_init;
@end

@implementation AWDCoreRoutineLocationAwarenessIntervalHistogram(MetricManager)

- (char)_init
{
  v18.receiver = self;
  v18.super_class = &off_284627D08;
  v1 = objc_msgSendSuper2(&v18, sel_init);
  if (v1)
  {
    _defaultIntervalHistogram = [objc_opt_class() _defaultIntervalHistogram];
    v3 = *MEMORY[0x277D81B08];
    v4 = *&v1[v3];
    *&v1[v3] = _defaultIntervalHistogram;

    _defaultIntervalHistogram2 = [objc_opt_class() _defaultIntervalHistogram];
    v6 = *MEMORY[0x277D81B10];
    v7 = *&v1[v6];
    *&v1[v6] = _defaultIntervalHistogram2;

    _defaultIntervalHistogram3 = [objc_opt_class() _defaultIntervalHistogram];
    v9 = *MEMORY[0x277D81B20];
    v10 = *&v1[v9];
    *&v1[v9] = _defaultIntervalHistogram3;

    _defaultIntervalHistogram4 = [objc_opt_class() _defaultIntervalHistogram];
    v12 = *MEMORY[0x277D81B28];
    v13 = *&v1[v12];
    *&v1[v12] = _defaultIntervalHistogram4;

    _defaultIntervalHistogram5 = [objc_opt_class() _defaultIntervalHistogram];
    v15 = *MEMORY[0x277D81B18];
    v16 = *&v1[v15];
    *&v1[v15] = _defaultIntervalHistogram5;
  }

  return v1;
}

- (BOOL)valid:()MetricManager
{
  v14[1] = *MEMORY[0x277D85DE8];
  if ([self conformsToProtocol:&unk_284624910])
  {
    if (objc_opt_respondsToSelector())
    {
      if ([objc_opt_class() checkIntervalHistogramDimensions:*&self[*MEMORY[0x277D81B08]]])
      {
        if ([objc_opt_class() checkIntervalHistogramDimensions:*&self[*MEMORY[0x277D81B10]]])
        {
          if ([objc_opt_class() checkIntervalHistogramDimensions:*&self[*MEMORY[0x277D81B20]]])
          {
            if ([objc_opt_class() checkIntervalHistogramDimensions:*&self[*MEMORY[0x277D81B28]]])
            {
              if ([objc_opt_class() checkIntervalHistogramDimensions:*&self[*MEMORY[0x277D81B18]]])
              {
                v5 = 0;
                goto LABEL_21;
              }

              v8 = MEMORY[0x277CCACA8];
              v9 = @"Invalid metric. Bad dimensions for lessThan200mIntervalHistograms.";
            }

            else
            {
              v8 = MEMORY[0x277CCACA8];
              v9 = @"Invalid metric. Bad dimensions for lessThan55mIntervalHistograms.";
            }
          }

          else
          {
            v8 = MEMORY[0x277CCACA8];
            v9 = @"Invalid metric. Bad dimensions for lessThan25mIntervalHistograms.";
          }
        }

        else
        {
          v8 = MEMORY[0x277CCACA8];
          v9 = @"Invalid metric. Bad dimensions for lessThan10mIntervalHistograms.";
        }
      }

      else
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = @"Invalid metric. Bad dimensions for anyPositiveIntervalHistograms.";
      }

      v5 = [v8 stringWithFormat:v9];
      if (!a3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v5 = @"Invalid metric. the metric does not have an ID.";
      if (!a3)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NSStringFromProtocol(&unk_284624910);
    v5 = [v6 stringWithFormat:@"Invalid metric. metric does not conform to the %@ protocol.", v7];

    if (!a3)
    {
      goto LABEL_21;
    }
  }

  if (v5)
  {
    v10 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a3 = [v10 errorWithDomain:@"RTMetricManagerErrorDomain" code:1 userInfo:v11];
  }

LABEL_21:

  return v5 == 0;
}

+ (id)_defaultIntervalHistogram
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  for (i = 0; i != 8; ++i)
  {
    v2 = objc_opt_new();
    v3 = 24;
    do
    {
      [v2 addCount:0];
      --v3;
    }

    while (v3);
    [v0 addObject:v2];
  }

  return v0;
}

+ (uint64_t)checkIntervalHistogramDimensions:()MetricManager
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 count] == 8;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = v4 & ([*(*(&v11 + 1) + 8 * v9++) countsCount] == 24);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

@end