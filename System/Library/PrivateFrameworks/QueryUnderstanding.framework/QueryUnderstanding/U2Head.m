@interface U2Head
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (U2Head)init;
- (U2Head)initWithConfiguration:(id)a3 error:(id *)a4;
- (U2Head)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (U2Head)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (U2Head)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromInput_mask:(id)a3 input_span_features:(id)a4 sequence_output:(id)a5 error:(id *)a6;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
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

- (U2Head)initWithMLModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = U2Head;
  v6 = [(U2Head *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_model, a3), v7->_model))
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
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(U2Head *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (U2Head)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(U2Head *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (U2Head)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(U2Head *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (U2Head)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(U2Head *)self initWithMLModel:v6];
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
  v8 = MEMORY[0x277CBFF20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__U2Head_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_279ADA1D8;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
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

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBFF68];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(U2Head *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(U2Head *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [U2HeadOutput alloc];
    v13 = [v11 featureValueForName:@"top_arg_ids"];
    v14 = [v13 multiArrayValue];
    v15 = [v11 featureValueForName:@"arg_conf_scores"];
    v16 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"intent_scores"];
    v18 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"safety_head_scores"];
    v20 = [v19 multiArrayValue];
    v21 = [(U2HeadOutput *)v12 initWithTop_arg_ids:v14 arg_conf_scores:v16 intent_scores:v18 safety_head_scores:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(U2Head *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__U2Head_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_279ADA200;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
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

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(U2Head *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__U2Head_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_279ADA200;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
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

- (id)predictionFromInput_mask:(id)a3 input_span_features:(id)a4 sequence_output:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[U2HeadInput alloc] initWithInput_mask:v12 input_span_features:v11 sequence_output:v10];

  v14 = [(U2Head *)self predictionFromFeatures:v13 error:a6];

  return v14;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v8];
  v11 = [(U2Head *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v26 = v10;
      v27 = v9;
      v28 = v8;
      v29 = v13;
      v14 = 0;
      v30 = v12;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v26, v27, v28}];
        v16 = [U2HeadOutput alloc];
        v31 = [v15 featureValueForName:@"top_arg_ids"];
        v17 = [v31 multiArrayValue];
        v18 = [v15 featureValueForName:@"arg_conf_scores"];
        v19 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"intent_scores"];
        v21 = [v20 multiArrayValue];
        v22 = [v15 featureValueForName:@"safety_head_scores"];
        v23 = [v22 multiArrayValue];
        v24 = [(U2HeadOutput *)v16 initWithTop_arg_ids:v17 arg_conf_scores:v19 intent_scores:v21 safety_head_scores:v23];

        v13 = v29;
        v12 = v30;

        [v29 addObject:v24];
        ++v14;
      }

      while (v14 < [v30 count]);
      v9 = v27;
      v8 = v28;
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