@interface UIApplication(Metrics)
- (id)_metricsQueue;
- (void)recordAppCloseEvent:()Metrics;
- (void)recordAppOpenEvent:()Metrics;
- (void)recordMemoryWarning:()Metrics;
- (void)subscribeToLifecycleEventNotifications;
- (void)unsubscribeFromLifecycleEventNotifications;
@end

@implementation UIApplication(Metrics)

- (void)subscribeToLifecycleEventNotifications
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:a1 selector:sel_recordAppOpenEvent_ name:*MEMORY[0x277D3DA60] object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:a1 selector:sel_recordAppOpenEvent_ name:*MEMORY[0x277D3DA70] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:a1 selector:sel_recordAppCloseEvent_ name:*MEMORY[0x277D3DA58] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:a1 selector:sel_recordAppCloseEvent_ name:*MEMORY[0x277D3DA78] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:a1 selector:sel_recordMemoryWarning_ name:*MEMORY[0x277D3DA68] object:0];
}

- (id)_metricsQueue
{
  if (_metricsQueue_onceToken != -1)
  {
    [UIApplication(Metrics) _metricsQueue];
  }

  v1 = _metricsQueue_metricsQueue;

  return v1;
}

- (void)unsubscribeFromLifecycleEventNotifications
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:a1];
}

- (void)recordAppOpenEvent:()Metrics
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 object];
  if (v5 == *MEMORY[0x277D3DA70])
  {
    v11 = 0;
    v9 = 0;
    v12 = 1;
  }

  else
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D76698]];

    if (v8)
    {
      v9 = [v8 absoluteString];
      v10 = [v4 userInfo];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D76690]];

      v12 = 2;
    }

    else
    {
      v11 = 0;
      v9 = 0;
      if ([v6 applicationState] == 2)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  v13 = [a1 _metricsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__UIApplication_Metrics__recordAppOpenEvent___block_invoke;
  block[3] = &unk_2782BE410;
  v18 = v9;
  v19 = v12;
  v17 = v11;
  v14 = v9;
  v15 = v11;
  dispatch_async(v13, block);
}

- (void)recordAppCloseEvent:()Metrics
{
  v5 = [a3 name];
  v3 = [objc_alloc(MEMORY[0x277D3DAA0]) initWithReason:v5 == *MEMORY[0x277D3DA58]];
  [MEMORY[0x277D3DA98] recordEvent:v3];
  if ([MEMORY[0x277D3DB60] isRunningOnTV])
  {
    v4 = [MEMORY[0x277D3DA98] flushImmediately];
  }
}

- (void)recordMemoryWarning:()Metrics
{
  v1 = [a1 _metricsQueue];
  dispatch_async(v1, &__block_literal_global_6);
}

@end