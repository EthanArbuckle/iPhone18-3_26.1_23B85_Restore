@interface ATXModeBedtimeFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (id)_provideFeaturesWithSleepEvent:(id)event;
- (id)provideFeatures;
- (void)_processNewSleepEvent:(id)event;
- (void)beginListening;
- (void)stopListening;
@end

@implementation ATXModeBedtimeFeaturizer

- (id)provideFeatures
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  sleepMode = [userFocus SleepMode];
  v6 = [sleepMode atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C820 lastN:&unk_28733C820 reversed:0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__ATXModeBedtimeFeaturizer_provideFeatures__block_invoke_12;
  v10[3] = &unk_279AB7CD0;
  v10[4] = &v11;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_11 receiveInput:v10];
  v8 = [(ATXModeBedtimeFeaturizer *)self _provideFeaturesWithSleepEvent:v12[5]];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __43__ATXModeBedtimeFeaturizer_provideFeatures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__ATXModeBedtimeFeaturizer_provideFeatures__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeBedtimeFeaturizer: done fetching last sleep event", v6, 2u);
  }
}

uint64_t __43__ATXModeBedtimeFeaturizer_provideFeatures__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)_provideFeaturesWithSleepEvent:(id)event
{
  v10 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = [eventCopy state] == 3 || objc_msgSend(eventCopy, "state") == 2;
  v5 = objc_alloc_init(ATXModeFeatureSet);
  [(ATXModeFeatureSet *)v5 setValue:v4 forBinaryFeatureOfType:7];
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "ATXModeBedtimeFeaturizer: updating bedtime feature: %{BOOL}d", v9, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_processNewSleepEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(ATXModeBedtimeFeaturizer *)self _provideFeaturesWithSleepEvent:eventCopy];

  [WeakRetained featurizer:self didUpdateFeatures:v5];
}

- (void)beginListening
{
  objc_initWeak(&location, self);
  if (!self->_queue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.BiomeBedtime.queue", v3);
    queue = self->_queue;
    self->_queue = v4;
  }

  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "ATXModeBedtimeFeaturizer: registering for real time events", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.Bedtime" targetQueue:self->_queue];
  scheduler = self->_scheduler;
  self->_scheduler = v7;

  v9 = BiomeLibrary();
  userFocus = [v9 UserFocus];
  sleepMode = [userFocus SleepMode];
  atx_DSLPublisher = [sleepMode atx_DSLPublisher];
  v13 = [atx_DSLPublisher subscribeOn:self->_scheduler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__ATXModeBedtimeFeaturizer_beginListening__block_invoke_21;
  v16[3] = &unk_279AB7CF8;
  objc_copyWeak(&v17, &location);
  v14 = [v13 sinkWithCompletion:&__block_literal_global_20_4 receiveInput:v16];
  sink = self->_sink;
  self->_sink = v14;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __42__ATXModeBedtimeFeaturizer_beginListening__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__ATXModeBedtimeFeaturizer_beginListening__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeBedtimeFeaturizer: done listening to sleep events", v6, 2u);
  }
}

void __42__ATXModeBedtimeFeaturizer_beginListening__block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [v3 eventBody];
    v7 = [v5 numberWithInt:{objc_msgSend(v6, "state")}];
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeBedtimeFeaturizer: received new sleep event of state: %{public}@", &v12, 0xCu);
  }

  v8 = [v3 eventBody];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [v3 eventBody];
    [WeakRetained _processNewSleepEvent:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopListening
{
  [(BPSSink *)self->_sink cancel];
  sink = self->_sink;
  self->_sink = 0;

  scheduler = self->_scheduler;
  self->_scheduler = 0;
}

- (ATXModeFeaturizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__ATXModeBedtimeFeaturizer_provideFeatures__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeBedtimeFeaturizer: error fetching last sleep event: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __42__ATXModeBedtimeFeaturizer_beginListening__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeBedtimeFeaturizer: error listening to sleep events: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end