@interface CRTextDetectorModelV3CoreML
+ (id)defaultURLOfModelInThisBundle;
- (CRTextDetectorModelV3CoreML)init;
- (CRTextDetectorModelV3CoreML)initWithConfiguration:(id)a3 owner:(id)a4 error:(id *)a5;
- (CRTextDetectorModelV3CoreML)initWithContentsOfURL:(id)a3 configuration:(id)a4 owner:(id)a5 error:(id *)a6;
- (CRTextDetectorModelV3CoreML)initWithContentsOfURL:(id)a3 owner:(id)a4 error:(id *)a5;
- (id)predictionFromImage:(__CVBuffer *)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation CRTextDetectorModelV3CoreML

+ (id)defaultURLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"cr_td_model_v3_eir.mlmodelc" ofType:@"bundle"];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    v5 = CROSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B40D2000, v5, OS_LOG_TYPE_FAULT, "Could not get detector path!", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (CRTextDetectorModelV3CoreML)init
{
  v3 = [objc_opt_class() defaultURLOfModelInThisBundle];
  if (v3)
  {
    self = [(CRTextDetectorModelV3CoreML *)self initWithContentsOfURL:v3 owner:0 error:0];
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CRTextDetectorModelV3CoreML)initWithContentsOfURL:(id)a3 owner:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CRTextDetectorModelV3CoreML;
  v10 = [(CRTextDetectorModelV3CoreML *)&v18 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v10->_owner, a4);
  [CRLoadCounterFacade recordLoad:v11 owner:v11->_owner];
  v12 = CROSLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 0;
    _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_DEFAULT, "Loading detector model", v17, 2u);
  }

  v13 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v8 error:a5];
  model = v11->_model;
  v11->_model = v13;

  if (v11->_model)
  {
    v15 = v11;
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  [CRLoadCounterFacade recordUnload:self owner:self->_owner];
  v3 = CROSLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B40D2000, v3, OS_LOG_TYPE_DEFAULT, "Unloading detector model", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CRTextDetectorModelV3CoreML;
  [(CRTextDetectorModelV3CoreML *)&v4 dealloc];
}

- (CRTextDetectorModelV3CoreML)initWithConfiguration:(id)a3 owner:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() defaultURLOfModelInThisBundle];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 customModelPath];

    if (v12)
    {
      v13 = MEMORY[0x1E695DFF8];
      v14 = [v8 customModelPath];
      v15 = [v13 fileURLWithPath:v14];

      v11 = v15;
    }

    self = [(CRTextDetectorModelV3CoreML *)self initWithContentsOfURL:v11 configuration:v8 owner:v9 error:a5];

    v16 = self;
  }

  else if (a5)
  {
    [CRImageReader errorWithErrorCode:-8];
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (CRTextDetectorModelV3CoreML)initWithContentsOfURL:(id)a3 configuration:(id)a4 owner:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = CRTextDetectorModelV3CoreML;
  v13 = [(CRTextDetectorModelV3CoreML *)&v24 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695FEB0]);
    [v14 setAllowLowPrecisionAccumulationOnGPU:1];
    if (deviceHasAppleNeuralEngine())
    {
      v15 = 2;
    }

    else
    {
      v15 = +[CRComputeDeviceUtilities mlComputeUnitFromComputeDeviceType:](CRComputeDeviceUtilities, "mlComputeUnitFromComputeDeviceType:", [v11 computeDeviceType]);
    }

    [v14 setComputeUnits:v15];
    if ([v14 computeUnits] == 1 || (deviceHasAppleNeuralEngine() & 1) == 0 && objc_msgSend(v14, "computeUnits"))
    {
      [v14 setAllowBackgroundGPUCompute:1];
      v17 = [v11 metalDevice];

      if (v17)
      {
        v18 = [v11 metalDevice];
        [v14 setPreferredMetalDevice:v18];
      }
    }

    objc_storeStrong(&v13->_owner, a5);
    [CRLoadCounterFacade recordLoad:v13 owner:v13->_owner];
    v19 = CROSLogForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_DEFAULT, "Loading detector model", v23, 2u);
    }

    v20 = [MEMORY[0x1E695FE90] modelWithContentsOfURL:v10 configuration:v14 error:a6];
    model = v13->_model;
    v13->_model = v20;

    if (v13->_model)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)predictionFromImage:(__CVBuffer *)a3 error:(id *)a4
{
  v6 = [[CRTextDetectorModelV3Input alloc] initWithImg_input:a3];
  model = self->_model;
  v8 = objc_alloc_init(MEMORY[0x1E695FF08]);
  v9 = [(MLModel *)model predictionFromFeatures:v6 options:v8 error:a4];

  if (v9)
  {
    v24 = [CRTextDetectorModelV3Output alloc];
    v27 = [v9 featureValueForName:@"region_score"];
    v20 = [v27 multiArrayValue];
    v26 = [v9 featureValueForName:@"script_feature"];
    v21 = [v26 multiArrayValue];
    v25 = [v9 featureValueForName:@"link_score_horizontal"];
    v19 = [v25 multiArrayValue];
    v23 = [v9 featureValueForName:@"link_score_vertical"];
    v10 = [v23 multiArrayValue];
    v11 = [v9 featureValueForName:@"orientation_score"];
    v12 = [v11 multiArrayValue];
    v13 = [v9 featureValueForName:@"text_type_score"];
    [v13 multiArrayValue];
    v14 = v22 = v6;
    v15 = [v9 featureValueForName:@"table_score"];
    v16 = [v15 multiArrayValue];
    v17 = [(CRTextDetectorModelV3Output *)v24 initWithRegion_score:v20 script_feature:v21 link_score_horizontal:v19 link_score_vertical:v10 orientation_score:v12 text_type_score:v14 table_score:v16];

    v6 = v22;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end