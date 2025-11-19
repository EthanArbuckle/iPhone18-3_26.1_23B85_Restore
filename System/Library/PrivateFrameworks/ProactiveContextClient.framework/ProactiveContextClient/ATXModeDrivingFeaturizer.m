@interface ATXModeDrivingFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (id)_fetchMostRecentDNDWDEvent;
- (id)_provideFeaturesWithLastDNDWDEvent:(id)a3;
- (void)_beginListeningForDNDWDEvents;
- (void)_processNewDNDWDEvent:(id)a3;
- (void)beginListening;
- (void)stopListening;
@end

@implementation ATXModeDrivingFeaturizer

- (id)_provideFeaturesWithLastDNDWDEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = [(ATXModeDrivingFeaturizer *)self _fetchMostRecentDNDWDEvent];
    v9 = [v8 starting];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (![v4 starting])
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "ATXModeDrivingFeaturizer: Driving mode activated by Do Not Disturb While Driving", v12, 2u);
  }

  v7 = 1;
LABEL_8:
  v10 = objc_alloc_init(ATXModeFeatureSet);
  [(ATXModeFeatureSet *)v10 setValue:v7 forBinaryFeatureOfType:4];

  return v10;
}

- (void)_processNewDNDWDEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(ATXModeDrivingFeaturizer *)self _provideFeaturesWithLastDNDWDEvent:v4];

  [WeakRetained featurizer:self didUpdateFeatures:v5];
}

- (id)_fetchMostRecentDNDWDEvent
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__13;
  v14 = __Block_byref_object_dispose__13;
  v15 = 0;
  v2 = BiomeLibrary();
  v3 = [v2 UserFocus];
  v4 = [v3 DoNotDisturbWhileDriving];
  v5 = [v4 atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C868 lastN:&unk_28733C868 reversed:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ATXModeDrivingFeaturizer__fetchMostRecentDNDWDEvent__block_invoke_12;
  v9[3] = &unk_279AB7CD0;
  v9[4] = &v10;
  v6 = [v5 sinkWithCompletion:&__block_literal_global_15 receiveInput:v9];
  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __54__ATXModeDrivingFeaturizer__fetchMostRecentDNDWDEvent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__ATXModeDrivingFeaturizer__fetchMostRecentDNDWDEvent__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeDrivingFeaturizer: done fetching last DNDWD launch event", v6, 2u);
  }
}

uint64_t __54__ATXModeDrivingFeaturizer__fetchMostRecentDNDWDEvent__block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)_beginListeningForDNDWDEvents
{
  v3 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.DNDWD" targetQueue:self->_queue];
  DNDWDScheduler = self->_DNDWDScheduler;
  self->_DNDWDScheduler = v3;

  objc_initWeak(&location, self);
  v5 = BiomeLibrary();
  v6 = [v5 UserFocus];
  v7 = [v6 DoNotDisturbWhileDriving];
  v8 = [v7 atx_DSLPublisher];
  v9 = [v8 subscribeOn:self->_DNDWDScheduler];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__ATXModeDrivingFeaturizer__beginListeningForDNDWDEvents__block_invoke_20;
  v12[3] = &unk_279AB7CF8;
  objc_copyWeak(&v13, &location);
  v10 = [v9 sinkWithCompletion:&__block_literal_global_19 receiveInput:v12];
  DNDWDSink = self->_DNDWDSink;
  self->_DNDWDSink = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __57__ATXModeDrivingFeaturizer__beginListeningForDNDWDEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__ATXModeDrivingFeaturizer__beginListeningForDNDWDEvents__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeDrivingFeaturizer: done listening to DNDWD events", v6, 2u);
  }
}

void __57__ATXModeDrivingFeaturizer__beginListeningForDNDWDEvents__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeDrivingFeaturizer: received new DNDWD event", v8, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [v3 eventBody];
    [WeakRetained _processNewDNDWDEvent:v7];
  }
}

- (void)beginListening
{
  if (!self->_queue)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.BiomeDriving.queue", v3);
    queue = self->_queue;
    self->_queue = v4;
  }

  [(ATXModeDrivingFeaturizer *)self _beginListeningForDNDWDEvents];
}

- (void)stopListening
{
  [(BPSSink *)self->_DNDWDSink cancel];
  DNDWDSink = self->_DNDWDSink;
  self->_DNDWDSink = 0;

  DNDWDScheduler = self->_DNDWDScheduler;
  self->_DNDWDScheduler = 0;
}

- (ATXModeFeaturizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __54__ATXModeDrivingFeaturizer__fetchMostRecentDNDWDEvent__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeDrivingFeaturizer: error fetching last DNDWD event: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __57__ATXModeDrivingFeaturizer__beginListeningForDNDWDEvents__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "ATXModeDrivingFeaturizer: error listening to DNDWD events: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end