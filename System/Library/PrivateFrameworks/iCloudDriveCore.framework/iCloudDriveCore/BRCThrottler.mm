@interface BRCThrottler
- (BRCThrottler)initWithName:(id)name throttleParameters:(id)parameters queue:(id)queue handler:(id)handler;
- (void)cancel;
- (void)reset;
- (void)scheduleNextEvent;
@end

@implementation BRCThrottler

- (BRCThrottler)initWithName:(id)name throttleParameters:(id)parameters queue:(id)queue handler:(id)handler
{
  nameCopy = name;
  parametersCopy = parameters;
  queueCopy = queue;
  handlerCopy = handler;
  v30.receiver = self;
  v30.super_class = BRCThrottler;
  v14 = [(BRCThrottler *)&v30 init];
  if (v14)
  {
    v15 = [[BRCThrottleBase alloc] initWithName:nameCopy andParameters:parametersCopy];
    throttle = v14->_throttle;
    v14->_throttle = v15;

    uTF8String = [nameCopy UTF8String];
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(v18, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create_with_target_V2(uTF8String, v19, queueCopy);

    queue = v14->_queue;
    v14->_queue = v20;

    v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
    source = v14->_source;
    v14->_source = v22;

    v24 = v14->_source;
    v25 = handlerCopy;
    v26 = v25;
    v27 = v25;
    if (*MEMORY[0x277CFB010])
    {
      v27 = (*MEMORY[0x277CFB010])(v25);
    }

    v28 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v27);
    dispatch_source_set_event_handler(v24, v28);
  }

  return v14;
}

- (void)scheduleNextEvent
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BRCThrottler_scheduleNextEvent__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__BRCThrottler_scheduleNextEvent__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = brc_current_date_nsec();
    v3 = [*(*(a1 + 32) + 8) nsecsToNextRetry:*(*(a1 + 32) + 16) retryCount:*(a1 + 32) + 24 now:v2];
    if (!v3)
    {
      *(*(a1 + 32) + 16) = v2;
    }

    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __33__BRCThrottler_scheduleNextEvent__block_invoke_cold_1(v3, v4, v5);
    }

    v6 = *(*(a1 + 32) + 40);
    v7 = dispatch_time(0, v3);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__BRCThrottler_reset__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __21__BRCThrottler_reset__block_invoke(uint64_t result)
{
  *(*(result + 32) + 16) = 0;
  *(*(result + 32) + 24) = 0;
  return result;
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__BRCThrottler_cancel__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(queue, block);
}

void __22__BRCThrottler_cancel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __33__BRCThrottler_scheduleNextEvent__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  brc_interval_from_nsec();
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Next event will fire in %fs%@", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end