@interface PLBatteryUIResponseTypeBatteryBreakdownAggregation
- (_PLTimeIntervalRange)generateRange:(_PLTimeIntervalRange)result withDataRange:(_PLTimeIntervalRange)a4;
- (void)addFgEnergyForMetrics:(id)a3 qualificationID:(id)a4 rootNodeQualificationEnergy:(id)a5 energyEntry:(id)a6;
- (void)addRNEForMetrics:(id)a3 rootNodeEnergy:(id)a4 energyEntry:(id)a5;
- (void)bgLocationAudioTimeApps:(id)a3;
- (void)bgLocationAudioTimeRuntimes:(id)a3 bundleID:(id)a4;
- (void)filterEnergyEntries:(id)a3;
- (void)initBackgroundLocationAudioTime;
- (void)populateBackgroundLocationAudioTime:(id)a3 bundleID:(id)a4;
- (void)populateEnergyBucketKeysWithEntries:(id)a3;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdownAggregation

- (_PLTimeIntervalRange)generateRange:(_PLTimeIntervalRange)result withDataRange:(_PLTimeIntervalRange)a4
{
  if (a4.location == 0.0 && a4.length == 0.0)
  {
    location = result.location;
    goto LABEL_21;
  }

  v5 = result.location + result.length;
  if (result.location < a4.location)
  {
    v6 = v5 == a4.location;
    v7 = v5 < a4.location;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && !v6)
  {
    v8 = a4.location + a4.length;
LABEL_14:
    if (result.location >= a4.location)
    {
      location = a4.location;
    }

    else
    {
      location = result.location;
    }

    if (v5 >= v8)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    result.length = v9 - location;
    goto LABEL_21;
  }

  v8 = a4.location + a4.length;
  if (a4.location < result.location && v8 > result.location)
  {
    goto LABEL_14;
  }

  location = 0.0;
  if (result.location != a4.location || result.length <= 0.0)
  {
    result.length = 0.0;
    goto LABEL_21;
  }

  result.length = 0.0;
  if (a4.length > 0.0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v10 = location;
  result.location = v10;
  return result;
}

- (void)populateEnergyBucketKeysWithEntries:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v34 = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = v3;
  obj = [v3 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v35 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v35)
  {
    v33 = *v40;
    do
    {
      v4 = 0;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v4;
        v5 = *(*(&v39 + 1) + 8 * v4);
        v6 = 1;
        do
        {
          v7 = MEMORY[0x277CCACA8];
          v8 = [MEMORY[0x277CCABB0] numberWithShort:v6];
          v9 = [v7 stringWithFormat:@"%@", v8];

          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v9];
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bg", v9];
          v12 = [v5 objectForKeyedSubscript:v9];
          v13 = [v12 intValue];

          v14 = [v5 objectForKeyedSubscript:v10];
          v15 = [v14 intValue];

          if ([(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self isForegroundOnlyBucket:v6])
          {
            v15 = v13;
            if (v13 >= 1)
            {
              v16 = [MEMORY[0x277CCABB0] numberWithInt:v13];
              [v5 setObject:v16 forKeyedSubscript:v10];

              v15 = v13;
            }
          }

          v17 = (v13 - v15);
          if (v17 >= 1)
          {
            v18 = [v5 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v18 doubleValue];
            v20 = v19;

            v21 = [v5 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v21 doubleValue];
            v23 = v22;

            v24 = v20 + v23;
            if (v20 + v23 <= 0.0 || ((v24 = v20 / v24 * v13, v25 = v24, v17 >= v24) ? (v17 = v25) : (v17 = v17), v25 >= 1))
            {
              v26 = [MEMORY[0x277CCABB0] numberWithInt:{v17, v24}];
              [v5 setObject:v26 forKeyedSubscript:v11];

              v15 = v13 - v17;
              v27 = [MEMORY[0x277CCABB0] numberWithInt:(v13 - v17)];
              [v5 setObject:v27 forKeyedSubscript:v10];
            }
          }

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v37 = [v5 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            *buf = 138413314;
            v44 = v37;
            v45 = 2112;
            v46 = v9;
            v47 = 1024;
            v48 = v13;
            v49 = 1024;
            v50 = v15;
            v51 = 1024;
            v52 = v17;
            _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "%@: %@ total:%d fg:%d bg:%d", buf, 0x28u);
          }

          v29 = v6++;
        }

        while (v29 < 0x11);
        [v34 addObject:v5];
        v4 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v35);
  }

  [v31 setObject:v34 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)addRNEForMetrics:(id)a3 rootNodeEnergy:(id)a4 energyEntry:(id)a5
{
  v18 = a4;
  v8 = a5;
  v9 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getEnergyMetricBucketForRootNodeID:a3];
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithShort:v9];
  v12 = [v10 stringWithFormat:@"%@", v11];

  if (v12)
  {
    v13 = [v18 intValue];
    if (v13 >= 1)
    {
      v14 = v13;
      v15 = MEMORY[0x277CCABB0];
      v16 = [v8 objectForKeyedSubscript:v12];
      v17 = [v15 numberWithInt:{objc_msgSend(v16, "intValue") + v14}];
      [v8 setObject:v17 forKeyedSubscript:v12];
    }
  }
}

- (void)addFgEnergyForMetrics:(id)a3 qualificationID:(id)a4 rootNodeQualificationEnergy:(id)a5 energyEntry:(id)a6
{
  v22 = a3;
  v10 = a5;
  v11 = a6;
  if ([a4 intValue] == 2)
  {
    v12 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getEnergyMetricBucketForRootNodeID:v22];
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithShort:v12];
    v15 = [v13 stringWithFormat:@"%@", v14];

    if (v15)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v15];
      v17 = [v10 intValue];
      if (v17 >= 1)
      {
        v18 = v17;
        v19 = MEMORY[0x277CCABB0];
        v20 = [v11 objectForKeyedSubscript:v16];
        v21 = [v19 numberWithInt:{objc_msgSend(v20, "intValue") + v18}];
        [v11 setObject:v21 forKeyedSubscript:v16];
      }
    }
  }
}

- (void)initBackgroundLocationAudioTime
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundLocationBreakdown:v3];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundLocationPluggedInBreakdown:v4];

  v5 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundAudioBreakdown:v5];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundAudioPluggedInBreakdown:v6];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundLocationAudioBreakdown:v7];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self setBackgroundLocationAudioPluggedInBreakdown:v8];
}

- (void)populateBackgroundLocationAudioTime:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"BackgroundLocationTime"];
  v9 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationBreakdown];
  [v9 setObject:v8 forKeyedSubscript:v6];

  v10 = [v7 objectForKeyedSubscript:@"BackgroundLocationPluggedInTime"];
  v11 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationPluggedInBreakdown];
  [v11 setObject:v10 forKeyedSubscript:v6];

  v12 = [v7 objectForKeyedSubscript:@"BackgroundAudioPlayingTime"];
  v13 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioBreakdown];
  [v13 setObject:v12 forKeyedSubscript:v6];

  v14 = [v7 objectForKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
  v15 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioPluggedInBreakdown];
  [v15 setObject:v14 forKeyedSubscript:v6];

  v16 = [v7 objectForKeyedSubscript:@"BackgroundLocationAudioTime"];
  v17 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioBreakdown];
  [v17 setObject:v16 forKeyedSubscript:v6];

  v19 = [v7 objectForKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];

  v18 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioPluggedInBreakdown];
  [v18 setObject:v19 forKeyedSubscript:v6];
}

- (void)bgLocationAudioTimeRuntimes:(id)a3 bundleID:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = a3;
  v9 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationBreakdown];
  v10 = [v9 objectForKeyedSubscript:v7];
  [v10 doubleValue];
  v11 = [v6 numberWithDouble:?];
  [v8 setObject:v11 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];

  v12 = MEMORY[0x277CCABB0];
  v13 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationPluggedInBreakdown];
  v14 = [v13 objectForKeyedSubscript:v7];
  [v14 doubleValue];
  v15 = [v12 numberWithDouble:?];
  [v8 setObject:v15 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];

  v16 = MEMORY[0x277CCABB0];
  v17 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioBreakdown];
  v18 = [v17 objectForKeyedSubscript:v7];
  [v18 doubleValue];
  v19 = [v16 numberWithDouble:?];
  [v8 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];

  v20 = MEMORY[0x277CCABB0];
  v21 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioPluggedInBreakdown];
  v22 = [v21 objectForKeyedSubscript:v7];
  [v22 doubleValue];
  v23 = [v20 numberWithDouble:?];
  [v8 setObject:v23 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];

  v24 = MEMORY[0x277CCABB0];
  v25 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioBreakdown];
  v26 = [v25 objectForKeyedSubscript:v7];
  [v26 doubleValue];
  v27 = [v24 numberWithDouble:?];
  [v8 setObject:v27 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];

  v28 = MEMORY[0x277CCABB0];
  v31 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioPluggedInBreakdown];
  v29 = [v31 objectForKeyedSubscript:v7];

  [v29 doubleValue];
  v30 = [v28 numberWithDouble:?];
  [v8 setObject:v30 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
}

- (void)bgLocationAudioTimeApps:(id)a3
{
  v4 = a3;
  v29 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationBreakdown];
  v7 = [v6 objectForKeyedSubscript:v29];
  [v7 doubleValue];
  v8 = [v5 numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationPluggedInBreakdown];
  v11 = [v10 objectForKeyedSubscript:v29];
  [v11 doubleValue];
  v12 = [v9 numberWithDouble:?];
  [v4 setObject:v12 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];

  v13 = MEMORY[0x277CCABB0];
  v14 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioBreakdown];
  v15 = [v14 objectForKeyedSubscript:v29];
  [v15 doubleValue];
  v16 = [v13 numberWithDouble:?];
  [v4 setObject:v16 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];

  v17 = MEMORY[0x277CCABB0];
  v18 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundAudioPluggedInBreakdown];
  v19 = [v18 objectForKeyedSubscript:v29];
  [v19 doubleValue];
  v20 = [v17 numberWithDouble:?];
  [v4 setObject:v20 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];

  v21 = MEMORY[0x277CCABB0];
  v22 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioBreakdown];
  v23 = [v22 objectForKeyedSubscript:v29];
  [v23 doubleValue];
  v24 = [v21 numberWithDouble:?];
  [v4 setObject:v24 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];

  v25 = MEMORY[0x277CCABB0];
  v26 = [(PLBatteryUIResponseTypeBatteryBreakdownAggregation *)self backgroundLocationAudioPluggedInBreakdown];
  v27 = [v26 objectForKeyedSubscript:v29];
  [v27 doubleValue];
  v28 = [v25 numberWithDouble:?];
  [v4 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
}

- (void)filterEnergyEntries:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 objectForKeyedSubscript:{@"PLBatteryUIAppArrayKey", 0}];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        v12 = [v11 intValue];

        if ((v12 & 0xFFFFFFFB) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v13 = *MEMORY[0x277D85DE8];
}

@end