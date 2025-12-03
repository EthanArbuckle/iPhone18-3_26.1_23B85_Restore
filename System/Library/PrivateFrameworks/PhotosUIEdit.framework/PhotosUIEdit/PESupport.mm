@interface PESupport
+ (BOOL)assetCanRenderStyles:(id)styles;
+ (BOOL)assetHasUnsupportedOriginalAdjustments:(id)adjustments;
+ (BOOL)canPerformEditOnAsset:(id)asset;
+ (BOOL)photoLibraryIsEligibleForStylesSetupTip:(id)tip;
+ (BOOL)photoWasTakenWithoutFlashWithImageProperties:(id)properties;
+ (BOOL)sharedPhotoLibraryIsEligibleForStylesSetupTip;
+ (id)originalAdjustmentVersionForAsset:(id)asset;
+ (id)pe_bundle;
+ (id)repairedAsShotCompositionController:(id)controller forCurrentCompositionController:(id)compositionController isLivePhoto:(BOOL)photo metadata:(id)metadata;
+ (void)assetAudioMixMode:(id)mode queue:(id)queue handler:(id)handler;
+ (void)assetHasDepthEnabled:(id)enabled queue:(id)queue handler:(id)handler;
+ (void)assetPlaybackRate:(id)rate queue:(id)queue handler:(id)handler;
+ (void)revertEditsForAsset:(id)asset mediaDestination:(id)destination currentCompositionController:(id)controller completionHandler:(id)handler;
+ (void)syncMainThread:(id)thread;
@end

@implementation PESupport

+ (BOOL)photoLibraryIsEligibleForStylesSetupTip:(id)tip
{
  librarySpecificFetchOptions = [tip librarySpecificFetchOptions];
  1202 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subtype = %d OR subtype = %d", 1201, 1202];
  [librarySpecificFetchOptions setPredicate:1202];

  [librarySpecificFetchOptions setFetchLimit:4];
  v5 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  v6 = [v5 count] > 3;

  return v6;
}

+ (BOOL)sharedPhotoLibraryIsEligibleForStylesSetupTip
{
  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v3 = [PESupport photoLibraryIsEligibleForStylesSetupTip:mEMORY[0x277CD9948]];

  return v3;
}

+ (id)pe_bundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (BOOL)assetCanRenderStyles:(id)styles
{
  stylesCopy = styles;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fetchSmartStyleExtendedProperties = [stylesCopy fetchSmartStyleExtendedProperties];
    originallySmartStyleable = [fetchSmartStyleExtendedProperties originallySmartStyleable];
  }

  else
  {
    originallySmartStyleable = 0;
  }

  return originallySmartStyleable;
}

+ (BOOL)canPerformEditOnAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy isPhotoIrisPlaceholder])
  {
    v4 = [assetCopy deferredProcessingNeeded] != 2;
  }

  else
  {
    v4 = 0;
  }

  isAnimatedImage = [assetCopy isAnimatedImage];
  isVideo = [assetCopy isVideo];
  if (isVideo)
  {
    LOBYTE(isVideo) = [assetCopy canPlayLoopingVideo];
  }

  LOBYTE(v7) = 0;
  if (((v4 | isAnimatedImage) & 1) == 0 && (isVideo & 1) == 0)
  {
    v7 = [assetCopy isTrashed] ^ 1;
  }

  return v7;
}

+ (BOOL)assetHasUnsupportedOriginalAdjustments:(id)adjustments
{
  v3 = [PESupport originalAdjustmentVersionForAsset:adjustments];
  if (v3)
  {
    locallySupportedFormatVersions = [MEMORY[0x277D3A8A0] locallySupportedFormatVersions];
    v5 = [locallySupportedFormatVersions indexOfObject:v3];

    v6 = v5 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)originalAdjustmentVersionForAsset:(id)asset
{
  v31 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [MEMORY[0x277CD97F0] assetResourcesForAsset:assetCopy];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v4 = v27 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = *v27;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        if ([v8 type] == 16)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2556;
  v24 = __Block_byref_object_dispose__2557;
  v25 = 0;
  if (v5)
  {
    v9 = objc_alloc_init(MEMORY[0x277CD9808]);
    [v9 setNetworkAccessAllowed:1];
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    defaultManager = [MEMORY[0x277CD9800] defaultManager];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __47__PESupport_originalAdjustmentVersionForAsset___block_invoke;
    v19[3] = &unk_279A31138;
    v19[4] = &v20;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__PESupport_originalAdjustmentVersionForAsset___block_invoke_2;
    v17[3] = &unk_279A31160;
    v12 = v10;
    v18 = v12;
    [defaultManager requestDataForAssetResource:v5 options:v9 dataReceivedHandler:v19 completionHandler:v17];

    v13 = dispatch_time(0, 2000000000);
    dispatch_group_wait(v12, v13);

    v14 = v21[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  _Block_object_dispose(&v20, 8);

  return v15;
}

void __47__PESupport_originalAdjustmentVersionForAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v3 = [MEMORY[0x277CCAC58] propertyListWithData:a2 options:0 format:0 error:&v9];
  if (v3)
  {
    v4 = *MEMORY[0x277D3B258];
    v5 = v9;
    v6 = [v3 objectForKeyedSubscript:v4];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __47__PESupport_originalAdjustmentVersionForAsset___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_25E6E9000, v4, OS_LOG_TYPE_ERROR, "PESupport: Unable to retrieve original adjustment data: %@", &v5, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (void)assetAudioMixMode:(id)mode queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PESupport_assetAudioMixMode_queue_handler___block_invoke;
  v9[3] = &unk_279A31110;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [PEAdjustmentDataCache requestCompositionControllerForAsset:mode networkAccessAllowed:0 queue:queue completion:v9];
}

void __45__PESupport_assetAudioMixMode_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cinematicAudioAdjustmentController];
  v4 = [v3 renderingStyle];
  v5 = v4;
  v6 = *MEMORY[0x277D3A9F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  (*(*(a1 + 32) + 16))();
}

+ (void)assetPlaybackRate:(id)rate queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PESupport_assetPlaybackRate_queue_handler___block_invoke;
  v9[3] = &unk_279A31110;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [PEAdjustmentDataCache requestCompositionControllerForAsset:rate networkAccessAllowed:0 queue:queue completion:v9];
}

void __45__PESupport_assetPlaybackRate_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 slomoAdjustmentController];
  if (v3)
  {
    v4 = [v7 slomoAdjustmentController];
    [v4 rate];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  (*(*(a1 + 32) + 16))(v6);
}

+ (void)assetHasDepthEnabled:(id)enabled queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__PESupport_assetHasDepthEnabled_queue_handler___block_invoke;
  v9[3] = &unk_279A31110;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [PEAdjustmentDataCache requestCompositionControllerForAsset:enabled networkAccessAllowed:0 queue:queue completion:v9];
}

void __48__PESupport_assetHasDepthEnabled_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v3 depthAdjustmentController];
  v4 = [v6 enabled];
  v5 = [v3 depthAdjustmentController];

  (*(v2 + 16))(v2, v4, v5 != 0);
}

+ (id)repairedAsShotCompositionController:(id)controller forCurrentCompositionController:(id)compositionController isLivePhoto:(BOOL)photo metadata:(id)metadata
{
  compositionControllerCopy = compositionController;
  metadataCopy = metadata;
  controllerCopy = controller;
  v12 = [controllerCopy copy];
  depthAdjustmentController = [controllerCopy depthAdjustmentController];

  enabled = [depthAdjustmentController enabled];
  depthAdjustmentController2 = [v12 depthAdjustmentController];
  if (depthAdjustmentController2)
  {
  }

  else
  {
    depthAdjustmentController3 = [compositionControllerCopy depthAdjustmentController];

    if (depthAdjustmentController3)
    {
      if (metadataCopy)
      {
        v17 = ([metadataCopy photoProcessingFlags] >> 24) & 1;
      }

      else
      {
        LOBYTE(v17) = 0;
      }

      v18 = *MEMORY[0x277D3AA20];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __102__PESupport_repairedAsShotCompositionController_forCurrentCompositionController_isLivePhoto_metadata___block_invoke;
      v26[3] = &unk_279A310A0;
      v27 = compositionControllerCopy;
      v28 = v17;
      [v12 modifyAdjustmentWithKey:v18 modificationBlock:v26];
    }
  }

  portraitVideoAdjustmentController = [v12 portraitVideoAdjustmentController];
  if (portraitVideoAdjustmentController)
  {
    goto LABEL_11;
  }

  portraitVideoAdjustmentController2 = [compositionControllerCopy portraitVideoAdjustmentController];

  if (portraitVideoAdjustmentController2)
  {
    v21 = *MEMORY[0x277D3AAB0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __102__PESupport_repairedAsShotCompositionController_forCurrentCompositionController_isLivePhoto_metadata___block_invoke_2;
    v24[3] = &unk_279A310C8;
    v25 = compositionControllerCopy;
    [v12 modifyAdjustmentWithKey:v21 modificationBlock:v24];
    portraitVideoAdjustmentController = v25;
LABEL_11:
  }

  if (!(enabled & 1 | !photo))
  {
    depthAdjustmentController4 = [v12 depthAdjustmentController];

    if (depthAdjustmentController4)
    {
      [v12 modifyAdjustmentWithKey:*MEMORY[0x277D3AA20] modificationBlock:&__block_literal_global_2560];
    }
  }

  return v12;
}

void __102__PESupport_repairedAsShotCompositionController_forCurrentCompositionController_isLivePhoto_metadata___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) composition];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D3AA20]];
  [v9 setFromAdjustment:v4];

  v5 = [v9 capturedAperture];

  if (v5)
  {
    v6 = [v9 capturedAperture];
    [v6 floatValue];
    [v9 setAperture:v7];
  }

  v8 = [v9 capturedFocusRect];
  [v9 setFocusRect:v8];

  [v9 setEnabled:(*(a1 + 40) & 1) == 0];
}

void __102__PESupport_repairedAsShotCompositionController_forCurrentCompositionController_isLivePhoto_metadata___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = [v2 composition];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D3AAB0]];
  [v5 setFromAdjustment:v4];

  [v5 setEnabled:1];
  [v5 setAperture:0];
  [v5 setDisparityKeyframes:0];
  [v5 setCinematographyState:0];
  [v5 setDebugMode:0];
}

void __102__PESupport_repairedAsShotCompositionController_forCurrentCompositionController_isLivePhoto_metadata___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 capturedAperture];

  if (v2)
  {
    v3 = [v6 capturedAperture];
    [v3 floatValue];
    [v6 setAperture:v4];
  }

  v5 = [v6 capturedFocusRect];
  [v6 setFocusRect:v5];

  [v6 setEnabled:0];
}

+ (void)revertEditsForAsset:(id)asset mediaDestination:(id)destination currentCompositionController:(id)controller completionHandler:(id)handler
{
  assetCopy = asset;
  destinationCopy = destination;
  controllerCopy = controller;
  handlerCopy = handler;
  v13 = objc_alloc_init(MEMORY[0x277CD9850]);
  [v13 setResultHandlerQueue:MEMORY[0x277D85CD0]];
  [v13 setNetworkAccessAllowed:1];
  [v13 setOriginalChoice:{objc_msgSend(assetCopy, "originalResourceChoice")}];
  [v13 setForceRunAsUnadjustedAsset:1];
  [v13 setForceReturnFullLivePhoto:1];
  [v13 setSkipDisplaySizeImage:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__PESupport_revertEditsForAsset_mediaDestination_currentCompositionController_completionHandler___block_invoke;
  v18[3] = &unk_279A31078;
  v19 = controllerCopy;
  v20 = destinationCopy;
  v21 = assetCopy;
  v22 = handlerCopy;
  v14 = assetCopy;
  v15 = destinationCopy;
  v16 = controllerCopy;
  v17 = handlerCopy;
  [v14 requestContentEditingInputWithOptions:v13 completionHandler:v18];
}

void __97__PESupport_revertEditsForAsset_mediaDestination_currentCompositionController_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v27 = 0;
    v6 = [PESerializationUtility editSourceForContentEditingInput:v5 useEmbeddedPreview:0 error:&v27];
    v7 = v27;
    if (v6)
    {
      v26 = 0;
      v8 = [PESerializationUtility compositionControllerForContentEditingInput:v5 asShot:1 source:v6 error:&v26];
      v9 = v26;
      if (v8)
      {
        v10 = objc_alloc(MEMORY[0x277D3B458]);
        v11 = [v5 fullSizeImageURL];
        v12 = [v10 initWithMediaURL:v11 timeZoneLookup:0];

        v13 = *(a1 + 32);
        v14 = [v5 livePhoto];
        v15 = [PESupport repairedAsShotCompositionController:v8 forCurrentCompositionController:v13 isLivePhoto:v14 != 0 metadata:v12];
      }

      else
      {
        v15 = 0;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __97__PESupport_revertEditsForAsset_mediaDestination_currentCompositionController_completionHandler___block_invoke_2;
      v20[3] = &unk_279A31050;
      v21 = v15;
      v25 = *(a1 + 56);
      v22 = v5;
      v23 = *(a1 + 48);
      v24 = *(a1 + 40);
      v19 = v15;
      [v17 revertEditsForAsset:v18 completionHandler:v20];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v16 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD9BA8]];
    (*(*(a1 + 56) + 16))();
  }
}

void __97__PESupport_revertEditsForAsset_mediaDestination_currentCompositionController_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([MEMORY[0x277D3AC20] isIdentityCompositionController:*(a1 + 32)])
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = [PESerializationUtility contentEditingOutputForContentEditingInput:*(a1 + 40) compositionController:*(a1 + 32) asset:*(a1 + 48) async:0 onlyChangingOriginalChoice:0];
    [*(a1 + 56) saveInternalEditsForAsset:v7 usingCompositionController:*(a1 + 32) contentEditingOutput:v6 version:1 livePhotoState:0 completionHandler:*(a1 + 64)];
  }
}

+ (void)syncMainThread:(id)thread
{
  threadCopy = thread;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4 = objc_autoreleasePoolPush();
    threadCopy[2](threadCopy);
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__PESupport_syncMainThread___block_invoke;
    block[3] = &unk_279A31028;
    v6 = threadCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

void __28__PESupport_syncMainThread___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

+ (BOOL)photoWasTakenWithoutFlashWithImageProperties:(id)properties
{
  metadata = [properties metadata];
  v4 = [metadata objectForKeyedSubscript:*MEMORY[0x277CD3038]];

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3070]];
  v7 = ([v5 integerValue] & 1) == 0 && v5 != 0;

  return v7;
}

@end