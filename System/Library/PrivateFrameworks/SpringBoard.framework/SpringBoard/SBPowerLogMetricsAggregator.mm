@interface SBPowerLogMetricsAggregator
- (SBPowerLogMetricsAggregator)init;
- (void)_flushEvents;
- (void)_startTimerIfNecessary;
- (void)emitEventOfType:(unint64_t)a3;
- (void)emitEventOfType:(unint64_t)a3 withDuration:(double)a4;
- (void)flushEventsDueToIminentPowerdown;
@end

@implementation SBPowerLogMetricsAggregator

- (SBPowerLogMetricsAggregator)init
{
  v10.receiver = self;
  v10.super_class = SBPowerLogMetricsAggregator;
  v2 = [(SBPowerLogMetricsAggregator *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SBPowerLogMetricsAggregatorQueue", 0);
    backgroundPowerLogQueue = v2->_backgroundPowerLogQueue;
    v2->_backgroundPowerLogQueue = v3;

    v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    gregorian = v2->_gregorian;
    v2->_gregorian = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    eventsWithDuration = v2->_eventsWithDuration;
    v2->_eventsWithDuration = v7;
  }

  return v2;
}

- (void)emitEventOfType:(unint64_t)a3
{
  backgroundPowerLogQueue = self->_backgroundPowerLogQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBPowerLogMetricsAggregator_emitEventOfType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(backgroundPowerLogQueue, block);
}

void __47__SBPowerLogMetricsAggregator_emitEventOfType___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) > 1uLL)
  {
    v1 = SBLogAnalytics();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __47__SBPowerLogMetricsAggregator_emitEventOfType___block_invoke_cold_2();
    }
  }

  else
  {
    PLLogRegisteredEvent();
    v1 = SBLogAnalytics();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __47__SBPowerLogMetricsAggregator_emitEventOfType___block_invoke_cold_1();
    }
  }
}

- (void)emitEventOfType:(unint64_t)a3 withDuration:(double)a4
{
  backgroundPowerLogQueue = self->_backgroundPowerLogQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SBPowerLogMetricsAggregator_emitEventOfType_withDuration___block_invoke;
  block[3] = &unk_2783A8C40;
  *&block[5] = a4;
  block[6] = a3;
  block[4] = self;
  dispatch_async(backgroundPowerLogQueue, block);
}

void __60__SBPowerLogMetricsAggregator_emitEventOfType_withDuration___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 2)
  {
    v2 = *(a1 + 40) * 10.0;
    v3 = roundf(v2) / 10.0;
    v4 = [*(*(a1 + 32) + 24) objectForKey:@"IconDragging"];
    if (!v4)
    {
      v4 = [MEMORY[0x277CBEB18] array];
      [*(*(a1 + 32) + 24) setObject:v4 forKey:@"IconDragging"];
    }

    v5 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
    [v4 addObject:v5];

    [*(a1 + 32) _startTimerIfNecessary];
    v6 = SBLogAnalytics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __60__SBPowerLogMetricsAggregator_emitEventOfType_withDuration___block_invoke_cold_2();
    }
  }

  else
  {
    v4 = SBLogAnalytics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__SBPowerLogMetricsAggregator_emitEventOfType___block_invoke_cold_2();
    }
  }
}

- (void)flushEventsDueToIminentPowerdown
{
  backgroundPowerLogQueue = self->_backgroundPowerLogQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SBPowerLogMetricsAggregator_flushEventsDueToIminentPowerdown__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(backgroundPowerLogQueue, block);
}

- (void)_startTimerIfNecessary
{
  dispatch_assert_queue_V2(self->_backgroundPowerLogQueue);
  if (!self->_flushScheduled)
  {
    self->_flushScheduled = 1;
    v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v3 setMinute:3];
    [v3 setSecond:0];
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(NSCalendar *)self->_gregorian nextDateAfterDate:v4 matchingComponents:v3 options:2];
    [v5 timeIntervalSinceDate:v4];
    v7 = v6;
    v8 = SBLogAnalytics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBPowerLogMetricsAggregator _startTimerIfNecessary];
    }

    v9 = dispatch_time(0x8000000000000000, (v7 * 1000000000.0));
    backgroundPowerLogQueue = self->_backgroundPowerLogQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SBPowerLogMetricsAggregator__startTimerIfNecessary__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_after(v9, backgroundPowerLogQueue, block);
  }
}

- (void)_flushEvents
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_backgroundPowerLogQueue);
  self->_flushScheduled = 0;
  v3 = [(NSMutableDictionary *)self->_eventsWithDuration copy];
  [(NSMutableDictionary *)self->_eventsWithDuration removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v17 = @"Durations";
        v10 = [v3 objectForKey:v9];
        v18 = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

        PLLogRegisteredEvent();
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);

    v12 = SBLogAnalytics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SBPowerLogMetricsAggregator _flushEvents];
    }
  }

  else
  {

    v12 = SBLogAnalytics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SBPowerLogMetricsAggregator _flushEvents];
    }
  }
}

void __47__SBPowerLogMetricsAggregator_emitEventOfType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __47__SBPowerLogMetricsAggregator_emitEventOfType___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  v2 = 134217984;
  v3 = v0;
  _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "Attempting to emit SBPowerLogMetricEvent for unknown type %lu.", &v2, 0xCu);
}

void __60__SBPowerLogMetricsAggregator_emitEventOfType_withDuration___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end