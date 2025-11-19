@interface main_nyc2d88ffc_44000_V53_V54
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromJasper:(id)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (main_nyc2d88ffc_44000_V53_V54)init;
- (main_nyc2d88ffc_44000_V53_V54)initWithConfiguration:(id)a3 error:(id *)a4;
- (main_nyc2d88ffc_44000_V53_V54)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (main_nyc2d88ffc_44000_V53_V54)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (main_nyc2d88ffc_44000_V53_V54)initWithMLModel:(id)a3;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation main_nyc2d88ffc_44000_V53_V54

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v8];
  v11 = [(main_nyc2d88ffc_44000_V53_V54 *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v24 = v10;
      v25 = v9;
      v26 = v8;
      v27 = v13;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v29 = [main_nyc2d88ffc_44000_V53_V54Output alloc];
        v32 = [v15 featureValueForName:@"out_argmax_x8"];
        v28 = [v32 multiArrayValue];
        v31 = [v15 featureValueForName:@"out_prob_class_0"];
        v16 = [v31 multiArrayValue];
        v30 = [v15 featureValueForName:@"out_prob_class_1"];
        v17 = [v30 multiArrayValue];
        v18 = [v15 featureValueForName:@"out_prob_class_2"];
        v19 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"out_spatial_only"];
        v21 = [v20 multiArrayValue];
        v22 = [(main_nyc2d88ffc_44000_V53_V54Output *)v29 initWithOut_argmax_x8:v28 out_prob_class_0:v16 out_prob_class_1:v17 out_prob_class_2:v19 out_spatial_only:v21];

        v13 = v27;
        [v27 addObject:v22];

        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v25;
      v8 = v26;
      v10 = v24;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)predictionFromJasper:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[main_nyc2d88ffc_44000_V53_V54Input alloc] initWithJasper:v6];

  v8 = [(main_nyc2d88ffc_44000_V53_V54 *)self predictionFromFeatures:v7 error:a4];

  return v8;
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(main_nyc2d88ffc_44000_V53_V54 *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__main_nyc2d88ffc_44000_V53_V54_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_27852C7A8;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(main_nyc2d88ffc_44000_V53_V54 *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__main_nyc2d88ffc_44000_V53_V54_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_27852C7A8;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(main_nyc2d88ffc_44000_V53_V54 *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [main_nyc2d88ffc_44000_V53_V54Output alloc];
    v26 = [v11 featureValueForName:@"out_argmax_x8"];
    v13 = [v26 multiArrayValue];
    v25 = [v11 featureValueForName:@"out_prob_class_0"];
    v14 = [v25 multiArrayValue];
    v15 = [v11 featureValueForName:@"out_prob_class_1"];
    v16 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"out_prob_class_2"];
    v18 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"out_spatial_only"];
    v20 = [v19 multiArrayValue];
    v21 = v12;
    v22 = v13;
    v23 = [(main_nyc2d88ffc_44000_V53_V54Output *)v21 initWithOut_argmax_x8:v13 out_prob_class_0:v14 out_prob_class_1:v16 out_prob_class_2:v18 out_spatial_only:v20];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBFF68];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(main_nyc2d88ffc_44000_V53_V54 *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (main_nyc2d88ffc_44000_V53_V54)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(main_nyc2d88ffc_44000_V53_V54 *)self initWithMLModel:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (main_nyc2d88ffc_44000_V53_V54)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(main_nyc2d88ffc_44000_V53_V54 *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (main_nyc2d88ffc_44000_V53_V54)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(main_nyc2d88ffc_44000_V53_V54 *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (main_nyc2d88ffc_44000_V53_V54)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(main_nyc2d88ffc_44000_V53_V54 *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (main_nyc2d88ffc_44000_V53_V54)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = main_nyc2d88ffc_44000_V53_V54;
    v6 = [(main_nyc2d88ffc_44000_V53_V54 *)&v10 init];
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

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBFF20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__main_nyc2d88ffc_44000_V53_V54_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_27852C780;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 URLOfModelInThisBundle];
  [a1 loadContentsOfURL:v8 configuration:v7 completionHandler:v6];
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