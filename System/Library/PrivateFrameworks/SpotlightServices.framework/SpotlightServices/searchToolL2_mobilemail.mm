@interface searchToolL2_mobilemail
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromSparseL1:(double)l1 denseL1:(double)denseL1 isMailCategoryHighImpact:(double)impact isMailCategoryPromotions:(double)promotions documentEmbeddingAvailable:(double)available has_query_text_embedding:(double)has_query_text_embedding kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)m kMDItemSubject_QUPP_ARG_SEARCH_TERM:(double)self0 kMDItemTextContent_QUPP_ARG_PERSON:(double)self1 kMDItemTextContent_QUPP_ARG_LOCATION:(double)self2 kMDItemAuthors_QUPP_ARG_SEARCH_TERM:(double)self3 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT:(double)self4 kMDItemTextContent_QUPP_ARG_TIME:(double)self5 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)self6 kMDItemSubject_QUPP_ARG_LOCATION:(double)self7 kMDItemSubject_QUPP_ARG_PERSON:(double)self8 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL:(double)self9 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)tION kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT:(double)cT kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT:(double)nT kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)r kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL:(double)aL kMDItemAuthors_QUPP_ARG_PERSON:(double)rSON kMDItemSubject_QUPP_ARG_TIME:(double)mE kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER:(double)eR kMDItemAuthors_QUPP_ARG_LOCATION:(double)aTION error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (searchToolL2_mobilemail)init;
- (searchToolL2_mobilemail)initWithConfiguration:(id)configuration error:(id *)error;
- (searchToolL2_mobilemail)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (searchToolL2_mobilemail)initWithContentsOfURL:(id)l error:(id *)error;
- (searchToolL2_mobilemail)initWithMLModel:(id)model;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation searchToolL2_mobilemail

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"searchToolL2_mobilemail" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[searchToolL2_mobilemail URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (searchToolL2_mobilemail)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = searchToolL2_mobilemail;
    v6 = [(searchToolL2_mobilemail *)&v10 init];
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

- (searchToolL2_mobilemail)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(searchToolL2_mobilemail *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (searchToolL2_mobilemail)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(searchToolL2_mobilemail *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (searchToolL2_mobilemail)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(searchToolL2_mobilemail *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (searchToolL2_mobilemail)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(searchToolL2_mobilemail *)self initWithMLModel:v6];
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
  v8 = MEMORY[0x1E695FE90];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__searchToolL2_mobilemail_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_1E8595D98;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x1E695FF08];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(searchToolL2_mobilemail *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(searchToolL2_mobilemail *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [searchToolL2_mobilemailOutput alloc];
    v13 = [v11 featureValueForName:@"label"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"prob"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(searchToolL2_mobilemailOutput *)v12 initWithLabel:int64Value prob:dictionaryValue];
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
  model = [(searchToolL2_mobilemail *)self model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__searchToolL2_mobilemail_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_1E8595DC0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(searchToolL2_mobilemail *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__searchToolL2_mobilemail_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_1E8595DC0;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromSparseL1:(double)l1 denseL1:(double)denseL1 isMailCategoryHighImpact:(double)impact isMailCategoryPromotions:(double)promotions documentEmbeddingAvailable:(double)available has_query_text_embedding:(double)has_query_text_embedding kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)m kMDItemSubject_QUPP_ARG_SEARCH_TERM:(double)self0 kMDItemTextContent_QUPP_ARG_PERSON:(double)self1 kMDItemTextContent_QUPP_ARG_LOCATION:(double)self2 kMDItemAuthors_QUPP_ARG_SEARCH_TERM:(double)self3 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT:(double)self4 kMDItemTextContent_QUPP_ARG_TIME:(double)self5 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)self6 kMDItemSubject_QUPP_ARG_LOCATION:(double)self7 kMDItemSubject_QUPP_ARG_PERSON:(double)self8 kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL:(double)self9 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)tION kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT:(double)cT kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT:(double)nT kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)r kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL:(double)aL kMDItemAuthors_QUPP_ARG_PERSON:(double)rSON kMDItemSubject_QUPP_ARG_TIME:(double)mE kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER:(double)eR kMDItemAuthors_QUPP_ARG_LOCATION:(double)aTION error:(id *)error
{
  v31 = [[searchToolL2_mobilemailInput alloc] initWithSparseL1:l1 denseL1:denseL1 isMailCategoryHighImpact:impact isMailCategoryPromotions:promotions documentEmbeddingAvailable:available has_query_text_embedding:has_query_text_embedding kMDItemTextContent_QUPP_ARG_SEARCH_TERM:m kMDItemSubject_QUPP_ARG_SEARCH_TERM:rM kMDItemTextContent_QUPP_ARG_PERSON:*&n kMDItemTextContent_QUPP_ARG_LOCATION:*&oN kMDItemAuthors_QUPP_ARG_SEARCH_TERM:*&eRM kMDItemTextContent_QUPP_ARG_EVENT_TYPE_FLIGHT:*&t kMDItemTextContent_QUPP_ARG_TIME:*&e kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:*&tERM kMDItemSubject_QUPP_ARG_LOCATION:*&iON kMDItemSubject_QUPP_ARG_PERSON:*&sON kMDItemTextContent_QUPP_ARG_EVENT_TYPE_HOTEL:*&l kMDItemAppEntityTitle_QUPP_ARG_LOCATION:*&tION kMDItemTextContent_QUPP_ARG_APP_CONTAINS_TYPE_CONTACT:*&cT kMDItemTextContent_QUPP_ARG_EVENT_TYPE_RESTAURANT:*&nT kMDItemAuthors_QUPP_ARG_PERSON_SENDER:*&r kMDItemTextContent_QUPP_ARG_LOCATION_ARRIVAL:*&aL kMDItemAuthors_QUPP_ARG_PERSON:*&rSON kMDItemSubject_QUPP_ARG_TIME:*&mE kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON_SENDER:*&eR kMDItemAuthors_QUPP_ARG_LOCATION:*&aTION];
  v32 = [(searchToolL2_mobilemail *)self predictionFromFeatures:v31 error:error];

  return v32;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:inputsCopy];
  model = [(searchToolL2_mobilemail *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = optionsCopy;
      v25 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [searchToolL2_mobilemailOutput alloc];
        v17 = [v15 featureValueForName:@"label"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"prob"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(searchToolL2_mobilemailOutput *)v16 initWithLabel:int64Value prob:dictionaryValue];

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