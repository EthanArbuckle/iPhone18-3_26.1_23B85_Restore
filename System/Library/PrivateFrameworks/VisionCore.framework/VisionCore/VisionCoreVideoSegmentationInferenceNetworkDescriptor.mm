@interface VisionCoreVideoSegmentationInferenceNetworkDescriptor
+ (id)_configurationForIdentifier:(id)identifier version:(id)version;
+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error;
+ (id)supportedIdentifiersForVersion:(id)version;
- (BOOL)postProcessRegularFrameForInferenceOutputMattingBuffer:(id)buffer postProcessingOutputMaskImageBuffer:(__CVBuffer *)imageBuffer postProcessingOutputMaskImageOrientation:(unsigned int)orientation error:(id *)error;
- (BOOL)postProcessUpdateFrameForInferenceOutputKey:(id)key inferenceOutputValue:(id)value inferenceOutputMatting:(id)matting postProcessingOutputKey:(id)outputKey postProcessingOutputValue:(id)outputValue postProcessingOutputMaskImageBuffer:(__CVBuffer *)buffer postProcessingOutputMaskOrientation:(unsigned int)orientation error:(id *)self0;
- (BOOL)postProcessUpdateFrameForInferenceOutputKey:(id)key inferenceOutputValue:(id)value postProcessingOutputKey:(id)outputKey postProcessingOutputValue:(id)outputValue error:(id *)error;
- (BOOL)requiresPostProcessing;
@end

@implementation VisionCoreVideoSegmentationInferenceNetworkDescriptor

- (BOOL)postProcessUpdateFrameForInferenceOutputKey:(id)key inferenceOutputValue:(id)value postProcessingOutputKey:(id)outputKey postProcessingOutputValue:(id)outputValue error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  outputKeyCopy = outputKey;
  outputValueCopy = outputValue;
  identifier = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"])
  {
    goto LABEL_6;
  }

  v17 = outputKeyCopy;
  identifier2 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier2 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320"])
  {
LABEL_5:

    outputKeyCopy = v17;
LABEL_6:

    goto LABEL_7;
  }

  identifier3 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier3 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"])
  {

    goto LABEL_5;
  }

  [(VisionCoreProcessingDescriptor *)self identifier];
  v32 = outputValueCopy;
  v34 = v33 = keyCopy;
  v43 = [v34 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512"];

  keyCopy = v33;
  outputValueCopy = v32;

  outputKeyCopy = v17;
  if (v43)
  {
LABEL_7:
    v20 = [(ANSTInferenceDescriptor *)self->super._descriptor newPostprocessorWithError:error];
    if (v20)
    {
      v42 = outputValueCopy;
      v21 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"key"];
      v22 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v21 data:keyCopy error:error];
      if (v22 && ![v20 setInputTensorData:v22 forInferenceOutputDescriptor:v21 withError:error])
      {
        v30 = 0;
      }

      else
      {
        v23 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"value"];
        v24 = valueCopy;
        v25 = v23;
        v41 = v24;
        v26 = [VisionCoreANSTInferenceNetworkDescriptor _anstTensorDataRepresentation:"_anstTensorDataRepresentation:data:error:" data:v23 error:?];
        if (v26 && ![v20 setInputTensorData:v26 forInferenceOutputDescriptor:v25 withError:error])
        {
          v30 = 0;
        }

        else
        {
          v40 = keyCopy;
          v27 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"key" postProcessor:v20];
          v39 = outputKeyCopy;
          v38 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v27 data:outputKeyCopy error:error];
          v37 = [v20 setOutputTensorData:? forProcessedOutputDescriptor:? withError:?];
          v28 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"value" postProcessor:v20];
          v29 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v28 data:v42 error:error];
          v30 = 0;
          if ([v20 setOutputTensorData:v29 forProcessedOutputDescriptor:v28 withError:error] && v37)
          {
            v30 = [v20 processWithError:error];
          }

          outputKeyCopy = v39;
          keyCopy = v40;
        }

        valueCopy = v41;
      }

      outputValueCopy = v42;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_21;
  }

  if (!error)
  {
    v30 = 0;
    goto LABEL_22;
  }

  v35 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier4 = [(VisionCoreProcessingDescriptor *)self identifier];
  v20 = [v35 initWithFormat:@"Requires update frame network configuration. %@ was specified", identifier4];

  outputKeyCopy = v17;
  [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v20];
  *error = v30 = 0;
LABEL_21:

LABEL_22:
  return v30;
}

- (BOOL)postProcessUpdateFrameForInferenceOutputKey:(id)key inferenceOutputValue:(id)value inferenceOutputMatting:(id)matting postProcessingOutputKey:(id)outputKey postProcessingOutputValue:(id)outputValue postProcessingOutputMaskImageBuffer:(__CVBuffer *)buffer postProcessingOutputMaskOrientation:(unsigned int)orientation error:(id *)self0
{
  keyCopy = key;
  valueCopy = value;
  mattingCopy = matting;
  outputKeyCopy = outputKey;
  outputValueCopy = outputValue;
  texture = buffer;
  CVPixelBufferRetain(buffer);
  identifier = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"])
  {
    goto LABEL_6;
  }

  identifier2 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier2 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  identifier3 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier3 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"])
  {

    goto LABEL_5;
  }

  identifier4 = [(VisionCoreProcessingDescriptor *)self identifier];
  v33 = [identifier4 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512"];

  if ((v33 & 1) == 0)
  {
    v34 = objc_alloc(MEMORY[0x1E696AEC0]);
    identifier5 = [(VisionCoreProcessingDescriptor *)self identifier];
    v36 = [v34 initWithFormat:@"Requires update frame network configuration. %@ was specified", identifier5];

    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v36];

    v31 = 0;
    goto LABEL_28;
  }

LABEL_7:
  v21 = [(ANSTInferenceDescriptor *)self->super._descriptor newPostprocessorWithError:error];
  if (v21)
  {
    v44 = valueCopy;
    v45 = keyCopy;
    v22 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"key"];
    v23 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v22 data:keyCopy error:error];
    if (v23 && ![v21 setInputTensorData:v23 forInferenceOutputDescriptor:v22 withError:error])
    {
      v31 = 0;
    }

    else
    {
      v43 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"value"];
      v24 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v43 data:v44 error:error];
      if (v24 && ![v21 setInputTensorData:v24 forInferenceOutputDescriptor:v43 withError:error])
      {
        v31 = 0;
      }

      else
      {
        v42 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"output_matting"];
        v41 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v42 data:mattingCopy error:error];
        if (v41 && ![v21 setInputTensorData:v41 forInferenceOutputDescriptor:v42 withError:error])
        {
          v31 = 0;
        }

        else
        {
          v25 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"output_mask" postProcessor:v21];
          v38 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstPixelBufferRepresentation:v25 pixelBufferRepresentation:texture orientation:orientation error:error];
          v39 = v25;
          v40 = [v21 setOutputPixelBuffer:v38 forProcessedOutputDescriptor:v25 withError:error];
          v26 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"key" postProcessor:v21];
          v27 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v26 data:outputKeyCopy error:error];
          v28 = [v21 setOutputTensorData:v27 forProcessedOutputDescriptor:v26 withError:error];
          v29 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"value" postProcessor:v21];
          v30 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v29 data:outputValueCopy error:error];
          if (v40 & [v21 setOutputTensorData:v30 forProcessedOutputDescriptor:v29 withError:error] & v28)
          {
            v31 = [v21 processWithError:error];
          }

          else
          {
            v31 = 0;
          }
        }
      }
    }

    valueCopy = v44;
    keyCopy = v45;
  }

  else
  {
    v31 = 0;
  }

LABEL_28:
  CVPixelBufferRelease(texture);

  return v31;
}

- (BOOL)postProcessRegularFrameForInferenceOutputMattingBuffer:(id)buffer postProcessingOutputMaskImageBuffer:(__CVBuffer *)imageBuffer postProcessingOutputMaskImageOrientation:(unsigned int)orientation error:(id *)error
{
  v7 = *&orientation;
  bufferCopy = buffer;
  CVPixelBufferRetain(imageBuffer);
  identifier = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"])
  {
    goto LABEL_6;
  }

  identifier2 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier2 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  identifier3 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([identifier3 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"])
  {

    goto LABEL_5;
  }

  identifier4 = [(VisionCoreProcessingDescriptor *)self identifier];
  v22 = [identifier4 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512"];

  if ((v22 & 1) == 0)
  {
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    identifier5 = [(VisionCoreProcessingDescriptor *)self identifier];
    v25 = [v23 initWithFormat:@"Requires regular frame network configuration. %@ was specified", identifier5];

    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v25];

    v19 = 0;
    goto LABEL_18;
  }

LABEL_7:
  v14 = [(ANSTInferenceDescriptor *)self->super._descriptor newPostprocessorWithError:error];
  if (v14)
  {
    v15 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"output_matting"];
    v16 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v15 data:bufferCopy error:error];
    if (v16 && ![v14 setInputTensorData:v16 forInferenceOutputDescriptor:v15 withError:error])
    {
      v19 = 0;
    }

    else
    {
      v17 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"output_mask" postProcessor:v14];
      v18 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstPixelBufferRepresentation:v17 pixelBufferRepresentation:imageBuffer orientation:v7 error:error];
      if ([v14 setOutputPixelBuffer:v18 forProcessedOutputDescriptor:v17 withError:error])
      {
        v19 = [v14 processWithError:error];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_18:
  CVPixelBufferRelease(imageBuffer);

  return v19;
}

- (BOOL)requiresPostProcessing
{
  specifier = [(VisionCoreProcessingDescriptor *)self specifier];
  identifier = [specifier identifier];

  if ([identifier isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [identifier isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"] ^ 1;
  }

  return v4;
}

+ (id)supportedIdentifiersForVersion:(id)version
{
  v10[6] = *MEMORY[0x1E69E9840];
  versionCopy = version;
  if ([versionCopy major] == 1)
  {
    v10[0] = @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384";
    v10[1] = @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320";
    v10[2] = @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384";
    v10[3] = @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320";
    v10[4] = @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384";
    v10[5] = @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v10;
    v6 = 6;
LABEL_5:
    v7 = [v4 arrayWithObjects:v5 count:v6];
    goto LABEL_7;
  }

  if ([versionCopy major] == 2)
  {
    v9[0] = @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384";
    v9[1] = @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320";
    v9[2] = @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384";
    v9[3] = @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320";
    v9[4] = @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384";
    v9[5] = @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320";
    v9[6] = @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512";
    v9[7] = @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576";
    v9[8] = @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512";
    v9[9] = @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576";
    v9[10] = @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512";
    v9[11] = @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v9;
    v6 = 12;
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v7;
}

+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error
{
  identifierCopy = identifier;
  versionCopy = version;
  if ([versionCopy major] == 1)
  {
    if (error)
    {
      v10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableDescriptorIdentifier:identifierCopy version:versionCopy];
LABEL_16:
      v18 = 0;
      *error = v10;
      goto LABEL_33;
    }

LABEL_17:
    v18 = 0;
    goto LABEL_33;
  }

  v11 = [self supportedIdentifiersForVersion:versionCopy];
  v12 = [v11 containsObject:identifierCopy];

  if ((v12 & 1) == 0)
  {
    if (error)
    {
      v10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"network identifier not supported by the specified version"];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v13 = [VisionCoreVideoSegmentationInferenceNetworkDescriptor _configurationForIdentifier:identifierCopy version:versionCopy];
  if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v14 = getANSTViSegHQInitialFrameInferenceDescriptorClass_softClass;
    v25 = getANSTViSegHQInitialFrameInferenceDescriptorClass_softClass;
    if (!getANSTViSegHQInitialFrameInferenceDescriptorClass_softClass)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getANSTViSegHQInitialFrameInferenceDescriptorClass_block_invoke;
      v21[3] = &unk_1E8698AE0;
      v21[4] = &v22;
      __getANSTViSegHQInitialFrameInferenceDescriptorClass_block_invoke(v21);
      v14 = v23[3];
    }

    v15 = v14;
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"))
    {
      ANSTViSegHQRegularFrameInferenceDescriptorClass = getANSTViSegHQRegularFrameInferenceDescriptorClass();
    }

    else
    {
      if (([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320") & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512") & 1) == 0 && !objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"))
      {
        goto LABEL_29;
      }

      ANSTViSegHQRegularFrameInferenceDescriptorClass = getANSTViSegHQUpdateFrameInferenceDescriptorClass();
    }

    v14 = ANSTViSegHQRegularFrameInferenceDescriptorClass;
  }

  v16 = [v14 descriptorWithConfiguration:v13 error:error];
  if (!v16)
  {
LABEL_29:
    if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"Unrecognized descriptorIdentifier"];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_32;
  }

  v17 = v16;
  v18 = [(VisionCoreANSTInferenceNetworkDescriptor *)[VisionCoreVideoSegmentationInferenceNetworkDescriptor alloc] initWithDescriptor:v16 version:versionCopy identifier:identifierCopy];

LABEL_32:
LABEL_33:

  return v18;
}

+ (id)_configurationForIdentifier:(id)identifier version:(id)version
{
  identifierCopy = identifier;
  versionCopy = version;
  major = [versionCopy major];
  v8 = [versionCopy major] == 2 && objc_msgSend(versionCopy, "minor") == 0;
  if ((([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384")) && major == 1)
  {
    v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
    v10 = 0x10000;
LABEL_9:
    v11 = 0;
LABEL_16:
    v12 = [v9 initWithVersion:v10 resolution:v11];
    goto LABEL_17;
  }

  if ((([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320")) && major == 1)
  {
    v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
    v10 = 0x10000;
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"))
  {
    if (v8)
    {
LABEL_23:
      v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
      v10 = 0x20000;
      goto LABEL_9;
    }
  }

  else if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"] & v8)
  {
    goto LABEL_23;
  }

  if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320"))
  {
    if (v8)
    {
LABEL_28:
      v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
      v10 = 0x20000;
      goto LABEL_15;
    }
  }

  else if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320"] & v8)
  {
    goto LABEL_28;
  }

  if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512"))
  {
    if (v8)
    {
LABEL_33:
      v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
      v10 = 0x20000;
      v11 = 2;
      goto LABEL_16;
    }
  }

  else if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512"] & v8)
  {
    goto LABEL_33;
  }

  if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"))
  {
    if (v8)
    {
LABEL_38:
      v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
      v10 = 0x20000;
      v11 = 3;
      goto LABEL_16;
    }
  }

  else if ([identifierCopy isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"] & v8)
  {
    goto LABEL_38;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

@end