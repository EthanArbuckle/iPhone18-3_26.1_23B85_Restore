@interface VisionCoreSmudgeInferenceNetworkDescriptor
+ (id)_createDescriptorWithError:(id *)error;
+ (id)modelFileURLForModelVersion:(unint64_t)version error:(id *)error;
+ (id)smudgeDetectionNetworkForModelVersion:(unint64_t)version error:(id *)error;
+ (int64_t)supportedANEGenerationLowerBoundForModelFileName:(id)name;
+ (int64_t)supportedFullANEResidencyGenerationLowerBoundForModelFileName:(id)name;
- (BOOL)isEqual:(id)equal;
@end

@implementation VisionCoreSmudgeInferenceNetworkDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = VisionCoreSmudgeInferenceNetworkDescriptor;
      v5 = [(VisionCoreInferenceNetworkDescriptor *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)_createDescriptorWithError:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [self loadOrCompileProgramLibrary:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil" modelBaseName:@"smudgenet-v1.E5" e5rtComputeDeviceType:4 supportedOnANEFrom:objc_msgSend(self fullyANEResidentFrom:"supportedANEGenerationLowerBoundForModelFileName:" allowCompilation:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil" error:{objc_msgSend(self, "supportedFullANEResidencyGenerationLowerBoundForModelFileName:", @"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil", 1, error}];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 functionNamed:@"main" error:error];
    if (v7)
    {
      v8 = [self networkVersionForProgramLibrary:v6 function:v7];
      v9 = [v7 descriptorOfClass:objc_opt_class() forInput:@"image" error:error];
      if (v9)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"smudge_probabilities"];
        v20[0] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        v12 = [v7 descriptorsForOutputs:v11 error:error];

        if (v12)
        {
          v13 = [self alloc];
          v19 = v9;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
          v18 = v9;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
          v16 = [v13 initWithFunction:v7 inputDescriptors:v14 inputImageDescriptors:v15 outputDescriptors:v12 confidencesOutputDescriptors:0 networkVersion:v8];
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

+ (id)smudgeDetectionNetworkForModelVersion:(unint64_t)version error:(id *)error
{
  if (version == 1)
  {
    v5 = [self _createDescriptorWithError:error];
  }

  else
  {
    if (error)
    {
      version = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown model version %lu", version];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:version];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)modelFileURLForModelVersion:(unint64_t)version error:(id *)error
{
  if (version == 1)
  {
    v5 = [VisionCoreEspressoUtils E5RTURLForModelNamed:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil" error:error];
  }

  else if (error)
  {
    v6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"Undefined model version"];
    v7 = v6;
    v5 = 0;
    *error = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)supportedFullANEResidencyGenerationLowerBoundForModelFileName:(id)name
{
  if ([name containsString:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil"])
  {
    return 13;
  }

  [MEMORY[0x1E696ABC0] VisionCoreAssert:0 log:@"Unknown smudge model"];
  return -1;
}

+ (int64_t)supportedANEGenerationLowerBoundForModelFileName:(id)name
{
  if ([name containsString:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil"])
  {
    return 13;
  }

  [MEMORY[0x1E696ABC0] VisionCoreAssert:0 log:@"Unknown smudge model"];
  return -1;
}

@end