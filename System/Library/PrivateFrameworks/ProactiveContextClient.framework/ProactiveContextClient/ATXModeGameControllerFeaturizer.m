@interface ATXModeGameControllerFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (id)_provideFeaturesWithGameControllerEvent:(id)a3;
- (id)provideFeatures;
- (void)_processNewGameControllerEvent:(id)a3;
- (void)beginListening;
- (void)stopListening;
@end

@implementation ATXModeGameControllerFeaturizer

- (id)provideFeatures
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v3 = BiomeLibrary();
  v4 = [v3 GameController];
  v5 = [v4 Connected];
  v6 = [v5 atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C6B8 lastN:&unk_28733C6B8 reversed:0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__ATXModeGameControllerFeaturizer_provideFeatures__block_invoke_12;
  v10[3] = &unk_279AB7CD0;
  v10[4] = &v11;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_2 receiveInput:v10];
  v8 = [(ATXModeGameControllerFeaturizer *)self _provideFeaturesWithGameControllerEvent:v12[5]];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __50__ATXModeGameControllerFeaturizer_provideFeatures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__ATXModeGameControllerFeaturizer_provideFeatures__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeGameControllerFeaturizer: done fetching last event", v6, 2u);
  }
}

uint64_t __50__ATXModeGameControllerFeaturizer_provideFeatures__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)_provideFeaturesWithGameControllerEvent:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a3 isControllerConnected];
  v4 = objc_alloc_init(ATXModeFeatureSet);
  [(ATXModeFeatureSet *)v4 setValue:v3 forBinaryFeatureOfType:19];
  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeGameControllerFeaturizer: updating game controller feature: %d", v8, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_processNewGameControllerEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(ATXModeGameControllerFeaturizer *)self _provideFeaturesWithGameControllerEvent:v4];

  [WeakRetained featurizer:self didUpdateFeatures:v5];
}

- (void)beginListening
{
  objc_initWeak(&location, self);
  if (!self->_queue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.BiomeGameController.queue", v3);
    queue = self->_queue;
    self->_queue = v4;
  }

  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "ATXModeGameControllerFeaturizer: registering for real time events", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.GameController" targetQueue:self->_queue];
  scheduler = self->_scheduler;
  self->_scheduler = v7;

  v9 = BiomeLibrary();
  v10 = [v9 GameController];
  v11 = [v10 Connected];
  v12 = [v11 atx_DSLPublisher];
  v13 = [v12 subscribeOn:self->_scheduler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__ATXModeGameControllerFeaturizer_beginListening__block_invoke_21;
  v16[3] = &unk_279AB7CF8;
  objc_copyWeak(&v17, &location);
  v14 = [v13 sinkWithCompletion:&__block_literal_global_20_0 receiveInput:v16];
  sink = self->_sink;
  self->_sink = v14;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __49__ATXModeGameControllerFeaturizer_beginListening__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__ATXModeGameControllerFeaturizer_beginListening__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeGameControllerFeaturizer: done listening to game controller events", v6, 2u);
  }
}

void __49__ATXModeGameControllerFeaturizer_beginListening__block_invoke_21(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [v3 eventBody];
    v7 = [v5 numberWithBool:{objc_msgSend(v6, "isControllerConnected")}];
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeGameControllerFeaturizer: received new game controller event, isConnected: %{public}@", &v12, 0xCu);
  }

  v8 = [v3 eventBody];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [v3 eventBody];
    [WeakRetained _processNewGameControllerEvent:v10];
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

void __50__ATXModeGameControllerFeaturizer_provideFeatures__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeGameControllerFeaturizer: error fetching last event: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __49__ATXModeGameControllerFeaturizer_beginListening__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeGameControllerFeaturizer: error listening to game controller events: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end