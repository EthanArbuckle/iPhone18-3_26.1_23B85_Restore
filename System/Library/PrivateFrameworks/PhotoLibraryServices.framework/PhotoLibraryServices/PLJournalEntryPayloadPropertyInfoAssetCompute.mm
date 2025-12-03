@interface PLJournalEntryPayloadPropertyInfoAssetCompute
+ (BOOL)shouldExcludeDetectedFaces;
+ (void)setShouldExcludeDetectedFaces:(BOOL)faces;
- (BOOL)shouldApplyWithPayloadProperty:(id)property andPayload:(id)payload;
- (BOOL)validForPersistenceWithPayloadProperty:(id)property andValue:(id)value stop:(BOOL *)stop;
- (PLJournalEntryPayloadPropertyInfoAssetCompute)initWithAnalysisStage:(signed __int16)stage versionType:(int64_t)type;
- (PLJournalEntryPayloadPropertyInfoAssetCompute)initWithAsset:(id)asset;
@end

@implementation PLJournalEntryPayloadPropertyInfoAssetCompute

- (BOOL)shouldApplyWithPayloadProperty:(id)property andPayload:(id)payload
{
  payloadCopy = payload;
  info = [property info];
  v8 = payloadCopy;
  if (!info)
  {
    v10 = 1;
    goto LABEL_21;
  }

  versionType = [info versionType];
  v10 = 1;
  if (versionType > 3)
  {
    switch(versionType)
    {
      case 4:
        characterRecognitionVersion = [v8 characterRecognitionVersion];
        characterRecognitionVersion2 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self characterRecognitionVersion];
        break;
      case 5:
        characterRecognitionVersion = [v8 visualSearchVersion];
        characterRecognitionVersion2 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self visualSearchVersion];
        break;
      case 6:
        characterRecognitionVersion = [v8 textUnderstandingVersion];
        characterRecognitionVersion2 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self textUnderstandingVersion];
        break;
      default:
        goto LABEL_21;
    }

LABEL_20:
    v10 = characterRecognitionVersion > characterRecognitionVersion2;
    goto LABEL_21;
  }

  if (versionType == 1)
  {
    characterRecognitionVersion = [v8 sceneAnalysisVersion];
    characterRecognitionVersion2 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self sceneAnalysisVersion];
    goto LABEL_20;
  }

  if (versionType == 2)
  {
    characterRecognitionVersion = [v8 faceAnalysisVersion];
    characterRecognitionVersion2 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self faceAnalysisVersion];
    goto LABEL_20;
  }

  if (versionType != 3)
  {
    goto LABEL_21;
  }

  mediaAnalysisImageVersion = [v8 mediaAnalysisImageVersion];

  if (!mediaAnalysisImageVersion)
  {
    characterRecognitionVersion = [v8 mediaAnalysisVersion];
    characterRecognitionVersion2 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self mediaAnalysisVersion];
    goto LABEL_20;
  }

  if (-[PLJournalEntryPayloadPropertyInfoAssetCompute isStillImage](self, "isStillImage") || (v12 = [v8 mediaAnalysisVersion], v12 > -[PLJournalEntryPayloadPropertyInfoAssetCompute mediaAnalysisVersion](self, "mediaAnalysisVersion")))
  {
    mediaAnalysisImageVersion2 = [v8 mediaAnalysisImageVersion];
    integerValue = [mediaAnalysisImageVersion2 integerValue];
    v10 = integerValue > [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self mediaAnalysisImageVersion];
  }

  else
  {
    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (BOOL)validForPersistenceWithPayloadProperty:(id)property andValue:(id)value stop:(BOOL *)stop
{
  v27 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  if ([objc_opt_class() shouldExcludeDetectedFaces] && ((objc_msgSend(propertyCopy, "isEqualToKey:", @"detectedFaces") & 1) != 0 || (objc_msgSend(propertyCopy, "isEqualToKey:", @"temporalDetectedFaces") & 1) != 0))
  {
    goto LABEL_4;
  }

  if (([propertyCopy isEqualToKey:@"sceneClassifications"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToKey:", @"temporalSceneClassifications")) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    classificationType = [valueCopy classificationType];
    stage = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self stage];
    if ((stage - 910) <= 0x28 && ((1 << (stage + 114)) & 0x10040100401) != 0)
    {
      v13 = (classificationType & 0xFFFFFFFD) == 0 || classificationType == 3;
    }

    else
    {
      if (stage != 200 && stage != 100)
      {
LABEL_4:
        v10 = 0;
        goto LABEL_33;
      }

      v13 = classificationType == 0;
    }

    v10 = v13;
  }

  else if ([propertyCopy type] == 1000 && objc_msgSend(valueCopy, "length") > 0x100000)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [propertyCopy key];
      v23 = 138543618;
      v24 = v15;
      v25 = 2048;
      v26 = [valueCopy length];
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "[CCSS] Compute sync payload property value for %{public}@ exceeds size limit, value length: %lu", &v23, 0x16u);
    }

    v10 = 0;
    *stop = 1;
  }

  else
  {
    info = [propertyCopy info];

    if (info)
    {
      info2 = [propertyCopy info];
      stage2 = [info2 stage];
      if ((stage2 - 910) >= 0x29)
      {
        v19 = stage2;
      }

      else
      {
        v19 = 910;
      }

      stage3 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self stage];
      if ((stage3 - 910) >= 0x29)
      {
        v21 = stage3;
      }

      else
      {
        v21 = 910;
      }

      v10 = v19 <= v21;
    }

    else
    {
      v10 = 1;
    }
  }

LABEL_33:

  return v10;
}

- (PLJournalEntryPayloadPropertyInfoAssetCompute)initWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self initWithAnalysisStage:0 versionType:0];
  if (v5)
  {
    additionalAttributes = [assetCopy additionalAttributes];
    v5->_sceneAnalysisVersion = [additionalAttributes sceneAnalysisVersion];

    additionalAttributes2 = [assetCopy additionalAttributes];
    v5->_faceAnalysisVersion = [additionalAttributes2 faceAnalysisVersion];

    mediaAnalysisAttributes = [assetCopy mediaAnalysisAttributes];
    v5->_mediaAnalysisVersion = [mediaAnalysisAttributes mediaAnalysisVersion];

    mediaAnalysisAttributes2 = [assetCopy mediaAnalysisAttributes];
    v5->_mediaAnalysisImageVersion = [mediaAnalysisAttributes2 mediaAnalysisImageVersion];

    mediaAnalysisAttributes3 = [assetCopy mediaAnalysisAttributes];
    v5->_characterRecognitionVersion = [mediaAnalysisAttributes3 characterRecognitionVersion];

    mediaAnalysisAttributes4 = [assetCopy mediaAnalysisAttributes];
    v5->_visualSearchVersion = [mediaAnalysisAttributes4 visualSearchVersion];

    mediaAnalysisAttributes5 = [assetCopy mediaAnalysisAttributes];
    v5->_textUnderstandingVersion = [mediaAnalysisAttributes5 textUnderstandingVersion];

    if ([assetCopy isPhoto])
    {
      v13 = [assetCopy isPhotoIris] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v5->_isStillImage = v13;
  }

  return v5;
}

- (PLJournalEntryPayloadPropertyInfoAssetCompute)initWithAnalysisStage:(signed __int16)stage versionType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = PLJournalEntryPayloadPropertyInfoAssetCompute;
  result = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)&v7 init];
  if (result)
  {
    result->_stage = stage;
    result->_versionType = type;
  }

  return result;
}

+ (void)setShouldExcludeDetectedFaces:(BOOL)faces
{
  if (MEMORY[0x19EAEE520](self, a2))
  {
    shouldExcludeDetectedFaces = faces;
  }
}

+ (BOOL)shouldExcludeDetectedFaces
{
  if ((MEMORY[0x19EAEE520](self, a2) & 1) == 0 && shouldExcludeDetectedFaces_onceToken != -1)
  {
    dispatch_once(&shouldExcludeDetectedFaces_onceToken, &__block_literal_global_47310);
  }

  return shouldExcludeDetectedFaces;
}

void __75__PLJournalEntryPayloadPropertyInfoAssetCompute_shouldExcludeDetectedFaces__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  shouldExcludeDetectedFaces = [v0 BOOLForKey:@"PLExcludeDetectedFaceFromComputeSyncPayload"];
}

@end