@interface VisionCoreVideoSegmentationE5NetworkDescriptor
+ (id)_configurationForIdentifier:(id)a3;
+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5;
- (BOOL)postProcessUpdateFrameForInferenceOutputKeyBuffer:(const void *)a3 inferenceOutputValueBuffer:(const void *)a4 postProcessingOutputKeyBuffer:(void *)a5 postProcessingOutputValueBuffer:(void *)a6 error:(id *)a7;
- (VisionCoreVideoSegmentationE5NetworkDescriptor)initWithSpecifier:(id)a3 url:(id)a4;
- (id)descriptorForConfig:(id)a3 identifier:(id)a4 error:(id *)a5;
- (id)functionForIdentifier:(id)a3 error:(id *)a4;
- (id)postProcessingOutputDescriptorsForFunction:(id)a3;
@end

@implementation VisionCoreVideoSegmentationE5NetworkDescriptor

- (id)descriptorForConfig:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (([v8 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQInitialFrameInferenceDescriptorClass();
    goto LABEL_6;
  }

  if (([v8 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQRegularFrameInferenceDescriptorClass_2821();
    goto LABEL_6;
  }

  if (([v8 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQUpdateFrameInferenceDescriptorClass_2822();
LABEL_6:
    v10 = [ANSTViSegHQInitialFrameInferenceDescriptorClass descriptorWithConfiguration:v7 error:a5];
    if (v10)
    {
      goto LABEL_10;
    }
  }

  if (a5)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"Unrecognized descriptorIdentifier"];
    *a5 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (id)postProcessingOutputDescriptorsForFunction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_anstUpdateFramePostProcessor && [v4 requiresPostProcessing])
  {
    v6 = [(ANSTViSegHQUpdateFramePostProcessor *)self->_anstUpdateFramePostProcessor processedOutputDescriptors];
    v7 = VisionCoreTensorDescriptorsFromANSTDescriptors(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)postProcessUpdateFrameForInferenceOutputKeyBuffer:(const void *)a3 inferenceOutputValueBuffer:(const void *)a4 postProcessingOutputKeyBuffer:(void *)a5 postProcessingOutputValueBuffer:(void *)a6 error:(id *)a7
{
  if (([(ANSTInferenceDescriptor *)self->_currentANSTDescriptor requiresPostprocessing]& 1) == 0)
  {
    if (a7)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = [(ANSTInferenceDescriptor *)self->_currentANSTDescriptor name];
      v17 = [v15 initWithFormat:@"Requires update frame network configuration. %@ was specified", v16];

      *a7 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v17];
    }

    return 0;
  }

  if (!a6 || !a4 || !a3 || !a5)
  {
    if (a7)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid ptr to destination or source buffer"];
      *a7 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v18];
    }

    return 0;
  }

  if (![(ANSTViSegHQUpdateFramePostProcessor *)self->_anstUpdateFramePostProcessor processKeyTensorWithSrcBaseAddress:a3 dstBaseAddress:a5 error:a7])
  {
    return 0;
  }

  anstUpdateFramePostProcessor = self->_anstUpdateFramePostProcessor;

  return [(ANSTViSegHQUpdateFramePostProcessor *)anstUpdateFramePostProcessor processValueTensorWithSrcBaseAddress:a4 dstBaseAddress:a6 error:a7];
}

- (id)functionForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [VisionCoreVideoSegmentationE5NetworkDescriptor _configurationForIdentifier:v6];
  if (([v6 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQInitialFrameInferenceDescriptorClass();
  }

  else if (([v6 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"))
  {
    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQRegularFrameInferenceDescriptorClass_2821();
  }

  else
  {
    if (([v6 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512") & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"))
    {
      goto LABEL_26;
    }

    ANSTViSegHQInitialFrameInferenceDescriptorClass = getANSTViSegHQUpdateFrameInferenceDescriptorClass_2822();
  }

  v9 = [ANSTViSegHQInitialFrameInferenceDescriptorClass descriptorWithConfiguration:v7 error:a4];
  if (v9)
  {
    v10 = v9;
    objc_storeStrong(&self->_currentANSTDescriptor, v9);
    programLibrary = self->_programLibrary;
    v12 = [v10 e5FunctionName];
    v13 = [(VisionCoreE5RTProgramLibrary *)programLibrary functionNamed:v12 error:a4];

    if ([(ANSTInferenceDescriptor *)self->_currentANSTDescriptor requiresPostprocessing])
    {
      v14 = [(ANSTInferenceDescriptor *)self->_currentANSTDescriptor newPostprocessorWithError:a4];
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
  if (a4)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:v6];
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_29:

  return v18;
}

- (VisionCoreVideoSegmentationE5NetworkDescriptor)initWithSpecifier:(id)a3 url:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = VisionCoreVideoSegmentationE5NetworkDescriptor;
  v7 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)&v16 init];
  v8 = v7;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v7->_URL, a4);
  v9 = [VisionCoreE5RTProgramLibrary programLibraryForURL:v6 error:0];
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

+ (id)_configurationForIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"))
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320"))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512"))
  {
    v4 = 2;
  }

  else
  {
    if (([v3 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576") & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"))
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

+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 major] != 1 || (objc_msgSend(v7, "isEqualToString:", @"VisionCoreVideoSegmentationE5InferenceNetworkIdentifier") & 1) == 0)
  {
    if (a5)
    {
      v9 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableDescriptorIdentifier:v7 version:v8];
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
    if (a5)
    {
      v9 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:@"Unsupported ANE Generation"];
LABEL_10:
      v10 = 0;
      *a5 = v9;
      goto LABEL_13;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_13;
  }

  v11 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:v7 version:v8];
  v12 = [VisionCoreVideoSegmentationE5NetworkDescriptor _configurationForIdentifier:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512"];
  v13 = [getANSTViSegHQInitialFrameInferenceDescriptorClass() descriptorWithConfiguration:v12 error:a5];
  v14 = [VisionCoreVideoSegmentationE5NetworkDescriptor alloc];
  v15 = [v13 assetURL];
  v10 = [(VisionCoreVideoSegmentationE5NetworkDescriptor *)v14 initWithSpecifier:v11 url:v15];

LABEL_13:

  return v10;
}

@end