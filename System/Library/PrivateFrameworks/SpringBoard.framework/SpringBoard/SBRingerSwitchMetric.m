@interface SBRingerSwitchMetric
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
@end

@implementation SBRingerSwitchMetric

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  v5 = a4;
  if (a3 == 11 || a3 == 60)
  {
    AnalyticsSendEventLazy();
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __48__SBRingerSwitchMetric_handleEvent_withContext___block_invoke_2()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"is_muted";
  v0 = MEMORY[0x277CCABB0];
  v1 = [SBApp ringerControl];
  v2 = [v0 numberWithBool:-[SBRingerControl isRingerMuted](v1)];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end