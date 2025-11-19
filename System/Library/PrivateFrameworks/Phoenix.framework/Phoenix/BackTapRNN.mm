@interface BackTapRNN
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (BackTapRNN)init;
- (BackTapRNN)initWithConfiguration:(id)a3 error:(id *)a4;
- (BackTapRNN)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (BackTapRNN)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (BackTapRNN)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromModel_input:(id)a3 history:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation BackTapRNN

+ (id)URLOfModelInThisBundle
{
  v10[2] = a1;
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

- (BackTapRNN)initWithMLModel:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = v8;
    v8 = 0;
    v5.receiver = v3;
    v5.super_class = BackTapRNN;
    v8 = [(BackTapRNN *)&v5 init];
    objc_storeStrong(&v8, v8);
    if (v8)
    {
      objc_storeStrong(v8 + 1, location[0]);
    }

    v9 = MEMORY[0x277D82BE0](v8);
    v6 = 1;
  }

  else
  {
    v9 = 0;
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v9;
}

- (BackTapRNN)init
{
  v6 = self;
  v4 = [objc_opt_class() URLOfModelInThisBundle];
  v6 = 0;
  v6 = [BackTapRNN initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v6, 0);
  return v5;
}

- (BackTapRNN)initWithConfiguration:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [objc_opt_class() URLOfModelInThisBundle];
  v9 = 0;
  v9 = [BackTapRNN initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x277D82BE0](v9);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (BackTapRNN)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = [MEMORY[0x277CBFF20] modelWithContentsOfURL:location[0] error:a4];
  if (v7[0])
  {
    v4 = v9;
    v9 = 0;
    v9 = [v4 initWithMLModel:v7[0]];
    v10 = MEMORY[0x277D82BE0](v9);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v10;
}

- (BackTapRNN)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9[1] = a5;
  v9[0] = [MEMORY[0x277CBFF20] modelWithContentsOfURL:location[0] configuration:v10 error:a5];
  if (v9[0])
  {
    v5 = v12;
    v12 = 0;
    v12 = [v5 initWithMLModel:v9[0]];
    v13 = MEMORY[0x277D82BE0](v12);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v13;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = v9;
  v6 = [v9 URLOfModelInThisBundle];
  [v5 loadContentsOfURL:? configuration:? completionHandler:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
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

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = v10;
  v5 = location[0];
  v7 = objc_alloc_init(MEMORY[0x277CBFF68]);
  v8 = [BackTapRNN predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15[1] = a5;
  v14 = [(BackTapRNN *)v18 model];
  v15[0] = [(MLModel *)v14 predictionFromFeatures:location[0] options:v16 error:a5];
  MEMORY[0x277D82BD8](v14);
  if (v15[0])
  {
    v7 = [BackTapRNNOutput alloc];
    v11 = [v15[0] featureValueForName:@"output"];
    v10 = [v11 multiArrayValue];
    v9 = [v15[0] featureValueForName:@"updated_history"];
    v8 = [v9 multiArrayValue];
    v19 = [(BackTapRNNOutput *)v7 initWithOutput:v10 updated_history:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
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

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = [(BackTapRNN *)v15 model];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __55__BackTapRNN_predictionFromFeatures_completionHandler___block_invoke;
  v11 = &unk_279A20CA0;
  v12 = MEMORY[0x277D82BE0](v13);
  [(MLModel *)v6 predictionFromFeatures:v5 completionHandler:?];
  MEMORY[0x277D82BD8](v6);
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

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v9 = [(BackTapRNN *)v18 model];
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __63__BackTapRNN_predictionFromFeatures_options_completionHandler___block_invoke;
  v13 = &unk_279A20CA0;
  v14 = MEMORY[0x277D82BE0](v15);
  [(MLModel *)v9 predictionFromFeatures:v7 options:v8 completionHandler:?];
  MEMORY[0x277D82BD8](v9);
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

- (id)predictionFromModel_input:(id)a3 history:(id)a4 error:(id *)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a5;
  v5 = [BackTapRNNInput alloc];
  v10[0] = [(BackTapRNNInput *)v5 initWithModel_input:location[0] history:v11];
  v9 = [(BackTapRNN *)v13 predictionFromFeatures:v10[0] error:a5];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23[1] = a5;
  v5 = objc_alloc(MEMORY[0x277CBFEB0]);
  v23[0] = [v5 initWithFeatureProviderArray:location[0]];
  v16 = [(BackTapRNN *)v26 model];
  v22 = [(MLModel *)v16 predictionsFromBatch:v23[0] options:v24 error:a5];
  MEMORY[0x277D82BD8](v16);
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
      v11 = [v12 multiArrayValue];
      v10 = [v18 featureValueForName:@"updated_history"];
      v9 = [v10 multiArrayValue];
      v17 = [(BackTapRNNOutput *)v8 initWithOutput:v11 updated_history:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
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