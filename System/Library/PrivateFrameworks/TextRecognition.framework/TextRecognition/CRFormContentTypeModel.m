@interface CRFormContentTypeModel
+ (id)defaultURLOfModelInThisBundle;
- (CRFormContentTypeModel)init;
- (CRFormContentTypeModel)initWithConfiguration:(id)a3 error:(id *)a4;
- (CRFormContentTypeModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (CRFormContentTypeModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation CRFormContentTypeModel

+ (id)defaultURLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"cr_form_ct_v2.mlmodelc" ofType:@"bundle"];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

  return v4;
}

- (CRFormContentTypeModel)init
{
  v3 = [objc_opt_class() defaultURLOfModelInThisBundle];
  v4 = [(CRFormContentTypeModel *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (CRFormContentTypeModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CRFormContentTypeModel;
  v7 = [(CRFormContentTypeModel *)&v12 init];
  if (v7 && ([MEMORY[0x1E695FE90] modelWithContentsOfURL:v6 error:a4], v8 = objc_claimAutoreleasedReturnValue(), model = v7->_model, v7->_model = v8, model, !v7->_model))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (CRFormContentTypeModel)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() defaultURLOfModelInThisBundle];
  v8 = [v6 customModelURL];

  if (v8)
  {
    v9 = [v6 customModelURL];

    v7 = v9;
  }

  v10 = [(CRFormContentTypeModel *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v10;
}

- (CRFormContentTypeModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CRFormContentTypeModel;
  v10 = [(CRFormContentTypeModel *)&v16 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695FEB0]);
    [v11 setAllowLowPrecisionAccumulationOnGPU:1];
    [v11 setComputeUnits:{+[CRComputeDeviceUtilities mlComputeUnitFromComputeDeviceType:](CRComputeDeviceUtilities, "mlComputeUnitFromComputeDeviceType:", objc_msgSend(v9, "computeDeviceType"))}];
    if ([v11 computeUnits] == 1 || (deviceHasAppleNeuralEngine() & 1) == 0 && objc_msgSend(v11, "computeUnits"))
    {
      [v11 setAllowBackgroundGPUCompute:1];
    }

    v12 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v8 configuration:v11 error:a5];
    model = v10->_model;
    v10->_model = v12;

    if (v10->_model)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695FF08];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(CRFormContentTypeModel *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:a3 options:a4 error:a5];
  v6 = [CRFormContentTypeModelOutput alloc];
  v7 = [v5 featureValueForName:@"score"];
  v8 = [v7 multiArrayValue];
  v9 = [(CRFormContentTypeModelOutput *)v6 initWithScore:v8];

  return v9;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v8];
  v11 = [(MLModel *)self->_model predictionsFromBatch:v10 options:v9 error:a5];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  if ([v11 count] >= 1)
  {
    v13 = 0;
    do
    {
      v14 = [v11 featuresAtIndex:v13];
      v15 = [v14 featureValueForName:@"score"];
      v16 = [v15 multiArrayValue];

      v17 = [[CRFormContentTypeModelOutput alloc] initWithScore:v16];
      [v12 addObject:v17];

      ++v13;
    }

    while (v13 < [v11 count]);
  }

  return v12;
}

@end