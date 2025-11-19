@interface VisionCorePersonInstanceMaskInferenceNetworkDescriptor
+ (id)modelFileURLForModelVersion:(unint64_t)a3 error:(id *)a4;
+ (id)objectClassOutputNameForObjectClassID:(unint64_t)a3 modelVersion:(unint64_t)a4 error:(id *)a5;
+ (id)objectClassOutputNamesForObjectClassIDs:(unint64_t)a3 modelVersion:(unint64_t)a4 error:(id *)a5;
+ (id)personInstanceMaskForModelVersion:(unint64_t)a3 computeDeviceType:(unint64_t)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (NSArray)personInstanceMaskConfidencesOutput;
- (NSArray)personInstanceMasksOutput;
- (id)objectMaskDescriptorsForObjectClassIDs:(unint64_t)a3 error:(id *)a4;
- (id)objectMaskDescriptorsForObjectClassNames:(id)a3 error:(id *)a4;
@end

@implementation VisionCorePersonInstanceMaskInferenceNetworkDescriptor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7.receiver = self;
      v7.super_class = VisionCorePersonInstanceMaskInferenceNetworkDescriptor;
      v5 = [(VisionCoreInferenceNetworkDescriptor *)&v7 isEqual:v4];
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
  v2 = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v3 = [v2 objectForKeyedSubscript:@"person_instance_confidences:0"];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (NSArray)personInstanceMasksOutput
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v3 = [v2 objectForKeyedSubscript:@"person_instances_1:0"];
  v9[0] = v3;
  v4 = [v2 objectForKeyedSubscript:@"person_instances_2:0"];
  v9[1] = v4;
  v5 = [v2 objectForKeyedSubscript:@"person_instances_3:0"];
  v9[2] = v5;
  v6 = [v2 objectForKeyedSubscript:@"person_instances_4:0"];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

- (id)objectMaskDescriptorsForObjectClassNames:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        if (!v15)
        {
          if (a4)
          {
            v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Descriptor with name %@ doesn't exist", v14];
            *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v18];
          }

          v17 = 0;
          goto LABEL_13;
        }

        v16 = v15;
        [v7 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;
LABEL_13:

  return v17;
}

- (id)objectMaskDescriptorsForObjectClassIDs:(unint64_t)a3 error:(id *)a4
{
  if (self)
  {
    v7 = [(VisionCoreE5RTInferenceFunctionDescriptor *)self function];
    v8 = [v7 programLibrary];
    v9 = [v8 URL];
    v10 = [v9 absoluteString];
    v11 = [v10 lastPathComponent];

    v12 = [VisionCoreEspressoUtils E5RTBaseModelName:v11 error:a4];
    if ([@"HyperDETR-u8-v1.1.e5.espresso.net" containsString:v12])
    {

      v11 = [VisionCorePersonInstanceMaskInferenceNetworkDescriptor objectClassOutputNamesForObjectClassIDs:a3 modelVersion:1 error:a4];
      v13 = [(VisionCorePersonInstanceMaskInferenceNetworkDescriptor *)self objectMaskDescriptorsForObjectClassNames:v11 error:a4];
    }

    else
    {
      if (a4)
      {
        *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"Unknown model version"];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)personInstanceMaskForModelVersion:(unint64_t)a3 computeDeviceType:(unint64_t)a4 error:(id *)a5
{
  if (a3 == 1)
  {
    v6 = a4;
    objc_opt_self();
    v7 = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
    v8 = @"HyperDETR-u8-v1.1.e5.espresso.net";
    v9 = @"HyperDETR-u8-v1.1";
    v10 = @"image:0";
    v11 = @"main";
    v12 = &unk_1F59F94C8;
    v13 = @"person_instance_confidences:0";
    v14 = objc_opt_self();
    if ((v6 & 4) != 0)
    {
      v16 = v14;
      v17 = @"HyperDETR-u8-v1.1.e5.espresso.net";
      objc_opt_self();
      v18 = [@"HyperDETR-u8-v1.1.e5.espresso.net" containsString:@"HyperDETR-u8-v1.1.e5.espresso.net"];

      if (v18)
      {
        v19 = 13;
      }

      else
      {
        [MEMORY[0x1E696ABC0] VisionCoreAssert:0 log:@"Unknown person instance model"];
        v19 = -1;
      }

      v20 = @"HyperDETR-u8-v1.1.e5.espresso.net";
      objc_opt_self();
      v21 = [@"HyperDETR-u8-v1.1.e5.espresso.net" containsString:@"HyperDETR-u8-v1.1.e5.espresso.net"];

      if (v21)
      {
        v22 = 13;
      }

      else
      {
        [MEMORY[0x1E696ABC0] VisionCoreAssert:0 log:@"Unknown person instance model"];
        v22 = -1;
      }

      v23 = [v16 loadOrCompileProgramLibrary:@"HyperDETR-u8-v1.1.e5.espresso.net" modelBaseName:@"HyperDETR-u8-v1.1" e5rtComputeDeviceType:4 supportedOnANEFrom:v19 fullyANEResidentFrom:v22 allowCompilation:0 error:a5];
      if (v23)
      {
        v15 = [(VisionCoreE5RTInferenceFunctionDescriptor *)VisionCorePersonInstanceMaskInferenceNetworkDescriptor descriptorForProgramLibrary:v23 functionName:@"main" inputImageName:@"image:0" outputNames:&unk_1F59F94C8 confidencesOutputName:@"person_instance_confidences:0" labelsFileName:0 error:a5];
      }

      else
      {
        v15 = 0;
      }
    }

    else if (a5)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"The model is only supported with the ANE compute device"];
      *a5 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!a5)
    {
      v15 = 0;
      goto LABEL_21;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown model version %lu", a3];
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v7];
    *a5 = v15 = 0;
  }

LABEL_21:

  return v15;
}

+ (id)objectClassOutputNamesForObjectClassIDs:(unint64_t)a3 modelVersion:(unint64_t)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a4 != 1)
  {
    if (!a5)
    {
      v8 = 0;
      goto LABEL_23;
    }

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown model version %lu", a4];
    *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v17];

    v8 = 0;
LABEL_18:
    a5 = 0;
    goto LABEL_23;
  }

  objc_opt_self();
  if (_objectClassIDsToObjectOutputNamesV1_onceToken != -1)
  {
    dispatch_once(&_objectClassIDsToObjectOutputNamesV1_onceToken, &__block_literal_global_1176);
  }

  v8 = _objectClassIDsToObjectOutputNamesV1_objectClassIDsToObjectClassOutputNames;
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [v8 allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (([v15 unsignedIntegerValue] & a3) != 0)
        {
          v16 = [v8 objectForKey:v15];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    a5 = [v9 copy];
  }

  else if (a5)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown object class ID %lu", a3];
    *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v18];

    a5 = 0;
  }

LABEL_23:

  return a5;
}

void __94__VisionCorePersonInstanceMaskInferenceNetworkDescriptor__objectClassIDsToObjectOutputNamesV1__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F59F90D8;
  v2[1] = &unk_1F59F90F0;
  v3[0] = @"person_instances_1:0";
  v3[1] = @"person_instances_2:0";
  v2[2] = &unk_1F59F9108;
  v2[3] = &unk_1F59F9120;
  v3[2] = @"person_instances_3:0";
  v3[3] = @"person_instances_4:0";
  v2[4] = &unk_1F59F9138;
  v2[5] = &unk_1F59F9150;
  v3[4] = @"person_instance_confidences:0";
  v3[5] = @"person_instance_boxes:0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = _objectClassIDsToObjectOutputNamesV1_objectClassIDsToObjectClassOutputNames;
  _objectClassIDsToObjectOutputNamesV1_objectClassIDsToObjectClassOutputNames = v0;
}

+ (id)objectClassOutputNameForObjectClassID:(unint64_t)a3 modelVersion:(unint64_t)a4 error:(id *)a5
{
  if (a3 == 63 || a3 == 6)
  {
    if (!a5)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This method accepts individual object class ID only %lu", a3];
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v6];
    *a5 = v7 = 0;
  }

  else
  {
    v8 = [a1 objectClassOutputNamesForObjectClassIDs:a3 modelVersion:a4 error:a5];
    v6 = v8;
    if (v8)
    {
      v7 = [v8 firstObject];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_10:

  return v7;
}

+ (id)modelFileURLForModelVersion:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v5 = [VisionCoreEspressoUtils E5RTURLForModelNamed:@"HyperDETR-u8-v1.1.e5.espresso.net" error:a4];
  }

  else if (a4)
  {
    v6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"Unknown model version"];
    v7 = v6;
    v5 = 0;
    *a4 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end