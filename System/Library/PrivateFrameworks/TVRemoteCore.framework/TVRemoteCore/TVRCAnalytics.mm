@interface TVRCAnalytics
+ (id)sharedInstance;
- (id)_connectionDictionaryForType:(id)type status:(id)status reason:(id)reason;
- (id)_presentationSourceEventDictionaryFor:(id)for;
- (id)_spinnerShownDictionaryFor:(id)for;
- (void)logConnectingSpinnerShown:(id)shown;
- (void)logConnectionStatus:(int64_t)status type:(int64_t)type reason:(int64_t)reason;
- (void)logFindingSessionStatistics:(id)statistics;
- (void)logPresentationFrom:(id)from;
- (void)logSessionStatistics:(id)statistics;
- (void)logShortcutActionRunWithType:(id)type;
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

- (void)logPresentationFrom:(id)from
{
  fromCopy = from;
  v3 = fromCopy;
  AnalyticsSendEventLazy();
}

- (id)_presentationSourceEventDictionaryFor:(id)for
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"source";
  v9[0] = for;
  v3 = MEMORY[0x277CBEAC0];
  forCopy = for;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)logConnectingSpinnerShown:(id)shown
{
  shownCopy = shown;
  v3 = shownCopy;
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

- (id)_spinnerShownDictionaryFor:(id)for
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"type";
  v9[0] = for;
  v3 = MEMORY[0x277CBEAC0];
  forCopy = for;
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

- (void)logConnectionStatus:(int64_t)status type:(int64_t)type reason:(int64_t)reason
{
  if ((status - 1) > 2)
  {
    v7 = &stru_287E5AB30;
  }

  else
  {
    v7 = off_279D82868[status - 1];
  }

  v8 = TVRCDeviceConnectionTypeDescription(type);
  if (status == 1)
  {
    if ((reason - 1) > 3)
    {
      v9 = @"undefinedReason";
    }

    else
    {
      v9 = off_279D82880[reason - 1];
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

- (id)_connectionDictionaryForType:(id)type status:(id)status reason:(id)reason
{
  typeCopy = type;
  statusCopy = status;
  reasonCopy = reason;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v11 = v10;
  if (typeCopy)
  {
    [v10 setObject:typeCopy forKeyedSubscript:@"type"];
  }

  if (statusCopy)
  {
    [v11 setObject:statusCopy forKeyedSubscript:@"status"];
  }

  if (reasonCopy)
  {
    [v11 setObject:reasonCopy forKeyedSubscript:@"reason"];
  }

  return v11;
}

- (void)logShortcutActionRunWithType:(id)type
{
  typeCopy = type;
  v3 = typeCopy;
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

- (void)logSessionStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  sessionStartTime = [statisticsCopy sessionStartTime];

  if (sessionStartTime)
  {
    sessionStartTime2 = [statisticsCopy sessionStartTime];
    [sessionStartTime2 timeIntervalSinceNow];
    v8 = fabs(v7);

    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    [v4 setObject:v9 forKeyedSubscript:@"duration"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statisticsCopy, "usedRTI")}];
  [v4 setObject:v10 forKeyedSubscript:@"usedRTI"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statisticsCopy, "usedSiri")}];
  [v4 setObject:v11 forKeyedSubscript:@"usedSiri"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statisticsCopy, "requiredPairing")}];
  [v4 setObject:v12 forKeyedSubscript:@"requiredPairing"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statisticsCopy, "directionalControlsEnabled")}];
  [v4 setObject:v13 forKeyedSubscript:@"dcontrolsEnabled"];

  launchContextDesc = [statisticsCopy launchContextDesc];

  if (launchContextDesc)
  {
    launchContextDesc2 = [statisticsCopy launchContextDesc];
    [v4 setObject:launchContextDesc2 forKeyedSubscript:@"launchContext"];
  }

  v17 = v4;
  v16 = v4;
  AnalyticsSendEventLazy();
}

- (void)logFindingSessionStatistics:(id)statistics
{
  v3 = MEMORY[0x277CBEB38];
  statisticsCopy = statistics;
  v5 = [v3 dictionaryWithCapacity:10];
  v6 = MEMORY[0x277CCABB0];
  sessionEndTime = [statisticsCopy sessionEndTime];
  sessionStartTime = [statisticsCopy sessionStartTime];
  [sessionEndTime timeIntervalSinceDate:sessionStartTime];
  v9 = [v6 numberWithDouble:?];
  [v5 setObject:v9 forKeyedSubscript:@"sessionDuration"];

  v10 = MEMORY[0x277CCABB0];
  firstMeasurementTime = [statisticsCopy firstMeasurementTime];
  sessionStartTime2 = [statisticsCopy sessionStartTime];
  [firstMeasurementTime timeIntervalSinceDate:sessionStartTime2];
  v13 = [v10 numberWithDouble:?];
  [v5 setObject:v13 forKeyedSubscript:@"timeToFirstMeasurement"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statisticsCopy, "remoteIsConnectedToATV")}];
  [v5 setObject:v14 forKeyedSubscript:@"remoteIsConnectedToATV"];

  v15 = MEMORY[0x277CCABB0];
  [statisticsCopy startingProximityMeasurement];
  v16 = [v15 numberWithDouble:?];
  [v5 setObject:v16 forKeyedSubscript:@"startingProximityMeasurement"];

  v17 = MEMORY[0x277CCABB0];
  [statisticsCopy endingProximityMeasurement];
  v18 = [v17 numberWithDouble:?];
  [v5 setObject:v18 forKeyedSubscript:@"endingProximityMeasurement"];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(statisticsCopy, "numberOfGotCloserRegionTransitions")}];
  [v5 setObject:v19 forKeyedSubscript:@"numberOfGotCloserRegionTransitions"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(statisticsCopy, "numberOfGotFartherRegionTransitions")}];
  [v5 setObject:v20 forKeyedSubscript:@"numberOfGotFartherRegionTransitions"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statisticsCopy, "gotToHere")}];
  [v5 setObject:v21 forKeyedSubscript:@"gotToHere"];

  v22 = MEMORY[0x277CCABB0];
  [statisticsCopy timeToHere];
  v24 = v23;

  v25 = [v22 numberWithDouble:v24];
  [v5 setObject:v25 forKeyedSubscript:@"timeToHere"];

  v27 = v5;
  v26 = v5;
  AnalyticsSendEventLazy();
}

@end