@interface PXSystemMediaAnalyzer
- (id)requestAnalysisForAssets:(id)assets options:(unint64_t)options contexts:(id)contexts resultHandler:(id)handler;
- (id)requestMatchedTimeRangesForAsset:(id)asset searchQueryMatchInfo:(id)info contextualVideoThumbnailID:(id)d resultHandler:(id)handler;
@end

@implementation PXSystemMediaAnalyzer

- (id)requestMatchedTimeRangesForAsset:(id)asset searchQueryMatchInfo:(id)info contextualVideoThumbnailID:(id)d resultHandler:(id)handler
{
  v83 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  infoCopy = info;
  dCopy = d;
  handlerCopy = handler;
  v15 = assetCopy;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_31;
  }

  v16 = v15;

  if (!v16)
  {
LABEL_31:
    v34 = PLUIGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v78 = v15;
      _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_INFO, "PXSystemMediaAnalyzer: Unable to analyze unsupported asset: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
    v16 = 0;
    goto LABEL_34;
  }

  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMediaAnalyzer.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];
  }

  personLocalIdentifiers = [infoCopy personLocalIdentifiers];
  v60 = dCopy;
  if ([personLocalIdentifiers count])
  {
    goto LABEL_13;
  }

  sceneIdentifiers = [infoCopy sceneIdentifiers];
  if (![sceneIdentifiers count])
  {
    audioIdentifiers = [infoCopy audioIdentifiers];
    if ([audioIdentifiers count])
    {
LABEL_11:

      goto LABEL_12;
    }

    humanActionIdentifiers = [infoCopy humanActionIdentifiers];
    if ([humanActionIdentifiers count])
    {

      dCopy = v60;
      goto LABEL_11;
    }

    queryEmbedding = [infoCopy queryEmbedding];

    dCopy = v60;
    if (queryEmbedding)
    {
      goto LABEL_14;
    }

    v45 = PLUIGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      localIdentifier = [v16 localIdentifier];
      *buf = 138412290;
      v78 = localIdentifier;
      _os_log_impl(&dword_1A3C1C000, v45, OS_LOG_TYPE_INFO, "PXSystemMediaAnalyzer: No identifiers provided. Skipping matched time range request for asset: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0]);
LABEL_34:
    v35 = 0;
    goto LABEL_35;
  }

LABEL_12:

LABEL_13:
LABEL_14:
  v21 = PLUIGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    localIdentifier2 = [v16 localIdentifier];
    *buf = 138412802;
    v78 = localIdentifier2;
    v79 = 2112;
    v80 = infoCopy;
    v81 = 2112;
    v82 = dCopy;
    _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_INFO, "PXSystemMediaAnalyzer: Requesting matched time ranges for asset: %@, searchQueryMatchInfo: %@, contextualVideoThumbnailID %@", buf, 0x20u);
  }

  mEMORY[0x1E69AE238] = [MEMORY[0x1E69AE238] sharedMediaAnalyzer];
  v58 = objc_alloc_init(MEMORY[0x1E696AE38]);
  [v58 setTotalUnitCount:101];
  v56 = objc_alloc(MEMORY[0x1E69AE248]);
  v75[0] = &unk_1F190B980;
  sceneIdentifiers2 = [infoCopy sceneIdentifiers];
  allObjects = [sceneIdentifiers2 allObjects];
  v24 = MEMORY[0x1E695E0F0];
  v54 = allObjects;
  if (allObjects)
  {
    v25 = allObjects;
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  v76[0] = v25;
  v75[1] = &unk_1F190B998;
  personLocalIdentifiers2 = [infoCopy personLocalIdentifiers];
  allObjects2 = [personLocalIdentifiers2 allObjects];
  v52 = allObjects2;
  if (allObjects2)
  {
    v27 = allObjects2;
  }

  else
  {
    v27 = v24;
  }

  v76[1] = v27;
  v75[2] = &unk_1F190B9B0;
  humanActionIdentifiers2 = [infoCopy humanActionIdentifiers];
  allObjects3 = [humanActionIdentifiers2 allObjects];
  v50 = allObjects3;
  if (allObjects3)
  {
    v29 = allObjects3;
  }

  else
  {
    v29 = v24;
  }

  v76[2] = v29;
  v75[3] = &unk_1F190B9C8;
  audioIdentifiers2 = [infoCopy audioIdentifiers];
  allObjects4 = [audioIdentifiers2 allObjects];
  v31 = allObjects4;
  if (allObjects4)
  {
    v32 = allObjects4;
  }

  else
  {
    v32 = v24;
  }

  v76[3] = v32;
  v75[4] = &unk_1F190B9E0;
  queryEmbedding2 = [infoCopy queryEmbedding];
  if (queryEmbedding2)
  {
    queryEmbedding3 = [infoCopy queryEmbedding];
    v74 = queryEmbedding3;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  }

  v76[4] = v24;
  v75[5] = &unk_1F190B9F8;
  if (dCopy)
  {
    v73 = dCopy;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  }

  else
  {
    v37 = MEMORY[0x1E695E0F0];
  }

  v76[5] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:6];
  v57 = [v56 initWithEntities:v38];

  if (dCopy)
  {
  }

  if (queryEmbedding2)
  {
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __120__PXSystemMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke;
  v70[3] = &unk_1E7735D30;
  v71 = v58;
  v72 = 0x4059400000000000;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __120__PXSystemMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke_2;
  v65[3] = &unk_1E77430A8;
  v39 = v16;
  v66 = v39;
  v40 = v71;
  v67 = v40;
  v69 = 0x4059400000000000;
  v68 = handlerCopy;
  v41 = [mEMORY[0x1E69AE238] findTimeRangesWithContext:v57 inAsset:v39 withOptions:0 andProgressHandler:v70 andCompletionHandler:v65];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __120__PXSystemMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke_369;
  v61[3] = &unk_1E7748BD8;
  v16 = v39;
  v64 = v41;
  v62 = v16;
  v63 = mEMORY[0x1E69AE238];
  v42 = mEMORY[0x1E69AE238];
  [v40 setCancellationHandler:v61];
  v43 = v63;
  v35 = v40;

  dCopy = v60;
LABEL_35:

  return v35;
}

void __120__PXSystemMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLUIGetLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 32) localIdentifier];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      v10 = "PXSystemMediaAnalyzer: Returning time ranges for asset: %@. TimeRanges: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v11, v12, v10, &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) localIdentifier];
    v15 = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v6;
    v10 = "PXSystemMediaAnalyzer: Failed to get timeRanges for asset: %@, error: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  [*(a1 + 40) setCompletedUnitCount:*(a1 + 56)];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v13, v14);
}

uint64_t __120__PXSystemMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke_369(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) localIdentifier];
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_INFO, "PXSystemMediaAnalyzer: Canceling time range request for asset: %@, requestID: %d", &v6, 0x12u);
  }

  return [*(a1 + 40) cancelAnalysisWithRequestID:*(a1 + 48)];
}

- (id)requestAnalysisForAssets:(id)assets options:(unint64_t)options contexts:(id)contexts resultHandler:(id)handler
{
  assetsCopy = assets;
  contextsCopy = contexts;
  handlerCopy = handler;
  v12 = objc_alloc_init(MEMORY[0x1E696AE38]);
  mEMORY[0x1E69AE238] = [MEMORY[0x1E69AE238] sharedMediaAnalyzer];
  v14 = (100 * [assetsCopy count]) + 1.0;
  [v12 setTotalUnitCount:v14];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = v15;
  if ((options & 2) != 0)
  {
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE2C0]];
    v17 = 0x40000;
    if ((options & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = 0;
  if (options)
  {
LABEL_5:
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE290]];
  }

LABEL_6:
  if ((options & 0x10) != 0)
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE298]];
  }

  v18 = [contextsCopy count];
  if (v18 == [assetsCopy count])
  {
    [v16 setObject:contextsCopy forKeyedSubscript:*MEMORY[0x1E69AE2A8]];
  }

  v19 = v17 & 0xFFFFFFFF7FFFFFFFLL | (((options >> 5) & 1) << 31);
  if ((options & 4) != 0)
  {
    v20 = v19 | 0xA00018;
  }

  else
  {
    v20 = v19;
  }

  v21 = (options << 20) & 0x800000;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __81__PXSystemMediaAnalyzer_requestAnalysisForAssets_options_contexts_resultHandler___block_invoke;
  v36[3] = &unk_1E7735CE0;
  v37 = v12;
  v38 = v14;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __81__PXSystemMediaAnalyzer_requestAnalysisForAssets_options_contexts_resultHandler___block_invoke_2;
  v32[3] = &unk_1E7735D08;
  v22 = v37;
  v35 = v14;
  v33 = v22;
  v34 = handlerCopy;
  v23 = handlerCopy;
  v24 = [mEMORY[0x1E69AE238] requestAnalysis:v20 | v21 forAssets:assetsCopy withOptions:v16 andProgressHandler:v36 andCompletionHandler:v32];
  [v22 setCancellable:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81__PXSystemMediaAnalyzer_requestAnalysisForAssets_options_contexts_resultHandler___block_invoke_3;
  v29[3] = &unk_1E7749728;
  v30 = mEMORY[0x1E69AE238];
  v31 = v24;
  v25 = mEMORY[0x1E69AE238];
  [v22 setCancellationHandler:v29];
  v26 = v30;
  v27 = v22;

  return v22;
}

void __81__PXSystemMediaAnalyzer_requestAnalysisForAssets_options_contexts_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setCompletedUnitCount:v3];
  (*(*(a1 + 40) + 16))();
}

@end