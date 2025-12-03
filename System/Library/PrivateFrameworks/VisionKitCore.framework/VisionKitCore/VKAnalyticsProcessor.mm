@interface VKAnalyticsProcessor
- (void)processAndSendEvent:(id)event;
- (void)processAndSendSession:(id)session;
- (void)sendCoreAnalyticsEvent:(id)event block:(id)block;
@end

@implementation VKAnalyticsProcessor

- (void)processAndSendEvent:(id)event
{
  eventCopy = event;
  eventKey = [eventCopy eventKey];

  if (eventKey)
  {
    coreAnalyticsDictionary = [eventCopy coreAnalyticsDictionary];
    if (coreAnalyticsDictionary)
    {
      isPublicAPI = [(VKAnalyticsProcessor *)self isPublicAPI];
      eventKey2 = [eventCopy eventKey];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__VKAnalyticsProcessor_processAndSendEvent___block_invoke;
      v9[3] = &unk_1E7BE72E0;
      v10 = coreAnalyticsDictionary;
      v11 = isPublicAPI;
      [(VKAnalyticsProcessor *)self sendCoreAnalyticsEvent:eventKey2 block:v9];
    }
  }
}

id __44__VKAnalyticsProcessor_processAndSendEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"publicAPI"];

  v4 = [v2 copy];

  return v4;
}

- (void)processAndSendSession:(id)session
{
  sessionCopy = session;
  isPublicAPI = [(VKAnalyticsProcessor *)self isPublicAPI];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__VKAnalyticsProcessor_processAndSendSession___block_invoke;
  v7[3] = &unk_1E7BE72E0;
  v8 = sessionCopy;
  v9 = isPublicAPI;
  v6 = sessionCopy;
  [(VKAnalyticsProcessor *)self sendCoreAnalyticsEvent:@"InteractionSessionEnded" block:v7];
}

void *__46__VKAnalyticsProcessor_processAndSendSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coreAnalyticsDictionary];
  v3 = [v2 mutableCopy];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v3 setObject:v4 forKeyedSubscript:@"publicAPI"];

  v5 = v3;
  return v3;
}

- (void)sendCoreAnalyticsEvent:(id)event block:(id)block
{
  v5 = MEMORY[0x1E696AEC0];
  blockCopy = block;
  event = [v5 stringWithFormat:@"com.apple.VisionKit.%@", event];
  AnalyticsSendEventLazy();
}

@end