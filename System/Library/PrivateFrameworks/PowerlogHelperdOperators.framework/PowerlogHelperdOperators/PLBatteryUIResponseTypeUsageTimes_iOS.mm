@interface PLBatteryUIResponseTypeUsageTimes_iOS
- (BOOL)energyEntryValidForAdjustment:(id)a3;
- (BOOL)gatherDependencies;
- (_PLTimeIntervalRange)getDataRange:(id)a3;
- (id)entriesInRange:(_PLTimeIntervalRange)a3 fromEntries:(id)a4;
- (id)result;
- (int)adjustScreenOffTimeWithGraphValue:(double)a3 screenOnTime:(double)a4 andEnergyEntries:(id)a5;
- (int)adjustScreenOnTimeWithGraphValue:(double)a3 andEnergyEntries:(id)a4;
- (void)configure:(id)a3;
- (void)gatherDependencies;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeUsageTimes_iOS

- (void)configure:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setEnd:v12];

  v13 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self end];
  v14 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self start];
  [v13 timeIntervalSinceDate:v14];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setRange:?];

  v15 = [v4 objectForKeyedSubscript:@"bucket"];

  [v15 doubleValue];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBucketSize:?];

  v16 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self start];
  v17 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self end];
  [v16 timeIntervalSince1970];
  v19 = v18;
  [v17 timeIntervalSince1970];
  v21 = v20 - v19;

  v22 = [MEMORY[0x277CBEAA8] monotonicDate];
  v23 = [v22 convertFromMonotonicToSystem];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self getDataRange:v23];
  v25 = v24;
  v27 = v26;

  v28 = v19 + -1800.0;
  v29 = v19 + -1800.0 + v21;
  if (v19 + -1800.0 >= v25 || v29 <= v25)
  {
    v30 = v25 + v27;
    if (v25 >= v28 || v30 <= v28)
    {
      v31 = 0.0;
      if (v28 != v25 || v21 <= 0.0)
      {
        v33 = 0.0;
        goto LABEL_15;
      }

      v32 = v27 <= 0.0;
      v33 = 0.0;
      if (v32)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v30 = v25 + v27;
  }

  if (v28 >= v25)
  {
    v31 = v28;
  }

  else
  {
    v31 = v25;
  }

  if (v29 >= v30)
  {
    v29 = v30;
  }

  v33 = v29 - v31;
LABEL_15:
  v37 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
  v34 = [v37 storage];
  v35 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v36 = [v34 entriesForKey:v35 inTimeRange:0 withFilters:{v31, v33}];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setAggregateEntries:v36];
}

- (void)run
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 67109376;
  v2[1] = 0;
  v3 = 1024;
  v4 = 0;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "Usage Times: is24hrBuckets = %d, is10dBuckets = %d", v2, 0xEu);
  v1 = *MEMORY[0x277D85DE8];
}

- (id)result
{
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setAggregateEntries:0];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBatteryBreakdown_lastDay:0];
  [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBatteryBreakdown_buckets:0];

  return [(PLBatteryUIResponseTypeUsageTimes_iOS *)self resultDictionary];
}

- (BOOL)gatherDependencies
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self batteryBreakdown_lastDay];

  if (!v3)
  {
    v4 = PLBatteryUsageUIKeyFromConfiguration();
    v5 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
    v6 = [v5 responseCache];
    v7 = [v6 objectForKeyedSubscript:&unk_287145A18];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v8 objectForKeyedSubscript:@"result"];
    v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];

    if (!v10)
    {
      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponseTypeUsageTimes_iOS gatherDependencies];
      }

      goto LABEL_16;
    }

    [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBatteryBreakdown_lastDay:v10];
  }

  v11 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self batteryBreakdown_buckets];

  if (!v11)
  {
    v30[0] = @"end";
    v12 = MEMORY[0x277CCABB0];
    v13 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self end];
    v14 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self start];
    [v13 timeIntervalSinceDate:v14];
    v15 = [v12 numberWithDouble:?];
    v30[1] = @"bucket";
    v31[0] = v15;
    v16 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeUsageTimes_iOS *)self bucketSize];
    v17 = [v16 numberWithDouble:?];
    v31[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v4 = PLBatteryUsageUIKeyFromConfiguration();

    v19 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
    v20 = [v19 responseCache];
    v21 = [v20 objectForKeyedSubscript:&unk_287145A18];
    v22 = [v21 objectForKeyedSubscript:v4];
    v23 = [v22 objectForKeyedSubscript:@"result"];
    v24 = [v23 objectForKeyedSubscript:@"PLBatteryUIBreakdownKey"];

    if (v24)
    {
      [(PLBatteryUIResponseTypeUsageTimes_iOS *)self setBatteryBreakdown_buckets:v24];

      goto LABEL_7;
    }

    v27 = PLLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PLBatteryUIResponseTypeUsageTimes_iOS *)self gatherDependencies];
    }

LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

LABEL_7:
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeUsageTimes_iOS gatherDependencies];
  }

  v25 = 1;
LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
  return v25;
}

- (int)adjustScreenOnTimeWithGraphValue:(double)a3 andEnergyEntries:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = v5;
      v9 = *v25;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if ([(PLBatteryUIResponseTypeUsageTimes_iOS *)self energyEntryValidForAdjustment:v12])
          {
            v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v13 doubleValue];
            v15 = v14;
            v16 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppCallOffScreenTimeKey"];
            [v16 doubleValue];
            v18 = v15 - v17;

            if (v18 >= 0.0)
            {
              v19 = v18;
            }

            else
            {
              v19 = 0.0;
            }

            v10 = v10 + floor(v19 / 60.0) * 60.0;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
      v20 = v10;
      v5 = v23;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (int)adjustScreenOffTimeWithGraphValue:(double)a3 screenOnTime:(double)a4 andEnergyEntries:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if ([v8 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    v11 = 0.0;
    v12 = 0.0;
    if (v10)
    {
      v13 = v10;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if ([(PLBatteryUIResponseTypeUsageTimes_iOS *)self energyEntryValidForAdjustment:v16])
          {
            v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v17 doubleValue];
            v19 = v18;
            v20 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppCallOffScreenTimeKey"];
            [v20 doubleValue];
            v22 = v19 + v21;

            v12 = v12 + floor(v22 / 60.0) * 60.0;
            if (v22 > v11)
            {
              v11 = v22;
            }
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    if (v12 >= a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = v12;
    }

    v24 = v11 - a4;
    if (v11 - a4 < 0.0)
    {
      v24 = 0.0;
    }

    if (v23 < v24)
    {
      v23 = v24;
    }

    v25 = v23;
    v8 = v28;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)energyEntryValidForAdjustment:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  v5 = [v4 intValue];

  v6 = [v3 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  v7 = ([v6 intValue] + 0.5);

  v8 = [v3 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v3 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v3 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

  v15 = v10 + v13;
  if (v7 <= 0 && v15 < 60.0)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_11;
  }

  v17 = 0;
  if (v5 != 5 && v5 != 2)
  {
    if (v5 != 1 || ([v14 isEqualToString:{@"PowerOutAccessories", v15}] & 1) == 0)
    {
      v17 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:

  return v17;
}

- (_PLTimeIntervalRange)getDataRange:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D3F5B8];
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v38 = [MEMORY[0x277D3F128] entryKeyForType:v5 andName:*MEMORY[0x277D3F318]];
  v7 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
  v8 = [v7 storage];
  v9 = [v8 firstEntryForKey:v6];

  if (v9)
  {
    v10 = [v9 entryDate];
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }
  }

  else
  {
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeUsageTimes_iOS getDataRange:];
    }

    v10 = v4;
  }

  v13 = [(PLBatteryUIResponseTypeUsageTimes_iOS *)self responderService];
  v14 = [v13 storage];
  v15 = [v14 firstEntryForKey:v38];

  if (v15)
  {
    v16 = [v15 entryDate];
    v17 = PLLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIService getDataRangeWithNow:];
    }
  }

  else
  {
    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeUsageTimes_iOS getDataRange:];
    }

    v16 = v4;
  }

  v19 = [v16 laterDate:v10];
  v20 = v4;
  [v19 timeIntervalSince1970];
  v22 = v21;
  [v20 timeIntervalSince1970];
  v24 = v23;

  v25 = v24 - v22;
  v26 = PLLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = MEMORY[0x277CCACA8];
    v37 = v9;
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
    v28 = v15;
    v29 = v10;
    v31 = v30 = v6;
    v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22 + v25];
    v33 = [v27 stringWithFormat:@"Start: %@, End %@", v31, v32];

    v9 = v37;
    v6 = v30;
    v10 = v29;
    v15 = v28;
    *buf = 138412290;
    v40 = v33;
    _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_INFO, "dataRange: %@", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
  v35 = v22;
  v36 = v25;
  result.length = v36;
  result.location = v35;
  return result;
}

- (id)entriesInRange:(_PLTimeIntervalRange)a3 fromEntries:(id)a4
{
  length = a3.length;
  location = a3.location;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = location + length;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 entryDate];
        if (v15)
        {
          v16 = v15;
          [v15 timeIntervalSince1970];
          v18 = v17;

          if (location <= v18 && v18 < v12)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)gatherDependencies
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 bucketSize];
  v3 = PLBatteryUsageUIStringForQueryRange();
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Usage Times: missing %@ buckets", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end