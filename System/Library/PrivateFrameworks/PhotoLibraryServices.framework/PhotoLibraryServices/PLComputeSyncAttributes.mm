@interface PLComputeSyncAttributes
+ (BOOL)resetLocalComputeSyncAttributesForAsset:(id)asset;
+ (BOOL)updateCloudComputeSyncAttributesForAsset:(id)asset cloudVersion:(id)version cloudAdjustmentFingerprint:(id)fingerprint cloudLastUpdatedDate:(id)date;
+ (BOOL)updateLocalComputeSyncAttributesForAsset:(id)asset cloudRecordComputeState:(id)state originatedFromPrefetch:(BOOL)prefetch;
+ (id)_computeSyncAttributesForAsset:(id)asset;
+ (void)updateLocalComputeSyncStageAfterProcessingForAsset:(id)asset stage:(signed __int16)stage;
- (BOOL)isSyncableChange;
- (BOOL)supportsCloudUpload;
- (void)_updateLocalAnalysisStageHistoryWithStage:(signed __int16)stage changeSource:(signed __int16)source;
@end

@implementation PLComputeSyncAttributes

- (void)_updateLocalAnalysisStageHistoryWithStage:(signed __int16)stage changeSource:(signed __int16)source
{
  sourceCopy = source;
  stageCopy = stage;
  localAnalysisStageHistory = [(PLComputeSyncAttributes *)self localAnalysisStageHistory];
  if (stageCopy <= 909)
  {
    if (!stageCopy)
    {
      return;
    }

    v13 = localAnalysisStageHistory | 4;
    v14 = localAnalysisStageHistory | 2;
    v15 = localAnalysisStageHistory | 1;
    if (sourceCopy)
    {
      v15 = localAnalysisStageHistory;
    }

    if (sourceCopy != 1)
    {
      v14 = v15;
    }

    if (sourceCopy != 2)
    {
      v13 = v14;
    }

    v16 = localAnalysisStageHistory | 0x20;
    v17 = localAnalysisStageHistory | 0x10;
    v18 = localAnalysisStageHistory | 8;
    if (sourceCopy)
    {
      v18 = localAnalysisStageHistory;
    }

    if (sourceCopy != 1)
    {
      v17 = v18;
    }

    if (sourceCopy != 2)
    {
      v16 = v17;
    }

    if (stageCopy != 200)
    {
      v16 = localAnalysisStageHistory;
    }

    if (stageCopy == 100)
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
    v8 = localAnalysisStageHistory | 0x100;
    v9 = localAnalysisStageHistory | 0x80;
    v10 = localAnalysisStageHistory | 0x40;
    if (sourceCopy)
    {
      v10 = localAnalysisStageHistory;
    }

    if (sourceCopy != 1)
    {
      v9 = v10;
    }

    if (sourceCopy != 2)
    {
      v8 = v9;
    }

    if (((1 << (stageCopy + 114)) & 0x10040100401) != 0)
    {
      v11 = v8;
    }

    else
    {
      v11 = localAnalysisStageHistory;
    }

    if ((stageCopy - 910) <= 0x28)
    {
      v12 = v11;
    }

    else
    {
      v12 = localAnalysisStageHistory;
    }
  }

  [(PLComputeSyncAttributes *)self setLocalAnalysisStageHistory:v12];
}

- (BOOL)isSyncableChange
{
  v18 = *MEMORY[0x1E69E9840];
  changedValues = [(PLComputeSyncAttributes *)self changedValues];
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

        v9 = [changedValues objectForKey:*(*(&v12 + 1) + 8 * i)];

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
  asset = [(PLComputeSyncAttributes *)self asset];
  if ([asset supportsCloudUpload])
  {
    asset2 = [(PLComputeSyncAttributes *)self asset];
    shouldPushComputeSync = [asset2 shouldPushComputeSync];
  }

  else
  {
    shouldPushComputeSync = 0;
  }

  return shouldPushComputeSync;
}

+ (BOOL)resetLocalComputeSyncAttributesForAsset:(id)asset
{
  v3 = [self _computeSyncAttributesForAsset:asset];
  [v3 setLocalAnalysisMajorVersion:0];
  [v3 setLocalAnalysisStage:0];
  [v3 setLocalAnalysisStageHistory:0];

  return 1;
}

+ (BOOL)updateLocalComputeSyncAttributesForAsset:(id)asset cloudRecordComputeState:(id)state originatedFromPrefetch:(BOOL)prefetch
{
  prefetchCopy = prefetch;
  assetCopy = asset;
  stateCopy = state;
  version = [stateCopy version];
  adjustmentFingerprint = [stateCopy adjustmentFingerprint];
  lastUpdatedDate = [stateCopy lastUpdatedDate];
  v13 = [self updateCloudComputeSyncAttributesForAsset:assetCopy cloudVersion:version cloudAdjustmentFingerprint:adjustmentFingerprint cloudLastUpdatedDate:lastUpdatedDate];

  if (v13)
  {
    v14 = [self _computeSyncAttributesForAsset:assetCopy];
    v15 = objc_alloc(MEMORY[0x1E6994B78]);
    version2 = [stateCopy version];
    v17 = [v15 initWithString:version2];

    LODWORD(version2) = [v14 localAnalysisStage];
    [v14 setLocalAnalysisMajorVersion:{objc_msgSend(v17, "majorVersion")}];
    [v14 setLocalAnalysisStage:{objc_msgSend(v17, "stage")}];
    if (version2 != [v14 localAnalysisStage])
    {
      [v14 _updateLocalAnalysisStageHistoryWithStage:objc_msgSend(v14 changeSource:{"localAnalysisStage"), !prefetchCopy}];
    }
  }

  return v13;
}

+ (BOOL)updateCloudComputeSyncAttributesForAsset:(id)asset cloudVersion:(id)version cloudAdjustmentFingerprint:(id)fingerprint cloudLastUpdatedDate:(id)date
{
  versionCopy = version;
  fingerprintCopy = fingerprint;
  dateCopy = date;
  v13 = [self _computeSyncAttributesForAsset:asset];
  v14 = [objc_alloc(MEMORY[0x1E6994B78]) initWithString:versionCopy];
  majorVersion = [v14 majorVersion];
  if (majorVersion)
  {
    [v13 setCloudComputeStateVersion:versionCopy];
    [v13 setCloudComputeStateAdjustmentFingerprint:fingerprintCopy];
    [v13 setCloudComputeStateLastUpdatedDate:dateCopy];
  }

  return majorVersion != 0;
}

+ (void)updateLocalComputeSyncStageAfterProcessingForAsset:(id)asset stage:(signed __int16)stage
{
  stageCopy = stage;
  v6 = [self _computeSyncAttributesForAsset:asset];
  localAnalysisStage = [v6 localAnalysisStage];
  [v6 setLocalAnalysisMajorVersion:2];
  [v6 setLocalAnalysisStage:stageCopy];
  if (localAnalysisStage != [v6 localAnalysisStage])
  {
    [v6 _updateLocalAnalysisStageHistoryWithStage:objc_msgSend(v6 changeSource:{"localAnalysisStage"), 2}];
  }
}

+ (id)_computeSyncAttributesForAsset:(id)asset
{
  assetCopy = asset;
  computeSyncAttributes = [assetCopy computeSyncAttributes];
  if (!computeSyncAttributes)
  {
    managedObjectContext = [assetCopy managedObjectContext];
    v6 = +[PLComputeSyncAttributes entityName];
    computeSyncAttributes = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v6, managedObjectContext, 0);

    [computeSyncAttributes setAsset:assetCopy];
  }

  return computeSyncAttributes;
}

@end