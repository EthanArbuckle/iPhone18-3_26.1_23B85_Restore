@interface PLJournalEntryPayloadPropertyInfoAssetCompute
+ (BOOL)shouldExcludeDetectedFaces;
+ (void)setShouldExcludeDetectedFaces:(BOOL)a3;
- (BOOL)shouldApplyWithPayloadProperty:(id)a3 andPayload:(id)a4;
- (BOOL)validForPersistenceWithPayloadProperty:(id)a3 andValue:(id)a4 stop:(BOOL *)a5;
- (PLJournalEntryPayloadPropertyInfoAssetCompute)initWithAnalysisStage:(signed __int16)a3 versionType:(int64_t)a4;
- (PLJournalEntryPayloadPropertyInfoAssetCompute)initWithAsset:(id)a3;
@end

@implementation PLJournalEntryPayloadPropertyInfoAssetCompute

- (BOOL)shouldApplyWithPayloadProperty:(id)a3 andPayload:(id)a4
{
  v6 = a4;
  v7 = [a3 info];
  v8 = v6;
  if (!v7)
  {
    v10 = 1;
    goto LABEL_21;
  }

  v9 = [v7 versionType];
  v10 = 1;
  if (v9 > 3)
  {
    switch(v9)
    {
      case 4:
        v15 = [v8 characterRecognitionVersion];
        v16 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self characterRecognitionVersion];
        break;
      case 5:
        v15 = [v8 visualSearchVersion];
        v16 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self visualSearchVersion];
        break;
      case 6:
        v15 = [v8 textUnderstandingVersion];
        v16 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self textUnderstandingVersion];
        break;
      default:
        goto LABEL_21;
    }

LABEL_20:
    v10 = v15 > v16;
    goto LABEL_21;
  }

  if (v9 == 1)
  {
    v15 = [v8 sceneAnalysisVersion];
    v16 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self sceneAnalysisVersion];
    goto LABEL_20;
  }

  if (v9 == 2)
  {
    v15 = [v8 faceAnalysisVersion];
    v16 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self faceAnalysisVersion];
    goto LABEL_20;
  }

  if (v9 != 3)
  {
    goto LABEL_21;
  }

  v11 = [v8 mediaAnalysisImageVersion];

  if (!v11)
  {
    v15 = [v8 mediaAnalysisVersion];
    v16 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self mediaAnalysisVersion];
    goto LABEL_20;
  }

  if (-[PLJournalEntryPayloadPropertyInfoAssetCompute isStillImage](self, "isStillImage") || (v12 = [v8 mediaAnalysisVersion], v12 > -[PLJournalEntryPayloadPropertyInfoAssetCompute mediaAnalysisVersion](self, "mediaAnalysisVersion")))
  {
    v13 = [v8 mediaAnalysisImageVersion];
    v14 = [v13 integerValue];
    v10 = v14 > [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self mediaAnalysisImageVersion];
  }

  else
  {
    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (BOOL)validForPersistenceWithPayloadProperty:(id)a3 andValue:(id)a4 stop:(BOOL *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([objc_opt_class() shouldExcludeDetectedFaces] && ((objc_msgSend(v8, "isEqualToKey:", @"detectedFaces") & 1) != 0 || (objc_msgSend(v8, "isEqualToKey:", @"temporalDetectedFaces") & 1) != 0))
  {
    goto LABEL_4;
  }

  if (([v8 isEqualToKey:@"sceneClassifications"] & 1) != 0 || objc_msgSend(v8, "isEqualToKey:", @"temporalSceneClassifications")) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v11 = [v9 classificationType];
    v12 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self stage];
    if ((v12 - 910) <= 0x28 && ((1 << (v12 + 114)) & 0x10040100401) != 0)
    {
      v13 = (v11 & 0xFFFFFFFD) == 0 || v11 == 3;
    }

    else
    {
      if (v12 != 200 && v12 != 100)
      {
LABEL_4:
        v10 = 0;
        goto LABEL_33;
      }

      v13 = v11 == 0;
    }

    v10 = v13;
  }

  else if ([v8 type] == 1000 && objc_msgSend(v9, "length") > 0x100000)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v8 key];
      v23 = 138543618;
      v24 = v15;
      v25 = 2048;
      v26 = [v9 length];
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "[CCSS] Compute sync payload property value for %{public}@ exceeds size limit, value length: %lu", &v23, 0x16u);
    }

    v10 = 0;
    *a5 = 1;
  }

  else
  {
    v16 = [v8 info];

    if (v16)
    {
      v17 = [v8 info];
      v18 = [v17 stage];
      if ((v18 - 910) >= 0x29)
      {
        v19 = v18;
      }

      else
      {
        v19 = 910;
      }

      v20 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self stage];
      if ((v20 - 910) >= 0x29)
      {
        v21 = v20;
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

- (PLJournalEntryPayloadPropertyInfoAssetCompute)initWithAsset:(id)a3
{
  v4 = a3;
  v5 = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)self initWithAnalysisStage:0 versionType:0];
  if (v5)
  {
    v6 = [v4 additionalAttributes];
    v5->_sceneAnalysisVersion = [v6 sceneAnalysisVersion];

    v7 = [v4 additionalAttributes];
    v5->_faceAnalysisVersion = [v7 faceAnalysisVersion];

    v8 = [v4 mediaAnalysisAttributes];
    v5->_mediaAnalysisVersion = [v8 mediaAnalysisVersion];

    v9 = [v4 mediaAnalysisAttributes];
    v5->_mediaAnalysisImageVersion = [v9 mediaAnalysisImageVersion];

    v10 = [v4 mediaAnalysisAttributes];
    v5->_characterRecognitionVersion = [v10 characterRecognitionVersion];

    v11 = [v4 mediaAnalysisAttributes];
    v5->_visualSearchVersion = [v11 visualSearchVersion];

    v12 = [v4 mediaAnalysisAttributes];
    v5->_textUnderstandingVersion = [v12 textUnderstandingVersion];

    if ([v4 isPhoto])
    {
      v13 = [v4 isPhotoIris] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v5->_isStillImage = v13;
  }

  return v5;
}

- (PLJournalEntryPayloadPropertyInfoAssetCompute)initWithAnalysisStage:(signed __int16)a3 versionType:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PLJournalEntryPayloadPropertyInfoAssetCompute;
  result = [(PLJournalEntryPayloadPropertyInfoAssetCompute *)&v7 init];
  if (result)
  {
    result->_stage = a3;
    result->_versionType = a4;
  }

  return result;
}

+ (void)setShouldExcludeDetectedFaces:(BOOL)a3
{
  if (MEMORY[0x19EAEE520](a1, a2))
  {
    shouldExcludeDetectedFaces = a3;
  }
}

+ (BOOL)shouldExcludeDetectedFaces
{
  if ((MEMORY[0x19EAEE520](a1, a2) & 1) == 0 && shouldExcludeDetectedFaces_onceToken != -1)
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