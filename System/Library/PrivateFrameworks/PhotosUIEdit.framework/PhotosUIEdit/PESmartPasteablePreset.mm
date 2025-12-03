@interface PESmartPasteablePreset
+ (BOOL)isAssetTypeEligibleForSmartPaste:(id)paste;
+ (BOOL)isCompositionControllerEligibleForSmartPaste:(id)paste;
- (BOOL)_shouldPerformSmartPasteOnAsset:(id)asset;
- (PESmartPasteablePreset)initWithPasteablePreset:(id)preset;
- (id)sceneCharacteristicDescription:(unint64_t)description;
- (unint64_t)_imageClassificationsForAsset:(id)asset;
- (void)_loadResourcesForSourceAssetWithPhotoLibrary:(id)library completion:(id)completion;
- (void)applyToCompositionController:(id)controller asset:(id)asset editSource:(id)source completion:(id)completion;
- (void)applyToLoadResult:(id)result completion:(id)completion;
- (void)setShouldBypassGating:(BOOL)gating;
- (void)triggerLegacyPasteFallbackOnCompositionController:(id)controller editSource:(id)source asset:(id)asset reviewPayload:(id)payload completion:(id)completion;
@end

@implementation PESmartPasteablePreset

- (void)setShouldBypassGating:(BOOL)gating
{
  v5 = +[PEGlobalSettings sharedSettings];
  smartCopyPasteReviewUIEnabled = [v5 smartCopyPasteReviewUIEnabled];

  if (smartCopyPasteReviewUIEnabled)
  {
    self->_shouldBypassGating = gating;
  }
}

- (BOOL)_shouldPerformSmartPasteOnAsset:(id)asset
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  sourceAsset = [(PESmartPasteablePreset *)self sourceAsset];
  uuid2 = [sourceAsset uuid];
  v8 = [uuid isEqual:uuid2];

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
    v10 = assetCopy;
    v11 = +[PEGlobalSettings sharedSettings];
    smartCopyPasteGateOnCaptureTime = [v11 smartCopyPasteGateOnCaptureTime];

    if (smartCopyPasteGateOnCaptureTime)
    {
      sourceAsset2 = [(PESmartPasteablePreset *)self sourceAsset];
      creationDate = [sourceAsset2 creationDate];

      creationDate2 = [v10 creationDate];
      [creationDate timeIntervalSinceDate:creationDate2];
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

- (id)sceneCharacteristicDescription:(unint64_t)description
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
  v7[5] = description;
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

- (unint64_t)_imageClassificationsForAsset:(id)asset
{
  v35 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v4 = objc_alloc(MEMORY[0x277CD9810]);
  photoLibrary = [assetCopy photoLibrary];
  v6 = [v4 initWithPhotoLibrary:photoLibrary];

  [assetCopy fetchPropertySetsIfNeeded];
  sceneAnalysisProperties = [assetCopy sceneAnalysisProperties];
  v27 = assetCopy;
  sceneClassifications = [assetCopy sceneClassifications];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [sceneClassifications countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(sceneClassifications);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        if ([v14 extendedSceneIdentifier] == v12 || objc_msgSend(v14, "extendedSceneIdentifier") == v29)
        {
          v15 = [v6 _sceneConfidenceThresholdByClassificationIdentifier:objc_msgSend(v14 sceneAnalysisVersion:{"extendedSceneIdentifier"), objc_msgSend(sceneAnalysisProperties, "sceneAnalysisVersion")}];
          v16 = v15;
          if (v15)
          {
            [v15 doubleValue];
            v18 = v17;
            [v14 confidence];
            if (v18 < v19)
            {
              v20 = sceneAnalysisProperties;
              v21 = v6;
              v22 = sceneClassifications;
              v23 = v28 | ([v14 extendedSceneIdentifier] == v12);
              extendedSceneIdentifier = [v14 extendedSceneIdentifier];
              v25 = v23 | 2;
              if (extendedSceneIdentifier != v29)
              {
                v25 = v23;
              }

              v28 = v25;
              sceneClassifications = v22;
              v6 = v21;
              sceneAnalysisProperties = v20;
            }
          }
        }
      }

      v10 = [sceneClassifications countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)triggerLegacyPasteFallbackOnCompositionController:(id)controller editSource:(id)source asset:(id)asset reviewPayload:(id)payload completion:(id)completion
{
  v31[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  payloadCopy = payload;
  completionCopy = completion;
  sourceCopy = source;
  controllerCopy = controller;
  v17 = [PEPasteablePreset alloc];
  serializedDictionary = [(PEAdjustmentPreset *)self serializedDictionary];
  v19 = [(PEAdjustmentPreset *)v17 initWithPropertyListDictionary:serializedDictionary];

  analyticsEventBuilderDelegate = [(PEEditAction *)self analyticsEventBuilderDelegate];
  [(PEEditAction *)v19 setAnalyticsEventBuilderDelegate:analyticsEventBuilderDelegate];

  [(PEAdjustmentPreset *)v19 applyToCompositionController:controllerCopy asset:assetCopy editSource:sourceCopy completion:completionCopy];
  analyticsEventBuilderDelegate2 = [(PEEditAction *)self analyticsEventBuilderDelegate];

  if (analyticsEventBuilderDelegate2)
  {
    analyticsEventBuilderDelegate3 = [(PEEditAction *)self analyticsEventBuilderDelegate];
    actionType = [(PEPasteablePreset *)v19 actionType];
    if ((actionType - 1) > 7)
    {
      v24 = @"Unknown";
    }

    else
    {
      v24 = off_279A30810[actionType - 1];
    }

    v25 = v24;
    v31[0] = assetCopy;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    [analyticsEventBuilderDelegate3 updateAnalyticsEventBuilderActionType:v25 forAssets:v26];
  }

  v27 = +[PEGlobalSettings sharedSettings];
  smartCopyPasteReviewUIEnabled = [v27 smartCopyPasteReviewUIEnabled];

  if (payloadCopy && smartCopyPasteReviewUIEnabled)
  {
    v29 = +[PESCAPReviewManager sharedReviewManager];
    expAndWBAdjustmentsDebugDescription = [(PEPasteablePreset *)v19 expAndWBAdjustmentsDebugDescription];
    [payloadCopy setAdjustmentsDescription:expAndWBAdjustmentsDebugDescription];

    [v29 registerPayload:payloadCopy forAsset:assetCopy];
  }
}

- (void)_loadResourcesForSourceAssetWithPhotoLibrary:(id)library completion:(id)completion
{
  v30[2] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  completionCopy = completion;
  sourceAsset = [(PESmartPasteablePreset *)self sourceAsset];
  if (sourceAsset && (v9 = sourceAsset, [(PESmartPasteablePreset *)self sourceAssetComposition], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setFetchLimit:1];
    v12 = *MEMORY[0x277CD9B18];
    v30[0] = *MEMORY[0x277CD9B10];
    v30[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    [librarySpecificFetchOptions setFetchPropertySets:v13];

    sourceAssetUUID = [(PEPasteablePreset *)self sourceAssetUUID];
    v15 = sourceAssetUUID;
    if (sourceAssetUUID && ![sourceAssetUUID isEqualToString:&stru_2870659C0])
    {
      v19 = MEMORY[0x277CD97A8];
      v27 = v15;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v18 = [v19 fetchAssetsWithLocalIdentifiers:v20 options:librarySpecificFetchOptions];

      firstObject = [v18 firstObject];
      if (firstObject)
      {
        [(PESmartPasteablePreset *)self setSourceAsset:firstObject];
        [(PESmartPasteablePreset *)self setSourceAssetSceneCharacteristics:[(PESmartPasteablePreset *)self _imageClassificationsForAsset:firstObject]];
        resourceManager = [(PEPasteablePreset *)self resourceManager];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __82__PESmartPasteablePreset__loadResourcesForSourceAssetWithPhotoLibrary_completion___block_invoke_2;
        v23[3] = &unk_279A30408;
        v24 = firstObject;
        selfCopy = self;
        v26 = completionCopy;
        [resourceManager loadResourceForAsset:v24 requireLocalResources:1 forceRunAsUnadjustedAsset:0 progressHandler:&__block_literal_global_504 resultHandler:v23];
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"PEEditAction _loadResourcesForSourceAssetWithPhotoLibrary: no valid source asset UUID";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v18 = [v16 errorWithDomain:@"PEEditActionErrorDomain" code:0 userInfo:v17];

      (completionCopy)[2](completionCopy, 0, v18);
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

- (void)applyToCompositionController:(id)controller asset:(id)asset editSource:(id)source completion:(id)completion
{
  v78 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  assetCopy = asset;
  sourceCopy = source;
  completionCopy = completion;
  if ([objc_opt_class() isAssetTypeEligibleForSmartPaste:assetCopy])
  {
    v14 = assetCopy;
    sourceAssetComposition = [(PESmartPasteablePreset *)self sourceAssetComposition];

    if (!sourceAssetComposition)
    {
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v74 = 0x3032000000;
      v75 = __Block_byref_object_copy_;
      v76 = __Block_byref_object_dispose_;
      v77 = 0;
      photoLibrary = [v14 photoLibrary];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __83__PESmartPasteablePreset_applyToCompositionController_asset_editSource_completion___block_invoke;
      v66[3] = &unk_279A30390;
      p_buf = &buf;
      v18 = v16;
      v67 = v18;
      [(PESmartPasteablePreset *)self _loadResourcesForSourceAssetWithPhotoLibrary:photoLibrary completion:v66];

      dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
      sourceAssetComposition2 = [(PESmartPasteablePreset *)self sourceAssetComposition];
      LODWORD(photoLibrary) = sourceAssetComposition2 == 0;

      if (photoLibrary)
      {
        v37 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          localizedDescription = [*(*(&buf + 1) + 40) localizedDescription];
          *v69 = 138412546;
          v70 = v14;
          v71 = 2112;
          v72 = localizedDescription;
          _os_log_impl(&dword_25E6E9000, v37, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset-applyToLoadResult: couldn't load source asset (%@) resources for smart paste (error: %@). Falling back on legacy paste", v69, 0x16u);
        }

        v39 = [PESCAPReviewPayload legacyPayloadWithReason:3];
        [(PESmartPasteablePreset *)self triggerLegacyPasteFallbackOnCompositionController:controllerCopy editSource:sourceCopy asset:v14 reviewPayload:v39 completion:completionCopy];

        _Block_object_dispose(&buf, 8);
        goto LABEL_35;
      }

      _Block_object_dispose(&buf, 8);
    }

    if ([objc_opt_class() isAssetTypeEligibleForSmartPaste:v14] && -[PESmartPasteablePreset _shouldPerformSmartPasteOnAsset:](self, "_shouldPerformSmartPasteOnAsset:", v14))
    {
      v20 = objc_alloc(MEMORY[0x277D3A998]);
      sourceAssetComposition3 = [(PESmartPasteablePreset *)self sourceAssetComposition];
      composition = [controllerCopy composition];
      v18 = [v20 initWithSourceComposition:sourceAssetComposition3 targetComposition:composition];

      v23 = +[PEGlobalSettings sharedSettings];
      [v23 smartCopyPasteSimilarityGatingThreshold];
      v25 = v24;

      if (![(PESmartPasteablePreset *)self shouldBypassGating])
      {
        [v18 setSimilarityGatingThreshold:v25];
      }

      v26 = +[PEGlobalSettings sharedSettings];
      fetchAndSendScenePrintsForSliderNet = [v26 fetchAndSendScenePrintsForSliderNet];

      if (fetchAndSendScenePrintsForSliderNet)
      {
        sourceAsset = [(PESmartPasteablePreset *)self sourceAsset];
        v29 = sourceAsset == 0;

        if (!v29)
        {
          v53 = MEMORY[0x277CCAAC8];
          VNSceneprintClass = getVNSceneprintClass();
          sourceAsset2 = [(PESmartPasteablePreset *)self sourceAsset];
          sceneprintProperties = [sourceAsset2 sceneprintProperties];
          sceneprint = [sceneprintProperties sceneprint];
          v65 = 0;
          v52 = [v53 unarchivedObjectOfClass:VNSceneprintClass fromData:sceneprint error:&v65];
          v54 = v65;

          if (v54)
          {
            descriptorData = PLPhotoEditGetLog();
            if (os_log_type_enabled(descriptorData, OS_LOG_TYPE_ERROR))
            {
              localizedDescription2 = [v54 localizedDescription];
              LODWORD(buf) = 138412290;
              *(&buf + 4) = localizedDescription2;
              _os_log_impl(&dword_25E6E9000, descriptorData, OS_LOG_TYPE_ERROR, "PESmartPasteablePreset-applyToLoadResult: Failed to get scene print data from the source asset: (%@)", &buf, 0xCu);
            }
          }

          else
          {
            descriptorData = [v52 descriptorData];
            [v18 setSourceAssetScenePrint:descriptorData];
          }
        }

        [v14 fetchPropertySetsIfNeeded];
        v55 = MEMORY[0x277CCAAC8];
        v40 = getVNSceneprintClass();
        sceneprintProperties2 = [v14 sceneprintProperties];
        sceneprint2 = [sceneprintProperties2 sceneprint];
        v64 = 0;
        v56 = [v55 unarchivedObjectOfClass:v40 fromData:sceneprint2 error:&v64];
        v43 = v64;

        if (v43)
        {
          descriptorData2 = PLPhotoEditGetLog();
          if (os_log_type_enabled(descriptorData2, OS_LOG_TYPE_ERROR))
          {
            localizedDescription3 = [v43 localizedDescription];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = localizedDescription3;
            _os_log_impl(&dword_25E6E9000, descriptorData2, OS_LOG_TYPE_ERROR, "PESmartPasteablePreset-applyToLoadResult: Failed to get scene print data from the target asset: (%@)", &buf, 0xCu);
          }
        }

        else
        {
          descriptorData2 = [v56 descriptorData];
          [v18 setTargetAssetScenePrint:descriptorData2];
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
      v59 = controllerCopy;
      v60 = sourceCopy;
      v61 = v14;
      v62 = completionCopy;
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

        renderContext = [v18 renderContext];
        [renderContext cancelAllRequests];
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
      [(PESmartPasteablePreset *)self triggerLegacyPasteFallbackOnCompositionController:controllerCopy editSource:sourceCopy asset:v14 reviewPayload:v18 completion:completionCopy];
    }

LABEL_35:

    goto LABEL_36;
  }

  v35 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = assetCopy;
    _os_log_impl(&dword_25E6E9000, v35, OS_LOG_TYPE_DEBUG, "PESmartPasteablePreset-applyToLoadResult: asset (%@) isn't eligible for smart paste. Falling back on legacy paste", &buf, 0xCu);
  }

  v14 = [PESCAPReviewPayload legacyPayloadWithReason:4];
  [(PESmartPasteablePreset *)self triggerLegacyPasteFallbackOnCompositionController:controllerCopy editSource:sourceCopy asset:assetCopy reviewPayload:v14 completion:completionCopy];
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

- (void)applyToLoadResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  resultCopy = result;
  compositionController = [resultCopy compositionController];
  asset = [resultCopy asset];
  editSource = [resultCopy editSource];

  [(PESmartPasteablePreset *)self applyToCompositionController:compositionController asset:asset editSource:editSource completion:completionCopy];
}

- (PESmartPasteablePreset)initWithPasteablePreset:(id)preset
{
  presetCopy = preset;
  serializedDictionary = [presetCopy serializedDictionary];
  v9.receiver = self;
  v9.super_class = PESmartPasteablePreset;
  v6 = [(PEAdjustmentPreset *)&v9 initWithPropertyListDictionary:serializedDictionary];

  if (v6)
  {
    analyticsEventBuilderDelegate = [presetCopy analyticsEventBuilderDelegate];
    [(PEEditAction *)v6 setAnalyticsEventBuilderDelegate:analyticsEventBuilderDelegate];

    [(PESmartPasteablePreset *)v6 setShouldBypassGating:0];
  }

  return v6;
}

+ (BOOL)isCompositionControllerEligibleForSmartPaste:(id)paste
{
  pasteCopy = paste;
  if ([PEAutoAdjustmentController isAutoEnhanceEnabledForCompositionController:pasteCopy])
  {
    enabled = 0;
  }

  else
  {
    smartToneAdjustmentController = [pasteCopy smartToneAdjustmentController];
    if ([smartToneAdjustmentController enabled])
    {
      enabled = 1;
    }

    else
    {
      smartColorAdjustmentController = [pasteCopy smartColorAdjustmentController];
      if ([smartColorAdjustmentController enabled])
      {
        enabled = 1;
      }

      else
      {
        whiteBalanceAdjustmentController = [pasteCopy whiteBalanceAdjustmentController];
        enabled = [whiteBalanceAdjustmentController enabled];
      }
    }
  }

  return enabled;
}

+ (BOOL)isAssetTypeEligibleForSmartPaste:(id)paste
{
  pasteCopy = paste;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [pasteCopy isVideo] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end