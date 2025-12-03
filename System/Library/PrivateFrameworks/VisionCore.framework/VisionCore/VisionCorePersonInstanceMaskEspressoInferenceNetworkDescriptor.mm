@interface VisionCorePersonInstanceMaskEspressoInferenceNetworkDescriptor
+ (id)personInstanceMaskV1AndReturnError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSArray)personInstanceMaskConfidencesOutput;
- (NSArray)personInstanceMasksOutput;
@end

@implementation VisionCorePersonInstanceMaskEspressoInferenceNetworkDescriptor

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
      v7.super_class = VisionCorePersonInstanceMaskEspressoInferenceNetworkDescriptor;
      v5 = [(VisionCoreInferenceNetworkDescriptor *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSArray)personInstanceMaskConfidencesOutput
{
  v6[1] = *MEMORY[0x1E69E9840];
  outputs = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v3 = [outputs objectForKeyedSubscript:@"person_instance_confidences:0"];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (NSArray)personInstanceMasksOutput
{
  v9[4] = *MEMORY[0x1E69E9840];
  outputs = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v3 = [outputs objectForKeyedSubscript:@"person_instances_1:0"];
  v9[0] = v3;
  v4 = [outputs objectForKeyedSubscript:@"person_instances_2:0"];
  v9[1] = v4;
  v5 = [outputs objectForKeyedSubscript:@"person_instances_3:0"];
  v9[2] = v5;
  v6 = [outputs objectForKeyedSubscript:@"person_instances_4:0"];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

+ (id)personInstanceMaskV1AndReturnError:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = VisionCoreANEArchitectureName();
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [@"." stringByAppendingString:v5];
  }

  else
  {
    v6 = &stru_1F59F0588;
  }

  v7 = [(__CFString *)v6 stringByAppendingFormat:@".espresso"];

  v8 = [@"HyperDETR-u8-v1.1" stringByAppendingFormat:@"%@", v7];
  v9 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
  v10 = v8;
  v11 = v9;
  v12 = @"image";
  v13 = &unk_1F59F94B0;
  v14 = @"person_instance_confidences:0";
  objc_opt_self();
  v15 = [VisionCoreEspressoUtils URLForModelNamed:v10 error:error];
  if (v15)
  {
    errorCopy = error;
    v32 = v7;
    v16 = [&unk_1F59F94B0 count];
    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v16];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = &unk_1F59F94B0;
    v19 = [&unk_1F59F94B0 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(&unk_1F59F94B0);
          }

          [v17 setObject:&unk_1F59F90A8 forKeyedSubscript:*(*(&v35 + 1) + 8 * i)];
        }

        v20 = [&unk_1F59F94B0 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v20);
    }

    [v17 setObject:&unk_1F59F90A8 forKeyedSubscript:@"person_instance_confidences:0"];
    v33 = 0;
    v34 = 0;
    v23 = [VisionCoreEspressoUtils getInputImageTensorDescriptor:&v34 outputTensorDescriptors:&v33 forNetworkModelFileURL:v15 inputBlobName:@"image" pixelFormatType:1111970369 outputBlobNamesWithTypes:v17 confidencesBlobNamesWithLabelsFiles:0 error:errorCopy];
    v24 = v34;
    v25 = v33;
    v26 = 0;
    if (v23)
    {
      v27 = [[VisionCoreProcessingDescriptorSpecifier alloc] initWithIdentifier:@"VisionCoreInferenceNetworkIdentifierPersonInstanceMaskEspresso" version:v11];
      v28 = [VisionCorePersonInstanceMaskEspressoInferenceNetworkDescriptor alloc];
      allValues = [v25 allValues];
      v26 = [(VisionCoreInferenceNetworkDescriptor *)v28 initWithURL:v15 specifier:v27 networkHeadVersions:0 inputImage:v24 outputs:allValues confidencesOutput:0];
    }

    v7 = v32;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end