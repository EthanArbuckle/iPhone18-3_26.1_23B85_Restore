@interface PESmartPasteablePreset
+ (BOOL)isAssetTypeEligibleForSmartPaste:(id)a3;
+ (BOOL)isCompositionControllerEligibleForSmartPaste:(id)a3;
- (BOOL)_shouldPerformSmartPasteOnAsset:(id)a3;
- (PESmartPasteablePreset)initWithPasteablePreset:(id)a3;
- (id)sceneCharacteristicDescription:(unint64_t)a3;
- (unint64_t)_imageClassificationsForAsset:(id)a3;
- (void)_loadResourcesForSourceAssetWithPhotoLibrary:(id)a3 completion:(id)a4;
- (void)applyToCompositionController:(id)a3 asset:(id)a4 editSource:(id)a5 completion:(id)a6;
- (void)applyToLoadResult:(id)a3 completion:(id)a4;
- (void)setShouldBypassGating:(BOOL)a3;
- (void)triggerLegacyPasteFallbackOnCompositionController:(id)a3 editSource:(id)a4 asset:(id)a5 reviewPayload:(id)a6 completion:(id)a7;
@end

@implementation PESmartPasteablePreset

- (void)setShouldBypassGating:(BOOL)a3
{
  v5 = +[PEGlobalSettings sharedSettings];
  v6 = [v5 smartCopyPasteReviewUIEnabled];

  if (v6)
  {
    self->_shouldBypassGating = a3;
  }
}

- (BOOL)_shouldPerformSmartPasteOnAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [(PESmartPasteablePreset *)self sourceAsset];
  v7 = [v6 uuid];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    goto LABEL_2;
  }

  if ([(PESmartPasteablePreset *)self shouldBypassGating])
  {
    v9 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_2:
    v9 = 0;
  }

  else
  {
    v10 = v4;
    v11 = +[PEGlobalSettings sharedSettings];
    v12 = [v11 smartCopyPasteGateOnCaptureTime];

    if (v12)
    {
      v13 = [(PESmartPasteablePreset *)self sourceAsset];
      v14 = [v13 creationDate];

      v15 = [v10 creationDate];
      [v14 timeIntervalSinceDate:v15];
      v17 = fabs(v16);
      v9 = v17 <= 14400.0;
      if (v17 > 14400.0)
      {
        v18 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *v20 = 0;
          _os_log_impl(&dword_25E6E9000, v18, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset_shouldPerformSmartPasteOnAsset: capture times are too far apart; not using smart paste", v20, 2u);
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

LABEL_14:

  return v9;
}

- (id)sceneCharacteristicDescription:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PESmartPasteablePreset_sceneCharacteristicDescription___block_invoke;
  v7[3] = &unk_279A30430;
  v7[4] = &v8;
  v7[5] = a3;
  v3 = _Block_copy(v7);
  v3[2](v3, 1, @"Outdoor");
  v3[2](v3, 2, @"Indoor");
  v3[2](v3, 4, @"Daytime");
  v3[2](v3, 8, @"Nighttime");
  v4 = v9[5];
  if (!v4)
  {
    v4 = @"(none)";
  }

  v5 = v4;

  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __57__PESmartPasteablePreset_sceneCharacteristicDescription___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((*(a1 + 40) & a2) != 0)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    v14 = v6;
    if (v8)
    {
      v9 = [v8 stringByAppendingFormat:@" | %@", v6];
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v12 = v6;
      v11 = *(v7 + 40);
      *(v7 + 40) = v12;
    }

    v6 = v14;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (unint64_t)_imageClassificationsForAsset:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CD9810]);
  v5 = [v3 photoLibrary];
  v6 = [v4 initWithPhotoLibrary:v5];

  [v3 fetchPropertySetsIfNeeded];
  v7 = [v3 sceneAnalysisProperties];
  v27 = v3;
  v8 = [v3 sceneClassifications];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v28 = 0;
    v11 = *v31;
    v12 = *MEMORY[0x277CD9B38];
    v29 = *MEMORY[0x277CD9B30];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        if ([v14 extendedSceneIdentifier] == v12 || objc_msgSend(v14, "extendedSceneIdentifier") == v29)
        {
          v15 = [v6 _sceneConfidenceThresholdByClassificationIdentifier:objc_msgSend(v14 sceneAnalysisVersion:{"extendedSceneIdentifier"), objc_msgSend(v7, "sceneAnalysisVersion")}];
          v16 = v15;
          if (v15)
          {
            [v15 doubleValue];
            v18 = v17;
            [v14 confidence];
            if (v18 < v19)
            {
              v20 = v7;
              v21 = v6;
              v22 = v8;
              v23 = v28 | ([v14 extendedSceneIdentifier] == v12);
              v24 = [v14 extendedSceneIdentifier];
              v25 = v23 | 2;
              if (v24 != v29)
              {
                v25 = v23;
              }

              v28 = v25;
              v8 = v22;
              v6 = v21;
              v7 = v20;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)triggerLegacyPasteFallbackOnCompositionController:(id)a3 editSource:(id)a4 asset:(id)a5 reviewPayload:(id)a6 completion:(id)a7
{
  v31[1] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [PEPasteablePreset alloc];
  v18 = [(PEAdjustmentPreset *)self serializedDictionary];
  v19 = [(PEAdjustmentPreset *)v17 initWithPropertyListDictionary:v18];

  v20 = [(PEEditAction *)self analyticsEventBuilderDelegate];
  [(PEEditAction *)v19 setAnalyticsEventBuilderDelegate:v20];

  [(PEAdjustmentPreset *)v19 applyToCompositionController:v16 asset:v12 editSource:v15 completion:v14];
  v21 = [(PEEditAction *)self analyticsEventBuilderDelegate];

  if (v21)
  {
    v22 = [(PEEditAction *)self analyticsEventBuilderDelegate];
    v23 = [(PEPasteablePreset *)v19 actionType];
    if ((v23 - 1) > 7)
    {
      v24 = @"Unknown";
    }

    else
    {
      v24 = off_279A30810[v23 - 1];
    }

    v25 = v24;
    v31[0] = v12;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [v22 updateAnalyticsEventBuilderActionType:v25 forAssets:v26];
  }

  v27 = +[PEGlobalSettings sharedSettings];
  v28 = [v27 smartCopyPasteReviewUIEnabled];

  if (v13 && v28)
  {
    v29 = +[PESCAPReviewManager sharedReviewManager];
    v30 = [(PEPasteablePreset *)v19 expAndWBAdjustmentsDebugDescription];
    [v13 setAdjustmentsDescription:v30];

    [v29 registerPayload:v13 forAsset:v12];
  }
}

- (void)_loadResourcesForSourceAssetWithPhotoLibrary:(id)a3 completion:(id)a4
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PESmartPasteablePreset *)self sourceAsset];
  if (v8 && (v9 = v8, [(PESmartPasteablePreset *)self sourceAssetComposition], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v7[2](v7, 1, 0);
  }

  else
  {
    v11 = [v6 librarySpecificFetchOptions];
    [v11 setFetchLimit:1];
    v12 = *MEMORY[0x277CD9B18];
    v30[0] = *MEMORY[0x277CD9B10];
    v30[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    [v11 setFetchPropertySets:v13];

    v14 = [(PEPasteablePreset *)self sourceAssetUUID];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:&stru_2870659C0])
    {
      v19 = MEMORY[0x277CD97A8];
      v27 = v15;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v18 = [v19 fetchAssetsWithLocalIdentifiers:v20 options:v11];

      v21 = [v18 firstObject];
      if (v21)
      {
        [(PESmartPasteablePreset *)self setSourceAsset:v21];
        [(PESmartPasteablePreset *)self setSourceAssetSceneCharacteristics:[(PESmartPasteablePreset *)self _imageClassificationsForAsset:v21]];
        v22 = [(PEPasteablePreset *)self resourceManager];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __82__PESmartPasteablePreset__loadResourcesForSourceAssetWithPhotoLibrary_completion___block_invoke_2;
        v23[3] = &unk_279A30408;
        v24 = v21;
        v25 = self;
        v26 = v7;
        [v22 loadResourceForAsset:v24 requireLocalResources:1 forceRunAsUnadjustedAsset:0 progressHandler:&__block_literal_global_504 resultHandler:v23];
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"PEEditAction _loadResourcesForSourceAssetWithPhotoLibrary: no valid source asset UUID";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v18 = [v16 errorWithDomain:@"PEEditActionErrorDomain" code:0 userInfo:v17];

      (v7)[2](v7, 0, v18);
    }
  }
}

void __82__PESmartPasteablePreset__loadResourcesForSourceAssetWithPhotoLibrary_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 compositionController];
  if (v7)
  {
    v8 = [PEPasteablePreset alloc];
    v9 = [a1[5] serializedDictionary];
    v10 = [(PEAdjustmentPreset *)v8 initWithPropertyListDictionary:v9];

    v11 = a1[4];
    v12 = [v5 editSource];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__PESmartPasteablePreset__loadResourcesForSourceAssetWithPhotoLibrary_completion___block_invoke_380;
    v15[3] = &unk_279A303E0;
    v15[4] = a1[5];
    v16 = v7;
    v17 = a1[6];
    [(PEAdjustmentPreset *)v10 applyToCompositionController:v16 asset:v11 editSource:v12 completion:v15];
  }

  else
  {
    v13 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1[4] uuid];
      *buf = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_ERROR, "PEEditActionBatch failed to fetch resources for asset: %{public}@ error:%@", buf, 0x16u);
    }

    (*(a1[6] + 2))();
  }
}

uint64_t __82__PESmartPasteablePreset__loadResourcesForSourceAssetWithPhotoLibrary_completion___block_invoke_380(uint64_t a1)
{
  v2 = [*(a1 + 40) composition];
  [*(a1 + 32) setSourceAssetComposition:v2];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)applyToCompositionController:(id)a3 asset:(id)a4 editSource:(id)a5 completion:(id)a6
{
  v78 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([objc_opt_class() isAssetTypeEligibleForSmartPaste:v11])
  {
    v14 = v11;
    v15 = [(PESmartPasteablePreset *)self sourceAssetComposition];

    if (!v15)
    {
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v74 = 0x3032000000;
      v75 = __Block_byref_object_copy_;
      v76 = __Block_byref_object_dispose_;
      v77 = 0;
      v17 = [v14 photoLibrary];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __83__PESmartPasteablePreset_applyToCompositionController_asset_editSource_completion___block_invoke;
      v66[3] = &unk_279A30390;
      p_buf = &buf;
      v18 = v16;
      v67 = v18;
      [(PESmartPasteablePreset *)self _loadResourcesForSourceAssetWithPhotoLibrary:v17 completion:v66];

      dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
      v19 = [(PESmartPasteablePreset *)self sourceAssetComposition];
      LODWORD(v17) = v19 == 0;

      if (v17)
      {
        v37 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = [*(*(&buf + 1) + 40) localizedDescription];
          *v69 = 138412546;
          v70 = v14;
          v71 = 2112;
          v72 = v38;
          _os_log_impl(&dword_25E6E9000, v37, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset-applyToLoadResult: couldn't load source asset (%@) resources for smart paste (error: %@). Falling back on legacy paste", v69, 0x16u);
        }

        v39 = [PESCAPReviewPayload legacyPayloadWithReason:3];
        [(PESmartPasteablePreset *)self triggerLegacyPasteFallbackOnCompositionController:v10 editSource:v12 asset:v14 reviewPayload:v39 completion:v13];

        _Block_object_dispose(&buf, 8);
        goto LABEL_35;
      }

      _Block_object_dispose(&buf, 8);
    }

    if ([objc_opt_class() isAssetTypeEligibleForSmartPaste:v14] && -[PESmartPasteablePreset _shouldPerformSmartPasteOnAsset:](self, "_shouldPerformSmartPasteOnAsset:", v14))
    {
      v20 = objc_alloc(MEMORY[0x277D3A998]);
      v21 = [(PESmartPasteablePreset *)self sourceAssetComposition];
      v22 = [v10 composition];
      v18 = [v20 initWithSourceComposition:v21 targetComposition:v22];

      v23 = +[PEGlobalSettings sharedSettings];
      [v23 smartCopyPasteSimilarityGatingThreshold];
      v25 = v24;

      if (![(PESmartPasteablePreset *)self shouldBypassGating])
      {
        [v18 setSimilarityGatingThreshold:v25];
      }

      v26 = +[PEGlobalSettings sharedSettings];
      v27 = [v26 fetchAndSendScenePrintsForSliderNet];

      if (v27)
      {
        v28 = [(PESmartPasteablePreset *)self sourceAsset];
        v29 = v28 == 0;

        if (!v29)
        {
          v53 = MEMORY[0x277CCAAC8];
          VNSceneprintClass = getVNSceneprintClass();
          v30 = [(PESmartPasteablePreset *)self sourceAsset];
          v31 = [v30 sceneprintProperties];
          v32 = [v31 sceneprint];
          v65 = 0;
          v52 = [v53 unarchivedObjectOfClass:VNSceneprintClass fromData:v32 error:&v65];
          v54 = v65;

          if (v54)
          {
            v33 = PLPhotoEditGetLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = [v54 localizedDescription];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v34;
              _os_log_impl(&dword_25E6E9000, v33, OS_LOG_TYPE_ERROR, "PESmartPasteablePreset-applyToLoadResult: Failed to get scene print data from the source asset: (%@)", &buf, 0xCu);
            }
          }

          else
          {
            v33 = [v52 descriptorData];
            [v18 setSourceAssetScenePrint:v33];
          }
        }

        [v14 fetchPropertySetsIfNeeded];
        v55 = MEMORY[0x277CCAAC8];
        v40 = getVNSceneprintClass();
        v41 = [v14 sceneprintProperties];
        v42 = [v41 sceneprint];
        v64 = 0;
        v56 = [v55 unarchivedObjectOfClass:v40 fromData:v42 error:&v64];
        v43 = v64;

        if (v43)
        {
          v44 = PLPhotoEditGetLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v45 = [v43 localizedDescription];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v45;
            _os_log_impl(&dword_25E6E9000, v44, OS_LOG_TYPE_ERROR, "PESmartPasteablePreset-applyToLoadResult: Failed to get scene print data from the target asset: (%@)", &buf, 0xCu);
          }
        }

        else
        {
          v44 = [v56 descriptorData];
          [v18 setTargetAssetScenePrint:v44];
        }
      }

      v46 = dispatch_group_create();
      dispatch_group_enter(v46);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __83__PESmartPasteablePreset_applyToCompositionController_asset_editSource_completion___block_invoke_371;
      v57[3] = &unk_279A303B8;
      v63 = v25;
      v57[4] = self;
      v47 = v46;
      v58 = v47;
      v59 = v10;
      v60 = v12;
      v61 = v14;
      v62 = v13;
      [v18 submit:v57];
      v48 = dispatch_time(0, 1000000000);
      if (dispatch_group_wait(v47, v48))
      {
        v49 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_25E6E9000, v49, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset-applyToCompositionController: PISmartCopyPasteAutoCalculator timed out (>1sec)", &buf, 2u);
        }

        v50 = [v18 renderContext];
        [v50 cancelAllRequests];
      }
    }

    else
    {
      v36 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_25E6E9000, v36, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset-applyToLoadResult: asset (%@) isn't eligible for smart paste. Falling back on legacy paste", &buf, 0xCu);
      }

      v18 = [PESCAPReviewPayload legacyPayloadWithReason:5];
      [(PESmartPasteablePreset *)self triggerLegacyPasteFallbackOnCompositionController:v10 editSource:v12 asset:v14 reviewPayload:v18 completion:v13];
    }

LABEL_35:

    goto LABEL_36;
  }

  v35 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_25E6E9000, v35, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset-applyToLoadResult: asset (%@) isn't eligible for smart paste. Falling back on legacy paste", &buf, 0xCu);
  }

  v14 = [PESCAPReviewPayload legacyPayloadWithReason:4];
  [(PESmartPasteablePreset *)self triggerLegacyPasteFallbackOnCompositionController:v10 editSource:v12 asset:v11 reviewPayload:v14 completion:v13];
LABEL_36:
}

void __83__PESmartPasteablePreset_applyToCompositionController_asset_editSource_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __83__PESmartPasteablePreset_applyToCompositionController_asset_editSource_completion___block_invoke_371(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v3 = [a2 result:&v50];
  v4 = v50;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D3ABF0]];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v6 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v5 floatValue];
    v6 = v7;
  }

  if (v6 <= *(a1 + 80))
  {
    v8 = [*(a1 + 32) shouldBypassGating] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  dispatch_group_leave(*(a1 + 40));
  if (v3 && !v8)
  {
    v9 = objc_alloc(MEMORY[0x277D3A870]);
    v10 = [*(a1 + 32) composition];
    v11 = [v9 initWithComposition:v10];

    v12 = 0x279A2E000uLL;
    v13 = +[PEGlobalSettings sharedSettings];
    v14 = [v13 affectManuallyEditedSlidersOnly];

    if (v14)
    {
      v43 = v5;
      v44 = v4;
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = objc_alloc(MEMORY[0x277D3A870]);
      v17 = [*(a1 + 32) sourceAssetComposition];
      v18 = [v16 initWithComposition:v17];

      v42 = v18;
      v19 = [MEMORY[0x277D3A998] adjustmentsToModifyBasedOnSourceCompositionController:v18];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v47;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v46 + 1) + 8 * i);
            v25 = [v3 objectForKeyedSubscript:v24];
            [v15 setObject:v25 forKeyedSubscript:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v21);
      }

      v5 = v43;
      v4 = v44;
      v12 = 0x279A2E000;
    }

    else
    {
      v15 = v3;
    }

    [MEMORY[0x277D3A998] applyAdjustmentDictionary:v15 toCompositionController:v11];
    v29 = [(PESCAPReviewPayload *)v11 composition];
    [*(a1 + 32) setComposition:v29];

    v30 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v15 debugDescription];
      *buf = 134218242;
      v53 = v6;
      v54 = 2114;
      v55 = v31;
      _os_log_impl(&dword_25E6E9000, v30, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset-applyToCompositionController: similarity %f; applying smart paste to composition, with slider net values: %{public}@", buf, 0x16u);
    }

    v32 = [MEMORY[0x277D3A998] descriptionForAdjustmentDictionary:v15];
    objc_storeStrong((*(a1 + 32) + 56), v32);
    v33 = [*(v12 + 3640) sharedSettings];
    if ([(PESCAPReviewPayload *)v33 smartCopyPasteReviewUIEnabled])
    {
      v34 = [*(a1 + 32) shouldBypassGating];

      if (v34)
      {
LABEL_30:
        v36 = *(a1 + 48);
        v37 = *(a1 + 56);
        v38 = *(a1 + 64);
        v39 = *(a1 + 72);
        v45.receiver = *(a1 + 32);
        v45.super_class = PESmartPasteablePreset;
        objc_msgSendSuper2(&v45, sel_applyToCompositionController_asset_editSource_completion_, v36, v38, v37, v39);

        v3 = v15;
        goto LABEL_37;
      }

      v33 = [[PESCAPReviewPayload alloc] initWithActionType:1 reason:0 score:v32 adjustmentsDescription:v6];
      v35 = +[PESCAPReviewManager sharedReviewManager];
      [v35 registerPayload:v33 forAsset:*(a1 + 64)];
    }

    goto LABEL_30;
  }

  v26 = PLPhotoEditGetLog();
  v27 = v26;
  if (v3)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 80);
      *buf = 134218240;
      v53 = v6;
      v54 = 2048;
      v55 = v28;
      _os_log_impl(&dword_25E6E9000, v27, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset-applyToLoadResult: Source was not similar enough to destination. Similarity: %f / Threshold: %f. Falling back on legacy paste", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v40 = [v4 localizedDescription];
    *buf = 138412290;
    v53 = *&v40;
    _os_log_impl(&dword_25E6E9000, v27, OS_LOG_TYPE_ERROR, "PESmartPasteablePreset-applyToLoadResult: Failed to get slider net adjustment dict with error: %@. Falling back on legacy paste", buf, 0xCu);
  }

  if ([v4 code] == 10)
  {
    v41 = [PESCAPReviewPayload legacyPayloadWithReason:7];
  }

  else
  {
    v41 = [[PESCAPReviewPayload alloc] initWithActionType:0 reason:6 score:0 adjustmentsDescription:v6];
  }

  v11 = v41;
  [*(a1 + 32) triggerLegacyPasteFallbackOnCompositionController:*(a1 + 48) editSource:*(a1 + 56) asset:*(a1 + 64) reviewPayload:v41 completion:*(a1 + 72)];
LABEL_37:
}

- (void)applyToLoadResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [v7 compositionController];
  v8 = [v7 asset];
  v9 = [v7 editSource];

  [(PESmartPasteablePreset *)self applyToCompositionController:v10 asset:v8 editSource:v9 completion:v6];
}

- (PESmartPasteablePreset)initWithPasteablePreset:(id)a3
{
  v4 = a3;
  v5 = [v4 serializedDictionary];
  v9.receiver = self;
  v9.super_class = PESmartPasteablePreset;
  v6 = [(PEAdjustmentPreset *)&v9 initWithPropertyListDictionary:v5];

  if (v6)
  {
    v7 = [v4 analyticsEventBuilderDelegate];
    [(PEEditAction *)v6 setAnalyticsEventBuilderDelegate:v7];

    [(PESmartPasteablePreset *)v6 setShouldBypassGating:0];
  }

  return v6;
}

+ (BOOL)isCompositionControllerEligibleForSmartPaste:(id)a3
{
  v3 = a3;
  if ([PEAutoAdjustmentController isAutoEnhanceEnabledForCompositionController:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 smartToneAdjustmentController];
    if ([v5 enabled])
    {
      v4 = 1;
    }

    else
    {
      v6 = [v3 smartColorAdjustmentController];
      if ([v6 enabled])
      {
        v4 = 1;
      }

      else
      {
        v7 = [v3 whiteBalanceAdjustmentController];
        v4 = [v7 enabled];
      }
    }
  }

  return v4;
}

+ (BOOL)isAssetTypeEligibleForSmartPaste:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isVideo] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end