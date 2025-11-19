@interface PULivePhotoVariationEditOperationPerformer
+ (id)_sharedResourceManager;
- (PHAsset)asset;
- (void)_completeWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_handleLoadResult:(id)a3 analysisResult:(id)a4 editOperationType:(id)a5;
- (void)_performEditOperation:(id)a3 completionHandler:(id)a4;
- (void)_resourceLoadedWithResult:(id)a3 editOperationType:(id)a4;
- (void)_saveAssetEditsWithContentEditingInput:(id)a3 compositionController:(id)a4 lastSavedCompositionController:(id)a5 imageVersion:(int64_t)a6 editOperationType:(id)a7;
- (void)performAction:(id)a3;
@end

@implementation PULivePhotoVariationEditOperationPerformer

- (void)_resourceLoadedWithResult:(id)a3 editOperationType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  v9 = [v6 compositionController];
  v10 = [v6 contentEditingInput];
  v11 = [v8 localIdentifier];
  v12 = MEMORY[0x1E69BDEF0];
  v35 = v9;
  v13 = [v9 composition];
  v14 = [v12 imagePropertiesRequestWithComposition:v13];

  [v14 setName:@"PLCompositionHelper-getImageURL"];
  v41 = 0;
  v15 = [v14 submitSynchronous:&v41];
  v33 = v41;
  v34 = v10;
  if (v15 && ([v15 properties], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "url"), v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
  {
    v18 = [v10 overCapturePhotoURL];
    if ([v17 isEqual:v18])
    {
      v19 = @"-Overcapture";
    }

    else
    {
      v19 = @"-Original";
    }
  }

  else
  {
    v18 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEBUG, "Could not read image source URL for composition controller", &buf, 2u);
    }

    v17 = 0;
    v19 = @"-Original";
  }

  v20 = [v11 stringByAppendingString:v19];

  if (*MEMORY[0x1E69C3FD0] == v7 || ([v7 isEqualToString:?] & 1) != 0)
  {
    goto LABEL_16;
  }

  v21 = PXAssetEditOperationTypeForVariationType();
  v22 = v21;
  if (v21 == v7)
  {

    goto LABEL_16;
  }

  v23 = [v7 isEqualToString:v21];

  if (v23)
  {
LABEL_16:
    [(PULivePhotoVariationEditOperationPerformer *)self _handleLoadResult:v6 analysisResult:0 editOperationType:v7];
    goto LABEL_17;
  }

  v24 = [v8 photoLibrary];
  v25 = [v24 variationCache];

  v26 = v25;
  v27 = [v25 analysisResultForAssetIdentifier:v20];
  if (v27)
  {
    [(PULivePhotoVariationEditOperationPerformer *)self _handleLoadResult:v6 analysisResult:v27 editOperationType:v7];
  }

  else
  {
    v32 = v26;
    v28 = [v6 compositionController];
    v29 = [v28 composition];

    v31 = v29;
    v30 = [objc_alloc(MEMORY[0x1E69BDDB8]) initWithComposition:v29];
    objc_initWeak(&buf, self);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __90__PULivePhotoVariationEditOperationPerformer__resourceLoadedWithResult_editOperationType___block_invoke;
    v36[3] = &unk_1E7B7A5A0;
    objc_copyWeak(&v39, &buf);
    v37 = v6;
    v38 = v7;
    [v30 submit:v36];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&buf);

    v26 = v32;
    v27 = 0;
  }

LABEL_17:
}

void __90__PULivePhotoVariationEditOperationPerformer__resourceLoadedWithResult_editOperationType___block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [a2 result:&v7];
  v4 = v7;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (v3)
  {
    [WeakRetained _handleLoadResult:*(a1 + 32) analysisResult:v3 editOperationType:*(a1 + 40)];
  }

  else
  {
    [WeakRetained _completeWithSuccess:0 error:v4];
  }
}

- (void)_handleLoadResult:(id)a3 analysisResult:(id)a4 editOperationType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 retrievedVersion];
  v12 = [v8 contentEditingInput];
  v13 = [v8 compositionController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke;
  aBlock[3] = &unk_1E7B7A550;
  v14 = v8;
  v28 = v14;
  v15 = v13;
  v29 = v15;
  v16 = v10;
  v30 = v16;
  v17 = v9;
  v31 = v17;
  v32 = self;
  v18 = v12;
  v33 = v18;
  v34 = v11;
  v19 = _Block_copy(aBlock);
  v20 = objc_alloc(MEMORY[0x1E69C42A0]);
  v21 = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  v22 = [v20 initWithAsset:v21 delegate:self hasDepth:1 hasLive:1];

  v23 = [v22 confirmationWarningStringForAction:6 compositionController:v15];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
    v26 = v19;
    px_dispatch_on_main_queue();
  }

  else
  {
    v19[2](v19);
  }
}

void __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69BE658]);
  v3 = [*(a1 + 32) editSource];
  v4 = [v2 initWithEditSource:v3 renderPriority:2];

  v5 = [*(a1 + 40) copy];
  v6 = PXAssetVariationTypeForEditOperationType();
  v7 = [*(a1 + 32) editSource];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_2;
  v26[3] = &unk_1E7B7A4B0;
  v28 = v6;
  v27 = *(a1 + 56);
  [v4 applySourceChangesToCompositionSynchronously:v5 source:v7 withBlock:v26];

  if (v6 == 3)
  {
    v8 = objc_alloc(MEMORY[0x1E69BDE50]);
    v9 = [v5 composition];
    v10 = [v8 initWithComposition:v9];

    [v10 setName:@"PU-PILongExposureFusionAutoCalculator"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_3;
    v21[3] = &unk_1E7B7A528;
    v22 = v5;
    v17 = *(a1 + 64);
    v11 = *(&v17 + 1);
    v12 = *(a1 + 40);
    v25 = *(a1 + 80);
    v13 = *(a1 + 48);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v23 = v17;
    v24 = v14;
    v15 = v5;
    [v10 submit:v21];
  }

  else
  {
    v18 = *(a1 + 72);
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v16 = v5;
    px_dispatch_on_main_queue();
  }
}

void __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_3_235(uint64_t a1)
{
  v2 = MEMORY[0x1E69C4468];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_4_237;
  v5[3] = &unk_1E7B7A578;
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = [v2 show:v5];
}

void __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_4_237(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectAtIndexedSubscript:0];
  [v4 setTitle:v5];

  v6 = [*(a1 + 32) objectAtIndexedSubscript:1];
  [v4 setMessage:v6];

  v7 = PXLocalizedString();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_5;
  v10[3] = &unk_1E7B80C88;
  v11 = *(a1 + 48);
  [v4 addActionWithTitle:v7 style:0 action:v10];

  v8 = PXLocalizedString();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_6;
  v9[3] = &unk_1E7B80DD0;
  v9[4] = *(a1 + 40);
  [v4 addActionWithTitle:v8 style:1 action:v9];
}

void __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69BE360];
  v4 = a2;
  [v3 compositionController:v4 applyAssetVariation:PFMetadataPlaybackVariationFromPXAssetVariation() withRecipe:*(a1 + 32)];
}

void __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v3 = [a2 result:&v17];
  v4 = v17;
  if (!v3)
  {
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Failed generating long exposure fusion alignment data. Error: %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if ([v3 count])
  {
    v5 = *(a1 + 32);
    v6 = *MEMORY[0x1E69BE020];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_4;
    v15[3] = &unk_1E7B7A4D8;
    v16 = v3;
    [v5 modifyAdjustmentWithKey:v6 modificationBlock:v15];
    v7 = v16;
LABEL_6:
  }

  v12 = *(a1 + 40);
  v8 = *(&v12 + 1);
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v13 = v11;
  v14 = *(a1 + 64);
  px_dispatch_on_main_queue();
}

void __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAlignment:v2];
  [v3 setEnabled:1];
}

- (void)_saveAssetEditsWithContentEditingInput:(id)a3 compositionController:(id)a4 lastSavedCompositionController:(id)a5 imageVersion:(int64_t)a6 editOperationType:(id)a7
{
  v48 = a3;
  v11 = a4;
  v47 = a5;
  v12 = a7;
  v13 = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  v46 = [v13 photoLibrary];
  if (*MEMORY[0x1E69C3FD0] == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = [v12 isEqualToString:?];
  }

  v15 = PXAssetEditOperationTypeForVariationType();
  if (v15 == v12)
  {
    v16 = 4;
  }

  else if ([v12 isEqualToString:v15])
  {
    v16 = 4;
  }

  else
  {
    v16 = 6;
  }

  v17 = [objc_alloc(MEMORY[0x1E69C4298]) initWithAsset:v13 compositionController:v11];
  if (v14 == [v17 isVideoEnabled])
  {
    [v17 setVideoEnabled:v14 ^ 1u];
  }

  objc_initWeak(location, self);
  v18 = [v47 composition];
  v19 = [v11 isEqual:v18 visualChangesOnly:0];

  if (v19 && ![v13 hasAdjustments])
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_3;
    v53[3] = &unk_1E7B80C38;
    v40 = v13;
    v54 = v40;
    v55 = v17;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_4;
    v49[3] = &unk_1E7B7CEB0;
    objc_copyWeak(&v52, location);
    v50 = v46;
    v51 = v40;
    [v50 performChanges:v53 completionHandler:v49];

    objc_destroyWeak(&v52);
    goto LABEL_25;
  }

  v20 = [v11 depthAdjustmentController];
  v21 = [v20 enabled];

  if (!(v14 & 1 | ((v21 & 1) == 0)))
  {
    -[PULivePhotoVariationEditOperationPerformer setLiveIsEnabled:](self, "setLiveIsEnabled:", [v17 isVideoEnabled]);
    v22 = [objc_alloc(MEMORY[0x1E69C42A0]) initWithAsset:v13 delegate:self hasDepth:1 hasLive:1];
    [v22 applySideEffectsForAction:v16 compositionController:v11];
  }

  v23 = PXAssetEditOperationTypeForVariationType();
  v24 = v12;
  v25 = v23;
  v26 = v25;
  v27 = 0x1E69C4000uLL;
  if (v25 == v24)
  {
  }

  else
  {
    v28 = [v24 isEqualToString:v25];

    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v60 = 0;
  v29 = [MEMORY[0x1E69C4300] compositionControllerForContentEditingInput:v48 asShot:1 error:&v60];
  v30 = v60;
  v31 = v30;
  if (!v29)
  {

    v27 = 0x1E69C4000uLL;
    goto LABEL_24;
  }

  v32 = objc_alloc(MEMORY[0x1E69C0718]);
  v33 = [v48 fullSizeImageURL];
  v34 = [v32 initWithMediaURL:v33 timeZoneLookup:0];

  v35 = [MEMORY[0x1E69C4320] repairedAsShotCompositionController:v29 forCurrentCompositionController:v11 isLivePhoto:1 metadata:v34];

  v36 = [v35 composition];
  v37 = [v11 isEqual:v36 visualChangesOnly:1];

  v27 = 0x1E69C4000;
  if ((v37 & 1) == 0)
  {
LABEL_24:
    v41 = [*(v27 + 768) contentEditingOutputForContentEditingInput:v48 compositionController:v11 asset:v13 async:0 onlyChangingOriginalChoice:0];
    mediaDestination = self->_mediaDestination;
    v43 = [v17 editingVisibility];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_2;
    v56[3] = &unk_1E7B7A488;
    objc_copyWeak(&v57, location);
    [(PEPhotoKitMediaDestination *)mediaDestination saveInternalEditsForAsset:v13 usingCompositionController:v11 contentEditingOutput:v41 version:v45 livePhotoState:v43 completionHandler:v56];
    objc_destroyWeak(&v57);

    goto LABEL_25;
  }

  v38 = MEMORY[0x1E69C4320];
  v39 = self->_mediaDestination;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke;
  v58[3] = &unk_1E7B7A460;
  objc_copyWeak(&v59, location);
  [v38 revertEditsForAsset:v13 mediaDestination:v39 currentCompositionController:v11 completionHandler:v58];
  objc_destroyWeak(&v59);
LABEL_25:
  objc_destroyWeak(location);
}

void __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFinishSavingEditsForAsset:v7 error:v5];
}

void __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFinishSavingEditsForAsset:v7 error:v5];
}

void __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978648] changeRequestForAsset:*(a1 + 32)];
  [v2 setPhotoIrisVisibilityState:{objc_msgSend(*(a1 + 40), "editingVisibility")}];
}

void __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x1E6978830] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:*(a1 + 32)];
    v7 = MEMORY[0x1E6978630];
    v8 = [*(a1 + 40) localIdentifier];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [v7 fetchAssetsWithLocalIdentifiers:v9 options:v6];

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v12 = [v10 firstObject];
    [WeakRetained _handleDidFinishSavingEditsForAsset:v12 error:0];
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    [v6 _handleDidFinishSavingEditsForAsset:0 error:v5];
  }
}

- (void)_completeWithSuccess:(BOOL)a3 error:(id)a4
{
  v5 = a4;
  v4 = v5;
  px_dispatch_on_main_queue();
}

void __73__PULivePhotoVariationEditOperationPerformer__completeWithSuccess_error___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) progress];
  v3 = [v2 totalUnitCount];
  v4 = [*(a1 + 32) progress];
  [v4 setCompletedUnitCount:v3];

  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = MEMORY[0x1E6991F28];
    v14 = *MEMORY[0x1E6991E20];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v15[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v5 sendEvent:@"com.apple.photos.CPAnalytics.saving.livePhotoEffectSavingFailed" withPayload:v8];
  }

  v9 = *(*(a1 + 32) + 96);
  if (v9)
  {
    v10 = _Block_copy(v9);
    v11 = *(a1 + 32);
    v12 = *(v11 + 96);
    *(v11 + 96) = 0;

    v13 = [*(a1 + 32) progress];
    [v13 setCancellationHandler:0];

    (*(v10 + 2))(v10, *(a1 + 48), *(a1 + 40));
  }
}

- (void)_performEditOperation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v8;

  v10 = objc_alloc_init(MEMORY[0x1E69C42B8]);
  mediaDestination = self->_mediaDestination;
  self->_mediaDestination = v10;

  objc_initWeak(&location, self);
  v12 = [objc_opt_class() _sharedResourceManager];
  v13 = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PULivePhotoVariationEditOperationPerformer__performEditOperation_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7B7A438;
  objc_copyWeak(&v17, &location);
  v14 = v6;
  v16 = v14;
  [v12 loadResourceForAsset:v13 requireLocalResources:0 forceRunAsUnadjustedAsset:0 progressHandler:&__block_literal_global_206 resultHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __86__PULivePhotoVariationEditOperationPerformer__performEditOperation_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v8)
  {
    [WeakRetained _resourceLoadedWithResult:v8 editOperationType:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _completeWithSuccess:0 error:v5];
  }
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  v6 = [v5 playbackStyle];

  if (v6 == 1)
  {
    v7 = *MEMORY[0x1E69C3FD0];
  }

  else
  {
    v9 = [(PULivePhotoVariationEditOperationPerformer *)self asset];
    [v9 px_currentVariationType];

    v7 = PXAssetEditOperationTypeForVariationType();
  }

  sourceEditOperationType = self->_sourceEditOperationType;
  self->_sourceEditOperationType = v7;

  v10 = [(PXAssetEditOperationPerformer *)self editOperationType];
  [(PULivePhotoVariationEditOperationPerformer *)self _performEditOperation:v10 completionHandler:v4];
}

- (PHAsset)asset
{
  v4.receiver = self;
  v4.super_class = PULivePhotoVariationEditOperationPerformer;
  v2 = [(PXAssetEditOperationPerformer *)&v4 asset];

  return v2;
}

+ (id)_sharedResourceManager
{
  if (_sharedResourceManager_onceToken != -1)
  {
    dispatch_once(&_sharedResourceManager_onceToken, &__block_literal_global_201);
  }

  v3 = _sharedResourceManager_manager;

  return v3;
}

uint64_t __68__PULivePhotoVariationEditOperationPerformer__sharedResourceManager__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C42F8]);
  v1 = _sharedResourceManager_manager;
  _sharedResourceManager_manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end