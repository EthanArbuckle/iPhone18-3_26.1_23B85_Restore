@interface base_duration
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (base_duration)init;
- (base_duration)initWithConfiguration:(id)configuration error:(id *)error;
- (base_duration)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (base_duration)initWithContentsOfURL:(id)l error:(id *)error;
- (base_duration)initWithMLModel:(id)model;
- (id)predictionFromClassic_time_between_uses_med_dur_1:(double)classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:(double)classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:(double)classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:(double)classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:(double)classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:(double)classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:(double)classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:(double)self0 hour:(double)self1 is_weekend:(double)self2 hour_plus_0:(double)self3 hour_plus_1:(double)self4 hour_plus_2:(double)self5 hour_plus_3:(double)self6 hour_plus_4:(double)self7 hour_plus_5:(double)self8 hours_until_use:(double)self9 meaningful_undercharge_rolling_average:(double)meaningful_undercharge_rolling_average error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
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

- (base_duration)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = base_duration;
    v6 = [(base_duration *)&v10 init];
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

- (base_duration)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(base_duration *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (base_duration)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(base_duration *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (base_duration)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(base_duration *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (base_duration)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(base_duration *)self initWithMLModel:v6];
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
  v10[2] = __67__base_duration_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_2782D5248;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(base_duration *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(base_duration *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

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

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(base_duration *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__base_duration_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_2782D5270;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(base_duration *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__base_duration_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_2782D5270;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromClassic_time_between_uses_med_dur_1:(double)classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:(double)classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:(double)classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:(double)classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:(double)classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:(double)classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:(double)classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:(double)self0 hour:(double)self1 is_weekend:(double)self2 hour_plus_0:(double)self3 hour_plus_1:(double)self4 hour_plus_2:(double)self5 hour_plus_3:(double)self6 hour_plus_4:(double)self7 hour_plus_5:(double)self8 hours_until_use:(double)self9 meaningful_undercharge_rolling_average:(double)meaningful_undercharge_rolling_average error:(id *)error
{
  v23 = [[base_durationInput alloc] initWithClassic_time_between_uses_med_dur_1:classic_time_between_uses_med_dur_1 classic_time_between_uses_med_dur_2:classic_time_between_uses_med_dur_2 classic_time_between_uses_med_dur_4:classic_time_between_uses_med_dur_4 classic_time_between_uses_med_dur_24:classic_time_between_uses_med_dur_24 classic_time_between_uses_std_dur_1:classic_time_between_uses_std_dur_1 classic_time_between_uses_std_dur_2:classic_time_between_uses_std_dur_2 classic_time_between_uses_std_dur_4:classic_time_between_uses_std_dur_4 classic_time_between_uses_std_dur_24:classic_time_between_uses_std_dur_24 hour:*&hour is_weekend:*&is_weekend hour_plus_0:*&hour_plus_0 hour_plus_1:*&hour_plus_1 hour_plus_2:*&hour_plus_2 hour_plus_3:*&hour_plus_3 hour_plus_4:*&hour_plus_4 hour_plus_5:*&hour_plus_5 hours_until_use:*&hours_until_use meaningful_undercharge_rolling_average:*&meaningful_undercharge_rolling_average];
  v24 = [(base_duration *)self predictionFromFeatures:v23 error:error];

  return v24;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(base_duration *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

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