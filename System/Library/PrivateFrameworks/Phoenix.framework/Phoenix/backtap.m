@interface backtap
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (backtap)init;
- (backtap)initWithConfiguration:(id)a3 error:(id *)a4;
- (backtap)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (backtap)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (backtap)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromModel_input:(id)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation backtap

+ (id)URLOfModelInThisBundle
{
  v10[2] = a1;
  v10[1] = a2;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10[0] = [v6 pathForResource:@"backtap" ofType:@"mlmodelc"];
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
      _os_log_error_impl(&dword_25E4AC000, log, type, "Could not load backtap.mlmodelc in the bundle resource", v7, 2u);
    }

    objc_storeStrong(&location, 0);
    v11 = 0;
  }

  objc_storeStrong(v10, 0);
  v2 = v11;

  return v2;
}

- (backtap)initWithMLModel:(id)a3
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
    v5.super_class = backtap;
    v8 = [(backtap *)&v5 init];
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

- (backtap)init
{
  v6 = self;
  v4 = [objc_opt_class() URLOfModelInThisBundle];
  v6 = 0;
  v6 = [backtap initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v6, 0);
  return v5;
}

- (backtap)initWithConfiguration:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [objc_opt_class() URLOfModelInThisBundle];
  v9 = 0;
  v9 = [backtap initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x277D82BE0](v9);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (backtap)initWithContentsOfURL:(id)a3 error:(id *)a4
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

- (backtap)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
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
  v12 = __61__backtap_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v13 = &unk_279A20C78;
  v14 = MEMORY[0x277D82BE0](v15);
  [v9 loadContentsOfURL:v7 configuration:v8 completionHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
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
  v8 = [backtap predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a5;
  v12 = [(backtap *)v16 model];
  v13[0] = [(MLModel *)v12 predictionFromFeatures:location[0] options:v14 error:a5];
  MEMORY[0x277D82BD8](v12);
  if (v13[0])
  {
    v7 = [backtapOutput alloc];
    v9 = [v13[0] featureValueForName:@"model_output"];
    v8 = [v9 multiArrayValue];
    v17 = [(backtapOutput *)v7 initWithModel_output:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v17 = 0;
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v5 = v17;

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
  v6 = [(backtap *)v15 model];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __52__backtap_predictionFromFeatures_completionHandler___block_invoke;
  v11 = &unk_279A20CA0;
  v12 = MEMORY[0x277D82BE0](v13);
  [(MLModel *)v6 predictionFromFeatures:v5 completionHandler:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
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
  v9 = [(backtap *)v18 model];
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __60__backtap_predictionFromFeatures_options_completionHandler___block_invoke;
  v13 = &unk_279A20CA0;
  v14 = MEMORY[0x277D82BE0](v15);
  [(MLModel *)v9 predictionFromFeatures:v7 options:v8 completionHandler:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (id)predictionFromModel_input:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8[1] = a4;
  v4 = [backtapInput alloc];
  v8[0] = [(backtapInput *)v4 initWithModel_input:location[0]];
  v7 = [(backtap *)v10 predictionFromFeatures:v8[0] error:a4];
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21[1] = a5;
  v5 = objc_alloc(MEMORY[0x277CBFEB0]);
  v21[0] = [v5 initWithFeatureProviderArray:location[0]];
  v14 = [(backtap *)v24 model];
  v20 = [(MLModel *)v14 predictionsFromBatch:v21[0] options:v22 error:a5];
  MEMORY[0x277D82BD8](v14);
  if (v20)
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
    for (i = 0; ; ++i)
    {
      v11 = i;
      if (v11 >= [v20 count])
      {
        break;
      }

      v16 = [v20 featuresAtIndex:i];
      v8 = [backtapOutput alloc];
      v10 = [v16 featureValueForName:@"model_output"];
      v9 = [v10 multiArrayValue];
      v15 = [(backtapOutput *)v8 initWithModel_output:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      [v18 addObject:v15];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    v25 = MEMORY[0x277D82BE0](v18);
    v19 = 1;
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v25 = 0;
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  v6 = v25;

  return v6;
}

@end