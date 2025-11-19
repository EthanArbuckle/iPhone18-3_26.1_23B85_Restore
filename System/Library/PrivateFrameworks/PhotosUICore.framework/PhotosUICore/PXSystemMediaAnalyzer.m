@interface PXSystemMediaAnalyzer
- (id)requestAnalysisForAssets:(id)a3 options:(unint64_t)a4 contexts:(id)a5 resultHandler:(id)a6;
- (id)requestMatchedTimeRangesForAsset:(id)a3 searchQueryMatchInfo:(id)a4 contextualVideoThumbnailID:(id)a5 resultHandler:(id)a6;
@end

@implementation PXSystemMediaAnalyzer

- (id)requestMatchedTimeRangesForAsset:(id)a3 searchQueryMatchInfo:(id)a4 contextualVideoThumbnailID:(id)a5 resultHandler:(id)a6
{
  v83 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v11;
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

    v14[2](v14, MEMORY[0x1E695E0F0]);
    v16 = 0;
    goto LABEL_34;
  }

  if (!v14)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PXMediaAnalyzer.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];
  }

  v17 = [v12 personLocalIdentifiers];
  v60 = v13;
  if ([v17 count])
  {
    goto LABEL_13;
  }

  v18 = [v12 sceneIdentifiers];
  if (![v18 count])
  {
    v19 = [v12 audioIdentifiers];
    if ([v19 count])
    {
LABEL_11:

      goto LABEL_12;
    }

    v20 = [v12 humanActionIdentifiers];
    if ([v20 count])
    {

      v13 = v60;
      goto LABEL_11;
    }

    v44 = [v12 queryEmbedding];

    v13 = v60;
    if (v44)
    {
      goto LABEL_14;
    }

    v45 = PLUIGetLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = [v16 localIdentifier];
      *buf = 138412290;
      v78 = v46;
      _os_log_impl(&dword_1A3C1C000, v45, OS_LOG_TYPE_INFO, "PXSystemMediaAnalyzer: No identifiers provided. Skipping matched time range request for asset: %@", buf, 0xCu);
    }

    v14[2](v14, MEMORY[0x1E695E0F0]);
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
    v22 = [v16 localIdentifier];
    *buf = 138412802;
    v78 = v22;
    v79 = 2112;
    v80 = v12;
    v81 = 2112;
    v82 = v13;
    _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_INFO, "PXSystemMediaAnalyzer: Requesting matched time ranges for asset: %@, searchQueryMatchInfo: %@, contextualVideoThumbnailID %@", buf, 0x20u);
  }

  v59 = [MEMORY[0x1E69AE238] sharedMediaAnalyzer];
  v58 = objc_alloc_init(MEMORY[0x1E696AE38]);
  [v58 setTotalUnitCount:101];
  v56 = objc_alloc(MEMORY[0x1E69AE248]);
  v75[0] = &unk_1F190B980;
  v55 = [v12 sceneIdentifiers];
  v23 = [v55 allObjects];
  v24 = MEMORY[0x1E695E0F0];
  v54 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  v76[0] = v25;
  v75[1] = &unk_1F190B998;
  v53 = [v12 personLocalIdentifiers];
  v26 = [v53 allObjects];
  v52 = v26;
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  v76[1] = v27;
  v75[2] = &unk_1F190B9B0;
  v51 = [v12 humanActionIdentifiers];
  v28 = [v51 allObjects];
  v50 = v28;
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v24;
  }

  v76[2] = v29;
  v75[3] = &unk_1F190B9C8;
  v49 = [v12 audioIdentifiers];
  v30 = [v49 allObjects];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v24;
  }

  v76[3] = v32;
  v75[4] = &unk_1F190B9E0;
  v33 = [v12 queryEmbedding];
  if (v33)
  {
    v48 = [v12 queryEmbedding];
    v74 = v48;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  }

  v76[4] = v24;
  v75[5] = &unk_1F190B9F8;
  if (v13)
  {
    v73 = v13;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  }

  else
  {
    v37 = MEMORY[0x1E695E0F0];
  }

  v76[5] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:6];
  v57 = [v56 initWithEntities:v38];

  if (v13)
  {
  }

  if (v33)
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
  v68 = v14;
  v41 = [v59 findTimeRangesWithContext:v57 inAsset:v39 withOptions:0 andProgressHandler:v70 andCompletionHandler:v65];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __120__PXSystemMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke_369;
  v61[3] = &unk_1E7748BD8;
  v16 = v39;
  v64 = v41;
  v62 = v16;
  v63 = v59;
  v42 = v59;
  [v40 setCancellationHandler:v61];
  v43 = v63;
  v35 = v40;

  v13 = v60;
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

- (id)requestAnalysisForAssets:(id)a3 options:(unint64_t)a4 contexts:(id)a5 resultHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x1E696AE38]);
  v13 = [MEMORY[0x1E69AE238] sharedMediaAnalyzer];
  v14 = (100 * [v9 count]) + 1.0;
  [v12 setTotalUnitCount:v14];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = v15;
  if ((a4 & 2) != 0)
  {
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE2C0]];
    v17 = 0x40000;
    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = 0;
  if (a4)
  {
LABEL_5:
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE290]];
  }

LABEL_6:
  if ((a4 & 0x10) != 0)
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69AE298]];
  }

  v18 = [v10 count];
  if (v18 == [v9 count])
  {
    [v16 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69AE2A8]];
  }

  v19 = v17 & 0xFFFFFFFF7FFFFFFFLL | (((a4 >> 5) & 1) << 31);
  if ((a4 & 4) != 0)
  {
    v20 = v19 | 0xA00018;
  }

  else
  {
    v20 = v19;
  }

  v21 = (a4 << 20) & 0x800000;
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
  v34 = v11;
  v23 = v11;
  v24 = [v13 requestAnalysis:v20 | v21 forAssets:v9 withOptions:v16 andProgressHandler:v36 andCompletionHandler:v32];
  [v22 setCancellable:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81__PXSystemMediaAnalyzer_requestAnalysisForAssets_options_contexts_resultHandler___block_invoke_3;
  v29[3] = &unk_1E7749728;
  v30 = v13;
  v31 = v24;
  v25 = v13;
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