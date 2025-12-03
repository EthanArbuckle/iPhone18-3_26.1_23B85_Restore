@interface PLAssetComputeSyncPayloadHelper
+ (id)mediaAnalysisPayloadDataForWrapperData:(id)data;
+ (id)mediaAnalysisPayloadDataForWrapperURL:(id)l;
- (BOOL)applyComputeSyncWrapperData:(id)data toAsset:(id)asset error:(id *)error;
- (id)assetPayloadForComputeSyncWrapperData:(id)data payloadID:(id)d error:(id *)error;
- (id)computeSyncWrapperDataForAsset:(id)asset mediaAnalysisPayload:(id)payload analysisStage:(signed __int16)stage error:(id *)error;
- (id)computeSyncWrapperURLForAsset:(id)asset analysisStage:(signed __int16)stage;
@end

@implementation PLAssetComputeSyncPayloadHelper

+ (id)mediaAnalysisPayloadDataForWrapperURL:(id)l
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v10 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:0 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [self mediaAnalysisPayloadDataForWrapperData:v5];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = lCopy;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "[CCSS] Unable to read compute sync resource %@: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)mediaAnalysisPayloadDataForWrapperData:(id)data
{
  v3 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v5 = [[v3 alloc] initWithData:dataCopy];

  v6 = objc_alloc_init(PLAssetComputeSyncPayloadWrapper);
  if ([(PLAssetComputeSyncPayloadWrapper *)v6 readFrom:v5])
  {
    mediaAnalysisPayload = [(PLAssetComputeSyncPayloadWrapper *)v6 mediaAnalysisPayload];
  }

  else
  {
    mediaAnalysisPayload = 0;
  }

  return mediaAnalysisPayload;
}

- (id)computeSyncWrapperURLForAsset:(id)asset analysisStage:(signed __int16)stage
{
  stageCopy = stage;
  v68 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v7 = MEMORY[0x1E695DFF8];
  pathForComputeSyncWrapperFile = [assetCopy pathForComputeSyncWrapperFile];
  v9 = [v7 fileURLWithPath:pathForComputeSyncWrapperFile isDirectory:0];

  if (!v9)
  {
    v33 = PLBackendGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      scopedIdentifier = [assetCopy scopedIdentifier];
      *buf = 138412290;
      v63 = scopedIdentifier;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "[CCSS] Unable to get compute sync resource URL for asset %@", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v10 = objc_autoreleasePoolPush();
  uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v61 = 0;
  v13 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v61];
  v14 = v61;

  if ((v13 & 1) == 0)
  {
    v35 = PLBackendGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      scopedIdentifier2 = [assetCopy scopedIdentifier];
      *buf = 138412802;
      v63 = scopedIdentifier2;
      v64 = 2112;
      v65 = uRLByDeletingLastPathComponent;
      v66 = 2112;
      v67 = v14;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "[CCSS] Unable to create compute sync resource directory for asset %@ URL %@ error: %@", buf, 0x20u);
    }

    goto LABEL_31;
  }

  v15 = MEMORY[0x1E695DFF8];
  pathForComputeSyncMediaAnalysisPayloadFile = [assetCopy pathForComputeSyncMediaAnalysisPayloadFile];
  v17 = [v15 fileURLWithPath:pathForComputeSyncMediaAnalysisPayloadFile isDirectory:0];

  v60 = v14;
  v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v17 options:0 error:&v60];
  v19 = v60;

  if (!v18 && (PLIsErrorFileNotFound() & 1) == 0)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [assetCopy scopedIdentifier];
      v21 = v53 = v17;
      *buf = 138412546;
      v63 = v21;
      v64 = 2112;
      v65 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "[CCSS] Unable to read MAD compute sync sidecar for asset %@: %@", buf, 0x16u);

      v17 = v53;
    }
  }

  v59 = v19;
  v22 = [(PLAssetComputeSyncPayloadHelper *)self computeSyncWrapperDataForAsset:assetCopy mediaAnalysisPayload:v18 analysisStage:stageCopy error:&v59];
  v23 = v59;

  if (v22)
  {
    v54 = v17;
    v58 = v23;
    v24 = [v22 writeToURL:v9 options:1 error:&v58];
    v25 = v58;

    if (v24)
    {
      v52 = v10;
      if (!v18)
      {
        goto LABEL_14;
      }

      if (computeSyncWrapperURLForAsset_analysisStage__onceToken != -1)
      {
        dispatch_once(&computeSyncWrapperURLForAsset_analysisStage__onceToken, &__block_literal_global_13193);
      }

      if ((computeSyncWrapperURLForAsset_analysisStage__keepMadSidecarAround & 1) == 0)
      {
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v57 = v25;
        v46 = [defaultManager2 removeItemAtURL:v54 error:&v57];
        v26 = v57;

        if ((v46 & 1) == 0)
        {
          v47 = PLBackendGetLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            scopedIdentifier3 = [assetCopy scopedIdentifier];
            *buf = 138412546;
            v63 = scopedIdentifier3;
            v64 = 2112;
            v65 = v26;
            _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "[CCSS] Unable to remove MAD compute sync payload for asset %@: %@", buf, 0x16u);
          }
        }
      }

      else
      {
LABEL_14:
        v26 = v25;
      }

      v27 = MEMORY[0x1E69BF238];
      pathManager = [assetCopy pathManager];
      capabilities = [pathManager capabilities];
      v56 = v26;
      LOBYTE(v27) = [v27 ingestItemAtURL:v9 toURL:v9 type:0 options:2 capabilities:capabilities error:&v56];
      v30 = v56;

      if (v27)
      {
        v23 = v30;
        v31 = v52;
        v17 = v54;
LABEL_17:

        objc_autoreleasePoolPop(v31);
        v32 = v9;
        goto LABEL_33;
      }

      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v42 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          scopedIdentifier4 = [assetCopy scopedIdentifier];
          *buf = 138412802;
          v63 = v9;
          v64 = 2112;
          v65 = v30;
          v66 = 2112;
          v67 = scopedIdentifier4;
          _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "[CCSS] Failed to set file protection on generated compute sync wrapper %@, error: %@ %@", buf, 0x20u);
        }
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v55 = v30;
      v44 = [defaultManager3 removeItemAtURL:v9 error:&v55];
      v23 = v55;

      if ((v44 & 1) == 0)
      {
        v49 = PLIsErrorFileNotFound();

        v17 = v54;
        if ((v49 & 1) == 0)
        {
          v50 = PLBackendGetLog();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            scopedIdentifier5 = [assetCopy scopedIdentifier];
            *buf = 138412546;
            v63 = scopedIdentifier5;
            v64 = 2112;
            v65 = v23;
            _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, "[CCSS] Unable to remove compute sync wrapper for asset %@: %@", buf, 0x16u);
          }

          v31 = v52;
          goto LABEL_17;
        }

        v10 = v52;
        goto LABEL_30;
      }

      v10 = v52;
      v17 = v54;
    }

    else
    {
      defaultManager3 = PLBackendGetLog();
      if (os_log_type_enabled(defaultManager3, OS_LOG_TYPE_ERROR))
      {
        scopedIdentifier6 = [assetCopy scopedIdentifier];
        *buf = 138412546;
        v63 = scopedIdentifier6;
        v64 = 2112;
        v65 = v25;
        _os_log_impl(&dword_19BF1F000, defaultManager3, OS_LOG_TYPE_ERROR, "[CCSS] Unable to write compute sync resource for asset %@: %@", buf, 0x16u);
      }

      v23 = v25;
      v17 = v54;
    }
  }

  else
  {
    defaultManager3 = PLBackendGetLog();
    if (os_log_type_enabled(defaultManager3, OS_LOG_TYPE_ERROR))
    {
      [assetCopy scopedIdentifier];
      v39 = v38 = v17;
      *buf = 138412546;
      v63 = v39;
      v64 = 2112;
      v65 = v23;
      _os_log_impl(&dword_19BF1F000, defaultManager3, OS_LOG_TYPE_ERROR, "[CCSS] Unable to encode compute sync resource for asset %@: %@", buf, 0x16u);

      v17 = v38;
    }
  }

LABEL_30:
LABEL_31:
  objc_autoreleasePoolPop(v10);
LABEL_32:
  v32 = 0;
LABEL_33:

  return v32;
}

void __79__PLAssetComputeSyncPayloadHelper_computeSyncWrapperURLForAsset_analysisStage___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  computeSyncWrapperURLForAsset_analysisStage__keepMadSidecarAround = [v0 BOOLForKey:@"PLCCSSKeepMADPayloadAfterWrapperGeneration"];
}

- (id)assetPayloadForComputeSyncWrapperData:(id)data payloadID:(id)d error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetComputeSyncPayloadHelper.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"wrapperData"}];
  }

  v11 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
  v12 = objc_alloc_init(PLAssetComputeSyncPayloadWrapper);
  if ([(PLAssetComputeSyncPayloadWrapper *)v12 readFrom:v11]&& [(PLAssetComputeSyncPayloadWrapper *)v12 hasAssetPayload])
  {
    assetPayload = [(PLAssetComputeSyncPayloadWrapper *)v12 assetPayload];
    v14 = [(PLManagedObjectJournalEntryPayload *)PLAssetComputeSyncJournalEntryPayload payloadWithData:assetPayload forPayloadID:dCopy version:[(PLAssetComputeSyncPayloadWrapper *)v12 assetPayloadVersion] andNilProperties:0 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)applyComputeSyncWrapperData:(id)data toAsset:(id)asset error:(id *)error
{
  dataCopy = data;
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetComputeSyncPayloadHelper.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  cloudAssetGUID = [assetCopy cloudAssetGUID];
  v12 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:cloudAssetGUID];
  v13 = [(PLAssetComputeSyncPayloadHelper *)self assetPayloadForComputeSyncWrapperData:dataCopy payloadID:v12 error:error];

  if (v13)
  {
    rawPayloadAttributes = [v13 rawPayloadAttributes];
    v15 = [rawPayloadAttributes count];

    if (v15)
    {
      v16 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAsset:assetCopy];
      [v13 applyPayloadToManagedObject:assetCopy payloadAttributesToUpdate:0 info:v16];
    }
  }

  return v13 != 0;
}

- (id)computeSyncWrapperDataForAsset:(id)asset mediaAnalysisPayload:(id)payload analysisStage:(signed __int16)stage error:(id *)error
{
  stageCopy = stage;
  assetCopy = asset;
  payloadCopy = payload;
  v13 = [PLAssetComputeSyncJournalEntryPayload payloadAdapterForManagedObject:assetCopy];
  if (!v13)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    uuid = [assetCopy uuid];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetComputeSyncPayloadHelper.m" lineNumber:27 description:{@"Unable to create compute sync payload adapter for asset: %@", uuid}];
  }

  v14 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:stageCopy];
  v15 = [(PLManagedObjectJournalEntryPayload *)[PLAssetComputeSyncJournalEntryPayload alloc] initWithInsertAdapter:v13 changedKeys:0 info:v14];
  v16 = v15;
  if (v15)
  {
    v17 = [(PLManagedObjectJournalEntryPayload *)v15 payloadDataWithError:error];
    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69C65C0]);
      v19 = objc_alloc_init(PLAssetComputeSyncPayloadWrapper);
      [(PLAssetComputeSyncPayloadWrapper *)v19 setAssetPayloadVersion:+[PLAssetComputeSyncJournalEntryPayload payloadVersion]];
      [(PLAssetComputeSyncPayloadWrapper *)v19 setAssetPayload:v17];
      [(PLAssetComputeSyncPayloadWrapper *)v19 setMediaAnalysisPayload:payloadCopy];
      currentBuildVersionString = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
      [(PLAssetComputeSyncPayloadWrapper *)v19 setDeviceBuild:currentBuildVersionString];

      v21 = MGCopyAnswer();
      [(PLAssetComputeSyncPayloadWrapper *)v19 setDeviceHwModel:v21];

      [(PLAssetComputeSyncPayloadWrapper *)v19 writeTo:v18];
      immutableData = [v18 immutableData];
    }

    else
    {
      immutableData = 0;
    }
  }

  else
  {
    immutableData = 0;
  }

  return immutableData;
}

@end