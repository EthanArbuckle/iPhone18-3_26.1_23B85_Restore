@interface ATXModeRoutineFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (id)_provideFeaturesWithLocationEvent:(id)event;
- (id)provideFeatures;
- (void)_processNewLocationEvent:(id)event;
- (void)beginListening;
- (void)stopListening;
@end

@implementation ATXModeRoutineFeaturizer

- (id)provideFeatures
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v3 = BiomeLibrary();
  location = [v3 Location];
  semantic = [location Semantic];
  v6 = [semantic atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C808 lastN:&unk_28733C808 reversed:0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__ATXModeRoutineFeaturizer_provideFeatures__block_invoke_12;
  v10[3] = &unk_279AB7CD0;
  v10[4] = &v11;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_10 receiveInput:v10];
  v8 = [(ATXModeRoutineFeaturizer *)self _provideFeaturesWithLocationEvent:v12[5]];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __43__ATXModeRoutineFeaturizer_provideFeatures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__ATXModeRoutineFeaturizer_provideFeatures__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeRoutineFeaturizer: done fetching last location event", v6, 2u);
  }
}

uint64_t __43__ATXModeRoutineFeaturizer_provideFeatures__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)_provideFeaturesWithLocationEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy starting])
  {
    v4 = [eventCopy userSpecificPlaceType] == 1;
  }

  else
  {
    v4 = 0;
  }

  if ([eventCopy starting])
  {
    v5 = [eventCopy userSpecificPlaceType] == 2;
  }

  else
  {
    v5 = 0;
  }

  if ([eventCopy starting])
  {
    v6 = [eventCopy userSpecificPlaceType] == 4;
  }

  else
  {
    v6 = 0;
  }

  if ([eventCopy starting])
  {
    v7 = [eventCopy userSpecificPlaceType] == 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(ATXModeFeatureSet);
  [(ATXModeFeatureSet *)v8 setValue:v4 forBinaryFeatureOfType:1];
  [(ATXModeFeatureSet *)v8 setValue:v5 forBinaryFeatureOfType:2];
  [(ATXModeFeatureSet *)v8 setValue:v6 forBinaryFeatureOfType:22];
  [(ATXModeFeatureSet *)v8 setValue:v7 forBinaryFeatureOfType:23];
  v9 = __atxlog_handle_modes();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109888;
    v12[1] = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_260C9F000, v9, OS_LOG_TYPE_DEFAULT, "ATXModeRoutineFeaturizer: updating features. isAtHome: %d isAtWork: %d isAtGym: %d isAtSchool: %d", v12, 0x1Au);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_processNewLocationEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(ATXModeRoutineFeaturizer *)self _provideFeaturesWithLocationEvent:eventCopy];

  [WeakRetained featurizer:self didUpdateFeatures:v5];
}

- (void)beginListening
{
  objc_initWeak(&location, self);
  if (!self->_queue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.BiomeSemanticLocation.queue", v3);
    queue = self->_queue;
    self->_queue = v4;
  }

  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "ATXModeRoutineFeaturizer: registering for real time events", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.Routine" targetQueue:self->_queue];
  scheduler = self->_scheduler;
  self->_scheduler = v7;

  v9 = BiomeLibrary();
  location = [v9 Location];
  semantic = [location Semantic];
  atx_DSLPublisher = [semantic atx_DSLPublisher];
  v13 = [atx_DSLPublisher subscribeOn:self->_scheduler];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__ATXModeRoutineFeaturizer_beginListening__block_invoke_21;
  v16[3] = &unk_279AB7CF8;
  objc_copyWeak(&v17, &location);
  v14 = [v13 sinkWithCompletion:&__block_literal_global_20_3 receiveInput:v16];
  sink = self->_sink;
  self->_sink = v14;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __42__ATXModeRoutineFeaturizer_beginListening__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__ATXModeRoutineFeaturizer_beginListening__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeRoutineFeaturizer: done listening to location events", v6, 2u);
  }
}

void __42__ATXModeRoutineFeaturizer_beginListening__block_invoke_21(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 eventBody];
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134283777;
    v8 = [v3 userSpecificPlaceType];
    v9 = 1024;
    v10 = [v3 starting];
    _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "ATXModeRoutineFeaturizer: received new location event for semantic location: %{private}lu, is starting: %d", &v7, 0x12u);
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _processNewLocationEvent:v3];
  }

  v6 = *MEMORY[0x277D85DE8];
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

void __43__ATXModeRoutineFeaturizer_provideFeatures__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeRoutineFeaturizer: error fetching last location event: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __42__ATXModeRoutineFeaturizer_beginListening__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeRoutineFeaturizer: error listening to location events: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end