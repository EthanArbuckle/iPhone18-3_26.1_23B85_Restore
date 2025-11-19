@interface RTPlaceTypeClassifierModelMultiClass
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (RTPlaceTypeClassifierModelMultiClass)init;
- (RTPlaceTypeClassifierModelMultiClass)initWithConfiguration:(id)a3 error:(id *)a4;
- (RTPlaceTypeClassifierModelMultiClass)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (RTPlaceTypeClassifierModelMultiClass)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (RTPlaceTypeClassifierModelMultiClass)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromMean_daily_longest_charging_duration_bucketed:(double)a3 mean_daily_longest_screen_lock_duration_bucketed:(double)a4 mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)a5 mean_daily_total_charging_duration_bucketed:(double)a6 mean_daily_total_screen_lock_duration_bucketed:(double)a7 mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)a8 mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:(double)a9 median_daily_longest_charging_duration_bucketed:(double)a10 median_daily_longest_screen_lock_duration_bucketed:(double)a11 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)a12 median_daily_total_charging_duration_bucketed:(double)a13 median_daily_total_screen_lock_duration_bucketed:(double)a14 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)a15 percentage_of_days_with_charging_bucketed:(double)a16 percentage_of_days_with_screen_lock_bucketed:(double)a17 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:(double)a18 is_iPhone:(double)a19 is_iPad:(double)a20 is_Watch:(double)a21 error:(id *)a22;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
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

- (RTPlaceTypeClassifierModelMultiClass)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = RTPlaceTypeClassifierModelMultiClass;
    v6 = [(RTPlaceTypeClassifierModelMultiClass *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (RTPlaceTypeClassifierModelMultiClass)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(RTPlaceTypeClassifierModelMultiClass *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (RTPlaceTypeClassifierModelMultiClass)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(RTPlaceTypeClassifierModelMultiClass *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (RTPlaceTypeClassifierModelMultiClass)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(RTPlaceTypeClassifierModelMultiClass *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RTPlaceTypeClassifierModelMultiClass)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(RTPlaceTypeClassifierModelMultiClass *)self initWithMLModel:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 URLOfModelInThisBundle];
  [a1 loadContentsOfURL:v8 configuration:v7 completionHandler:v6];
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBFF20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__RTPlaceTypeClassifierModelMultiClass_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_2788C8E38;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
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

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBFF68];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(RTPlaceTypeClassifierModelMultiClass *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(RTPlaceTypeClassifierModelMultiClass *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [RTPlaceTypeClassifierModelMultiClassOutput alloc];
    v13 = [v11 featureValueForName:@"target"];
    v14 = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    v16 = [v15 dictionaryValue];
    v17 = [(RTPlaceTypeClassifierModelMultiClassOutput *)v12 initWithTarget:v14 classProbability:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTPlaceTypeClassifierModelMultiClass *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__RTPlaceTypeClassifierModelMultiClass_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_2788C8E60;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
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

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(RTPlaceTypeClassifierModelMultiClass *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__RTPlaceTypeClassifierModelMultiClass_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_2788C8E60;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
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

- (id)predictionFromMean_daily_longest_charging_duration_bucketed:(double)a3 mean_daily_longest_screen_lock_duration_bucketed:(double)a4 mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)a5 mean_daily_total_charging_duration_bucketed:(double)a6 mean_daily_total_screen_lock_duration_bucketed:(double)a7 mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)a8 mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:(double)a9 median_daily_longest_charging_duration_bucketed:(double)a10 median_daily_longest_screen_lock_duration_bucketed:(double)a11 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:(double)a12 median_daily_total_charging_duration_bucketed:(double)a13 median_daily_total_screen_lock_duration_bucketed:(double)a14 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:(double)a15 percentage_of_days_with_charging_bucketed:(double)a16 percentage_of_days_with_screen_lock_bucketed:(double)a17 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:(double)a18 is_iPhone:(double)a19 is_iPad:(double)a20 is_Watch:(double)a21 error:(id *)a22
{
  v24 = [[RTPlaceTypeClassifierModelMultiClassInput alloc] initWithMean_daily_longest_charging_duration_bucketed:a3 mean_daily_longest_screen_lock_duration_bucketed:a4 mean_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:a5 mean_daily_total_charging_duration_bucketed:a6 mean_daily_total_screen_lock_duration_bucketed:a7 mean_daily_total_uninterrupted_WiFi_connection_duration_bucketed:a8 mean_daily_uninterrupted_WiFi_connection_stability_ratio_bucketed:a9 median_daily_longest_charging_duration_bucketed:a10 median_daily_longest_screen_lock_duration_bucketed:*&a11 median_daily_longest_uninterrupted_WiFi_connection_duration_bucketed:*&a12 median_daily_total_charging_duration_bucketed:*&a13 median_daily_total_screen_lock_duration_bucketed:*&a14 median_daily_total_uninterrupted_WiFi_connection_duration_bucketed:*&a15 percentage_of_days_with_charging_bucketed:*&a16 percentage_of_days_with_screen_lock_bucketed:*&a17 percentage_of_days_with_uninterrupted_WiFi_connection_bucketed:*&a18 is_iPhone:*&a19 is_iPad:*&a20 is_Watch:*&a21];
  v25 = [(RTPlaceTypeClassifierModelMultiClass *)self predictionFromFeatures:v24 error:a22];

  return v25;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v8];
  v11 = [(RTPlaceTypeClassifierModelMultiClass *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = v9;
      v25 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [RTPlaceTypeClassifierModelMultiClassOutput alloc];
        v17 = [v15 featureValueForName:@"target"];
        v18 = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        v20 = [v19 dictionaryValue];
        v21 = [(RTPlaceTypeClassifierModelMultiClassOutput *)v16 initWithTarget:v18 classProbability:v20];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v24;
      v8 = v25;
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