@interface PLAssetComputeSyncPayloadHelper
+ (id)mediaAnalysisPayloadDataForWrapperData:(id)a3;
+ (id)mediaAnalysisPayloadDataForWrapperURL:(id)a3;
- (BOOL)applyComputeSyncWrapperData:(id)a3 toAsset:(id)a4 error:(id *)a5;
- (id)assetPayloadForComputeSyncWrapperData:(id)a3 payloadID:(id)a4 error:(id *)a5;
- (id)computeSyncWrapperDataForAsset:(id)a3 mediaAnalysisPayload:(id)a4 analysisStage:(signed __int16)a5 error:(id *)a6;
- (id)computeSyncWrapperURLForAsset:(id)a3 analysisStage:(signed __int16)a4;
@end

@implementation PLAssetComputeSyncPayloadHelper

+ (id)mediaAnalysisPayloadDataForWrapperURL:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:0 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [a1 mediaAnalysisPayloadDataForWrapperData:v5];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "[CCSS] Unable to read compute sync resource %@: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)mediaAnalysisPayloadDataForWrapperData:(id)a3
{
  v3 = MEMORY[0x1E69C65B8];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4];

  v6 = objc_alloc_init(PLAssetComputeSyncPayloadWrapper);
  if ([(PLAssetComputeSyncPayloadWrapper *)v6 readFrom:v5])
  {
    v7 = [(PLAssetComputeSyncPayloadWrapper *)v6 mediaAnalysisPayload];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)computeSyncWrapperURLForAsset:(id)a3 analysisStage:(signed __int16)a4
{
  v4 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695DFF8];
  v8 = [v6 pathForComputeSyncWrapperFile];
  v9 = [v7 fileURLWithPath:v8 isDirectory:0];

  if (!v9)
  {
    v33 = PLBackendGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [v6 scopedIdentifier];
      *buf = 138412290;
      v63 = v34;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "[CCSS] Unable to get compute sync resource URL for asset %@", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [v9 URLByDeletingLastPathComponent];
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v61 = 0;
  v13 = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v61];
  v14 = v61;

  if ((v13 & 1) == 0)
  {
    v35 = PLBackendGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [v6 scopedIdentifier];
      *buf = 138412802;
      v63 = v36;
      v64 = 2112;
      v65 = v11;
      v66 = 2112;
      v67 = v14;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "[CCSS] Unable to create compute sync resource directory for asset %@ URL %@ error: %@", buf, 0x20u);
    }

    goto LABEL_31;
  }

  v15 = MEMORY[0x1E695DFF8];
  v16 = [v6 pathForComputeSyncMediaAnalysisPayloadFile];
  v17 = [v15 fileURLWithPath:v16 isDirectory:0];

  v60 = v14;
  v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v17 options:0 error:&v60];
  v19 = v60;

  if (!v18 && (PLIsErrorFileNotFound() & 1) == 0)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [v6 scopedIdentifier];
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
  v22 = [(PLAssetComputeSyncPayloadHelper *)self computeSyncWrapperDataForAsset:v6 mediaAnalysisPayload:v18 analysisStage:v4 error:&v59];
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
        v45 = [MEMORY[0x1E696AC08] defaultManager];
        v57 = v25;
        v46 = [v45 removeItemAtURL:v54 error:&v57];
        v26 = v57;

        if ((v46 & 1) == 0)
        {
          v47 = PLBackendGetLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = [v6 scopedIdentifier];
            *buf = 138412546;
            v63 = v48;
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
      v28 = [v6 pathManager];
      v29 = [v28 capabilities];
      v56 = v26;
      LOBYTE(v27) = [v27 ingestItemAtURL:v9 toURL:v9 type:0 options:2 capabilities:v29 error:&v56];
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
          v43 = [v6 scopedIdentifier];
          *buf = 138412802;
          v63 = v9;
          v64 = 2112;
          v65 = v30;
          v66 = 2112;
          v67 = v43;
          _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "[CCSS] Failed to set file protection on generated compute sync wrapper %@, error: %@ %@", buf, 0x20u);
        }
      }

      v37 = [MEMORY[0x1E696AC08] defaultManager];
      v55 = v30;
      v44 = [v37 removeItemAtURL:v9 error:&v55];
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
            v51 = [v6 scopedIdentifier];
            *buf = 138412546;
            v63 = v51;
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
      v37 = PLBackendGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v40 = [v6 scopedIdentifier];
        *buf = 138412546;
        v63 = v40;
        v64 = 2112;
        v65 = v25;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[CCSS] Unable to write compute sync resource for asset %@: %@", buf, 0x16u);
      }

      v23 = v25;
      v17 = v54;
    }
  }

  else
  {
    v37 = PLBackendGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [v6 scopedIdentifier];
      v39 = v38 = v17;
      *buf = 138412546;
      v63 = v39;
      v64 = 2112;
      v65 = v23;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[CCSS] Unable to encode compute sync resource for asset %@: %@", buf, 0x16u);

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

- (id)assetPayloadForComputeSyncWrapperData:(id)a3 payloadID:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLAssetComputeSyncPayloadHelper.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"wrapperData"}];
  }

  v11 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v9];
  v12 = objc_alloc_init(PLAssetComputeSyncPayloadWrapper);
  if ([(PLAssetComputeSyncPayloadWrapper *)v12 readFrom:v11]&& [(PLAssetComputeSyncPayloadWrapper *)v12 hasAssetPayload])
  {
    v13 = [(PLAssetComputeSyncPayloadWrapper *)v12 assetPayload];
    v14 = [(PLManagedObjectJournalEntryPayload *)PLAssetComputeSyncJournalEntryPayload payloadWithData:v13 forPayloadID:v10 version:[(PLAssetComputeSyncPayloadWrapper *)v12 assetPayloadVersion] andNilProperties:0 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)applyComputeSyncWrapperData:(id)a3 toAsset:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PLAssetComputeSyncPayloadHelper.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v11 = [v10 cloudAssetGUID];
  v12 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v11];
  v13 = [(PLAssetComputeSyncPayloadHelper *)self assetPayloadForComputeSyncWrapperData:v9 payloadID:v12 error:a5];

  if (v13)
  {
    v14 = [v13 rawPayloadAttributes];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAsset:v10];
      [v13 applyPayloadToManagedObject:v10 payloadAttributesToUpdate:0 info:v16];
    }
  }

  return v13 != 0;
}

- (id)computeSyncWrapperDataForAsset:(id)a3 mediaAnalysisPayload:(id)a4 analysisStage:(signed __int16)a5 error:(id *)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = [PLAssetComputeSyncJournalEntryPayload payloadAdapterForManagedObject:v11];
  if (!v13)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [v11 uuid];
    [v24 handleFailureInMethod:a2 object:self file:@"PLAssetComputeSyncPayloadHelper.m" lineNumber:27 description:{@"Unable to create compute sync payload adapter for asset: %@", v25}];
  }

  v14 = [[PLJournalEntryPayloadPropertyInfoAssetCompute alloc] initWithAnalysisStage:v7];
  v15 = [(PLManagedObjectJournalEntryPayload *)[PLAssetComputeSyncJournalEntryPayload alloc] initWithInsertAdapter:v13 changedKeys:0 info:v14];
  v16 = v15;
  if (v15)
  {
    v17 = [(PLManagedObjectJournalEntryPayload *)v15 payloadDataWithError:a6];
    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69C65C0]);
      v19 = objc_alloc_init(PLAssetComputeSyncPayloadWrapper);
      [(PLAssetComputeSyncPayloadWrapper *)v19 setAssetPayloadVersion:+[PLAssetComputeSyncJournalEntryPayload payloadVersion]];
      [(PLAssetComputeSyncPayloadWrapper *)v19 setAssetPayload:v17];
      [(PLAssetComputeSyncPayloadWrapper *)v19 setMediaAnalysisPayload:v12];
      v20 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
      [(PLAssetComputeSyncPayloadWrapper *)v19 setDeviceBuild:v20];

      v21 = MGCopyAnswer();
      [(PLAssetComputeSyncPayloadWrapper *)v19 setDeviceHwModel:v21];

      [(PLAssetComputeSyncPayloadWrapper *)v19 writeTo:v18];
      v22 = [v18 immutableData];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end