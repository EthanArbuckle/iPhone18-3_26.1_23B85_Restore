@interface BackTapRNN
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (BackTapRNN)init;
- (BackTapRNN)initWithConfiguration:(id)configuration error:(id *)error;
- (BackTapRNN)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (BackTapRNN)initWithContentsOfURL:(id)l error:(id *)error;
- (BackTapRNN)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromModel_input:(id)model_input history:(id)history error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation BackTapRNN

+ (id)URLOfModelInThisBundle
{
  v10[2] = self;
  v10[1] = a2;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10[0] = [v6 pathForResource:@"BackTapRNN" ofType:@"mlmodelc"];
  MEMORY[0x277D82BD8](v6);
  if (v10[0])
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10[0]];
  }

  else
  {
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v8 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_25E4AC000, log, type, "Could not load BackTapRNN.mlmodelc in the bundle resource", v7, 2u);
    }

    objc_storeStrong(&location, 0);
    v11 = 0;
  }

  objc_storeStrong(v10, 0);
  v2 = v11;

  return v2;
}

- (BackTapRNN)initWithMLModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  if (location[0])
  {
    v3 = selfCopy;
    selfCopy = 0;
    v5.receiver = v3;
    v5.super_class = BackTapRNN;
    selfCopy = [(BackTapRNN *)&v5 init];
    objc_storeStrong(&selfCopy, selfCopy);
    if (selfCopy)
    {
      objc_storeStrong(selfCopy + 1, location[0]);
    }

    v9 = MEMORY[0x277D82BE0](selfCopy);
    v6 = 1;
  }

  else
  {
    v9 = 0;
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (BackTapRNN)init
{
  selfCopy = self;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  selfCopy = 0;
  selfCopy = [BackTapRNN initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](uRLOfModelInThisBundle);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (BackTapRNN)initWithConfiguration:(id)configuration error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v5 = selfCopy;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  selfCopy = 0;
  selfCopy = [BackTapRNN initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](uRLOfModelInThisBundle);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (BackTapRNN)initWithContentsOfURL:(id)l error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v7[1] = error;
  v7[0] = [MEMORY[0x277CBFF20] modelWithContentsOfURL:location[0] error:error];
  if (v7[0])
  {
    v4 = selfCopy;
    selfCopy = 0;
    selfCopy = [v4 initWithMLModel:v7[0]];
    v10 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (BackTapRNN)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v10 = 0;
  objc_storeStrong(&v10, configuration);
  v9[1] = error;
  v9[0] = [MEMORY[0x277CBFF20] modelWithContentsOfURL:location[0] configuration:v10 error:error];
  if (v9[0])
  {
    v5 = selfCopy;
    selfCopy = 0;
    selfCopy = [v5 initWithMLModel:v9[0]];
    v13 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v7 = 0;
  objc_storeStrong(&v7, handler);
  v5 = selfCopy;
  uRLOfModelInThisBundle = [selfCopy URLOfModelInThisBundle];
  [v5 loadContentsOfURL:? configuration:? completionHandler:?];
  MEMORY[0x277D82BD8](uRLOfModelInThisBundle);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v16 = 0;
  objc_storeStrong(&v16, configuration);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  v9 = MEMORY[0x277CBFF20];
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __64__BackTapRNN_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v13 = &unk_279A20C78;
  v14 = MEMORY[0x277D82BE0](v15);
  [v9 loadContentsOfURL:v7 configuration:v8 completionHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __64__BackTapRNN_loadContentsOfURL_configuration_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (location[0])
  {
    v3 = [BackTapRNN alloc];
    v6[0] = [(BackTapRNN *)v3 initWithMLModel:location[0]];
    (*(a1[4] + 16))();
    objc_storeStrong(v6, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v6 = selfCopy;
  v5 = location[0];
  v7 = objc_alloc_init(MEMORY[0x277CBFF68]);
  v8 = [BackTapRNN predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v16 = 0;
  objc_storeStrong(&v16, options);
  v15[1] = error;
  model = [(BackTapRNN *)selfCopy model];
  v15[0] = [(MLModel *)model predictionFromFeatures:location[0] options:v16 error:error];
  MEMORY[0x277D82BD8](model);
  if (v15[0])
  {
    v7 = [BackTapRNNOutput alloc];
    v11 = [v15[0] featureValueForName:@"output"];
    multiArrayValue = [v11 multiArrayValue];
    v9 = [v15[0] featureValueForName:@"updated_history"];
    multiArrayValue2 = [v9 multiArrayValue];
    v19 = [(BackTapRNNOutput *)v7 initWithOutput:multiArrayValue updated_history:?];
    MEMORY[0x277D82BD8](multiArrayValue2);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](multiArrayValue);
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v5 = v19;

  return v5;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v13 = 0;
  objc_storeStrong(&v13, handler);
  model = [(BackTapRNN *)selfCopy model];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __55__BackTapRNN_predictionFromFeatures_completionHandler___block_invoke;
  v11 = &unk_279A20CA0;
  v12 = MEMORY[0x277D82BE0](v13);
  [(MLModel *)model predictionFromFeatures:v5 completionHandler:?];
  MEMORY[0x277D82BD8](model);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __55__BackTapRNN_predictionFromFeatures_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v3 = [BackTapRNNOutput alloc];
    v7 = [location[0] featureValueForName:@"output"];
    v6 = [v7 multiArrayValue];
    v5 = [location[0] featureValueForName:@"updated_history"];
    v4 = [v5 multiArrayValue];
    v10[0] = [(BackTapRNNOutput *)v3 initWithOutput:v6 updated_history:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    (*(a1[4] + 16))();
    objc_storeStrong(v10, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v16 = 0;
  objc_storeStrong(&v16, options);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  model = [(BackTapRNN *)selfCopy model];
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __63__BackTapRNN_predictionFromFeatures_options_completionHandler___block_invoke;
  v13 = &unk_279A20CA0;
  v14 = MEMORY[0x277D82BE0](v15);
  [(MLModel *)model predictionFromFeatures:v7 options:v8 completionHandler:?];
  MEMORY[0x277D82BD8](model);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __63__BackTapRNN_predictionFromFeatures_options_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v3 = [BackTapRNNOutput alloc];
    v7 = [location[0] featureValueForName:@"output"];
    v6 = [v7 multiArrayValue];
    v5 = [location[0] featureValueForName:@"updated_history"];
    v4 = [v5 multiArrayValue];
    v10[0] = [(BackTapRNNOutput *)v3 initWithOutput:v6 updated_history:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    (*(a1[4] + 16))();
    objc_storeStrong(v10, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)predictionFromModel_input:(id)model_input history:(id)history error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model_input);
  v11 = 0;
  objc_storeStrong(&v11, history);
  v10[1] = error;
  v5 = [BackTapRNNInput alloc];
  v10[0] = [(BackTapRNNInput *)v5 initWithModel_input:location[0] history:v11];
  v9 = [(BackTapRNN *)selfCopy predictionFromFeatures:v10[0] error:error];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, inputs);
  v24 = 0;
  objc_storeStrong(&v24, options);
  v23[1] = error;
  v5 = objc_alloc(MEMORY[0x277CBFEB0]);
  v23[0] = [v5 initWithFeatureProviderArray:location[0]];
  model = [(BackTapRNN *)selfCopy model];
  v22 = [(MLModel *)model predictionsFromBatch:v23[0] options:v24 error:error];
  MEMORY[0x277D82BD8](model);
  if (v22)
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
    for (i = 0; ; ++i)
    {
      v13 = i;
      if (v13 >= [v22 count])
      {
        break;
      }

      v18 = [v22 featuresAtIndex:i];
      v8 = [BackTapRNNOutput alloc];
      v12 = [v18 featureValueForName:@"output"];
      multiArrayValue = [v12 multiArrayValue];
      v10 = [v18 featureValueForName:@"updated_history"];
      multiArrayValue2 = [v10 multiArrayValue];
      v17 = [(BackTapRNNOutput *)v8 initWithOutput:multiArrayValue updated_history:?];
      MEMORY[0x277D82BD8](multiArrayValue2);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](multiArrayValue);
      MEMORY[0x277D82BD8](v12);
      [v20 addObject:v17];
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
    }

    v27 = MEMORY[0x277D82BE0](v20);
    v21 = 1;
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v27 = 0;
    v21 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  v6 = v27;

  return v6;
}

@end