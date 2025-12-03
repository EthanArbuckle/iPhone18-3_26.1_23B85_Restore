@interface CRFormContentTypeModel
+ (id)defaultURLOfModelInThisBundle;
- (CRFormContentTypeModel)init;
- (CRFormContentTypeModel)initWithConfiguration:(id)configuration error:(id *)error;
- (CRFormContentTypeModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (CRFormContentTypeModel)initWithContentsOfURL:(id)l error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
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
  defaultURLOfModelInThisBundle = [objc_opt_class() defaultURLOfModelInThisBundle];
  v4 = [(CRFormContentTypeModel *)self initWithContentsOfURL:defaultURLOfModelInThisBundle error:0];

  return v4;
}

- (CRFormContentTypeModel)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = CRFormContentTypeModel;
  v7 = [(CRFormContentTypeModel *)&v12 init];
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

- (CRFormContentTypeModel)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  defaultURLOfModelInThisBundle = [objc_opt_class() defaultURLOfModelInThisBundle];
  customModelURL = [configurationCopy customModelURL];

  if (customModelURL)
  {
    customModelURL2 = [configurationCopy customModelURL];

    defaultURLOfModelInThisBundle = customModelURL2;
  }

  v10 = [(CRFormContentTypeModel *)self initWithContentsOfURL:defaultURLOfModelInThisBundle configuration:configurationCopy error:error];

  return v10;
}

- (CRFormContentTypeModel)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  lCopy = l;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = CRFormContentTypeModel;
  v10 = [(CRFormContentTypeModel *)&v16 init];
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
  v9 = [(CRFormContentTypeModel *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  v5 = [(MLModel *)self->_model predictionFromFeatures:features options:options error:error];
  v6 = [CRFormContentTypeModelOutput alloc];
  v7 = [v5 featureValueForName:@"score"];
  multiArrayValue = [v7 multiArrayValue];
  v9 = [(CRFormContentTypeModelOutput *)v6 initWithScore:multiArrayValue];

  return v9;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x1E695FE30]) initWithFeatureProviderArray:inputsCopy];
  v11 = [(MLModel *)self->_model predictionsFromBatch:v10 options:optionsCopy error:error];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  if ([v11 count] >= 1)
  {
    v13 = 0;
    do
    {
      v14 = [v11 featuresAtIndex:v13];
      v15 = [v14 featureValueForName:@"score"];
      multiArrayValue = [v15 multiArrayValue];

      v17 = [[CRFormContentTypeModelOutput alloc] initWithScore:multiArrayValue];
      [v12 addObject:v17];

      ++v13;
    }

    while (v13 < [v11 count]);
  }

  return v12;
}

@end