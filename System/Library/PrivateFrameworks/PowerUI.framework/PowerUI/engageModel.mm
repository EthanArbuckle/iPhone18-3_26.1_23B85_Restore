@interface engageModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (engageModel)init;
- (engageModel)initWithConfiguration:(id)configuration error:(id *)error;
- (engageModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (engageModel)initWithContentsOfURL:(id)l error:(id *)error;
- (engageModel)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromPlugin_battery_level:(double)plugin_battery_level time_from_plugin:(double)time_from_plugin med_dur_1:(double)med_dur_1 med_dur_2:(double)med_dur_2 med_dur_4:(double)med_dur_4 med_dur_8:(double)med_dur_8 med_dur_16:(double)med_dur_16 med_dur_24:(double)self0 cnt_dur_1:(double)self1 cnt_dur_2:(double)self2 cnt_dur_4:(double)self3 cnt_dur_8:(double)self4 cnt_dur_16:(double)self5 cnt_dur_24:(double)self6 std_dur_1:(double)self7 std_dur_2:(double)self8 std_dur_4:(double)self9 std_dur_8:(double)std_dur_8 std_dur_16:(double)std_dur_16 std_dur_24:(double)std_dur_24 weekday_med_dur_1:(double)weekday_med_dur_1 weekday_med_dur_2:(double)weekday_med_dur_2 weekday_med_dur_4:(double)weekday_med_dur_4 weekday_med_dur_8:(double)weekday_med_dur_8 weekday_med_dur_24:(double)weekday_med_dur_24 weekday_std_dur_4:(double)weekday_std_dur_4 error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation engageModel

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"engageModel" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[engageModel URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (engageModel)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = engageModel;
    v6 = [(engageModel *)&v10 init];
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

- (engageModel)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(engageModel *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (engageModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(engageModel *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (engageModel)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(engageModel *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (engageModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(engageModel *)self initWithMLModel:v6];
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
  v10[2] = __65__engageModel_loadContentsOfURL_configuration_completionHandler___block_invoke;
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
  v9 = [(engageModel *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(engageModel *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [engageModelOutput alloc];
    v13 = [v11 featureValueForName:@"engage"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(engageModelOutput *)v12 initWithEngage:int64Value classProbability:dictionaryValue];
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
  model = [(engageModel *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__engageModel_predictionFromFeatures_completionHandler___block_invoke;
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
  model = [(engageModel *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__engageModel_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_2782D5270;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromPlugin_battery_level:(double)plugin_battery_level time_from_plugin:(double)time_from_plugin med_dur_1:(double)med_dur_1 med_dur_2:(double)med_dur_2 med_dur_4:(double)med_dur_4 med_dur_8:(double)med_dur_8 med_dur_16:(double)med_dur_16 med_dur_24:(double)self0 cnt_dur_1:(double)self1 cnt_dur_2:(double)self2 cnt_dur_4:(double)self3 cnt_dur_8:(double)self4 cnt_dur_16:(double)self5 cnt_dur_24:(double)self6 std_dur_1:(double)self7 std_dur_2:(double)self8 std_dur_4:(double)self9 std_dur_8:(double)std_dur_8 std_dur_16:(double)std_dur_16 std_dur_24:(double)std_dur_24 weekday_med_dur_1:(double)weekday_med_dur_1 weekday_med_dur_2:(double)weekday_med_dur_2 weekday_med_dur_4:(double)weekday_med_dur_4 weekday_med_dur_8:(double)weekday_med_dur_8 weekday_med_dur_24:(double)weekday_med_dur_24 weekday_std_dur_4:(double)weekday_std_dur_4 error:(id *)error
{
  v31 = [[engageModelInput alloc] initWithPlugin_battery_level:plugin_battery_level time_from_plugin:time_from_plugin med_dur_1:med_dur_1 med_dur_2:med_dur_2 med_dur_4:med_dur_4 med_dur_8:med_dur_8 med_dur_16:med_dur_16 med_dur_24:med_dur_24 cnt_dur_1:*&cnt_dur_1 cnt_dur_2:*&cnt_dur_2 cnt_dur_4:*&cnt_dur_4 cnt_dur_8:*&cnt_dur_8 cnt_dur_16:*&cnt_dur_16 cnt_dur_24:*&cnt_dur_24 std_dur_1:*&std_dur_1 std_dur_2:*&std_dur_2 std_dur_4:*&std_dur_4 std_dur_8:*&std_dur_8 std_dur_16:*&std_dur_16 std_dur_24:*&std_dur_24 weekday_med_dur_1:*&weekday_med_dur_1 weekday_med_dur_2:*&weekday_med_dur_2 weekday_med_dur_4:*&weekday_med_dur_4 weekday_med_dur_8:*&weekday_med_dur_8 weekday_med_dur_24:*&weekday_med_dur_24 weekday_std_dur_4:*&weekday_std_dur_4];
  v32 = [(engageModel *)self predictionFromFeatures:v31 error:error];

  return v32;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(engageModel *)self model];
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
        v16 = [engageModelOutput alloc];
        v17 = [v15 featureValueForName:@"engage"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(engageModelOutput *)v16 initWithEngage:int64Value classProbability:dictionaryValue];

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