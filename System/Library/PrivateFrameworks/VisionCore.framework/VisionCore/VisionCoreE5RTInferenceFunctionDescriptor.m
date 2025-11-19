@interface VisionCoreE5RTInferenceFunctionDescriptor
+ (id)descriptorForProgramLibrary:(id)a3 functionName:(id)a4 inputImageName:(id)a5 outputNames:(id)a6 confidencesOutputName:(id)a7 labelsFileName:(id)a8 error:(id *)a9;
+ (id)descriptorForProgramLibraryName:(id)a3 functionName:(id)a4 inputImageName:(id)a5 outputNames:(id)a6 confidencesOutputName:(id)a7 labelsFileName:(id)a8 error:(id *)a9;
+ (id)loadOrCompileProgramLibrary:(id)a3 modelBaseName:(id)a4 e5rtComputeDeviceType:(unint64_t)a5 supportedOnANEFrom:(int64_t)a6 fullyANEResidentFrom:(int64_t)a7 allowCompilation:(BOOL)a8 error:(id *)a9;
+ (id)networkVersionForProgramLibrary:(id)a3 function:(id)a4;
- (VisionCoreE5RTInferenceFunctionDescriptor)initWithFunction:(id)a3 inputDescriptors:(id)a4 inputImageDescriptors:(id)a5 outputDescriptors:(id)a6 confidencesOutputDescriptors:(id)a7 networkVersion:(id)a8;
@end

@implementation VisionCoreE5RTInferenceFunctionDescriptor

- (VisionCoreE5RTInferenceFunctionDescriptor)initWithFunction:(id)a3 inputDescriptors:(id)a4 inputImageDescriptors:(id)a5 outputDescriptors:(id)a6 confidencesOutputDescriptors:(id)a7 networkVersion:(id)a8
{
  v13 = a3;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [(VisionCoreE5RTFunction *)v13 programLibrary];
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [v19 name];
  v22 = [(VisionCoreE5RTFunction *)v13 name];
  v23 = [v20 initWithFormat:@"%@:%@", v21, v22];

  v24 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:v23 version:v14];
  v25 = [v19 URL];
  v32.receiver = self;
  v32.super_class = VisionCoreE5RTInferenceFunctionDescriptor;
  v26 = [(VisionCoreInferenceNetworkDescriptor *)&v32 initWithURL:v25 specifier:v24 networkHeadVersions:0 inputs:v18 outputs:v16 inputImages:v17 confidencesOutput:v15];

  function = v26->_function;
  v26->_function = v13;
  v28 = v13;

  specifier = v26->_specifier;
  v26->_specifier = v24;

  return v26;
}

+ (id)networkVersionForProgramLibrary:(id)a3 function:(id)a4
{
  v4 = a4;
  v5 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
  v6 = [v4 metadata];

  if (v6)
  {
    v7 = [v6 objectForKey:@"UserVersion"];
    if (v7)
    {
      v8 = [VisionCoreResourceVersion versionForStringRepresentation:v7];
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

+ (id)descriptorForProgramLibrary:(id)a3 functionName:(id)a4 inputImageName:(id)a5 outputNames:(id)a6 confidencesOutputName:(id)a7 labelsFileName:(id)a8 error:(id *)a9
{
  v42[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [v15 functionNamed:a4 error:a9];
  if (!v20)
  {
    v27 = 0;
    goto LABEL_19;
  }

  v21 = [a1 networkVersionForProgramLibrary:v15 function:v20];
  v22 = [v20 descriptorOfClass:objc_opt_class() forInput:v16 error:a9];
  if (v22)
  {
    v23 = [v20 descriptorsForOutputs:v17 error:a9];
    if (v23)
    {
      v40 = v23;
      if (v18)
      {
        v24 = [v20 descriptorForOutput:v18 error:a9];
        if (!v24)
        {
          v27 = 0;
          goto LABEL_17;
        }

        v25 = v24;
        if (v19)
        {
          v38 = v24;
          v26 = [a1 URLForResourceNamed:v19 error:a9];
          if (!v26)
          {
            v27 = 0;
            v32 = v38;
            goto LABEL_15;
          }

          v34 = v26;
          v27 = [v38 confidencesDescriptorWithLabelsFileURL:v26 error:a9];

          v25 = v27;
          if (!v27)
          {
LABEL_17:

            goto LABEL_18;
          }
        }

        v39 = v25;
        v36 = v19;
        v37 = v21;
        v35 = v17;
        if (([v40 containsObject:?] & 1) == 0)
        {
          v28 = [v40 arrayByAddingObject:v39];

          v40 = v28;
        }
      }

      else
      {
        v35 = v17;
        v36 = v19;
        v37 = v21;
        v39 = 0;
      }

      v29 = [a1 alloc];
      v42[0] = v22;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
      v41 = v22;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      v21 = v37;
      v27 = [v29 initWithFunction:v20 inputDescriptors:v30 inputImageDescriptors:v31 outputDescriptors:v40 confidencesOutputDescriptors:v39 networkVersion:v37];

      v32 = v39;
      v17 = v35;
      v19 = v36;
LABEL_15:

      goto LABEL_17;
    }
  }

  v27 = 0;
LABEL_18:

LABEL_19:

  return v27;
}

+ (id)descriptorForProgramLibraryName:(id)a3 functionName:(id)a4 inputImageName:(id)a5 outputNames:(id)a6 confidencesOutputName:(id)a7 labelsFileName:(id)a8 error:(id *)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [a1 URLForResourceNamed:a3 error:a9];
  if (v20)
  {
    v21 = [VisionCoreE5RTProgramLibrary programLibraryForURL:v20 error:a9];
    if (v21)
    {
      v22 = [a1 descriptorForProgramLibrary:v21 functionName:v15 inputImageName:v16 outputNames:v17 confidencesOutputName:v18 labelsFileName:v19 error:a9];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)loadOrCompileProgramLibrary:(id)a3 modelBaseName:(id)a4 e5rtComputeDeviceType:(unint64_t)a5 supportedOnANEFrom:(int64_t)a6 fullyANEResidentFrom:(int64_t)a7 allowCompilation:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v14 = a3;
  v15 = [VisionCoreEspressoUtils E5RTURLForModelBundle:a4 modelFileIsBaseName:1 error:a9];
  if (!v15 || ![VisionCoreE5RTProgramLibrary isProgramLibraryAtURL:v15])
  {
    v16 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_6:
    if (v16)
    {
      goto LABEL_18;
    }

    v17 = [VisionCoreEspressoUtils URLForResourceFileNamed:v14 error:a9];
    if (!v17 || ![VisionCoreE5RTModelSource isModelSourceURL:v17]|| ([VisionCoreE5RTModelSource modelSourceFromURL:v17 error:a9], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v19 = v18;
    v20 = objc_alloc_init(VisionCoreE5RTProgramLibraryCompilationOptions);
    [(VisionCoreE5RTProgramLibraryCompilationOptions *)v20 setComputeDeviceTypes:a5];
    if (a5 == 4)
    {
      if (VisionCoreCurrentANEGeneration_onceToken != -1)
      {
        dispatch_once(&VisionCoreCurrentANEGeneration_onceToken, &__block_literal_global_22);
      }

      if (VisionCoreCurrentANEGeneration_currentANEGeneration < a6)
      {
        if (a9)
        {
          [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"The model is not supported on current ANE version"];
          *a9 = v16 = 0;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_23;
      }

      [(VisionCoreE5RTProgramLibraryCompilationOptions *)v20 setFullyANEResident:VisionCoreCurrentANEGeneration_currentANEGeneration >= a7];
    }

    v16 = [VisionCoreE5RTProgramLibrary compileModelSource:v19 options:v20 error:a9];
LABEL_23:

    goto LABEL_17;
  }

  v16 = [VisionCoreE5RTProgramLibrary programLibraryForURL:v15 error:a9];
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_18:

  return v16;
}

@end