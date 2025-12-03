@interface CalendarEventClassificationModel
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (CalendarEventClassificationModel)init;
- (CalendarEventClassificationModel)initWithConfiguration:(id)configuration error:(id *)error;
- (CalendarEventClassificationModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (CalendarEventClassificationModel)initWithContentsOfURL:(id)l error:(id *)error;
- (CalendarEventClassificationModel)initWithMLModel:(id)model;
- (id)predictionFromEmb:(id)emb error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation CalendarEventClassificationModel

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"doc_classification_model" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[CalendarEventClassificationModel URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (CalendarEventClassificationModel)initWithMLModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = CalendarEventClassificationModel;
  v6 = [(CalendarEventClassificationModel *)&v10 init];
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

- (CalendarEventClassificationModel)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(CalendarEventClassificationModel *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (CalendarEventClassificationModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(CalendarEventClassificationModel *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (CalendarEventClassificationModel)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(CalendarEventClassificationModel *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CalendarEventClassificationModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(CalendarEventClassificationModel *)self initWithMLModel:v6];
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
  v10[2] = __86__CalendarEventClassificationModel_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_27893DA60;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

void __86__CalendarEventClassificationModel_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[CalendarEventClassificationModel alloc] initWithMLModel:v4];
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
  v9 = [(CalendarEventClassificationModel *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(CalendarEventClassificationModel *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [CalendarEventClassificationModelOutput alloc];
    v13 = [v11 featureValueForName:@"y"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [(CalendarEventClassificationModelOutput *)v12 initWithY:multiArrayValue];
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
  model = [(CalendarEventClassificationModel *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__CalendarEventClassificationModel_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_27893DA88;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

void __77__CalendarEventClassificationModel_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [CalendarEventClassificationModelOutput alloc];
    v7 = [v12 featureValueForName:@"y"];
    v8 = [v7 multiArrayValue];
    v9 = [(CalendarEventClassificationModelOutput *)v6 initWithY:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(CalendarEventClassificationModel *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__CalendarEventClassificationModel_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_27893DA88;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

void __85__CalendarEventClassificationModel_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [CalendarEventClassificationModelOutput alloc];
    v7 = [v12 featureValueForName:@"y"];
    v8 = [v7 multiArrayValue];
    v9 = [(CalendarEventClassificationModelOutput *)v6 initWithY:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

- (id)predictionFromEmb:(id)emb error:(id *)error
{
  embCopy = emb;
  v7 = [[CalendarEventClassificationModelInput alloc] initWithEmb:embCopy];

  v8 = [(CalendarEventClassificationModel *)self predictionFromFeatures:v7 error:error];

  return v8;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(CalendarEventClassificationModel *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v21 = optionsCopy;
      v22 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [CalendarEventClassificationModelOutput alloc];
        v17 = [v15 featureValueForName:@"y"];
        multiArrayValue = [v17 multiArrayValue];
        v19 = [(CalendarEventClassificationModelOutput *)v16 initWithY:multiArrayValue];

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