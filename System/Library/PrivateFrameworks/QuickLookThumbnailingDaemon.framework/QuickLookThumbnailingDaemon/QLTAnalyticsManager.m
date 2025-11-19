@interface QLTAnalyticsManager
+ (id)sharedManager;
- (id)_eventsQueue;
- (void)_sendEvent:(id)a3;
- (void)sendCacheSizeEventWithCacheSize:(unint64_t)a3;
@end

@implementation QLTAnalyticsManager

- (id)_eventsQueue
{
  if (_eventsQueue_onceToken != -1)
  {
    [QLTAnalyticsManager _eventsQueue];
  }

  v3 = _eventsQueue__eventsSerialBackgroundQueue;

  return v3;
}

void __35__QLTAnalyticsManager__eventsQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, -1);

  v1 = dispatch_queue_create("com.apple.quicklook.AnalyticsEventsQueue", attr);
  v2 = _eventsQueue__eventsSerialBackgroundQueue;
  _eventsQueue__eventsSerialBackgroundQueue = v1;
}

- (void)_sendEvent:(id)a3
{
  v5 = a3;
  v6 = [(QLTAnalyticsManager *)self _eventsQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__QLTAnalyticsManager__sendEvent___block_invoke;
  v8[3] = &unk_279ADD0A8;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __34__QLTAnalyticsManager__sendEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = [*(a1 + 32) propertiesBuilder];
  v4 = AnalyticsSendEventLazy();

  v5 = MEMORY[0x277CDAB78];
  v6 = *(MEMORY[0x277CDAB78] + 152);
  if (!v6)
  {
    QLTInitLogging();
    v6 = *(v5 + 152);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = NSStringFromSelector(v7);
    v10 = [*(a1 + 32) name];
    v11 = v10;
    v12 = @"failed";
    v14 = 138412802;
    v15 = v9;
    v16 = 2112;
    if (v4)
    {
      v12 = @"succeeded";
    }

    v17 = v10;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_2615D3000, v8, OS_LOG_TYPE_INFO, "%@: Tracking event %@ %@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[QLTAnalyticsManager sharedManager];
  }

  v3 = sharedManager_sharedAnalyticsManager;

  return v3;
}

uint64_t __36__QLTAnalyticsManager_sharedManager__block_invoke()
{
  sharedManager_sharedAnalyticsManager = objc_alloc_init(QLTAnalyticsManager);

  return MEMORY[0x2821F96F8]();
}

- (void)sendCacheSizeEventWithCacheSize:(unint64_t)a3
{
  v4 = [[QLTCacheSizeEvent alloc] initWithCacheSize:a3];
  [(QLTAnalyticsManager *)self _sendEvent:v4];
}

@end