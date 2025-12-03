@interface CRFormDetectorModel
+ (id)defaultURLOfModelInThisBundle;
- (CRFormDetectorModel)init;
- (CRFormDetectorModel)initWithConfiguration:(id)configuration error:(id *)error;
- (CRFormDetectorModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (CRFormDetectorModel)initWithContentsOfURL:(id)l error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
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
  defaultURLOfModelInThisBundle = [objc_opt_class() defaultURLOfModelInThisBundle];
  v4 = [(CRFormDetectorModel *)self initWithContentsOfURL:defaultURLOfModelInThisBundle error:0];

  return v4;
}

- (CRFormDetectorModel)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = CRFormDetectorModel;
  v7 = [(CRFormDetectorModel *)&v12 init];
  if (v7 && ([MEMORY[0x1E695FE90] modelWithContentsOfURL:lCopy error:error], v8 = objc_claimAutoreleasedReturnValue(), model = v7->_model, v7->_model = v8, model, !v7->_model))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (CRFormDetectorModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  defaultURLOfModelInThisBundle = [objc_opt_class() defaultURLOfModelInThisBundle];
  customModelURL = [configurationCopy customModelURL];

  if (customModelURL)
  {
    customModelURL2 = [configurationCopy customModelURL];

    defaultURLOfModelInThisBundle = customModelURL2;
  }

  v10 = [(CRFormDetectorModel *)self initWithContentsOfURL:defaultURLOfModelInThisBundle configuration:configurationCopy error:error];

  return v10;
}

- (CRFormDetectorModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  lCopy = l;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = CRFormDetectorModel;
  v10 = [(CRFormDetectorModel *)&v16 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695FEB0]);
    [v11 setAllowLowPrecisionAccumulationOnGPU:1];
    [v11 setComputeUnits:{+[CRComputeDeviceUtilities mlComputeUnitFromComputeDeviceType:](CRComputeDeviceUtilities, "mlComputeUnitFromComputeDeviceType:", objc_msgSend(configurationCopy, "computeDeviceType"))}];
    if ([v11 computeUnits] == 1 || (deviceHasAppleNeuralEngine() & 1) == 0 && objc_msgSend(v11, "computeUnits"))
    {
      [v11 setAllowBackgroundGPUCompute:1];
    }

    v12 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:lCopy configuration:v11 error:error];
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

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x1E695FF08];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(CRFormDetectorModel *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:features options:options error:error];
  v6 = [CRFormDetectorModelOutput alloc];
  v7 = [v5 featureValueForName:@"bbox_regression"];
  multiArrayValue = [v7 multiArrayValue];
  v9 = [v5 featureValueForName:@"cls_logits"];
  multiArrayValue2 = [v9 multiArrayValue];
  v11 = [v5 featureValueForName:@"anchors"];
  multiArrayValue3 = [v11 multiArrayValue];
  v13 = [(CRFormDetectorModelOutput *)v6 initWithBoundingBoxes:multiArrayValue classLogits:multiArrayValue2 anchors:multiArrayValue3];

  return v13;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v23 = inputsCopy;
  v21 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:inputsCopy];
  v22 = optionsCopy;
  v9 = [MLModel predictionsFromBatch:"predictionsFromBatch:options:error:" options:? error:?];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if ([v9 count] >= 1)
  {
    v11 = 0;
    do
    {
      v12 = [v9 featuresAtIndex:v11];
      v13 = [v12 featureValueForName:@"bbox_regression"];
      multiArrayValue = [v13 multiArrayValue];

      v15 = [v12 featureValueForName:@"cls_logits"];
      multiArrayValue2 = [v15 multiArrayValue];

      v17 = [v12 featureValueForName:@"anchors"];
      multiArrayValue3 = [v17 multiArrayValue];

      v19 = [[CRFormDetectorModelOutput alloc] initWithBoundingBoxes:multiArrayValue classLogits:multiArrayValue2 anchors:multiArrayValue3];
      [v10 addObject:v19];

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  return v10;
}

@end