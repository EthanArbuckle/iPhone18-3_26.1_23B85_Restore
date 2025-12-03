@interface nccp_wra_qmaxp_seq_model
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (id)predictionFromDaily_history_input:(id)daily_history_input usage_history_input:(id)usage_history_input error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (nccp_wra_qmaxp_seq_model)init;
- (nccp_wra_qmaxp_seq_model)initWithConfiguration:(id)configuration error:(id *)error;
- (nccp_wra_qmaxp_seq_model)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (nccp_wra_qmaxp_seq_model)initWithContentsOfURL:(id)l error:(id *)error;
- (nccp_wra_qmaxp_seq_model)initWithMLModel:(id)model;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation nccp_wra_qmaxp_seq_model

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"nccp_wra_qmaxp_seq_model" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003331C();
    }

    v4 = 0;
  }

  return v4;
}

- (nccp_wra_qmaxp_seq_model)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = nccp_wra_qmaxp_seq_model;
    v6 = [(nccp_wra_qmaxp_seq_model *)&v10 init];
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

- (nccp_wra_qmaxp_seq_model)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(nccp_wra_qmaxp_seq_model *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (nccp_wra_qmaxp_seq_model)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(nccp_wra_qmaxp_seq_model *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (nccp_wra_qmaxp_seq_model)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(nccp_wra_qmaxp_seq_model *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (nccp_wra_qmaxp_seq_model)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(nccp_wra_qmaxp_seq_model *)self initWithMLModel:v6];
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
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000299E8;
  v8[3] = &unk_100048FF8;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(nccp_wra_qmaxp_seq_model *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(nccp_wra_qmaxp_seq_model *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [nccp_wra_qmaxp_seq_modelOutput alloc];
    v26 = [v11 featureValueForName:@"nccp_wra_qmaxp_q10_forecast"];
    multiArrayValue = [v26 multiArrayValue];
    v25 = [v11 featureValueForName:@"nccp_wra_qmaxp_q25_forecast"];
    multiArrayValue2 = [v25 multiArrayValue];
    v15 = [v11 featureValueForName:@"nccp_wra_qmaxp_q50_forecast"];
    multiArrayValue3 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"nccp_wra_qmaxp_q75_forecast"];
    multiArrayValue4 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"nccp_wra_qmaxp_q90_forecast"];
    multiArrayValue5 = [v19 multiArrayValue];
    v21 = v12;
    v22 = multiArrayValue;
    v23 = [(nccp_wra_qmaxp_seq_modelOutput *)v21 initWithNccp_wra_qmaxp_q10_forecast:multiArrayValue nccp_wra_qmaxp_q25_forecast:multiArrayValue2 nccp_wra_qmaxp_q50_forecast:multiArrayValue3 nccp_wra_qmaxp_q75_forecast:multiArrayValue4 nccp_wra_qmaxp_q90_forecast:multiArrayValue5];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(nccp_wra_qmaxp_seq_model *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100029D9C;
  v10[3] = &unk_100049020;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(nccp_wra_qmaxp_seq_model *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002A054;
  v13[3] = &unk_100049020;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromDaily_history_input:(id)daily_history_input usage_history_input:(id)usage_history_input error:(id *)error
{
  usage_history_inputCopy = usage_history_input;
  daily_history_inputCopy = daily_history_input;
  v10 = [[nccp_wra_qmaxp_seq_modelInput alloc] initWithDaily_history_input:daily_history_inputCopy usage_history_input:usage_history_inputCopy];

  v11 = [(nccp_wra_qmaxp_seq_model *)self predictionFromFeatures:v10 error:error];

  return v11;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(nccp_wra_qmaxp_seq_model *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v24 = v10;
      v25 = optionsCopy;
      v26 = inputsCopy;
      v27 = v13;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v29 = [nccp_wra_qmaxp_seq_modelOutput alloc];
        v32 = [v15 featureValueForName:@"nccp_wra_qmaxp_q10_forecast"];
        multiArrayValue = [v32 multiArrayValue];
        v31 = [v15 featureValueForName:@"nccp_wra_qmaxp_q25_forecast"];
        multiArrayValue2 = [v31 multiArrayValue];
        v30 = [v15 featureValueForName:@"nccp_wra_qmaxp_q50_forecast"];
        multiArrayValue3 = [v30 multiArrayValue];
        v18 = [v15 featureValueForName:@"nccp_wra_qmaxp_q75_forecast"];
        multiArrayValue4 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"nccp_wra_qmaxp_q90_forecast"];
        multiArrayValue5 = [v20 multiArrayValue];
        v22 = [(nccp_wra_qmaxp_seq_modelOutput *)v29 initWithNccp_wra_qmaxp_q10_forecast:multiArrayValue nccp_wra_qmaxp_q25_forecast:multiArrayValue2 nccp_wra_qmaxp_q50_forecast:multiArrayValue3 nccp_wra_qmaxp_q75_forecast:multiArrayValue4 nccp_wra_qmaxp_q90_forecast:multiArrayValue5];

        v13 = v27;
        [v27 addObject:v22];

        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v25;
      inputsCopy = v26;
      v10 = v24;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end