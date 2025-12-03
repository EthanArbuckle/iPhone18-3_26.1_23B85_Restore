@interface CRTextDetectorModelV3E5ML
+ (id)E5RTFunctionDescriptorWithError:(id *)error;
+ (id)defaultURLOfModelInThisBundle;
- (CRTextDetectorModelV3E5ML)init;
- (CRTextDetectorModelV3E5ML)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error;
- (CRTextDetectorModelV3E5ML)initWithContentsOfURL:(id)l configuration:(id)configuration owner:(id)owner error:(id *)error;
- (CRTextDetectorModelV3E5ML)initWithContentsOfURL:(id)l owner:(id)owner error:(id *)error;
- (id)createExecutionContext;
- (void)dealloc;
@end

@implementation CRTextDetectorModelV3E5ML

+ (id)defaultURLOfModelInThisBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"cr_td_model_v3_e5.mlmodelc" ofType:@"bundle"];

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

+ (id)E5RTFunctionDescriptorWithError:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    defaultURLOfModelInThisBundle = [objc_opt_class() defaultURLOfModelInThisBundle];
    if (defaultURLOfModelInThisBundle)
    {
      v5 = [CRE5MLUtilities E5RTProgramLibraryForModelURL:defaultURLOfModelInThisBundle error:error];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 functionNamed:@"main" error:error];
        if (v7)
        {
          v8 = [v7 descriptorOfClass:objc_opt_class() forInput:@"img_input" error:error];
          v9 = v8;
          if (v8)
          {
            v15[0] = v8;
            v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
            v11 = [v7 descriptorsForOutputs:&unk_1F2BF8890 error:error];
            if (v11)
            {
              v12 = [objc_alloc(MEMORY[0x1E69DF970]) initWithMajor:3];
              v13 = [objc_alloc(MEMORY[0x1E69DF8E0]) initWithFunction:v7 inputDescriptors:v10 inputImageDescriptors:v10 outputDescriptors:v11 confidencesOutputDescriptors:0 networkVersion:v12];
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else if (error)
    {
      [CRImageReader errorWithErrorCode:-8];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CRTextDetectorModelV3E5ML)init
{
  defaultURLOfModelInThisBundle = [objc_opt_class() defaultURLOfModelInThisBundle];
  if (defaultURLOfModelInThisBundle)
  {
    self = [(CRTextDetectorModelV3E5ML *)self initWithContentsOfURL:defaultURLOfModelInThisBundle owner:0 error:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CRTextDetectorModelV3E5ML)initWithContentsOfURL:(id)l owner:(id)owner error:(id *)error
{
  ownerCopy = owner;
  v17.receiver = self;
  v17.super_class = CRTextDetectorModelV3E5ML;
  v9 = [(CRTextDetectorModelV3E5ML *)&v17 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_owner, owner);
  [CRLoadCounterFacade recordLoad:v10 owner:ownerCopy];
  v11 = CROSLogForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 0;
    _os_log_impl(&dword_1B40D2000, v11, OS_LOG_TYPE_DEFAULT, "Loading detector model", v16, 2u);
  }

  v12 = [objc_opt_class() E5RTFunctionDescriptorWithError:error];
  functionDescriptor = v10->_functionDescriptor;
  v10->_functionDescriptor = v12;

  if (v10->_functionDescriptor)
  {
    v14 = v10;
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

- (CRTextDetectorModelV3E5ML)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error
{
  configurationCopy = configuration;
  ownerCopy = owner;
  defaultURLOfModelInThisBundle = [objc_opt_class() defaultURLOfModelInThisBundle];
  if (defaultURLOfModelInThisBundle)
  {
    v11 = defaultURLOfModelInThisBundle;
    customModelPath = [configurationCopy customModelPath];

    if (customModelPath)
    {
      v13 = MEMORY[0x1E695DFF8];
      customModelPath2 = [configurationCopy customModelPath];
      v15 = [v13 fileURLWithPath:customModelPath2];

      v11 = v15;
    }

    self = [(CRTextDetectorModelV3E5ML *)self initWithContentsOfURL:v11 configuration:configurationCopy owner:ownerCopy error:error];

    selfCopy = self;
  }

  else if (error)
  {
    [CRImageReader errorWithErrorCode:-8];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CRTextDetectorModelV3E5ML)initWithContentsOfURL:(id)l configuration:(id)configuration owner:(id)owner error:(id *)error
{
  ownerCopy = owner;
  v18.receiver = self;
  v18.super_class = CRTextDetectorModelV3E5ML;
  v10 = [(CRTextDetectorModelV3E5ML *)&v18 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v10->_owner, owner);
  [CRLoadCounterFacade recordLoad:v11 owner:ownerCopy];
  v12 = CROSLogForCategory(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 0;
    _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_DEFAULT, "Loading detector model", v17, 2u);
  }

  v13 = [objc_opt_class() E5RTFunctionDescriptorWithError:error];
  functionDescriptor = v11->_functionDescriptor;
  v11->_functionDescriptor = v13;

  if (v11->_functionDescriptor)
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
  v4.super_class = CRTextDetectorModelV3E5ML;
  [(CRTextDetectorModelV3E5ML *)&v4 dealloc];
}

- (id)createExecutionContext
{
  v2 = [(CRE5MLExecutionContext *)[CRTextDetectorModelV3E5MLExecutionContext alloc] initWithFunction:self->_functionDescriptor];

  return v2;
}

@end