@interface PLBatteryUIResponseTypeRecentUsageInsight
- (BOOL)didUpgrade;
- (BOOL)shouldShowSuggestionThroughOverrides;
- (double)getfirstEntryTimestampFromDb;
- (id)result;
- (void)configure:(id)a3;
- (void)didUpgrade;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeRecentUsageInsight

- (void)configure:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"end"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v6];
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setEnd:v7];

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self getfirstEntryTimestampFromDb];
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setFirstEntryTimestamp:?];
  v8 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [v8 doubleValue];
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setLastUpgradeTimestamp:?];

  v9 = *MEMORY[0x277CBF040];
  v10 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  v11 = _CFPreferencesCopyValueWithContainer();
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
    v14 = v13;
  }

  else
  {
    v14 = 864000.0;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMaxTimeValBeforeUpgrade:v14];
  +[PLUtilities containerPath];
  v15 = _CFPreferencesCopyValueWithContainer();
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
    v18 = v17;
  }

  else
  {
    v18 = 259200.0;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMinTimeValBeforeUpgrade:v18];
  +[PLUtilities containerPath];
  v19 = _CFPreferencesCopyValueWithContainer();
  v20 = v19;
  if (v19)
  {
    [v19 doubleValue];
    v22 = v21;
  }

  else
  {
    v22 = 864000.0;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMaxTimeValAfterUpgrade:v22];
  +[PLUtilities containerPath];
  v23 = _CFPreferencesCopyValueWithContainer();
  v24 = v23;
  if (v23)
  {
    [v23 doubleValue];
    v26 = v25;
  }

  else
  {
    v26 = 86400.0;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMinTimeValAfterUpgrade:v26];
  +[PLUtilities containerPath];
  v27 = _CFPreferencesCopyValueWithContainer();
  v28 = v27;
  if (v27)
  {
    [v27 doubleValue];
    v30 = v29;
  }

  else
  {
    v30 = 0.3;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setMinDrainPercentBeforeUpgrade:v30];
  +[PLUtilities containerPath];
  v31 = _CFPreferencesCopyValueWithContainer();
  v32 = v31;
  v33 = 1.3;
  v34 = 1.3;
  if (v31)
  {
    [v31 doubleValue];
    v34 = v35;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setEnergyThresholdForUpgradeInsight:v34];
  +[PLUtilities containerPath];
  v36 = _CFPreferencesCopyValueWithContainer();
  v37 = v36;
  if (v36)
  {
    [v36 doubleValue];
    v33 = v38;
  }

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setForegroundTimeThresholdForUpgradeInsight:v33];
}

- (void)run
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)result
{
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self setBatteryBreakdown_Last10Days:0];
  if (![(PLBatteryUIResponseTypeRecentUsageInsight *)self suggest])
  {
    return MEMORY[0x277CBEC10];
  }

  ADClientSetValueForScalarKey();
  v3 = objc_opt_new();
  [v3 setObject:@"insight" forKeyedSubscript:@"category"];
  [v3 setObject:@"upgradeUsage" forKeyedSubscript:@"type"];
  v6 = v3;
  v4 = v3;
  AnalyticsSendEventLazy();

  return &unk_28714AF48;
}

- (BOOL)didUpgrade
{
  v3 = [(PLBatteryUIResponseTypeRecentUsageInsight *)self end];
  [v3 timeIntervalSince1970];
  v5 = v4;
  [(PLBatteryUIResponseTypeRecentUsageInsight *)self lastUpgradeTimestamp];
  v7 = v6;

  [(PLBatteryUIResponseTypeRecentUsageInsight *)self lastUpgradeTimestamp];
  if (v8 == 0.0)
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeRecentUsageInsight didUpgrade];
    }
  }

  else
  {
    v10 = v5 - v7;
    [(PLBatteryUIResponseTypeRecentUsageInsight *)self minTimeValAfterUpgrade];
    if (v10 <= v11 || ([(PLBatteryUIResponseTypeRecentUsageInsight *)self maxTimeValAfterUpgrade], v10 >= v12))
    {
      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeRecentUsageInsight didUpgrade];
      }
    }

    else
    {
      [(PLBatteryUIResponseTypeRecentUsageInsight *)self lastUpgradeTimestamp];
      v14 = v13;
      [(PLBatteryUIResponseTypeRecentUsageInsight *)self firstEntryTimestamp];
      v16 = v14 - v15;
      [(PLBatteryUIResponseTypeRecentUsageInsight *)self minTimeValBeforeUpgrade];
      if (v16 > v17)
      {
        return 1;
      }

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeRecentUsageInsight didUpgrade];
      }
    }
  }

  return 0;
}

- (double)getfirstEntryTimestampFromDb
{
  v3 = *MEMORY[0x277D3F5B8];
  v4 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  v5 = [MEMORY[0x277D3F128] entryKeyForType:v3 andName:*MEMORY[0x277D3F318]];
  v6 = [MEMORY[0x277D3F128] entryKeyForType:v3 andName:*MEMORY[0x277D3F2F0]];
  v7 = [(PLBatteryUIResponseTypeRecentUsageInsight *)self responderService];
  v8 = [v7 storage];
  v9 = [v8 entryForKey:v4 withID:1];

  v10 = [(PLBatteryUIResponseTypeRecentUsageInsight *)self responderService];
  v11 = [v10 storage];
  v12 = [v11 entryForKey:v5 withID:1];

  v13 = [(PLBatteryUIResponseTypeRecentUsageInsight *)self responderService];
  v14 = [v13 storage];
  v15 = [v14 entryForKey:v6 withID:1];

  v16 = 9.22337204e18;
  if (v9 && v12 && v15)
  {
    v17 = [v9 objectForKeyedSubscript:@"timestamp"];
    [v17 doubleValue];
    v19 = v18;
    v20 = [v12 objectForKeyedSubscript:@"timestamp"];
    [v20 doubleValue];
    v22 = fmax(v19, v21);
    v23 = [v15 objectForKeyedSubscript:@"timestamp"];
    [v23 doubleValue];
    v16 = fmax(v22, v24);
  }

  return v16;
}

- (BOOL)shouldShowSuggestionThroughOverrides
{
  v2 = +[PLUtilities inBUIDemoMode];
  if (v2)
  {
    v3 = [PLUtilities powerlogDefaultForKey:@"BUI_RECENTUSAGE_SUGGESTION_SHOW"];
    v4 = [v3 BOOLValue];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)didUpgrade
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end