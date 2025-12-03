@interface PULivePhotoVariationEditOperationPerformer
+ (id)_sharedResourceManager;
- (PHAsset)asset;
- (void)_completeWithSuccess:(BOOL)success error:(id)error;
- (void)_handleLoadResult:(id)result analysisResult:(id)analysisResult editOperationType:(id)type;
- (void)_performEditOperation:(id)operation completionHandler:(id)handler;
- (void)_resourceLoadedWithResult:(id)result editOperationType:(id)type;
- (void)_saveAssetEditsWithContentEditingInput:(id)input compositionController:(id)controller lastSavedCompositionController:(id)compositionController imageVersion:(int64_t)version editOperationType:(id)type;
- (void)performAction:(id)action;
@end

@implementation PULivePhotoVariationEditOperationPerformer

- (void)_resourceLoadedWithResult:(id)result editOperationType:(id)type
{
  resultCopy = result;
  typeCopy = type;
  asset = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  compositionController = [resultCopy compositionController];
  contentEditingInput = [resultCopy contentEditingInput];
  localIdentifier = [asset localIdentifier];
  v12 = MEMORY[0x1E69BDEF0];
  v35 = compositionController;
  composition = [compositionController composition];
  v14 = [v12 imagePropertiesRequestWithComposition:composition];

  [v14 setName:@"PLCompositionHelper-getImageURL"];
  v41 = 0;
  v15 = [v14 submitSynchronous:&v41];
  v33 = v41;
  v34 = contentEditingInput;
  if (v15 && ([v15 properties], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "url"), v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
  {
    overCapturePhotoURL = [contentEditingInput overCapturePhotoURL];
    if ([v17 isEqual:overCapturePhotoURL])
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
    overCapturePhotoURL = PLPhotoEditGetLog();
    if (os_log_type_enabled(overCapturePhotoURL, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B36F3000, overCapturePhotoURL, OS_LOG_TYPE_DEBUG, "Could not read image source URL for composition controller", &buf, 2u);
    }

    v17 = 0;
    v19 = @"-Original";
  }

  v20 = [localIdentifier stringByAppendingString:v19];

  if (*MEMORY[0x1E69C3FD0] == typeCopy || ([typeCopy isEqualToString:?] & 1) != 0)
  {
    goto LABEL_16;
  }

  v21 = PXAssetEditOperationTypeForVariationType();
  v22 = v21;
  if (v21 == typeCopy)
  {

    goto LABEL_16;
  }

  v23 = [typeCopy isEqualToString:v21];

  if (v23)
  {
LABEL_16:
    [(PULivePhotoVariationEditOperationPerformer *)self _handleLoadResult:resultCopy analysisResult:0 editOperationType:typeCopy];
    goto LABEL_17;
  }

  photoLibrary = [asset photoLibrary];
  variationCache = [photoLibrary variationCache];

  v26 = variationCache;
  v27 = [variationCache analysisResultForAssetIdentifier:v20];
  if (v27)
  {
    [(PULivePhotoVariationEditOperationPerformer *)self _handleLoadResult:resultCopy analysisResult:v27 editOperationType:typeCopy];
  }

  else
  {
    v32 = v26;
    compositionController2 = [resultCopy compositionController];
    composition2 = [compositionController2 composition];

    v31 = composition2;
    v30 = [objc_alloc(MEMORY[0x1E69BDDB8]) initWithComposition:composition2];
    objc_initWeak(&buf, self);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __90__PULivePhotoVariationEditOperationPerformer__resourceLoadedWithResult_editOperationType___block_invoke;
    v36[3] = &unk_1E7B7A5A0;
    objc_copyWeak(&v39, &buf);
    v37 = resultCopy;
    v38 = typeCopy;
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

- (void)_handleLoadResult:(id)result analysisResult:(id)analysisResult editOperationType:(id)type
{
  resultCopy = result;
  analysisResultCopy = analysisResult;
  typeCopy = type;
  retrievedVersion = [resultCopy retrievedVersion];
  contentEditingInput = [resultCopy contentEditingInput];
  compositionController = [resultCopy compositionController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PULivePhotoVariationEditOperationPerformer__handleLoadResult_analysisResult_editOperationType___block_invoke;
  aBlock[3] = &unk_1E7B7A550;
  v14 = resultCopy;
  v28 = v14;
  v15 = compositionController;
  v29 = v15;
  v16 = typeCopy;
  v30 = v16;
  v17 = analysisResultCopy;
  v31 = v17;
  selfCopy = self;
  v18 = contentEditingInput;
  v33 = v18;
  v34 = retrievedVersion;
  v19 = _Block_copy(aBlock);
  v20 = objc_alloc(MEMORY[0x1E69C42A0]);
  asset = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  v22 = [v20 initWithAsset:asset delegate:self hasDepth:1 hasLive:1];

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

- (void)_saveAssetEditsWithContentEditingInput:(id)input compositionController:(id)controller lastSavedCompositionController:(id)compositionController imageVersion:(int64_t)version editOperationType:(id)type
{
  inputCopy = input;
  controllerCopy = controller;
  compositionControllerCopy = compositionController;
  typeCopy = type;
  asset = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  photoLibrary = [asset photoLibrary];
  if (*MEMORY[0x1E69C3FD0] == typeCopy)
  {
    v14 = 1;
  }

  else
  {
    v14 = [typeCopy isEqualToString:?];
  }

  v15 = PXAssetEditOperationTypeForVariationType();
  if (v15 == typeCopy)
  {
    v16 = 4;
  }

  else if ([typeCopy isEqualToString:v15])
  {
    v16 = 4;
  }

  else
  {
    v16 = 6;
  }

  v17 = [objc_alloc(MEMORY[0x1E69C4298]) initWithAsset:asset compositionController:controllerCopy];
  if (v14 == [v17 isVideoEnabled])
  {
    [v17 setVideoEnabled:v14 ^ 1u];
  }

  objc_initWeak(location, self);
  composition = [compositionControllerCopy composition];
  v19 = [controllerCopy isEqual:composition visualChangesOnly:0];

  if (v19 && ![asset hasAdjustments])
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_3;
    v53[3] = &unk_1E7B80C38;
    v40 = asset;
    v54 = v40;
    v55 = v17;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_4;
    v49[3] = &unk_1E7B7CEB0;
    objc_copyWeak(&v52, location);
    v50 = photoLibrary;
    v51 = v40;
    [v50 performChanges:v53 completionHandler:v49];

    objc_destroyWeak(&v52);
    goto LABEL_25;
  }

  depthAdjustmentController = [controllerCopy depthAdjustmentController];
  enabled = [depthAdjustmentController enabled];

  if (!(v14 & 1 | ((enabled & 1) == 0)))
  {
    -[PULivePhotoVariationEditOperationPerformer setLiveIsEnabled:](self, "setLiveIsEnabled:", [v17 isVideoEnabled]);
    v22 = [objc_alloc(MEMORY[0x1E69C42A0]) initWithAsset:asset delegate:self hasDepth:1 hasLive:1];
    [v22 applySideEffectsForAction:v16 compositionController:controllerCopy];
  }

  v23 = PXAssetEditOperationTypeForVariationType();
  v24 = typeCopy;
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
  v29 = [MEMORY[0x1E69C4300] compositionControllerForContentEditingInput:inputCopy asShot:1 error:&v60];
  v30 = v60;
  v31 = v30;
  if (!v29)
  {

    v27 = 0x1E69C4000uLL;
    goto LABEL_24;
  }

  v32 = objc_alloc(MEMORY[0x1E69C0718]);
  fullSizeImageURL = [inputCopy fullSizeImageURL];
  v34 = [v32 initWithMediaURL:fullSizeImageURL timeZoneLookup:0];

  v35 = [MEMORY[0x1E69C4320] repairedAsShotCompositionController:v29 forCurrentCompositionController:controllerCopy isLivePhoto:1 metadata:v34];

  composition2 = [v35 composition];
  v37 = [controllerCopy isEqual:composition2 visualChangesOnly:1];

  v27 = 0x1E69C4000;
  if ((v37 & 1) == 0)
  {
LABEL_24:
    v41 = [*(v27 + 768) contentEditingOutputForContentEditingInput:inputCopy compositionController:controllerCopy asset:asset async:0 onlyChangingOriginalChoice:0];
    mediaDestination = self->_mediaDestination;
    editingVisibility = [v17 editingVisibility];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __169__PULivePhotoVariationEditOperationPerformer__saveAssetEditsWithContentEditingInput_compositionController_lastSavedCompositionController_imageVersion_editOperationType___block_invoke_2;
    v56[3] = &unk_1E7B7A488;
    objc_copyWeak(&v57, location);
    [(PEPhotoKitMediaDestination *)mediaDestination saveInternalEditsForAsset:asset usingCompositionController:controllerCopy contentEditingOutput:v41 version:v45 livePhotoState:editingVisibility completionHandler:v56];
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
  [v38 revertEditsForAsset:asset mediaDestination:v39 currentCompositionController:controllerCopy completionHandler:v58];
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

- (void)_completeWithSuccess:(BOOL)success error:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
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

- (void)_performEditOperation:(id)operation completionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  v8 = [handlerCopy copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v8;

  v10 = objc_alloc_init(MEMORY[0x1E69C42B8]);
  mediaDestination = self->_mediaDestination;
  self->_mediaDestination = v10;

  objc_initWeak(&location, self);
  _sharedResourceManager = [objc_opt_class() _sharedResourceManager];
  asset = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PULivePhotoVariationEditOperationPerformer__performEditOperation_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7B7A438;
  objc_copyWeak(&v17, &location);
  v14 = operationCopy;
  v16 = v14;
  [_sharedResourceManager loadResourceForAsset:asset requireLocalResources:0 forceRunAsUnadjustedAsset:0 progressHandler:&__block_literal_global_206 resultHandler:v15];

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

- (void)performAction:(id)action
{
  actionCopy = action;
  asset = [(PULivePhotoVariationEditOperationPerformer *)self asset];
  playbackStyle = [asset playbackStyle];

  if (playbackStyle == 1)
  {
    v7 = *MEMORY[0x1E69C3FD0];
  }

  else
  {
    asset2 = [(PULivePhotoVariationEditOperationPerformer *)self asset];
    [asset2 px_currentVariationType];

    v7 = PXAssetEditOperationTypeForVariationType();
  }

  sourceEditOperationType = self->_sourceEditOperationType;
  self->_sourceEditOperationType = v7;

  editOperationType = [(PXAssetEditOperationPerformer *)self editOperationType];
  [(PULivePhotoVariationEditOperationPerformer *)self _performEditOperation:editOperationType completionHandler:actionCopy];
}

- (PHAsset)asset
{
  v4.receiver = self;
  v4.super_class = PULivePhotoVariationEditOperationPerformer;
  asset = [(PXAssetEditOperationPerformer *)&v4 asset];

  return asset;
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