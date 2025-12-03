@interface SYSystemPaperAnalytics
+ (void)logActivationEvent:(id)event;
+ (void)logDismissEvent:(id)event;
@end

@implementation SYSystemPaperAnalytics

+ (void)logActivationEvent:(id)event
{
  eventCopy = event;
  v3 = eventCopy;
  AnalyticsSendEventLazy();
}

id __45__SYSystemPaperAnalytics_logActivationEvent___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"method";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)logDismissEvent:(id)event
{
  eventCopy = event;
  v3 = eventCopy;
  AnalyticsSendEventLazy();
}

id __42__SYSystemPaperAnalytics_logDismissEvent___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"method";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end