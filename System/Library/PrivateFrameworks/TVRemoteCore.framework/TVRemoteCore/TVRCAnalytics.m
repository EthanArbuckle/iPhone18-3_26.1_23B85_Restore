@interface TVRCAnalytics
+ (id)sharedInstance;
- (id)_connectionDictionaryForType:(id)a3 status:(id)a4 reason:(id)a5;
- (id)_presentationSourceEventDictionaryFor:(id)a3;
- (id)_spinnerShownDictionaryFor:(id)a3;
- (void)logConnectingSpinnerShown:(id)a3;
- (void)logConnectionStatus:(int64_t)a3 type:(int64_t)a4 reason:(int64_t)a5;
- (void)logFindingSessionStatistics:(id)a3;
- (void)logPresentationFrom:(id)a3;
- (void)logSessionStatistics:(id)a3;
- (void)logShortcutActionRunWithType:(id)a3;
@end

@implementation TVRCAnalytics

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[TVRCAnalytics sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __31__TVRCAnalytics_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)logPresentationFrom:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (id)_presentationSourceEventDictionaryFor:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"source";
  v9[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)logConnectingSpinnerShown:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

id __43__TVRCAnalytics_logConnectingSpinnerShown___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
    v3 = [*(a1 + 40) _spinnerShownDictionaryFor:@"connecting"];
    [v2 addEntriesFromDictionary:v3];
  }

  else
  {
    v2 = [*(a1 + 40) _spinnerShownDictionaryFor:@"connecting"];
  }

  return v2;
}

- (id)_spinnerShownDictionaryFor:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"type";
  v9[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __37__TVRCAnalytics_logDeviceQueryCount___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"deviceQueryCount";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logConnectionStatus:(int64_t)a3 type:(int64_t)a4 reason:(int64_t)a5
{
  if ((a3 - 1) > 2)
  {
    v7 = &stru_287E5AB30;
  }

  else
  {
    v7 = off_279D82868[a3 - 1];
  }

  v8 = TVRCDeviceConnectionTypeDescription(a4);
  if (a3 == 1)
  {
    if ((a5 - 1) > 3)
    {
      v9 = @"undefinedReason";
    }

    else
    {
      v9 = off_279D82880[a5 - 1];
    }
  }

  else
  {
    v9 = &stru_287E5AB30;
  }

  v11 = v8;
  v12 = v9;
  v10 = v8;
  AnalyticsSendEventLazy();
}

- (id)_connectionDictionaryForType:(id)a3 status:(id)a4 reason:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v11 = v10;
  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"type"];
  }

  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:@"status"];
  }

  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:@"reason"];
  }

  return v11;
}

- (void)logShortcutActionRunWithType:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

id __46__TVRCAnalytics_logShortcutActionRunWithType___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"type";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logSessionStatistics:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v5 = [v3 sessionStartTime];

  if (v5)
  {
    v6 = [v3 sessionStartTime];
    [v6 timeIntervalSinceNow];
    v8 = fabs(v7);

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    [v4 setObject:v9 forKeyedSubscript:@"duration"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "usedRTI")}];
  [v4 setObject:v10 forKeyedSubscript:@"usedRTI"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "usedSiri")}];
  [v4 setObject:v11 forKeyedSubscript:@"usedSiri"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "requiredPairing")}];
  [v4 setObject:v12 forKeyedSubscript:@"requiredPairing"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "directionalControlsEnabled")}];
  [v4 setObject:v13 forKeyedSubscript:@"dcontrolsEnabled"];

  v14 = [v3 launchContextDesc];

  if (v14)
  {
    v15 = [v3 launchContextDesc];
    [v4 setObject:v15 forKeyedSubscript:@"launchContext"];
  }

  v17 = v4;
  v16 = v4;
  AnalyticsSendEventLazy();
}

- (void)logFindingSessionStatistics:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:10];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 sessionEndTime];
  v8 = [v4 sessionStartTime];
  [v7 timeIntervalSinceDate:v8];
  v9 = [v6 numberWithDouble:?];
  [v5 setObject:v9 forKeyedSubscript:@"sessionDuration"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [v4 firstMeasurementTime];
  v12 = [v4 sessionStartTime];
  [v11 timeIntervalSinceDate:v12];
  v13 = [v10 numberWithDouble:?];
  [v5 setObject:v13 forKeyedSubscript:@"timeToFirstMeasurement"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "remoteIsConnectedToATV")}];
  [v5 setObject:v14 forKeyedSubscript:@"remoteIsConnectedToATV"];

  v15 = MEMORY[0x277CCABB0];
  [v4 startingProximityMeasurement];
  v16 = [v15 numberWithDouble:?];
  [v5 setObject:v16 forKeyedSubscript:@"startingProximityMeasurement"];

  v17 = MEMORY[0x277CCABB0];
  [v4 endingProximityMeasurement];
  v18 = [v17 numberWithDouble:?];
  [v5 setObject:v18 forKeyedSubscript:@"endingProximityMeasurement"];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "numberOfGotCloserRegionTransitions")}];
  [v5 setObject:v19 forKeyedSubscript:@"numberOfGotCloserRegionTransitions"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "numberOfGotFartherRegionTransitions")}];
  [v5 setObject:v20 forKeyedSubscript:@"numberOfGotFartherRegionTransitions"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "gotToHere")}];
  [v5 setObject:v21 forKeyedSubscript:@"gotToHere"];

  v22 = MEMORY[0x277CCABB0];
  [v4 timeToHere];
  v24 = v23;

  v25 = [v22 numberWithDouble:v24];
  [v5 setObject:v25 forKeyedSubscript:@"timeToHere"];

  v27 = v5;
  v26 = v5;
  AnalyticsSendEventLazy();
}

@end