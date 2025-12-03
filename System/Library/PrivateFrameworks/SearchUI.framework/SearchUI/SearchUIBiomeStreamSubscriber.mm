@interface SearchUIBiomeStreamSubscriber
- (BOOL)isFinished;
- (SearchUIBiomeStreamSubscriber)initWithStreamIdentifier:(id)identifier;
- (id)latestEvent;
- (id)notificationName;
- (id)queueLabel;
- (id)schedulerIdentifier;
- (void)addObserver:(id)observer selector:(SEL)selector;
- (void)dealloc;
- (void)getLatestEventWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)setupSink;
- (void)updateWithEvent:(id)event;
@end

@implementation SearchUIBiomeStreamSubscriber

- (id)notificationName
{
  v2 = MEMORY[0x1E696AEC0];
  streamIdentifier = [(SearchUIBiomeStreamSubscriber *)self streamIdentifier];
  v4 = [v2 stringWithFormat:@"searchui_biomeObserver_%@", streamIdentifier];

  return v4;
}

- (id)queueLabel
{
  v2 = MEMORY[0x1E696AEC0];
  streamIdentifier = [(SearchUIBiomeStreamSubscriber *)self streamIdentifier];
  v4 = [v2 stringWithFormat:@"com.apple.SearchUI.SearchUIBiomeObserver.%@.queue", streamIdentifier];

  return v4;
}

- (id)schedulerIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  streamIdentifier = [(SearchUIBiomeStreamSubscriber *)self streamIdentifier];
  v4 = [v2 stringWithFormat:@"com.apple.SearchUI.SearchUIBiomeObserver.%@.scheduler", streamIdentifier];

  return v4;
}

- (SearchUIBiomeStreamSubscriber)initWithStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(SearchUIBiomeStreamSubscriber *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_streamIdentifier, identifier);
  v8 = objc_alloc_init(MEMORY[0x1E696AD88]);
  center = v7->_center;
  v7->_center = v8;

  v7->_observerCount = 0;
  queueLabel = [(SearchUIBiomeStreamSubscriber *)v7 queueLabel];
  uTF8String = [queueLabel UTF8String];

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create(uTF8String, v12);
  queue = v7->_queue;
  v7->_queue = v13;

  v15 = BiomeLibrary();
  streamIdentifier = [(SearchUIBiomeStreamSubscriber *)v7 streamIdentifier];
  v23 = 0;
  v17 = [v15 streamWithIdentifier:streamIdentifier error:&v23];
  v18 = v23;
  stream = v7->_stream;
  v7->_stream = v17;

  if (!v18)
  {
    [(SearchUIBiomeStreamSubscriber *)v7 setupSink];
LABEL_7:
    v21 = v7;
    goto LABEL_8;
  }

  v20 = SearchUIBiomeLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(SearchUIBiomeStreamSubscriber *)v18 initWithStreamIdentifier:v20];
  }

  v21 = 0;
LABEL_8:

  return v21;
}

- (void)getLatestEventWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SearchUIBiomeStreamSubscriber *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SearchUIBiomeStreamSubscriber_getLatestEventWithCompletion___block_invoke;
  v7[3] = &unk_1E85B3958;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __62__SearchUIBiomeStreamSubscriber_getLatestEventWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) latestEvent];
  (*(v1 + 16))(v1, v2);
}

- (id)latestEvent
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  stream = [(SearchUIBiomeStreamSubscriber *)self stream];
  publisher = [stream publisher];
  last = [publisher last];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__SearchUIBiomeStreamSubscriber_latestEvent__block_invoke;
  v10[3] = &unk_1E85B4338;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__SearchUIBiomeStreamSubscriber_latestEvent__block_invoke_13;
  v9[3] = &unk_1E85B4360;
  v9[4] = self;
  v9[5] = &v11;
  v6 = [last sinkWithCompletion:v10 receiveInput:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __44__SearchUIBiomeStreamSubscriber_latestEvent__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  v5 = SearchUIBiomeLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__SearchUIBiomeStreamSubscriber_latestEvent__block_invoke_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) streamIdentifier];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1DA169000, v6, OS_LOG_TYPE_DEFAULT, "Fetching last event from BiomeStream (%@) finished without error.", &v8, 0xCu);
  }
}

void __44__SearchUIBiomeStreamSubscriber_latestEvent__block_invoke_13(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SearchUIBiomeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) streamIdentifier];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1DA169000, v4, OS_LOG_TYPE_DEFAULT, "Received last event from BiomeStream (%@).", &v9, 0xCu);
  }

  v6 = [v3 eventBody];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)isFinished
{
  biomeSink = [(SearchUIBiomeStreamSubscriber *)self biomeSink];
  status = [biomeSink status];
  v4 = [status state] == 2;

  return v4;
}

- (void)dealloc
{
  biomeSink = [(SearchUIBiomeStreamSubscriber *)self biomeSink];
  queue = [(SearchUIBiomeStreamSubscriber *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SearchUIBiomeStreamSubscriber_dealloc__block_invoke;
  block[3] = &unk_1E85B24C8;
  v8 = biomeSink;
  v5 = biomeSink;
  dispatch_async(queue, block);

  v6.receiver = self;
  v6.super_class = SearchUIBiomeStreamSubscriber;
  [(SearchUIBiomeStreamSubscriber *)&v6 dealloc];
}

- (void)addObserver:(id)observer selector:(SEL)selector
{
  observerCopy = observer;
  center = [(SearchUIBiomeStreamSubscriber *)self center];
  notificationName = [(SearchUIBiomeStreamSubscriber *)self notificationName];
  [center addObserver:observerCopy selector:selector name:notificationName object:self];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  center = [(SearchUIBiomeStreamSubscriber *)self center];
  [center removeObserver:observerCopy];
}

- (void)setupSink
{
  v3 = objc_alloc(MEMORY[0x1E698F258]);
  schedulerIdentifier = [(SearchUIBiomeStreamSubscriber *)self schedulerIdentifier];
  queue = [(SearchUIBiomeStreamSubscriber *)self queue];
  v6 = [v3 initWithIdentifier:schedulerIdentifier targetQueue:queue waking:0];

  objc_initWeak(&location, self);
  stream = [(SearchUIBiomeStreamSubscriber *)self stream];
  dSLPublisher = [stream DSLPublisher];
  v9 = [dSLPublisher subscribeOn:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__SearchUIBiomeStreamSubscriber_setupSink__block_invoke;
  v13[3] = &unk_1E85B4388;
  objc_copyWeak(&v14, &location);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__SearchUIBiomeStreamSubscriber_setupSink__block_invoke_16;
  v11[3] = &unk_1E85B43B0;
  objc_copyWeak(&v12, &location);
  v10 = [v9 sinkWithCompletion:v13 receiveInput:v11];
  [(SearchUIBiomeStreamSubscriber *)self setBiomeSink:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __42__SearchUIBiomeStreamSubscriber_setupSink__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 error];

  v6 = SearchUIBiomeLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__SearchUIBiomeStreamSubscriber_setupSink__block_invoke_cold_1(WeakRetained, v3);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained streamIdentifier];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1DA169000, v7, OS_LOG_TYPE_DEFAULT, "Subscription to BiomeStream (%@) closed without error.", &v9, 0xCu);
  }
}

void __42__SearchUIBiomeStreamSubscriber_setupSink__block_invoke_16(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SearchUIBiomeLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained streamIdentifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Received event from BiomeStream (%@)", &v8, 0xCu);
  }

  v7 = [v3 eventBody];

  [WeakRetained updateWithEvent:v7];
}

- (void)updateWithEvent:(id)event
{
  v9[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  center = [(SearchUIBiomeStreamSubscriber *)self center];
  notificationName = [(SearchUIBiomeStreamSubscriber *)self notificationName];
  v8 = @"event";
  v9[0] = eventCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [center postNotificationName:notificationName object:self userInfo:v7];
}

- (void)initWithStreamIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Unable to subscribe to BiomeStream due to error: %@", &v2, 0xCu);
}

void __44__SearchUIBiomeStreamSubscriber_latestEvent__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) streamIdentifier];
  v4 = [a2 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1DA169000, v5, v6, "Fetching last event from BiomeStream (%@) failed with error: %@", v7, v8, v9, v10, v11);
}

void __42__SearchUIBiomeStreamSubscriber_setupSink__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = [a1 streamIdentifier];
  v4 = [a2 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_1DA169000, v5, v6, "Subscription to BiomeStream (%@) failed with error: %@", v7, v8, v9, v10, v11);
}

@end