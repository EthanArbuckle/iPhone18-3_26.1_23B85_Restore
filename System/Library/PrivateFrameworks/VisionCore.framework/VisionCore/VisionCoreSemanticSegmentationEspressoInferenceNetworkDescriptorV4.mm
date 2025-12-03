@interface VisionCoreSemanticSegmentationEspressoInferenceNetworkDescriptorV4
+ (id)objectClassOutputNameForObjectClassID:(unint64_t)d error:(id *)error;
+ (id)objectClassOutputNamesForObjectClassIDs:(unint64_t)ds error:(id *)error;
+ (id)semanticSegmentationV4AndReturnError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSArray)humanAttributesMasksOutput;
- (VisionCoreTensorDescriptor)glassesMaskOutput;
- (VisionCoreTensorDescriptor)personsMaskOutput;
- (VisionCoreTensorDescriptor)skyMaskOutput;
@end

@implementation VisionCoreSemanticSegmentationEspressoInferenceNetworkDescriptorV4

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = VisionCoreSemanticSegmentationEspressoInferenceNetworkDescriptorV4;
      v5 = [(VisionCoreInferenceNetworkDescriptor *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (VisionCoreTensorDescriptor)glassesMaskOutput
{
  outputs = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v3 = [outputs objectForKeyedSubscript:@"glasses:0"];

  return v3;
}

- (VisionCoreTensorDescriptor)skyMaskOutput
{
  outputs = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v3 = [outputs objectForKeyedSubscript:@"sky:0"];

  return v3;
}

- (NSArray)humanAttributesMasksOutput
{
  v9[4] = *MEMORY[0x1E69E9840];
  outputs = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v3 = [outputs objectForKeyedSubscript:@"skin:0"];
  v9[0] = v3;
  v4 = [outputs objectForKeyedSubscript:@"hair:0"];
  v9[1] = v4;
  v5 = [outputs objectForKeyedSubscript:@"semantics-estimator/split_channels_1__2"];
  v9[2] = v5;
  v6 = [outputs objectForKeyedSubscript:@"teeth:0"];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (VisionCoreTensorDescriptor)personsMaskOutput
{
  outputs = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v3 = [outputs objectForKeyedSubscript:@"person:0"];

  return v3;
}

+ (id)semanticSegmentationV4AndReturnError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
  v5 = @"personsemantics-u8-v4.espresso";
  v6 = v4;
  v7 = @"image:0";
  v8 = &unk_1F59F94E0;
  objc_opt_self();
  v9 = [VisionCoreEspressoUtils URLForModelNamed:@"personsemantics-u8-v4.espresso" error:error];
  if (v9)
  {
    v10 = [&unk_1F59F94E0 count];
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v10];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = &unk_1F59F94E0;
    v13 = [&unk_1F59F94E0 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(&unk_1F59F94E0);
          }

          [v11 setObject:&unk_1F59F9210 forKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
        }

        v14 = [&unk_1F59F94E0 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    v25 = 0;
    v26 = 0;
    v17 = [VisionCoreEspressoUtils getInputImageTensorDescriptor:&v26 outputTensorDescriptors:&v25 forNetworkModelFileURL:v9 inputBlobName:@"image:0" pixelFormatType:1111970369 outputBlobNamesWithTypes:v11 confidencesBlobNamesWithLabelsFiles:0 error:error];
    v18 = v26;
    v19 = v25;
    v20 = 0;
    if (v17)
    {
      v21 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:@"VisionCoreInferenceNetworkIdentifierSemanticSegmentationEspressoV4" version:v6];
      v22 = [VisionCoreSemanticSegmentationEspressoInferenceNetworkDescriptorV4 alloc];
      allValues = [v19 allValues];
      v20 = [(VisionCoreInferenceNetworkDescriptor *)v22 initWithURL:v9 specifier:v21 networkHeadVersions:0 inputImage:v18 outputs:allValues confidencesOutput:0];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)objectClassOutputNamesForObjectClassIDs:(unint64_t)ds error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (_objectClassIDsToObjectOutputNames_onceToken != -1)
  {
    dispatch_once(&_objectClassIDsToObjectOutputNames_onceToken, &__block_literal_global_1461);
  }

  v6 = _objectClassIDsToObjectOutputNames_objectClassIDsToObjectClassOutputNames;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allKeys = [v6 allKeys];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (([v13 unsignedIntegerValue] & ds) != 0)
        {
          v14 = [v6 objectForKey:v13];
          [v7 addObject:v14];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = [v7 count];
  if (error && !v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown object class ID %lu", ds];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v16];
  }

  v17 = [v7 copy];

  return v17;
}

void __104__VisionCoreSemanticSegmentationEspressoInferenceNetworkDescriptorV4__objectClassIDsToObjectOutputNames__block_invoke()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F59F9168;
  v2[1] = &unk_1F59F9180;
  v3[0] = @"person:0";
  v3[1] = @"sky:0";
  v2[2] = &unk_1F59F9198;
  v2[3] = &unk_1F59F91B0;
  v3[2] = @"skin:0";
  v3[3] = @"hair:0";
  v2[4] = &unk_1F59F91C8;
  v2[5] = &unk_1F59F91E0;
  v3[4] = @"semantics-estimator/split_channels_1__2";
  v3[5] = @"teeth:0";
  v2[6] = &unk_1F59F91F8;
  v3[6] = @"glasses:0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = _objectClassIDsToObjectOutputNames_objectClassIDsToObjectClassOutputNames;
  _objectClassIDsToObjectOutputNames_objectClassIDsToObjectClassOutputNames = v0;
}

+ (id)objectClassOutputNameForObjectClassID:(unint64_t)d error:(id *)error
{
  if (d > 383)
  {
    if (d != 4095 && d != 384)
    {
      goto LABEL_14;
    }
  }

  else if (d != 12 && d != 60)
  {
LABEL_14:
    v8 = [self objectClassOutputNamesForObjectClassIDs:d error:error];
    v5 = v8;
    if (v8)
    {
      firstObject = [v8 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    goto LABEL_9;
  }

  if (error)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This method accepts individual object class ID only %lu", d];
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v5];
    *error = firstObject = 0;
LABEL_9:

    goto LABEL_11;
  }

  firstObject = 0;
LABEL_11:

  return firstObject;
}

@end