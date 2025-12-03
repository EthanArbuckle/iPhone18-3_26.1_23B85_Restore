@interface main_nyc2d88ffc_44000_V53_V54
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromJasper:(id)jasper error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (main_nyc2d88ffc_44000_V53_V54)init;
- (main_nyc2d88ffc_44000_V53_V54)initWithConfiguration:(id)configuration error:(id *)error;
- (main_nyc2d88ffc_44000_V53_V54)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (main_nyc2d88ffc_44000_V53_V54)initWithContentsOfURL:(id)l error:(id *)error;
- (main_nyc2d88ffc_44000_V53_V54)initWithMLModel:(id)model;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation main_nyc2d88ffc_44000_V53_V54

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(main_nyc2d88ffc_44000_V53_V54 *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
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
        v29 = [main_nyc2d88ffc_44000_V53_V54Output alloc];
        v32 = [v15 featureValueForName:@"out_argmax_x8"];
        multiArrayValue = [v32 multiArrayValue];
        v31 = [v15 featureValueForName:@"out_prob_class_0"];
        multiArrayValue2 = [v31 multiArrayValue];
        v30 = [v15 featureValueForName:@"out_prob_class_1"];
        multiArrayValue3 = [v30 multiArrayValue];
        v18 = [v15 featureValueForName:@"out_prob_class_2"];
        multiArrayValue4 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"out_spatial_only"];
        multiArrayValue5 = [v20 multiArrayValue];
        v22 = [(main_nyc2d88ffc_44000_V53_V54Output *)v29 initWithOut_argmax_x8:multiArrayValue out_prob_class_0:multiArrayValue2 out_prob_class_1:multiArrayValue3 out_prob_class_2:multiArrayValue4 out_spatial_only:multiArrayValue5];

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

- (id)predictionFromJasper:(id)jasper error:(id *)error
{
  jasperCopy = jasper;
  v7 = [[main_nyc2d88ffc_44000_V53_V54Input alloc] initWithJasper:jasperCopy];

  v8 = [(main_nyc2d88ffc_44000_V53_V54 *)self predictionFromFeatures:v7 error:error];

  return v8;
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(main_nyc2d88ffc_44000_V53_V54 *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__main_nyc2d88ffc_44000_V53_V54_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_27852C7A8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(main_nyc2d88ffc_44000_V53_V54 *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__main_nyc2d88ffc_44000_V53_V54_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_27852C7A8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(main_nyc2d88ffc_44000_V53_V54 *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [main_nyc2d88ffc_44000_V53_V54Output alloc];
    v26 = [v11 featureValueForName:@"out_argmax_x8"];
    multiArrayValue = [v26 multiArrayValue];
    v25 = [v11 featureValueForName:@"out_prob_class_0"];
    multiArrayValue2 = [v25 multiArrayValue];
    v15 = [v11 featureValueForName:@"out_prob_class_1"];
    multiArrayValue3 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"out_prob_class_2"];
    multiArrayValue4 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"out_spatial_only"];
    multiArrayValue5 = [v19 multiArrayValue];
    v21 = v12;
    v22 = multiArrayValue;
    v23 = [(main_nyc2d88ffc_44000_V53_V54Output *)v21 initWithOut_argmax_x8:multiArrayValue out_prob_class_0:multiArrayValue2 out_prob_class_1:multiArrayValue3 out_prob_class_2:multiArrayValue4 out_spatial_only:multiArrayValue5];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(main_nyc2d88ffc_44000_V53_V54 *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (main_nyc2d88ffc_44000_V53_V54)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(main_nyc2d88ffc_44000_V53_V54 *)self initWithMLModel:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (main_nyc2d88ffc_44000_V53_V54)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(main_nyc2d88ffc_44000_V53_V54 *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (main_nyc2d88ffc_44000_V53_V54)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(main_nyc2d88ffc_44000_V53_V54 *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (main_nyc2d88ffc_44000_V53_V54)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(main_nyc2d88ffc_44000_V53_V54 *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (main_nyc2d88ffc_44000_V53_V54)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = main_nyc2d88ffc_44000_V53_V54;
    v6 = [(main_nyc2d88ffc_44000_V53_V54 *)&v10 init];
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

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277CBFF20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__main_nyc2d88ffc_44000_V53_V54_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_27852C780;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy completionHandler:handlerCopy];
}

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"main_nyc2d88ffc_44000_V53_V54" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not load main_nyc2d88ffc_44000_V53_V54.mlmodelc in the bundle resource", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

@end