@interface PUAssetExplorerReviewScreenViewController
- (BOOL)assetExplorerReviewScreenActionManager:(id)a3 canPerformActionType:(unint64_t)a4 onAsset:(id)a5 inAssetCollection:(id)a6;
- (BOOL)assetExplorerReviewScreenActionManager:(id)a3 shouldEnableActionType:(unint64_t)a4 onAsset:(id)a5 inAssetCollection:(id)a6;
- (PUAssetExplorerAnalytics)assetExplorerAnalytics;
- (PUAssetExplorerReviewScreenViewController)initWithDataSourceManager:(id)a3 mediaProvider:(id)a4 reviewAssetProvider:(id)a5 initialIndexPath:(id)a6 initialAssetReference:(id)a7 initialSelectedAssetUUIDs:(id)a8 initialDisabledLivePhotoAssetUUIDs:(id)a9 selectionCountLimit:(id)a10 sourceType:(unint64_t)a11 lowMemoryMode:(BOOL)a12 reviewBarsModel:(id)a13 resizeTaskDescriptorViewModel:(id)a14 options:(unint64_t)a15;
- (PUAssetExplorerReviewScreenViewControllerDelegate)delegate;
- (id)_createBrowsingSessionIfNecessary;
- (id)_createProgressControllerForRemainingRequests:(id)a3;
- (id)_createReviewAssetRequestForAsset:(id)a3;
- (id)_fileSizeMenuForSelectedUUIDs:(id)a3;
- (id)_getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets;
- (id)_remainingReviewAssetRequests;
- (id)_reviewAssetRequestForAssetUUID:(id)a3;
- (id)_substituteAssetForUUID:(id)a3;
- (id)_titleForSelectedAssetUUIDs:(id)a3;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)reviewAssetProviderRequestForDisplayAsset:(id)a3;
- (void)_cancelReviewAssetRequestForAssetUUID:(id)a3;
- (void)_cancelReviewAssetRequests;
- (void)_deleteAllLinkedFiles;
- (void)_handleCompletionAction:(unint64_t)a3;
- (void)_handleProgressControllerCanceled:(id)a3;
- (void)_handleReviewAssetRequest:(id)a3 completedWithSuccess:(BOOL)a4 canceled:(BOOL)a5 error:(id)a6 reviewAsset:(id)a7;
- (void)_handleSelectionChanged;
- (void)_performCancelAction;
- (void)_performCompletionAction:(unint64_t)a3;
- (void)_performCompletionActionSteps:(unint64_t)a3;
- (void)_performRetakeAction;
- (void)_presentConfidentialityAlertWithConfirmAction:(id)a3 abortAction:(id)a4;
- (void)_requestReviewAssetForAsset:(id)a3;
- (void)_setSubstituteAsset:(id)a3;
- (void)_showFailedReviewAssetRequestAlert;
- (void)_updateForCompletedReviewAssetRequest:(id)a3;
- (void)_updateWithSubstituteAsset:(id)a3 shouldSelect:(BOOL)a4;
- (void)assetExplorerReviewScreenActionManager:(id)a3 didPressSelectForAsset:(id)a4;
- (void)assetExplorerReviewScreenActionManager:(id)a3 didToggleLivePhoto:(id)a4;
- (void)assetExplorerReviewScreenActionManagerDidPressDeselectAll:(id)a3;
- (void)assetExplorerReviewScreenActionManagerDidPressSelectAll:(id)a3;
- (void)loadView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoEditController:(id)a3 didFinishEditingSessionForAsset:(id)a4 completed:(BOOL)a5;
- (void)photoMarkupController:(id)a3 didFinishWithSavedAsset:(id)a4;
- (void)setDelegate:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUAssetExplorerReviewScreenViewController

- (PUAssetExplorerReviewScreenViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  if ([a4 currentAssetDidChange])
  {
    v9 = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
    v5 = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
    v6 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    v7 = [v6 selectionManager];
    v8 = [v7 selectedUUIDs];
    [v9 sendEvent:@"PUAssetExplorerAnalyticsEventScroll" view:2 source:v5 currentAssetCount:{objc_msgSend(v8, "count")}];
  }
}

- (void)_presentConfidentialityAlertWithConfirmAction:(id)a3 abortAction:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DC648];
  v7 = a4;
  v8 = a3;
  v9 = PULocalizedString(@"OK");
  v10 = [v6 actionWithTitle:v9 style:0 handler:v8];

  v11 = MEMORY[0x1E69DC648];
  v12 = PULocalizedString(@"CANCEL");
  v13 = [v11 actionWithTitle:v12 style:0 handler:v7];

  v14 = MEMORY[0x1E69C3A10];
  v17[0] = v10;
  v17[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v16 = [v14 confidentialityAlertWithActions:v15];

  [(PUAssetExplorerReviewScreenViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)_performCompletionActionSteps:(unint64_t)a3
{
  v22 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v5 = [v22 selectionManager];
  v6 = [v5 selectedUUIDs];
  v7 = [v22 disableLivePhotosSelectionManager];
  v8 = [v7 selectedUUIDs];
  v9 = [(PUAssetExplorerReviewScreenViewController *)self _getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets];
  v10 = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
  [v10 detachFromOriginalDataSourceManager];

  if (self->_delegateFlags.respondsToDidPerformCompletionAction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetExplorerReviewScreenViewController:self didPerformCompletionAction:a3 withSelectedAssetUUIDs:v6 livePhotoDisabledAssetUUIDs:v8 substituteAssetsByUUID:v9];
  }

  v20 = v5;
  v12 = v6;
  if (!a3)
  {
    v13 = PUAssetExplorerAnalyticsEventCompleteReviewDone;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v13 = PUAssetExplorerAnalyticsEventCompleteReviewSend;
LABEL_7:
    v14 = *v13;
    goto LABEL_9;
  }

  v14 = 0;
LABEL_9:
  v15 = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
  v16 = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  v17 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v18 = [v17 selectionManager];
  v19 = [v18 selectedUUIDs];
  [v15 sendEvent:v14 view:2 source:v16 currentAssetCount:{objc_msgSend(v19, "count")}];

  kdebug_trace();
}

- (void)_performCompletionAction:(unint64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (![MEMORY[0x1E69C3A10] confidentialityCheckRequired])
  {
    goto LABEL_25;
  }

  v5 = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  v6 = 0;
  if (v5 <= 3 && v5 != 2)
  {
    v31 = a3;
    v7 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    v8 = [v7 selectionManager];
    v9 = [v8 selectedUUIDs];
    v10 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    if (!v10)
    {
      v10 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    }

    v11 = [v10 librarySpecificFetchOptions];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v28 = v10;
      v29 = v8;
      v30 = v7;
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
        v19 = [v17 fetchAssetsWithLocalIdentifiers:v18 options:v11];
        v20 = [v19 lastObject];

        LOBYTE(v18) = [MEMORY[0x1E69C3A10] confidentialWarningRequiredForAsset:v20];
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

      v7 = v30;
      v10 = v28;
      v8 = v29;
    }

    else
    {
      v6 = 0;
    }

    a3 = v31;
  }

  v21 = [(PUAssetExplorerReviewScreenViewController *)self _browsingSession];
  v22 = [v21 viewModel];
  v23 = [v22 currentAssetReference];
  v24 = [v23 asset];
  v25 = [v24 conformsToProtocol:&unk_1F2BDF898];

  if (!v25)
  {

    if (v6)
    {
      goto LABEL_27;
    }

LABEL_25:
    [(PUAssetExplorerReviewScreenViewController *)self _performCompletionActionSteps:a3];
    return;
  }

  v26 = [v23 asset];
  if (v26)
  {
    v27 = v6;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    LOBYTE(v6) = [MEMORY[0x1E69C3A10] confidentialWarningRequiredForAsset:v26];
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
  v32[5] = a3;
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
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
  [v3 detachFromOriginalDataSourceManager];

  if (self->_delegateFlags.respondsToDidPressCancel)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetExplorerReviewScreenViewControllerDidPressCancel:self];
  }
}

- (id)reviewAssetProviderRequestForDisplayAsset:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetProvider];
  v6 = [v5 reviewAssetProviderRequestForDisplayAsset:v4];

  return v6;
}

- (void)photoMarkupController:(id)a3 didFinishWithSavedAsset:(id)a4
{
  v13 = a3;
  if (a4)
  {
    [(PUAssetExplorerReviewScreenViewController *)self _updateWithSubstituteAsset:a4 shouldSelect:1];
    v6 = PUAssetExplorerAnalyticsEventMarkupSave;
  }

  else
  {
    v6 = PUAssetExplorerAnalyticsEventMarkupCancel;
  }

  v7 = *v6;
  v8 = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
  v9 = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  v10 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v11 = [v10 selectionManager];
  v12 = [v11 selectedUUIDs];
  [v8 sendEvent:v7 view:2 source:v9 currentAssetCount:{objc_msgSend(v12, "count")}];

  [v13 unregisterObserver:self];
}

- (void)photoEditController:(id)a3 didFinishEditingSessionForAsset:(id)a4 completed:(BOOL)a5
{
  v5 = a5;
  v16 = a4;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:1021 description:@"Editing a photo must output a PUReviewAsset!"];
    }

    [(PUAssetExplorerReviewScreenViewController *)self _updateWithSubstituteAsset:v16 shouldSelect:1];
    v8 = PUAssetExplorerAnalyticsEventEditSave;
  }

  else
  {
    v8 = PUAssetExplorerAnalyticsEventEditCancel;
  }

  v9 = *v8;
  v10 = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
  v11 = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  v12 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v13 = [v12 selectionManager];
  v14 = [v13 selectedUUIDs];
  [v10 sendEvent:v9 view:2 source:v11 currentAssetCount:{objc_msgSend(v14, "count")}];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PUReviewScreenSelectionManagerObservationContext == a5)
  {
    [(PUAssetExplorerReviewScreenViewController *)self _handleSelectionChanged:a3];
  }
}

- (void)assetExplorerReviewScreenActionManager:(id)a3 didToggleLivePhoto:(id)a4
{
  v5 = a4;
  if ([v5 conformsToProtocol:&unk_1F2BDF7B0])
  {
    v6 = v5;
    v7 = [v6 uuid];
    v8 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    v9 = [v8 disableLivePhotosSelectionManager];
    v10 = [v9 isSelectedUUID:v7];

    v11 = [PUReviewAsset createUniqueMediaDirectoryForAssetWithIdentifier:v7];
    v12 = [PUReviewAsset alloc];
    v13 = [v11 path];
    v14 = [(PUReviewAsset *)v12 initWithReviewAsset:v6 linkFileURLsToUniquePathsInDirectory:v13 canPlayPhotoIris:v10 ^ 1u];

    v15 = [(PUAssetExplorerReviewScreenViewController *)self _browsingSession];
    v16 = [v15 viewModel];
    v17 = [v16 assetViewModelForCurrentAssetReference];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __103__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManager_didToggleLivePhoto___block_invoke;
    v30[3] = &unk_1E7B80DD0;
    v18 = v17;
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
    v21 = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
    v22 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    v23 = [v22 selectionManager];
    v24 = [v23 selectedUUIDs];
    [v20 sendEvent:@"PUAssetExplorerAnalyticsEventToggleLivePhoto" view:2 source:v21 currentAssetCount:{objc_msgSend(v24, "count")}];
  }
}

- (void)_handleProgressControllerCanceled:(id)a3
{
  v8 = a3;
  v5 = [(PUAssetExplorerReviewScreenViewController *)self _requestProgressController];

  v6 = v8;
  if (v5 != v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:958 description:@"Not expecting multiple progress controllers"];

    v6 = v8;
  }

  [v6 hideAnimated:1 allowDelay:0];
  [(PUAssetExplorerReviewScreenViewController *)self _tearDownProgressController];
  [(PUAssetExplorerReviewScreenViewController *)self _performCancelAction];
}

- (void)_handleCompletionAction:(unint64_t)a3
{
  kdebug_trace();
  v5 = [(PUAssetExplorerReviewScreenViewController *)self _remainingReviewAssetRequests];
  if ([v5 count])
  {
    v6 = [(PUAssetExplorerReviewScreenViewController *)self _createProgressControllerForRemainingRequests:v5];
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
    [v6 showAnimated:1 allowDelay:{objc_msgSend(v5, "count", v8, v9, v10, v11) == 1}];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PUAssetExplorerReviewScreenViewController *)self _performCompletionAction:a3];
  }
}

void __69__PUAssetExplorerReviewScreenViewController__handleCompletionAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleProgressControllerCanceled:v2];
}

- (id)_fileSizeMenuForSelectedUUIDs:(id)a3
{
  if (self->_delegateFlags.respondsToFileSizeMenu)
  {
    v4 = a3;
    v5 = [(PUAssetExplorerReviewScreenViewController *)self delegate];
    v6 = [v5 assetExplorerReviewScreenViewController:self fileSizeMenuForSelectedUUIDs:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_titleForSelectedAssetUUIDs:(id)a3
{
  v4 = a3;
  if (([(PUAssetExplorerReviewScreenViewController *)self _options]& 8) == 0)
  {
    [(PUAssetExplorerReviewScreenViewController *)self _options];
  }

  v5 = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
  v6 = [v5 assetsDataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
    v9 = [v8 assetsDataSource];

    v10 = [v9 photosDataSource];
    v11 = [v10 photoLibrary];
    v12 = [v11 librarySpecificFetchOptions];

    v13 = MEMORY[0x1E6978630];
    v14 = [v4 allObjects];
    v15 = [v13 fetchAssetsWithUUIDs:v14 options:v12];

    [v15 countOfAssetsWithMediaType:1];
    [v15 countOfAssetsWithMediaType:2];
  }

  [v4 count];
  v16 = PXLocalizedSelectionMessageForAssetsCount();

  return v16;
}

- (void)_handleSelectionChanged
{
  if (([(PUAssetExplorerReviewScreenViewController *)self _options]& 4) != 0)
  {
    v3 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    v4 = [v3 selectionManager];

    v5 = [v4 selectedUUIDs];
    v6 = [(PUAssetExplorerReviewScreenViewController *)self _titleForSelectedAssetUUIDs:v5];

    v7 = [v4 selectedUUIDs];
    v8 = [(PUAssetExplorerReviewScreenViewController *)self _fileSizeMenuForSelectedUUIDs:v7];

    v9 = [(PUAssetExplorerReviewScreenViewController *)self _browsingSession];
    v10 = [v9 viewModel];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__PUAssetExplorerReviewScreenViewController__handleSelectionChanged__block_invoke;
    v17[3] = &unk_1E7B80C38;
    v18 = v10;
    v19 = v6;
    v11 = v6;
    v12 = v10;
    [v12 performChanges:v17];
    v13 = [v12 resizeTaskDescriptorViewModel];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__PUAssetExplorerReviewScreenViewController__handleSelectionChanged__block_invoke_2;
    v15[3] = &unk_1E7B77B90;
    v16 = v8;
    v14 = v8;
    [v13 performChanges:v15];
  }
}

uint64_t __68__PUAssetExplorerReviewScreenViewController__handleSelectionChanged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNavigationBarTitle:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 signalReviewScreenSelectionChanged];
}

- (void)assetExplorerReviewScreenActionManagerDidPressDeselectAll:(id)a3
{
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v4 = [v3 selectionManager];

  [v4 performChanges:&__block_literal_global_275];
}

void __103__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManagerDidPressDeselectAll___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = a2;
  v4 = [v2 set];
  [v3 setSelectedUUIDs:v4];
}

- (void)assetExplorerReviewScreenActionManagerDidPressSelectAll:(id)a3
{
  v4 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v5 = [v4 selectionManager];

  v6 = [(PUAssetExplorerReviewScreenViewController *)self initialSelectedAssetUUIDs];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManagerDidPressSelectAll___block_invoke;
  v8[3] = &unk_1E7B75620;
  v9 = v6;
  v7 = v6;
  [v5 performChanges:v8];
}

- (void)assetExplorerReviewScreenActionManager:(id)a3 didPressSelectForAsset:(id)a4
{
  v5 = a4;
  v6 = [v5 uuid];
  v7 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v8 = [v7 selectionManager];
  v9 = [(PUAssetExplorerReviewScreenViewController *)self selectionCountLimit];
  v10 = [v8 isSelectedUUID:v6];
  v39 = v9;
  if ((v10 & 1) == 0 && v9 && ([v8 selectedUUIDs], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v13 = objc_msgSend(v9, "unsignedIntValue"), v11, v12 >= v13))
  {
    v26 = PXLocalizedString();
    v27 = PXLocalizedString();
    v35 = [v9 unsignedIntValue];
    v28 = PULocalizedStringWithValidatedFormat(v27, @"%lu");

    v29 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v26 message:v28 preferredStyle:{1, v35}];
    v30 = MEMORY[0x1E69DC648];
    v31 = PXLocalizedString();
    v32 = [v30 actionWithTitle:v31 style:1 handler:0];
    [v29 addAction:v32];

    [(PUAssetExplorerReviewScreenViewController *)self presentViewController:v29 animated:1 completion:0];
  }

  else
  {
    v37 = v7;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __107__PUAssetExplorerReviewScreenViewController_assetExplorerReviewScreenActionManager_didPressSelectForAsset___block_invoke;
    v40[3] = &unk_1E7B75728;
    v42 = v10 ^ 1;
    v38 = v6;
    v14 = v6;
    v41 = v14;
    v36 = v8;
    [v8 performChanges:v40];
    v15 = @"PUAssetExplorerAnalyticsEventReselectPhoto";
    if (v10)
    {
      v15 = @"PUAssetExplorerAnalyticsEventRemovePhoto";
    }

    v16 = v15;
    v17 = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
    v18 = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
    v19 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    [v19 selectionManager];
    v21 = v20 = v5;
    v22 = [v21 selectedUUIDs];
    [v17 sendEvent:v16 view:2 source:v18 currentAssetCount:{objc_msgSend(v22, "count")}];

    v5 = v20;
    v23 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetProvider];
    if (v23)
    {
      v24 = [(PUAssetExplorerReviewScreenViewController *)self initialSelectedAssetUUIDs];
      v25 = v24;
      if (v10)
      {
        [(PUAssetExplorerReviewScreenViewController *)self _cancelReviewAssetRequestForAssetUUID:v14];
      }

      else if (([v24 containsObject:v14] & 1) == 0)
      {
        v33 = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetForUUID:v14];
        v34 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestForAssetUUID:v14];
        if (!(v33 | v34))
        {
          [(PUAssetExplorerReviewScreenViewController *)self _requestReviewAssetForAsset:v20];
        }
      }
    }

    v7 = v37;
    v6 = v38;
    v8 = v36;
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

- (BOOL)assetExplorerReviewScreenActionManager:(id)a3 shouldEnableActionType:(unint64_t)a4 onAsset:(id)a5 inAssetCollection:(id)a6
{
  if (!self->_delegateFlags.respondsToShouldEnableActionType)
  {
    return 1;
  }

  v9 = a6;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(a4) = [WeakRetained assetExplorerReviewScreenViewController:self shouldEnableActionType:a4 onAsset:v10 inAssetCollection:v9];

  return a4;
}

- (BOOL)assetExplorerReviewScreenActionManager:(id)a3 canPerformActionType:(unint64_t)a4 onAsset:(id)a5 inAssetCollection:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self->_delegateFlags.respondsToCanPerformActionType && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v14 = [WeakRetained assetExplorerReviewScreenViewController:self canPerformActionType:a4 onAsset:v11 inAssetCollection:v12], WeakRetained, !v14))
  {
    v22 = 0;
  }

  else if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v15 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
    v16 = [v15 selectionManager];
    v17 = [v16 selectedUUIDs];
    v18 = [v17 count];

    v19 = [(PUAssetExplorerReviewScreenViewController *)self initialSelectedAssetUUIDs];
    v20 = [v19 count];

    v21 = 8;
    if (v18 != v20)
    {
      v21 = 9;
    }

    v22 = v21 != a4;
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
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v4 = [v3 selectionManager];
  v5 = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetsByUUID];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __104__PUAssetExplorerReviewScreenViewController__getSelectedSubstituteAssetsAndRemoveFilesForUnneededAssets__block_invoke;
  v14 = &unk_1E7B75700;
  v15 = v4;
  v16 = v6;
  v7 = v6;
  v8 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];
  [v5 removeAllObjects];
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
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetsByUUID];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_261];
  [v3 removeAllObjects];
}

- (void)_updateWithSubstituteAsset:(id)a3 shouldSelect:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    [(PUAssetExplorerReviewScreenViewController *)self _setSubstituteAsset:v6];
    v7 = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PUAssetExplorerReviewScreenViewController__updateWithSubstituteAsset_shouldSelect___block_invoke;
    v13[3] = &unk_1E7B756B8;
    v8 = v6;
    v14 = v8;
    [v7 performChanges:v13];
    if (v4)
    {
      v9 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
      v10 = [v9 selectionManager];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __85__PUAssetExplorerReviewScreenViewController__updateWithSubstituteAsset_shouldSelect___block_invoke_2;
      v11[3] = &unk_1E7B75620;
      v12 = v8;
      [v10 performChanges:v11];
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

- (void)_setSubstituteAsset:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [v7 uuid];
  if (v4)
  {
    v5 = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetsByUUID];
    v6 = [v5 objectForKeyedSubscript:v4];
    [v6 removeAllFilesAtReferencedURLs];
    [v5 setObject:v7 forKeyedSubscript:v4];
  }
}

- (id)_substituteAssetForUUID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetsByUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)_createProgressControllerForRemainingRequests:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PUAssetExplorerReviewScreenViewController *)self _requestProgressController];

  if (v6)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:612 description:@"Not expecting existing progress controller"];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
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

        v13 = [*(*(&v29 + 1) + 8 * i) progress];
        v10 += [v13 totalUnitCount];
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

        v20 = [*(*(&v25 + 1) + 8 * j) progress];
        v21 = v20;
        if (v20)
        {
          [v14 addChild:v20 withPendingUnitCount:{objc_msgSend(v20, "totalUnitCount")}];
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
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _failedReviewAssetRequestAlertController];
  if (!v3)
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

- (void)_handleReviewAssetRequest:(id)a3 completedWithSuccess:(BOOL)a4 canceled:(BOOL)a5 error:(id)a6 reviewAsset:(id)a7
{
  v9 = a4;
  v12 = a3;
  v13 = a7;
  if (v12)
  {
    v14 = [v12 sourceAsset];
    v15 = [v14 uuid];
    v16 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestForAssetUUID:v15];
    if (v16 != v12)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (v13 && v9)
    {
      v17 = [v13 identifier];
      v18 = [v17 isEqualToString:v15];

      if ((v18 & 1) == 0)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        [v24 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:554 description:@"Expected asset identifiers to match"];
      }

      v19 = NSTemporaryDirectory();
      if ([v13 canPlayPhotoIris])
      {
        v20 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
        v21 = [v20 disableLivePhotosSelectionManager];
        v22 = [v21 isSelectedUUID:v15] ^ 1;
      }

      else
      {
        v22 = 0;
      }

      v23 = [[PUReviewAsset alloc] initWithReviewAsset:v13 linkFileURLsToUniquePathsInDirectory:v19 canPlayPhotoIris:v22];
      [(PUAssetExplorerReviewScreenViewController *)self _updateWithSubstituteAsset:v23 shouldSelect:0];
    }

    else
    {
      if (a5)
      {
LABEL_14:
        [(PUAssetExplorerReviewScreenViewController *)self _updateForCompletedReviewAssetRequest:v12];
        goto LABEL_15;
      }

      v19 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
      v23 = [v19 selectionManager];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __119__PUAssetExplorerReviewScreenViewController__handleReviewAssetRequest_completedWithSuccess_canceled_error_reviewAsset___block_invoke;
      v25[3] = &unk_1E7B75620;
      v26 = v15;
      [(PUReviewAsset *)v23 performChanges:v25];
      [(PUAssetExplorerReviewScreenViewController *)self _showFailedReviewAssetRequestAlert];
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)_requestReviewAssetForAsset:(id)a3
{
  v5 = a3;
  v6 = [v5 uuid];
  v7 = [(PUAssetExplorerReviewScreenViewController *)self _substituteAssetForUUID:v6];
  v8 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestForAssetUUID:v6];
  if (v7 | v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenViewController.m" lineNumber:523 description:@"We should not be trying to request an asset that we already have a file-backed asset for or for which we have a reviewAssetRequest in progress"];
  }

  v9 = [(PUAssetExplorerReviewScreenViewController *)self _createReviewAssetRequestForAsset:v5];
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
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_229];
  [v3 removeAllObjects];
}

- (void)_cancelReviewAssetRequestForAssetUUID:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
  v5 = [v4 objectForKeyedSubscript:v7];
  v6 = v5;
  if (v5)
  {
    [v5 cancelReviewAssetRequest];
    [v4 removeObjectForKey:v7];
  }
}

- (void)_updateForCompletedReviewAssetRequest:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = [v4 sourceAsset];

  v5 = [v11 uuid];
  if (v5)
  {
    v6 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
    [v6 removeObjectForKey:v5];
    v7 = [v6 count];
    v8 = [(PUAssetExplorerReviewScreenViewController *)self _requestProgressController];
    v9 = v8;
    if (!v7 && v8)
    {
      v10 = [(PUAssetExplorerReviewScreenViewController *)self _failedReviewAssetRequestAlertController];
      [v9 hideAnimated:1 allowDelay:0];
      [(PUAssetExplorerReviewScreenViewController *)self _tearDownProgressController];
      if (!v10)
      {
        [(PUAssetExplorerReviewScreenViewController *)self _performCompletionAction:0];
      }
    }
  }
}

- (id)_createReviewAssetRequestForAsset:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetProvider];
  v6 = [v5 reviewAssetProviderRequestForDisplayAsset:v4];
  if (v6)
  {
    v7 = [v4 uuid];
    v8 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
    [v8 setObject:v6 forKeyedSubscript:v7];
  }

  return v6;
}

- (id)_reviewAssetRequestForAssetUUID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v4)
  {
    v5 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
    v6 = [v5 objectForKeyedSubscript:v4];
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
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _reviewAssetRequestsByUUID];
  v4 = [v3 allValues];

  return v4;
}

- (id)childViewControllerForStatusBarHidden
{
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _navigationController];

  if (v3)
  {
    v4 = [(PUAssetExplorerReviewScreenViewController *)self _navigationController];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUAssetExplorerReviewScreenViewController;
    v4 = [(PUAssetExplorerReviewScreenViewController *)&v6 childViewControllerForStatusBarHidden];
  }

  return v4;
}

- (id)childViewControllerForStatusBarStyle
{
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _navigationController];

  if (v3)
  {
    v4 = [(PUAssetExplorerReviewScreenViewController *)self _navigationController];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUAssetExplorerReviewScreenViewController;
    v4 = [(PUAssetExplorerReviewScreenViewController *)&v6 childViewControllerForStatusBarStyle];
  }

  return v4;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = PUAssetExplorerReviewScreenViewController;
  [(PUAssetExplorerReviewScreenViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (self->_delegateFlags.respondsToWillTransitionToSize)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assetExplorerReviewScreenViewController:self willTransitionToSize:v7 withTransitionCoordinator:{width, height}];
  }
}

- (id)_createBrowsingSessionIfNecessary
{
  browsingSession = self->__browsingSession;
  if (!browsingSession)
  {
    v4 = [(PUAssetExplorerReviewScreenViewController *)self _reviewDataSourceManager];
    v5 = [(PUAssetExplorerReviewScreenViewController *)self _reviewMediaProvider];
    v6 = [(PUAssetExplorerReviewScreenViewController *)self initialSelectedAssetUUIDs];
    v7 = [(PUAssetExplorerReviewScreenViewController *)self initialDisabledLivePhotoAssetUUIDs];
    v8 = [[PUAssetExplorerReviewScreenActionManager alloc] initWithSourceType:[(PUAssetExplorerReviewScreenViewController *)self sourceType]];
    [(PUAssetExplorerReviewScreenActionManager *)v8 setReviewScreenActionManagerDelegate:self];
    [(PUAssetExplorerReviewScreenActionManager *)v8 setReviewAssetProvider:self];
    v9 = [(PUAssetExplorerReviewScreenActionManager *)v8 selectionManager];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke;
    v43[3] = &unk_1E7B75620;
    v10 = v6;
    v44 = v10;
    [v9 performChanges:v43];
    [v9 registerChangeObserver:self context:PUReviewScreenSelectionManagerObservationContext];
    v11 = [(PUAssetExplorerReviewScreenActionManager *)v8 disableLivePhotosSelectionManager];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke_2;
    v41[3] = &unk_1E7B75620;
    v30 = v11;
    v31 = v7;
    v42 = v31;
    [v11 performChanges:v41];
    v32 = v5;
    v33 = v4;
    v12 = [[PUBrowsingSession alloc] initWithDataSourceManager:v4 actionManager:v8 mediaProvider:v5 photosDetailsContext:0 lowMemoryMode:[(PUAssetExplorerReviewScreenViewController *)self _lowMemoryMode]];
    v13 = [(PUAssetExplorerReviewScreenViewController *)self initialAssetReference];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v15 = [(PUAssetExplorerReviewScreenViewController *)self initialIndexPath];
      if (!v15 || (v16 = v15, [v33 assetsDataSource], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "assetReferenceAtIndexPath:", v16), v14 = objc_claimAutoreleasedReturnValue(), v17, v16, !v14))
      {
        v18 = [v33 assetsDataSource];
        v14 = [v18 startingAssetReference];
      }
    }

    v19 = [(PUBrowsingSession *)v12 viewModel];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke_3;
    v36[3] = &unk_1E7B7F1D0;
    v37 = v14;
    v38 = v19;
    v39 = self;
    v20 = v10;
    v40 = v20;
    v21 = v19;
    v22 = v14;
    [v21 performChanges:v36];
    [v21 registerChangeObserver:self];
    v23 = [(PUAssetExplorerReviewScreenViewController *)self resizeTaskDescriptorViewModel];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__PUAssetExplorerReviewScreenViewController__createBrowsingSessionIfNecessary__block_invoke_4;
    v34[3] = &unk_1E7B75648;
    v34[4] = self;
    v35 = v20;
    v24 = v20;
    [v23 performChanges:v34];

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
  v3 = [(PUAssetExplorerReviewScreenViewController *)self _spec];
  v4 = [(PUAssetExplorerReviewScreenViewController *)self _createBrowsingSessionIfNecessary];
  v5 = [(PUAssetExplorerReviewScreenViewController *)self sourceType];
  v6 = -[PUOneUpViewController initWithBrowsingSession:options:initialActivity:]([PUOneUpViewController alloc], "initWithBrowsingSession:options:initialActivity:", v4, [v3 oneUpOptions], 0);
  v7 = [[PUNavigationController alloc] initWithRootViewController:v6];
  [(PUAssetExplorerReviewScreenViewController *)self addChildViewController:v7];
  v8 = [(PUAssetExplorerReviewScreenViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PUNavigationController *)v7 view];
  [v17 setFrame:{v10, v12, v14, v16}];
  [v17 setAutoresizingMask:18];
  [v8 addSubview:v17];
  [(PUNavigationController *)v7 didMoveToParentViewController:self];
  navigationController = self->__navigationController;
  self->__navigationController = v7;

  v19 = [(PUAssetExplorerReviewScreenViewController *)self assetExplorerAnalytics];
  v20 = [(PUAssetExplorerReviewScreenViewController *)self _actionManager];
  v21 = [v20 selectionManager];
  v22 = [v21 selectedUUIDs];
  [v19 sendEvent:@"PUAssetExplorerAnalyticsEventOpen1Up" view:1 source:v5 currentAssetCount:{objc_msgSend(v22, "count")}];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (PUAssetExplorerReviewScreenViewController)initWithDataSourceManager:(id)a3 mediaProvider:(id)a4 reviewAssetProvider:(id)a5 initialIndexPath:(id)a6 initialAssetReference:(id)a7 initialSelectedAssetUUIDs:(id)a8 initialDisabledLivePhotoAssetUUIDs:(id)a9 selectionCountLimit:(id)a10 sourceType:(unint64_t)a11 lowMemoryMode:(BOOL)a12 reviewBarsModel:(id)a13 resizeTaskDescriptorViewModel:(id)a14 options:(unint64_t)a15
{
  v53 = a3;
  v51 = a4;
  v50 = a5;
  v45 = a6;
  v49 = a6;
  v48 = a7;
  v52 = a8;
  v21 = a9;
  v22 = a10;
  v47 = a13;
  v46 = a14;
  v54.receiver = self;
  v54.super_class = PUAssetExplorerReviewScreenViewController;
  v23 = [(PUAssetExplorerReviewScreenViewController *)&v54 initWithNibName:0 bundle:0];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->__clientDataSourceManager, a3);
    objc_storeStrong(&v24->__clientMediaProvider, a4);
    objc_storeStrong(&v24->__reviewAssetProvider, a5);
    v25 = [[PUAssetExplorerReviewScreenAssetsDataSourceManager alloc] initWithOriginalDataSourceManager:v53];
    reviewDataSourceManager = v24->__reviewDataSourceManager;
    v24->__reviewDataSourceManager = v25;

    v27 = objc_alloc_init(PUJoiningMediaProvider);
    reviewMediaProvider = v24->__reviewMediaProvider;
    v24->__reviewMediaProvider = v27;

    v29 = objc_alloc_init(PUReviewAssetsMediaProvider);
    [(PUJoiningMediaProvider *)v24->__reviewMediaProvider registerMediaProvider:v29 forAssetPassingTest:&__block_literal_global_10474];
    v30 = v24->__reviewMediaProvider;
    v31 = [(PUAssetExplorerReviewScreenViewController *)v24 _clientMediaProvider];
    [(PUJoiningMediaProvider *)v30 registerMediaProvider:v31 forAssetClass:objc_opt_class()];

    objc_storeStrong(&v24->_initialIndexPath, v45);
    objc_storeStrong(&v24->_initialAssetReference, a7);
    v32 = [v52 copy];
    initialSelectedAssetUUIDs = v24->_initialSelectedAssetUUIDs;
    v24->_initialSelectedAssetUUIDs = v32;

    v34 = [v21 copy];
    initialDisabledLivePhotoAssetUUIDs = v24->_initialDisabledLivePhotoAssetUUIDs;
    v24->_initialDisabledLivePhotoAssetUUIDs = v34;

    objc_storeStrong(&v24->_selectionCountLimit, a10);
    objc_storeStrong(&v24->_reviewBarsModel, a13);
    objc_storeStrong(&v24->_resizeTaskDescriptorViewModel, a14);
    v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reviewAssetRequestsByUUID = v24->__reviewAssetRequestsByUUID;
    v24->__reviewAssetRequestsByUUID = v36;

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    substituteAssetsByUUID = v24->__substituteAssetsByUUID;
    v24->__substituteAssetsByUUID = v38;

    v24->_sourceType = a11;
    v24->__lowMemoryMode = a12;
    v24->__options = a15;
    v40 = [[PUReviewScreenSpec alloc] initWithOptions:a15];
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