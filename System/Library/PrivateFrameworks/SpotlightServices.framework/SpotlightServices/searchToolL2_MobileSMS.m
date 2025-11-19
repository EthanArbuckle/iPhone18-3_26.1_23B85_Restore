@interface searchToolL2_MobileSMS
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromSparseL1:(double)a3 denseL1:(double)a4 documentEmbeddingAvailable:(double)a5 has_query_text_embedding:(double)a6 kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)a7 kMDItemRecipients_QUPP_ARG_PERSON:(double)a8 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)a9 kMDItemTextContent_QUPP_ARG_PERSON:(double)a10 kMDItemAuthors_QUPP_ARG_PERSON:(double)a11 kMDItemTextContent_QUPP_ARG_LOCATION:(double)a12 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)a13 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)a14 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON:(double)a15 kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER:(double)a16 error:(id *)a17;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (searchToolL2_MobileSMS)init;
- (searchToolL2_MobileSMS)initWithConfiguration:(id)a3 error:(id *)a4;
- (searchToolL2_MobileSMS)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (searchToolL2_MobileSMS)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (searchToolL2_MobileSMS)initWithMLModel:(id)a3;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation searchToolL2_MobileSMS

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"searchToolL2_MobileSMS" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[searchToolL2_MobileSMS URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (searchToolL2_MobileSMS)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = searchToolL2_MobileSMS;
    v6 = [(searchToolL2_MobileSMS *)&v10 init];
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

- (searchToolL2_MobileSMS)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(searchToolL2_MobileSMS *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (searchToolL2_MobileSMS)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(searchToolL2_MobileSMS *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (searchToolL2_MobileSMS)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(searchToolL2_MobileSMS *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (searchToolL2_MobileSMS)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(searchToolL2_MobileSMS *)self initWithMLModel:v6];
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
  v8 = MEMORY[0x1E695FE90];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__searchToolL2_MobileSMS_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_1E8595D98;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695FF08];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(searchToolL2_MobileSMS *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(searchToolL2_MobileSMS *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [searchToolL2_MobileSMSOutput alloc];
    v13 = [v11 featureValueForName:@"label"];
    v14 = [v13 int64Value];
    v15 = [v11 featureValueForName:@"prob"];
    v16 = [v15 dictionaryValue];
    v17 = [(searchToolL2_MobileSMSOutput *)v12 initWithLabel:v14 prob:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(searchToolL2_MobileSMS *)self model];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__searchToolL2_MobileSMS_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_1E8595DC0;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(searchToolL2_MobileSMS *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__searchToolL2_MobileSMS_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_1E8595DC0;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromSparseL1:(double)a3 denseL1:(double)a4 documentEmbeddingAvailable:(double)a5 has_query_text_embedding:(double)a6 kMDItemTextContent_QUPP_ARG_SEARCH_TERM:(double)a7 kMDItemRecipients_QUPP_ARG_PERSON:(double)a8 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:(double)a9 kMDItemTextContent_QUPP_ARG_PERSON:(double)a10 kMDItemAuthors_QUPP_ARG_PERSON:(double)a11 kMDItemTextContent_QUPP_ARG_LOCATION:(double)a12 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:(double)a13 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:(double)a14 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON:(double)a15 kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER:(double)a16 error:(id *)a17
{
  v19 = [[searchToolL2_MobileSMSInput alloc] initWithSparseL1:a3 denseL1:a4 documentEmbeddingAvailable:a5 has_query_text_embedding:a6 kMDItemTextContent_QUPP_ARG_SEARCH_TERM:a7 kMDItemRecipients_QUPP_ARG_PERSON:a8 kMDItemAppEntityTitle_QUPP_ARG_SEARCH_TERM:a9 kMDItemTextContent_QUPP_ARG_PERSON:a10 kMDItemAuthors_QUPP_ARG_PERSON:*&a11 kMDItemTextContent_QUPP_ARG_LOCATION:*&a12 kMDItemAppEntityTitle_QUPP_ARG_LOCATION:*&a13 kMDItemAuthors_QUPP_ARG_PERSON_SENDER:*&a14 kMDItemAuthorEmailAddresses_QUPP_ARG_PERSON:*&a15 kMDItemAuthorAddresses_QUPP_ARG_PERSON_SENDER:*&a16];
  v20 = [(searchToolL2_MobileSMS *)self predictionFromFeatures:v19 error:a17];

  return v20;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v8];
  v11 = [(searchToolL2_MobileSMS *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = v9;
      v25 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [searchToolL2_MobileSMSOutput alloc];
        v17 = [v15 featureValueForName:@"label"];
        v18 = [v17 int64Value];
        v19 = [v15 featureValueForName:@"prob"];
        v20 = [v19 dictionaryValue];
        v21 = [(searchToolL2_MobileSMSOutput *)v16 initWithLabel:v18 prob:v20];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v24;
      v8 = v25;
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