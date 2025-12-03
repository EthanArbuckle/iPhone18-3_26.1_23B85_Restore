@interface U2Head
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (U2Head)init;
- (U2Head)initWithConfiguration:(id)configuration error:(id *)error;
- (U2Head)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (U2Head)initWithContentsOfURL:(id)l error:(id *)error;
- (U2Head)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput_mask:(id)input_mask input_span_features:(id)input_span_features sequence_output:(id)sequence_output error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation U2Head

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"U2Head" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[U2Head URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (U2Head)initWithMLModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = U2Head;
  v6 = [(U2Head *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_model, model), v7->_model))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (U2Head)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(U2Head *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (U2Head)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(U2Head *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (U2Head)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(U2Head *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (U2Head)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(U2Head *)self initWithMLModel:v6];
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
  v10[2] = __60__U2Head_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_279ADA1D8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

void __60__U2Head_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[U2Head alloc] initWithMLModel:v4];
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
  v9 = [(U2Head *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(U2Head *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [U2HeadOutput alloc];
    v13 = [v11 featureValueForName:@"top_arg_ids"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [v11 featureValueForName:@"arg_conf_scores"];
    multiArrayValue2 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"intent_scores"];
    multiArrayValue3 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"safety_head_scores"];
    multiArrayValue4 = [v19 multiArrayValue];
    v21 = [(U2HeadOutput *)v12 initWithTop_arg_ids:multiArrayValue arg_conf_scores:multiArrayValue2 intent_scores:multiArrayValue3 safety_head_scores:multiArrayValue4];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(U2Head *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__U2Head_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_279ADA200;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

void __51__U2Head_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  if (v18)
  {
    v17 = a3;
    v5 = [U2HeadOutput alloc];
    v6 = [v18 featureValueForName:@"top_arg_ids"];
    v7 = [v6 multiArrayValue];
    v8 = [v18 featureValueForName:@"arg_conf_scores"];
    v9 = [v8 multiArrayValue];
    v10 = [v18 featureValueForName:@"intent_scores"];
    v11 = [v10 multiArrayValue];
    v12 = [v18 featureValueForName:@"safety_head_scores"];
    v13 = [v12 multiArrayValue];
    v14 = [(U2HeadOutput *)v5 initWithTop_arg_ids:v7 arg_conf_scores:v9 intent_scores:v11 safety_head_scores:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v14 = a3;
    v16(v15, 0, v14);
  }
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(U2Head *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__U2Head_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_279ADA200;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

void __59__U2Head_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  if (v18)
  {
    v17 = a3;
    v5 = [U2HeadOutput alloc];
    v6 = [v18 featureValueForName:@"top_arg_ids"];
    v7 = [v6 multiArrayValue];
    v8 = [v18 featureValueForName:@"arg_conf_scores"];
    v9 = [v8 multiArrayValue];
    v10 = [v18 featureValueForName:@"intent_scores"];
    v11 = [v10 multiArrayValue];
    v12 = [v18 featureValueForName:@"safety_head_scores"];
    v13 = [v12 multiArrayValue];
    v14 = [(U2HeadOutput *)v5 initWithTop_arg_ids:v7 arg_conf_scores:v9 intent_scores:v11 safety_head_scores:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v14 = a3;
    v16(v15, 0, v14);
  }
}

- (id)predictionFromInput_mask:(id)input_mask input_span_features:(id)input_span_features sequence_output:(id)sequence_output error:(id *)error
{
  sequence_outputCopy = sequence_output;
  input_span_featuresCopy = input_span_features;
  input_maskCopy = input_mask;
  v13 = [[U2HeadInput alloc] initWithInput_mask:input_maskCopy input_span_features:input_span_featuresCopy sequence_output:sequence_outputCopy];

  v14 = [(U2Head *)self predictionFromFeatures:v13 error:error];

  return v14;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(U2Head *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v26 = v10;
      v27 = optionsCopy;
      v28 = inputsCopy;
      v29 = v13;
      v14 = 0;
      v30 = v12;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v26, v27, v28}];
        v16 = [U2HeadOutput alloc];
        v31 = [v15 featureValueForName:@"top_arg_ids"];
        multiArrayValue = [v31 multiArrayValue];
        v18 = [v15 featureValueForName:@"arg_conf_scores"];
        multiArrayValue2 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"intent_scores"];
        multiArrayValue3 = [v20 multiArrayValue];
        v22 = [v15 featureValueForName:@"safety_head_scores"];
        multiArrayValue4 = [v22 multiArrayValue];
        v24 = [(U2HeadOutput *)v16 initWithTop_arg_ids:multiArrayValue arg_conf_scores:multiArrayValue2 intent_scores:multiArrayValue3 safety_head_scores:multiArrayValue4];

        v13 = v29;
        v12 = v30;

        [v29 addObject:v24];
        ++v14;
      }

      while (v14 < [v30 count]);
      optionsCopy = v27;
      inputsCopy = v28;
      v10 = v26;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end