@interface VisionCoreSmudgeInferenceNetworkDescriptor
+ (id)_createDescriptorWithError:(id *)a3;
+ (id)modelFileURLForModelVersion:(unint64_t)a3 error:(id *)a4;
+ (id)smudgeDetectionNetworkForModelVersion:(unint64_t)a3 error:(id *)a4;
+ (int64_t)supportedANEGenerationLowerBoundForModelFileName:(id)a3;
+ (int64_t)supportedFullANEResidencyGenerationLowerBoundForModelFileName:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation VisionCoreSmudgeInferenceNetworkDescriptor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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
      v5 = [(VisionCoreInferenceNetworkDescriptor *)&v7 isEqual:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)_createDescriptorWithError:(id *)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 loadOrCompileProgramLibrary:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil" modelBaseName:@"smudgenet-v1.E5" e5rtComputeDeviceType:4 supportedOnANEFrom:objc_msgSend(a1 fullyANEResidentFrom:"supportedANEGenerationLowerBoundForModelFileName:" allowCompilation:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil" error:{objc_msgSend(a1, "supportedFullANEResidencyGenerationLowerBoundForModelFileName:", @"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil", 1, a3}];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 functionNamed:@"main" error:a3];
    if (v7)
    {
      v8 = [a1 networkVersionForProgramLibrary:v6 function:v7];
      v9 = [v7 descriptorOfClass:objc_opt_class() forInput:@"image" error:a3];
      if (v9)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", @"smudge_probabilities"];
        v20[0] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        v12 = [v7 descriptorsForOutputs:v11 error:a3];

        if (v12)
        {
          v13 = [a1 alloc];
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

+ (id)smudgeDetectionNetworkForModelVersion:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v5 = [a1 _createDescriptorWithError:a4];
  }

  else
  {
    if (a4)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown model version %lu", a3];
      *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v6];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)modelFileURLForModelVersion:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v5 = [VisionCoreEspressoUtils E5RTURLForModelNamed:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil" error:a4];
  }

  else if (a4)
  {
    v6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"Undefined model version"];
    v7 = v6;
    v5 = 0;
    *a4 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)supportedFullANEResidencyGenerationLowerBoundForModelFileName:(id)a3
{
  if ([a3 containsString:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil"])
  {
    return 13;
  }

  [MEMORY[0x1E696ABC0] VisionCoreAssert:0 log:@"Unknown smudge model"];
  return -1;
}

+ (int64_t)supportedANEGenerationLowerBoundForModelFileName:(id)a3
{
  if ([a3 containsString:@"smudgenet-v1.E5.bundle/smudgenet-v1.E5.mil"])
  {
    return 13;
  }

  [MEMORY[0x1E696ABC0] VisionCoreAssert:0 log:@"Unknown smudge model"];
  return -1;
}

@end