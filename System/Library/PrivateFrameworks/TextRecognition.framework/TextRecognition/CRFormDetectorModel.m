@interface CRFormDetectorModel
+ (id)defaultURLOfModelInThisBundle;
- (CRFormDetectorModel)init;
- (CRFormDetectorModel)initWithConfiguration:(id)a3 error:(id *)a4;
- (CRFormDetectorModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (CRFormDetectorModel)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation CRFormDetectorModel

+ (id)defaultURLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"cr_form_detector.mlmodelc" ofType:@"bundle"];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

  return v4;
}

- (CRFormDetectorModel)init
{
  v3 = [objc_opt_class() defaultURLOfModelInThisBundle];
  v4 = [(CRFormDetectorModel *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (CRFormDetectorModel)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CRFormDetectorModel;
  v7 = [(CRFormDetectorModel *)&v12 init];
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

- (CRFormDetectorModel)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() defaultURLOfModelInThisBundle];
  v8 = [v6 customModelURL];

  if (v8)
  {
    v9 = [v6 customModelURL];

    v7 = v9;
  }

  v10 = [(CRFormDetectorModel *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v10;
}

- (CRFormDetectorModel)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = CRFormDetectorModel;
  v10 = [(CRFormDetectorModel *)&v16 init];
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
  v9 = [(CRFormDetectorModel *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:a3 options:a4 error:a5];
  v6 = [CRFormDetectorModelOutput alloc];
  v7 = [v5 featureValueForName:@"bbox_regression"];
  v8 = [v7 multiArrayValue];
  v9 = [v5 featureValueForName:@"cls_logits"];
  v10 = [v9 multiArrayValue];
  v11 = [v5 featureValueForName:@"anchors"];
  v12 = [v11 multiArrayValue];
  v13 = [(CRFormDetectorModelOutput *)v6 initWithBoundingBoxes:v8 classLogits:v10 anchors:v12];

  return v13;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v23 = v7;
  v21 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:v7];
  v22 = v8;
  v9 = [MLModel predictionsFromBatch:"predictionsFromBatch:options:error:" options:? error:?];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if ([v9 count] >= 1)
  {
    v11 = 0;
    do
    {
      v12 = [v9 featuresAtIndex:v11];
      v13 = [v12 featureValueForName:@"bbox_regression"];
      v14 = [v13 multiArrayValue];

      v15 = [v12 featureValueForName:@"cls_logits"];
      v16 = [v15 multiArrayValue];

      v17 = [v12 featureValueForName:@"anchors"];
      v18 = [v17 multiArrayValue];

      v19 = [[CRFormDetectorModelOutput alloc] initWithBoundingBoxes:v14 classLogits:v16 anchors:v18];
      [v10 addObject:v19];

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  return v10;
}

@end