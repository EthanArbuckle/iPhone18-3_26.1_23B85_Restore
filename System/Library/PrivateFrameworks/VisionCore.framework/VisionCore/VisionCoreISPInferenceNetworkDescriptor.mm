@interface VisionCoreISPInferenceNetworkDescriptor
+ (id)_configurationForIdentifier:(id)identifier;
+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error;
+ (id)descriptorForIdentifier:(id)identifier version:(id)version objectTrackingEnabled:(BOOL)enabled segmentationEnabled:(BOOL)segmentationEnabled lowFrameRate:(BOOL)rate error:(id *)error;
- (BOOL)performPostProcessingForInput:(id)input postProcessingOutput:(id)output error:(id *)error;
- (VisionCoreISPInferenceNetworkDescriptor)initWithDescriptor:(id)descriptor identifier:(id)identifier error:(id *)error;
- (__CVBuffer)_bufferForDescriptorName:(id)name postProcessingOutput:(id)output;
- (unsigned)_orientationForDescriptorName:(id)name postProcessingOutput:(id)output;
@end

@implementation VisionCoreISPInferenceNetworkDescriptor

- (BOOL)performPostProcessingForInput:(id)input postProcessingOutput:(id)output error:(id *)error
{
  v89 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v58 = inputCopy;
  outputCopy = output;
  if (self->_anstPostProcessor)
  {
    inputImageBuffer = [inputCopy inputImageBuffer];
    v55 = [(ANSTInferenceDescriptor *)self->super._descriptor inputPixelBufferDescriptorNamed:@"input_image"];
    v54 = -[VisionCoreANSTInferenceNetworkDescriptor _anstPixelBufferRepresentation:pixelBufferRepresentation:orientation:error:](self, "_anstPixelBufferRepresentation:pixelBufferRepresentation:orientation:error:", v55, inputImageBuffer, [v58 inputImageOrientation], error);
    if (![(ANSTInferencePostprocessor *)self->_anstPostProcessor setInputPixelBuffer:v54 forInferenceInputDescriptor:v55 withError:error])
    {
      v47 = 0;
LABEL_60:

      goto LABEL_61;
    }

    allOutputTensorDescriptors = [(ANSTInferenceDescriptor *)self->super._descriptor allOutputTensorDescriptors];
    inferenceOutputNamedObjects = [v58 inferenceOutputNamedObjects];
    v10 = [allOutputTensorDescriptors count];
    if (v10 == [inferenceOutputNamedObjects count])
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = allOutputTensorDescriptors;
      v11 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
      if (v11)
      {
        v12 = *v73;
LABEL_6:
        v13 = 0;
        while (1)
        {
          if (*v73 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v72 + 1) + 8 * v13);
          name = [v14 name];
          v16 = [inferenceOutputNamedObjects dataForName:name error:error];
          if (!v16)
          {
            break;
          }

          v17 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v14 data:v16 error:error];
          v18 = [(ANSTInferencePostprocessor *)self->_anstPostProcessor setInputTensorData:v17 forInferenceOutputDescriptor:v14 withError:error];

          if (!v18)
          {
            v47 = 0;
            goto LABEL_59;
          }

          if (v11 == ++v13)
          {
            v11 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
            if (v11)
            {
              goto LABEL_6;
            }

            goto LABEL_13;
          }
        }

        if (error)
        {
          v51 = MEMORY[0x1E696ABC0];
          name2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing %@ object", name];
          [v51 VisionCoreErrorForInvalidArgumentWithLocalizedDescription:name2];
          *error = v47 = 0;
          goto LABEL_57;
        }

        v47 = 0;
        goto LABEL_58;
      }

LABEL_13:
    }

    [(ANSTInferencePostprocessor *)self->_anstPostProcessor processedOutputPixelBufferDescriptors];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    obj = v69 = 0u;
    v19 = [obj countByEnumeratingWithState:&v68 objects:v87 count:16];
    if (v19)
    {
      v20 = *v69;
LABEL_16:
      v21 = 0;
      while (1)
      {
        if (*v69 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v68 + 1) + 8 * v21);
        name2 = [v22 name];
        v24 = [(VisionCoreISPInferenceNetworkDescriptor *)self _bufferForDescriptorName:name2 postProcessingOutput:outputCopy];
        v25 = [(VisionCoreISPInferenceNetworkDescriptor *)self _orientationForDescriptorName:name2 postProcessingOutput:outputCopy];
        if (!v24)
        {
          break;
        }

        v26 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstPixelBufferRepresentation:v22 pixelBufferRepresentation:v24 orientation:v25 error:error];
        v27 = [(ANSTInferencePostprocessor *)self->_anstPostProcessor setOutputPixelBuffer:v26 forProcessedOutputDescriptor:v22 withError:error];

        if (!v27)
        {
          v47 = 0;
          name = obj;
          goto LABEL_58;
        }

        if (v19 == ++v21)
        {
          v19 = [obj countByEnumeratingWithState:&v68 objects:v87 count:16];
          if (v19)
          {
            goto LABEL_16;
          }

          goto LABEL_23;
        }
      }

      if (error)
      {
        v50 = MEMORY[0x1E696ABC0];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing %@ object", name2];
        [v50 VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v29];
        *error = v47 = 0;
        name = obj;
        goto LABEL_56;
      }

      v47 = 0;
      name = obj;
    }

    else
    {
LABEL_23:

      v28 = [(ANSTInferencePostprocessor *)self->_anstPostProcessor processWithError:error];
      name = self->_anstPostProcessor;
      name2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v28)
      {
        v81 = 0;
        v82 = &v81;
        v83 = 0x2020000000;
        v30 = getANSTObjectCategoryHandSymbolLoc_ptr;
        v84 = getANSTObjectCategoryHandSymbolLoc_ptr;
        if (!getANSTObjectCategoryHandSymbolLoc_ptr)
        {
          v76 = MEMORY[0x1E69E9820];
          v77 = 3221225472;
          v78 = __getANSTObjectCategoryHandSymbolLoc_block_invoke;
          v79 = &unk_1E8698AE0;
          v80 = &v81;
          v31 = ANSTKitLibrary();
          v32 = dlsym(v31, "ANSTObjectCategoryHand");
          *(v80[1] + 24) = v32;
          getANSTObjectCategoryHandSymbolLoc_ptr = *(v80[1] + 24);
          v30 = v82[3];
        }

        _Block_object_dispose(&v81, 8);
        if (!v30)
        {
          goto LABEL_64;
        }

        v33 = [(ANSTInferencePostprocessor *)name trackedObjectsOfCategory:*v30];
        v81 = 0;
        v82 = &v81;
        v83 = 0x2020000000;
        v34 = getANSTObjectCategoryFullBodySymbolLoc_ptr;
        v84 = getANSTObjectCategoryFullBodySymbolLoc_ptr;
        if (!getANSTObjectCategoryFullBodySymbolLoc_ptr)
        {
          v76 = MEMORY[0x1E69E9820];
          v77 = 3221225472;
          v78 = __getANSTObjectCategoryFullBodySymbolLoc_block_invoke;
          v79 = &unk_1E8698AE0;
          v80 = &v81;
          v35 = ANSTKitLibrary();
          v36 = dlsym(v35, "ANSTObjectCategoryFullBody");
          *(v80[1] + 24) = v36;
          getANSTObjectCategoryFullBodySymbolLoc_ptr = *(v80[1] + 24);
          v34 = v82[3];
        }

        _Block_object_dispose(&v81, 8);
        if (!v34)
        {
LABEL_64:
          dlerror();
          abort_report_np();
          __break(1u);
        }

        [(ANSTInferencePostprocessor *)name trackedObjectsOfCategory:*v34];
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v37 = v65 = 0u;
        v38 = [v37 countByEnumeratingWithState:&v64 objects:v86 count:16];
        if (v38)
        {
          v39 = *v65;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v65 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v41 = [[VisionCoreISPInferenceNetworkObject alloc] initWithANSTObject:*(*(&v64 + 1) + 8 * i)];
              [name2 addObject:v41];
            }

            v38 = [v37 countByEnumeratingWithState:&v64 objects:v86 count:16];
          }

          while (v38);
        }

        [outputCopy setFullBodyResults:name2];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v42 = v33;
        v43 = [v42 countByEnumeratingWithState:&v60 objects:v85 count:16];
        if (v43)
        {
          v44 = *v61;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v61 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v46 = [[VisionCoreISPInferenceNetworkHandObject alloc] initWithANSTHand:*(*(&v60 + 1) + 8 * j)];
              [v29 addObject:v46];
            }

            v43 = [v42 countByEnumeratingWithState:&v60 objects:v85 count:16];
          }

          while (v43);
        }

        [outputCopy setHands:v29];
        v47 = 1;
      }

      else
      {
        v47 = 0;
      }

LABEL_56:
    }

LABEL_57:

LABEL_58:
LABEL_59:

    goto LABEL_60;
  }

  if (error)
  {
    v48 = MEMORY[0x1E696ABC0];
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_anstPostProcessor instance nil"];
    *error = [v48 VisionCoreErrorForInternalErrorWithLocalizedDescription:v49];
  }

  v47 = 0;
LABEL_61:

  return v47;
}

- (unsigned)_orientationForDescriptorName:(id)name postProcessingOutput:(id)output
{
  nameCopy = name;
  outputCopy = output;
  if ([nameCopy isEqualToString:@"$postprocessed$Person"])
  {
    personImageBufferOrientation = [outputCopy personImageBufferOrientation];
  }

  else if ([nameCopy isEqualToString:@"$postprocessed$SalientPerson"])
  {
    personImageBufferOrientation = [outputCopy salientPersonImageBufferOrientation];
  }

  else if ([nameCopy isEqualToString:@"$postprocessed$Skin"])
  {
    personImageBufferOrientation = [outputCopy skinImageBufferOrientation];
  }

  else if ([nameCopy isEqualToString:@"$postprocessed$Hair"])
  {
    personImageBufferOrientation = [outputCopy hairImageBufferOrientation];
  }

  else
  {
    if (![nameCopy isEqualToString:@"$postprocessed$Sky"])
    {
      v8 = 0;
      goto LABEL_12;
    }

    personImageBufferOrientation = [outputCopy skyImageBufferOrientation];
  }

  v8 = personImageBufferOrientation;
LABEL_12:

  return v8;
}

- (__CVBuffer)_bufferForDescriptorName:(id)name postProcessingOutput:(id)output
{
  nameCopy = name;
  outputCopy = output;
  if ([nameCopy isEqualToString:@"$postprocessed$Person"])
  {
    personImageBuffer = [outputCopy personImageBuffer];
  }

  else if ([nameCopy isEqualToString:@"$postprocessed$SalientPerson"])
  {
    personImageBuffer = [outputCopy salientPersonImageBuffer];
  }

  else if ([nameCopy isEqualToString:@"$postprocessed$Skin"])
  {
    personImageBuffer = [outputCopy skinImageBuffer];
  }

  else if ([nameCopy isEqualToString:@"$postprocessed$Hair"])
  {
    personImageBuffer = [outputCopy hairImageBuffer];
  }

  else
  {
    if (![nameCopy isEqualToString:@"$postprocessed$Sky"])
    {
      v8 = 0;
      goto LABEL_12;
    }

    personImageBuffer = [outputCopy skyImageBuffer];
  }

  v8 = personImageBuffer;
LABEL_12:

  return v8;
}

- (VisionCoreISPInferenceNetworkDescriptor)initWithDescriptor:(id)descriptor identifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  v10 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
  v16.receiver = self;
  v16.super_class = VisionCoreISPInferenceNetworkDescriptor;
  v11 = [(VisionCoreANSTInferenceNetworkDescriptor *)&v16 initWithDescriptor:descriptorCopy version:v10 identifier:identifierCopy];

  v12 = [(ANSTInferenceDescriptor *)v11->super._descriptor newPostprocessorWithError:error];
  anstPostProcessor = v11->_anstPostProcessor;
  v11->_anstPostProcessor = v12;

  if (v11->_anstPostProcessor)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)descriptorForIdentifier:(id)identifier version:(id)version objectTrackingEnabled:(BOOL)enabled segmentationEnabled:(BOOL)segmentationEnabled lowFrameRate:(BOOL)rate error:(id *)error
{
  rateCopy = rate;
  segmentationEnabledCopy = segmentationEnabled;
  enabledCopy = enabled;
  identifierCopy = identifier;
  v13 = [VisionCoreISPInferenceNetworkDescriptor _configurationForIdentifier:identifierCopy];
  [v13 setObjectTrackingEnabled:enabledCopy];
  [v13 setSegmentationEnabled:segmentationEnabledCopy];
  if (rateCopy)
  {
    [v13 setFrameRate:1];
  }

  v14 = [getANSTISPInferenceDescriptorClass() descriptorWithConfiguration:v13 error:error];
  if (v14)
  {
    v15 = [[VisionCoreISPInferenceNetworkDescriptor alloc] initWithDescriptor:v14 identifier:identifierCopy error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error
{
  identifierCopy = identifier;
  v7 = [VisionCoreISPInferenceNetworkDescriptor _configurationForIdentifier:identifierCopy];
  v8 = [getANSTISPInferenceDescriptorClass() descriptorWithConfiguration:v7 error:error];
  if (v8)
  {
    v9 = [[VisionCoreISPInferenceNetworkDescriptor alloc] initWithDescriptor:v8 identifier:identifierCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_configurationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getANSTISPInferenceConfigurationClass_softClass;
  v14 = getANSTISPInferenceConfigurationClass_softClass;
  if (!getANSTISPInferenceConfigurationClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getANSTISPInferenceConfigurationClass_block_invoke;
    v10[3] = &unk_1E8698AE0;
    v10[4] = &v11;
    __getANSTISPInferenceConfigurationClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 defaultConfigurationForVersion:0x10000 withError:0];
  v7 = [identifierCopy isEqualToString:@"VisionCoreISPInferenceNetworkIdentifier512x384"];
  v8 = 0;
  if ((v7 & 1) == 0)
  {
    if (![identifierCopy isEqualToString:@"VisionCoreISPInferenceNetworkIdentifier512x384"])
    {
      goto LABEL_7;
    }

    v8 = 1;
  }

  [v6 setResolution:v8];
LABEL_7:

  return v6;
}

@end