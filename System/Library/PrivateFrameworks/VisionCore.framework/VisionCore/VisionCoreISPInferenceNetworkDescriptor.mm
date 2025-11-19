@interface VisionCoreISPInferenceNetworkDescriptor
+ (id)_configurationForIdentifier:(id)a3;
+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5;
+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 objectTrackingEnabled:(BOOL)a5 segmentationEnabled:(BOOL)a6 lowFrameRate:(BOOL)a7 error:(id *)a8;
- (BOOL)performPostProcessingForInput:(id)a3 postProcessingOutput:(id)a4 error:(id *)a5;
- (VisionCoreISPInferenceNetworkDescriptor)initWithDescriptor:(id)a3 identifier:(id)a4 error:(id *)a5;
- (__CVBuffer)_bufferForDescriptorName:(id)a3 postProcessingOutput:(id)a4;
- (unsigned)_orientationForDescriptorName:(id)a3 postProcessingOutput:(id)a4;
@end

@implementation VisionCoreISPInferenceNetworkDescriptor

- (BOOL)performPostProcessingForInput:(id)a3 postProcessingOutput:(id)a4 error:(id *)a5
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v58 = v8;
  v59 = a4;
  if (self->_anstPostProcessor)
  {
    v9 = [v8 inputImageBuffer];
    v55 = [(ANSTInferenceDescriptor *)self->super._descriptor inputPixelBufferDescriptorNamed:@"input_image"];
    v54 = -[VisionCoreANSTInferenceNetworkDescriptor _anstPixelBufferRepresentation:pixelBufferRepresentation:orientation:error:](self, "_anstPixelBufferRepresentation:pixelBufferRepresentation:orientation:error:", v55, v9, [v58 inputImageOrientation], a5);
    if (![(ANSTInferencePostprocessor *)self->_anstPostProcessor setInputPixelBuffer:v54 forInferenceInputDescriptor:v55 withError:a5])
    {
      v47 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v53 = [(ANSTInferenceDescriptor *)self->super._descriptor allOutputTensorDescriptors];
    v56 = [v58 inferenceOutputNamedObjects];
    v10 = [v53 count];
    if (v10 == [v56 count])
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v53;
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
          v15 = [v14 name];
          v16 = [v56 dataForName:v15 error:a5];
          if (!v16)
          {
            break;
          }

          v17 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v14 data:v16 error:a5];
          v18 = [(ANSTInferencePostprocessor *)self->_anstPostProcessor setInputTensorData:v17 forInferenceOutputDescriptor:v14 withError:a5];

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

        if (a5)
        {
          v51 = MEMORY[0x1E696ABC0];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing %@ object", v15];
          [v51 VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v23];
          *a5 = v47 = 0;
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
        v23 = [v22 name];
        v24 = [(VisionCoreISPInferenceNetworkDescriptor *)self _bufferForDescriptorName:v23 postProcessingOutput:v59];
        v25 = [(VisionCoreISPInferenceNetworkDescriptor *)self _orientationForDescriptorName:v23 postProcessingOutput:v59];
        if (!v24)
        {
          break;
        }

        v26 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstPixelBufferRepresentation:v22 pixelBufferRepresentation:v24 orientation:v25 error:a5];
        v27 = [(ANSTInferencePostprocessor *)self->_anstPostProcessor setOutputPixelBuffer:v26 forProcessedOutputDescriptor:v22 withError:a5];

        if (!v27)
        {
          v47 = 0;
          v15 = obj;
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

      if (a5)
      {
        v50 = MEMORY[0x1E696ABC0];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing %@ object", v23];
        [v50 VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v29];
        *a5 = v47 = 0;
        v15 = obj;
        goto LABEL_56;
      }

      v47 = 0;
      v15 = obj;
    }

    else
    {
LABEL_23:

      v28 = [(ANSTInferencePostprocessor *)self->_anstPostProcessor processWithError:a5];
      v15 = self->_anstPostProcessor;
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

        v33 = [(ANSTInferencePostprocessor *)v15 trackedObjectsOfCategory:*v30];
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

        [(ANSTInferencePostprocessor *)v15 trackedObjectsOfCategory:*v34];
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
              [v23 addObject:v41];
            }

            v38 = [v37 countByEnumeratingWithState:&v64 objects:v86 count:16];
          }

          while (v38);
        }

        [v59 setFullBodyResults:v23];
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

        [v59 setHands:v29];
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

  if (a5)
  {
    v48 = MEMORY[0x1E696ABC0];
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_anstPostProcessor instance nil"];
    *a5 = [v48 VisionCoreErrorForInternalErrorWithLocalizedDescription:v49];
  }

  v47 = 0;
LABEL_61:

  return v47;
}

- (unsigned)_orientationForDescriptorName:(id)a3 postProcessingOutput:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"$postprocessed$Person"])
  {
    v7 = [v6 personImageBufferOrientation];
  }

  else if ([v5 isEqualToString:@"$postprocessed$SalientPerson"])
  {
    v7 = [v6 salientPersonImageBufferOrientation];
  }

  else if ([v5 isEqualToString:@"$postprocessed$Skin"])
  {
    v7 = [v6 skinImageBufferOrientation];
  }

  else if ([v5 isEqualToString:@"$postprocessed$Hair"])
  {
    v7 = [v6 hairImageBufferOrientation];
  }

  else
  {
    if (![v5 isEqualToString:@"$postprocessed$Sky"])
    {
      v8 = 0;
      goto LABEL_12;
    }

    v7 = [v6 skyImageBufferOrientation];
  }

  v8 = v7;
LABEL_12:

  return v8;
}

- (__CVBuffer)_bufferForDescriptorName:(id)a3 postProcessingOutput:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"$postprocessed$Person"])
  {
    v7 = [v6 personImageBuffer];
  }

  else if ([v5 isEqualToString:@"$postprocessed$SalientPerson"])
  {
    v7 = [v6 salientPersonImageBuffer];
  }

  else if ([v5 isEqualToString:@"$postprocessed$Skin"])
  {
    v7 = [v6 skinImageBuffer];
  }

  else if ([v5 isEqualToString:@"$postprocessed$Hair"])
  {
    v7 = [v6 hairImageBuffer];
  }

  else
  {
    if (![v5 isEqualToString:@"$postprocessed$Sky"])
    {
      v8 = 0;
      goto LABEL_12;
    }

    v7 = [v6 skyImageBuffer];
  }

  v8 = v7;
LABEL_12:

  return v8;
}

- (VisionCoreISPInferenceNetworkDescriptor)initWithDescriptor:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
  v16.receiver = self;
  v16.super_class = VisionCoreISPInferenceNetworkDescriptor;
  v11 = [(VisionCoreANSTInferenceNetworkDescriptor *)&v16 initWithDescriptor:v9 version:v10 identifier:v8];

  v12 = [(ANSTInferenceDescriptor *)v11->super._descriptor newPostprocessorWithError:a5];
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

+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 objectTrackingEnabled:(BOOL)a5 segmentationEnabled:(BOOL)a6 lowFrameRate:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [VisionCoreISPInferenceNetworkDescriptor _configurationForIdentifier:v12];
  [v13 setObjectTrackingEnabled:v11];
  [v13 setSegmentationEnabled:v10];
  if (v9)
  {
    [v13 setFrameRate:1];
  }

  v14 = [getANSTISPInferenceDescriptorClass() descriptorWithConfiguration:v13 error:a8];
  if (v14)
  {
    v15 = [[VisionCoreISPInferenceNetworkDescriptor alloc] initWithDescriptor:v14 identifier:v12 error:a8];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [VisionCoreISPInferenceNetworkDescriptor _configurationForIdentifier:v6];
  v8 = [getANSTISPInferenceDescriptorClass() descriptorWithConfiguration:v7 error:a5];
  if (v8)
  {
    v9 = [[VisionCoreISPInferenceNetworkDescriptor alloc] initWithDescriptor:v8 identifier:v6 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_configurationForIdentifier:(id)a3
{
  v3 = a3;
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
  v7 = [v3 isEqualToString:@"VisionCoreISPInferenceNetworkIdentifier512x384"];
  v8 = 0;
  if ((v7 & 1) == 0)
  {
    if (![v3 isEqualToString:@"VisionCoreISPInferenceNetworkIdentifier512x384"])
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