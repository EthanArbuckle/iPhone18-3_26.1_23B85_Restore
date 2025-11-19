@interface SBStageManagerEnablementMetric
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
- (BOOL)sendCoreAnalyticsEventWithName:(id)a3 source:(int64_t)a4;
- (SBStageManagerEnablementMetric)init;
- (SBStageManagerEnablementMetric)initWithAnalyticsClient:(id)a3;
- (id)chamoisPreferencesSnapshotWithSource:(int64_t)a3;
@end

@implementation SBStageManagerEnablementMetric

- (SBStageManagerEnablementMetric)initWithAnalyticsClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBStageManagerEnablementMetric;
  v6 = [(SBStageManagerEnablementMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsClient, a3);
  }

  return v7;
}

- (SBStageManagerEnablementMetric)init
{
  v3 = [MEMORY[0x277D65DD0] sharedInstance];
  v4 = [(SBStageManagerEnablementMetric *)self initWithAnalyticsClient:v3];

  return v4;
}

- (id)chamoisPreferencesSnapshotWithSource:(int64_t)a3
{
  v20[6] = *MEMORY[0x277D85DE8];
  v4 = +[SBDefaults localDefaults];
  v5 = [v4 appSwitcherDefaults];

  v6 = [v5 chamoisWindowingEnabled];
  v7 = [v5 chamoisHideStrips];
  v8 = [v5 chamoisHideDock];
  v9 = [v5 chamoisHideStripsExternal];
  v10 = [v5 chamoisHideDockExternal];
  v19[0] = @"StageManagerEnablement";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v20[0] = v11;
  v19[1] = @"EmbeddedStripHidden";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v20[1] = v12;
  v19[2] = @"EmbeddedDockHidden";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v20[2] = v13;
  v19[3] = @"ExternalStripHidden";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v20[3] = v14;
  v19[4] = @"ExternalDockHidden";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v20[4] = v15;
  v19[5] = @"StageManagerPreferenceChangingSource";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v20[5] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];

  return v17;
}

- (BOOL)sendCoreAnalyticsEventWithName:(id)a3 source:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBStageManagerEnablementMetric *)self chamoisPreferencesSnapshotWithSource:a4];
  v8 = v7;
  if (v7)
  {
    v14 = v7;
    v9 = AnalyticsSendEventLazy();

    if (v9)
    {
      v10 = 1;
      goto LABEL_9;
    }

    v11 = @"CoreAnalytics sending failed";
  }

  else
  {
    v11 = @"Missing payload";
  }

  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SBStageManagerEnablementMetric sendCoreAnalyticsEventWithName:v11 source:v12];
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 11)
  {
    v10 = 0;
  }

  else
  {
    if (a3 != 58)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v8 = [v6 eventPayload];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D67620]];
    v10 = [v9 integerValue];
  }

  [(SBStageManagerEnablementMetric *)self sendCoreAnalyticsEventWithName:@"com.apple.SpringBoard.StageManager" source:v10];
  v11 = 1;
LABEL_7:

  return v11;
}

- (void)sendCoreAnalyticsEventWithName:(uint64_t)a1 source:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to log Stage Manager preferences with reason: %@.", &v2, 0xCu);
}

@end