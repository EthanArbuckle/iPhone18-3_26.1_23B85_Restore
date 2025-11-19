@interface SiriAnalyticsTimePeriodBuffer
- (SiriAnalyticsTimePeriodBuffer)initWithInterval:(double)a3 queue:(id)a4;
- (void)_startProducing;
- (void)_stopProducing;
- (void)_timerElapsed;
- (void)enqueueMessages:(id)a3;
- (void)onMessagesProduced:(id)a3;
@end

@implementation SiriAnalyticsTimePeriodBuffer

- (void)onMessagesProduced:(id)a3
{
  v4 = [a3 copy];
  onMessagesProduced = self->_onMessagesProduced;
  self->_onMessagesProduced = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)enqueueMessages:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v5 = SiriAnalyticsLogContextStreaming;
  if (os_log_type_enabled(SiriAnalyticsLogContextStreaming, OS_LOG_TYPE_DEBUG))
  {
    v9 = v5;
    v10 = 136315394;
    v11 = "[SiriAnalyticsTimePeriodBuffer enqueueMessages:]";
    v12 = 2048;
    v13 = [v4 count];
    _os_log_debug_impl(&dword_1D9863000, v9, OS_LOG_TYPE_DEBUG, "%s Enqueueing %lu messages", &v10, 0x16u);
  }

  bufferedMessages = self->_bufferedMessages;
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  [(NSMutableSet *)bufferedMessages unionSet:v7];

  [(SiriAnalyticsTimePeriodBuffer *)self _startProducing];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_timerElapsed
{
  v15 = *MEMORY[0x1E69E9840];
  [(SiriAnalyticsTimePeriodBuffer *)self _stopProducing];
  v3 = self->_bufferedMessages;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  bufferedMessages = self->_bufferedMessages;
  self->_bufferedMessages = v4;

  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v6 = SiriAnalyticsLogContextStreaming;
  if (os_log_type_enabled(SiriAnalyticsLogContextStreaming, OS_LOG_TYPE_DEBUG))
  {
    v10 = v6;
    v11 = 136315394;
    v12 = "[SiriAnalyticsTimePeriodBuffer _timerElapsed]";
    v13 = 2048;
    v14 = [(NSMutableSet *)v3 count];
    _os_log_debug_impl(&dword_1D9863000, v10, OS_LOG_TYPE_DEBUG, "%s Producing %lu messages from buffer", &v11, 0x16u);
  }

  if ([(NSMutableSet *)v3 count])
  {
    onMessagesProduced = self->_onMessagesProduced;
    if (onMessagesProduced)
    {
      v8 = [(NSMutableSet *)v3 allObjects];
      onMessagesProduced[2](onMessagesProduced, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_stopProducing
{
  bufferTimer = self->_bufferTimer;
  if (bufferTimer)
  {
    dispatch_source_cancel(bufferTimer);
    v4 = self->_bufferTimer;
    self->_bufferTimer = 0;
  }
}

- (void)_startProducing
{
  if (!self->_bufferTimer)
  {
    location[1] = v5;
    location[2] = v4;
    location[7] = v2;
    location[8] = v3;
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    bufferTimer = self->_bufferTimer;
    self->_bufferTimer = v7;

    v9 = self->_bufferTimer;
    v10 = dispatch_time(0, (self->_bufferInterval * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, (self->_leeway * 1000000000.0));
    objc_initWeak(location, self);
    v11 = self->_bufferTimer;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__SiriAnalyticsTimePeriodBuffer__startProducing__block_invoke;
    v12[3] = &unk_1E8587940;
    objc_copyWeak(&v13, location);
    dispatch_source_set_event_handler(v11, v12);
    dispatch_resume(self->_bufferTimer);
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }
}

void __48__SiriAnalyticsTimePeriodBuffer__startProducing__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerElapsed];

  objc_autoreleasePoolPop(v2);
}

- (SiriAnalyticsTimePeriodBuffer)initWithInterval:(double)a3 queue:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SiriAnalyticsTimePeriodBuffer;
  v8 = [(SiriAnalyticsTimePeriodBuffer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    v9->_bufferInterval = a3;
    v9->_leeway = 1.0;
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    bufferedMessages = v9->_bufferedMessages;
    v9->_bufferedMessages = v10;
  }

  return v9;
}

@end