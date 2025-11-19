@interface SBMenuBarItemSelectionMetric
- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4;
@end

@implementation SBMenuBarItemSelectionMetric

- (BOOL)handleEvent:(unint64_t)a3 withContext:(id)a4
{
  if (a3 == 70)
  {
    v5 = [a4 eventPayload];
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D675E8]];
    v6 = v8;
    AnalyticsSendEventLazy();
  }

  return a3 == 70;
}

id __56__SBMenuBarItemSelectionMetric_handleEvent_withContext___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"item";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

@end