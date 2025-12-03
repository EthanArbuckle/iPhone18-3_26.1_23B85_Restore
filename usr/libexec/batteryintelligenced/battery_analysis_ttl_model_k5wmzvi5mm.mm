@interface battery_analysis_ttl_model_k5wmzvi5mm
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (battery_analysis_ttl_model_k5wmzvi5mm)init;
- (battery_analysis_ttl_model_k5wmzvi5mm)initWithConfiguration:(id)configuration error:(id *)error;
- (battery_analysis_ttl_model_k5wmzvi5mm)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (battery_analysis_ttl_model_k5wmzvi5mm)initWithContentsOfURL:(id)l error:(id *)error;
- (battery_analysis_ttl_model_k5wmzvi5mm)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput_1:(id)input_1 error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation battery_analysis_ttl_model_k5wmzvi5mm

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"battery_analysis_ttl_model_k5wmzvi5mm" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100033364();
    }

    v4 = 0;
  }

  return v4;
}

- (battery_analysis_ttl_model_k5wmzvi5mm)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = battery_analysis_ttl_model_k5wmzvi5mm;
    v6 = [(battery_analysis_ttl_model_k5wmzvi5mm *)&v10 init];
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

- (battery_analysis_ttl_model_k5wmzvi5mm)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(battery_analysis_ttl_model_k5wmzvi5mm *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (battery_analysis_ttl_model_k5wmzvi5mm)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(battery_analysis_ttl_model_k5wmzvi5mm *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (battery_analysis_ttl_model_k5wmzvi5mm)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MLModel modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(battery_analysis_ttl_model_k5wmzvi5mm *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (battery_analysis_ttl_model_k5wmzvi5mm)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MLModel modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(battery_analysis_ttl_model_k5wmzvi5mm *)self initWithMLModel:v6];
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
  v8[2] = sub_10002ABD8;
  v8[3] = &unk_100048FF8;
  handlerCopy = handler;
  v7 = handlerCopy;
  [MLModel loadContentsOfURL:l configuration:configuration completionHandler:v8];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(battery_analysis_ttl_model_k5wmzvi5mm *)self predictionFromFeatures:featuresCopy options:v7 error:error];

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(battery_analysis_ttl_model_k5wmzvi5mm *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [battery_analysis_ttl_model_k5wmzvi5mmOutput alloc];
    v13 = [v11 featureValueForName:@"ttl_prediction"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [(battery_analysis_ttl_model_k5wmzvi5mmOutput *)v12 initWithTtl_prediction:multiArrayValue];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(battery_analysis_ttl_model_k5wmzvi5mm *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002AEA0;
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
  model = [(battery_analysis_ttl_model_k5wmzvi5mm *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002B078;
  v13[3] = &unk_100049020;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromInput_1:(id)input_1 error:(id *)error
{
  input_1Copy = input_1;
  v7 = [[battery_analysis_ttl_model_k5wmzvi5mmInput alloc] initWithInput_1:input_1Copy];

  v8 = [(battery_analysis_ttl_model_k5wmzvi5mm *)self predictionFromFeatures:v7 error:error];

  return v8;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:inputsCopy];
  model = [(battery_analysis_ttl_model_k5wmzvi5mm *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    if ([v12 count] >= 1)
    {
      v21 = optionsCopy;
      v22 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [battery_analysis_ttl_model_k5wmzvi5mmOutput alloc];
        v17 = [v15 featureValueForName:@"ttl_prediction"];
        multiArrayValue = [v17 multiArrayValue];
        v19 = [(battery_analysis_ttl_model_k5wmzvi5mmOutput *)v16 initWithTtl_prediction:multiArrayValue];

        [v13 addObject:v19];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v21;
      inputsCopy = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end