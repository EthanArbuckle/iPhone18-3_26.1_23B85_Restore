@interface PLComputeSyncAttributes
+ (BOOL)resetLocalComputeSyncAttributesForAsset:(id)a3;
+ (BOOL)updateCloudComputeSyncAttributesForAsset:(id)a3 cloudVersion:(id)a4 cloudAdjustmentFingerprint:(id)a5 cloudLastUpdatedDate:(id)a6;
+ (BOOL)updateLocalComputeSyncAttributesForAsset:(id)a3 cloudRecordComputeState:(id)a4 originatedFromPrefetch:(BOOL)a5;
+ (id)_computeSyncAttributesForAsset:(id)a3;
+ (void)updateLocalComputeSyncStageAfterProcessingForAsset:(id)a3 stage:(signed __int16)a4;
- (BOOL)isSyncableChange;
- (BOOL)supportsCloudUpload;
- (void)_updateLocalAnalysisStageHistoryWithStage:(signed __int16)a3 changeSource:(signed __int16)a4;
@end

@implementation PLComputeSyncAttributes

- (void)_updateLocalAnalysisStageHistoryWithStage:(signed __int16)a3 changeSource:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PLComputeSyncAttributes *)self localAnalysisStageHistory];
  if (v5 <= 909)
  {
    if (!v5)
    {
      return;
    }

    v13 = v7 | 4;
    v14 = v7 | 2;
    v15 = v7 | 1;
    if (v4)
    {
      v15 = v7;
    }

    if (v4 != 1)
    {
      v14 = v15;
    }

    if (v4 != 2)
    {
      v13 = v14;
    }

    v16 = v7 | 0x20;
    v17 = v7 | 0x10;
    v18 = v7 | 8;
    if (v4)
    {
      v18 = v7;
    }

    if (v4 != 1)
    {
      v17 = v18;
    }

    if (v4 != 2)
    {
      v16 = v17;
    }

    if (v5 != 200)
    {
      v16 = v7;
    }

    if (v5 == 100)
    {
      v12 = v13;
    }

    else
    {
      v12 = v16;
    }
  }

  else
  {
    v8 = v7 | 0x100;
    v9 = v7 | 0x80;
    v10 = v7 | 0x40;
    if (v4)
    {
      v10 = v7;
    }

    if (v4 != 1)
    {
      v9 = v10;
    }

    if (v4 != 2)
    {
      v8 = v9;
    }

    if (((1 << (v5 + 114)) & 0x10040100401) != 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = v7;
    }

    if ((v5 - 910) <= 0x28)
    {
      v12 = v11;
    }

    else
    {
      v12 = v7;
    }
  }

  [(PLComputeSyncAttributes *)self setLocalAnalysisStageHistory:v12];
}

- (BOOL)isSyncableChange
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PLComputeSyncAttributes *)self changedValues];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16[0] = @"localAnalysisMajorVersion";
  v16[1] = @"localAnalysisStage";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:{2, 0}];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectForKey:*(*(&v12 + 1) + 8 * i)];

        if (v9 && [(PLComputeSyncAttributes *)self hasValidLocalProperties])
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)supportsCloudUpload
{
  v3 = [(PLComputeSyncAttributes *)self asset];
  if ([v3 supportsCloudUpload])
  {
    v4 = [(PLComputeSyncAttributes *)self asset];
    v5 = [v4 shouldPushComputeSync];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)resetLocalComputeSyncAttributesForAsset:(id)a3
{
  v3 = [a1 _computeSyncAttributesForAsset:a3];
  [v3 setLocalAnalysisMajorVersion:0];
  [v3 setLocalAnalysisStage:0];
  [v3 setLocalAnalysisStageHistory:0];

  return 1;
}

+ (BOOL)updateLocalComputeSyncAttributesForAsset:(id)a3 cloudRecordComputeState:(id)a4 originatedFromPrefetch:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 version];
  v11 = [v9 adjustmentFingerprint];
  v12 = [v9 lastUpdatedDate];
  v13 = [a1 updateCloudComputeSyncAttributesForAsset:v8 cloudVersion:v10 cloudAdjustmentFingerprint:v11 cloudLastUpdatedDate:v12];

  if (v13)
  {
    v14 = [a1 _computeSyncAttributesForAsset:v8];
    v15 = objc_alloc(MEMORY[0x1E6994B78]);
    v16 = [v9 version];
    v17 = [v15 initWithString:v16];

    LODWORD(v16) = [v14 localAnalysisStage];
    [v14 setLocalAnalysisMajorVersion:{objc_msgSend(v17, "majorVersion")}];
    [v14 setLocalAnalysisStage:{objc_msgSend(v17, "stage")}];
    if (v16 != [v14 localAnalysisStage])
    {
      [v14 _updateLocalAnalysisStageHistoryWithStage:objc_msgSend(v14 changeSource:{"localAnalysisStage"), !v5}];
    }
  }

  return v13;
}

+ (BOOL)updateCloudComputeSyncAttributesForAsset:(id)a3 cloudVersion:(id)a4 cloudAdjustmentFingerprint:(id)a5 cloudLastUpdatedDate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a1 _computeSyncAttributesForAsset:a3];
  v14 = [objc_alloc(MEMORY[0x1E6994B78]) initWithString:v10];
  v15 = [v14 majorVersion];
  if (v15)
  {
    [v13 setCloudComputeStateVersion:v10];
    [v13 setCloudComputeStateAdjustmentFingerprint:v11];
    [v13 setCloudComputeStateLastUpdatedDate:v12];
  }

  return v15 != 0;
}

+ (void)updateLocalComputeSyncStageAfterProcessingForAsset:(id)a3 stage:(signed __int16)a4
{
  v4 = a4;
  v6 = [a1 _computeSyncAttributesForAsset:a3];
  v5 = [v6 localAnalysisStage];
  [v6 setLocalAnalysisMajorVersion:2];
  [v6 setLocalAnalysisStage:v4];
  if (v5 != [v6 localAnalysisStage])
  {
    [v6 _updateLocalAnalysisStageHistoryWithStage:objc_msgSend(v6 changeSource:{"localAnalysisStage"), 2}];
  }
}

+ (id)_computeSyncAttributesForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 computeSyncAttributes];
  if (!v4)
  {
    v5 = [v3 managedObjectContext];
    v6 = +[PLComputeSyncAttributes entityName];
    v4 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v6, v5, 0);

    [v4 setAsset:v3];
  }

  return v4;
}

@end