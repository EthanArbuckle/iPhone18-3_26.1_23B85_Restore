@interface PLBatteryUIResponseTypeAutoBrightnessSuggestion
- (BOOL)shouldShowSuggestionThroughOverrides;
- (id)result;
- (void)configure:(id)a3;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeAutoBrightnessSuggestion

- (void)configure:(id)a3
{
  v8 = [MEMORY[0x277D3F180] objectForKey:@"BKEnableALS" forApplicationID:@"com.apple.backboardd" synchronize:1];
  [(PLBatteryUIResponseTypeAutoBrightnessSuggestion *)self setHasALSPowerSaved:+[PLDisplayAgent shouldLogALSPowerSaved]];
  -[PLBatteryUIResponseTypeAutoBrightnessSuggestion setIsALSEnabled:](self, "setIsALSEnabled:", [v8 BOOLValue]);
  v4 = [(PLBatteryUIResponseTypeAutoBrightnessSuggestion *)self responderService];
  v5 = [v4 storage];
  v6 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
  v7 = [v5 entriesForKey:v6];
  [(PLBatteryUIResponseTypeAutoBrightnessSuggestion *)self setAlsPowerSavedEntries:v7];
}

- (void)run
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 67109120;
  v4[1] = [a1 isALSEnabled];
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "Auto Brightness Suggestion: ALS is %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)result
{
  v13[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeAutoBrightnessSuggestion *)self setAlsPowerSavedEntries:0];
  if ([(PLBatteryUIResponseTypeAutoBrightnessSuggestion *)self suggest])
  {
    ADClientSetValueForScalarKey();
    v3 = objc_opt_new();
    [v3 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v3 setObject:@"autoBrightness" forKeyedSubscript:@"type"];
    v10 = MEMORY[0x277D85DD0];
    v11 = v3;
    v4 = v3;
    AnalyticsSendEventLazy();
    v12[0] = @"PLBatteryUISuggestionTypeKey";
    v12[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v13[0] = &unk_2871456B8;
    v5 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeAutoBrightnessSuggestion *)self energyPercent:v10];
    v6 = [v5 numberWithDouble:?];
    v13[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)shouldShowSuggestionThroughOverrides
{
  v2 = +[PLUtilities inBUIDemoMode];
  if (v2)
  {
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_AUTOBRIGHTNESS_SUGGESTION_SHOW"];
    v4 = [v3 BOOLValue];

    LOBYTE(v2) = v4;
  }

  return v2;
}

@end