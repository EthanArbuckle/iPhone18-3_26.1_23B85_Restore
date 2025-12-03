@interface TUIAnalytics
- (TUIAnalytics)init;
- (void)ktConversationNoMatch:(BOOL)match;
- (void)ktInteraction:(id)interaction;
- (void)ktMarkAsVerified:(BOOL)verified sasCodeGenerated:(BOOL)generated publicKeyVisible:(BOOL)visible;
@end

@implementation TUIAnalytics

- (TUIAnalytics)init
{
  timeConversationUIDisplayed = self->_timeConversationUIDisplayed;
  self->_timeConversationUIDisplayed = 0;

  return self;
}

- (void)ktConversationNoMatch:(BOOL)match
{
  timeConversationUIDisplayed = self->_timeConversationUIDisplayed;
  if (timeConversationUIDisplayed)
  {
    [(NSDate *)timeConversationUIDisplayed timeIntervalSinceNow];
  }

  AnalyticsSendEventLazy();
}

id __38__TUIAnalytics_ktConversationNoMatch___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"reportToApple";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = @"timeToNoMatch";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)ktMarkAsVerified:(BOOL)verified sasCodeGenerated:(BOOL)generated publicKeyVisible:(BOOL)visible
{
  timeConversationUIDisplayed = self->_timeConversationUIDisplayed;
  if (timeConversationUIDisplayed)
  {
    [(NSDate *)timeConversationUIDisplayed timeIntervalSinceNow];
  }

  AnalyticsSendEventLazy();
}

id __67__TUIAnalytics_ktMarkAsVerified_sasCodeGenerated_publicKeyVisible___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"timeToVerified";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v10[0] = v2;
  v9[1] = @"sasCodeGenerated";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v10[1] = v3;
  v9[2] = @"publicKeyVisible";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v10[2] = v4;
  v9[3] = @"success";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 42)];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)ktInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([@"conversationUIDisplayed" isEqualToString:interactionCopy])
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    [(TUIAnalytics *)self setTimeConversationUIDisplayed:v5];
  }

  v7 = interactionCopy;
  v6 = interactionCopy;
  AnalyticsSendEventLazy();
}

id __30__TUIAnalytics_ktInteraction___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"kind";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end