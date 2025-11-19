@interface nccp_wra_qmaxp_seq_model
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (id)predictionFromDaily_history_input:(id)a3 usage_history_input:(id)a4 error:(id *)a5;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (nccp_wra_qmaxp_seq_model)init;
- (nccp_wra_qmaxp_seq_model)initWithConfiguration:(id)a3 error:(id *)a4;
- (nccp_wra_qmaxp_seq_model)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (nccp_wra_qmaxp_seq_model)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (nccp_wra_qmaxp_seq_model)initWithMLModel:(id)a3;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation nccp_wra_qmaxp_seq_model

+ (id)URLOfModelInThisBundle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"nccp_wra_qmaxp_seq_model" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003331C();
    }

    v4 = 0;
  }

  return v4;
}

- (nccp_wra_qmaxp_seq_model)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = nccp_wra_qmaxp_seq_model;
    v6 = [(nccp_wra_qmaxp_seq_model *)&v10 init];
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

- (nccp_wra_qmaxp_seq_model)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(nccp_wra_qmaxp_seq_model *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (nccp_wra_qmaxp_seq_model)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(nccp_wra_qmaxp_seq_model *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (nccp_wra_qmaxp_seq_model)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MLModel modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(nccp_wra_qmaxp_seq_model *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (nccp_wra_qmaxp_seq_model)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MLModel modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(nccp_wra_qmaxp_seq_model *)self initWithMLModel:v6];
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
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000299E8;
  v8[3] = &unk_100048FF8;
  v9 = a5;
  v7 = v9;
  [MLModel loadContentsOfURL:a3 configuration:a4 completionHandler:v8];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MLPredictionOptions);
  v8 = [(nccp_wra_qmaxp_seq_model *)self predictionFromFeatures:v6 options:v7 error:a4];

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(nccp_wra_qmaxp_seq_model *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [nccp_wra_qmaxp_seq_modelOutput alloc];
    v26 = [v11 featureValueForName:@"nccp_wra_qmaxp_q10_forecast"];
    v13 = [v26 multiArrayValue];
    v25 = [v11 featureValueForName:@"nccp_wra_qmaxp_q25_forecast"];
    v14 = [v25 multiArrayValue];
    v15 = [v11 featureValueForName:@"nccp_wra_qmaxp_q50_forecast"];
    v16 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"nccp_wra_qmaxp_q75_forecast"];
    v18 = [v17 multiArrayValue];
    v19 = [v11 featureValueForName:@"nccp_wra_qmaxp_q90_forecast"];
    v20 = [v19 multiArrayValue];
    v21 = v12;
    v22 = v13;
    v23 = [(nccp_wra_qmaxp_seq_modelOutput *)v21 initWithNccp_wra_qmaxp_q10_forecast:v13 nccp_wra_qmaxp_q25_forecast:v14 nccp_wra_qmaxp_q50_forecast:v16 nccp_wra_qmaxp_q75_forecast:v18 nccp_wra_qmaxp_q90_forecast:v20];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(nccp_wra_qmaxp_seq_model *)self model];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100029D9C;
  v10[3] = &unk_100049020;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(nccp_wra_qmaxp_seq_model *)self model];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002A054;
  v13[3] = &unk_100049020;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromDaily_history_input:(id)a3 usage_history_input:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[nccp_wra_qmaxp_seq_modelInput alloc] initWithDaily_history_input:v9 usage_history_input:v8];

  v11 = [(nccp_wra_qmaxp_seq_model *)self predictionFromFeatures:v10 error:a5];

  return v11;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MLArrayBatchProvider alloc] initWithFeatureProviderArray:v8];
  v11 = [(nccp_wra_qmaxp_seq_model *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
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
        v29 = [nccp_wra_qmaxp_seq_modelOutput alloc];
        v32 = [v15 featureValueForName:@"nccp_wra_qmaxp_q10_forecast"];
        v28 = [v32 multiArrayValue];
        v31 = [v15 featureValueForName:@"nccp_wra_qmaxp_q25_forecast"];
        v16 = [v31 multiArrayValue];
        v30 = [v15 featureValueForName:@"nccp_wra_qmaxp_q50_forecast"];
        v17 = [v30 multiArrayValue];
        v18 = [v15 featureValueForName:@"nccp_wra_qmaxp_q75_forecast"];
        v19 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"nccp_wra_qmaxp_q90_forecast"];
        v21 = [v20 multiArrayValue];
        v22 = [(nccp_wra_qmaxp_seq_modelOutput *)v29 initWithNccp_wra_qmaxp_q10_forecast:v28 nccp_wra_qmaxp_q25_forecast:v16 nccp_wra_qmaxp_q50_forecast:v17 nccp_wra_qmaxp_q75_forecast:v19 nccp_wra_qmaxp_q90_forecast:v21];

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

@end