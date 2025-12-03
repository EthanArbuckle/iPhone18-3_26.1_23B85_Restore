@interface SASAnalytics
+ (id)analytics;
- (id)_init;
- (void)_enqueueAnalyticsEvent:(id)event;
- (void)enqueueCurrentAnalyticsEventWithType:(int64_t)type context:(id)context;
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

- (void)enqueueCurrentAnalyticsEventWithType:(int64_t)type context:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  analyticsEventQueue = self->_analyticsEventQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SASAnalytics_enqueueCurrentAnalyticsEventWithType_context___block_invoke;
  v9[3] = &unk_1E82F37A8;
  objc_copyWeak(v11, &location);
  v11[1] = type;
  v10 = contextCopy;
  v8 = contextCopy;
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

- (void)_enqueueAnalyticsEvent:(id)event
{
  eventCopy = event;
  if ([(SASAnalytics *)self shouldLogAnalyticsEvents])
  {
    [(SASAnalytics *)self flushPendingAnalyticsEventQueue];
    mEMORY[0x1E698D0C8] = [MEMORY[0x1E698D0C8] sharedAnalytics];
    [mEMORY[0x1E698D0C8] logEvent:eventCopy];
    goto LABEL_9;
  }

  pendingAnalyticsEventQueue = [(SASAnalytics *)self pendingAnalyticsEventQueue];

  if (!pendingAnalyticsEventQueue)
  {
    pendingAnalyticsEventQueue3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:16];
    [(SASAnalytics *)self setPendingAnalyticsEventQueue:pendingAnalyticsEventQueue3];
    goto LABEL_7;
  }

  pendingAnalyticsEventQueue2 = [(SASAnalytics *)self pendingAnalyticsEventQueue];
  v7 = [pendingAnalyticsEventQueue2 count];

  if (v7 >= 0x10)
  {
    pendingAnalyticsEventQueue3 = [(SASAnalytics *)self pendingAnalyticsEventQueue];
    pendingAnalyticsEventQueue4 = [(SASAnalytics *)self pendingAnalyticsEventQueue];
    [pendingAnalyticsEventQueue3 removeObjectsInRange:{0, objc_msgSend(pendingAnalyticsEventQueue4, "count") - 15}];

LABEL_7:
  }

  mEMORY[0x1E698D0C8] = [(SASAnalytics *)self pendingAnalyticsEventQueue];
  [mEMORY[0x1E698D0C8] addObject:eventCopy];
LABEL_9:
}

@end