@interface PXSharingUserSafetyController
+ (BOOL)userSafetyInterventionCheckRequired;
+ (void)_analyzeAsset:(id)asset withSensitivityAnalyzer:(id)analyzer activeRequests:(id)requests completionHandler:(id)handler;
+ (void)_analyzeAssetWithFileURL:(id)l withSensitivityAnalyzer:(id)analyzer completionHandler:(id)handler;
+ (void)_updateAsset:(id)asset withAnalysisResult:(id)result forVideoComplement:(BOOL)complement;
+ (void)_userSafetyInterventionCheckRequiredBeforeSharingAssets:(id)assets completion:(id)completion;
+ (void)userSafetyInterventionCheckRequiredBeforeSharingAssets:(id)assets completion:(id)completion;
@end

@implementation PXSharingUserSafetyController

+ (void)_analyzeAssetWithFileURL:(id)l withSensitivityAnalyzer:(id)analyzer completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__PXSharingUserSafetyController__analyzeAssetWithFileURL_withSensitivityAnalyzer_completionHandler___block_invoke;
  v11[3] = &unk_1E7746BB0;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = lCopy;
  v10 = handlerCopy;
  [analyzer analyzeFile:v9 options:0 progressHandler:0 completionHandler:v11];
}

+ (void)_analyzeAsset:(id)asset withSensitivityAnalyzer:(id)analyzer activeRequests:(id)requests completionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  analyzerCopy = analyzer;
  requestsCopy = requests;
  handlerCopy = handler;
  v13 = PLSharingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    localIdentifier = [assetCopy localIdentifier];
    *buf = 138412546;
    v49 = localIdentifier;
    v50 = 2048;
    mediaType = [assetCopy mediaType];
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "[Civic] Analyzing %@ with media type: %ld", buf, 0x16u);
  }

  localIdentifier2 = [assetCopy localIdentifier];
  photoLibrary = [assetCopy photoLibrary];
  photoLibraryURL = [photoLibrary photoLibraryURL];

  mediaType2 = [assetCopy mediaType];
  if (mediaType2 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  if (mediaType2 != 2)
  {
    v21 = mediaType2;
    if (![assetCopy isPhotoIris] || (objc_msgSend(assetCopy, "isPhotoIrisPlaceholder") & 1) != 0 || !objc_msgSend(assetCopy, "canPlayPhotoIris"))
    {
      if (v21 == 1)
      {
        if ([MEMORY[0x1E6978AB0] assetNeedsThumbnailSensitivityProcessingForPickerSharing:assetCopy])
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_3;
          v29[3] = &unk_1E7746B88;
          v30 = assetCopy;
          v31 = requestsCopy;
          v32 = analyzerCopy;
          v33 = localIdentifier2;
          v34 = photoLibraryURL;
          v35 = handlerCopy;
          v36 = 1;
          [v32 analyzeImageWithLocalIdentifier:v33 fromPhotoLibraryWithURL:v34 completionHandler:v29];

          v20 = v30;
          goto LABEL_20;
        }

        uuid = [assetCopy uuid];
        v37 = 0;
        v28 = [MEMORY[0x1E6978AB0] sensitivityAnalysisFromAsset:assetCopy outError:&v37];
        v20 = v37;
        (*(handlerCopy + 2))(handlerCopy, uuid, 0, v28, 1, v20);
      }

      else
      {
        v20 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Unsupported Media Type"];
        uuid = [assetCopy uuid];
        (*(handlerCopy + 2))(handlerCopy, uuid, 0, 0, 1, v20);
      }

      goto LABEL_20;
    }
  }

  if ([MEMORY[0x1E6978AB0] assetNeedsVideoSensitivityProcessingForPickerSharing:assetCopy])
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_212;
    v38[3] = &unk_1E7746B38;
    v39 = assetCopy;
    v40 = requestsCopy;
    v41 = analyzerCopy;
    v42 = localIdentifier2;
    v43 = photoLibraryURL;
    v44 = &__block_literal_global_211_217769;
    v45 = handlerCopy;
    v46 = v19;
    [v41 analyzeVideoWithLocalIdentifier:v42 fromPhotoLibraryWithURL:v43 progressHandler:&__block_literal_global_211_217769 completionHandler:v38];

    v20 = v39;
  }

  else
  {
    [assetCopy uuid];
    v22 = requestsCopy;
    v24 = v23 = analyzerCopy;
    v47 = 0;
    [MEMORY[0x1E6978AB0] sensitivityAnalysisFromAsset:assetCopy outError:&v47];
    v26 = v25 = photoLibraryURL;
    v20 = v47;
    (*(handlerCopy + 2))(handlerCopy, v24, 0, v26, v19, v20);

    photoLibraryURL = v25;
    analyzerCopy = v23;
    requestsCopy = v22;
  }

LABEL_20:
}

void __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_212(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) localIdentifier];
      v9 = [*(a1 + 32) mediaType];
      *buf = 138412802;
      v27 = v8;
      v28 = 2048;
      v29 = v9;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "[Civic] Failed to analyze %@ with media type: %ld (error: %@). Will retry after download.", buf, 0x20u);
    }

    v10 = [objc_alloc(MEMORY[0x1E6978A20]) initWithAsset:*(a1 + 32) requestType:3];
    [*(a1 + 40) addObject:v10];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_214;
    v16[3] = &unk_1E7746B10;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v23 = *(a1 + 72);
    v20 = *(a1 + 32);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    v24 = v11;
    v25 = v12;
    v21 = *(a1 + 40);
    v22 = v10;
    v13 = v10;
    [v13 retrieveRequiredResourcesWithOptions:0 completionHandler:v16];
  }

  else
  {
    [PXSharingUserSafetyController _updateAsset:*(a1 + 32) withAnalysisResult:v5 forVideoComplement:1];
    v14 = *(a1 + 80);
    v15 = [*(a1 + 32) uuid];
    (*(v14 + 16))(v14, v15, 0, v5, *(a1 + 88), 0);
  }
}

void __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) localIdentifier];
      v9 = [*(a1 + 32) mediaType];
      *buf = 138412802;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "[Civic] Failed to analyze %@ with media type: %ld (error: %@). Will retry after download.", buf, 0x20u);
    }

    v10 = [objc_alloc(MEMORY[0x1E6978A20]) initWithAsset:*(a1 + 32) requestType:3];
    [*(a1 + 40) addObject:v10];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_217;
    v16[3] = &unk_1E7746B60;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v20 = *(a1 + 32);
    v11 = *(a1 + 72);
    v12 = *(a1 + 80);
    v23 = v11;
    v24 = v12;
    v21 = *(a1 + 40);
    v22 = v10;
    v13 = v10;
    [v13 retrieveRequiredResourcesWithOptions:0 completionHandler:v16];
  }

  else
  {
    [PXSharingUserSafetyController _updateAsset:*(a1 + 32) withAnalysisResult:v5 forVideoComplement:0];
    v14 = *(a1 + 72);
    v15 = [*(a1 + 32) uuid];
    (*(v14 + 16))(v14, v15, 0, v5, *(a1 + 80), 0);
  }
}

void __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_217(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_2_218;
  v10[3] = &unk_1E7746AE8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v13 = *(a1 + 88);
  v7 = *(a1 + 64);
  *&v8 = *(a1 + 72);
  *(&v8 + 1) = v6;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v2 analyzeImageWithLocalIdentifier:v3 fromPhotoLibraryWithURL:v4 completionHandler:v10];
}

uint64_t __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_2_218(uint64_t *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  [PXSharingUserSafetyController _updateAsset:v5 withAnalysisResult:v7 forVideoComplement:0];
  v8 = a1[7];
  v9 = [a1[4] uuid];
  (*(v8 + 16))(v8, v9, 0, v7, a1[8], v6);

  v10 = a1[5];
  v11 = a1[6];

  return [v10 removeObject:v11];
}

void __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke(double a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 134217984;
    v4 = a1;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEBUG, "[Civic] Current video analyzation progress: %f", &v3, 0xCu);
  }
}

void __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_214(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7746AE8;
  v5 = *(a1 + 48);
  v9 = *(a1 + 56);
  v6 = *(a1 + 88);
  v7 = *(a1 + 96);
  v12 = v6;
  v13 = v7;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v2 analyzeVideoWithLocalIdentifier:v3 fromPhotoLibraryWithURL:v5 progressHandler:v4 completionHandler:v8];
}

uint64_t __104__PXSharingUserSafetyController__analyzeAsset_withSensitivityAnalyzer_activeRequests_completionHandler___block_invoke_2(uint64_t *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  [PXSharingUserSafetyController _updateAsset:v5 withAnalysisResult:v7 forVideoComplement:1];
  v8 = a1[7];
  v9 = [a1[4] uuid];
  (*(v8 + 16))(v8, v9, 0, v7, a1[8], v6);

  v10 = a1[5];
  v11 = a1[6];

  return [v10 removeObject:v11];
}

+ (void)_userSafetyInterventionCheckRequiredBeforeSharingAssets:(id)assets completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  completionCopy = completion;
  if ([self userSafetyInterventionCheckRequired])
  {
    v22 = completionCopy;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v55[3] = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v54 = 0;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = __Block_byref_object_copy__217782;
    v51[4] = __Block_byref_object_dispose__217783;
    v52 = 0;
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v50[3] = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__217782;
    v48 = __Block_byref_object_dispose__217783;
    v49 = [MEMORY[0x1E695DFA8] set];
    v7 = dispatch_group_create();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__PXSharingUserSafetyController__userSafetyInterventionCheckRequiredBeforeSharingAssets_completion___block_invoke;
    aBlock[3] = &unk_1E7746A98;
    v40 = v55;
    v41 = v50;
    v42 = v53;
    v43 = v51;
    v8 = v7;
    v39 = v8;
    v9 = _Block_copy(aBlock);
    v10 = objc_alloc_init(MEMORY[0x1E697B678]);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = assetsCopy;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v58 count:16];
    if (v11)
    {
      v12 = *v35;
      v24 = *MEMORY[0x1E6978F50];
      v25 = *MEMORY[0x1E696A278];
      do
      {
        v13 = 0;
        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * v13);
          dispatch_group_enter(v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [PXSharingUserSafetyController _analyzeAsset:v14 withSensitivityAnalyzer:v10 activeRequests:v45[5] completionHandler:v9];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              fileURL = [v15 url];
              [PXSharingUserSafetyController _analyzeAssetWithFileURL:fileURL withSensitivityAnalyzer:v10 completionHandler:v9];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = v14;
                fileURL = [v15 fileURL];
                [PXSharingUserSafetyController _analyzeAssetWithFileURL:fileURL withSensitivityAnalyzer:v10 completionHandler:v9];
              }

              else
              {
                v17 = MEMORY[0x1E696AEC0];
                v18 = objc_opt_class();
                v19 = NSStringFromClass(v18);
                v15 = [v17 stringWithFormat:@"Analysis requested for asset of class %@", v19];

                v20 = MEMORY[0x1E696ABC0];
                v56 = v25;
                v57 = v15;
                fileURL = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
                v21 = [v20 errorWithDomain:v24 code:4302 userInfo:fileURL];
                (*(v9 + 2))(v9, 0, 0, 0, 0, v21);
              }
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v34 objects:v58 count:16];
      }

      while (v11);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__PXSharingUserSafetyController__userSafetyInterventionCheckRequiredBeforeSharingAssets_completion___block_invoke_207;
    block[3] = &unk_1E7746AC0;
    v29 = &v44;
    v30 = v55;
    v31 = v50;
    v28 = v22;
    v32 = v53;
    v33 = v51;
    dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(v50, 8);
    _Block_object_dispose(v51, 8);

    _Block_object_dispose(v53, 8);
    _Block_object_dispose(v55, 8);
    completionCopy = v22;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
  }
}

void __100__PXSharingUserSafetyController__userSafetyInterventionCheckRequiredBeforeSharingAssets_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (v13 && ([v13 isContentPreviewable] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v13 compactAnalysis];
    *(*(*(a1 + 48) + 8) + 24) = a5;
  }

  if (v14)
  {
    if (v11)
    {
      v15 = PLSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v31 = 138543618;
        v32 = v11;
        v33 = 2112;
        v34 = v14;
        v16 = "[Civic] Failed to analyze %{public}@ (error: %@)";
LABEL_16:
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, v16, &v31, 0x16u);
      }
    }

    else
    {
      if (!v12)
      {
LABEL_18:
        *(*(*(a1 + 56) + 8) + 24) = 1;
        v22 = *(*(a1 + 64) + 8);
        v23 = v14;
        v18 = *(v22 + 40);
        *(v22 + 40) = v23;
        goto LABEL_25;
      }

      v15 = PLSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v31 = 138412546;
        v32 = v12;
        v33 = 2112;
        v34 = v14;
        v16 = "[Civic] Failed to analyze asset from url: %@, error: %@";
        goto LABEL_16;
      }
    }

    goto LABEL_18;
  }

  v17 = *(*(*(a1 + 40) + 8) + 24);
  if (v11)
  {
    v18 = PLSharingGetLog();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:

      goto LABEL_26;
    }

    v19 = @"YES";
    if (!v17)
    {
      v19 = @"NO";
    }

    v20 = v19;
    v31 = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = v20;
    v21 = "[Civic] Analysis completed for %{public}@ (isSensitive: %@)";
LABEL_24:
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, v21, &v31, 0x16u);

    goto LABEL_25;
  }

  if (v12)
  {
    v18 = PLSharingGetLog();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v24 = @"YES";
    if (!v17)
    {
      v24 = @"NO";
    }

    v20 = v24;
    v31 = 138412546;
    v32 = v12;
    v33 = 2112;
    v34 = v20;
    v21 = "[Civic] Analysis completed for asset from URL: %@ (isSensitive: %@)";
    goto LABEL_24;
  }

LABEL_26:
  if (PFOSVariantHasInternalUI())
  {
    v25 = PXSharedUserDefaults();
    v26 = [v25 BOOLForKey:@"alwaysShowUserSafetyInterventionUI"];

    if (v26)
    {
      v27 = PLSharingGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_DEFAULT, "[Civic] Force showing safety intervention UI.", &v31, 2u);
      }

      v28 = [objc_alloc(MEMORY[0x1E697B670]) initMigratingFromNudityDetectionValue:1];
      *(*(*(a1 + 40) + 8) + 24) = [v28 compactAnalysis];
      *(*(*(a1 + 48) + 8) + 24) = 2;
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = 0;

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (void)userSafetyInterventionCheckRequiredBeforeSharingAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__PXSharingUserSafetyController_userSafetyInterventionCheckRequiredBeforeSharingAssets_completion___block_invoke;
  v10[3] = &unk_1E7746A70;
  v11 = assetsCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = assetsCopy;
  [self _userSafetyInterventionCheckRequiredBeforeSharingAssets:v9 completion:v10];
}

void __99__PXSharingUserSafetyController_userSafetyInterventionCheckRequiredBeforeSharingAssets_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a5;
  if (a4)
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_FAULT, "User safety intervention check failed to analyze assets (%@): %@", &v10, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)_updateAsset:(id)asset withAnalysisResult:(id)result forVideoComplement:(BOOL)complement
{
  v18 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resultCopy = result;
  if (resultCopy)
  {
    photoLibrary = [assetCopy photoLibrary];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__PXSharingUserSafetyController__updateAsset_withAnalysisResult_forVideoComplement___block_invoke;
    v12[3] = &unk_1E774B368;
    v13 = assetCopy;
    complementCopy = complement;
    v14 = resultCopy;
    [photoLibrary performChanges:v12 completionHandler:&__block_literal_global_217814];

    v10 = v13;
  }

  else
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [assetCopy localIdentifier];
      *buf = 138412290;
      v17 = localIdentifier;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "No analysis result received for asset: %@", buf, 0xCu);
    }
  }
}

void __84__PXSharingUserSafetyController__updateAsset_withAnalysisResult_forVideoComplement___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E6978648] changeRequestForAsset:*(a1 + 32)];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) compactAnalysis];
  if (v2 == 1)
  {
    [v4 setCompactVideoSCSensitivityAnalysis:v3];
  }

  else
  {
    [v4 setCompactImageSCSensitivityAnalysis:v3];
  }
}

void __84__PXSharingUserSafetyController__updateAsset_withAnalysisResult_forVideoComplement___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Error updating sensitivity analys result for asset: %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)userSafetyInterventionCheckRequired
{
  if (PFOSVariantHasInternalUI() && (PXSharedUserDefaults(), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 BOOLForKey:@"alwaysShowUserSafetyInterventionUI"], v2, v3))
  {
    v4 = PLSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "[Civic] Force showing safety intervention UI.", v8, 2u);
    }

    return 1;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v6 = getUSSensitivityAnalyzerClass_softClass;
    v12 = getUSSensitivityAnalyzerClass_softClass;
    if (!getUSSensitivityAnalyzerClass_softClass)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getUSSensitivityAnalyzerClass_block_invoke;
      v8[3] = &unk_1E774BD00;
      v8[4] = &v9;
      __getUSSensitivityAnalyzerClass_block_invoke(v8);
      v6 = v10[3];
    }

    v7 = v6;
    _Block_object_dispose(&v9, 8);
    return [v6 isCommunicationSafetyEnabled];
  }
}

@end