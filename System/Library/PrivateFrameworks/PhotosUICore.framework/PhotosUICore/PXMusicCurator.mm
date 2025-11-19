@interface PXMusicCurator
+ (OS_os_log)log;
+ (id)_fetchFlexMusicAssetsWithIdentifiers:(id)a3;
+ (id)_invalidPhotoAnalysisClientError;
+ (id)_requestDebugInformationForAppleMusicAsset:(id)a3 assetContainer:(id)a4 resultHandler:(id)a5;
+ (id)_requestDebugInformationForFlexMusicAsset:(id)a3 assetContainer:(id)a4 resultHandler:(id)a5;
+ (id)_requestQueue;
+ (id)bestLocallyAvailableAudioAssetForAssetContainer:(id)a3;
+ (id)requestAppleMusicCurationForAssetContainer:(id)a3 recentlyUsedAdamIDs:(id)a4 resultHandler:(id)a5;
+ (id)requestAudioAssetFetchResultForAdamIDs:(id)a3 requestOptions:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6;
+ (id)requestAudioAssetIdentifierForPurchasedSongID:(id)a3 requestOptions:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6;
+ (id)requestDebugInformationForAudioAsset:(id)a3 assetContainer:(id)a4 resultHandler:(id)a5;
+ (id)requestFlexMusicCurationForAssetContainer:(id)a3 recentlyUsedFlexSongIDs:(id)a4 resultHandler:(id)a5;
@end

@implementation PXMusicCurator

+ (id)_invalidPhotoAnalysisClientError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A278];
  v7[0] = @"Invalid PhotoAnalysis Client";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"PXStoryErrorDomain" code:2 userInfo:v3];

  return v4;
}

+ (id)_requestDebugInformationForFlexMusicAsset:(id)a3 assetContainer:(id)a4 resultHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:2];
  v11 = [v8 photoLibrary];
  v12 = [v11 photoAnalysisClient];

  if (v12)
  {
    v13 = [v7 identifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__PXMusicCurator__requestDebugInformationForFlexMusicAsset_assetContainer_resultHandler___block_invoke;
    v18[3] = &unk_1E77430F8;
    v14 = v10;
    v19 = v14;
    v22 = v9;
    v20 = v8;
    v21 = v12;
    [v21 requestFlexMusicCurationDebugInformationForSongWithUID:v13 reply:v18];

    v15 = v21;
    v16 = v14;
  }

  else
  {
    [v10 setCompletedUnitCount:{objc_msgSend(v10, "totalUnitCount")}];
    v16 = +[PXMusicCurator _invalidPhotoAnalysisClientError];
    (*(v9 + 2))(v9, 0, v16);
  }

  return v10;
}

void __89__PXMusicCurator__requestDebugInformationForFlexMusicAsset_assetContainer_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 setCompletedUnitCount:1];
      v8 = [*(a1 + 40) assetCollection];
      v9 = *(a1 + 48);
      v10 = [v8 localIdentifier];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __89__PXMusicCurator__requestDebugInformationForFlexMusicAsset_assetContainer_resultHandler___block_invoke_2;
      v11[3] = &unk_1E77430D0;
      v12 = *(a1 + 32);
      v14 = *(a1 + 56);
      v13 = v5;
      [v9 requestFlexMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:v10 reply:v11];
    }

    else
    {
      [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(v7, "totalUnitCount")}];
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __89__PXMusicCurator__requestDebugInformationForFlexMusicAsset_assetContainer_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
    if (v7)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n==== [Flex Song] ====\n\n%@\n\n==== [Asset Collection] ====\n\n%@", *(a1 + 40), v7];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

+ (id)_requestDebugInformationForAppleMusicAsset:(id)a3 assetContainer:(id)a4 resultHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:2];
  v11 = [v8 photoLibrary];
  v12 = [v11 photoAnalysisClient];

  if (v12)
  {
    v13 = [v7 identifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__PXMusicCurator__requestDebugInformationForAppleMusicAsset_assetContainer_resultHandler___block_invoke;
    v18[3] = &unk_1E77430F8;
    v14 = v10;
    v19 = v14;
    v22 = v9;
    v20 = v8;
    v21 = v12;
    [v21 requestMusicCurationDebugInformationForSongWithAdamID:v13 reply:v18];

    v15 = v21;
    v16 = v14;
  }

  else
  {
    [v10 setCompletedUnitCount:{objc_msgSend(v10, "totalUnitCount")}];
    v16 = +[PXMusicCurator _invalidPhotoAnalysisClientError];
    (*(v9 + 2))(v9, 0, v16);
  }

  return v10;
}

void __90__PXMusicCurator__requestDebugInformationForAppleMusicAsset_assetContainer_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 setCompletedUnitCount:1];
      v8 = [*(a1 + 40) assetCollection];
      v9 = *(a1 + 48);
      v10 = [v8 localIdentifier];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __90__PXMusicCurator__requestDebugInformationForAppleMusicAsset_assetContainer_resultHandler___block_invoke_2;
      v11[3] = &unk_1E77430D0;
      v12 = *(a1 + 32);
      v14 = *(a1 + 56);
      v13 = v5;
      [v9 requestMusicCurationDebugInformationForAssetCollectionWithLocalIdentifier:v10 reply:v11];
    }

    else
    {
      [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(v7, "totalUnitCount")}];
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __90__PXMusicCurator__requestDebugInformationForAppleMusicAsset_assetContainer_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
    if (v7)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n==== [Music Song] ====\n\n%@\n\n==== [Asset Collection] ====\n\n%@", *(a1 + 40), v7];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

+ (id)requestDebugInformationForAudioAsset:(id)a3 assetContainer:(id)a4 resultHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_opt_class() _requestDebugInformationForFlexMusicAsset:v7 assetContainer:v8 resultHandler:v9];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_opt_class() _requestDebugInformationForAppleMusicAsset:v7 assetContainer:v8 resultHandler:v9];
    goto LABEL_5;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 stringWithFormat:@"Unsupported audio asset class: %@", v14];

  v9[2](v9, v15, 0);
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  [v11 setCompletedUnitCount:{objc_msgSend(v11, "totalUnitCount")}];

LABEL_7:

  return v11;
}

+ (id)_fetchFlexMusicAssetsWithIdentifiers:(id)a3
{
  v3 = a3;
  v4 = +[PXFlexMusicLibrary sharedLibrary];
  v5 = [v4 fetchAssetsWithIdentifiers:v3];

  return v5;
}

+ (id)requestAudioAssetIdentifierForPurchasedSongID:(id)a3 requestOptions:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v15 = [a1 _requestQueue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __110__PXMusicCurator_requestAudioAssetIdentifierForPurchasedSongID_requestOptions_photoLibrary_completionHandler___block_invoke;
  v24[3] = &unk_1E7743080;
  v30 = a1;
  v25 = v12;
  v16 = v14;
  v26 = v16;
  v27 = v11;
  v28 = v10;
  v29 = v13;
  v17 = v10;
  v18 = v11;
  v19 = v13;
  v20 = v12;
  dispatch_async(v15, v24);

  v21 = v28;
  v22 = v16;

  return v16;
}

void __110__PXMusicCurator_requestAudioAssetIdentifierForPurchasedSongID_requestOptions_photoLibrary_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 72) log];
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 72));
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PXStoryMusicCuratorFetchIdentifierForPurchasedSongID", "", buf, 2u);
  }

  v6 = [*(a1 + 32) photoAnalysisClient];
  if (v6)
  {
    v7 = [*(a1 + 48) requestOptions];
    v8 = *(a1 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __110__PXMusicCurator_requestAudioAssetIdentifierForPurchasedSongID_requestOptions_photoLibrary_completionHandler___block_invoke_244;
    v12[3] = &unk_1E77430A8;
    v13 = *(a1 + 40);
    v14 = v5;
    v16 = v3;
    v15 = *(a1 + 64);
    [v6 requestMusicCatalogAdamIDsForPurchasedSongID:v8 options:v7 reply:v12];

    v9 = v13;
  }

  else
  {
    v7 = +[PXMusicCurator _invalidPhotoAnalysisClientError];
    v10 = PLStoryGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetFetchResultForPurchaasedSongID failed with error: %@", buf, 0xCu);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
    (*(*(a1 + 64) + 16))();
    v11 = v5;
    v9 = v11;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_END, v3, "PXStoryMusicCuratorFetchIdentifierForPurchasedSongID", "", buf, 2u);
    }
  }
}

void __110__PXMusicCurator_requestAudioAssetIdentifierForPurchasedSongID_requestOptions_photoLibrary_completionHandler___block_invoke_244(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v7 = PLStoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetIdentifierForPurchasedSongID was cancelled -> exiting without calling resultHandler.", &v19, 2u);
    }

    v8 = *(a1 + 40);
    v9 = v8;
    v10 = *(a1 + 56);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PXStoryMusicCuratorFetchIdentifierForPurchasedSongID", "", &v19, 2u);
    }

LABEL_14:

    goto LABEL_15;
  }

  v11 = PLStoryGetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v12)
    {
      v19 = 134217984;
      v20 = [v5 count];
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetIdentifierForPurchasedSongID finished successfully with fetchResult of length: %ld.", &v19, 0xCu);
    }

    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
    v9 = [v5 firstObject];
    (*(*(a1 + 48) + 16))();
    v13 = *(a1 + 40);
    v14 = v13;
    v15 = *(a1 + 56);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PXStoryMusicCuratorFetchIdentifierForPurchasedSongID", "", &v19, 2u);
    }

    goto LABEL_14;
  }

  if (v12)
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetIdentifierForPurchasedSongID failed with error %@", &v19, 0xCu);
  }

  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v16 = *(a1 + 40);
  v17 = v16;
  v18 = *(a1 + 56);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PXStoryMusicCuratorFetchIdentifierForPurchasedSongID", "", &v19, 2u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_15:
}

+ (id)requestAudioAssetFetchResultForAdamIDs:(id)a3 requestOptions:(id)a4 photoLibrary:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v15 = [a1 _requestQueue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __103__PXMusicCurator_requestAudioAssetFetchResultForAdamIDs_requestOptions_photoLibrary_completionHandler___block_invoke;
  v24[3] = &unk_1E7743080;
  v30 = a1;
  v25 = v10;
  v16 = v14;
  v26 = v16;
  v27 = v12;
  v28 = v11;
  v29 = v13;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v10;
  dispatch_async(v15, v24);

  v21 = v28;
  v22 = v16;

  return v16;
}

void __103__PXMusicCurator_requestAudioAssetFetchResultForAdamIDs_requestOptions_photoLibrary_completionHandler___block_invoke(id *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [a1[9] log];
  v3 = os_signpost_id_make_with_pointer(v2, a1[9]);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PXStoryMusicCuratorFetchFromAdamIDs", "", buf, 2u);
  }

  if ([a1[4] count])
  {
    v6 = [a1[6] photoAnalysisClient];
    if (v6)
    {
      v7 = [a1[7] requestOptions];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __103__PXMusicCurator_requestAudioAssetFetchResultForAdamIDs_requestOptions_photoLibrary_completionHandler___block_invoke_239;
      v11[3] = &unk_1E7742FE8;
      v8 = a1[4];
      v12 = a1[5];
      v13 = a1[4];
      v16 = a1[8];
      v14 = a1[6];
      v15 = v5;
      v17 = v3;
      [v6 requestSongsForAdamIDs:v8 options:v7 reply:v11];
    }

    else
    {
      v7 = +[PXMusicCurator _invalidPhotoAnalysisClientError];
      v10 = PLStoryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v7;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetFetchResultForAdamIDs failed with error: %@", buf, 0xCu);
      }

      [a1[5] setCompletedUnitCount:{objc_msgSend(a1[5], "totalUnitCount")}];
      (*(a1[8] + 2))();
    }
  }

  else
  {
    v9 = PLStoryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetFetchResultForAdamIDs returning an empty fetch result because no adamIDs were requested", buf, 2u);
    }

    [a1[5] setCompletedUnitCount:{objc_msgSend(a1[5], "totalUnitCount")}];
    v6 = PXAudioAssetFetchResultWithArray(MEMORY[0x1E695E0F0]);
    (*(a1[8] + 2))();
  }
}

void __103__PXMusicCurator_requestAudioAssetFetchResultForAdamIDs_requestOptions_photoLibrary_completionHandler___block_invoke_239(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v7 = PLStoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetFetchResultForAdamIDs was cancelled -> exiting without calling resultHandler.", buf, 2u);
    }
  }

  else if ([v5 length])
  {
    v8 = [v5 dataUsingEncoding:4];
    v20 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v20];
    v10 = v20;
    if ([v9 count])
    {
      v11 = [PXAppleMusicCuration parseAppleMusicAssetsFromJSONArray:v9 photoLibrary:*(a1 + 48)];
      v12 = PLStoryGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v11 count];
        *buf = 134217984;
        v22 = v13;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetFetchResultForAdamIDs finished successfully with fetchResult of length: %ld.", buf, 0xCu);
      }

      [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
      (*(*(a1 + 64) + 16))();
      v14 = *(a1 + 56);
      v15 = v14;
      v16 = *(a1 + 72);
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PXStoryMusicCuratorFetchFromAdamIDs", "", buf, 2u);
      }
    }

    else
    {
      v19 = PLStoryGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetFetchResultForAdamIDs failed with json serialization error: %@", buf, 0xCu);
      }

      [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      [v11 setObject:@"Photo Analysis response contained no songs" forKeyedSubscript:*MEMORY[0x1E696A278]];
      v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PXMusicCuratorErrorDomain" code:0 userInfo:v11];
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v17 = PLStoryGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      *buf = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestAudioAssetFetchResultForAdamIDs failed for adamIDs %@ likely due to a dead adamId. Error: %@", buf, 0x16u);
    }

    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
    (*(*(a1 + 64) + 16))();
  }
}

+ (id)requestFlexMusicCurationForAssetContainer:(id)a3 recentlyUsedFlexSongIDs:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v12 = [a1 _requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PXMusicCurator_requestFlexMusicCurationForAssetContainer_recentlyUsedFlexSongIDs_resultHandler___block_invoke;
  block[3] = &unk_1E7743030;
  v25 = a1;
  v21 = v8;
  v13 = v11;
  v23 = v9;
  v24 = v10;
  v22 = v13;
  v14 = v9;
  v15 = v10;
  v16 = v8;
  dispatch_async(v12, block);

  v17 = v23;
  v18 = v13;

  return v13;
}

void __98__PXMusicCurator_requestFlexMusicCurationForAssetContainer_recentlyUsedFlexSongIDs_resultHandler___block_invoke(id *a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[8] log];
  v3 = os_signpost_id_make_with_pointer(v2, a1[8]);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "StoryMusicCuratorFlexMusic", "", buf, 2u);
  }

  v6 = [a1[4] photoLibrary];
  v7 = [v6 photoAnalysisClient];

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__PXMusicCurator_requestFlexMusicCurationForAssetContainer_recentlyUsedFlexSongIDs_resultHandler___block_invoke_228;
    aBlock[3] = &unk_1E7743058;
    v21 = a1[4];
    v22 = a1[5];
    v24 = a1[7];
    v23 = v5;
    v25 = v3;
    v8 = _Block_copy(aBlock);
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = [a1[6] copy];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69BEB38]];

    v11 = [a1[4] container];
    v12 = [v11 localIdentifier];
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69BEA20]];

    v13 = [a1[4] assetCollection];
    if ([v13 isTransient])
    {
      v14 = [v13 photoLibrary];
      v15 = [v14 librarySpecificFetchOptions];

      v27[0] = *MEMORY[0x1E6978C68];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v15 setFetchPropertySets:v16];

      [v15 setWantsIncrementalChangeDetails:0];
      [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v13 options:v15];
      objc_claimAutoreleasedReturnValue();
      PXMap();
    }

    v19 = [v13 localIdentifier];
    [v7 requestFlexMusicCurationForAssetCollectionLocalIdentifier:v19 options:v9 reply:v8];

    v18 = v21;
  }

  else
  {
    [a1[5] setCompletedUnitCount:{objc_msgSend(a1[5], "totalUnitCount")}];
    v17 = a1[7];
    v18 = +[PXMusicCurator _invalidPhotoAnalysisClientError];
    v17[2](v17, 0, v18);
  }
}

void __98__PXMusicCurator_requestFlexMusicCurationForAssetContainer_recentlyUsedFlexSongIDs_resultHandler___block_invoke_228(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLStoryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v32 = v8;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestFlexMusicCuration received reply for asset container (%@).", buf, 0xCu);
  }

  if ([*(a1 + 40) isCancelled])
  {
    v9 = PLStoryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v32 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestFlexMusicCuration for asset container (%@) was cancelled -> exiting without calling resultHandler.", buf, 0xCu);
    }
  }

  else if ([v5 length])
  {
    v11 = [v5 dataUsingEncoding:4];
    v30 = 0;
    v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:0 error:&v30];
    v13 = v30;
    if ([v12 count])
    {
      v29 = v13;
      v14 = [v12 objectForKeyedSubscript:@"bestSongSuggestions"];
      v15 = [PXMusicCurator _fetchFlexMusicAssetsWithIdentifiers:v14];

      v16 = [v12 objectForKeyedSubscript:@"secondarySongSuggestions"];
      v17 = [PXMusicCurator _fetchFlexMusicAssetsWithIdentifiers:v16];

      v18 = [[PXFlexMusicCuration alloc] initWithBestSongSuggestions:v15 secondarySongSuggestions:v17];
      v19 = PLStoryGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [*(a1 + 32) identifier];
        v21 = [v15 count];
        *buf = 138412546;
        v32 = v20;
        v33 = 2048;
        v34 = v21;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestFlexMusicCuration finished successfully for asset container (%@) with bestSongSuggestions count: %ld.", buf, 0x16u);
      }

      [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
      (*(*(a1 + 56) + 16))();
      v22 = *(a1 + 48);
      v23 = v22;
      v24 = *(a1 + 64);
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, OS_SIGNPOST_INTERVAL_END, v24, "StoryMusicCuratorFlexMusic", "", buf, 2u);
      }

      v13 = v29;
    }

    else
    {
      v27 = PLStoryGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [*(a1 + 32) identifier];
        *buf = 138412546;
        v32 = v28;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestFlexMusicCuration failed for asset container (%@) with JSON serialization error: %@.", buf, 0x16u);
      }

      [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v25 = PLStoryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [*(a1 + 32) identifier];
      *buf = 138412546;
      v32 = v26;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestFlexMusicCuration for asset container (%@) failed with error: %@.", buf, 0x16u);
    }

    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
    (*(*(a1 + 56) + 16))();
  }
}

+ (id)requestAppleMusicCurationForAssetContainer:(id)a3 recentlyUsedAdamIDs:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v12 = [a1 _requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PXMusicCurator_requestAppleMusicCurationForAssetContainer_recentlyUsedAdamIDs_resultHandler___block_invoke;
  block[3] = &unk_1E7743030;
  v25 = a1;
  v21 = v8;
  v13 = v11;
  v23 = v9;
  v24 = v10;
  v22 = v13;
  v14 = v9;
  v15 = v10;
  v16 = v8;
  dispatch_async(v12, block);

  v17 = v23;
  v18 = v13;

  return v13;
}

void __95__PXMusicCurator_requestAppleMusicCurationForAssetContainer_recentlyUsedAdamIDs_resultHandler___block_invoke(id *a1)
{
  v40[3] = *MEMORY[0x1E69E9840];
  v2 = [a1[8] log];
  v3 = os_signpost_id_make_with_pointer(v2, a1[8]);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "StoryMusicCuratorAppleMusic", "", buf, 2u);
  }

  v6 = [a1[4] photoLibrary];
  v7 = [v6 photoAnalysisClient];
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__PXMusicCurator_requestAppleMusicCurationForAssetContainer_recentlyUsedAdamIDs_resultHandler___block_invoke_211;
    aBlock[3] = &unk_1E7742FE8;
    v31 = a1[4];
    v32 = a1[5];
    v35 = a1[7];
    v29 = v6;
    v33 = v6;
    v34 = v5;
    v36 = v3;
    v28 = _Block_copy(aBlock);
    v8 = +[PXMemoriesRelatedSettings sharedInstance];
    v9 = [v8 useOnlyMusicForTopicInTopPickSuggestions];
    v10 = [v8 includeChillMixInMusicForYou];
    v11 = [v8 includeGetUpMixInMusicForYou];
    v12 = objc_alloc(MEMORY[0x1E695DF90]);
    v39[0] = *MEMORY[0x1E69BECB8];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v40[0] = v13;
    v39[1] = *MEMORY[0x1E69BEC50];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:v10];
    v40[1] = v14;
    v39[2] = *MEMORY[0x1E69BEC58];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v40[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v17 = [v12 initWithDictionary:v16];

    v18 = [a1[6] copy];
    [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69BEB40]];

    v19 = [a1[4] originalContainer];
    v20 = [v19 localIdentifier];
    [v17 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BEA20]];

    v21 = [a1[4] assetCollection];
    if ([v21 isTransient])
    {
      v22 = [v21 photoLibrary];
      v23 = [v22 librarySpecificFetchOptions];

      v38 = *MEMORY[0x1E6978C68];
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [v23 setFetchPropertySets:v24];

      [v23 setWantsIncrementalChangeDetails:0];
      [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v21 options:v23];
      objc_claimAutoreleasedReturnValue();
      PXMap();
    }

    v27 = [v21 localIdentifier];
    [v7 requestMusicCurationForAssetCollectionLocalIdentifier:v27 options:v17 reply:v28];

    v26 = v31;
    v6 = v29;
  }

  else
  {
    [a1[5] setCompletedUnitCount:{objc_msgSend(a1[5], "totalUnitCount")}];
    v25 = a1[7];
    v26 = +[PXMusicCurator _invalidPhotoAnalysisClientError];
    v25[2](v25, 0, v26);
  }
}

void __95__PXMusicCurator_requestAppleMusicCurationForAssetContainer_recentlyUsedAdamIDs_resultHandler___block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLStoryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v40 = v8;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestMusicCuration received reply for asset container (%@).", buf, 0xCu);
  }

  if ([*(a1 + 40) isCancelled])
  {
    v9 = PLStoryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v40 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestMusicCuration was cancelled for asset container (%@) -> exiting without calling resultHandler.", buf, 0xCu);
    }
  }

  else
  {
    v9 = +[PXStorySettings sharedInstance];
    if ([v9 musicSimulatedFailureMode]== 3)
    {
      v17 = PXStoryErrorCreateWithCodeDebugFormat(5, @"Simulated Error", v11, v12, v13, v14, v15, v16, v36);
      v18 = PLStoryGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 32) identifier];
        *buf = 138412546;
        v40 = v19;
        v41 = 2112;
        v42 = v17;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestMusicCuration failed for asset container (%@) with error: %@.", buf, 0x16u);
      }

      [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      if ([v9 musicSimulatedFailureMode]== 2)
      {
        [MEMORY[0x1E696AF00] sleepForTimeInterval:10.0];
      }

      if ([v5 length])
      {
        v20 = [v5 dataUsingEncoding:4];
        v38 = 0;
        v21 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v20 options:0 error:&v38];
        v22 = v38;
        if ([v21 count])
        {
          v23 = [PXAppleMusicCuration curationFromDictionary:v21 photoLibrary:*(a1 + 48)];
          v24 = PLStoryGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [*(a1 + 32) identifier];
            [v23 bestMusicSuggestions];
            v37 = v20;
            v27 = v26 = v22;
            v28 = [v27 count];
            *buf = 138412546;
            v40 = v25;
            v41 = 2048;
            v42 = v28;
            _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) requestMusicCuration finished successfully for asset container (%@) with bestMusicSuggestions count: %ld.", buf, 0x16u);

            v22 = v26;
            v20 = v37;
          }

          [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
          (*(*(a1 + 64) + 16))();
          v29 = *(a1 + 56);
          v30 = v29;
          v31 = *(a1 + 72);
          if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v30, OS_SIGNPOST_INTERVAL_END, v31, "StoryMusicCuratorAppleMusic", "", buf, 2u);
          }
        }

        else
        {
          v34 = PLStoryGetLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = [*(a1 + 32) identifier];
            *buf = 138412546;
            v40 = v35;
            v41 = 2112;
            v42 = v22;
            _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestMusicCuration failed for asset container (%@) with JSON serialization error: %@.", buf, 0x16u);
          }

          [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
          (*(*(a1 + 64) + 16))();
        }
      }

      else
      {
        v32 = PLStoryGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = [*(a1 + 32) identifier];
          *buf = 138412546;
          v40 = v33;
          v41 = 2112;
          v42 = v6;
          _os_log_impl(&dword_1A3C1C000, v32, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurator) requestMusicCuration failed for asset container (%@) with error: %@.", buf, 0x16u);
        }

        [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
        (*(*(a1 + 64) + 16))();
      }
    }
  }
}

+ (id)bestLocallyAvailableAudioAssetForAssetContainer:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 log];
  v6 = os_signpost_id_make_with_pointer(v5, a1);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StoryMusicCuratorBestLocallyAvailable", "", &v21, 2u);
  }

  v9 = [v4 container];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;

    if (v10)
    {
      v11 = [v10 suggestedMood];
      goto LABEL_10;
    }
  }

  else
  {

    v10 = 0;
  }

  v11 = 16;
LABEL_10:
  v12 = +[PXFlexMusicLibrary sharedLibrary];
  v13 = [v12 fetchLocalAssetForMood:v11];
  v14 = [v13 firstObject];

  v15 = PLStoryGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v4 identifier];
    v17 = [v14 identifier];
    v21 = 138412546;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_INFO, "[MemoriesMusic] (PXMusicCurator) bestLocallyAvailableAudioAssetForAssetContainer finished successfully for asset container (%@) with song: %@.", &v21, 0x16u);
  }

  v18 = v8;
  v19 = v18;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, OS_SIGNPOST_INTERVAL_END, v6, "StoryMusicCuratorBestLocallyAvailable", "", &v21, 2u);
  }

  return v14;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__PXMusicCurator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_197859 != -1)
  {
    dispatch_once(&log_onceToken_197859, block);
  }

  v2 = log_log_197860;

  return v2;
}

void __21__PXMusicCurator_log__block_invoke(uint64_t a1)
{
  v1 = NSStringFromClass(*(a1 + 32));
  v2 = [v1 UTF8String];

  v3 = os_log_create(*MEMORY[0x1E69BFF60], v2);
  v4 = log_log_197860;
  log_log_197860 = v3;
}

+ (id)_requestQueue
{
  if (_requestQueue_onceToken != -1)
  {
    dispatch_once(&_requestQueue_onceToken, &__block_literal_global_197861);
  }

  v3 = _requestQueue_queue;

  return v3;
}

void __31__PXMusicCurator__requestQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("PXMusicCuration", v0);
  v2 = _requestQueue_queue;
  _requestQueue_queue = v1;
}

@end