@interface ATXModeScreenShareFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (id)_provideFeaturesWithScreenShareEvent:(id)a3;
- (id)provideFeatures;
- (void)_processNewScreenShareEvent:(id)a3;
- (void)beginListening;
- (void)stopListening;
@end

@implementation ATXModeScreenShareFeaturizer

- (id)provideFeatures
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v3 = BiomeLibrary();
  v4 = [v3 Screen];
  v5 = [v4 Sharing];
  v6 = [v5 atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C6A0 lastN:&unk_28733C6A0 reversed:0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__ATXModeScreenShareFeaturizer_provideFeatures__block_invoke_12;
  v10[3] = &unk_279AB7CD0;
  v10[4] = &v11;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_1 receiveInput:v10];
  v8 = [(ATXModeScreenShareFeaturizer *)self _provideFeaturesWithScreenShareEvent:v12[5]];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __47__ATXModeScreenShareFeaturizer_provideFeatures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__ATXModeScreenShareFeaturizer_provideFeatures__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeScreenShareFeaturizer: done fetching last screen share event", v6, 2u);
  }
}

uint64_t __47__ATXModeScreenShareFeaturizer_provideFeatures__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)_provideFeaturesWithScreenShareEvent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 isStart];
  if (v4)
  {
    v5 = [v3 type] == 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(ATXModeFeatureSet);
  [(ATXModeFeatureSet *)v6 setValue:v4 forBinaryFeatureOfType:17];
  [(ATXModeFeatureSet *)v6 setValue:v5 forBinaryFeatureOfType:20];
  v7 = __atxlog_handle_modes();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "ATXModeScreenShareFeaturizer: updating screen share feature: isScreenSharing: %d, isAirPlayMirroring: %d", v10, 0xEu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_processNewScreenShareEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(ATXModeScreenShareFeaturizer *)self _provideFeaturesWithScreenShareEvent:v4];

  [WeakRetained featurizer:self didUpdateFeatures:v5];
}

- (void)beginListening
{
  objc_initWeak(&location, self);
  if (!self->_queue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.BiomeScreenShare.queue", v3);
    queue = self->_queue;
    self->_queue = v4;
  }

  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "ATXModeScreenShareFeaturizer: registering for real time events", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.ScreenShare" targetQueue:self->_queue];
  scheduler = self->_scheduler;
  self->_scheduler = v7;

  v9 = BiomeLibrary();
  v10 = [v9 Screen];
  v11 = [v10 Sharing];
  v12 = [v11 atx_DSLPublisher];
  v13 = [v12 subscribeOn:self->_scheduler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__ATXModeScreenShareFeaturizer_beginListening__block_invoke_21;
  v16[3] = &unk_279AB7CF8;
  objc_copyWeak(&v17, &location);
  v14 = [v13 sinkWithCompletion:&__block_literal_global_20 receiveInput:v16];
  sink = self->_sink;
  self->_sink = v14;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __46__ATXModeScreenShareFeaturizer_beginListening__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__ATXModeScreenShareFeaturizer_beginListening__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeScreenShareFeaturizer: done listening to screen share events", v6, 2u);
  }
}

void __46__ATXModeScreenShareFeaturizer_beginListening__block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [v3 eventBody];
    v7 = [v5 numberWithBool:{objc_msgSend(v6, "isStart")}];
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeScreenShareFeaturizer: received new screen share event, isStart: %{public}@", &v12, 0xCu);
  }

  v8 = [v3 eventBody];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [v3 eventBody];
    [WeakRetained _processNewScreenShareEvent:v10];
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

void __47__ATXModeScreenShareFeaturizer_provideFeatures__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeScreenShareFeaturizer: error fetching last screen share event: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __46__ATXModeScreenShareFeaturizer_beginListening__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeScreenShareFeaturizer: error listening to screen share events: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end