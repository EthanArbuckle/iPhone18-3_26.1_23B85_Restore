@interface base_duration
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (base_duration)init;
- (base_duration)initWithConfiguration:(id)a3 error:(id *)a4;
- (base_duration)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (base_duration)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (base_duration)initWithMLModel:(id)a3;
- (id)predictionFromClassic_time_between_uses_med_dur_1:(double)a3 classic_time_between_uses_med_dur_2:(double)a4 classic_time_between_uses_med_dur_4:(double)a5 classic_time_between_uses_med_dur_24:(double)a6 classic_time_between_uses_std_dur_1:(double)a7 classic_time_between_uses_std_dur_2:(double)a8 classic_time_between_uses_std_dur_4:(double)a9 classic_time_between_uses_std_dur_24:(double)a10 hour:(double)a11 is_weekend:(double)a12 hour_plus_0:(double)a13 hour_plus_1:(double)a14 hour_plus_2:(double)a15 hour_plus_3:(double)a16 hour_plus_4:(double)a17 hour_plus_5:(double)a18 hours_until_use:(double)a19 meaningful_undercharge_rolling_average:(double)a20 error:(id *)a21;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation base_duration

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"base_duration" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[base_duration URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (base_duration)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = base_duration;
    v6 = [(base_duration *)&v10 init];
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

- (base_duration)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(base_duration *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (base_duration)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(base_duration *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (base_duration)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(base_duration *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (base_duration)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(base_duration *)self initWithMLModel:v6];
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
  v10[2] = __67__base_duration_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_2782D5248;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBFF68];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(base_duration *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(base_duration *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [base_durationOutput alloc];
    v13 = [v11 featureValueForName:@"duration_pred"];
    [v13 doubleValue];
    v14 = [(base_durationOutput *)v12 initWithDuration_pred:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(base_duration *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__base_duration_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_2782D5270;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(base_duration *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__base_duration_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_2782D5270;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromClassic_time_between_uses_med_dur_1:(double)a3 classic_time_between_uses_med_dur_2:(double)a4 classic_time_between_uses_med_dur_4:(double)a5 classic_time_between_uses_med_dur_24:(double)a6 classic_time_between_uses_std_dur_1:(double)a7 classic_time_between_uses_std_dur_2:(double)a8 classic_time_between_uses_std_dur_4:(double)a9 classic_time_between_uses_std_dur_24:(double)a10 hour:(double)a11 is_weekend:(double)a12 hour_plus_0:(double)a13 hour_plus_1:(double)a14 hour_plus_2:(double)a15 hour_plus_3:(double)a16 hour_plus_4:(double)a17 hour_plus_5:(double)a18 hours_until_use:(double)a19 meaningful_undercharge_rolling_average:(double)a20 error:(id *)a21
{
  v23 = [[base_durationInput alloc] initWithClassic_time_between_uses_med_dur_1:a3 classic_time_between_uses_med_dur_2:a4 classic_time_between_uses_med_dur_4:a5 classic_time_between_uses_med_dur_24:a6 classic_time_between_uses_std_dur_1:a7 classic_time_between_uses_std_dur_2:a8 classic_time_between_uses_std_dur_4:a9 classic_time_between_uses_std_dur_24:a10 hour:*&a11 is_weekend:*&a12 hour_plus_0:*&a13 hour_plus_1:*&a14 hour_plus_2:*&a15 hour_plus_3:*&a16 hour_plus_4:*&a17 hour_plus_5:*&a18 hours_until_use:*&a19 meaningful_undercharge_rolling_average:*&a20];
  v24 = [(base_duration *)self predictionFromFeatures:v23 error:a21];

  return v24;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v8];
  v11 = [(base_duration *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [base_durationOutput alloc];
        v17 = [v15 featureValueForName:@"duration_pred"];
        [v17 doubleValue];
        v18 = [(base_durationOutput *)v16 initWithDuration_pred:?];

        [v13 addObject:v18];
        ++v14;
      }

      while (v14 < [v12 count]);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end