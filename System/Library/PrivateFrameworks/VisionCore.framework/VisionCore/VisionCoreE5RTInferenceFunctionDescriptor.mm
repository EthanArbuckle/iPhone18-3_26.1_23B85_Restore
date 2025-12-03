@interface VisionCoreE5RTInferenceFunctionDescriptor
+ (id)descriptorForProgramLibrary:(id)library functionName:(id)name inputImageName:(id)imageName outputNames:(id)names confidencesOutputName:(id)outputName labelsFileName:(id)fileName error:(id *)error;
+ (id)descriptorForProgramLibraryName:(id)name functionName:(id)functionName inputImageName:(id)imageName outputNames:(id)names confidencesOutputName:(id)outputName labelsFileName:(id)fileName error:(id *)error;
+ (id)loadOrCompileProgramLibrary:(id)library modelBaseName:(id)name e5rtComputeDeviceType:(unint64_t)type supportedOnANEFrom:(int64_t)from fullyANEResidentFrom:(int64_t)residentFrom allowCompilation:(BOOL)compilation error:(id *)error;
+ (id)networkVersionForProgramLibrary:(id)library function:(id)function;
- (VisionCoreE5RTInferenceFunctionDescriptor)initWithFunction:(id)function inputDescriptors:(id)descriptors inputImageDescriptors:(id)imageDescriptors outputDescriptors:(id)outputDescriptors confidencesOutputDescriptors:(id)confidencesOutputDescriptors networkVersion:(id)version;
@end

@implementation VisionCoreE5RTInferenceFunctionDescriptor

- (VisionCoreE5RTInferenceFunctionDescriptor)initWithFunction:(id)function inputDescriptors:(id)descriptors inputImageDescriptors:(id)imageDescriptors outputDescriptors:(id)outputDescriptors confidencesOutputDescriptors:(id)confidencesOutputDescriptors networkVersion:(id)version
{
  functionCopy = function;
  versionCopy = version;
  confidencesOutputDescriptorsCopy = confidencesOutputDescriptors;
  outputDescriptorsCopy = outputDescriptors;
  imageDescriptorsCopy = imageDescriptors;
  descriptorsCopy = descriptors;
  programLibrary = [(VisionCoreE5RTFunction *)functionCopy programLibrary];
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [programLibrary name];
  name2 = [(VisionCoreE5RTFunction *)functionCopy name];
  v23 = [v20 initWithFormat:@"%@:%@", name, name2];

  v24 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:v23 version:versionCopy];
  v25 = [programLibrary URL];
  v32.receiver = self;
  v32.super_class = VisionCoreE5RTInferenceFunctionDescriptor;
  v26 = [(VisionCoreInferenceNetworkDescriptor *)&v32 initWithURL:v25 specifier:v24 networkHeadVersions:0 inputs:descriptorsCopy outputs:outputDescriptorsCopy inputImages:imageDescriptorsCopy confidencesOutput:confidencesOutputDescriptorsCopy];

  function = v26->_function;
  v26->_function = functionCopy;
  v28 = functionCopy;

  specifier = v26->_specifier;
  v26->_specifier = v24;

  return v26;
}

+ (id)networkVersionForProgramLibrary:(id)library function:(id)function
{
  functionCopy = function;
  v5 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
  metadata = [functionCopy metadata];

  if (metadata)
  {
    v7 = [metadata objectForKey:@"UserVersion"];
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

+ (id)descriptorForProgramLibrary:(id)library functionName:(id)name inputImageName:(id)imageName outputNames:(id)names confidencesOutputName:(id)outputName labelsFileName:(id)fileName error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  imageNameCopy = imageName;
  namesCopy = names;
  outputNameCopy = outputName;
  fileNameCopy = fileName;
  v20 = [libraryCopy functionNamed:name error:error];
  if (!v20)
  {
    v27 = 0;
    goto LABEL_19;
  }

  v21 = [self networkVersionForProgramLibrary:libraryCopy function:v20];
  v22 = [v20 descriptorOfClass:objc_opt_class() forInput:imageNameCopy error:error];
  if (v22)
  {
    v23 = [v20 descriptorsForOutputs:namesCopy error:error];
    if (v23)
    {
      v40 = v23;
      if (outputNameCopy)
      {
        v24 = [v20 descriptorForOutput:outputNameCopy error:error];
        if (!v24)
        {
          v27 = 0;
          goto LABEL_17;
        }

        v25 = v24;
        if (fileNameCopy)
        {
          v38 = v24;
          v26 = [self URLForResourceNamed:fileNameCopy error:error];
          if (!v26)
          {
            v27 = 0;
            v32 = v38;
            goto LABEL_15;
          }

          v34 = v26;
          v27 = [v38 confidencesDescriptorWithLabelsFileURL:v26 error:error];

          v25 = v27;
          if (!v27)
          {
LABEL_17:

            goto LABEL_18;
          }
        }

        v39 = v25;
        v36 = fileNameCopy;
        v37 = v21;
        v35 = namesCopy;
        if (([v40 containsObject:?] & 1) == 0)
        {
          v28 = [v40 arrayByAddingObject:v39];

          v40 = v28;
        }
      }

      else
      {
        v35 = namesCopy;
        v36 = fileNameCopy;
        v37 = v21;
        v39 = 0;
      }

      v29 = [self alloc];
      v42[0] = v22;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
      v41 = v22;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      v21 = v37;
      v27 = [v29 initWithFunction:v20 inputDescriptors:v30 inputImageDescriptors:v31 outputDescriptors:v40 confidencesOutputDescriptors:v39 networkVersion:v37];

      v32 = v39;
      namesCopy = v35;
      fileNameCopy = v36;
LABEL_15:

      goto LABEL_17;
    }
  }

  v27 = 0;
LABEL_18:

LABEL_19:

  return v27;
}

+ (id)descriptorForProgramLibraryName:(id)name functionName:(id)functionName inputImageName:(id)imageName outputNames:(id)names confidencesOutputName:(id)outputName labelsFileName:(id)fileName error:(id *)error
{
  functionNameCopy = functionName;
  imageNameCopy = imageName;
  namesCopy = names;
  outputNameCopy = outputName;
  fileNameCopy = fileName;
  v20 = [self URLForResourceNamed:name error:error];
  if (v20)
  {
    v21 = [VisionCoreE5RTProgramLibrary programLibraryForURL:v20 error:error];
    if (v21)
    {
      v22 = [self descriptorForProgramLibrary:v21 functionName:functionNameCopy inputImageName:imageNameCopy outputNames:namesCopy confidencesOutputName:outputNameCopy labelsFileName:fileNameCopy error:error];
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

+ (id)loadOrCompileProgramLibrary:(id)library modelBaseName:(id)name e5rtComputeDeviceType:(unint64_t)type supportedOnANEFrom:(int64_t)from fullyANEResidentFrom:(int64_t)residentFrom allowCompilation:(BOOL)compilation error:(id *)error
{
  compilationCopy = compilation;
  libraryCopy = library;
  v15 = [VisionCoreEspressoUtils E5RTURLForModelBundle:name modelFileIsBaseName:1 error:error];
  if (!v15 || ![VisionCoreE5RTProgramLibrary isProgramLibraryAtURL:v15])
  {
    v16 = 0;
    if (!compilationCopy)
    {
      goto LABEL_18;
    }

LABEL_6:
    if (v16)
    {
      goto LABEL_18;
    }

    v17 = [VisionCoreEspressoUtils URLForResourceFileNamed:libraryCopy error:error];
    if (!v17 || ![VisionCoreE5RTModelSource isModelSourceURL:v17]|| ([VisionCoreE5RTModelSource modelSourceFromURL:v17 error:error], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v16 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v19 = v18;
    v20 = objc_alloc_init(VisionCoreE5RTProgramLibraryCompilationOptions);
    [(VisionCoreE5RTProgramLibraryCompilationOptions *)v20 setComputeDeviceTypes:type];
    if (type == 4)
    {
      if (VisionCoreCurrentANEGeneration_onceToken != -1)
      {
        dispatch_once(&VisionCoreCurrentANEGeneration_onceToken, &__block_literal_global_22);
      }

      if (VisionCoreCurrentANEGeneration_currentANEGeneration < from)
      {
        if (error)
        {
          [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"The model is not supported on current ANE version"];
          *error = v16 = 0;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_23;
      }

      [(VisionCoreE5RTProgramLibraryCompilationOptions *)v20 setFullyANEResident:VisionCoreCurrentANEGeneration_currentANEGeneration >= residentFrom];
    }

    v16 = [VisionCoreE5RTProgramLibrary compileModelSource:v19 options:v20 error:error];
LABEL_23:

    goto LABEL_17;
  }

  v16 = [VisionCoreE5RTProgramLibrary programLibraryForURL:v15 error:error];
  if (compilationCopy)
  {
    goto LABEL_6;
  }

LABEL_18:

  return v16;
}

@end