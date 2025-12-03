@interface PLBatteryUIResponseTypeOngoingDeviceSetupInsight
- (BOOL)didUpgradeInLast:(double)last;
- (BOOL)shouldShowSuggestionThroughOverrides;
- (id)result;
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeOngoingDeviceSetupInsight

- (void)configure:(id)configure
{
  v4 = [configure objectForKeyedSubscript:@"end"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6];
  [(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self setEnd:v7];

  v8 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [v8 doubleValue];
  [(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self setLastUpgradeTimestamp:?];
}

- (void)run
{
  if ([(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self shouldShowSuggestionThroughOverrides])
  {

    [(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self setSuggest:1];
  }

  else
  {
    v3 = *MEMORY[0x277CBF040];
    v4 = *MEMORY[0x277CBF030];
    +[PLUtilities containerPath];
    v11 = _CFPreferencesCopyValueWithContainer();
    if ([(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self didUpgradeInLast:604800.0])
    {
      responderService = [(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self responderService];
      v6 = [responderService getBreakdownForLength:86400 fromCachedLength:1296000 forBucketSize:86400];

      v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIPerAppBreakdownKey"];
      v8 = [v7 objectForKeyedSubscript:@"DeviceSetup"];

      if (v8)
      {
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        v10 = [v9 intValue] > 2;
      }

      else
      {
        v10 = 0;
      }

      -[PLBatteryUIResponseTypeOngoingDeviceSetupInsight setSuggest:](self, "setSuggest:", ([v11 BOOLValue] | v10) & 1);
    }

    else
    {
      [(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self setSuggest:0];
    }
  }
}

- (id)result
{
  if (![(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self suggest])
  {
    return MEMORY[0x277CBEC10];
  }

  ADClientSetValueForScalarKey();
  v3 = objc_opt_new();
  [v3 setObject:@"insight" forKeyedSubscript:@"category"];
  [v3 setObject:@"deviceSetup" forKeyedSubscript:@"type"];
  v9 = v3;
  v4 = v3;
  AnalyticsSendEventLazy();
  v5 = MEMORY[0x277CBEAA8];
  [(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self lastUpgradeTimestamp];
  v6 = [v5 dateWithTimeIntervalSince1970:?];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:v6];

  AnalyticsSendEventLazy();
  return &unk_28714AA98;
}

id __58__PLBatteryUIResponseTypeOngoingDeviceSetupInsight_result__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"duration";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldShowSuggestionThroughOverrides
{
  v2 = +[PLUtilities inBUIDemoMode];
  if (v2)
  {
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_DEVICESETUP_SUGGESTION_SHOW"];
    bOOLValue = [v3 BOOLValue];

    LOBYTE(v2) = bOOLValue;
  }

  return v2;
}

- (BOOL)didUpgradeInLast:(double)last
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v7 = v6;
  [(PLBatteryUIResponseTypeOngoingDeviceSetupInsight *)self lastUpgradeTimestamp];
  v9 = v7 - v8;

  return v9 <= last;
}

@end