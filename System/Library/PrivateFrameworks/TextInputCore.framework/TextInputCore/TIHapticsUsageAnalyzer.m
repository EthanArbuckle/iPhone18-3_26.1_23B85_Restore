@interface TIHapticsUsageAnalyzer
+ (id)bucketForTime:(double)a3;
- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5;
- (TIHapticsUsageAnalyzer)init;
- (void)dispatchIdleEventType:(id)a3 idleTime:(double)a4 session:(id)a5;
- (void)dispatchSessionEventWithActiveTime:(double)a3 visibleTime:(double)a4 session:(id)a5;
- (void)registerEventSpec;
@end

@implementation TIHapticsUsageAnalyzer

- (void)registerEventSpec
{
  v24[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D6F300];
  v3 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"keyClicksEnabled"];
  v24[0] = v3;
  v4 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"ringerSwitchOn"];
  v24[1] = v4;
  v5 = [MEMORY[0x277D6F308] BOOLeanFieldSpecWithName:@"visceralEnabled"];
  v24[2] = v5;
  v6 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"activeTime"];
  v24[3] = v6;
  v7 = [MEMORY[0x277D6F308] integerFieldSpecWithName:@"visibleTime"];
  v24[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v9 = [v2 eventSpecWithName:@"SoundAndHaptic.Session" inputModeRequired:0 fieldSpecs:v8];

  v10 = [MEMORY[0x277D6F318] sharedInstance];
  [v10 registerEventSpec:v9];

  v11 = MEMORY[0x277D6F300];
  v12 = MEMORY[0x277D6F308];
  v13 = [objc_opt_class() idleTimeBuckets];
  v14 = [v12 stringFieldSpecWithName:@"idleBucket" allowedValues:v13];
  v15 = MEMORY[0x277D6F308];
  v22[0] = @"first";
  v22[1] = @"intermediate";
  v22[2] = @"last";
  v23[0] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v17 = [v15 stringFieldSpecWithName:@"idleType" allowedValues:v16];
  v23[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v19 = [v11 eventSpecWithName:@"SoundAndHaptic.IdlePeriods" inputModeRequired:0 fieldSpecs:v18];

  v20 = [MEMORY[0x277D6F318] sharedInstance];
  [v20 registerEventSpec:v19];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)dispatchIdleEventType:(id)a3 idleTime:(double)a4 session:(id)a5
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"idleType";
  v11[1] = @"idleBucket";
  v12[0] = a3;
  v6 = a3;
  v7 = [objc_opt_class() bucketForTime:a4];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = [MEMORY[0x277D6F318] sharedInstance];

  [v9 dispatchEventWithName:@"SoundAndHaptic.IdlePeriods" payload:v8 testingParameters:0 allowSparsePayload:1];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)dispatchSessionEventWithActiveTime:(double)a3 visibleTime:(double)a4 session:(id)a5
{
  v26[5] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v8 = [v7 BOOLForPreferenceKey:*MEMORY[0x277D6F9E0]];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"keyboard-audio", @"com.apple.preferences.sounds", &keyExistsAndHasValidFormat);
  v10 = keyExistsAndHasValidFormat;
  v11 = dispatchSessionEventWithActiveTime_visibleTime_session__notifyToken;
  if (dispatchSessionEventWithActiveTime_visibleTime_session__notifyToken == -1)
  {
    notify_register_check("com.apple.springboard.ringerstate", &dispatchSessionEventWithActiveTime_visibleTime_session__notifyToken);
    v11 = dispatchSessionEventWithActiveTime_visibleTime_session__notifyToken;
  }

  if (v10)
  {
    v12 = AppBooleanValue == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  state64 = 0;
  notify_get_state(v11, &state64);
  v14 = state64 != 0;
  v25[0] = @"activeTime";
  v15 = [MEMORY[0x277CCABB0] numberWithLong:llround(a3)];
  v26[0] = v15;
  v25[1] = @"visibleTime";
  v16 = [MEMORY[0x277CCABB0] numberWithLong:llround(a4)];
  v26[1] = v16;
  v25[2] = @"keyClicksEnabled";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v26[2] = v17;
  v25[3] = @"ringerSwitchOn";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v26[3] = v18;
  v25[4] = @"visceralEnabled";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v26[4] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v21 = [MEMORY[0x277D6F318] sharedInstance];
  [v21 dispatchEventWithName:@"SoundAndHaptic.Session" payload:v20 testingParameters:0 allowSparsePayload:1];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)analyzeSession:(id)a3 alignedSession:(id)a4 withConfidence:(unint64_t)a5
{
  v45 = self;
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  v9 = [MEMORY[0x277CCAC38] processInfo];
  [v9 systemUptime];
  v11 = v10;

  v12 = [v5 startTime];
  [v12 timeIntervalSince1970];
  v14 = v11 + v13 - v8;

  v15 = [v5 endTime];
  [v15 timeIntervalSince1970];
  v17 = v11 + v16 - v8;

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v46 = v5;
  obj = [v5 userActionHistory];
  v19 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v54;
    v47 = *v54;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v54 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v53 + 1) + 8 * i);
        if (![v23 actionType])
        {
          v24 = v23;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v25 = [v24 allTouches];
          v26 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v50;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v50 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [*(*(&v49 + 1) + 8 * j) timestamp];
                if (v30 >= v14 && v30 <= v17)
                {
                  v32 = [MEMORY[0x277CCABB0] numberWithDouble:?];
                  [v18 addObject:v32];
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v27);
          }

          v21 = v47;
        }
      }

      v20 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v20);
  }

  [v18 sortUsingComparator:&__block_literal_global_715];
  v33 = [v18 count];
  v34 = 0;
  v35 = 0.0;
  v36 = v14;
  do
  {
    if (v34 >= v33)
    {
      v42 = v17 - v36;
      v40 = @"last";
    }

    else
    {
      v37 = [v18 objectAtIndexedSubscript:v34];
      [v37 doubleValue];
      v39 = v38;

      if (v34)
      {
        v40 = @"intermediate";
      }

      else
      {
        v40 = @"first";
      }

      if (v34)
      {
        v41 = v36;
      }

      else
      {
        v41 = v14;
      }

      v42 = v39 - v41;
      v36 = v39;
    }

    if (v42 >= 0.5)
    {
      v35 = v35 + v42;
      [(TIHapticsUsageAnalyzer *)v45 dispatchIdleEventType:v40 idleTime:v46 session:?];
    }

    ++v34;
  }

  while (v34 <= v33);
  [(TIHapticsUsageAnalyzer *)v45 dispatchSessionEventWithActiveTime:v46 visibleTime:v17 - v14 - v35 session:?];

  v43 = *MEMORY[0x277D85DE8];
  return 1;
}

- (TIHapticsUsageAnalyzer)init
{
  v5.receiver = self;
  v5.super_class = TIHapticsUsageAnalyzer;
  v2 = [(TIHapticsUsageAnalyzer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TIHapticsUsageAnalyzer *)v2 registerEventSpec];
  }

  return v3;
}

+ (id)bucketForTime:(double)a3
{
  v4 = [a1 idleTimeBuckets];
  v5 = v4;
  v6 = (a3 + a3);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = v6 - 1;
  v8 = [v4 count];
  if (v8 - 1 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8 - 1;
  }

  v10 = [v5 objectAtIndexedSubscript:v9];

  return v10;
}

@end