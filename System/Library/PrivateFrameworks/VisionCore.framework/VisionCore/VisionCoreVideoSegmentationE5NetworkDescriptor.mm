@interface VisionCoreVideoSegmentationE5NetworkDescriptor
+ (id)_configurationForIdentifier:(id)identifier;
+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error;
- (BOOL)postProcessUpdateFrameForInferenceOutputKeyBuffer:(const void *)buffer inferenceOutputValueBuffer:(const void *)valueBuffer postProcessingOutputKeyBuffer:(void *)keyBuffer postProcessingOutputValueBuffer:(void *)outputValueBuffer error:(id *)error;
- (VisionCoreVideoSegmentationE5NetworkDescriptor)initWithSpecifier:(id)specifier url:(id)url;
- (id)descriptorForConfig:(id)config identifier:(id)identifier error:(id *)error;
- (id)functionForIdentifier:(id)identifier error:(id *)error;
- (id)postProcessingOutputDescriptorsForFunction:(id)function;
@end

@implementation VisionCoreVideoSegmentationE5NetworkDescriptor

- (id)descriptorForConfig:(id)config identifier:(id)identifier error:(id *)error
{
  configCopy = config;
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQInitialFrameInferenceDescriptorClass();
    goto LABEL_6;
  }

  if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQRegularFrameInferenceDescriptorClass_2821();
    goto LABEL_6;
  }

  if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQUpdateFrameInferenceDescriptorClass_2822();
LABEL_6:
    v10 = [ANSTViSegHQInitialFrameInferenceDescriptorClass descriptorWithConfiguration:configCopy error:error];
    if (v10)
    {
      goto LABEL_10;
    }
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"Unrecognized descriptorIdentifier"];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (id)postProcessingOutputDescriptorsForFunction:(id)function
{
  functionCopy = function;
  v5 = functionCopy;
  if (self->_anstUpdateFramePostProcessor && [functionCopy requiresPostProcessing])
  {
    processedOutputDescriptors = [(ANSTViSegHQUpdateFramePostProcessor *)self->_anstUpdateFramePostProcessor processedOutputDescriptors];
    v7 = VisionCoreTensorDescriptorsFromANSTDescriptors(processedOutputDescriptors);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)postProcessUpdateFrameForInferenceOutputKeyBuffer:(const void *)buffer inferenceOutputValueBuffer:(const void *)valueBuffer postProcessingOutputKeyBuffer:(void *)keyBuffer postProcessingOutputValueBuffer:(void *)outputValueBuffer error:(id *)error
{
  if (([(ANSTInferenceDescriptor *)self->_currentANSTDescriptor requiresPostprocessing]& 1) == 0)
  {
    if (error)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      name = [(ANSTInferenceDescriptor *)self->_currentANSTDescriptor name];
      v17 = [v15 initWithFormat:@"Requires update frame network configuration. %@ was specified", name];

      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v17];
    }

    return 0;
  }

  if (!outputValueBuffer || !valueBuffer || !buffer || !keyBuffer)
  {
    if (error)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid ptr to destination or source buffer"];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v18];
    }

    return 0;
  }

  if (![(ANSTViSegHQUpdateFramePostProcessor *)self->_anstUpdateFramePostProcessor processKeyTensorWithSrcBaseAddress:buffer dstBaseAddress:keyBuffer error:error])
  {
    return 0;
  }

  anstUpdateFramePostProcessor = self->_anstUpdateFramePostProcessor;

  return [(ANSTViSegHQUpdateFramePostProcessor *)anstUpdateFramePostProcessor processValueTensorWithSrcBaseAddress:valueBuffer dstBaseAddress:outputValueBuffer error:error];
}

- (id)functionForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [VisionCoreVideoSegmentationE5NetworkDescriptor _configurationForIdentifier:identifierCopy];
  if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQInitialFrameInferenceDescriptorClass();
  }

  else if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQRegularFrameInferenceDescriptorClass_2821();
  }

  else
  {
    if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320") & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512") & 1) == 0 && !objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"))
    {
      goto LABEL_26;
    }

    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQUpdateFrameInferenceDescriptorClass_2822();
  }

  v9 = [ANSTViSegHQInitialFrameInferenceDescriptorClass descriptorWithConfiguration:v7 error:error];
  if (v9)
  {
    v10 = v9;
    objc_storeStrong(&self->_currentANSTDescriptor, v9);
    programLibrary = self->_programLibrary;
    e5FunctionName = [v10 e5FunctionName];
    v13 = [(VisionCoreE5RTProgramLibrary *)programLibrary functionNamed:e5FunctionName error:error];

    if ([(ANSTInferenceDescriptor *)self->_currentANSTDescriptor requiresPostprocessing])
    {
      v14 = [(ANSTInferenceDescriptor *)self->_currentANSTDescriptor newPostprocessorWithError:error];
      if (!v14)
      {
        goto LABEL_14;
      }

      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v15 = getANSTViSegHQUpdateFramePostProcessorClass_softClass;
      v24 = getANSTViSegHQUpdateFramePostProcessorClass_softClass;
      if (!getANSTViSegHQUpdateFramePostProcessorClass_softClass)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __getANSTViSegHQUpdateFramePostProcessorClass_block_invoke;
        v20[3] = &unk_1E8698AE0;
        v20[4] = &v21;
        __getANSTViSegHQUpdateFramePostProcessorClass_block_invoke(v20);
        v15 = v22[3];
      }

      v16 = v15;
      _Block_object_dispose(&v21, 8);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_14:

        v18 = 0;
        goto LABEL_15;
      }

      anstUpdateFramePostProcessor = self->_anstUpdateFramePostProcessor;
      self->_anstUpdateFramePostProcessor = v14;
    }

    v18 = v13;
LABEL_15:

    goto LABEL_29;
  }

LABEL_26:
  if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:identifierCopy];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_29:

  return v18;
}

- (VisionCoreVideoSegmentationE5NetworkDescriptor)initWithSpecifier:(id)specifier url:(id)url
{
  urlCopy = url;
  v16.receiver = self;
  v16.super_class = VisionCoreVideoSegmentationE5NetworkDescriptor;
  v7 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)&v16 init];
  v8 = v7;
  if (!urlCopy)
  {
    goto LABEL_7;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v7->_URL, url);
  v9 = [VisionCoreE5RTProgramLibrary programLibraryForURL:urlCopy error:0];
  programLibrary = v8->_programLibrary;
  v8->_programLibrary = v9;

  if (v8->_programLibrary || ![VisionCoreE5RTModelSource isModelSourceURL:v8->_URL])
  {
    goto LABEL_7;
  }

  v11 = [VisionCoreE5RTModelSource modelSourceFromURL:v8->_URL error:0];
  if (v11)
  {
    v12 = objc_alloc_init(VisionCoreE5RTProgramLibraryCompilationOptions);
    [(VisionCoreE5RTProgramLibraryCompilationOptions *)v12 setComputeDeviceTypes:4];
    [(VisionCoreE5RTProgramLibraryCompilationOptions *)v12 setMilEntryPoints:&unk_1F59F9528];
    v13 = [VisionCoreE5RTProgramLibrary compileModelSource:v11 options:v12 error:0];
    v14 = v8->_programLibrary;
    v8->_programLibrary = v13;

LABEL_7:
    v11 = v8;
  }

  return v11;
}

+ (id)_configurationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"))
  {
    v4 = 0;
  }

  else if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320"))
  {
    v4 = 1;
  }

  else if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512"))
  {
    v4 = 2;
  }

  else
  {
    if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576") & 1) == 0 && !objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"))
    {
      v7 = 0;
      goto LABEL_8;
    }

    v4 = 3;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getANSTViSegHQInferenceConfigurationClass_softClass_2869;
  v13 = getANSTViSegHQInferenceConfigurationClass_softClass_2869;
  if (!getANSTViSegHQInferenceConfigurationClass_softClass_2869)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getANSTViSegHQInferenceConfigurationClass_block_invoke_2870;
    v9[3] = &unk_1E8698AE0;
    v9[4] = &v10;
    __getANSTViSegHQInferenceConfigurationClass_block_invoke_2870(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [[v6 alloc] initWithVersion:131073 resolution:v4];
LABEL_8:

  return v7;
}

+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error
{
  identifierCopy = identifier;
  versionCopy = version;
  if ([versionCopy major] != 1 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationE5InferenceNetworkIdentifier") & 1) == 0)
  {
    if (error)
    {
      v9 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableDescriptorIdentifier:identifierCopy version:versionCopy];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (VisionCoreCurrentANEGeneration_onceToken != -1)
  {
    dispatch_once(&VisionCoreCurrentANEGeneration_onceToken, &__block_literal_global_22);
  }

  if (VisionCoreCurrentANEGeneration_currentANEGeneration <= 0xC)
  {
    if (error)
    {
      v9 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:@"Unsupported ANE Generation"];
LABEL_10:
      v10 = 0;
      *error = v9;
      goto LABEL_13;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_13;
  }

  v11 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:identifierCopy version:versionCopy];
  v12 = [VisionCoreVideoSegmentationE5NetworkDescriptor _configurationForIdentifier:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512"];
  v13 = [getANSTViSegHQInitialFrameInferenceDescriptorClass() descriptorWithConfiguration:v12 error:error];
  v14 = [VisionCoreVideoSegmentationE5NetworkDescriptor alloc];
  assetURL = [v13 assetURL];
  v10 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v14 initWithSpecifier:v11 url:assetURL];

LABEL_13:

  return v10;
}

@end