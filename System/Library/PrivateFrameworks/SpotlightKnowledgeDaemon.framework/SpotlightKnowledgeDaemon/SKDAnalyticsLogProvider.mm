@interface SKDAnalyticsLogProvider
- (SKDAnalyticsLogProvider)init;
- (void)sendLog:(id)log domain:(id)domain;
@end

@implementation SKDAnalyticsLogProvider

- (SKDAnalyticsLogProvider)init
{
  v7.receiver = self;
  v7.super_class = SKDAnalyticsLogProvider;
  v2 = [(SKDAnalyticsLogProvider *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.spotlightknowledge.CoreAnalyticsProvider", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)sendLog:(id)log domain:(id)domain
{
  logCopy = log;
  domainCopy = domain;
  if ([logCopy count])
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__SKDAnalyticsLogProvider_sendLog_domain___block_invoke;
    v9[3] = &unk_27893D900;
    v10 = domainCopy;
    v11 = logCopy;
    dispatch_async(queue, v9);
  }
}

uint64_t __42__SKDAnalyticsLogProvider_sendLog_domain___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  return AnalyticsSendEvent();
}

@end