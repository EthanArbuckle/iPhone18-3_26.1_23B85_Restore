@interface VisionCoreFaceprintInferenceNetworkDescriptor
+ (id)FPrev4_0FArev1_4_MD2AndReturnError:(id *)error;
+ (id)_outputNameForFaceAttribute:(id)attribute error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VisionCoreFaceprintInferenceNetworkDescriptor)initWithCoder:(id)coder;
- (id)ANESpecificURL;
- (id)outputForFaceAttribute:(id)attribute error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreFaceprintInferenceNetworkDescriptor

- (id)ANESpecificURL
{
  aneSpecificModelURL = self->_aneSpecificModelURL;
  if (aneSpecificModelURL)
  {
    aNESpecificURL = aneSpecificModelURL;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VisionCoreFaceprintInferenceNetworkDescriptor;
    aNESpecificURL = [(VisionCoreEspressoNetworkDescriptor *)&v5 ANESpecificURL];
  }

  return aNESpecificURL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = VisionCoreFaceprintInferenceNetworkDescriptor, [(VisionCoreInferenceNetworkDescriptor *)&v10 isEqual:equalCopy]))
    {
      v5 = equalCopy;
      faceprintOutput = [(VisionCoreFaceprintInferenceNetworkDescriptor *)self faceprintOutput];
      faceprintOutput2 = [(VisionCoreFaceprintInferenceNetworkDescriptor *)v5 faceprintOutput];

      v8 = [faceprintOutput isEqual:faceprintOutput2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (VisionCoreFaceprintInferenceNetworkDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VisionCoreFaceprintInferenceNetworkDescriptor;
  v5 = [(VisionCoreInferenceNetworkDescriptor *)&v10 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceprintOutput"], v6 = objc_claimAutoreleasedReturnValue(), faceprintOutput = v5->_faceprintOutput, v5->_faceprintOutput = v6, faceprintOutput, !v5->_faceprintOutput))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VisionCoreFaceprintInferenceNetworkDescriptor;
  coderCopy = coder;
  [(VisionCoreInferenceNetworkDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_faceprintOutput forKey:{@"faceprintOutput", v5.receiver, v5.super_class}];
}

- (id)outputForFaceAttribute:(id)attribute error:(id *)error
{
  attributeCopy = attribute;
  v7 = [objc_opt_class() _outputNameForFaceAttribute:attributeCopy error:error];

  if (v7)
  {
    v8 = [(VisionCoreInferenceNetworkDescriptor *)self outputNamed:v7 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)FPrev4_0FArev1_4_MD2AndReturnError:(id *)error
{
  v4 = [[VisionCoreResourceVersion alloc] initWithMajor:4 minor:0 micro:0];
  v5 = [[VisionCoreResourceVersion alloc] initWithMajor:4 minor:0 micro:0];
  v6 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:4 micro:0];
  v7 = @"FPrev4_0FArev1_4_MD2";
  v8 = @"facerec_fp4.0_fa1.4_md2_2_fp16.espresso";
  v9 = @"facerec_fp4.0_fa1.4_md2_2_fp16_dev_op.espresso";
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = objc_opt_self();
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __211__VisionCoreFaceprintInferenceNetworkDescriptor_faceprintInferenceNetworkDescriptorForIndentifier_modelName_aneModelName_pixelFotmatType_faceAnalyzerDetectorVersion_faceprintVersion_faceattributesVersion_error___block_invoke;
  v28 = &unk_1E8698888;
  v29 = @"facerec_fp4.0_fa1.4_md2_2_fp16.espresso";
  v30 = @"facerec_fp4.0_fa1.4_md2_2_fp16_dev_op.espresso";
  v34 = v10;
  v35 = v13;
  v36 = 1111970369;
  v31 = @"FPrev4_0FArev1_4_MD2";
  v32 = v11;
  v33 = v12;
  v14 = v10;
  v15 = v12;
  v16 = v11;
  v17 = @"FPrev4_0FArev1_4_MD2";
  v18 = @"facerec_fp4.0_fa1.4_md2_2_fp16_dev_op.espresso";
  v19 = @"facerec_fp4.0_fa1.4_md2_2_fp16.espresso";
  v20 = MEMORY[0x1E12C8870](&v25);
  v21 = [VisionCoreFrameworkManager sharedManager:v25];
  inferenceNetworkDescriptorsCache = [v21 inferenceNetworkDescriptorsCache];
  v23 = [inferenceNetworkDescriptorsCache objectForIdentifier:@"FPrev4_0FArev1_4_MD2" creationBlock:v20 error:error];

  return v23;
}

VisionCoreFaceprintInferenceNetworkDescriptor *__211__VisionCoreFaceprintInferenceNetworkDescriptor_faceprintInferenceNetworkDescriptorForIndentifier_modelName_aneModelName_pixelFotmatType_faceAnalyzerDetectorVersion_faceprintVersion_faceattributesVersion_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = [VisionCoreEspressoUtils URLForModelNamed:*(a1 + 32) error:a2];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [VisionCoreEspressoUtils URLForModelNamed:v5 error:a2];
    if (!v6)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 48);
  v9 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__VisionCoreFaceprintInferenceNetworkDescriptor_faceattributesForDescriptorIndentifier___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v9;
  v52 = v6;
  if (faceattributesForDescriptorIndentifier__onceToken != -1)
  {
    dispatch_once(&faceattributesForDescriptorIndentifier__onceToken, block);
  }

  v10 = [faceattributesForDescriptorIndentifier__descriptorIndentifiersToFaceattributes objectForKey:v8];

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:&unk_1F59F9228 forKeyedSubscript:@"flatten_output"];
  [v11 setObject:&unk_1F59F9228 forKeyedSubscript:@"confidence"];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v56;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [objc_opt_class() _outputNameForFaceAttribute:*(*(&v55 + 1) + 8 * i) error:a2];
        if (!v17)
        {
          v7 = 0;
          v20 = v12;
          v22 = v52;
          goto LABEL_24;
        }

        v18 = v17;
        [v11 setObject:&unk_1F59F9228 forKeyedSubscript:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v53 = 0;
  v54 = 0;
  v19 = [VisionCoreEspressoUtils getInputImageTensorDescriptor:&v54 outputTensorDescriptors:&v53 forNetworkModelFileURL:v4 inputBlobName:@"data" pixelFormatType:*(a1 + 88) outputBlobNamesWithTypes:v11 confidencesBlobNamesWithLabelsFiles:0 error:a2];
  v20 = v54;
  v21 = v53;
  v7 = 0;
  v22 = v52;
  if (v19)
  {
    v60[0] = @"VisionCoreFaceprintInferenceNetworkHeadIdentifierFaceprint";
    v60[1] = @"VisionCoreFaceprintInferenceNetworkHeadIdentifierFaceAttributes";
    v23 = *(a1 + 64);
    v61[0] = *(a1 + 56);
    v61[1] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
    v7 = [VisionCoreFaceprintInferenceNetworkDescriptor alloc];
    v25 = *(a1 + 72);
    v49 = v52;
    v51 = v21;
    v47 = v21;
    v26 = @"flatten_output";
    v48 = v12;
    v45 = v7;
    v50 = v24;
    if (v7)
    {
      v27 = @"confidence";
      v44 = v20;
      v43 = v24;
      v28 = v25;
      v29 = v4;
      v30 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:@"VisionCoreInferenceNetworkIdentifierFaceprint" version:v28];

      v31 = v47;
      v32 = [v47 allValues];
      v33 = [v47 objectForKeyedSubscript:@"confidence"];

      v34 = v45;
      v46 = v30;
      v35 = [(VisionCoreInferenceNetworkDescriptor *)v34 initWithURL:v29 specifier:v30 networkHeadVersions:v43 inputImage:v44 outputs:v32 confidencesOutput:v33];

      v22 = v52;
      v36 = v48;
      if (v35)
      {
        v37 = [v47 objectForKeyedSubscript:@"flatten_output"];
        v38 = *(v35 + 64);
        *(v35 + 64) = v37;

        v39 = [v48 copy];
        v40 = *(v35 + 80);
        *(v35 + 80) = v39;

        objc_storeStrong((v35 + 72), v52);
      }

      v7 = v35;

      v41 = v49;
    }

    else
    {
      v22 = v52;
      v36 = v48;
      v41 = v49;
      v31 = v47;
    }

    v21 = v51;
  }

LABEL_24:
LABEL_25:

  return v7;
}

void __88__VisionCoreFaceprintInferenceNetworkDescriptor_faceattributesForDescriptorIndentifier___block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"FPrev4_0FArev1_4_MD2";
  objc_opt_self();
  objc_opt_self();
  if (faceAttributesV1_3_onceToken != -1)
  {
    dispatch_once(&faceAttributesV1_3_onceToken, &__block_literal_global_1866);
  }

  v0 = faceAttributesV1_3_faceAttributes;
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = faceattributesForDescriptorIndentifier__descriptorIndentifiersToFaceattributes;
  faceattributesForDescriptorIndentifier__descriptorIndentifiersToFaceattributes = v1;
}

void __67__VisionCoreFaceprintInferenceNetworkDescriptor_faceAttributesV1_3__block_invoke()
{
  v2[18] = *MEMORY[0x1E69E9840];
  v2[0] = @"UNKNOWN_0";
  v2[1] = @"UNKNOWN_1";
  v2[2] = @"UNKNOWN_2";
  v2[3] = @"UNKNOWN_3";
  v2[4] = @"UNKNOWN_4";
  v2[5] = @"UNKNOWN_5";
  v2[6] = @"UNKNOWN_6";
  v2[7] = @"UNKNOWN_7";
  v2[8] = @"UNKNOWN_8";
  v2[9] = @"UNKNOWN_9";
  v2[10] = @"UNKNOWN_10";
  v2[11] = @"UNKNOWN_11";
  v2[12] = @"UNKNOWN_12";
  v2[13] = @"UNKNOWN_13";
  v2[14] = @"UNKNOWN_14";
  v2[15] = @"UNKNOWN_15";
  v2[16] = @"UNKNOWN_16";
  v2[17] = @"UNKNOWN_17";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:18];
  v1 = faceAttributesV1_3_faceAttributes;
  faceAttributesV1_3_faceAttributes = v0;
}

+ (id)_outputNameForFaceAttribute:(id)attribute error:(id *)error
{
  attributeCopy = attribute;
  if ([attributeCopy length])
  {
    attributeCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"softmax_%@_output", attributeCopy];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"illegal face attribute"];
    *error = attributeCopy = 0;
  }

  else
  {
    attributeCopy = 0;
  }

  return attributeCopy;
}

@end