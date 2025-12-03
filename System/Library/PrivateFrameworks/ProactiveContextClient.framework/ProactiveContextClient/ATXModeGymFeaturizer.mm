@interface ATXModeGymFeaturizer
- (ATXModeFeaturizerDelegate)delegate;
- (ATXModeGymFeaturizer)init;
- (id)provideFeatures;
- (void)beginListening;
- (void)handleChange;
- (void)stopListening;
@end

@implementation ATXModeGymFeaturizer

- (ATXModeGymFeaturizer)init
{
  v6.receiver = self;
  v6.super_class = ATXModeGymFeaturizer;
  v2 = [(ATXModeGymFeaturizer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataProvider = v2->_dataProvider;
    v2->_dataProvider = v3;
  }

  return v2;
}

- (id)provideFeatures
{
  v3 = objc_alloc_init(ATXModeFeatureSet);
  dataProvider = [(ATXModeGymFeaturizer *)self dataProvider];
  getCurrentVisit = [dataProvider getCurrentVisit];

  if (getCurrentVisit)
  {
    possibleCategoryNames = [getCurrentVisit possibleCategoryNames];
    firstObject = [possibleCategoryNames firstObject];

    if ([firstObject isEqualToString:*MEMORY[0x277D0E890]])
    {
      v8 = 1;
    }

    else
    {
      v8 = [firstObject isEqualToString:@"gym"];
    }

    [(ATXModeFeatureSet *)v3 setValue:v8 forBinaryFeatureOfType:24];
  }

  else
  {
    [(ATXModeFeatureSet *)v3 setValue:0 forBinaryFeatureOfType:24];
  }

  return v3;
}

- (void)beginListening
{
  v6[2] = *MEMORY[0x277D85DE8];
  dataProvider = [(ATXModeGymFeaturizer *)self dataProvider];
  v6[0] = *MEMORY[0x277D0E890];
  v6[1] = @"gym";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [dataProvider subscribeToPOIChangesForCategories:v4 observer:self enterSelector:sel_handleChange exitSelector:sel_handleChange sinkCompletion:&__block_literal_global_6];

  v5 = *MEMORY[0x277D85DE8];
}

void __38__ATXModeGymFeaturizer_beginListening__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__ATXModeGymFeaturizer_beginListening__block_invoke_cold_1(v2, v4);
    }
  }
}

- (void)stopListening
{
  dataProvider = [(ATXModeGymFeaturizer *)self dataProvider];
  [dataProvider unsubscribeToPOIChanges];
}

- (void)handleChange
{
  provideFeatures = [(ATXModeGymFeaturizer *)self provideFeatures];
  delegate = [(ATXModeGymFeaturizer *)self delegate];
  [delegate featurizer:self didUpdateFeatures:provideFeatures];
}

- (ATXModeFeaturizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __38__ATXModeGymFeaturizer_beginListening__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_260C9F000, a2, OS_LOG_TYPE_ERROR, "ATXModeGymFeaturizer: error subscribing to stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end