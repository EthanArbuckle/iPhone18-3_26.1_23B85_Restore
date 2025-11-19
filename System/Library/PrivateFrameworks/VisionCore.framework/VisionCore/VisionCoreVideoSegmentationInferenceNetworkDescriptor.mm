@interface VisionCoreVideoSegmentationInferenceNetworkDescriptor
+ (id)_configurationForIdentifier:(id)a3 version:(id)a4;
+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5;
+ (id)supportedIdentifiersForVersion:(id)a3;
- (BOOL)postProcessRegularFrameForInferenceOutputMattingBuffer:(id)a3 postProcessingOutputMaskImageBuffer:(__CVBuffer *)a4 postProcessingOutputMaskImageOrientation:(unsigned int)a5 error:(id *)a6;
- (BOOL)postProcessUpdateFrameForInferenceOutputKey:(id)a3 inferenceOutputValue:(id)a4 inferenceOutputMatting:(id)a5 postProcessingOutputKey:(id)a6 postProcessingOutputValue:(id)a7 postProcessingOutputMaskImageBuffer:(__CVBuffer *)a8 postProcessingOutputMaskOrientation:(unsigned int)a9 error:(id *)a10;
- (BOOL)postProcessUpdateFrameForInferenceOutputKey:(id)a3 inferenceOutputValue:(id)a4 postProcessingOutputKey:(id)a5 postProcessingOutputValue:(id)a6 error:(id *)a7;
- (BOOL)requiresPostProcessing;
@end

@implementation VisionCoreVideoSegmentationInferenceNetworkDescriptor

- (BOOL)postProcessUpdateFrameForInferenceOutputKey:(id)a3 inferenceOutputValue:(id)a4 postProcessingOutputKey:(id)a5 postProcessingOutputValue:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v16 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"])
  {
    goto LABEL_6;
  }

  v17 = v14;
  v18 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v18 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320"])
  {
LABEL_5:

    v14 = v17;
LABEL_6:

    goto LABEL_7;
  }

  v19 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v19 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"])
  {

    goto LABEL_5;
  }

  [(VisionCoreProcessingDescriptor *)self identifier];
  v32 = v15;
  v34 = v33 = v12;
  v43 = [v34 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512"];

  v12 = v33;
  v15 = v32;

  v14 = v17;
  if (v43)
  {
LABEL_7:
    v20 = [(ANSTInferenceDescriptor *)self->super._descriptor newPostprocessorWithError:a7];
    if (v20)
    {
      v42 = v15;
      v21 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"key"];
      v22 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v21 data:v12 error:a7];
      if (v22 && ![v20 setInputTensorData:v22 forInferenceOutputDescriptor:v21 withError:a7])
      {
        v30 = 0;
      }

      else
      {
        v23 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"value"];
        v24 = v13;
        v25 = v23;
        v41 = v24;
        v26 = [VisionCoreANSTInferenceNetworkDescriptor _anstTensorDataRepresentation:"_anstTensorDataRepresentation:data:error:" data:v23 error:?];
        if (v26 && ![v20 setInputTensorData:v26 forInferenceOutputDescriptor:v25 withError:a7])
        {
          v30 = 0;
        }

        else
        {
          v40 = v12;
          v27 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"key" postProcessor:v20];
          v39 = v14;
          v38 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v27 data:v14 error:a7];
          v37 = [v20 setOutputTensorData:? forProcessedOutputDescriptor:? withError:?];
          v28 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"value" postProcessor:v20];
          v29 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v28 data:v42 error:a7];
          v30 = 0;
          if ([v20 setOutputTensorData:v29 forProcessedOutputDescriptor:v28 withError:a7] && v37)
          {
            v30 = [v20 processWithError:a7];
          }

          v14 = v39;
          v12 = v40;
        }

        v13 = v41;
      }

      v15 = v42;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_21;
  }

  if (!a7)
  {
    v30 = 0;
    goto LABEL_22;
  }

  v35 = objc_alloc(MEMORY[0x1E696AEC0]);
  v36 = [(VisionCoreProcessingDescriptor *)self identifier];
  v20 = [v35 initWithFormat:@"Requires update frame network configuration. %@ was specified", v36];

  v14 = v17;
  [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v20];
  *a7 = v30 = 0;
LABEL_21:

LABEL_22:
  return v30;
}

- (BOOL)postProcessUpdateFrameForInferenceOutputKey:(id)a3 inferenceOutputValue:(id)a4 inferenceOutputMatting:(id)a5 postProcessingOutputKey:(id)a6 postProcessingOutputValue:(id)a7 postProcessingOutputMaskImageBuffer:(__CVBuffer *)a8 postProcessingOutputMaskOrientation:(unsigned int)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v49 = a5;
  v47 = a6;
  v46 = a7;
  texture = a8;
  CVPixelBufferRetain(a8);
  v18 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v18 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"])
  {
    goto LABEL_6;
  }

  v19 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v19 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v20 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v20 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"])
  {

    goto LABEL_5;
  }

  v32 = [(VisionCoreProcessingDescriptor *)self identifier];
  v33 = [v32 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512"];

  if ((v33 & 1) == 0)
  {
    v34 = objc_alloc(MEMORY[0x1E696AEC0]);
    v35 = [(VisionCoreProcessingDescriptor *)self identifier];
    v36 = [v34 initWithFormat:@"Requires update frame network configuration. %@ was specified", v35];

    *a10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v36];

    v31 = 0;
    goto LABEL_28;
  }

LABEL_7:
  v21 = [(ANSTInferenceDescriptor *)self->super._descriptor newPostprocessorWithError:a10];
  if (v21)
  {
    v44 = v17;
    v45 = v16;
    v22 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"key"];
    v23 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v22 data:v16 error:a10];
    if (v23 && ![v21 setInputTensorData:v23 forInferenceOutputDescriptor:v22 withError:a10])
    {
      v31 = 0;
    }

    else
    {
      v43 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"value"];
      v24 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v43 data:v44 error:a10];
      if (v24 && ![v21 setInputTensorData:v24 forInferenceOutputDescriptor:v43 withError:a10])
      {
        v31 = 0;
      }

      else
      {
        v42 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"output_matting"];
        v41 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v42 data:v49 error:a10];
        if (v41 && ![v21 setInputTensorData:v41 forInferenceOutputDescriptor:v42 withError:a10])
        {
          v31 = 0;
        }

        else
        {
          v25 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"output_mask" postProcessor:v21];
          v38 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstPixelBufferRepresentation:v25 pixelBufferRepresentation:texture orientation:a9 error:a10];
          v39 = v25;
          v40 = [v21 setOutputPixelBuffer:v38 forProcessedOutputDescriptor:v25 withError:a10];
          v26 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"key" postProcessor:v21];
          v27 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v26 data:v47 error:a10];
          v28 = [v21 setOutputTensorData:v27 forProcessedOutputDescriptor:v26 withError:a10];
          v29 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"value" postProcessor:v21];
          v30 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v29 data:v46 error:a10];
          if (v40 & [v21 setOutputTensorData:v30 forProcessedOutputDescriptor:v29 withError:a10] & v28)
          {
            v31 = [v21 processWithError:a10];
          }

          else
          {
            v31 = 0;
          }
        }
      }
    }

    v17 = v44;
    v16 = v45;
  }

  else
  {
    v31 = 0;
  }

LABEL_28:
  CVPixelBufferRelease(texture);

  return v31;
}

- (BOOL)postProcessRegularFrameForInferenceOutputMattingBuffer:(id)a3 postProcessingOutputMaskImageBuffer:(__CVBuffer *)a4 postProcessingOutputMaskImageOrientation:(unsigned int)a5 error:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  CVPixelBufferRetain(a4);
  v11 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v11 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"])
  {
    goto LABEL_6;
  }

  v12 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v12 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v13 = [(VisionCoreProcessingDescriptor *)self identifier];
  if ([v13 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"])
  {

    goto LABEL_5;
  }

  v21 = [(VisionCoreProcessingDescriptor *)self identifier];
  v22 = [v21 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512"];

  if ((v22 & 1) == 0)
  {
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    v24 = [(VisionCoreProcessingDescriptor *)self identifier];
    v25 = [v23 initWithFormat:@"Requires regular frame network configuration. %@ was specified", v24];

    *a6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v25];

    v19 = 0;
    goto LABEL_18;
  }

LABEL_7:
  v14 = [(ANSTInferenceDescriptor *)self->super._descriptor newPostprocessorWithError:a6];
  if (v14)
  {
    v15 = [(ANSTInferenceDescriptor *)self->super._descriptor outputTensorDescriptorNamed:@"output_matting"];
    v16 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstTensorDataRepresentation:v15 data:v10 error:a6];
    if (v16 && ![v14 setInputTensorData:v16 forInferenceOutputDescriptor:v15 withError:a6])
    {
      v19 = 0;
    }

    else
    {
      v17 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _outputDescriptorWithName:@"output_mask" postProcessor:v14];
      v18 = [(VisionCoreANSTInferenceNetworkDescriptor *)self _anstPixelBufferRepresentation:v17 pixelBufferRepresentation:a4 orientation:v7 error:a6];
      if ([v14 setOutputPixelBuffer:v18 forProcessedOutputDescriptor:v17 withError:a6])
      {
        v19 = [v14 processWithError:a6];
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
  CVPixelBufferRelease(a4);

  return v19;
}

- (BOOL)requiresPostProcessing
{
  v2 = [(VisionCoreProcessingDescriptor *)self specifier];
  v3 = [v2 identifier];

  if ([v3 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"] ^ 1;
  }

  return v4;
}

+ (id)supportedIdentifiersForVersion:(id)a3
{
  v10[6] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 major] == 1)
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

  if ([v3 major] == 2)
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

+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 major] == 1)
  {
    if (a5)
    {
      v10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableDescriptorIdentifier:v8 version:v9];
LABEL_16:
      v18 = 0;
      *a5 = v10;
      goto LABEL_33;
    }

LABEL_17:
    v18 = 0;
    goto LABEL_33;
  }

  v11 = [a1 supportedIdentifiersForVersion:v9];
  v12 = [v11 containsObject:v8];

  if ((v12 & 1) == 0)
  {
    if (a5)
    {
      v10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"network identifier not supported by the specified version"];
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v13 = [VisionCoreVideoSegmentationInferenceNetworkDescriptor _configurationForIdentifier:v8 version:v9];
  if (([v8 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"))
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
    if (([v8 isEqualToString:@"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"))
    {
      ANSTViSegHQRegularFrameInferenceDescriptorClass = getANSTViSegHQRegularFrameInferenceDescriptorClass();
    }

    else
    {
      if (([v8 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512") & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"))
      {
        goto LABEL_29;
      }

      ANSTViSegHQRegularFrameInferenceDescriptorClass = getANSTViSegHQUpdateFrameInferenceDescriptorClass();
    }

    v14 = ANSTViSegHQRegularFrameInferenceDescriptorClass;
  }

  v16 = [v14 descriptorWithConfiguration:v13 error:a5];
  if (!v16)
  {
LABEL_29:
    if (a5)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"Unrecognized descriptorIdentifier"];
      *a5 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_32;
  }

  v17 = v16;
  v18 = [(VisionCoreANSTInferenceNetworkDescriptor *)[VisionCoreVideoSegmentationInferenceNetworkDescriptor alloc] initWithDescriptor:v16 version:v9 identifier:v8];

LABEL_32:
LABEL_33:

  return v18;
}

+ (id)_configurationForIdentifier:(id)a3 version:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 major];
  v8 = [v6 major] == 2 && objc_msgSend(v6, "minor") == 0;
  if ((([v5 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384")) && v7 == 1)
  {
    v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
    v10 = 0x10000;
LABEL_9:
    v11 = 0;
LABEL_16:
    v12 = [v9 initWithVersion:v10 resolution:v11];
    goto LABEL_17;
  }

  if ((([v5 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320")) && v7 == 1)
  {
    v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
    v10 = 0x10000;
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier512x384"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier512x384"))
  {
    if (v8)
    {
LABEL_23:
      v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
      v10 = 0x20000;
      goto LABEL_9;
    }
  }

  else if ([v5 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier512x384"] & v8)
  {
    goto LABEL_23;
  }

  if ([v5 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier576x320"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier576x320"))
  {
    if (v8)
    {
LABEL_28:
      v9 = objc_alloc(getANSTViSegHQInferenceConfigurationClass());
      v10 = 0x20000;
      goto LABEL_15;
    }
  }

  else if ([v5 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier576x320"] & v8)
  {
    goto LABEL_28;
  }

  if ([v5 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier384x512"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier384x512"))
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

  else if ([v5 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier384x512"] & v8)
  {
    goto LABEL_33;
  }

  if ([v5 isEqualToString:@"VisionCoreVideoSegmentationInitialFrameInferenceNetworkIdentifier320x576"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"VisionCoreVideoSegmentationRegularFrameInferenceNetworkIdentifier320x576"))
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

  else if ([v5 isEqualToString:@"VisionCoreVideoSegmentationUpdateFrameInferenceNetworkIdentifier320x576"] & v8)
  {
    goto LABEL_38;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

@end