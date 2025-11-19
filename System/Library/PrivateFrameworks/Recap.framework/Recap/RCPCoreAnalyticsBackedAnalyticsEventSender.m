@interface RCPCoreAnalyticsBackedAnalyticsEventSender
- (void)sendEvent:(int64_t)a3;
@end

@implementation RCPCoreAnalyticsBackedAnalyticsEventSender

- (void)sendEvent:(int64_t)a3
{
  v3 = RCPLogPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2619DE000, v3, OS_LOG_TYPE_DEFAULT, "sent analytics event", buf, 2u);
  }

  AnalyticsSendEventLazy();
}

id __56__RCPCoreAnalyticsBackedAnalyticsEventSender_sendEvent___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 == 1)
  {
    v7 = @"state";
    v8 = @"playbackFinished";
    v2 = MEMORY[0x277CBEAC0];
    v3 = &v8;
    v4 = &v7;
    goto LABEL_5;
  }

  if (!v1)
  {
    v9 = @"state";
    v10[0] = @"recordingFinished";
    v2 = MEMORY[0x277CBEAC0];
    v3 = v10;
    v4 = &v9;
LABEL_5:
    v5 = [v2 dictionaryWithObjects:v3 forKeys:v4 count:1];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end