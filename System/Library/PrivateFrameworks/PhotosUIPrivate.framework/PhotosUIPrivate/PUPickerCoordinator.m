@interface PUPickerCoordinator
+ (BOOL)_assetCanPlay:(id)a3;
+ (BOOL)_editingEnabled:(id)a3;
+ (BOOL)_shouldTreatAssetAsLivePhoto:(id)a3 photoPicker:(id)a4 configuration:(id)a5;
+ (BOOL)_skipSelectionConfirmation:(id)a3;
+ (BOOL)_viewImageBeforeSelectingEnabled:(id)a3;
+ (BOOL)pu_legacy_shouldDownloadVideoComplement:(id)a3 configuration:(id)a4;
+ (id)_extraArgumentsForResizeTaskDescriptor:(id)a3;
+ (void)_logPhotosPickerPresentedForClientWithConfiguration:(id)a3 usingOptions:(int64_t)a4;
+ (void)_updateSelectionCoordinatorLimit:(id)a3 configuration:(id)a4;
- (BOOL)assetExplorerReviewScreenViewController:(id)a3 canPerformActionType:(unint64_t)a4 onAsset:(id)a5 inAssetCollection:(id)a6;
- (BOOL)isShowingLiveWallpaperSuggestions;
- (BOOL)isShowingSpatialWallpaperSuggestions;
- (BOOL)popViewController;
- (PUPhotoPicker)photoPicker;
- (PUPickerCoordinator)init;
- (PUPickerCoordinator)initWithConfiguration:(id)a3 coordinatorActionHandler:(id)a4 loadingStatusManager:(id)a5;
- (PUPickerCoordinator)initWithPHConfiguration:(id)a3 coordinatorActionHandler:(id)a4 loadingStatusManager:(id)a5;
- (PUPickerCoordinator)initWithPUConfiguration:(id)a3 coordinatorActionHandler:(id)a4 loadingStatusManager:(id)a5;
- (PUPickerCoordinator)initWithPhotoPicker:(id)a3 mediaTypes:(id)a4 connection:(id)a5;
- (PUPickerCoordinatorActionHandler)coordinatorActionHandler;
- (id)_createFetchResultUsingSelectedObjectIDs;
- (id)_fileSizeActionsForAssets:(id)a3;
- (id)assetExplorerReviewScreenViewController:(id)a3 fileSizeMenuForSelectedUUIDs:(id)a4;
- (id)assetsForResizing;
- (id)beginShowingProgressForAsset:(id)a3 inCollection:(id)a4;
- (id)imageViewControllerFileSizeMenuActions:(id)a3;
- (id)ppt_scrollTestViewController;
- (void)_completeMultipleSelection:(id)a3;
- (void)_completeSingleSelection:(id)a3 showConfirmation:(BOOL)a4;
- (void)_logPhotosAccessWithNonEmptyUserSelection;
- (void)_presentAssetExplorer;
- (void)_presentViewControllerDismissingPresentedViewControllerIfNeeded:(id)a3;
- (void)assetExplorerReviewScreenViewController:(id)a3 didPerformCompletionAction:(unint64_t)a4 withSelectedAssetUUIDs:(id)a5 livePhotoDisabledAssetUUIDs:(id)a6 substituteAssetsByUUID:(id)a7;
- (void)cancelProgressController;
- (void)containerController:(id)a3 didTapAddButton:(id)a4;
- (void)containerController:(id)a3 didTapCancelButton:(id)a4;
- (void)containerController:(id)a3 didTapClearButton:(id)a4;
- (void)containerController:(id)a3 didTapShowSelectedButton:(id)a4;
- (void)containerControllerDidAppear:(id)a3;
- (void)containerControllerWantsToLearnMoreAboutDataAccess:(id)a3;
- (void)deselectItemsWithIdentifiers:(id)a3;
- (void)emitDidFinishPickingAnalytics;
- (void)endShowingProgressWithIdentifier:(id)a3 succeeded:(BOOL)a4 canceled:(BOOL)a5 error:(id)a6;
- (void)imageViewControllerDidCancel:(id)a3;
- (void)imageViewControllerDidConfirmSelection:(id)a3;
- (void)makeSearchBarAsFirstResponder;
- (void)moveItemWithIdentifier:(id)a3 afterIdentifier:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)overrideSelectedItemsWithIdentifiers:(id)a3;
- (void)performCancellationAction;
- (void)performConfirmationAction;
- (void)presentAlertController:(id)a3;
- (void)presentProgressControllerFromViewController:(id)a3 progress:(id)a4;
- (void)pu_legacy_cancelPicker;
- (void)pu_legacy_didDisplayPicker;
- (void)pu_legacy_selectMultipleAssets:(id)a3;
- (void)pu_legacy_selectSingleAsset;
- (void)pu_legacy_selectSingleAssetWithFileResizing;
- (void)resignSearchBarAsFirstResponder_110426547;
- (void)scrollContentToInitialPosition;
- (void)searchWithString:(id)a3;
- (void)selectionCoordinator:(id)a3 didUpdateSelectedObjectsWithRemovedOIDs:(id)a4 insertedOIDs:(id)a5;
- (void)selectionCoordinator:(id)a3 willUpdateSelectedObjectsForSnapshot:(id)a4 withRemovedIndexes:(id)a5 insertedIndexes:(id)a6;
- (void)startActivityIndicatorsForAssetsWithFetchResult:(id)a3;
- (void)stopActivityIndicatorsForAssetsWithIdentifiers:(id)a3;
- (void)updateProgressControllerMessage;
- (void)updateProgressWithIdentifier:(id)a3 withValue:(double)a4;
- (void)zoomInContent;
- (void)zoomOutContent;
@end

@implementation PUPickerCoordinator

- (PUPickerCoordinatorActionHandler)coordinatorActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatorActionHandler);

  return WeakRetained;
}

- (PUPhotoPicker)photoPicker
{
  WeakRetained = objc_loadWeakRetained(&self->_photoPicker);

  return WeakRetained;
}

- (id)assetsForResizing
{
  v4 = [(PUPickerCoordinator *)self configuration];
  v5 = [v4 allowsDownload];

  if ((v5 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:918 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v6 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:919 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v7 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:920 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v8 = [(PUPickerCoordinator *)self progressController];

  if (!v8)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:921 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v9 = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  v10 = [v9 fetchedObjects];

  if ([v10 count])
  {
    v11 = [(PUPickerCoordinator *)self downloadHelper];
    if ([v11 isAnyPickerAssetDownloading:v10])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateProgressControllerMessage
{
  v4 = [(PUPickerCoordinator *)self configuration];
  v5 = [v4 allowsDownload];

  if ((v5 & 1) == 0)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:884 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v6 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v6)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:885 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v7 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v7)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:886 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v8 = [(PUPickerCoordinator *)self progressController];

  if (!v8)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:887 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v9 = [(PUPickerCoordinator *)self progressController];
  v10 = [v9 progress];

  if (!v10)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:888 description:{@"Invalid parameter not satisfying: %@", @"self.progressController.progress"}];
  }

  v36 = [(PUPickerCoordinator *)self progressController];
  v11 = [v36 progress];
  v12 = [v11 totalUnitCount];
  if (v12 < 2)
  {
    v18 = [(PUPickerCoordinator *)self progressController];
    v27 = [(PUPickerCoordinator *)self progressController];
    v28 = [v27 progress];
    v29 = [v28 localizedDescription];
    [v18 setMessage:v29];
  }

  else
  {
    v13 = v12;
    v14 = [v11 completedUnitCount];
    if (v14 < v13)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = [(PUPickerCoordinator *)self selectionCoordinator];
    v17 = [v16 selectedObjectIDs];
    v18 = [v17 array];

    v19 = [(PUPickerCoordinator *)self configuration];
    v20 = [v19 generatedFilter];
    v21 = [(PUPickerCoordinator *)self configuration];
    v22 = [v21 photoLibrary];
    v23 = [v20 displayAssetMediaTypeConsideringAssetObjectIDs:v18 photoLibrary:v22];

    v24 = @"PICKER_VIEW_DOWNLOADING_ITEMS_ALERT_BODY";
    if (v23 == 2)
    {
      v24 = @"PICKER_VIEW_DOWNLOADING_VIDEOS_ALERT_BODY";
    }

    if (v23 == 1)
    {
      v25 = @"PICKER_VIEW_DOWNLOADING_PHOTOS_ALERT_BODY";
    }

    else
    {
      v25 = v24;
    }

    v26 = PULocalizedString(v25);
    v35 = v13;
    v27 = PUStringWithValidatedFormat();

    v28 = [(PUPickerCoordinator *)self progressController:v15];
    [v28 setMessage:v27];
  }
}

- (void)cancelProgressController
{
  v3 = [(PUPickerCoordinator *)self downloadHelper];
  [v3 cancelAllDownloads];

  v4 = [(PUPickerCoordinator *)self progressController];
  [v4 hideWithCompletion:0];
}

- (void)presentProgressControllerFromViewController:(id)a3 progress:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:870 description:{@"Invalid parameter not satisfying: %@", @"sourceViewController"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:871 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

LABEL_3:
  v8 = [(PUPickerCoordinator *)self progressController];
  [v8 setProgress:v7];

  [(PUPickerCoordinator *)self updateProgressControllerMessage];
  v9 = [(PUPickerCoordinator *)self progressController];
  [v9 showFromSourceViewController:v12 completion:0];
}

- (void)_logPhotosAccessWithNonEmptyUserSelection
{
  v2 = [(PUPickerCoordinator *)self configuration];
  v4 = [v2 pickerClientIdentification];

  if (PLPlatformPhotosAccessLoggingSupported() && v4)
  {
    v3 = [MEMORY[0x1E69BF2B0] sharedInstance];
    [v3 logPhotosAccessWithPhotoPickerClientIdentification:v4];
  }
}

- (id)_createFetchResultUsingSelectedObjectIDs
{
  v3 = objc_alloc(MEMORY[0x1E69788E0]);
  v4 = [(PUPickerCoordinator *)self selectionCoordinator];
  v5 = [v4 selectedObjectIDs];
  v6 = [v5 array];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [(PUPickerCoordinator *)self configuration];
  v10 = [v9 photoLibrary];
  v11 = [v3 initWithOids:v8 photoLibrary:v10 fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v11;
}

- (id)_fileSizeActionsForAssets:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  objc_initWeak(&location, self);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[PUPhotoPickerResizeTaskDescriptor orderedDefaultDescriptors];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = *v19;
    obj = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 localizedDescriptionForAssets:v4];
        v12 = MEMORY[0x1E69DC628];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __49__PUPickerCoordinator__fileSizeActionsForAssets___block_invoke;
        v16[3] = &unk_1E7B7F4F0;
        objc_copyWeak(&v17, &location);
        v16[4] = v10;
        v13 = [v12 actionWithTitle:v11 image:0 identifier:0 handler:v16];
        [v5 addObject:v13];

        objc_destroyWeak(&v17);
      }

      v6 = obj;
      v7 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v7);
  }

  objc_destroyWeak(&location);

  return v5;
}

void __49__PUPickerCoordinator__fileSizeActionsForAssets___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained resizeTaskDescriptorViewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PUPickerCoordinator__fileSizeActionsForAssets___block_invoke_2;
  v4[3] = &unk_1E7B77B90;
  v4[4] = *(a1 + 32);
  [v3 performChanges:v4];
}

- (void)_presentAssetExplorer
{
  v21 = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  v3 = MEMORY[0x1E695DFD8];
  v4 = PXMap();
  v5 = [v3 setWithArray:v4];

  v6 = [objc_alloc(MEMORY[0x1E69C3878]) initWithAssetFetchResult:v21 options:0];
  v7 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:v6];
  v8 = [[PUPhotoKitDataSourceManager alloc] initWithPhotosDataSource:v7];
  v9 = objc_alloc_init(PUPhotoKitMediaProvider);
  v10 = [(PUPickerCoordinator *)self configuration];
  v11 = [v10 generatedFilter];
  v12 = [v11 displayAssetMediaType];

  if (v12 == 1)
  {
    v13 = 14;
  }

  else
  {
    v14 = [(PUPickerCoordinator *)self configuration];
    v15 = [v14 generatedFilter];
    v16 = [v15 displayAssetMediaType];

    if (v16 == 2)
    {
      v13 = 22;
    }

    else
    {
      v13 = 6;
    }
  }

  v17 = [PUAssetExplorerReviewScreenViewController alloc];
  v18 = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
  LOBYTE(v20) = 1;
  v19 = [(PUAssetExplorerReviewScreenViewController *)v17 initWithDataSourceManager:v8 mediaProvider:v9 reviewAssetProvider:0 initialIndexPath:0 initialSelectedAssetUUIDs:v5 initialDisabledLivePhotoAssetUUIDs:0 selectionCountLimit:0 sourceType:0 lowMemoryMode:v20 reviewBarsModel:0 resizeTaskDescriptorViewModel:v18 options:v13];

  [(PUAssetExplorerReviewScreenViewController *)v19 setDelegate:self];
  [(PUAssetExplorerReviewScreenViewController *)v19 setModalInPresentation:1];
  [(PUPickerCoordinator *)self _presentViewControllerDismissingPresentedViewControllerIfNeeded:v19];
}

- (void)_presentViewControllerDismissingPresentedViewControllerIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerCoordinator *)self managedViewController];
  v6 = [v5 contentViewController];
  v7 = [v6 navigationController];
  v8 = [v7 topViewController];

  v9 = [v8 presentedViewController];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__PUPickerCoordinator__presentViewControllerDismissingPresentedViewControllerIfNeeded___block_invoke;
    v10[3] = &unk_1E7B80C38;
    v11 = v8;
    v12 = v4;
    [v11 dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    [v8 presentViewController:v4 animated:1 completion:0];
  }
}

- (void)presentAlertController:(id)a3
{
  v5 = a3;
  v6 = [(PUPickerCoordinator *)self configuration];
  v7 = [v6 allowsDownload];

  if ((v7 & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:752 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v8 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:753 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v9 = [(PUPickerCoordinator *)self managedViewController];
  v10 = [v9 contentViewController];
  v11 = [v10 navigationController];
  v12 = [v11 topViewController];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__PUPickerCoordinator_presentAlertController___block_invoke;
  v17[3] = &unk_1E7B80C38;
  v18 = v12;
  v19 = v5;
  v13 = v5;
  v14 = v12;
  [v14 dismissViewControllerAnimated:1 completion:v17];
}

- (void)endShowingProgressWithIdentifier:(id)a3 succeeded:(BOOL)a4 canceled:(BOOL)a5 error:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [(PUPickerCoordinator *)self configuration];
  v12 = [v11 allowsDownload];

  if ((v12 & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v13 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v13)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v14 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v14)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v15 = [(PUPickerCoordinator *)self progressController];

  if (!v15)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:724 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v22 = v9;
  v16 = v10;
  v17 = v9;
  px_dispatch_on_main_queue();
}

void __81__PUPickerCoordinator_endShowingProgressWithIdentifier_succeeded_canceled_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressController];
  v12 = [v2 progress];

  v3 = [*(a1 + 32) downloadProgresses];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v12)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (*(a1 + 56) == 1)
    {
      [v4 setCompletedUnitCount:{objc_msgSend(v4, "totalUnitCount")}];
      [*(a1 + 32) updateProgressControllerMessage];
    }

    v6 = [*(a1 + 32) downloadProgresses];
    [v6 removeObjectForKey:*(a1 + 40)];
  }

  v7 = *(a1 + 57);
  v8 = [*(a1 + 32) loadingStatusManager];
  v9 = v8;
  v10 = *(a1 + 40);
  if (v7 == 1)
  {
    [v8 didCancelLoadOperationWithTrackingID:v10];
  }

  else
  {
    [v8 didCompleteLoadOperationWithTrackingID:v10 withSuccess:*(a1 + 56) error:*(a1 + 48)];
  }

  v11 = [*(a1 + 32) resizeTaskDescriptorViewModel];
  [v11 performChanges:&__block_literal_global_352];
}

- (void)updateProgressWithIdentifier:(id)a3 withValue:(double)a4
{
  v6 = a3;
  v7 = [(PUPickerCoordinator *)self configuration];
  v8 = [v7 allowsDownload];

  if ((v8 & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:701 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v9 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v10 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:703 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v11 = [(PUPickerCoordinator *)self progressController];

  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v12 = v6;
  px_dispatch_on_main_queue();
}

void __62__PUPickerCoordinator_updateProgressWithIdentifier_withValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressController];
  v7 = [v2 progress];

  v3 = [*(a1 + 32) downloadProgresses];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v7)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [v4 setCompletedUnitCount:{(*(a1 + 48) * objc_msgSend(v4, "totalUnitCount"))}];
    [*(a1 + 32) updateProgressControllerMessage];
  }

  v6 = [*(a1 + 32) loadingStatusManager];
  [v6 didUpdateLoadOperationWithTrackingID:*(a1 + 40) withProgress:*(a1 + 48)];
}

- (id)beginShowingProgressForAsset:(id)a3 inCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUPickerCoordinator *)self configuration];
  v10 = [v9 allowsDownload];

  if ((v10 & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:672 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v11 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v11)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:673 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v12 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v12)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:674 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v13 = [(PUPickerCoordinator *)self progressController];

  if (!v13)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:675 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33186;
  v25 = __Block_byref_object_dispose__33187;
  v26 = 0;
  v20 = v7;
  px_dispatch_on_main_queue_sync();
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __65__PUPickerCoordinator_beginShowingProgressForAsset_inCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingStatusManager];
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 willBeginLoadOperationWithItemIdentifier:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) progressController];
  v11 = [v7 progress];

  if (v11)
  {
    v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1000];
    v9 = [*(a1 + 32) downloadProgresses];
    [v9 setObject:v8 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];

    [v11 addChild:v8 withPendingUnitCount:1];
    [*(a1 + 32) updateProgressControllerMessage];
  }

  v10 = [*(a1 + 32) resizeTaskDescriptorViewModel];
  [v10 performChanges:&__block_literal_global_350];
}

- (id)assetExplorerReviewScreenViewController:(id)a3 fileSizeMenuForSelectedUUIDs:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC928];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__PUPickerCoordinator_assetExplorerReviewScreenViewController_fileSizeMenuForSelectedUUIDs___block_invoke;
  v15[3] = &unk_1E7B77B48;
  objc_copyWeak(&v17, &location);
  v9 = v7;
  v16 = v9;
  v10 = [v8 elementWithProvider:v15];
  v11 = MEMORY[0x1E69DCC60];
  v19[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v13 = [v11 menuWithChildren:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __92__PUPickerCoordinator_assetExplorerReviewScreenViewController_fileSizeMenuForSelectedUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained configuration];
  v6 = [v5 photoLibrary];
  v13 = [v6 librarySpecificFetchOptions];

  v7 = MEMORY[0x1E6978630];
  v8 = [*(a1 + 32) allObjects];
  v9 = [v7 fetchAssetsWithUUIDs:v8 options:v13];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v9 fetchedObjects];
  v12 = [v10 _fileSizeActionsForAssets:v11];

  v3[2](v3, v12);
}

- (void)assetExplorerReviewScreenViewController:(id)a3 didPerformCompletionAction:(unint64_t)a4 withSelectedAssetUUIDs:(id)a5 livePhotoDisabledAssetUUIDs:(id)a6 substituteAssetsByUUID:(id)a7
{
  v33 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a4)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:635 description:{@"Invalid parameter not satisfying: %@", @"completionAction == PUReviewCompletionActionDone"}];
  }

  v16 = [(PUPickerCoordinator *)self configuration];
  v17 = [v16 isSingleSelection];

  if (v17)
  {
    [(PUPickerCoordinator *)self _logPhotosAccessWithNonEmptyUserSelection];
    v18 = [(PUPickerCoordinator *)self selectionCoordinator];
    v19 = [v18 selectedObjectIDs];

    v20 = [(PUPickerCoordinator *)self coordinatorActionHandler];
    v21 = [(PUPickerCoordinator *)self additionalSelectionState];
    [v20 coordinator:self didFinishPicking:v19 additionalSelectionState:v21 action:0];
  }

  else
  {
    v22 = [v33 initialSelectedAssetUUIDs];
    v19 = [v22 mutableCopy];

    [v19 minusSet:v13];
    v23 = [(PUPickerCoordinator *)self configuration];
    v24 = [v23 photoLibrary];
    v20 = [v24 librarySpecificFetchOptions];

    v25 = MEMORY[0x1E6978630];
    v26 = [v19 allObjects];
    v21 = [v25 fetchAssetsWithUUIDs:v26 options:v20];

    v27 = [(PUPickerCoordinator *)self selectionCoordinator];
    v28 = MEMORY[0x1E695DFB8];
    v29 = [v21 fetchedObjectIDs];
    v30 = [v28 orderedSetWithArray:v29];
    v31 = [MEMORY[0x1E695DFB8] orderedSet];
    [v27 modifySelectionWithRemovedOIDs:v30 insertedOIDs:v31];
  }

  [v33 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)assetExplorerReviewScreenViewController:(id)a3 canPerformActionType:(unint64_t)a4 onAsset:(id)a5 inAssetCollection:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 > 0xA)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0xF4) == 0)
  {
    if (((1 << a4) & 0x308) != 0)
    {
      v14 = [(PUPickerCoordinator *)self configuration];
      v13 = [v14 isSingleSelection] ^ 1;
LABEL_11:

      goto LABEL_12;
    }

    if (a4 == 10)
    {
      v14 = [(PUPickerCoordinator *)self configuration];
      v15 = [v14 allowsDownscaling];
LABEL_10:
      LOBYTE(v13) = v15;
      goto LABEL_11;
    }

LABEL_8:
    if (a4)
    {
      LOBYTE(v13) = 1;
      goto LABEL_12;
    }

    v14 = [(PUPickerCoordinator *)self configuration];
    v15 = [v14 isSingleSelection];
    goto LABEL_10;
  }

  LOBYTE(v13) = 0;
LABEL_12:

  return v13;
}

- (void)selectionCoordinator:(id)a3 didUpdateSelectedObjectsWithRemovedOIDs:(id)a4 insertedOIDs:(id)a5
{
  v6 = a3;
  v7 = [v6 selectedObjectIDs];
  v8 = [(PUPickerCoordinator *)self configuration];
  if ([v8 isSingleSelection])
  {
    v9 = [v7 count];

    if (v9 >= 2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __97__PUPickerCoordinator_selectionCoordinator_didUpdateSelectedObjectsWithRemovedOIDs_insertedOIDs___block_invoke;
      block[3] = &unk_1E7B80C38;
      v27 = v6;
      v28 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_21;
    }
  }

  else
  {
  }

  [(PUPickerCoordinator *)self setSelectionDidChange:1];
  v10 = [(PUPickerCoordinator *)self selectionDidChangeObserver];

  if (v10)
  {
    v11 = [(PUPickerCoordinator *)self selectionDidChangeObserver];
    v11[2]();
  }

  v12 = [(PUPickerCoordinator *)self managedViewController];
  v13 = [v12 contentViewController];
  [v13 updateBars];

  v14 = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
  [v14 performChanges:&__block_literal_global_33197];

  v15 = [(PUPickerCoordinator *)self configuration];
  if (([v15 shouldPassthroughSelection] & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v16 = [(PUPickerCoordinator *)self configuration];
  if ([v16 isSingleSelection])
  {
    v17 = [v7 count];

    if (!v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  [(PUPickerCoordinator *)self _logPhotosAccessWithNonEmptyUserSelection];
  v18 = [(PUPickerCoordinator *)self coordinatorActionHandler];

  if (v18)
  {
    v19 = [(PUPickerCoordinator *)self configuration];
    if ([v19 allowsDownscaling])
    {
      v20 = [(PUPickerCoordinator *)self configuration];
      v21 = [v20 isSingleSelection];

      if (v21)
      {
        [(PUPickerCoordinator *)self _presentAssetExplorer];
        goto LABEL_21;
      }
    }

    else
    {
    }

    v15 = [(PUPickerCoordinator *)self coordinatorActionHandler];
    v23 = [(PUPickerCoordinator *)self additionalSelectionState];
    [v15 coordinator:self didFinishPicking:v7 additionalSelectionState:v23 action:0];

    goto LABEL_20;
  }

  v22 = [(PUPickerCoordinator *)self photoPicker];

  if (v22)
  {
    [(PUPickerCoordinator *)self pu_legacy_selectSingleAsset];
  }

  else
  {
    v24 = PLPickerGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, "coordinatorActionHandler delegate is not available. Should not reach here unless it's a test code.", v25, 2u);
    }
  }

LABEL_21:
}

void __97__PUPickerCoordinator_selectionCoordinator_didUpdateSelectedObjectsWithRemovedOIDs_insertedOIDs___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E695DFB8];
  v5 = [v2 lastObject];
  v4 = [v3 orderedSetWithObject:v5];
  [v1 modifySelectionWithRemovedOIDs:v2 insertedOIDs:v4];
}

- (void)selectionCoordinator:(id)a3 willUpdateSelectedObjectsForSnapshot:(id)a4 withRemovedIndexes:(id)a5 insertedIndexes:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(PUPickerCoordinator *)self configuration];
  if ([v13 allowsDownload])
  {
    v14 = [(PUPickerCoordinator *)self configuration];
    v15 = [v14 isSingleSelection];

    if ((v15 & 1) == 0)
    {
      v16 = [(PUPickerCoordinator *)self downloadHelper];
      if (!v16)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:544 description:{@"Invalid parameter not satisfying: %@", @"downloadHelper"}];
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __116__PUPickerCoordinator_selectionCoordinator_willUpdateSelectedObjectsForSnapshot_withRemovedIndexes_insertedIndexes___block_invoke;
      v26[3] = &unk_1E7B77B00;
      v17 = v10;
      v30 = a2;
      v27 = v17;
      v28 = self;
      v18 = v16;
      v29 = v18;
      [v11 enumerateItemIndexPathsUsingBlock:v26];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __116__PUPickerCoordinator_selectionCoordinator_willUpdateSelectedObjectsForSnapshot_withRemovedIndexes_insertedIndexes___block_invoke_2;
      v21[3] = &unk_1E7B77B00;
      v22 = v17;
      v23 = self;
      v24 = v18;
      v25 = a2;
      v19 = v18;
      [v12 enumerateItemIndexPathsUsingBlock:v21];
    }
  }

  else
  {
  }
}

void __116__PUPickerCoordinator_selectionCoordinator_willUpdateSelectedObjectsForSnapshot_withRemovedIndexes_insertedIndexes___block_invoke(uint64_t a1, _OWORD *a2)
{
  v4 = [*(a1 + 32) dataSource];
  v5 = a2[1];
  v18[0] = *a2;
  v18[1] = v5;
  v6 = [v4 objectAtIndexPath:v18];

  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v9 handleFailureInMethod:v10 object:v11 file:@"PUPickerCoordinator.m" lineNumber:547 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[snapshot.dataSource objectAtIndexPath:indexPath]", v13}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = *(a1 + 56);
    v15 = *(a1 + 40);
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    v17 = [v6 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:v14 object:v15 file:@"PUPickerCoordinator.m" lineNumber:547 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[snapshot.dataSource objectAtIndexPath:indexPath]", v13, v17}];

    goto LABEL_6;
  }

LABEL_3:
  v7 = *(a1 + 48);
  v8 = [v6 localIdentifier];
  [v7 cancelDownloadForIdentifier:v8];
}

void __116__PUPickerCoordinator_selectionCoordinator_willUpdateSelectedObjectsForSnapshot_withRemovedIndexes_insertedIndexes___block_invoke_2(uint64_t a1, _OWORD *a2)
{
  v4 = [*(a1 + 32) dataSource];
  v5 = a2[1];
  v16[0] = *a2;
  v16[1] = v5;
  v6 = [v4 objectAtIndexPath:v16];

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v7 handleFailureInMethod:v8 object:v9 file:@"PUPickerCoordinator.m" lineNumber:551 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[snapshot.dataSource objectAtIndexPath:indexPath]", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v14 = objc_opt_class();
    v11 = NSStringFromClass(v14);
    v15 = [v6 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:v12 object:v13 file:@"PUPickerCoordinator.m" lineNumber:551 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[snapshot.dataSource objectAtIndexPath:indexPath]", v11, v15}];

    goto LABEL_6;
  }

LABEL_3:
  [*(a1 + 48) handleDownloadOfAssetIfNeeded:v6 inCollection:0 withSuccessHandler:0];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PUPickerResizeTaskDescriptorViewModelObservationContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }

    v21 = v9;
    v12 = [(PUPickerCoordinator *)self configuration];
    v13 = [v12 allowsDownscaling];

    if (v13)
    {
      v14 = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
      v15 = [v14 resizeTaskDescriptor];

      if (!v15 || (([v15 targetSize], v16 == *MEMORY[0x1E6978E30]) ? (v18 = v17 == *(MEMORY[0x1E6978E30] + 8)) : (v18 = 0), v18 || (v16 == *MEMORY[0x1E695F060] ? (v19 = v17 == *(MEMORY[0x1E695F060] + 8)) : (v19 = 0), v19)))
      {
        v10 = 0;
      }

      else
      {
        v10 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v16, v17)}];
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [(PUPickerCoordinator *)self additionalSelectionState];
    [v11 setDownscalingTargetDimension:v10];
    goto LABEL_21;
  }

  if (PUPickerConfigurationObservationContext_33214 != a5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:533 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 2) != 0)
  {
    v21 = v9;
    v10 = [(PUPickerCoordinator *)self selectionCoordinator];
    v11 = [(PUPickerCoordinator *)self configuration];
    [PUPickerCoordinator _updateSelectionCoordinatorLimit:v10 configuration:v11];
LABEL_21:

    v9 = v21;
  }

LABEL_22:
}

- (void)containerController:(id)a3 didTapShowSelectedButton:(id)a4
{
  v6 = [(PUPickerCoordinator *)self selectionCoordinator:a3];
  v7 = [v6 selectedObjectIDs];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:505 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs.count > 0"}];
  }

  [(PUPickerCoordinator *)self _presentAssetExplorer];
}

- (void)containerController:(id)a3 didTapAddButton:(id)a4
{
  v5 = a4;
  [(PUPickerCoordinator *)self _logPhotosAccessWithNonEmptyUserSelection];
  v6 = [(PUPickerCoordinator *)self coordinatorActionHandler];

  if (v6)
  {
    v7 = [(PUPickerCoordinator *)self managedViewController];
    v8 = [v7 contentViewController];
    v9 = [v8 navigationItem];
    v10 = [v9 searchController];
    v11 = [v10 searchBar];

    if ([v11 canResignFirstResponder])
    {
      [v11 resignFirstResponder];
    }

    v12 = [(PUPickerCoordinator *)self selectionCoordinator];
    v13 = [v12 selectedObjectIDs];

    v14 = [(PUPickerCoordinator *)self coordinatorActionHandler];
    v15 = [(PUPickerCoordinator *)self additionalSelectionState];
    [v14 coordinator:self didFinishPicking:v13 additionalSelectionState:v15 action:1];
  }

  else
  {
    v16 = [(PUPickerCoordinator *)self photoPicker];

    if (v16)
    {
      v17 = v5;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      [v18 setEnabled:0];
      v19 = v17;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      [v20 setEnabled:0];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __59__PUPickerCoordinator_containerController_didTapAddButton___block_invoke;
      v23[3] = &unk_1E7B80DD0;
      v24 = v19;
      [(PUPickerCoordinator *)self pu_legacy_selectMultipleAssets:v23];
    }

    else
    {
      v21 = PLPickerGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "Both coordinatorActionHandler and photoPicker delegates are not available. Should not reach here unless it's a test code.", v22, 2u);
      }
    }
  }
}

void __59__PUPickerCoordinator_containerController_didTapAddButton___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  [v3 setEnabled:1];
  v4 = *(a1 + 32);
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [v5 setEnabled:1];
}

- (void)containerController:(id)a3 didTapClearButton:(id)a4
{
  v8 = [(PUPickerCoordinator *)self selectionCoordinator:a3];
  v5 = [(PUPickerCoordinator *)self selectionCoordinator];
  v6 = [v5 selectedObjectIDs];
  v7 = [MEMORY[0x1E695DFB8] orderedSet];
  [v8 modifySelectionWithRemovedOIDs:v6 insertedOIDs:v7];
}

- (void)containerController:(id)a3 didTapCancelButton:(id)a4
{
  v5 = [(PUPickerCoordinator *)self coordinatorActionHandler:a3];

  if (v5)
  {
    v11 = [(PUPickerCoordinator *)self coordinatorActionHandler];
    v6 = [(PUPickerCoordinator *)self configuration];
    v7 = [v6 preselectedItemObjectIDs];
    v8 = [(PUPickerCoordinator *)self additionalSelectionState];
    [v11 coordinator:self didFinishPicking:v7 additionalSelectionState:v8 action:2];
  }

  else
  {
    v9 = [(PUPickerCoordinator *)self photoPicker];

    if (v9)
    {

      [(PUPickerCoordinator *)self pu_legacy_cancelPicker];
    }

    else
    {
      v10 = PLPickerGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Both coordinatorActionHandler and photoPicker delegates are not available. Should not reach here unless it's a test code.", buf, 2u);
      }
    }
  }
}

- (void)containerControllerWantsToLearnMoreAboutDataAccess:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerCoordinator *)self managedViewController];
  [v5 presentDataAccessEducationViewController:v4];
}

- (void)containerControllerDidAppear:(id)a3
{
  v4 = [(PUPickerCoordinator *)self coordinatorActionHandler];

  if (!v4)
  {
    v5 = [(PUPickerCoordinator *)self photoPicker];

    if (v5)
    {

      [(PUPickerCoordinator *)self pu_legacy_didDisplayPicker];
    }

    else
    {
      v6 = PLPickerGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Both coordinatorActionHandler and photoPicker delegates are not available. Should not reach here unless it's a test code.", v7, 2u);
      }
    }
  }
}

- (void)resignSearchBarAsFirstResponder_110426547
{
  v3 = [(PUPickerCoordinator *)self managedViewController];
  v2 = [v3 contentViewController];
  [v2 resignSearchBarAsFirstResponder];
}

- (void)makeSearchBarAsFirstResponder
{
  v3 = [(PUPickerCoordinator *)self managedViewController];
  v2 = [v3 contentViewController];
  [v2 makeSearchBarAsFirstResponder];
}

- (void)emitDidFinishPickingAnalytics
{
  v4 = [(PUPickerCoordinator *)self configuration];

  if (!v4)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"self.configuration"}];
  }

  v5 = [(PUPickerCoordinator *)self configuration];
  v6 = [v5 pickerClientBundleIdentifier];
  v7 = v6;
  v8 = @"Unknown";
  if (v6)
  {
    v8 = v6;
  }

  v58 = v8;

  v9 = MEMORY[0x1E696AD98];
  v10 = [(PUPickerCoordinator *)self selectionCoordinator];
  v11 = [v10 selectedObjectIDs];
  v59 = [v9 numberWithInt:{objc_msgSend(v11, "count") != 0}];

  v12 = MEMORY[0x1E696AD98];
  v13 = [(PUPickerCoordinator *)self configuration];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "edgesWithoutContentMargins")}];

  v15 = MEMORY[0x1E696AD98];
  v16 = [(PUPickerCoordinator *)self configuration];
  v57 = [v15 numberWithInteger:{objc_msgSend(v16, "preferredAssetRepresentationMode")}];

  v17 = MEMORY[0x1E696AD98];
  v18 = [(PUPickerCoordinator *)self configuration];
  v19 = [v17 numberWithBool:{objc_msgSend(v18, "pickerClientHasLibraryAccess")}];

  v20 = MEMORY[0x1E696AD98];
  v21 = [(PUPickerCoordinator *)self configuration];
  v22 = [v20 numberWithBool:{objc_msgSend(v21, "isLimitedLibraryPicker")}];

  v23 = MEMORY[0x1E696AD98];
  v24 = [(PUPickerCoordinator *)self configuration];
  v55 = [v23 numberWithBool:{objc_msgSend(v24, "isPeopleOrPetsPicker")}];

  v25 = MEMORY[0x1E696AD98];
  v26 = [(PUPickerCoordinator *)self configuration];
  v53 = [v25 numberWithBool:{objc_msgSend(v26, "isSingleSelection")}];

  v27 = MEMORY[0x1E696AD98];
  v28 = [(PUPickerCoordinator *)self configuration];
  v48 = [v27 numberWithInteger:{objc_msgSend(v28, "mode")}];

  v29 = [(PUPickerCoordinator *)self managedViewController];
  v30 = [v29 contentViewController];
  v31 = [v30 selectedSuggestionAnalyticsName];
  v32 = v31;
  v33 = @"Unknown";
  if (v31)
  {
    v33 = v31;
  }

  v34 = v33;

  v35 = MEMORY[0x1E696AD98];
  v36 = [(PUPickerCoordinator *)self configuration];
  v37 = [v35 numberWithInteger:{objc_msgSend(v36, "selection")}];

  v38 = MEMORY[0x1E696AD98];
  v39 = [(PUPickerCoordinator *)self configuration];
  v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(v39, "disabledCapabilities")}];

  v60 = v22;
  v61 = v55;
  v62 = v53;
  v63 = v48;
  v64 = v37;
  v65 = v40;
  v52 = v40;
  v51 = v37;
  v50 = v34;
  v49 = v48;
  v54 = v53;
  v56 = v55;
  v41 = v22;
  v42 = v19;
  v43 = v57;
  v44 = v14;
  v45 = v59;
  v46 = v58;
  AnalyticsSendEventLazy();
}

id __52__PUPickerCoordinator_emitDidFinishPickingAnalytics__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v5[0] = @"callerBundleID";
  v5[1] = @"didSelectItems";
  v7 = *(a1 + 48);
  v5[2] = @"edgesWithoutContentMargins";
  v5[3] = @"encodingPolicy";
  v8 = *(a1 + 56);
  v5[4] = @"hasPhotoLibraryAccess";
  v5[5] = @"isLimitedLibraryPicker";
  v1 = *(a1 + 80);
  v9 = *(a1 + 72);
  v10 = v1;
  v5[6] = @"isPeoplePicker";
  v5[7] = @"isSingleSelection";
  v2 = *(a1 + 96);
  v11 = *(a1 + 88);
  v12 = v2;
  v5[8] = @"mode";
  v5[9] = @"selectedSuggestionName";
  v13 = *(a1 + 104);
  v5[10] = @"selectionBehavior";
  v5[11] = @"disabledCapabilities";
  v14 = *(a1 + 120);
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:v5 count:12];

  return v3;
}

- (BOOL)isShowingSpatialWallpaperSuggestions
{
  v2 = [(PUPickerCoordinator *)self managedViewController];
  v3 = [v2 contentViewController];
  v4 = [v3 isShowingSpatialWallpaperSuggestions];

  return v4;
}

- (BOOL)isShowingLiveWallpaperSuggestions
{
  v2 = [(PUPickerCoordinator *)self managedViewController];
  v3 = [v2 contentViewController];
  v4 = [v3 isShowingLiveWallpaperSuggestions];

  return v4;
}

- (void)performConfirmationAction
{
  v3 = [(PUPickerCoordinator *)self managedViewController];
  v2 = [v3 contentViewController];
  [v2 performConfirmationAction];
}

- (void)performCancellationAction
{
  v3 = [(PUPickerCoordinator *)self managedViewController];
  v2 = [v3 contentViewController];
  [v2 performCancellationAction];
}

- (void)zoomOutContent
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:381 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator zoomOutContent]"}];
  }

  v6 = [(PUPickerCoordinator *)self managedViewController];
  v4 = [v6 contentViewController];
  [v4 zoomOutContent];
}

- (void)zoomInContent
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:375 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator zoomInContent]"}];
  }

  v6 = [(PUPickerCoordinator *)self managedViewController];
  v4 = [v6 contentViewController];
  [v4 zoomInContent];
}

- (void)scrollContentToInitialPosition
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:369 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator scrollContentToInitialPosition]"}];
  }

  v6 = [(PUPickerCoordinator *)self managedViewController];
  v4 = [v6 contentViewController];
  [v4 scrollContentToInitialPosition];
}

- (BOOL)popViewController
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:354 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator popViewController]"}];
  }

  v4 = [(PUPickerCoordinator *)self managedViewController];
  v5 = [v4 contentViewController];
  v6 = [v5 navigationController];

  v7 = [v6 viewControllers];
  v8 = [v7 count];

  if (v8 >= 2)
  {
    v9 = [(PUPickerCoordinator *)self configuration];
    v10 = [v9 allowsSelectionStaging];

    if ((v10 & 1) == 0)
    {
      v11 = [(PUPickerCoordinator *)self selectionCoordinator];
      v12 = [(PUPickerCoordinator *)self selectionCoordinator];
      v13 = [v12 selectedObjectIDs];
      v14 = [MEMORY[0x1E695DFB8] orderedSet];
      [v11 modifySelectionWithRemovedOIDs:v13 insertedOIDs:v14];
    }

    v15 = [(PUPickerCoordinator *)self managedViewController];
    v16 = [v15 contentViewController];
    v17 = [v16 navigationController];
    v18 = [v17 popViewControllerAnimated:1];
  }

  return v8 > 1;
}

- (void)searchWithString:(id)a3
{
  v5 = MEMORY[0x1E696AF00];
  v6 = a3;
  if ([v5 isMainThread])
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:343 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator searchWithString:]"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"string"}];

LABEL_3:
  v7 = [(PUPickerCoordinator *)self configuration];
  v8 = [v7 allowsSelectionStaging];

  if ((v8 & 1) == 0)
  {
    v9 = [(PUPickerCoordinator *)self selectionCoordinator];
    v10 = [(PUPickerCoordinator *)self selectionCoordinator];
    v11 = [v10 selectedObjectIDs];
    v12 = [MEMORY[0x1E695DFB8] orderedSet];
    [v9 modifySelectionWithRemovedOIDs:v11 insertedOIDs:v12];
  }

  v16 = [(PUPickerCoordinator *)self managedViewController];
  v13 = [v16 contentViewController];
  [v13 searchWithString:v6];
}

- (void)moveItemWithIdentifier:(id)a3 afterIdentifier:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:315 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator moveItemWithIdentifier:afterIdentifier:]"}];

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_17:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (([v7 isEqualToString:v8] & 1) == 0)
  {
    v9 = [(PUPickerCoordinator *)self selectionCoordinator];
    v10 = [v9 selectedObjectIDs];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(PUPickerCoordinator *)self configuration];
      v31[0] = v7;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v14 = [v12 fetchOrderedItemObjectIDsUsingItemIdentifiers:v13];
      v15 = [v14 firstObject];

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      v16 = [(PUPickerCoordinator *)self selectionCoordinator];
      v17 = [v16 selectedObjectIDs];
      v18 = [v17 mutableCopy];

      v19 = [v18 indexOfObject:v15];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v19;
        if (v8)
        {
          v21 = [(PUPickerCoordinator *)self configuration];
          v30 = v8;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
          v23 = [v21 fetchOrderedItemObjectIDsUsingItemIdentifiers:v22];
          v24 = [v23 firstObject];

          if (!v24)
          {
            goto LABEL_13;
          }

          v25 = [v18 indexOfObject:v24];

          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v25 = 0;
        }

        v26 = [MEMORY[0x1E696AC90] indexSetWithIndex:v20];
        [v18 moveObjectsAtIndexes:v26 toIndex:v25];

        v27 = [(PUPickerCoordinator *)self selectionCoordinator];
        [v27 modifySelectionWithOrder:v18];
      }

LABEL_13:

      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)deselectItemsWithIdentifiers:(id)a3
{
  v15 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:303 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator deselectItemsWithIdentifiers:]"}];
  }

  v5 = v15;
  if (!v15)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    v5 = 0;
  }

  if ([v5 count])
  {
    v6 = [(PUPickerCoordinator *)self selectionCoordinator];
    v7 = [v6 selectedObjectIDs];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(PUPickerCoordinator *)self configuration];
      v10 = [v9 fetchOrderedItemObjectIDsUsingItemIdentifiers:v15];

      if ([v10 count])
      {
        v11 = [(PUPickerCoordinator *)self selectionCoordinator];
        v12 = [MEMORY[0x1E695DFB8] orderedSet];
        [v11 modifySelectionWithRemovedOIDs:v10 insertedOIDs:v12];
      }
    }
  }
}

- (void)overrideSelectedItemsWithIdentifiers:(id)a3
{
  v5 = MEMORY[0x1E696AF00];
  v6 = a3;
  if ([v5 isMainThread])
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:292 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator overrideSelectedItemsWithIdentifiers:]"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

LABEL_3:
  v7 = [(PUPickerCoordinator *)self selectionCoordinator];
  v13 = [v7 selectedObjectIDs];

  v8 = [(PUPickerCoordinator *)self configuration];
  v9 = [v8 fetchOrderedItemObjectIDsUsingItemIdentifiers:v6];

  if (([v9 isEqualToOrderedSet:v13] & 1) == 0)
  {
    v10 = [(PUPickerCoordinator *)self selectionCoordinator];
    [v10 modifySelectionWithRemovedOIDs:v13 insertedOIDs:v9];
  }
}

- (void)stopActivityIndicatorsForAssetsWithIdentifiers:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:275 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator stopActivityIndicatorsForAssetsWithIdentifiers:]"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

LABEL_3:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = [(PUPickerCoordinator *)self activityIndicatorTrackingIDs];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (v13)
        {
          v14 = [(PUPickerCoordinator *)self loadingStatusManager];
          [v14 didCompleteLoadOperationWithTrackingID:v13 withSuccess:1 error:0];
        }

        v15 = [(PUPickerCoordinator *)self activityIndicatorTrackingIDs];
        [v15 setObject:0 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v16 = [(PUPickerCoordinator *)self activityIndicatorTrackingIDs];
  v17 = [v16 count];

  if (!v17)
  {
    v18 = [(PUPickerCoordinator *)self managedViewController];
    v19 = [v18 contentViewController];
    [v19 setReplacesConfirmationButtonWithActivityIndicator:0];
  }
}

- (void)startActivityIndicatorsForAssetsWithFetchResult:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:263 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator startActivityIndicatorsForAssetsWithFetchResult:]"}];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [(PUPickerCoordinator *)self loadingStatusManager];
        v13 = [v11 uuid];
        v14 = [v12 willBeginLoadOperationWithItemIdentifier:v13];

        v15 = [(PUPickerCoordinator *)self loadingStatusManager];
        [v15 didUpdateLoadOperationWithIndeterminateProgressWithTrackingID:v14];

        v16 = [(PUPickerCoordinator *)self activityIndicatorTrackingIDs];
        v17 = [v11 localIdentifier];
        [v16 setObject:v14 forKeyedSubscript:v17];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = [(PUPickerCoordinator *)self managedViewController];
  v19 = [v18 contentViewController];
  [v19 setReplacesConfirmationButtonWithActivityIndicator:1];
}

- (PUPickerCoordinator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:257 description:{@"%s is not available as initializer", "-[PUPickerCoordinator init]"}];

  abort();
}

- (PUPickerCoordinator)initWithConfiguration:(id)a3 coordinatorActionHandler:(id)a4 loadingStatusManager:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  obj = a4;
  v11 = a5;
  if (!v10)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v46.receiver = self;
  v46.super_class = PUPickerCoordinator;
  v12 = [(PUPickerCoordinator *)&v46 init];
  if (v12)
  {
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E69C4558]);
    }

    v13 = [v10 suggestedItemObjectIDs];
    if ([v13 count])
    {
      v14 = [v10 preselectedItemObjectIDs];
      v15 = [v14 count] == 0;

      if (v15)
      {
        v43 = [v10 suggestedItemObjectIDs];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v43 = [v10 preselectedItemObjectIDs];
LABEL_11:
    if ([v10 isSingleSelection] && objc_msgSend(v43, "count") >= 2)
    {
      v16 = MEMORY[0x1E695DFB8];
      v17 = [v43 firstObject];
      v18 = [v16 orderedSetWithObject:v17];

      v43 = v18;
    }

    v19 = [objc_alloc(MEMORY[0x1E69C45D0]) initWithSelectedOIDs:v43];
    [PUPickerCoordinator _updateSelectionCoordinatorLimit:v19 configuration:v10];
    v41 = [[PUPickerAdditionalSelectionState alloc] initWithConfiguration:v10];
    if ([v10 allowsDownload])
    {
      v40 = [[PUPhotosGridDownloadHelper alloc] initWithUpdateHandler:v12];
      -[PUPhotosGridDownloadHelper setMode:](v40, "setMode:", [v10 isSingleSelection] ^ 1);
      v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = objc_alloc_init(PUPickerActivityProgressController);
      v21 = PULocalizedString(@"PHOTO_PICKER_DOWNLOAD_PROGRESS_ALERT_TITLE");
      [(PUPickerActivityProgressController *)v20 setTitle:v21];
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v20 = 0;
    }

    if ([v10 allowsDownscaling] && (-[PUPickerCoordinator configuration](v12, "configuration"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "excludesOptionsMenu"), v22, v23))
    {
      v24 = objc_alloc_init(PUPhotoPickerResizeTaskDescriptorViewModel);
    }

    else
    {
      v24 = 0;
    }

    v25 = PLPickerGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v10 preselectedItemObjectIDs];
      v27 = [v26 count];
      *buf = 134217984;
      v48 = v27;
      _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "Initializing root picker view with starting selection of size %ld", buf, 0xCu);
    }

    v28 = [[PUPickerContainerController alloc] initWithConfiguration:v10 loadingStatusManager:v11 selectionCoordinator:v19 additionalSelectionState:v41 actionHandler:v12];
    v29 = [[PUPickerManagedViewController alloc] initWithConfiguration:v10 contentViewController:v28];
    objc_storeStrong(&v12->_resizeTaskDescriptorViewModel, v24);
    objc_storeStrong(&v12->_managedViewController, v29);
    objc_storeStrong(&v12->_configuration, a3);
    objc_storeWeak(&v12->_coordinatorActionHandler, obj);
    objc_storeStrong(&v12->_selectionCoordinator, v19);
    objc_storeStrong(&v12->_additionalSelectionState, v41);
    objc_storeStrong(&v12->_downloadHelper, v40);
    objc_storeStrong(&v12->_downloadProgresses, v39);
    objc_storeStrong(&v12->_progressController, v20);
    objc_storeStrong(&v12->_loadingStatusManager, v11);
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activityIndicatorTrackingIDs = v12->_activityIndicatorTrackingIDs;
    v12->_activityIndicatorTrackingIDs = v30;

    v32 = [(PUPickerCoordinator *)v12 selectionCoordinator];
    [v32 setDelegate:v12];

    v33 = [(PUPickerCoordinator *)v12 resizeTaskDescriptorViewModel];
    [v33 setDelegate:v12];

    v34 = [(PUPickerCoordinator *)v12 resizeTaskDescriptorViewModel];
    [v34 registerChangeObserver:v12 context:PUPickerResizeTaskDescriptorViewModelObservationContext];

    v35 = [(PUPickerCoordinator *)v12 configuration];
    [v35 registerChangeObserver:v12 context:PUPickerConfigurationObservationContext_33214];

    objc_initWeak(buf, v12);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __91__PUPickerCoordinator_initWithConfiguration_coordinatorActionHandler_loadingStatusManager___block_invoke;
    v44[3] = &unk_1E7B80638;
    objc_copyWeak(&v45, buf);
    [(PUPickerActivityProgressController *)v20 setCancellationHandler:v44];
    v36 = [MEMORY[0x1E696AD88] defaultCenter];
    [v36 addObserver:v12 selector:sel__serviceContextDidBecomeInsecure name:*MEMORY[0x1E69DED08] object:0];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }

  return v12;
}

void __91__PUPickerCoordinator_initWithConfiguration_coordinatorActionHandler_loadingStatusManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelProgressController];
}

- (PUPickerCoordinator)initWithPUConfiguration:(id)a3 coordinatorActionHandler:(id)a4 loadingStatusManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v12 = [(PUPickerCoordinator *)self initWithConfiguration:v9 coordinatorActionHandler:v10 loadingStatusManager:v11];
  [PUPickerCoordinator _logPhotosPickerPresentedForClientWithConfiguration:v9 usingOptions:1];

  return v12;
}

- (PUPickerCoordinator)initWithPHConfiguration:(id)a3 coordinatorActionHandler:(id)a4 loadingStatusManager:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v12 = [[PUPickerConfiguration alloc] initWithPHPickerConfiguration:v9 connection:0];
  if (v12)
  {
    v13 = [(PUPickerCoordinator *)self initWithPUConfiguration:v12 coordinatorActionHandler:v10 loadingStatusManager:v11];
  }

  else
  {
    v14 = PLPickerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Failed to create picker with configuration: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (PUPickerCoordinator)initWithPhotoPicker:(id)a3 mediaTypes:(id)a4 connection:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 properties];
  v12 = [v11 objectForKeyedSubscript:@"_UIImagePickerControllerMessagesLayout"];
  v13 = [v12 BOOLValue];

  v14 = objc_alloc_init(MEMORY[0x1E69790E0]);
  [v14 set_onboardingHeaderDismissedBefore:{objc_msgSend(v8, "onboardingHeaderDismissedBefore")}];
  [v14 set_onboardingOverlayDismissedBefore:0];
  [v14 set_limitedLibraryHeaderDismissedBefore:0];
  if (v13)
  {
    [v14 setDisabledCapabilities:30];
  }

  [v14 _setDisabledPrivateCapabilities:4];
  if ([v8 allowsMultipleSelection])
  {
    v15 = [v8 multipleSelectionLimit];
  }

  else
  {
    v15 = 1;
  }

  [v14 setSelectionLimit:v15];
  [v14 _setAllowsDownscaling:{objc_msgSend(v8, "showsFileSizePicker")}];
  v16 = [[PUPickerGeneratedFilter alloc] initWithUIImagePickerControllerMediaTypes:v10];

  v17 = [[PUPickerConfiguration alloc] initForUIImagePickerControllerWithPHPickerConfiguration:v14 connection:v9 overriddenGeneratedFilter:v16];
  if (v17)
  {
    v18 = [(PUPickerCoordinator *)self initWithConfiguration:v17 coordinatorActionHandler:0 loadingStatusManager:0];
    [PUPickerCoordinator _logPhotosPickerPresentedForClientWithConfiguration:v17 usingOptions:0];
    objc_storeWeak(&v18->_photoPicker, v8);
    if (v18->_downloadHelper)
    {
      [(PUPhotosGridDownloadHelper *)v18->_downloadHelper setShouldTreatLivePhotosAsStills:[PUPickerCoordinator pu_legacy_shouldDownloadVideoComplement:v8 configuration:v17]];
    }
  }

  else
  {
    v19 = PLPickerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v8 properties];
      v22 = 138412290;
      v23 = v20;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Failed to create picker with options: %@", &v22, 0xCu);
    }

    [v8 cancelPhotoPicker];
    v18 = 0;
  }

  return v18;
}

+ (void)_logPhotosPickerPresentedForClientWithConfiguration:(id)a3 usingOptions:(int64_t)a4
{
  v9 = a3;
  v5 = [v9 pickerClientIdentification];
  if ([v9 pickerClientIsEntitledForOrHasPrivateLibraryAccess])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v9 isLimitedLibraryPicker];
  }

  if (PLPlatformPhotosAccessLoggingSupported() && v5 && (v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E69BF2B0] sharedInstance];
    v8 = [v5 trustedCallerBundleID];
    [v7 logPhotosPickerPresentedLibraryForClient:v8 usingOptions:a4];
  }
}

+ (void)_updateSelectionCoordinatorLimit:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (([v5 allowsUnlimitedMultipleSelection] & 1) != 0 || objc_msgSend(v5, "isSingleSelection"))
  {
    [v7 setSelectionCountLimit:0];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "selectionLimit")}];
    [v7 setSelectionCountLimit:v6];
  }
}

- (id)ppt_scrollTestViewController
{
  v2 = [(PUPickerCoordinator *)self managedViewController];
  v3 = [v2 contentViewController];

  return v3;
}

- (void)imageViewControllerDidConfirmSelection:(id)a3
{
  v4 = PLPickerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Confirming UIImagePickerController review UI.", v5, 2u);
  }

  [(PUPickerCoordinator *)self pu_legacy_selectSingleAssetWithFileResizing];
}

- (id)imageViewControllerFileSizeMenuActions:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  v5 = [v4 fetchedObjects];

  v6 = PLPickerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Providing UIImagePickerController review UI file resizing actions with assets: %@", &v9, 0xCu);
  }

  v7 = [(PUPickerCoordinator *)self _fileSizeActionsForAssets:v5];

  return v7;
}

- (void)imageViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = PLPickerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing UIImagePickerController review UI.", v10, 2u);
  }

  v6 = [(PUPickerCoordinator *)self selectionCoordinator];
  v7 = [v6 selectedObjectIDs];

  v8 = [(PUPickerCoordinator *)self selectionCoordinator];
  v9 = [MEMORY[0x1E695DFB8] orderedSet];
  [v8 modifySelectionWithRemovedOIDs:v7 insertedOIDs:v9];

  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)_completeMultipleSelection:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1164 description:{@"Invalid parameter not satisfying: %@", @"selectedAssets"}];
  }

  v6 = [(PUPickerCoordinator *)self photoPicker];

  if (!v6)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1165 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  v7 = [(PUPickerCoordinator *)self configuration];
  v8 = [v7 allowsDownload];

  if ((v8 & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1166 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v9 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v9)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1167 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v10 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v10)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1168 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v11 = [(PUPickerCoordinator *)self progressController];

  if (!v11)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1169 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v12 = PLPickerGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = [v5 count];
    _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Calling back with full dictionary for %lu assets.", buf, 0xCu);
  }

  v13 = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
  v14 = [v13 resizeTaskDescriptor];

  v15 = [PUPickerCoordinator _extraArgumentsForResizeTaskDescriptor:v14];
  v16 = [(PUPickerCoordinator *)self photoPicker];
  v17 = [v16 properties];
  v18 = PLPhotoPickerDictionariesFromMultipleMediaItems();

  v19 = [(PUPickerCoordinator *)self photoPicker];
  [v19 didSelectMultipleMediaItemsWithInfoDictionaries:v18];
}

- (void)_completeSingleSelection:(id)a3 showConfirmation:(BOOL)a4
{
  v4 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1110 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v8 = [(PUPickerCoordinator *)self photoPicker];

  if (!v8)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1111 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  v9 = [(PUPickerCoordinator *)self configuration];
  v10 = [v9 allowsDownload];

  if ((v10 & 1) == 0)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1112 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v11 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v11)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1113 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v12 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v12)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1114 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v13 = [(PUPickerCoordinator *)self progressController];

  if (!v13)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1115 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v14 = [(PUPickerCoordinator *)self photoPicker];
  v15 = [v7 pl_managedAsset];
  v16 = PLPickerGetLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v17)
    {
      *buf = 138412290;
      v45 = v7;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Moving to confirmation screen for asset %@.", buf, 0xCu);
    }

    v18 = [(PUPickerCoordinator *)self configuration];
    v19 = [PUPickerCoordinator _shouldTreatAssetAsLivePhoto:v7 photoPicker:v14 configuration:v18];

    v20 = [PUUIImageViewController alloc];
    v21 = [v7 pl_managedAsset];
    v22 = [v14 properties];
    v23 = [(PUUIImageViewController *)v20 initWithPhoto:v21 imagePickerProperties:v22 expectsLivePhoto:v19];

    [(PUUIImageViewController *)v23 setPhotoPicker:v14];
    [(PUUIImageViewController *)v23 setCancellationDelegate:self];
    [(PLUIImageViewController *)v23 setAllowsEditing:[PUPickerCoordinator _editingEnabled:v14]];
    v24 = [(PUPickerCoordinator *)self configuration];
    if ([v24 allowsDownscaling])
    {
      v25 = [v7 mediaType];

      if (v25 == 1)
      {
        v26 = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
        [(PUUIImageViewController *)v23 setResizeTaskDescriptorViewModel:v26];

        [(PUUIImageViewController *)v23 setFileResizingDelegate:self];
      }
    }

    else
    {
    }

    v32 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v23];
    if ((MEMORY[0x1B8C6D660]() & 1) == 0)
    {
      v33 = [v32 navigationBar];
      v34 = [v33 standardAppearance];
      v35 = [v32 navigationBar];
      [v35 setScrollEdgeAppearance:v34];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PUPickerCoordinator_LegacyAPISupport___completeSingleSelection_showConfirmation___block_invoke;
    block[3] = &unk_1E7B80C38;
    block[4] = self;
    v43 = v32;
    v28 = v32;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v17)
    {
      *buf = 138412290;
      v45 = v7;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Calling back with full dictionary for asset %@.", buf, 0xCu);
    }

    v27 = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
    v23 = [v27 resizeTaskDescriptor];

    v28 = [PUPickerCoordinator _extraArgumentsForResizeTaskDescriptor:v23];
    v29 = [v14 properties];
    v30 = PLPhotoPickerDictionaryFromMedia();

    v31 = [(PUPickerCoordinator *)self photoPicker];
    [v31 didSelectMediaWithInfoDictionary:v30 allowedHandler:0];
  }
}

- (void)pu_legacy_selectMultipleAssets:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v49 = a3;
  if (!v49)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1033 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  val = self;
  v5 = [(PUPickerCoordinator *)self photoPicker];

  if (!v5)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1034 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  v6 = [(PUPickerCoordinator *)self photoPicker];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1035 description:{@"Invalid parameter not satisfying: %@", @"[self.photoPicker isKindOfClass:[UIViewController class]]"}];
  }

  v8 = [(PUPickerCoordinator *)self selectionCoordinator];
  v9 = [v8 selectedObjectIDs];

  if (!v9)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1036 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs > 0"}];
  }

  v10 = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  v50 = [v10 fetchedObjects];

  v11 = PLPickerGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v50 count];
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Starting legacy multiple selection for %lu assets", &buf, 0xCu);
  }

  v48 = [(PUPickerCoordinator *)self photoPicker];
  v12 = [(PUPickerCoordinator *)self configuration];
  v13 = [v12 onlyReturnsIdentifiers];

  if (v13)
  {
    v14 = PXMap();
    v15 = PLPickerGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "Calling back with asset identifiers only for %lu assets", &buf, 0xCu);
    }

    [v48 didSelectMultipleMediaItemsWithInfoDictionaries:v14];
    v49[2]();

    goto LABEL_35;
  }

  v17 = [(PUPickerCoordinator *)self configuration];
  v18 = [v17 allowsDownload];

  if ((v18 & 1) == 0)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1053 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v19 = [(PUPickerCoordinator *)self downloadHelper];
  v20 = v19 == 0;

  if (v20)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1054 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v21 = [(PUPickerCoordinator *)val downloadProgresses];
  v22 = v21 == 0;

  if (v22)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1055 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v23 = [(PUPickerCoordinator *)val progressController];
  v24 = v23 == 0;

  if (v24)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1056 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v25 = [(PUPickerCoordinator *)val downloadHelper];
  v26 = [v25 isAnyPickerAssetDownloading:v50];

  if (!v26)
  {
    [(PUPickerCoordinator *)val _completeMultipleSelection:v50];
    v49[2]();
    goto LABEL_35;
  }

  v47 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v50, "count")}];
  v27 = [(PUPickerCoordinator *)val photoPicker];
  if (!v27)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    [v42 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1061 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photoPicker", v44}];
LABEL_38:

    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = objc_opt_class();
    v44 = NSStringFromClass(v45);
    v46 = [v27 px_descriptionForAssertionMessage];
    [v42 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1061 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photoPicker", v44, v46}];

    goto LABEL_38;
  }

LABEL_26:
  [(PUPickerCoordinator *)val presentProgressControllerFromViewController:v27 progress:v47];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v68 = 0x2020000000;
  v69 = 1;
  v28 = dispatch_group_create();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v50;
  v29 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v29)
  {
    v30 = *v63;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v63 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v62 + 1) + 8 * i);
        dispatch_group_enter(v28);
        v33 = [(PUPickerCoordinator *)val downloadHelper];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __72__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectMultipleAssets___block_invoke_619;
        v59[3] = &unk_1E7B77C00;
        p_buf = &buf;
        v60 = v28;
        [v33 handleDownloadOfAssetIfNeeded:v32 inCollection:0 withSuccessHandler:v59];
      }

      v29 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v29);
  }

  objc_initWeak(&location, val);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectMultipleAssets___block_invoke_2;
  block[3] = &unk_1E7B77C28;
  v56 = &buf;
  objc_copyWeak(&v57, &location);
  v54 = obj;
  v55 = v49;
  dispatch_group_notify(v28, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
LABEL_35:
}

uint64_t __72__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectMultipleAssets___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = [WeakRetained progressController];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectMultipleAssets___block_invoke_3;
    v8[3] = &unk_1E7B80610;
    objc_copyWeak(&v10, (a1 + 56));
    v9 = *(a1 + 32);
    [v6 hideWithCompletion:v8];

    objc_destroyWeak(&v10);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3, a4);
}

void __72__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectMultipleAssets___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeMultipleSelection:*(a1 + 32)];
}

id __72__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectMultipleAssets___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DE968];
  v2 = [a2 localIdentifier];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)pu_legacy_selectSingleAssetWithFileResizing
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(PUPickerCoordinator *)self photoPicker];

  if (!v4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1017 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  v5 = [(PUPickerCoordinator *)self configuration];
  v6 = [v5 allowsDownload];

  if ((v6 & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1018 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v7 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1019 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v8 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v8)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1020 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v9 = [(PUPickerCoordinator *)self progressController];

  if (!v9)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1021 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v10 = [(PUPickerCoordinator *)self selectionCoordinator];
  v11 = [v10 selectedObjectIDs];

  if (!v11)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1022 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs > 0"}];
  }

  v12 = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  v13 = [v12 firstObject];

  v14 = PLPickerGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v13;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Starting legacy single selection with file resizing for asset %@", buf, 0xCu);
  }

  [(PUPickerCoordinator *)self _completeSingleSelection:v13 showConfirmation:0];
}

- (void)pu_legacy_selectSingleAsset
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = [(PUPickerCoordinator *)self photoPicker];

  if (!v3)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:966 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  v4 = [(PUPickerCoordinator *)self photoPicker];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:967 description:{@"Invalid parameter not satisfying: %@", @"[self.photoPicker isKindOfClass:[UIViewController class]]"}];
  }

  v6 = [(PUPickerCoordinator *)self configuration];
  v7 = [v6 allowsDownload];

  if ((v7 & 1) == 0)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:968 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  v8 = [(PUPickerCoordinator *)self downloadHelper];

  if (!v8)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:969 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  v9 = [(PUPickerCoordinator *)self downloadProgresses];

  if (!v9)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:970 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  v10 = [(PUPickerCoordinator *)self progressController];

  if (!v10)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:971 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v11 = [(PUPickerCoordinator *)self selectionCoordinator];
  v12 = [v11 selectedObjectIDs];

  if (!v12)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:972 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs > 0"}];
  }

  v13 = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  v14 = [v13 firstObject];

  v15 = PLPickerGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v14;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "Starting legacy single selection for asset %@", buf, 0xCu);
  }

  v16 = [(PUPickerCoordinator *)self photoPicker];
  v43 = [(PUPickerCoordinator *)self configuration];
  v17 = [(PUPickerCoordinator *)self downloadHelper];
  v18 = [PUPickerCoordinator _editingEnabled:v16];
  v19 = [PUPickerCoordinator _viewImageBeforeSelectingEnabled:v16];
  v20 = [PUPickerCoordinator _skipSelectionConfirmation:v16];
  v21 = [(PUPickerCoordinator *)self configuration];
  v22 = [v21 allowsDownscaling];

  LOBYTE(v21) = [PUPickerCoordinator _assetCanPlay:v14];
  v23 = v19 | v21 | [PUPickerCoordinator _shouldTreatAssetAsLivePhoto:v14 photoPicker:v16 configuration:v43];
  if (((v22 | v20) | v18))
  {
    v24 = v22 | ~(v22 | v20);
  }

  else
  {
    v24 = v23;
  }

  [v17 cancelAllDownloads];
  v48 = v14;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v26 = [v17 isAnyPickerAssetDownloading:v25];

  v27 = v24 & 1;
  if (!v26)
  {
    [(PUPickerCoordinator *)self _completeSingleSelection:v14 showConfirmation:v24 & 1];
    goto LABEL_25;
  }

  v28 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v29 = [(PUPickerCoordinator *)self photoPicker];
  if (!v29)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [v37 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1001 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photoPicker", v39}];
LABEL_28:

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = objc_opt_class();
    v39 = NSStringFromClass(v40);
    v41 = [v29 px_descriptionForAssertionMessage];
    [v37 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1001 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photoPicker", v39, v41}];

    goto LABEL_28;
  }

LABEL_23:
  [(PUPickerCoordinator *)self presentProgressControllerFromViewController:v29 progress:v28];

  objc_initWeak(buf, self);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __68__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectSingleAsset__block_invoke;
  v44[3] = &unk_1E7B77BB8;
  objc_copyWeak(&v46, buf);
  v45 = v14;
  v47 = v27;
  [v17 handleDownloadOfAssetIfNeeded:v45 inCollection:0 withSuccessHandler:v44];

  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);

LABEL_25:
}

void __68__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectSingleAsset__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained progressController];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectSingleAsset__block_invoke_2;
    v8[3] = &unk_1E7B7CE88;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    v11 = *(a1 + 48);
    [v7 hideWithCompletion:v8];

    objc_destroyWeak(&v10);
  }
}

void __68__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectSingleAsset__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeSingleSelection:*(a1 + 32) showConfirmation:*(a1 + 48)];
}

- (void)pu_legacy_cancelPicker
{
  v4 = [(PUPickerCoordinator *)self photoPicker];

  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:956 description:@"PUPhotoPicker must not be nil."];
  }

  v5 = PLPickerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Starting legacy picker cancel", v9, 2u);
  }

  v6 = [(PUPickerCoordinator *)self downloadHelper];
  [v6 cancelAllDownloads];

  v7 = [(PUPickerCoordinator *)self photoPicker];
  [v7 cancelPhotoPicker];
}

- (void)pu_legacy_didDisplayPicker
{
  v4 = [(PUPickerCoordinator *)self photoPicker];

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:950 description:@"PUPhotoPicker must not be nil."];
  }

  v6 = [(PUPickerCoordinator *)self photoPicker];
  [v6 didDisplayPhotoPickerSourceType:0];
}

+ (id)_extraArgumentsForResizeTaskDescriptor:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3 || (([v3 targetSize], v5 == *MEMORY[0x1E6978E30]) ? (v7 = v6 == *(MEMORY[0x1E6978E30] + 8)) : (v7 = 0), v7))
  {
    v9 = 0;
  }

  else
  {
    v11 = *MEMORY[0x1E6979238];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v5, v6)}];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  return v9;
}

+ (BOOL)_shouldTreatAssetAsLivePhoto:(id)a3 photoPicker:(id)a4 configuration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1223 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1222 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_12:
  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1224 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

LABEL_4:
  v12 = [v11 generatedFilter];
  if (![v12 pu_legacy_mediaTypesIncludesLivePhoto])
  {

    goto LABEL_8;
  }

  v13 = [v9 playbackStyle];

  if (v13 != 3)
  {
LABEL_8:
    LOBYTE(v14) = 0;
    goto LABEL_9;
  }

  v14 = [a1 _editingEnabled:v10] ^ 1;
LABEL_9:

  return v14;
}

+ (BOOL)_assetCanPlay:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1204 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = [v5 playbackStyle];
  v7 = v6 < 6;
  v8 = 0x34u >> v6;

  return v7 & v8;
}

+ (BOOL)_editingEnabled:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1196 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];
  }

  v6 = [v5 properties];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DDDD8]];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (BOOL)_viewImageBeforeSelectingEnabled:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1188 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];
  }

  v6 = [v5 properties];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69DE9D0]];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (BOOL)_skipSelectionConfirmation:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1180 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];
  }

  v6 = [v5 properties];
  v7 = [v6 objectForKeyedSubscript:@"_UIImagePickerControllerSkipConfirmation"];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (BOOL)pu_legacy_shouldDownloadVideoComplement:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1094 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:a1 file:@"PUPickerCoordinator.m" lineNumber:1095 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

LABEL_3:
  v10 = [v9 generatedFilter];
  if ([v10 pu_legacy_mediaTypesIncludesLivePhoto])
  {
    v11 = [a1 _editingEnabled:v7] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = [v7 properties];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69DE8C0]];
  v14 = [v13 BOOLValue];

  return (v11 | v14) & 1;
}

@end