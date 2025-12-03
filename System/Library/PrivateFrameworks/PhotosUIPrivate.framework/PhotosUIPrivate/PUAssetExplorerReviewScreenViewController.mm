@interface PUAssetExplorerReviewScreenViewController
- (BOOL)assetExplorerReviewScreenActionManager:(id)manager canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (BOOL)assetExplorerReviewScreenActionManager:(id)manager shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (PUAssetExplorerAnalytics)assetExplorerAnalytics;
- (PUAssetExplorerReviewScreenViewController)initWithDataSourceManager:(id)manager mediaProvider:(id)provider reviewAssetProvider:(id)assetProvider initialIndexPath:(id)path initialAssetReference:(id)reference initialSelectedAssetUUIDs:(id)ds initialDisabledLivePhotoAssetUUIDs:(id)iDs selectionCountLimit:(id)self0 sourceType:(unint64_t)self1 lowMemoryMode:(BOOL)self2 reviewBarsModel:(id)self3 resizeTaskDescriptorViewModel:(id)self4 options:(unint64_t)self5;
- (PUAssetExplorerReviewScreenViewControllerDelegate)delegate;
- (id)_createBrowsingSessionIfNecessary;
- (id)_createProgressControllerForRemainingRequests:(id)requests;
- (id)_createReviewAssetRequestForAsset:(id)asset;
- (id)_fileSizeMenuForSelectedUUIDs:(id)ds;
- (id)_getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets;
- (id)_remainingReviewAssetRequests;
- (id)_reviewAssetRequestForAssetUUID:(id)d;
- (id)_substituteAssetForUUID:(id)d;
- (id)_titleForSelectedAssetUUIDs:(id)ds;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)reviewAssetProviderRequestForDisplayAsset:(id)asset;
- (void)_cancelReviewAssetRequestForAssetUUID:(id)d;
- (void)_cancelReviewAssetRequests;
- (void)_deleteAllLinkedFiles;
- (void)_handleCompletionAction:(unint64_t)action;
- (void)_handleProgressControllerCanceled:(id)canceled;
- (void)_handleReviewAssetRequest:(id)request completedWithSuccess:(BOOL)success canceled:(BOOL)canceled error:(id)error reviewAsset:(id)asset;
- (void)_handleSelectionChanged;
- (void)_performCancelAction;
- (void)_performCompletionAction:(unint64_t)action;
- (void)_performCompletionActionSteps:(unint64_t)steps;
- (void)_performRetakeAction;
- (void)_presentConfidentialityAlertWithConfirmAction:(id)action abortAction:(id)abortAction;
- (void)_requestReviewAssetForAsset:(id)asset;
- (void)_setSubstituteAsset:(id)asset;
- (void)_showFailedReviewAssetRequestAlert;
- (void)_updateForCompletedReviewAssetRequest:(id)request;
- (void)_updateWithSubstituteAsset:(id)asset shouldSelect:(BOOL)select;
- (void)assetExplorerReviewScreenActionManager:(id)manager didPressSelectForAsset:(id)asset;
- (void)assetExplorerReviewScreenActionManager:(id)manager didToggleLivePhoto:(id)photo;
- (void)assetExplorerReviewScreenActionManagerDidPressDeselectAll:(id)all;
- (void)assetExplorerReviewScreenActionManagerDidPressSelectAll:(id)all;
- (void)loadView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoEditController:(id)controller didFinishEditingSessionForAsset:(id)asset completed:(BOOL)completed;
- (void)photoMarkupController:(id)controller didFinishWithSavedAsset:(id)asset;
- (void)setDelegate:(id)delegate;
- (void)viewModel:(id)model didChange:(id)change;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PUAssetExplorerReviewScreenViewController

- (PUAssetExplorerReviewScreenViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewModel:(id)model didChange:(id)change
{
  if ([change currentAssetDidChange])
  {
    assetExplorerAnalytics = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
    sourceType = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
    _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    selectionManager = [_actionManager selectionManager];
    selectedUUIDs = [selectionManager selectedUUIDs];
    [assetExplorerAnalytics sendEvent:@"PUAssetExplorerAnalyticsEventScroll" view:2 source:sourceType currentAssetCount:{objc_msgSend(selectedUUIDs, "count")}];
  }
}

- (void)_presentConfidentialityAlertWithConfirmAction:(id)action abortAction:(id)abortAction
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DC648];
  abortActionCopy = abortAction;
  actionCopy = action;
  v9 = PULocalizedString(@"OK");
  v10 = [v6 actionWithTitle:v9 style:0 handler:actionCopy];

  v11 = MEMORY[0x1E69DC648];
  v12 = PULocalizedString(@"CANCEL");
  v13 = [v11 actionWithTitle:v12 style:0 handler:abortActionCopy];

  v14 = MEMORY[0x1E69C3A10];
  v17[0] = v10;
  v17[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v16 = [v14 confidentialityAlertWithActions:v15];

  [(PUAssetExplorerReviewScreenViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)_performCompletionActionSteps:(unint64_t)steps
{
  _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager = [_actionManager selectionManager];
  selectedUUIDs = [selectionManager selectedUUIDs];
  disableLivePhotosSelectionManager = [_actionManager disableLivePhotosSelectionManager];
  selectedUUIDs2 = [disableLivePhotosSelectionManager selectedUUIDs];
  _getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets = [(PUAssetExplorerReviewScreenViewController *)self _getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets];
  _reviewDataSourceManager = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
  [_reviewDataSourceManager detachFromOriginalDataSourceManager];

  if (self->_delegateFlags.respondsToDidPerformCompletionAction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetExplorerReviewScreenViewController:self didPerformCompletionAction:steps withSelectedAssetUUIDs:selectedUUIDs livePhotoDisabledAssetUUIDs:selectedUUIDs2 substituteAssetsByUUID:_getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets];
  }

  v20 = selectionManager;
  v12 = selectedUUIDs;
  if (!steps)
  {
    v13 = PUAssetExplorerAnalyticsEventCompleteReviewDone;
    goto LABEL_7;
  }

  if (steps == 1)
  {
    v13 = PUAssetExplorerAnalyticsEventCompleteReviewSend;
LABEL_7:
    v14 = *v13;
    goto LABEL_9;
  }

  v14 = 0;
LABEL_9:
  assetExplorerAnalytics = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
  sourceType = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  _actionManager2 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager2 = [_actionManager2 selectionManager];
  selectedUUIDs3 = [selectionManager2 selectedUUIDs];
  [assetExplorerAnalytics sendEvent:v14 view:2 source:sourceType currentAssetCount:{objc_msgSend(selectedUUIDs3, "count")}];

  kdebug_trace();
}

- (void)_performCompletionAction:(unint64_t)action
{
  v39 = *MEMORY[0x1E69E9840];
  if (![MEMORY[0x1E69C3A10] confidentialityCheckRequired])
  {
    goto LABEL_25;
  }

  sourceType = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  v6 = 0;
  if (sourceType <= 3 && sourceType != 2)
  {
    actionCopy = action;
    _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    selectionManager = [_actionManager selectionManager];
    selectedUUIDs = [selectionManager selectedUUIDs];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    if (!px_deprecated_appPhotoLibrary)
    {
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    }

    librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = selectedUUIDs;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v28 = px_deprecated_appPhotoLibrary;
      v29 = selectionManager;
      v30 = _actionManager;
      v15 = *v34;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = MEMORY[0x1E6978630];
        v37 = *(*(&v33 + 1) + 8 * v16);
        v6 = 1;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        v19 = [v17 fetchAssetsWithLocalIdentifiers:v18 options:librarySpecificFetchOptions];
        lastObject = [v19 lastObject];

        LOBYTE(v18) = [MEMORY[0x1E69C3A10] confidentialWarningRequiredForAsset:lastObject];
        if (v18)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v14)
          {
            goto LABEL_8;
          }

          v6 = 0;
          break;
        }
      }

      _actionManager = v30;
      px_deprecated_appPhotoLibrary = v28;
      selectionManager = v29;
    }

    else
    {
      v6 = 0;
    }

    action = actionCopy;
  }

  _browsingSession = [(PUAssetExplorerReviewScreenViewController *)self _browsingSession];
  viewModel = [_browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];
  v25 = [asset conformsToProtocol:&unk_1F2BDF898];

  if (!v25)
  {

    if (v6)
    {
      goto LABEL_27;
    }

LABEL_25:
    [(PUAssetExplorerReviewScreenViewController *)self _performCompletionActionSteps:action];
    return;
  }

  asset2 = [currentAssetReference asset];
  if (asset2)
  {
    v27 = v6;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    LOBYTE(v6) = [MEMORY[0x1E69C3A10] confidentialWarningRequiredForAsset:asset2];
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __70__PUAssetExplorerReviewScreenViewController__performCompletionAction___block_invoke;
  v32[3] = &unk_1E7B75770;
  v32[4] = self;
  v32[5] = action;
  [(PUAssetExplorerReviewScreenViewController *)self _presentConfidentialityAlertWithConfirmAction:v32 abortAction:0];
}

- (void)_performRetakeAction
{
  [(PUAssetExplorerReviewScreenViewController *)self _cancelReviewAssetRequests];
  [(PUAssetExplorerReviewScreenViewController *)self _deleteAllLinkedFiles];
  if (self->_delegateFlags.respondsToDidPressRetake)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetExplorerReviewScreenViewControllerDidPressRetake:self];
  }
}

- (void)_performCancelAction
{
  [(PUAssetExplorerReviewScreenViewController *)self _cancelReviewAssetRequests];
  [(PUAssetExplorerReviewScreenViewController *)self _deleteAllLinkedFiles];
  _reviewDataSourceManager = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
  [_reviewDataSourceManager detachFromOriginalDataSourceManager];

  if (self->_delegateFlags.respondsToDidPressCancel)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetExplorerReviewScreenViewControllerDidPressCancel:self];
  }
}

- (id)reviewAssetProviderRequestForDisplayAsset:(id)asset
{
  assetCopy = asset;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _reviewAssetProvider = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetProvider];
  v6 = [_reviewAssetProvider reviewAssetProviderRequestForDisplayAsset:assetCopy];

  return v6;
}

- (void)photoMarkupController:(id)controller didFinishWithSavedAsset:(id)asset
{
  controllerCopy = controller;
  if (asset)
  {
    [(PUAssetExplorerReviewScreenViewController *)self _updateWithSubstituteAsset:asset shouldSelect:1];
    v6 = PUAssetExplorerAnalyticsEventMarkupSave;
  }

  else
  {
    v6 = PUAssetExplorerAnalyticsEventMarkupCancel;
  }

  v7 = *v6;
  assetExplorerAnalytics = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
  sourceType = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager = [_actionManager selectionManager];
  selectedUUIDs = [selectionManager selectedUUIDs];
  [assetExplorerAnalytics sendEvent:v7 view:2 source:sourceType currentAssetCount:{objc_msgSend(selectedUUIDs, "count")}];

  [controllerCopy unregisterObserver:self];
}

- (void)photoEditController:(id)controller didFinishEditingSessionForAsset:(id)asset completed:(BOOL)completed
{
  completedCopy = completed;
  assetCopy = asset;
  if (completedCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:1021 description:@"Editing a photo must output a PUReviewAsset!"];
    }

    [(PUAssetExplorerReviewScreenViewController *)self _updateWithSubstituteAsset:assetCopy shouldSelect:1];
    v8 = PUAssetExplorerAnalyticsEventEditSave;
  }

  else
  {
    v8 = PUAssetExplorerAnalyticsEventEditCancel;
  }

  v9 = *v8;
  assetExplorerAnalytics = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
  sourceType = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager = [_actionManager selectionManager];
  selectedUUIDs = [selectionManager selectedUUIDs];
  [assetExplorerAnalytics sendEvent:v9 view:2 source:sourceType currentAssetCount:{objc_msgSend(selectedUUIDs, "count")}];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PUReviewScreenSelectionManagerObservationContext == context)
  {
    [(PUAssetExplorerReviewScreenViewController *)self _handleSelectionChanged:observable];
  }
}

- (void)assetExplorerReviewScreenActionManager:(id)manager didToggleLivePhoto:(id)photo
{
  photoCopy = photo;
  if ([photoCopy conformsToProtocol:&unk_1F2BDF7B0])
  {
    v6 = photoCopy;
    uuid = [v6 uuid];
    _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    disableLivePhotosSelectionManager = [_actionManager disableLivePhotosSelectionManager];
    v10 = [disableLivePhotosSelectionManager isSelectedUUID:uuid];

    v11 = [PUReviewAsset createUniqueMediaDirectoryForAssetWithIdentifier:uuid];
    v12 = [PUReviewAsset alloc];
    path = [v11 path];
    v14 = [(PUReviewAsset *)v12 initWithReviewAsset:v6 linkFileURLsToUniquePathsInDirectory:path canPlayPhotoIris:v10 ^ 1u];

    _browsingSession = [(PUAssetExplorerReviewScreenViewController *)self _browsingSession];
    viewModel = [_browsingSession viewModel];
    assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __103__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManager_didToggleLivePhoto___block_invoke;
    v30[3] = &unk_1E7B80DD0;
    v18 = assetViewModelForCurrentAssetReference;
    v31 = v18;
    [v18 performChanges:v30];
    [(PUAssetExplorerReviewScreenViewController *)self _updateWithSubstituteAsset:v14 shouldSelect:0];
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __103__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManager_didToggleLivePhoto___block_invoke_2;
    v28 = &unk_1E7B80DD0;
    v29 = v18;
    v19 = v18;
    [v19 performChanges:&v25];
    v20 = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics:v25];
    sourceType = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
    _actionManager2 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    selectionManager = [_actionManager2 selectionManager];
    selectedUUIDs = [selectionManager selectedUUIDs];
    [v20 sendEvent:@"PUAssetExplorerAnalyticsEventToggleLivePhoto" view:2 source:sourceType currentAssetCount:{objc_msgSend(selectedUUIDs, "count")}];
  }
}

- (void)_handleProgressControllerCanceled:(id)canceled
{
  canceledCopy = canceled;
  _requestProgressController = [(PUAssetExplorerReviewScreenViewController *)self _requestProgressController];

  v6 = canceledCopy;
  if (_requestProgressController != canceledCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:958 description:@"Not expecting multiple progress controllers"];

    v6 = canceledCopy;
  }

  [v6 hideAnimated:1 allowDelay:0];
  [(PUAssetExplorerReviewScreenViewController *)self _tearDownProgressController];
  [(PUAssetExplorerReviewScreenViewController *)self _performCancelAction];
}

- (void)_handleCompletionAction:(unint64_t)action
{
  kdebug_trace();
  _remainingReviewAssetRequests = [(PUAssetExplorerReviewScreenViewController *)self _remainingReviewAssetRequests];
  if ([_remainingReviewAssetRequests count])
  {
    v6 = [(PUAssetExplorerReviewScreenViewController *)self _createProgressControllerForRemainingRequests:_remainingReviewAssetRequests];
    v7 = PULocalizedString(@"REVIEW_DOWNLOADING_ASSETS_TITLE");
    [v6 setTitle:v7];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __69__PUAssetExplorerReviewScreenViewController__handleCompletionAction___block_invoke;
    v11 = &unk_1E7B76F10;
    objc_copyWeak(&v12, &location);
    objc_copyWeak(&v13, &from);
    [v6 setCancellationHandler:&v8];
    [v6 showAnimated:1 allowDelay:{objc_msgSend(_remainingReviewAssetRequests, "count", v8, v9, v10, v11) == 1}];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PUAssetExplorerReviewScreenViewController *)self _performCompletionAction:action];
  }
}

void __69__PUAssetExplorerReviewScreenViewController__handleCompletionAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleProgressControllerCanceled:v2];
}

- (id)_fileSizeMenuForSelectedUUIDs:(id)ds
{
  if (self->_delegateFlags.respondsToFileSizeMenu)
  {
    dsCopy = ds;
    delegate = [(PUAssetExplorerReviewScreenViewController *)self delegate];
    v6 = [delegate assetExplorerReviewScreenViewController:self fileSizeMenuForSelectedUUIDs:dsCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_titleForSelectedAssetUUIDs:(id)ds
{
  dsCopy = ds;
  if (([(PUAssetExplorerReviewScreenViewController *)self _options]& 8) == 0)
  {
    [(PUAssetExplorerReviewScreenViewController *)self _options];
  }

  _reviewDataSourceManager = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
  assetsDataSource = [_reviewDataSourceManager assetsDataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _reviewDataSourceManager2 = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
    assetsDataSource2 = [_reviewDataSourceManager2 assetsDataSource];

    photosDataSource = [assetsDataSource2 photosDataSource];
    photoLibrary = [photosDataSource photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v13 = MEMORY[0x1E6978630];
    allObjects = [dsCopy allObjects];
    v15 = [v13 fetchAssetsWithUUIDs:allObjects options:librarySpecificFetchOptions];

    [v15 countOfAssetsWithMediaType:1];
    [v15 countOfAssetsWithMediaType:2];
  }

  [dsCopy count];
  v16 = PXLocalizedSelectionMessageForAssetsCount();

  return v16;
}

- (void)_handleSelectionChanged
{
  if (([(PUAssetExplorerReviewScreenViewController *)self _options]& 4) != 0)
  {
    _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    selectionManager = [_actionManager selectionManager];

    selectedUUIDs = [selectionManager selectedUUIDs];
    v6 = [(PUAssetExplorerReviewScreenViewController *)self _titleForSelectedAssetUUIDs:selectedUUIDs];

    selectedUUIDs2 = [selectionManager selectedUUIDs];
    v8 = [(PUAssetExplorerReviewScreenViewController *)self _fileSizeMenuForSelectedUUIDs:selectedUUIDs2];

    _browsingSession = [(PUAssetExplorerReviewScreenViewController *)self _browsingSession];
    viewModel = [_browsingSession viewModel];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__PUAssetExplorerReviewScreenViewController__handleSelectionChanged__block_invoke;
    v17[3] = &unk_1E7B80C38;
    v18 = viewModel;
    v19 = v6;
    v11 = v6;
    v12 = viewModel;
    [v12 performChanges:v17];
    resizeTaskDescriptorViewModel = [v12 resizeTaskDescriptorViewModel];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__PUAssetExplorerReviewScreenViewController__handleSelectionChanged__block_invoke_2;
    v15[3] = &unk_1E7B77B90;
    v16 = v8;
    v14 = v8;
    [resizeTaskDescriptorViewModel performChanges:v15];
  }
}

uint64_t __68__PUAssetExplorerReviewScreenViewController__handleSelectionChanged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNavigationBarTitle:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 signalReviewScreenSelectionChanged];
}

- (void)assetExplorerReviewScreenActionManagerDidPressDeselectAll:(id)all
{
  _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager = [_actionManager selectionManager];

  [selectionManager performChanges:&__block_literal_global_275];
}

void __103__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManagerDidPressDeselectAll___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = a2;
  v4 = [v2 set];
  [v3 setSelectedUUIDs:v4];
}

- (void)assetExplorerReviewScreenActionManagerDidPressSelectAll:(id)all
{
  _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager = [_actionManager selectionManager];

  initialSelectedAssetUUIDs = [(PUAssetExplorerReviewScreenViewController *)self initialSelectedAssetUUIDs];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManagerDidPressSelectAll___block_invoke;
  v8[3] = &unk_1E7B75620;
  v9 = initialSelectedAssetUUIDs;
  v7 = initialSelectedAssetUUIDs;
  [selectionManager performChanges:v8];
}

- (void)assetExplorerReviewScreenActionManager:(id)manager didPressSelectForAsset:(id)asset
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager = [_actionManager selectionManager];
  selectionCountLimit = [(PUAssetExplorerReviewScreenViewController *)self selectionCountLimit];
  v10 = [selectionManager isSelectedUUID:uuid];
  v39 = selectionCountLimit;
  if ((v10 & 1) == 0 && selectionCountLimit && ([selectionManager selectedUUIDs], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v13 = objc_msgSend(selectionCountLimit, "unsignedIntValue"), v11, v12 >= v13))
  {
    v26 = PXLocalizedString();
    v27 = PXLocalizedString();
    unsignedIntValue = [selectionCountLimit unsignedIntValue];
    v28 = PULocalizedStringWithValidatedFormat(v27, @"%lu");

    v29 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v26 message:v28 preferredStyle:{1, unsignedIntValue}];
    v30 = MEMORY[0x1E69DC648];
    v31 = PXLocalizedString();
    v32 = [v30 actionWithTitle:v31 style:1 handler:0];
    [v29 addAction:v32];

    [(PUAssetExplorerReviewScreenViewController *)self presentViewController:v29 animated:1 completion:0];
  }

  else
  {
    v37 = _actionManager;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __107__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManager_didPressSelectForAsset___block_invoke;
    v40[3] = &unk_1E7B75728;
    v42 = v10 ^ 1;
    v38 = uuid;
    v14 = uuid;
    v41 = v14;
    v36 = selectionManager;
    [selectionManager performChanges:v40];
    v15 = @"PUAssetExplorerAnalyticsEventReselectPhoto";
    if (v10)
    {
      v15 = @"PUAssetExplorerAnalyticsEventRemovePhoto";
    }

    v16 = v15;
    assetExplorerAnalytics = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
    sourceType = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
    _actionManager2 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    [_actionManager2 selectionManager];
    v21 = v20 = assetCopy;
    selectedUUIDs = [v21 selectedUUIDs];
    [assetExplorerAnalytics sendEvent:v16 view:2 source:sourceType currentAssetCount:{objc_msgSend(selectedUUIDs, "count")}];

    assetCopy = v20;
    _reviewAssetProvider = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetProvider];
    if (_reviewAssetProvider)
    {
      initialSelectedAssetUUIDs = [(PUAssetExplorerReviewScreenViewController *)self initialSelectedAssetUUIDs];
      v25 = initialSelectedAssetUUIDs;
      if (v10)
      {
        [(PUAssetExplorerReviewScreenViewController *)self _cancelReviewAssetRequestForAssetUUID:v14];
      }

      else if (([initialSelectedAssetUUIDs containsObject:v14] & 1) == 0)
      {
        v33 = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetForUUID:v14];
        v34 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestForAssetUUID:v14];
        if (!(v33 | v34))
        {
          [(PUAssetExplorerReviewScreenViewController *)self _requestReviewAssetForAsset:v20];
        }
      }
    }

    _actionManager = v37;
    uuid = v38;
    selectionManager = v36;
  }
}

uint64_t __107__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManager_didPressSelectForAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [a2 addSelectedUUID:v2];
  }

  else
  {
    return [a2 removeSelectedUUID:v2];
  }
}

- (BOOL)assetExplorerReviewScreenActionManager:(id)manager shouldEnableActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  if (!self->_delegateFlags.respondsToShouldEnableActionType)
  {
    return 1;
  }

  collectionCopy = collection;
  assetCopy = asset;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(type) = [WeakRetained assetExplorerReviewScreenViewController:self shouldEnableActionType:type onAsset:assetCopy inAssetCollection:collectionCopy];

  return type;
}

- (BOOL)assetExplorerReviewScreenActionManager:(id)manager canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  managerCopy = manager;
  assetCopy = asset;
  collectionCopy = collection;
  if (self->_delegateFlags.respondsToCanPerformActionType && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v14 = [WeakRetained assetExplorerReviewScreenViewController:self canPerformActionType:type onAsset:assetCopy inAssetCollection:collectionCopy], WeakRetained, !v14))
  {
    v22 = 0;
  }

  else if ((type & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    selectionManager = [_actionManager selectionManager];
    selectedUUIDs = [selectionManager selectedUUIDs];
    v18 = [selectedUUIDs count];

    initialSelectedAssetUUIDs = [(PUAssetExplorerReviewScreenViewController *)self initialSelectedAssetUUIDs];
    v20 = [initialSelectedAssetUUIDs count];

    v21 = 8;
    if (v18 != v20)
    {
      v21 = 9;
    }

    v22 = v21 != type;
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (id)_getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager = [_actionManager selectionManager];
  _substituteAssetsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetsByUUID];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __104__PUAssetExplorerReviewScreenViewController__getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets__block_invoke;
  v14 = &unk_1E7B75700;
  v15 = selectionManager;
  v16 = v6;
  v7 = v6;
  v8 = selectionManager;
  [_substituteAssetsByUUID enumerateKeysAndObjectsUsingBlock:&v11];
  [_substituteAssetsByUUID removeAllObjects];
  v9 = [v7 copy];

  return v9;
}

void __104__PUAssetExplorerReviewScreenViewController__getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if ([v5 isSelectedUUID:v7])
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    [v6 removeAllFilesAtReferencedURLs];
  }
}

- (void)_deleteAllLinkedFiles
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _substituteAssetsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetsByUUID];
  [_substituteAssetsByUUID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_261];
  [_substituteAssetsByUUID removeAllObjects];
}

- (void)_updateWithSubstituteAsset:(id)asset shouldSelect:(BOOL)select
{
  selectCopy = select;
  assetCopy = asset;
  if (assetCopy)
  {
    [(PUAssetExplorerReviewScreenViewController *)self _setSubstituteAsset:assetCopy];
    _reviewDataSourceManager = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PUAssetExplorerReviewScreenViewController__updateWithSubstituteAsset_shouldSelect___block_invoke;
    v13[3] = &unk_1E7B756B8;
    v8 = assetCopy;
    v14 = v8;
    [_reviewDataSourceManager performChanges:v13];
    if (selectCopy)
    {
      _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
      selectionManager = [_actionManager selectionManager];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __85__PUAssetExplorerReviewScreenViewController__updateWithSubstituteAsset_shouldSelect___block_invoke_2;
      v11[3] = &unk_1E7B75620;
      v12 = v8;
      [selectionManager performChanges:v11];
    }
  }
}

void __85__PUAssetExplorerReviewScreenViewController__updateWithSubstituteAsset_shouldSelect___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uuid];
  [v3 addSelectedUUID:v4];
}

- (void)_setSubstituteAsset:(id)asset
{
  assetCopy = asset;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  uuid = [assetCopy uuid];
  if (uuid)
  {
    _substituteAssetsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetsByUUID];
    v6 = [_substituteAssetsByUUID objectForKeyedSubscript:uuid];
    [v6 removeAllFilesAtReferencedURLs];
    [_substituteAssetsByUUID setObject:assetCopy forKeyedSubscript:uuid];
  }
}

- (id)_substituteAssetForUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _substituteAssetsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetsByUUID];
  v6 = [_substituteAssetsByUUID objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)_createProgressControllerForRemainingRequests:(id)requests
{
  v35 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  _requestProgressController = [(PUAssetExplorerReviewScreenViewController *)self _requestProgressController];

  if (_requestProgressController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:612 description:@"Not expecting existing progress controller"];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = requestsCopy;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v7);
        }

        progress = [*(*(&v29 + 1) + 8 * i) progress];
        v10 += [progress totalUnitCount];
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v10];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        progress2 = [*(*(&v25 + 1) + 8 * j) progress];
        v21 = progress2;
        if (progress2)
        {
          [v14 addChild:progress2 withPendingUnitCount:{objc_msgSend(progress2, "totalUnitCount")}];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  v22 = objc_alloc_init(MEMORY[0x1E69C3308]);
  [v22 setProgress:v14];
  [(PUAssetExplorerReviewScreenViewController *)self _setRequestProgressController:v22];

  return v22;
}

- (void)_showFailedReviewAssetRequestAlert
{
  _failedReviewAssetRequestAlertController = [(PUAssetExplorerReviewScreenViewController *)self _failedReviewAssetRequestAlertController];
  if (!_failedReviewAssetRequestAlertController)
  {
    v4 = PULocalizedString(@"OK");
    v5 = PULocalizedString(@"REVIEW_DOWNLOADING_ASSETS_ERROR_TITLE");
    v6 = PULocalizedString(@"REVIEW_DOWNLOADING_ASSETS_ERROR_MESSAGE");
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    [(PUAssetExplorerReviewScreenViewController *)self _setFailedReviewAssetRequestAlertController:v7];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69DC648];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __79__PUAssetExplorerReviewScreenViewController__showFailedReviewAssetRequestAlert__block_invoke;
    v13 = &unk_1E7B7FC80;
    objc_copyWeak(&v14, &location);
    v9 = [v8 actionWithTitle:v4 style:0 handler:&v10];
    [v7 addAction:{v9, v10, v11, v12, v13}];

    [(PUAssetExplorerReviewScreenViewController *)self presentViewController:v7 animated:1 completion:0];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __79__PUAssetExplorerReviewScreenViewController__showFailedReviewAssetRequestAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleFailedReviewAssetRequestAlertControllerDismissal];
}

- (void)_handleReviewAssetRequest:(id)request completedWithSuccess:(BOOL)success canceled:(BOOL)canceled error:(id)error reviewAsset:(id)asset
{
  successCopy = success;
  requestCopy = request;
  assetCopy = asset;
  if (requestCopy)
  {
    sourceAsset = [requestCopy sourceAsset];
    uuid = [sourceAsset uuid];
    v16 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestForAssetUUID:uuid];
    if (v16 != requestCopy)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (assetCopy && successCopy)
    {
      identifier = [assetCopy identifier];
      v18 = [identifier isEqualToString:uuid];

      if ((v18 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:554 description:@"Expected asset identifiers to match"];
      }

      _actionManager2 = NSTemporaryDirectory();
      if ([assetCopy canPlayPhotoIris])
      {
        _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
        disableLivePhotosSelectionManager = [_actionManager disableLivePhotosSelectionManager];
        v22 = [disableLivePhotosSelectionManager isSelectedUUID:uuid] ^ 1;
      }

      else
      {
        v22 = 0;
      }

      selectionManager = [[PUReviewAsset alloc] initWithReviewAsset:assetCopy linkFileURLsToUniquePathsInDirectory:_actionManager2 canPlayPhotoIris:v22];
      [(PUAssetExplorerReviewScreenViewController *)self _updateWithSubstituteAsset:selectionManager shouldSelect:0];
    }

    else
    {
      if (canceled)
      {
LABEL_14:
        [(PUAssetExplorerReviewScreenViewController *)self _updateForCompletedReviewAssetRequest:requestCopy];
        goto LABEL_15;
      }

      _actionManager2 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
      selectionManager = [_actionManager2 selectionManager];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __119__PUAssetExplorerReviewScreenViewController__handleReviewAssetRequest_completedWithSuccess_canceled_error_reviewAsset___block_invoke;
      v25[3] = &unk_1E7B75620;
      v26 = uuid;
      [(PUReviewAsset *)selectionManager performChanges:v25];
      [(PUAssetExplorerReviewScreenViewController *)self _showFailedReviewAssetRequestAlert];
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)_requestReviewAssetForAsset:(id)asset
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  v7 = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetForUUID:uuid];
  v8 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestForAssetUUID:uuid];
  if (v7 | v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:523 description:@"We should not be trying to request an asset that we already have a file-backed asset for or for which we have a reviewAssetRequest in progress"];
  }

  v9 = [(PUAssetExplorerReviewScreenViewController *)self _createReviewAssetRequestForAsset:assetCopy];
  if (v9)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v9);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__PUAssetExplorerReviewScreenViewController__requestReviewAssetForAsset___block_invoke;
    v11[3] = &unk_1E7B75690;
    objc_copyWeak(&v12, &location);
    objc_copyWeak(&v13, &from);
    [v9 requestReviewAssetWithCompletionHandler:v11];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __73__PUAssetExplorerReviewScreenViewController__requestReviewAssetForAsset___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleReviewAssetRequest:v11 completedWithSuccess:a2 canceled:a3 error:v10 reviewAsset:v9];
}

- (void)_cancelReviewAssetRequests
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _reviewAssetRequestsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
  [_reviewAssetRequestsByUUID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_229];
  [_reviewAssetRequestsByUUID removeAllObjects];
}

- (void)_cancelReviewAssetRequestForAssetUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _reviewAssetRequestsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
  v5 = [_reviewAssetRequestsByUUID objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    [v5 cancelReviewAssetRequest];
    [_reviewAssetRequestsByUUID removeObjectForKey:dCopy];
  }
}

- (void)_updateForCompletedReviewAssetRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  sourceAsset = [requestCopy sourceAsset];

  uuid = [sourceAsset uuid];
  if (uuid)
  {
    _reviewAssetRequestsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
    [_reviewAssetRequestsByUUID removeObjectForKey:uuid];
    v7 = [_reviewAssetRequestsByUUID count];
    _requestProgressController = [(PUAssetExplorerReviewScreenViewController *)self _requestProgressController];
    v9 = _requestProgressController;
    if (!v7 && _requestProgressController)
    {
      _failedReviewAssetRequestAlertController = [(PUAssetExplorerReviewScreenViewController *)self _failedReviewAssetRequestAlertController];
      [v9 hideAnimated:1 allowDelay:0];
      [(PUAssetExplorerReviewScreenViewController *)self _tearDownProgressController];
      if (!_failedReviewAssetRequestAlertController)
      {
        [(PUAssetExplorerReviewScreenViewController *)self _performCompletionAction:0];
      }
    }
  }
}

- (id)_createReviewAssetRequestForAsset:(id)asset
{
  assetCopy = asset;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _reviewAssetProvider = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetProvider];
  v6 = [_reviewAssetProvider reviewAssetProviderRequestForDisplayAsset:assetCopy];
  if (v6)
  {
    uuid = [assetCopy uuid];
    _reviewAssetRequestsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
    [_reviewAssetRequestsByUUID setObject:v6 forKeyedSubscript:uuid];
  }

  return v6;
}

- (id)_reviewAssetRequestForAssetUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (dCopy)
  {
    _reviewAssetRequestsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
    v6 = [_reviewAssetRequestsByUUID objectForKeyedSubscript:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_remainingReviewAssetRequests
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _reviewAssetRequestsByUUID = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
  allValues = [_reviewAssetRequestsByUUID allValues];

  return allValues;
}

- (id)childViewControllerForStatusBarHidden
{
  _navigationController = [(PUAssetExplorerReviewScreenViewController *)self _navigationController];

  if (_navigationController)
  {
    _navigationController2 = [(PUAssetExplorerReviewScreenViewController *)self _navigationController];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUAssetExplorerReviewScreenViewController;
    _navigationController2 = [(PUAssetExplorerReviewScreenViewController *)&v6 childViewControllerForStatusBarHidden];
  }

  return _navigationController2;
}

- (id)childViewControllerForStatusBarStyle
{
  _navigationController = [(PUAssetExplorerReviewScreenViewController *)self _navigationController];

  if (_navigationController)
  {
    _navigationController2 = [(PUAssetExplorerReviewScreenViewController *)self _navigationController];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUAssetExplorerReviewScreenViewController;
    _navigationController2 = [(PUAssetExplorerReviewScreenViewController *)&v6 childViewControllerForStatusBarStyle];
  }

  return _navigationController2;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = PUAssetExplorerReviewScreenViewController;
  [(PUAssetExplorerReviewScreenViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (self->_delegateFlags.respondsToWillTransitionToSize)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetExplorerReviewScreenViewController:self willTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
  }
}

- (id)_createBrowsingSessionIfNecessary
{
  browsingSession = self->__browsingSession;
  if (!browsingSession)
  {
    _reviewDataSourceManager = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
    _reviewMediaProvider = [(PUAssetExplorerReviewScreenViewController *)self _reviewMediaProvider];
    initialSelectedAssetUUIDs = [(PUAssetExplorerReviewScreenViewController *)self initialSelectedAssetUUIDs];
    initialDisabledLivePhotoAssetUUIDs = [(PUAssetExplorerReviewScreenViewController *)self initialDisabledLivePhotoAssetUUIDs];
    v8 = [[PUAssetExplorerReviewScreenActionManager alloc] initWithSourceType:[(PUAssetExplorerReviewScreenViewController *)self sourceType]];
    [(PUAssetExplorerReviewScreenActionManager *)v8 setReviewScreenActionManagerDelegate:self];
    [(PUAssetExplorerReviewScreenActionManager *)v8 setReviewAssetProvider:self];
    selectionManager = [(PUAssetExplorerReviewScreenActionManager *)v8 selectionManager];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke;
    v43[3] = &unk_1E7B75620;
    v10 = initialSelectedAssetUUIDs;
    v44 = v10;
    [selectionManager performChanges:v43];
    [selectionManager registerChangeObserver:self context:PUReviewScreenSelectionManagerObservationContext];
    disableLivePhotosSelectionManager = [(PUAssetExplorerReviewScreenActionManager *)v8 disableLivePhotosSelectionManager];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke_2;
    v41[3] = &unk_1E7B75620;
    v30 = disableLivePhotosSelectionManager;
    v31 = initialDisabledLivePhotoAssetUUIDs;
    v42 = v31;
    [disableLivePhotosSelectionManager performChanges:v41];
    v32 = _reviewMediaProvider;
    v33 = _reviewDataSourceManager;
    v12 = [[PUBrowsingSession alloc] initWithDataSourceManager:_reviewDataSourceManager actionManager:v8 mediaProvider:_reviewMediaProvider photosDetailsContext:0 lowMemoryMode:[(PUAssetExplorerReviewScreenViewController *)self _lowMemoryMode]];
    initialAssetReference = [(PUAssetExplorerReviewScreenViewController *)self initialAssetReference];
    if (initialAssetReference)
    {
      startingAssetReference = initialAssetReference;
    }

    else
    {
      initialIndexPath = [(PUAssetExplorerReviewScreenViewController *)self initialIndexPath];
      if (!initialIndexPath || (v16 = initialIndexPath, [v33 assetsDataSource], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "assetReferenceAtIndexPath:", v16), startingAssetReference = objc_claimAutoreleasedReturnValue(), v17, v16, !startingAssetReference))
      {
        assetsDataSource = [v33 assetsDataSource];
        startingAssetReference = [assetsDataSource startingAssetReference];
      }
    }

    viewModel = [(PUBrowsingSession *)v12 viewModel];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke_3;
    v36[3] = &unk_1E7B7F1D0;
    v37 = startingAssetReference;
    v38 = viewModel;
    selfCopy = self;
    v20 = v10;
    v40 = v20;
    v21 = viewModel;
    v22 = startingAssetReference;
    [v21 performChanges:v36];
    [v21 registerChangeObserver:self];
    resizeTaskDescriptorViewModel = [(PUAssetExplorerReviewScreenViewController *)self resizeTaskDescriptorViewModel];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke_4;
    v34[3] = &unk_1E7B75648;
    v34[4] = self;
    v35 = v20;
    v24 = v20;
    [resizeTaskDescriptorViewModel performChanges:v34];

    actionManager = self->__actionManager;
    self->__actionManager = v8;
    v26 = v8;

    v27 = self->__browsingSession;
    self->__browsingSession = v12;
    v28 = v12;

    browsingSession = self->__browsingSession;
  }

  return browsingSession;
}

void __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setCurrentAssetReference:?];
  }

  v2 = [*(a1 + 48) reviewBarsModel];

  if (v2)
  {
    v3 = [*(a1 + 48) reviewBarsModel];
    [*(a1 + 40) setReviewScreenBarsModel:v3];
  }

  [*(a1 + 40) setVideoContentAllowed:1 forReason:@"AssetExplorer"];
  v4 = [*(a1 + 48) resizeTaskDescriptorViewModel];

  if (v4)
  {
    v5 = [*(a1 + 48) resizeTaskDescriptorViewModel];
    [*(a1 + 40) setResizeTaskDescriptorViewModel:v5];
  }

  if (([*(a1 + 48) _options] & 4) != 0)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) _titleForSelectedAssetUUIDs:*(a1 + 56)];
    [v6 setNavigationBarTitle:v7];
  }
}

void __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _fileSizeMenuForSelectedUUIDs:v3];
  [v4 setFileSizeMenu:v5];
}

- (void)loadView
{
  v23.receiver = self;
  v23.super_class = PUAssetExplorerReviewScreenViewController;
  [(PUAssetExplorerReviewScreenViewController *)&v23 loadView];
  _spec = [(PUAssetExplorerReviewScreenViewController *)self _spec];
  _createBrowsingSessionIfNecessary = [(PUAssetExplorerReviewScreenViewController *)self _createBrowsingSessionIfNecessary];
  sourceType = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  v6 = -[PUOneUpViewController initWithBrowsingSession:options:initialActivity:]([PUOneUpViewController alloc], "initWithBrowsingSession:options:initialActivity:", _createBrowsingSessionIfNecessary, [_spec oneUpOptions], 0);
  v7 = [[PUNavigationController alloc] initWithRootViewController:v6];
  [(PUAssetExplorerReviewScreenViewController *)self addChildViewController:v7];
  view = [(PUAssetExplorerReviewScreenViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view2 = [(PUNavigationController *)v7 view];
  [view2 setFrame:{v10, v12, v14, v16}];
  [view2 setAutoresizingMask:18];
  [view addSubview:view2];
  [(PUNavigationController *)v7 didMoveToParentViewController:self];
  navigationController = self->__navigationController;
  self->__navigationController = v7;

  assetExplorerAnalytics = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
  _actionManager = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  selectionManager = [_actionManager selectionManager];
  selectedUUIDs = [selectionManager selectedUUIDs];
  [assetExplorerAnalytics sendEvent:@"PUAssetExplorerAnalyticsEventOpen1Up" view:1 source:sourceType currentAssetCount:{objc_msgSend(selectedUUIDs, "count")}];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToDidPerformCompletionAction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidPressCancel = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToDidPressRetake = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCanPerformActionType = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldEnableActionType = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillTransitionToSize = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToFileSizeMenu = objc_opt_respondsToSelector() & 1;
  }
}

- (PUAssetExplorerAnalytics)assetExplorerAnalytics
{
  assetExplorerAnalytics = self->_assetExplorerAnalytics;
  if (!assetExplorerAnalytics)
  {
    v4 = objc_alloc_init(PUAssetExplorerAnalytics);
    v5 = self->_assetExplorerAnalytics;
    self->_assetExplorerAnalytics = v4;

    assetExplorerAnalytics = self->_assetExplorerAnalytics;
  }

  return assetExplorerAnalytics;
}

- (PUAssetExplorerReviewScreenViewController)initWithDataSourceManager:(id)manager mediaProvider:(id)provider reviewAssetProvider:(id)assetProvider initialIndexPath:(id)path initialAssetReference:(id)reference initialSelectedAssetUUIDs:(id)ds initialDisabledLivePhotoAssetUUIDs:(id)iDs selectionCountLimit:(id)self0 sourceType:(unint64_t)self1 lowMemoryMode:(BOOL)self2 reviewBarsModel:(id)self3 resizeTaskDescriptorViewModel:(id)self4 options:(unint64_t)self5
{
  managerCopy = manager;
  providerCopy = provider;
  assetProviderCopy = assetProvider;
  pathCopy = path;
  pathCopy2 = path;
  referenceCopy = reference;
  dsCopy = ds;
  iDsCopy = iDs;
  limitCopy = limit;
  modelCopy = model;
  viewModelCopy = viewModel;
  v54.receiver = self;
  v54.super_class = PUAssetExplorerReviewScreenViewController;
  v23 = [(PUAssetExplorerReviewScreenViewController *)&v54 initWithNibName:0 bundle:0];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->__clientDataSourceManager, manager);
    objc_storeStrong(&v24->__clientMediaProvider, provider);
    objc_storeStrong(&v24->__reviewAssetProvider, assetProvider);
    v25 = [[PUAssetExplorerReviewScreenAssetsDataSourceManager alloc] initWithOriginalDataSourceManager:managerCopy];
    reviewDataSourceManager = v24->__reviewDataSourceManager;
    v24->__reviewDataSourceManager = v25;

    v27 = objc_alloc_init(PUJoiningMediaProvider);
    reviewMediaProvider = v24->__reviewMediaProvider;
    v24->__reviewMediaProvider = v27;

    v29 = objc_alloc_init(PUReviewAssetsMediaProvider);
    [(PUJoiningMediaProvider *)v24->__reviewMediaProvider registerMediaProvider:v29 forAssetPassingTest:&__block_literal_global_10474];
    v30 = v24->__reviewMediaProvider;
    _clientMediaProvider = [(PUAssetExplorerReviewScreenViewController *)v24 _clientMediaProvider];
    [(PUJoiningMediaProvider *)v30 registerMediaProvider:_clientMediaProvider forAssetClass:objc_opt_class()];

    objc_storeStrong(&v24->_initialIndexPath, pathCopy);
    objc_storeStrong(&v24->_initialAssetReference, reference);
    v32 = [dsCopy copy];
    initialSelectedAssetUUIDs = v24->_initialSelectedAssetUUIDs;
    v24->_initialSelectedAssetUUIDs = v32;

    v34 = [iDsCopy copy];
    initialDisabledLivePhotoAssetUUIDs = v24->_initialDisabledLivePhotoAssetUUIDs;
    v24->_initialDisabledLivePhotoAssetUUIDs = v34;

    objc_storeStrong(&v24->_selectionCountLimit, limit);
    objc_storeStrong(&v24->_reviewBarsModel, model);
    objc_storeStrong(&v24->_resizeTaskDescriptorViewModel, viewModel);
    v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reviewAssetRequestsByUUID = v24->__reviewAssetRequestsByUUID;
    v24->__reviewAssetRequestsByUUID = v36;

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    substituteAssetsByUUID = v24->__substituteAssetsByUUID;
    v24->__substituteAssetsByUUID = v38;

    v24->_sourceType = type;
    v24->__lowMemoryMode = mode;
    v24->__options = options;
    v40 = [[PUReviewScreenSpec alloc] initWithOptions:options];
    spec = v24->__spec;
    v24->__spec = v40;

    v42 = v24;
  }

  return v24;
}

uint64_t __304__PUAssetExplorerReviewScreenViewController_initWithDataSourceManager_mediaProvider_reviewAssetProvider_initialIndexPath_initialAssetReference_initialSelectedAssetUUIDs_initialDisabledLivePhotoAssetUUIDs_selectionCountLimit_sourceType_lowMemoryMode_reviewBarsModel_resizeTaskDescriptorViewModel_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end