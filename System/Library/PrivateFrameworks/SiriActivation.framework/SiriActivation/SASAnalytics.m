@interface SASAnalytics
+ (id)analytics;
- (id)_init;
- (void)_enqueueAnalyticsEvent:(id)a3;
- (void)enqueueCurrentAnalyticsEventWithType:(int64_t)a3 context:(id)a4;
- (void)flushPendingAnalyticsEventQueue;
@end

@implementation SASAnalytics

+ (id)analytics
{
  if (analytics_onceToken != -1)
  {
    +[SASAnalytics analytics];
  }

  v3 = analytics_sharedAnalytics;

  return v3;
}

- (void)flushPendingAnalyticsEventQueue
{
  objc_initWeak(&location, self);
  analyticsEventQueue = self->_analyticsEventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SASAnalytics_flushPendingAnalyticsEventQueue__block_invoke;
  block[3] = &unk_1E82F37D0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(analyticsEventQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__SASAnalytics_flushPendingAnalyticsEventQueue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained pendingAnalyticsEventQueue];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [*(a1 + 32) pendingAnalyticsEventQueue];
      v6 = [v5 copy];

      v7 = [MEMORY[0x1E698D0C8] sharedAnalytics];
      [v7 logEvents:v6];
    }

    [v8 setPendingAnalyticsEventQueue:0];
    WeakRetained = v8;
  }
}

uint64_t __25__SASAnalytics_analytics__block_invoke()
{
  analytics_sharedAnalytics = [[SASAnalytics alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = SASAnalytics;
  v2 = [(SASAnalytics *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.siri.SASAnalyticsEventQueue", v3);
    analyticsEventQueue = v2->_analyticsEventQueue;
    v2->_analyticsEventQueue = v4;
  }

  return v2;
}

- (void)enqueueCurrentAnalyticsEventWithType:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  analyticsEventQueue = self->_analyticsEventQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SASAnalytics_enqueueCurrentAnalyticsEventWithType_context___block_invoke;
  v9[3] = &unk_1E82F37A8;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(analyticsEventQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __61__SASAnalytics_enqueueCurrentAnalyticsEventWithType_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = +[SiriActivationService service];
    v4 = [v3 xcTestingActive];

    WeakRetained = v8;
    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v7 = AFAnalyticsEventCreateCurrent();
      [v8 _enqueueAnalyticsEvent:v7];

      WeakRetained = v8;
    }
  }
}

- (void)_enqueueAnalyticsEvent:(id)a3
{
  v4 = a3;
  if ([(SASAnalytics *)self shouldLogAnalyticsEvents])
  {
    [(SASAnalytics *)self flushPendingAnalyticsEventQueue];
    v10 = [MEMORY[0x1E698D0C8] sharedAnalytics];
    [v10 logEvent:v4];
    goto LABEL_9;
  }

  v5 = [(SASAnalytics *)self pendingAnalyticsEventQueue];

  if (!v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:16];
    [(SASAnalytics *)self setPendingAnalyticsEventQueue:v8];
    goto LABEL_7;
  }

  v6 = [(SASAnalytics *)self pendingAnalyticsEventQueue];
  v7 = [v6 count];

  if (v7 >= 0x10)
  {
    v8 = [(SASAnalytics *)self pendingAnalyticsEventQueue];
    v9 = [(SASAnalytics *)self pendingAnalyticsEventQueue];
    [v8 removeObjectsInRange:{0, objc_msgSend(v9, "count") - 15}];

LABEL_7:
  }

  v10 = [(SASAnalytics *)self pendingAnalyticsEventQueue];
  [v10 addObject:v4];
LABEL_9:
}

@end