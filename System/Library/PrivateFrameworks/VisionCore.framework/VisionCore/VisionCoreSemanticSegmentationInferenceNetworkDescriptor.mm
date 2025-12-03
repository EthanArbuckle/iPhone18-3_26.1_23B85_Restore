@interface VisionCoreSemanticSegmentationInferenceNetworkDescriptor
+ (id)_descriptorWithModelFileName:(void *)name modelBaseName:(void *)baseName version:(void *)version modelVersion:(uint64_t)modelVersion inputImageName:(uint64_t)imageName functionName:pixelFormatType:semanticSegmentationObjectsOutputNames:e5rtComputeDeviceType:error:;
+ (id)_objectClassIDsToObjectClassesDetectionStatusIndexesV7;
+ (id)_objectClassIDsToObjectOutputNamesForModelVersion:(void *)version error:;
+ (id)modelFileURLForModelVersion:(unint64_t)version error:(id *)error;
+ (id)objectClassIDsToObjectClassesDetectionStatusIndexes:(unint64_t)indexes modelVersion:(unint64_t)version error:(id *)error;
+ (id)objectClassNamesToObjectClassesDetectionStatusIndexes:(id)indexes modelVersion:(unint64_t)version error:(id *)error;
+ (id)objectClassOutputNameForObjectClassID:(unint64_t)d modelVersion:(unint64_t)version error:(id *)error;
+ (id)objectClassOutputNamesForObjectClassIDs:(unint64_t)ds modelVersion:(unint64_t)version error:(id *)error;
+ (id)semanticSegmentationForModelVersion:(unint64_t)version computeDeviceType:(unint64_t)type error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)objectMaskDescriptorsForObjectClassIDs:(unint64_t)ds error:(id *)error;
- (id)objectMaskDescriptorsForObjectClassNames:(id)names error:(id *)error;
@end

@implementation VisionCoreSemanticSegmentationInferenceNetworkDescriptor

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
      v7.super_class = VisionCoreSemanticSegmentationInferenceNetworkDescriptor;
      v5 = [(VisionCoreInferenceNetworkDescriptor *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)objectMaskDescriptorsForObjectClassNames:(id)names error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  outputs = [(VisionCoreInferenceNetworkDescriptor *)self outputs];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = namesCopy;
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
        v15 = [outputs objectForKeyedSubscript:v14];
        if (!v15)
        {
          if (error)
          {
            v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Descriptor with name %@ doesn't exist", v14];
            *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v18];
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

- (id)objectMaskDescriptorsForObjectClassIDs:(unint64_t)ds error:(id *)error
{
  selfCopy = self;
  if (self)
  {
    function = [(VisionCoreE5RTInferenceFunctionDescriptor *)self function];
    programLibrary = [function programLibrary];
    v9 = [programLibrary URL];
    absoluteString = [v9 absoluteString];
    lastPathComponent = [absoluteString lastPathComponent];

    if ([lastPathComponent containsString:@"personsemantics-u8-selfCopy"])
    {
      v12 = 1;
    }

    else
    {
      if (([lastPathComponent containsString:@"personsemantics-function"] & 1) == 0)
      {
        if (error)
        {
          [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"Unknown model version"];
          *error = selfCopy = 0;
        }

        else
        {
          selfCopy = 0;
        }

        goto LABEL_7;
      }

      v12 = 2;
    }

    lastPathComponent = [VisionCoreSemanticSegmentationInferenceNetworkDescriptor objectClassOutputNamesForObjectClassIDs:ds modelVersion:v12 error:error];
    selfCopy = [selfCopy objectMaskDescriptorsForObjectClassNames:lastPathComponent error:error];
LABEL_7:
  }

  return selfCopy;
}

+ (id)semanticSegmentationForModelVersion:(unint64_t)version computeDeviceType:(unint64_t)type error:(id *)error
{
  if (version == 2)
  {
    v7 = objc_opt_self();
    version = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
    v9 = @"personsemantics-v7.bundle/personsemantics-v7.mil";
    v10 = @"personsemantics-v7";
    v11 = @"image";
    v12 = &unk_1F59F9510;
    goto LABEL_5;
  }

  if (version == 1)
  {
    v7 = objc_opt_self();
    version = [[VisionCoreResourceVersion alloc] initWithMajor:1 minor:0 micro:0];
    v9 = @"personsemantics-u8-v4.e5.espresso.net";
    v10 = @"personsemantics-u8-v4";
    v11 = @"image:0";
    v12 = &unk_1F59F94F8;
LABEL_5:
    v13 = [VisionCoreSemanticSegmentationInferenceNetworkDescriptor _descriptorWithModelFileName:v7 modelBaseName:v9 version:v10 modelVersion:v11 inputImageName:v12 functionName:type pixelFormatType:error semanticSegmentationObjectsOutputNames:? e5rtComputeDeviceType:? error:?];
LABEL_8:

    goto LABEL_9;
  }

  if (error)
  {
    version = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown model version %lu", version];
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:version];
    *error = v13 = 0;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)_descriptorWithModelFileName:(void *)name modelBaseName:(void *)baseName version:(void *)version modelVersion:(uint64_t)modelVersion inputImageName:(uint64_t)imageName functionName:pixelFormatType:semanticSegmentationObjectsOutputNames:e5rtComputeDeviceType:error:
{
  baseNameCopy = baseName;
  v13 = @"main";
  versionCopy = version;
  nameCopy = name;
  v16 = a2;
  v17 = objc_opt_self();
  v18 = v16;
  objc_opt_self();
  if ([v18 containsString:@"personsemantics-u8-v4.e5.espresso.net"] & 1) != 0 || (objc_msgSend(v18, "containsString:", @"personsemantics-v7.bundle/personsemantics-v7.mil"))
  {
    v19 = 11;
  }

  else
  {
    [MEMORY[0x1E696ABC0] VisionCoreAssert:0 log:@"Unkknown semantic segmentation model"];
    v19 = -1;
  }

  v20 = v18;
  objc_opt_self();
  if ([v20 containsString:@"personsemantics-u8-v4.e5.espresso.net"])
  {
    v21 = 11;
  }

  else if ([v20 containsString:@"personsemantics-v7.bundle/personsemantics-v7.mil"])
  {
    v21 = 13;
  }

  else
  {
    [MEMORY[0x1E696ABC0] VisionCoreAssert:0 log:@"Unknown person instance model"];
    v21 = -1;
  }

  v22 = [v17 loadOrCompileProgramLibrary:v20 modelBaseName:nameCopy e5rtComputeDeviceType:modelVersion supportedOnANEFrom:v19 fullyANEResidentFrom:v21 allowCompilation:1 error:imageName];

  if (v22)
  {
    v23 = [(VisionCoreE5RTInferenceFunctionDescriptor *)VisionCoreSemanticSegmentationInferenceNetworkDescriptor descriptorForProgramLibrary:v22 functionName:@"main" inputImageName:baseNameCopy outputNames:versionCopy confidencesOutputName:0 labelsFileName:0 error:imageName];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)objectClassNamesToObjectClassesDetectionStatusIndexes:(id)indexes modelVersion:(unint64_t)version error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  if (version == 2)
  {
    v9 = [(VisionCoreSemanticSegmentationInferenceNetworkDescriptor *)self _objectClassIDsToObjectOutputNamesForModelVersion:error error:?];
    if (v9)
    {
      errorCopy = error;
      v10 = +[VisionCoreSemanticSegmentationInferenceNetworkDescriptor _objectClassIDsToObjectClassesDetectionStatusIndexesV7];
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = indexesCopy;
      v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        v24 = indexesCopy;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            v17 = [v9 allKeysForObject:v16];
            v18 = v17;
            if (!v17 || [v17 count] != 1)
            {
              indexesCopy = v24;
              if (errorCopy)
              {
                v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected object class name %@ or unexpected number of class IDs (%@)", v16, v18];
                *errorCopy = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v22];
              }

              error = 0;
              goto LABEL_18;
            }

            firstObject = [v18 firstObject];
            v20 = [v10 objectForKeyedSubscript:firstObject];
            [v11 setObject:v20 forKey:v16];
          }

          v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          indexesCopy = v24;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      error = [v11 copy];
LABEL_18:
    }

    else
    {
      error = 0;
    }
  }

  else if (error)
  {
    version = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected model version %lu", version];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:version];

    error = 0;
  }

  return error;
}

+ (id)_objectClassIDsToObjectOutputNamesForModelVersion:(void *)version error:
{
  objc_opt_self();
  if (a2 == 2)
  {
    objc_opt_self();
    if (_objectClassIDsToObjectOutputNamesV7_onceToken != -1)
    {
      dispatch_once(&_objectClassIDsToObjectOutputNamesV7_onceToken, &__block_literal_global_64);
    }

    v5 = &_objectClassIDsToObjectOutputNamesV7_objectClassIDsToObjectClassOutputNames;
    goto LABEL_9;
  }

  if (a2 == 1)
  {
    objc_opt_self();
    if (_objectClassIDsToObjectOutputNamesV4_onceToken != -1)
    {
      dispatch_once(&_objectClassIDsToObjectOutputNamesV4_onceToken, &__block_literal_global_2231);
    }

    v5 = &_objectClassIDsToObjectOutputNamesV4_objectClassIDsToObjectClassOutputNames;
LABEL_9:
    v6 = *v5;
    goto LABEL_13;
  }

  if (version)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown model version %lu", a2];
    *version = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v7];
  }

  v6 = 0;
LABEL_13:

  return v6;
}

+ (id)_objectClassIDsToObjectClassesDetectionStatusIndexesV7
{
  objc_opt_self();
  if (_objectClassIDsToObjectClassesDetectionStatusIndexesV7_onceToken != -1)
  {
    dispatch_once(&_objectClassIDsToObjectClassesDetectionStatusIndexesV7_onceToken, &__block_literal_global_119);
  }

  v0 = _objectClassIDsToObjectClassesDetectionStatusIndexesV7_objectClassIDsToObjectClassesDetectionStatusIndexes;

  return v0;
}

void __114__VisionCoreSemanticSegmentationInferenceNetworkDescriptor__objectClassIDsToObjectClassesDetectionStatusIndexesV7__block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F59F9240;
  v2[1] = &unk_1F59F9258;
  v3[0] = &unk_1F59F9360;
  v3[1] = &unk_1F59F9378;
  v2[2] = &unk_1F59F9330;
  v2[3] = &unk_1F59F9318;
  v3[2] = &unk_1F59F9390;
  v3[3] = &unk_1F59F93A8;
  v2[4] = &unk_1F59F92E8;
  v2[5] = &unk_1F59F9300;
  v3[4] = &unk_1F59F93C0;
  v3[5] = &unk_1F59F93D8;
  v2[6] = &unk_1F59F9288;
  v2[7] = &unk_1F59F92A0;
  v3[6] = &unk_1F59F93F0;
  v3[7] = &unk_1F59F9408;
  v2[8] = &unk_1F59F9270;
  v2[9] = &unk_1F59F92B8;
  v3[8] = &unk_1F59F9420;
  v3[9] = &unk_1F59F9438;
  v2[10] = &unk_1F59F92D0;
  v3[10] = &unk_1F59F9450;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = _objectClassIDsToObjectClassesDetectionStatusIndexesV7_objectClassIDsToObjectClassesDetectionStatusIndexes;
  _objectClassIDsToObjectClassesDetectionStatusIndexesV7_objectClassIDsToObjectClassesDetectionStatusIndexes = v0;
}

void __96__VisionCoreSemanticSegmentationInferenceNetworkDescriptor__objectClassIDsToObjectOutputNamesV7__block_invoke()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F59F9240;
  v2[1] = &unk_1F59F9258;
  v3[0] = @"person";
  v3[1] = @"sky";
  v2[2] = &unk_1F59F9270;
  v2[3] = &unk_1F59F9288;
  v3[2] = @"skin";
  v3[3] = @"hair";
  v2[4] = &unk_1F59F92A0;
  v2[5] = &unk_1F59F92B8;
  v3[4] = @"beard";
  v3[5] = @"teeth";
  v2[6] = &unk_1F59F92D0;
  v2[7] = &unk_1F59F92E8;
  v3[6] = @"glasses";
  v3[7] = @"cat";
  v2[8] = &unk_1F59F9300;
  v2[9] = &unk_1F59F9318;
  v3[8] = @"dog";
  v3[9] = @"water";
  v2[10] = &unk_1F59F9330;
  v2[11] = &unk_1F59F9348;
  v3[10] = @"foliage";
  v3[11] = @"class_area";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = _objectClassIDsToObjectOutputNamesV7_objectClassIDsToObjectClassOutputNames;
  _objectClassIDsToObjectOutputNamesV7_objectClassIDsToObjectClassOutputNames = v0;
}

void __96__VisionCoreSemanticSegmentationInferenceNetworkDescriptor__objectClassIDsToObjectOutputNamesV4__block_invoke()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F59F9240;
  v2[1] = &unk_1F59F9258;
  v3[0] = @"person:0";
  v3[1] = @"sky:0";
  v2[2] = &unk_1F59F9270;
  v2[3] = &unk_1F59F9288;
  v3[2] = @"skin:0";
  v3[3] = @"hair:0";
  v2[4] = &unk_1F59F92A0;
  v2[5] = &unk_1F59F92B8;
  v3[4] = @"semantics-estimator/split_channels_1__2";
  v3[5] = @"teeth:0";
  v2[6] = &unk_1F59F92D0;
  v3[6] = @"glasses:0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:7];
  v1 = _objectClassIDsToObjectOutputNamesV4_objectClassIDsToObjectClassOutputNames;
  _objectClassIDsToObjectOutputNamesV4_objectClassIDsToObjectClassOutputNames = v0;
}

+ (id)objectClassIDsToObjectClassesDetectionStatusIndexes:(unint64_t)indexes modelVersion:(unint64_t)version error:(id *)error
{
  errorCopy = error;
  v24 = *MEMORY[0x1E69E9840];
  if (version == 2)
  {
    v7 = +[VisionCoreSemanticSegmentationInferenceNetworkDescriptor _objectClassIDsToObjectClassesDetectionStatusIndexesV7];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    allKeys = [v7 allKeys];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if (([v14 unsignedIntegerValue] & indexes) != 0)
          {
            v15 = [v7 objectForKey:v14];
            [v8 setObject:v15 forKey:v14];
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      errorCopy = [v8 copy];
    }

    else if (errorCopy)
    {
      indexes = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown object class ID %lu", indexes];
      *errorCopy = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:indexes];

      errorCopy = 0;
    }
  }

  else if (error)
  {
    version = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected model version %lu", version];
    *errorCopy = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:version];

    errorCopy = 0;
  }

  return errorCopy;
}

+ (id)objectClassOutputNamesForObjectClassIDs:(unint64_t)ds modelVersion:(unint64_t)version error:(id *)error
{
  errorCopy = error;
  v23 = *MEMORY[0x1E69E9840];
  v7 = [(VisionCoreSemanticSegmentationInferenceNetworkDescriptor *)self _objectClassIDsToObjectOutputNamesForModelVersion:version error:error];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allKeys = [v7 allKeys];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (([v14 unsignedIntegerValue] & ds) != 0)
          {
            v15 = [v7 objectForKey:v14];
            [v8 addObject:v15];
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      errorCopy = [v8 copy];
    }

    else if (errorCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown object class ID %lu", ds];
      *errorCopy = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v16];

      errorCopy = 0;
    }
  }

  else
  {
    errorCopy = 0;
  }

  return errorCopy;
}

+ (id)objectClassOutputNameForObjectClassID:(unint64_t)d modelVersion:(unint64_t)version error:(id *)error
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
    v9 = [self objectClassOutputNamesForObjectClassIDs:d modelVersion:version error:error];
    v6 = v9;
    if (v9)
    {
      firstObject = [v9 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    goto LABEL_9;
  }

  if (error)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This method accepts individual object class ID only %lu", d];
    [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v6];
    *error = firstObject = 0;
LABEL_9:

    goto LABEL_11;
  }

  firstObject = 0;
LABEL_11:

  return firstObject;
}

+ (id)modelFileURLForModelVersion:(unint64_t)version error:(id *)error
{
  if (version == 1)
  {
    v5 = @"personsemantics-u8-v4.e5.espresso.net";
    goto LABEL_5;
  }

  if (version == 2)
  {
    v5 = @"personsemantics-v7.bundle/personsemantics-v7.mil";
LABEL_5:
    v6 = [VisionCoreEspressoUtils E5RTURLForModelNamed:v5 error:error];
    goto LABEL_9;
  }

  if (error)
  {
    v7 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"Unknown model version"];
    v8 = v7;
    v6 = 0;
    *error = v7;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

@end