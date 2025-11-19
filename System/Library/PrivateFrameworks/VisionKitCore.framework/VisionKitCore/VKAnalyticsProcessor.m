@interface VKAnalyticsProcessor
- (void)processAndSendEvent:(id)a3;
- (void)processAndSendSession:(id)a3;
- (void)sendCoreAnalyticsEvent:(id)a3 block:(id)a4;
@end

@implementation VKAnalyticsProcessor

- (void)processAndSendEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 eventKey];

  if (v5)
  {
    v6 = [v4 coreAnalyticsDictionary];
    if (v6)
    {
      v7 = [(VKAnalyticsProcessor *)self isPublicAPI];
      v8 = [v4 eventKey];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__VKAnalyticsProcessor_processAndSendEvent___block_invoke;
      v9[3] = &unk_1E7BE72E0;
      v10 = v6;
      v11 = v7;
      [(VKAnalyticsProcessor *)self sendCoreAnalyticsEvent:v8 block:v9];
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

- (void)processAndSendSession:(id)a3
{
  v4 = a3;
  v5 = [(VKAnalyticsProcessor *)self isPublicAPI];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__VKAnalyticsProcessor_processAndSendSession___block_invoke;
  v7[3] = &unk_1E7BE72E0;
  v8 = v4;
  v9 = v5;
  v6 = v4;
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

- (void)sendCoreAnalyticsEvent:(id)a3 block:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [v5 stringWithFormat:@"com.apple.VisionKit.%@", a3];
  AnalyticsSendEventLazy();
}

@end