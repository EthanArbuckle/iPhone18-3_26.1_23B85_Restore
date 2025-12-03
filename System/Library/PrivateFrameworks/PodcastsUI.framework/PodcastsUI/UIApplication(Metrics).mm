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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_recordAppOpenEvent_ name:*MEMORY[0x277D3DA60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_recordAppOpenEvent_ name:*MEMORY[0x277D3DA70] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_recordAppCloseEvent_ name:*MEMORY[0x277D3DA58] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_recordAppCloseEvent_ name:*MEMORY[0x277D3DA78] object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_recordMemoryWarning_ name:*MEMORY[0x277D3DA68] object:0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)recordAppOpenEvent:()Metrics
{
  v4 = a3;
  name = [v4 name];
  object = [v4 object];
  if (name == *MEMORY[0x277D3DA70])
  {
    v11 = 0;
    absoluteString = 0;
    v12 = 1;
  }

  else
  {
    userInfo = [v4 userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76698]];

    if (v8)
    {
      absoluteString = [v8 absoluteString];
      userInfo2 = [v4 userInfo];
      v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D76690]];

      v12 = 2;
    }

    else
    {
      v11 = 0;
      absoluteString = 0;
      if ([object applicationState] == 2)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  _metricsQueue = [self _metricsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__UIApplication_Metrics__recordAppOpenEvent___block_invoke;
  block[3] = &unk_2782BE410;
  v18 = absoluteString;
  v19 = v12;
  v17 = v11;
  v14 = absoluteString;
  v15 = v11;
  dispatch_async(_metricsQueue, block);
}

- (void)recordAppCloseEvent:()Metrics
{
  name = [a3 name];
  v3 = [objc_alloc(MEMORY[0x277D3DAA0]) initWithReason:name == *MEMORY[0x277D3DA58]];
  [MEMORY[0x277D3DA98] recordEvent:v3];
  if ([MEMORY[0x277D3DB60] isRunningOnTV])
  {
    flushImmediately = [MEMORY[0x277D3DA98] flushImmediately];
  }
}

- (void)recordMemoryWarning:()Metrics
{
  _metricsQueue = [self _metricsQueue];
  dispatch_async(_metricsQueue, &__block_literal_global_6);
}

@end