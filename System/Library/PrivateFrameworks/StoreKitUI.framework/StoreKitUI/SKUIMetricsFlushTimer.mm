@interface SKUIMetricsFlushTimer
+ (id)sharedTimer;
- (SKUIMetricsFlushTimer)init;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_cancelFlushTimer;
- (void)_performFlush;
- (void)addMetricsController:(id)a3;
- (void)dealloc;
- (void)init;
- (void)reloadFlushInterval;
- (void)removeMetricsController:(id)a3;
@end

@implementation SKUIMetricsFlushTimer

- (SKUIMetricsFlushTimer)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIMetricsFlushTimer init];
  }

  v8.receiver = self;
  v8.super_class = SKUIMetricsFlushTimer;
  v3 = [(SKUIMetricsFlushTimer *)&v8 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:514 capacity:0];
    metricsControllers = v3->_metricsControllers;
    v3->_metricsControllers = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
    [v6 addObserver:v3 selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v5.receiver = self;
  v5.super_class = SKUIMetricsFlushTimer;
  [(SKUIMetricsFlushTimer *)&v5 dealloc];
}

+ (id)sharedTimer
{
  v3 = sharedTimer_sTimer;
  if (!sharedTimer_sTimer)
  {
    v4 = objc_alloc_init(a1);
    v5 = sharedTimer_sTimer;
    sharedTimer_sTimer = v4;

    v3 = sharedTimer_sTimer;
  }

  return v3;
}

- (void)addMetricsController:(id)a3
{
  [(NSHashTable *)self->_metricsControllers addObject:a3];

  [(SKUIMetricsFlushTimer *)self reloadFlushInterval];
}

- (void)reloadFlushInterval
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(NSHashTable *)self->_metricsControllers count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = self->_metricsControllers;
    v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v21 + 1) + 8 * i) flushInterval];
          if (v7 < 1.0 || v9 < v7)
          {
            v7 = v9;
          }
        }

        v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v5);

      if (v7 >= 1.0)
      {
        timer = self->_timer;
        if (timer)
        {
          v11 = dispatch_time(self->_timerStartTime, (v7 * 1000000000.0));
          dispatch_source_set_timer(timer, v11, 0, 0);
        }

        else
        {
          v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
          v13 = self->_timer;
          self->_timer = v12;

          v14 = dispatch_walltime(0, 0);
          self->_timerStartTime = v14;
          v15 = self->_timer;
          v16 = dispatch_time(v14, (v7 * 1000000000.0));
          dispatch_source_set_timer(v15, v16, 0, 0);
          objc_initWeak(&location, self);
          v17 = self->_timer;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __44__SKUIMetricsFlushTimer_reloadFlushInterval__block_invoke;
          v18[3] = &unk_2781F8320;
          objc_copyWeak(&v19, &location);
          dispatch_source_set_event_handler(v17, v18);
          dispatch_resume(self->_timer);
          objc_destroyWeak(&v19);
          objc_destroyWeak(&location);
        }

        return;
      }
    }

    else
    {
    }

    [(SKUIMetricsFlushTimer *)self _cancelFlushTimer];
    return;
  }

  [(SKUIMetricsFlushTimer *)self _cancelFlushTimer];
}

void __44__SKUIMetricsFlushTimer_reloadFlushInterval__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performFlush];
}

- (void)removeMetricsController:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_metricsControllers count]== 1 && [(NSHashTable *)self->_metricsControllers containsObject:v4])
  {
    [v4 flushImmediately];
  }

  [(NSHashTable *)self->_metricsControllers removeObject:v4];
  [(SKUIMetricsFlushTimer *)self reloadFlushInterval];
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  v4 = [(NSHashTable *)self->_metricsControllers anyObject];
  [v4 flushImmediately];
  [(SKUIMetricsFlushTimer *)self _cancelFlushTimer];
}

- (void)_cancelFlushTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)_performFlush
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_metricsControllers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v6)
        {
          [*(*(&v12 + 1) + 8 * i) closeImpressionsSession];
          [v9 _waitUntilRecordingComplete];
        }

        else
        {
          v6 = v9;
        }
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [v6 flushImmediately];
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v11 = self->_timer;
    self->_timer = 0;
  }

  [(SKUIMetricsFlushTimer *)self reloadFlushInterval];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsFlushTimer init]";
}

@end