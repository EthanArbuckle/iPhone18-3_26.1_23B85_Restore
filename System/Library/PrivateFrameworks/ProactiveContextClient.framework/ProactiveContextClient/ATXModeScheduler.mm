@interface ATXModeScheduler
- (ATXModeScheduler)initWithQueue:(id)queue operationBlock:(id)block andLeeway:(double)leeway;
- (id)runAfterDelaySecondsIfNotYetScheduled:(double)scheduled;
- (void)cancelPendingOperation;
@end

@implementation ATXModeScheduler

- (ATXModeScheduler)initWithQueue:(id)queue operationBlock:(id)block andLeeway:(double)leeway
{
  queueCopy = queue;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = ATXModeScheduler;
  v11 = [(ATXModeScheduler *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    v13 = MEMORY[0x2666EC640](blockCopy);
    block = v12->_block;
    v12->_block = v13;

    v12->_leewaySeconds = leeway;
  }

  return v12;
}

- (id)runAfterDelaySecondsIfNotYetScheduled:(double)scheduled
{
  if (self->_timer)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(ATXModeScheduler *)self runAfterDelaySecondsIfNotYetScheduled:v4];
    }
  }

  else
  {
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    timer = self->_timer;
    self->_timer = v6;

    dispatch_source_set_timer(self->_timer, [MEMORY[0x277D425A0] dispatchTimeWithSecondsFromNow:scheduled], 0xFFFFFFFFFFFFFFFFLL, (self->_leewaySeconds * 1000000000.0));
    objc_initWeak(&location, self);
    v8 = self->_timer;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __58__ATXModeScheduler_runAfterDelaySecondsIfNotYetScheduled___block_invoke;
    v17 = &unk_279AB7B90;
    objc_copyWeak(&v18, &location);
    dispatch_source_set_event_handler(v8, &v14);
    dispatch_resume(self->_timer);
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{scheduled, v14, v15, v16, v17}];
    scheduledDate = self->_scheduledDate;
    self->_scheduledDate = v9;

    v11 = __atxlog_handle_modes();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ATXModeScheduler *)v11 runAfterDelaySecondsIfNotYetScheduled:scheduled];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v12 = self->_scheduledDate;

  return v12;
}

void __58__ATXModeScheduler_runAfterDelaySecondsIfNotYetScheduled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    (*(WeakRetained[3] + 16))();
    [v2 cancelPendingOperation];
    WeakRetained = v2;
  }
}

- (void)cancelPendingOperation
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;

    scheduledDate = self->_scheduledDate;
    self->_scheduledDate = 0;
  }
}

- (void)runAfterDelaySecondsIfNotYetScheduled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 136315394;
  v5 = "[ATXModeScheduler runAfterDelaySecondsIfNotYetScheduled:]";
  v6 = 2112;
  v7 = v2;
  _os_log_debug_impl(&dword_260C9F000, a2, OS_LOG_TYPE_DEBUG, "%s: an operation has already been scheduled at %@. Skip this request.", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)runAfterDelaySecondsIfNotYetScheduled:(os_log_t)log .cold.2(os_log_t log, double a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[ATXModeScheduler runAfterDelaySecondsIfNotYetScheduled:]";
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&dword_260C9F000, log, OS_LOG_TYPE_DEBUG, "%s: schedule an operation with %.2lf seconds delay", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end