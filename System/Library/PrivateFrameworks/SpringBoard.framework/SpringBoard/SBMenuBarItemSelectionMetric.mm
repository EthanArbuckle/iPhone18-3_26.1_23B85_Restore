@interface SBMenuBarItemSelectionMetric
- (BOOL)handleEvent:(unint64_t)event withContext:(id)context;
@end

@implementation SBMenuBarItemSelectionMetric

- (BOOL)handleEvent:(unint64_t)event withContext:(id)context
{
  if (event == 70)
  {
    eventPayload = [context eventPayload];
    v8 = [eventPayload objectForKeyedSubscript:*MEMORY[0x277D675E8]];
    v6 = v8;
    AnalyticsSendEventLazy();
  }

  return event == 70;
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