@interface RTPlaceTypeClassifierModelMultiClass
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (RTPlaceTypeClassifierModelMultiClass)init;
- (RTPlaceTypeClassifierModelMultiClass)initWithConfiguration:(id)configuration error:(id *)error;
- (RTPlaceTypeClassifierModelMultiClass)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (RTPlaceTypeClassifierModelMultiClass)initWithContentsOfURL:(id)l error:(id *)error;
- (RTPlaceTypeClassifierModelMultiClass)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromMean_daily_longest_charging_duration_bucketed:(double)mean_daily_longest_charging_duration_bucketed mean_daily_longest_screen_lock_duration_bucketed:(double)mean_daily_longest_screen_lock_duration_bucketed mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)fi_connection_duration_bucketed mean_daily_total_charging_duration_bucketed:(double)mean_daily_total_charging_duration_bucketed mean_daily_total_screen_lock_duration_bucketed:(double)mean_daily_total_screen_lock_duration_bucketed mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)wiFi_connection_duration_bucketed mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:(double)fi_connection_stability_ratio_bucketed median_daily_longest_charging_duration_bucketed:(double)self0 median_daily_longest_screen_lock_duration_bucketed:(double)self1 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)self2 median_daily_total_charging_duration_bucketed:(double)self3 median_daily_total_screen_lock_duration_bucketed:(double)self4 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)self5 percentage_of_days_with_charging_bucketed:(double)self6 percentage_of_days_with_screen_lock_bucketed:(double)self7 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:(double)self8 is_iPhone:(double)self9 is_iPad:(double)pad is_Watch:(double)watch error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation RTPlaceTypeClassifierModelMultiClass

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"RTPlaceTypeClassifierModelMultiClass" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not load RTPlaceTypeClassifierModelMultiClass.mlmodelc in the bundle resource", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (RTPlaceTypeClassifierModelMultiClass)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = RTPlaceTypeClassifierModelMultiClass;
    v6 = [(RTPlaceTypeClassifierModelMultiClass *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RTPlaceTypeClassifierModelMultiClass)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(RTPlaceTypeClassifierModelMultiClass *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (RTPlaceTypeClassifierModelMultiClass)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(RTPlaceTypeClassifierModelMultiClass *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (RTPlaceTypeClassifierModelMultiClass)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(RTPlaceTypeClassifierModelMultiClass *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RTPlaceTypeClassifierModelMultiClass)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(RTPlaceTypeClassifierModelMultiClass *)self initWithMLModel:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy completionHandler:handlerCopy];
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277CBFF20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__RTPlaceTypeClassifierModelMultiClass_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_2788C8E38;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

void __90__RTPlaceTypeClassifierModelMultiClass_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[RTPlaceTypeClassifierModelMultiClass alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(RTPlaceTypeClassifierModelMultiClass *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(RTPlaceTypeClassifierModelMultiClass *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [RTPlaceTypeClassifierModelMultiClassOutput alloc];
    v13 = [v11 featureValueForName:@"target"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(RTPlaceTypeClassifierModelMultiClassOutput *)v12 initWithTarget:int64Value classProbability:dictionaryValue];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(RTPlaceTypeClassifierModelMultiClass *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__RTPlaceTypeClassifierModelMultiClass_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_2788C8E60;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

void __81__RTPlaceTypeClassifierModelMultiClass_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [RTPlaceTypeClassifierModelMultiClassOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(RTPlaceTypeClassifierModelMultiClassOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(RTPlaceTypeClassifierModelMultiClass *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__RTPlaceTypeClassifierModelMultiClass_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_2788C8E60;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

void __89__RTPlaceTypeClassifierModelMultiClass_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [RTPlaceTypeClassifierModelMultiClassOutput alloc];
    v7 = [v14 featureValueForName:@"target"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(RTPlaceTypeClassifierModelMultiClassOutput *)v6 initWithTarget:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

- (id)predictionFromMean_daily_longest_charging_duration_bucketed:(double)mean_daily_longest_charging_duration_bucketed mean_daily_longest_screen_lock_duration_bucketed:(double)mean_daily_longest_screen_lock_duration_bucketed mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)fi_connection_duration_bucketed mean_daily_total_charging_duration_bucketed:(double)mean_daily_total_charging_duration_bucketed mean_daily_total_screen_lock_duration_bucketed:(double)mean_daily_total_screen_lock_duration_bucketed mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)wiFi_connection_duration_bucketed mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:(double)fi_connection_stability_ratio_bucketed median_daily_longest_charging_duration_bucketed:(double)self0 median_daily_longest_screen_lock_duration_bucketed:(double)self1 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)self2 median_daily_total_charging_duration_bucketed:(double)self3 median_daily_total_screen_lock_duration_bucketed:(double)self4 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)self5 percentage_of_days_with_charging_bucketed:(double)self6 percentage_of_days_with_screen_lock_bucketed:(double)self7 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:(double)self8 is_iPhone:(double)self9 is_iPad:(double)pad is_Watch:(double)watch error:(id *)error
{
  v24 = [[RTPlaceTypeClassifierModelMultiClassInput alloc] initWithMean_daily_longest_charging_duration_bucketed:mean_daily_longest_charging_duration_bucketed mean_daily_longest_screen_lock_duration_bucketed:mean_daily_longest_screen_lock_duration_bucketed mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:fi_connection_duration_bucketed mean_daily_total_charging_duration_bucketed:mean_daily_total_charging_duration_bucketed mean_daily_total_screen_lock_duration_bucketed:mean_daily_total_screen_lock_duration_bucketed mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:wiFi_connection_duration_bucketed mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:fi_connection_stability_ratio_bucketed median_daily_longest_charging_duration_bucketed:median_daily_longest_charging_duration_bucketed median_daily_longest_screen_lock_duration_bucketed:*&median_daily_longest_screen_lock_duration_bucketed median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:*&median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed median_daily_total_charging_duration_bucketed:*&median_daily_total_charging_duration_bucketed median_daily_total_screen_lock_duration_bucketed:*&median_daily_total_screen_lock_duration_bucketed median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:*&median_daily_total_uninterrupted_WiFi_connection_duration_bucketed percentage_of_days_with_charging_bucketed:*&percentage_of_days_with_charging_bucketed percentage_of_days_with_screen_lock_bucketed:*&percentage_of_days_with_screen_lock_bucketed percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:*&fi_connection_bucketed is_iPhone:*&phone is_iPad:*&pad is_Watch:*&watch];
  v25 = [(RTPlaceTypeClassifierModelMultiClass *)self predictionFromFeatures:v24 error:error];

  return v25;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(RTPlaceTypeClassifierModelMultiClass *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = optionsCopy;
      v25 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [RTPlaceTypeClassifierModelMultiClassOutput alloc];
        v17 = [v15 featureValueForName:@"target"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(RTPlaceTypeClassifierModelMultiClassOutput *)v16 initWithTarget:int64Value classProbability:dictionaryValue];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v24;
      inputsCopy = v25;
      v10 = v23;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end