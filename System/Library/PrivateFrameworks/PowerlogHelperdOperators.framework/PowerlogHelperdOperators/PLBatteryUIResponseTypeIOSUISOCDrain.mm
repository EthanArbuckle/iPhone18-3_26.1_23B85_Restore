@interface PLBatteryUIResponseTypeIOSUISOCDrain
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeIOSUISOCDrain

- (void)configure:(id)configure
{
  v36[2] = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setEnd:v12];

  v13 = +[PLUtilities getOverridableMonotonicNow];
  v14 = [configureCopy objectForKeyedSubscript:@"isDynamicEnd"];
  -[PLBatteryUIResponseTypeIOSUISOCDrain setIsDynamicEnd:](self, "setIsDynamicEnd:", [v14 BOOLValue]);

  isDynamicEnd = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self isDynamicEnd];
  v16 = 0.0;
  if (isDynamicEnd)
  {
    [v13 timeIntervalSince1970];
    v16 = v10 - v17;
  }

  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setDynamicEndOffset:v16];
  start = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self start];
  v19 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self end];
  [start timeIntervalSince1970];
  v21 = v20;
  [v19 timeIntervalSince1970];
  v23 = v22;

  v24 = [configureCopy objectForKeyedSubscript:@"bucket"];
  [v24 doubleValue];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setBucketSize:?];

  v25 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  if (!v25)
  {
    v26 = PLLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponseTypeIOSUISOCDrain configure:v26];
    }
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp BETWEEN %f AND %f", v21 + -1800.0, v21 + -1800.0 + v23 - v21 + 1800.0];
  responderService = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self responderService];
  storage = [responderService storage];
  v34 = v27;
  v35[0] = @"where";
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v35[1] = @"order by";
  v36[0] = v30;
  v36[1] = &unk_28714B060;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v32 = [storage entriesForKey:v25 withProperties:v31];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setUiLevelEntries:v32];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self bucketSize];
  if (v3 == 0.0)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(PLBatteryUIResponseTypeIOSUISOCDrain *)v4 run];
    }
  }

  start = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self start];
  v6 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self end];
  [start timeIntervalSince1970];
  v8 = v7;
  [v6 timeIntervalSince1970];
  v10 = v9 - v8;

  v64 = objc_opt_new();
  v63 = objc_opt_new();
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
  v66 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self bucketSize];
  v62 = llround(v10 / v12);
  if (v62 >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v66;
      v16 = v11;
      v11 = [v66 copy];

      [(PLBatteryUIResponseTypeIOSUISOCDrain *)self bucketSize];
      v66 = [v11 dateByAddingTimeInterval:?];

      v17 = v14;
      uiLevelEntries = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
      v19 = [uiLevelEntries count];

      if (v19 <= v14)
      {
        v21 = 0;
        intValue = 0;
      }

      else
      {
        uiLevelEntries2 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
        v21 = [uiLevelEntries2 objectAtIndexedSubscript:v14];

        v22 = [v21 objectForKeyedSubscript:@"Level"];
        intValue = [v22 intValue];
      }

      v24 = 0.0;
      if (v13 != v62 - 1)
      {
        [(PLBatteryUIResponseTypeIOSUISOCDrain *)self dynamicEndOffset];
        v24 = v25;
      }

      uiLevelEntries3 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
      v27 = [uiLevelEntries3 count];

      if (v27 <= v14)
      {
        v29 = 0;
        v28 = 0;
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v65 = v13;
        do
        {
          v61 = intValue;
          v30 = v14++;
          while (1)
          {
            v31 = v21;
            uiLevelEntries4 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
            v21 = [uiLevelEntries4 objectAtIndexedSubscript:v17];

            [v66 timeIntervalSince1970];
            v34 = v33;
            entryDate = [v21 entryDate];
            [entryDate timeIntervalSince1970];
            v37 = v36;

            if (v34 < v37)
            {
LABEL_27:
              v14 = v30;
              v13 = v65;
              goto LABEL_28;
            }

            [v11 timeIntervalSince1970];
            v39 = v38;
            entryDate2 = [v21 entryDate];
            [entryDate2 timeIntervalSince1970];
            v42 = v41;

            if (v39 <= v42)
            {
              break;
            }

            ++v30;
            uiLevelEntries5 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
            v44 = [uiLevelEntries5 count];

            ++v14;
            v17 = v30;
            if (v44 <= v30)
            {
              goto LABEL_27;
            }
          }

          v45 = [v21 objectForKeyedSubscript:@"Level"];
          intValue2 = [v45 intValue];

          if (v61 > intValue2)
          {
            v47 = [v21 objectForKeyedSubscript:@"Level"];
            v48 = v61 - [v47 intValue];

            v29 = (v48 + v29);
            [v66 timeIntervalSince1970];
            v50 = v49 - v24;
            entryDate3 = [v21 entryDate];
            [entryDate3 timeIntervalSince1970];
            v53 = v52;

            if (v50 >= v53)
            {
              v54 = v48;
            }

            else
            {
              v54 = 0;
            }

            v28 = (v54 + v28);
          }

          v55 = [v21 objectForKeyedSubscript:@"Level"];
          intValue = [v55 intValue];

          v17 = v14;
          uiLevelEntries6 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self uiLevelEntries];
          v57 = [uiLevelEntries6 count];

          v58 = v57 > v14;
          v13 = v65;
        }

        while (v58);
      }

LABEL_28:
      v59 = [MEMORY[0x277CCABB0] numberWithInt:v29];
      [v64 addObject:v59];

      v60 = [MEMORY[0x277CCABB0] numberWithInt:v28];
      [v63 addObject:v60];

      ++v13;
    }

    while (v13 != v62);
  }

  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setResultArray:v64];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setDynamicResultArray:v63];
}

- (id)result
{
  v10[2] = *MEMORY[0x277D85DE8];
  isDynamicEnd = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self isDynamicEnd];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setUiLevelEntries:0];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setDynamicEndOffset:0.0];
  [(PLBatteryUIResponseTypeIOSUISOCDrain *)self setIsDynamicEnd:0];
  if (isDynamicEnd)
  {
    v9[0] = @"FullDay";
    resultArray = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self resultArray];
    v9[1] = @"Dynamic";
    v10[0] = resultArray;
    dynamicResultArray = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self dynamicResultArray];
    v10[1] = dynamicResultArray;
    resultArray2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  else
  {
    resultArray2 = [(PLBatteryUIResponseTypeIOSUISOCDrain *)self resultArray];
  }

  v7 = *MEMORY[0x277D85DE8];

  return resultArray2;
}

@end