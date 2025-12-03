@interface PUPickerCoordinator
+ (BOOL)_assetCanPlay:(id)play;
+ (BOOL)_editingEnabled:(id)enabled;
+ (BOOL)_shouldTreatAssetAsLivePhoto:(id)photo photoPicker:(id)picker configuration:(id)configuration;
+ (BOOL)_skipSelectionConfirmation:(id)confirmation;
+ (BOOL)_viewImageBeforeSelectingEnabled:(id)enabled;
+ (BOOL)pu_legacy_shouldDownloadVideoComplement:(id)complement configuration:(id)configuration;
+ (id)_extraArgumentsForResizeTaskDescriptor:(id)descriptor;
+ (void)_logPhotosPickerPresentedForClientWithConfiguration:(id)configuration usingOptions:(int64_t)options;
+ (void)_updateSelectionCoordinatorLimit:(id)limit configuration:(id)configuration;
- (BOOL)assetExplorerReviewScreenViewController:(id)controller canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
- (BOOL)isShowingLiveWallpaperSuggestions;
- (BOOL)isShowingSpatialWallpaperSuggestions;
- (BOOL)popViewController;
- (PUPhotoPicker)photoPicker;
- (PUPickerCoordinator)init;
- (PUPickerCoordinator)initWithConfiguration:(id)configuration coordinatorActionHandler:(id)handler loadingStatusManager:(id)manager;
- (PUPickerCoordinator)initWithPHConfiguration:(id)configuration coordinatorActionHandler:(id)handler loadingStatusManager:(id)manager;
- (PUPickerCoordinator)initWithPUConfiguration:(id)configuration coordinatorActionHandler:(id)handler loadingStatusManager:(id)manager;
- (PUPickerCoordinator)initWithPhotoPicker:(id)picker mediaTypes:(id)types connection:(id)connection;
- (PUPickerCoordinatorActionHandler)coordinatorActionHandler;
- (id)_createFetchResultUsingSelectedObjectIDs;
- (id)_fileSizeActionsForAssets:(id)assets;
- (id)assetExplorerReviewScreenViewController:(id)controller fileSizeMenuForSelectedUUIDs:(id)ds;
- (id)assetsForResizing;
- (id)beginShowingProgressForAsset:(id)asset inCollection:(id)collection;
- (id)imageViewControllerFileSizeMenuActions:(id)actions;
- (id)ppt_scrollTestViewController;
- (void)_completeMultipleSelection:(id)selection;
- (void)_completeSingleSelection:(id)selection showConfirmation:(BOOL)confirmation;
- (void)_logPhotosAccessWithNonEmptyUserSelection;
- (void)_presentAssetExplorer;
- (void)_presentViewControllerDismissingPresentedViewControllerIfNeeded:(id)needed;
- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d;
- (void)cancelProgressController;
- (void)containerController:(id)controller didTapAddButton:(id)button;
- (void)containerController:(id)controller didTapCancelButton:(id)button;
- (void)containerController:(id)controller didTapClearButton:(id)button;
- (void)containerController:(id)controller didTapShowSelectedButton:(id)button;
- (void)containerControllerDidAppear:(id)appear;
- (void)containerControllerWantsToLearnMoreAboutDataAccess:(id)access;
- (void)deselectItemsWithIdentifiers:(id)identifiers;
- (void)emitDidFinishPickingAnalytics;
- (void)endShowingProgressWithIdentifier:(id)identifier succeeded:(BOOL)succeeded canceled:(BOOL)canceled error:(id)error;
- (void)imageViewControllerDidCancel:(id)cancel;
- (void)imageViewControllerDidConfirmSelection:(id)selection;
- (void)makeSearchBarAsFirstResponder;
- (void)moveItemWithIdentifier:(id)identifier afterIdentifier:(id)afterIdentifier;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)overrideSelectedItemsWithIdentifiers:(id)identifiers;
- (void)performCancellationAction;
- (void)performConfirmationAction;
- (void)presentAlertController:(id)controller;
- (void)presentProgressControllerFromViewController:(id)controller progress:(id)progress;
- (void)pu_legacy_cancelPicker;
- (void)pu_legacy_didDisplayPicker;
- (void)pu_legacy_selectMultipleAssets:(id)assets;
- (void)pu_legacy_selectSingleAsset;
- (void)pu_legacy_selectSingleAssetWithFileResizing;
- (void)resignSearchBarAsFirstResponder_110426547;
- (void)scrollContentToInitialPosition;
- (void)searchWithString:(id)string;
- (void)selectionCoordinator:(id)coordinator didUpdateSelectedObjectsWithRemovedOIDs:(id)ds insertedOIDs:(id)iDs;
- (void)selectionCoordinator:(id)coordinator willUpdateSelectedObjectsForSnapshot:(id)snapshot withRemovedIndexes:(id)indexes insertedIndexes:(id)insertedIndexes;
- (void)startActivityIndicatorsForAssetsWithFetchResult:(id)result;
- (void)stopActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers;
- (void)updateProgressControllerMessage;
- (void)updateProgressWithIdentifier:(id)identifier withValue:(double)value;
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
  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:918 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:919 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:920 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:921 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  _createFetchResultUsingSelectedObjectIDs = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  fetchedObjects = [_createFetchResultUsingSelectedObjectIDs fetchedObjects];

  if ([fetchedObjects count])
  {
    downloadHelper2 = [(PUPickerCoordinator *)self downloadHelper];
    if ([downloadHelper2 isAnyPickerAssetDownloading:fetchedObjects])
    {
      v12 = 0;
    }

    else
    {
      v12 = fetchedObjects;
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
  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:884 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:885 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:886 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:887 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  progressController2 = [(PUPickerCoordinator *)self progressController];
  progress = [progressController2 progress];

  if (!progress)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:888 description:{@"Invalid parameter not satisfying: %@", @"self.progressController.progress"}];
  }

  progressController3 = [(PUPickerCoordinator *)self progressController];
  progress2 = [progressController3 progress];
  totalUnitCount = [progress2 totalUnitCount];
  if (totalUnitCount < 2)
  {
    progressController4 = [(PUPickerCoordinator *)self progressController];
    progressController5 = [(PUPickerCoordinator *)self progressController];
    progress3 = [progressController5 progress];
    localizedDescription = [progress3 localizedDescription];
    [progressController4 setMessage:localizedDescription];
  }

  else
  {
    v13 = totalUnitCount;
    completedUnitCount = [progress2 completedUnitCount];
    if (completedUnitCount < v13)
    {
      v15 = completedUnitCount + 1;
    }

    else
    {
      v15 = v13;
    }

    selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
    progressController4 = [selectedObjectIDs array];

    configuration2 = [(PUPickerCoordinator *)self configuration];
    generatedFilter = [configuration2 generatedFilter];
    configuration3 = [(PUPickerCoordinator *)self configuration];
    photoLibrary = [configuration3 photoLibrary];
    v23 = [generatedFilter displayAssetMediaTypeConsideringAssetObjectIDs:progressController4 photoLibrary:photoLibrary];

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
    progressController5 = PUStringWithValidatedFormat();

    progress3 = [(PUPickerCoordinator *)self progressController:v15];
    [progress3 setMessage:progressController5];
  }
}

- (void)cancelProgressController
{
  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];
  [downloadHelper cancelAllDownloads];

  progressController = [(PUPickerCoordinator *)self progressController];
  [progressController hideWithCompletion:0];
}

- (void)presentProgressControllerFromViewController:(id)controller progress:(id)progress
{
  controllerCopy = controller;
  progressCopy = progress;
  if (controllerCopy)
  {
    if (progressCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:870 description:{@"Invalid parameter not satisfying: %@", @"sourceViewController"}];

    if (progressCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:871 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

LABEL_3:
  progressController = [(PUPickerCoordinator *)self progressController];
  [progressController setProgress:progressCopy];

  [(PUPickerCoordinator *)self updateProgressControllerMessage];
  progressController2 = [(PUPickerCoordinator *)self progressController];
  [progressController2 showFromSourceViewController:controllerCopy completion:0];
}

- (void)_logPhotosAccessWithNonEmptyUserSelection
{
  configuration = [(PUPickerCoordinator *)self configuration];
  pickerClientIdentification = [configuration pickerClientIdentification];

  if (PLPlatformPhotosAccessLoggingSupported() && pickerClientIdentification)
  {
    mEMORY[0x1E69BF2B0] = [MEMORY[0x1E69BF2B0] sharedInstance];
    [mEMORY[0x1E69BF2B0] logPhotosAccessWithPhotoPickerClientIdentification:pickerClientIdentification];
  }
}

- (id)_createFetchResultUsingSelectedObjectIDs
{
  v3 = objc_alloc(MEMORY[0x1E69788E0]);
  selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
  array = [selectedObjectIDs array];
  v7 = array;
  if (array)
  {
    v8 = array;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  configuration = [(PUPickerCoordinator *)self configuration];
  photoLibrary = [configuration photoLibrary];
  v11 = [v3 initWithOids:v8 photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v11;
}

- (id)_fileSizeActionsForAssets:(id)assets
{
  v24 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
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
        v11 = [v10 localizedDescriptionForAssets:assetsCopy];
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
  _createFetchResultUsingSelectedObjectIDs = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  v3 = MEMORY[0x1E695DFD8];
  v4 = PXMap();
  v5 = [v3 setWithArray:v4];

  v6 = [objc_alloc(MEMORY[0x1E69C3878]) initWithAssetFetchResult:_createFetchResultUsingSelectedObjectIDs options:0];
  v7 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:v6];
  v8 = [[PUPhotoKitDataSourceManager alloc] initWithPhotosDataSource:v7];
  v9 = objc_alloc_init(PUPhotoKitMediaProvider);
  configuration = [(PUPickerCoordinator *)self configuration];
  generatedFilter = [configuration generatedFilter];
  displayAssetMediaType = [generatedFilter displayAssetMediaType];

  if (displayAssetMediaType == 1)
  {
    v13 = 14;
  }

  else
  {
    configuration2 = [(PUPickerCoordinator *)self configuration];
    generatedFilter2 = [configuration2 generatedFilter];
    displayAssetMediaType2 = [generatedFilter2 displayAssetMediaType];

    if (displayAssetMediaType2 == 2)
    {
      v13 = 22;
    }

    else
    {
      v13 = 6;
    }
  }

  v17 = [PUAssetExplorerReviewScreenViewController alloc];
  resizeTaskDescriptorViewModel = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
  LOBYTE(v20) = 1;
  v19 = [(PUAssetExplorerReviewScreenViewController *)v17 initWithDataSourceManager:v8 mediaProvider:v9 reviewAssetProvider:0 initialIndexPath:0 initialSelectedAssetUUIDs:v5 initialDisabledLivePhotoAssetUUIDs:0 selectionCountLimit:0 sourceType:0 lowMemoryMode:v20 reviewBarsModel:0 resizeTaskDescriptorViewModel:resizeTaskDescriptorViewModel options:v13];

  [(PUAssetExplorerReviewScreenViewController *)v19 setDelegate:self];
  [(PUAssetExplorerReviewScreenViewController *)v19 setModalInPresentation:1];
  [(PUPickerCoordinator *)self _presentViewControllerDismissingPresentedViewControllerIfNeeded:v19];
}

- (void)_presentViewControllerDismissingPresentedViewControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  navigationController = [contentViewController navigationController];
  topViewController = [navigationController topViewController];

  presentedViewController = [topViewController presentedViewController];

  if (presentedViewController)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__PUPickerCoordinator__presentViewControllerDismissingPresentedViewControllerIfNeeded___block_invoke;
    v10[3] = &unk_1E7B80C38;
    v11 = topViewController;
    v12 = neededCopy;
    [v11 dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    [topViewController presentViewController:neededCopy animated:1 completion:0];
  }
}

- (void)presentAlertController:(id)controller
{
  controllerCopy = controller;
  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:752 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:753 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  navigationController = [contentViewController navigationController];
  topViewController = [navigationController topViewController];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__PUPickerCoordinator_presentAlertController___block_invoke;
  v17[3] = &unk_1E7B80C38;
  v18 = topViewController;
  v19 = controllerCopy;
  v13 = controllerCopy;
  v14 = topViewController;
  [v14 dismissViewControllerAnimated:1 completion:v17];
}

- (void)endShowingProgressWithIdentifier:(id)identifier succeeded:(BOOL)succeeded canceled:(BOOL)canceled error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:722 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:724 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v22 = identifierCopy;
  v16 = errorCopy;
  v17 = identifierCopy;
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

- (void)updateProgressWithIdentifier:(id)identifier withValue:(double)value
{
  identifierCopy = identifier;
  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:701 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:703 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:704 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v12 = identifierCopy;
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

- (id)beginShowingProgressForAsset:(id)asset inCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:672 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:673 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:674 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:675 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33186;
  v25 = __Block_byref_object_dispose__33187;
  v26 = 0;
  v20 = assetCopy;
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

- (id)assetExplorerReviewScreenViewController:(id)controller fileSizeMenuForSelectedUUIDs:(id)ds
{
  v19[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  dsCopy = ds;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC928];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__PUPickerCoordinator_assetExplorerReviewScreenViewController_fileSizeMenuForSelectedUUIDs___block_invoke;
  v15[3] = &unk_1E7B77B48;
  objc_copyWeak(&v17, &location);
  v9 = dsCopy;
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

- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d
{
  controllerCopy = controller;
  dsCopy = ds;
  iDsCopy = iDs;
  dCopy = d;
  if (action)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:635 description:{@"Invalid parameter not satisfying: %@", @"completionAction == PUReviewCompletionActionDone"}];
  }

  configuration = [(PUPickerCoordinator *)self configuration];
  isSingleSelection = [configuration isSingleSelection];

  if (isSingleSelection)
  {
    [(PUPickerCoordinator *)self _logPhotosAccessWithNonEmptyUserSelection];
    selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];

    coordinatorActionHandler = [(PUPickerCoordinator *)self coordinatorActionHandler];
    additionalSelectionState = [(PUPickerCoordinator *)self additionalSelectionState];
    [coordinatorActionHandler coordinator:self didFinishPicking:selectedObjectIDs additionalSelectionState:additionalSelectionState action:0];
  }

  else
  {
    initialSelectedAssetUUIDs = [controllerCopy initialSelectedAssetUUIDs];
    selectedObjectIDs = [initialSelectedAssetUUIDs mutableCopy];

    [selectedObjectIDs minusSet:dsCopy];
    configuration2 = [(PUPickerCoordinator *)self configuration];
    photoLibrary = [configuration2 photoLibrary];
    coordinatorActionHandler = [photoLibrary librarySpecificFetchOptions];

    v25 = MEMORY[0x1E6978630];
    allObjects = [selectedObjectIDs allObjects];
    additionalSelectionState = [v25 fetchAssetsWithUUIDs:allObjects options:coordinatorActionHandler];

    selectionCoordinator2 = [(PUPickerCoordinator *)self selectionCoordinator];
    v28 = MEMORY[0x1E695DFB8];
    fetchedObjectIDs = [additionalSelectionState fetchedObjectIDs];
    v30 = [v28 orderedSetWithArray:fetchedObjectIDs];
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    [selectionCoordinator2 modifySelectionWithRemovedOIDs:v30 insertedOIDs:orderedSet];
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)assetExplorerReviewScreenViewController:(id)controller canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  controllerCopy = controller;
  assetCopy = asset;
  collectionCopy = collection;
  if (type > 0xA)
  {
    goto LABEL_8;
  }

  if (((1 << type) & 0xF4) == 0)
  {
    if (((1 << type) & 0x308) != 0)
    {
      configuration = [(PUPickerCoordinator *)self configuration];
      v13 = [configuration isSingleSelection] ^ 1;
LABEL_11:

      goto LABEL_12;
    }

    if (type == 10)
    {
      configuration = [(PUPickerCoordinator *)self configuration];
      allowsDownscaling = [configuration allowsDownscaling];
LABEL_10:
      LOBYTE(v13) = allowsDownscaling;
      goto LABEL_11;
    }

LABEL_8:
    if (type)
    {
      LOBYTE(v13) = 1;
      goto LABEL_12;
    }

    configuration = [(PUPickerCoordinator *)self configuration];
    allowsDownscaling = [configuration isSingleSelection];
    goto LABEL_10;
  }

  LOBYTE(v13) = 0;
LABEL_12:

  return v13;
}

- (void)selectionCoordinator:(id)coordinator didUpdateSelectedObjectsWithRemovedOIDs:(id)ds insertedOIDs:(id)iDs
{
  coordinatorCopy = coordinator;
  selectedObjectIDs = [coordinatorCopy selectedObjectIDs];
  configuration = [(PUPickerCoordinator *)self configuration];
  if ([configuration isSingleSelection])
  {
    v9 = [selectedObjectIDs count];

    if (v9 >= 2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __97__PUPickerCoordinator_selectionCoordinator_didUpdateSelectedObjectsWithRemovedOIDs_insertedOIDs___block_invoke;
      block[3] = &unk_1E7B80C38;
      v27 = coordinatorCopy;
      v28 = selectedObjectIDs;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_21;
    }
  }

  else
  {
  }

  [(PUPickerCoordinator *)self setSelectionDidChange:1];
  selectionDidChangeObserver = [(PUPickerCoordinator *)self selectionDidChangeObserver];

  if (selectionDidChangeObserver)
  {
    selectionDidChangeObserver2 = [(PUPickerCoordinator *)self selectionDidChangeObserver];
    selectionDidChangeObserver2[2]();
  }

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController updateBars];

  resizeTaskDescriptorViewModel = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
  [resizeTaskDescriptorViewModel performChanges:&__block_literal_global_33197];

  configuration2 = [(PUPickerCoordinator *)self configuration];
  if (([configuration2 shouldPassthroughSelection] & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  configuration3 = [(PUPickerCoordinator *)self configuration];
  if ([configuration3 isSingleSelection])
  {
    v17 = [selectedObjectIDs count];

    if (!v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  [(PUPickerCoordinator *)self _logPhotosAccessWithNonEmptyUserSelection];
  coordinatorActionHandler = [(PUPickerCoordinator *)self coordinatorActionHandler];

  if (coordinatorActionHandler)
  {
    configuration4 = [(PUPickerCoordinator *)self configuration];
    if ([configuration4 allowsDownscaling])
    {
      configuration5 = [(PUPickerCoordinator *)self configuration];
      isSingleSelection = [configuration5 isSingleSelection];

      if (isSingleSelection)
      {
        [(PUPickerCoordinator *)self _presentAssetExplorer];
        goto LABEL_21;
      }
    }

    else
    {
    }

    configuration2 = [(PUPickerCoordinator *)self coordinatorActionHandler];
    additionalSelectionState = [(PUPickerCoordinator *)self additionalSelectionState];
    [configuration2 coordinator:self didFinishPicking:selectedObjectIDs additionalSelectionState:additionalSelectionState action:0];

    goto LABEL_20;
  }

  photoPicker = [(PUPickerCoordinator *)self photoPicker];

  if (photoPicker)
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

- (void)selectionCoordinator:(id)coordinator willUpdateSelectedObjectsForSnapshot:(id)snapshot withRemovedIndexes:(id)indexes insertedIndexes:(id)insertedIndexes
{
  snapshotCopy = snapshot;
  indexesCopy = indexes;
  insertedIndexesCopy = insertedIndexes;
  configuration = [(PUPickerCoordinator *)self configuration];
  if ([configuration allowsDownload])
  {
    configuration2 = [(PUPickerCoordinator *)self configuration];
    isSingleSelection = [configuration2 isSingleSelection];

    if ((isSingleSelection & 1) == 0)
    {
      downloadHelper = [(PUPickerCoordinator *)self downloadHelper];
      if (!downloadHelper)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:544 description:{@"Invalid parameter not satisfying: %@", @"downloadHelper"}];
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __116__PUPickerCoordinator_selectionCoordinator_willUpdateSelectedObjectsForSnapshot_withRemovedIndexes_insertedIndexes___block_invoke;
      v26[3] = &unk_1E7B77B00;
      v17 = snapshotCopy;
      v30 = a2;
      v27 = v17;
      selfCopy = self;
      v18 = downloadHelper;
      v29 = v18;
      [indexesCopy enumerateItemIndexPathsUsingBlock:v26];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __116__PUPickerCoordinator_selectionCoordinator_willUpdateSelectedObjectsForSnapshot_withRemovedIndexes_insertedIndexes___block_invoke_2;
      v21[3] = &unk_1E7B77B00;
      v22 = v17;
      selfCopy2 = self;
      v24 = v18;
      v25 = a2;
      v19 = v18;
      [insertedIndexesCopy enumerateItemIndexPathsUsingBlock:v21];
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUPickerResizeTaskDescriptorViewModelObservationContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_22;
    }

    v21 = observableCopy;
    configuration = [(PUPickerCoordinator *)self configuration];
    allowsDownscaling = [configuration allowsDownscaling];

    if (allowsDownscaling)
    {
      resizeTaskDescriptorViewModel = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
      resizeTaskDescriptor = [resizeTaskDescriptorViewModel resizeTaskDescriptor];

      if (!resizeTaskDescriptor || (([resizeTaskDescriptor targetSize], v16 == *MEMORY[0x1E6978E30]) ? (v18 = v17 == *(MEMORY[0x1E6978E30] + 8)) : (v18 = 0), v18 || (v16 == *MEMORY[0x1E695F060] ? (v19 = v17 == *(MEMORY[0x1E695F060] + 8)) : (v19 = 0), v19)))
      {
        selectionCoordinator = 0;
      }

      else
      {
        selectionCoordinator = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v16, v17)}];
      }
    }

    else
    {
      selectionCoordinator = 0;
    }

    additionalSelectionState = [(PUPickerCoordinator *)self additionalSelectionState];
    [additionalSelectionState setDownscalingTargetDimension:selectionCoordinator];
    goto LABEL_21;
  }

  if (PUPickerConfigurationObservationContext_33214 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:533 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 2) != 0)
  {
    v21 = observableCopy;
    selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
    additionalSelectionState = [(PUPickerCoordinator *)self configuration];
    [PUPickerCoordinator _updateSelectionCoordinatorLimit:selectionCoordinator configuration:additionalSelectionState];
LABEL_21:

    observableCopy = v21;
  }

LABEL_22:
}

- (void)containerController:(id)controller didTapShowSelectedButton:(id)button
{
  v6 = [(PUPickerCoordinator *)self selectionCoordinator:controller];
  selectedObjectIDs = [v6 selectedObjectIDs];
  v8 = [selectedObjectIDs count];

  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:505 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs.count > 0"}];
  }

  [(PUPickerCoordinator *)self _presentAssetExplorer];
}

- (void)containerController:(id)controller didTapAddButton:(id)button
{
  buttonCopy = button;
  [(PUPickerCoordinator *)self _logPhotosAccessWithNonEmptyUserSelection];
  coordinatorActionHandler = [(PUPickerCoordinator *)self coordinatorActionHandler];

  if (coordinatorActionHandler)
  {
    managedViewController = [(PUPickerCoordinator *)self managedViewController];
    contentViewController = [managedViewController contentViewController];
    navigationItem = [contentViewController navigationItem];
    searchController = [navigationItem searchController];
    searchBar = [searchController searchBar];

    if ([searchBar canResignFirstResponder])
    {
      [searchBar resignFirstResponder];
    }

    selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];

    coordinatorActionHandler2 = [(PUPickerCoordinator *)self coordinatorActionHandler];
    additionalSelectionState = [(PUPickerCoordinator *)self additionalSelectionState];
    [coordinatorActionHandler2 coordinator:self didFinishPicking:selectedObjectIDs additionalSelectionState:additionalSelectionState action:1];
  }

  else
  {
    photoPicker = [(PUPickerCoordinator *)self photoPicker];

    if (photoPicker)
    {
      v17 = buttonCopy;
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

- (void)containerController:(id)controller didTapClearButton:(id)button
{
  v8 = [(PUPickerCoordinator *)self selectionCoordinator:controller];
  selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
  orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
  [v8 modifySelectionWithRemovedOIDs:selectedObjectIDs insertedOIDs:orderedSet];
}

- (void)containerController:(id)controller didTapCancelButton:(id)button
{
  v5 = [(PUPickerCoordinator *)self coordinatorActionHandler:controller];

  if (v5)
  {
    coordinatorActionHandler = [(PUPickerCoordinator *)self coordinatorActionHandler];
    configuration = [(PUPickerCoordinator *)self configuration];
    preselectedItemObjectIDs = [configuration preselectedItemObjectIDs];
    additionalSelectionState = [(PUPickerCoordinator *)self additionalSelectionState];
    [coordinatorActionHandler coordinator:self didFinishPicking:preselectedItemObjectIDs additionalSelectionState:additionalSelectionState action:2];
  }

  else
  {
    photoPicker = [(PUPickerCoordinator *)self photoPicker];

    if (photoPicker)
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

- (void)containerControllerWantsToLearnMoreAboutDataAccess:(id)access
{
  accessCopy = access;
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  [managedViewController presentDataAccessEducationViewController:accessCopy];
}

- (void)containerControllerDidAppear:(id)appear
{
  coordinatorActionHandler = [(PUPickerCoordinator *)self coordinatorActionHandler];

  if (!coordinatorActionHandler)
  {
    photoPicker = [(PUPickerCoordinator *)self photoPicker];

    if (photoPicker)
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
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController resignSearchBarAsFirstResponder];
}

- (void)makeSearchBarAsFirstResponder
{
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController makeSearchBarAsFirstResponder];
}

- (void)emitDidFinishPickingAnalytics
{
  configuration = [(PUPickerCoordinator *)self configuration];

  if (!configuration)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:407 description:{@"Invalid parameter not satisfying: %@", @"self.configuration"}];
  }

  configuration2 = [(PUPickerCoordinator *)self configuration];
  pickerClientBundleIdentifier = [configuration2 pickerClientBundleIdentifier];
  v7 = pickerClientBundleIdentifier;
  v8 = @"Unknown";
  if (pickerClientBundleIdentifier)
  {
    v8 = pickerClientBundleIdentifier;
  }

  v58 = v8;

  v9 = MEMORY[0x1E696AD98];
  selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
  v59 = [v9 numberWithInt:{objc_msgSend(selectedObjectIDs, "count") != 0}];

  v12 = MEMORY[0x1E696AD98];
  configuration3 = [(PUPickerCoordinator *)self configuration];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(configuration3, "edgesWithoutContentMargins")}];

  v15 = MEMORY[0x1E696AD98];
  configuration4 = [(PUPickerCoordinator *)self configuration];
  v57 = [v15 numberWithInteger:{objc_msgSend(configuration4, "preferredAssetRepresentationMode")}];

  v17 = MEMORY[0x1E696AD98];
  configuration5 = [(PUPickerCoordinator *)self configuration];
  v19 = [v17 numberWithBool:{objc_msgSend(configuration5, "pickerClientHasLibraryAccess")}];

  v20 = MEMORY[0x1E696AD98];
  configuration6 = [(PUPickerCoordinator *)self configuration];
  v22 = [v20 numberWithBool:{objc_msgSend(configuration6, "isLimitedLibraryPicker")}];

  v23 = MEMORY[0x1E696AD98];
  configuration7 = [(PUPickerCoordinator *)self configuration];
  v55 = [v23 numberWithBool:{objc_msgSend(configuration7, "isPeopleOrPetsPicker")}];

  v25 = MEMORY[0x1E696AD98];
  configuration8 = [(PUPickerCoordinator *)self configuration];
  v53 = [v25 numberWithBool:{objc_msgSend(configuration8, "isSingleSelection")}];

  v27 = MEMORY[0x1E696AD98];
  configuration9 = [(PUPickerCoordinator *)self configuration];
  v48 = [v27 numberWithInteger:{objc_msgSend(configuration9, "mode")}];

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  selectedSuggestionAnalyticsName = [contentViewController selectedSuggestionAnalyticsName];
  v32 = selectedSuggestionAnalyticsName;
  v33 = @"Unknown";
  if (selectedSuggestionAnalyticsName)
  {
    v33 = selectedSuggestionAnalyticsName;
  }

  v34 = v33;

  v35 = MEMORY[0x1E696AD98];
  configuration10 = [(PUPickerCoordinator *)self configuration];
  v37 = [v35 numberWithInteger:{objc_msgSend(configuration10, "selection")}];

  v38 = MEMORY[0x1E696AD98];
  configuration11 = [(PUPickerCoordinator *)self configuration];
  v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(configuration11, "disabledCapabilities")}];

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
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  isShowingSpatialWallpaperSuggestions = [contentViewController isShowingSpatialWallpaperSuggestions];

  return isShowingSpatialWallpaperSuggestions;
}

- (BOOL)isShowingLiveWallpaperSuggestions
{
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  isShowingLiveWallpaperSuggestions = [contentViewController isShowingLiveWallpaperSuggestions];

  return isShowingLiveWallpaperSuggestions;
}

- (void)performConfirmationAction
{
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController performConfirmationAction];
}

- (void)performCancellationAction
{
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController performCancellationAction];
}

- (void)zoomOutContent
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:381 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator zoomOutContent]"}];
  }

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController zoomOutContent];
}

- (void)zoomInContent
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:375 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator zoomInContent]"}];
  }

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController zoomInContent];
}

- (void)scrollContentToInitialPosition
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:369 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator scrollContentToInitialPosition]"}];
  }

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController scrollContentToInitialPosition];
}

- (BOOL)popViewController
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:354 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator popViewController]"}];
  }

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  navigationController = [contentViewController navigationController];

  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers count];

  if (v8 >= 2)
  {
    configuration = [(PUPickerCoordinator *)self configuration];
    allowsSelectionStaging = [configuration allowsSelectionStaging];

    if ((allowsSelectionStaging & 1) == 0)
    {
      selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
      selectionCoordinator2 = [(PUPickerCoordinator *)self selectionCoordinator];
      selectedObjectIDs = [selectionCoordinator2 selectedObjectIDs];
      orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
      [selectionCoordinator modifySelectionWithRemovedOIDs:selectedObjectIDs insertedOIDs:orderedSet];
    }

    managedViewController2 = [(PUPickerCoordinator *)self managedViewController];
    contentViewController2 = [managedViewController2 contentViewController];
    navigationController2 = [contentViewController2 navigationController];
    v18 = [navigationController2 popViewControllerAnimated:1];
  }

  return v8 > 1;
}

- (void)searchWithString:(id)string
{
  v5 = MEMORY[0x1E696AF00];
  stringCopy = string;
  if ([v5 isMainThread])
  {
    if (stringCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:343 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator searchWithString:]"}];

    if (stringCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"string"}];

LABEL_3:
  configuration = [(PUPickerCoordinator *)self configuration];
  allowsSelectionStaging = [configuration allowsSelectionStaging];

  if ((allowsSelectionStaging & 1) == 0)
  {
    selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
    selectionCoordinator2 = [(PUPickerCoordinator *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator2 selectedObjectIDs];
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    [selectionCoordinator modifySelectionWithRemovedOIDs:selectedObjectIDs insertedOIDs:orderedSet];
  }

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController searchWithString:stringCopy];
}

- (void)moveItemWithIdentifier:(id)identifier afterIdentifier:(id)afterIdentifier
{
  v31[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  afterIdentifierCopy = afterIdentifier;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:315 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator moveItemWithIdentifier:afterIdentifier:]"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:316 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    goto LABEL_3;
  }

  if (!identifierCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (([identifierCopy isEqualToString:afterIdentifierCopy] & 1) == 0)
  {
    selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
    v11 = [selectedObjectIDs count];

    if (v11)
    {
      configuration = [(PUPickerCoordinator *)self configuration];
      v31[0] = identifierCopy;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v14 = [configuration fetchOrderedItemObjectIDsUsingItemIdentifiers:v13];
      firstObject = [v14 firstObject];

      if (!firstObject)
      {
LABEL_14:

        goto LABEL_15;
      }

      selectionCoordinator2 = [(PUPickerCoordinator *)self selectionCoordinator];
      selectedObjectIDs2 = [selectionCoordinator2 selectedObjectIDs];
      v18 = [selectedObjectIDs2 mutableCopy];

      v19 = [v18 indexOfObject:firstObject];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v19;
        if (afterIdentifierCopy)
        {
          configuration2 = [(PUPickerCoordinator *)self configuration];
          v30 = afterIdentifierCopy;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
          v23 = [configuration2 fetchOrderedItemObjectIDsUsingItemIdentifiers:v22];
          firstObject2 = [v23 firstObject];

          if (!firstObject2)
          {
            goto LABEL_13;
          }

          v25 = [v18 indexOfObject:firstObject2];

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

        selectionCoordinator3 = [(PUPickerCoordinator *)self selectionCoordinator];
        [selectionCoordinator3 modifySelectionWithOrder:v18];
      }

LABEL_13:

      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)deselectItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:303 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator deselectItemsWithIdentifiers:]"}];
  }

  v5 = identifiersCopy;
  if (!identifiersCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

    v5 = 0;
  }

  if ([v5 count])
  {
    selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
    v8 = [selectedObjectIDs count];

    if (v8)
    {
      configuration = [(PUPickerCoordinator *)self configuration];
      v10 = [configuration fetchOrderedItemObjectIDsUsingItemIdentifiers:identifiersCopy];

      if ([v10 count])
      {
        selectionCoordinator2 = [(PUPickerCoordinator *)self selectionCoordinator];
        orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
        [selectionCoordinator2 modifySelectionWithRemovedOIDs:v10 insertedOIDs:orderedSet];
      }
    }
  }
}

- (void)overrideSelectedItemsWithIdentifiers:(id)identifiers
{
  v5 = MEMORY[0x1E696AF00];
  identifiersCopy = identifiers;
  if ([v5 isMainThread])
  {
    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:292 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator overrideSelectedItemsWithIdentifiers:]"}];

    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

LABEL_3:
  selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];

  configuration = [(PUPickerCoordinator *)self configuration];
  v9 = [configuration fetchOrderedItemObjectIDsUsingItemIdentifiers:identifiersCopy];

  if (([v9 isEqualToOrderedSet:selectedObjectIDs] & 1) == 0)
  {
    selectionCoordinator2 = [(PUPickerCoordinator *)self selectionCoordinator];
    [selectionCoordinator2 modifySelectionWithRemovedOIDs:selectedObjectIDs insertedOIDs:v9];
  }
}

- (void)stopActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers
{
  v27 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:275 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator stopActivityIndicatorsForAssetsWithIdentifiers:]"}];

    if (identifiersCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];

LABEL_3:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = identifiersCopy;
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
        activityIndicatorTrackingIDs = [(PUPickerCoordinator *)self activityIndicatorTrackingIDs];
        v13 = [activityIndicatorTrackingIDs objectForKeyedSubscript:v11];

        if (v13)
        {
          loadingStatusManager = [(PUPickerCoordinator *)self loadingStatusManager];
          [loadingStatusManager didCompleteLoadOperationWithTrackingID:v13 withSuccess:1 error:0];
        }

        activityIndicatorTrackingIDs2 = [(PUPickerCoordinator *)self activityIndicatorTrackingIDs];
        [activityIndicatorTrackingIDs2 setObject:0 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  activityIndicatorTrackingIDs3 = [(PUPickerCoordinator *)self activityIndicatorTrackingIDs];
  v17 = [activityIndicatorTrackingIDs3 count];

  if (!v17)
  {
    managedViewController = [(PUPickerCoordinator *)self managedViewController];
    contentViewController = [managedViewController contentViewController];
    [contentViewController setReplacesConfirmationButtonWithActivityIndicator:0];
  }
}

- (void)startActivityIndicatorsForAssetsWithFetchResult:(id)result
{
  v26 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:263 description:{@"%s must be called on the main thread", "-[PUPickerCoordinator startActivityIndicatorsForAssetsWithFetchResult:]"}];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = resultCopy;
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
        loadingStatusManager = [(PUPickerCoordinator *)self loadingStatusManager];
        uuid = [v11 uuid];
        v14 = [loadingStatusManager willBeginLoadOperationWithItemIdentifier:uuid];

        loadingStatusManager2 = [(PUPickerCoordinator *)self loadingStatusManager];
        [loadingStatusManager2 didUpdateLoadOperationWithIndeterminateProgressWithTrackingID:v14];

        activityIndicatorTrackingIDs = [(PUPickerCoordinator *)self activityIndicatorTrackingIDs];
        localIdentifier = [v11 localIdentifier];
        [activityIndicatorTrackingIDs setObject:v14 forKeyedSubscript:localIdentifier];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];
  [contentViewController setReplacesConfirmationButtonWithActivityIndicator:1];
}

- (PUPickerCoordinator)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:257 description:{@"%s is not available as initializer", "-[PUPickerCoordinator init]"}];

  abort();
}

- (PUPickerCoordinator)initWithConfiguration:(id)configuration coordinatorActionHandler:(id)handler loadingStatusManager:(id)manager
{
  v49 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  obj = handler;
  managerCopy = manager;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v46.receiver = self;
  v46.super_class = PUPickerCoordinator;
  v12 = [(PUPickerCoordinator *)&v46 init];
  if (v12)
  {
    if (!managerCopy)
    {
      managerCopy = objc_alloc_init(MEMORY[0x1E69C4558]);
    }

    suggestedItemObjectIDs = [configurationCopy suggestedItemObjectIDs];
    if ([suggestedItemObjectIDs count])
    {
      preselectedItemObjectIDs = [configurationCopy preselectedItemObjectIDs];
      v15 = [preselectedItemObjectIDs count] == 0;

      if (v15)
      {
        suggestedItemObjectIDs2 = [configurationCopy suggestedItemObjectIDs];
        goto LABEL_11;
      }
    }

    else
    {
    }

    suggestedItemObjectIDs2 = [configurationCopy preselectedItemObjectIDs];
LABEL_11:
    if ([configurationCopy isSingleSelection] && objc_msgSend(suggestedItemObjectIDs2, "count") >= 2)
    {
      v16 = MEMORY[0x1E695DFB8];
      firstObject = [suggestedItemObjectIDs2 firstObject];
      v18 = [v16 orderedSetWithObject:firstObject];

      suggestedItemObjectIDs2 = v18;
    }

    v19 = [objc_alloc(MEMORY[0x1E69C45D0]) initWithSelectedOIDs:suggestedItemObjectIDs2];
    [PUPickerCoordinator _updateSelectionCoordinatorLimit:v19 configuration:configurationCopy];
    v41 = [[PUPickerAdditionalSelectionState alloc] initWithConfiguration:configurationCopy];
    if ([configurationCopy allowsDownload])
    {
      v40 = [[PUPhotosGridDownloadHelper alloc] initWithUpdateHandler:v12];
      -[PUPhotosGridDownloadHelper setMode:](v40, "setMode:", [configurationCopy isSingleSelection] ^ 1);
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

    if ([configurationCopy allowsDownscaling] && (-[PUPickerCoordinator configuration](v12, "configuration"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "excludesOptionsMenu"), v22, v23))
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
      preselectedItemObjectIDs2 = [configurationCopy preselectedItemObjectIDs];
      v27 = [preselectedItemObjectIDs2 count];
      *buf = 134217984;
      v48 = v27;
      _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "Initializing root picker view with starting selection of size %ld", buf, 0xCu);
    }

    v28 = [[PUPickerContainerController alloc] initWithConfiguration:configurationCopy loadingStatusManager:managerCopy selectionCoordinator:v19 additionalSelectionState:v41 actionHandler:v12];
    v29 = [[PUPickerManagedViewController alloc] initWithConfiguration:configurationCopy contentViewController:v28];
    objc_storeStrong(&v12->_resizeTaskDescriptorViewModel, v24);
    objc_storeStrong(&v12->_managedViewController, v29);
    objc_storeStrong(&v12->_configuration, configuration);
    objc_storeWeak(&v12->_coordinatorActionHandler, obj);
    objc_storeStrong(&v12->_selectionCoordinator, v19);
    objc_storeStrong(&v12->_additionalSelectionState, v41);
    objc_storeStrong(&v12->_downloadHelper, v40);
    objc_storeStrong(&v12->_downloadProgresses, v39);
    objc_storeStrong(&v12->_progressController, v20);
    objc_storeStrong(&v12->_loadingStatusManager, managerCopy);
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activityIndicatorTrackingIDs = v12->_activityIndicatorTrackingIDs;
    v12->_activityIndicatorTrackingIDs = v30;

    selectionCoordinator = [(PUPickerCoordinator *)v12 selectionCoordinator];
    [selectionCoordinator setDelegate:v12];

    resizeTaskDescriptorViewModel = [(PUPickerCoordinator *)v12 resizeTaskDescriptorViewModel];
    [resizeTaskDescriptorViewModel setDelegate:v12];

    resizeTaskDescriptorViewModel2 = [(PUPickerCoordinator *)v12 resizeTaskDescriptorViewModel];
    [resizeTaskDescriptorViewModel2 registerChangeObserver:v12 context:PUPickerResizeTaskDescriptorViewModelObservationContext];

    configuration = [(PUPickerCoordinator *)v12 configuration];
    [configuration registerChangeObserver:v12 context:PUPickerConfigurationObservationContext_33214];

    objc_initWeak(buf, v12);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __91__PUPickerCoordinator_initWithConfiguration_coordinatorActionHandler_loadingStatusManager___block_invoke;
    v44[3] = &unk_1E7B80638;
    objc_copyWeak(&v45, buf);
    [(PUPickerActivityProgressController *)v20 setCancellationHandler:v44];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__serviceContextDidBecomeInsecure name:*MEMORY[0x1E69DED08] object:0];

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

- (PUPickerCoordinator)initWithPUConfiguration:(id)configuration coordinatorActionHandler:(id)handler loadingStatusManager:(id)manager
{
  configurationCopy = configuration;
  handlerCopy = handler;
  managerCopy = manager;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v12 = [(PUPickerCoordinator *)self initWithConfiguration:configurationCopy coordinatorActionHandler:handlerCopy loadingStatusManager:managerCopy];
  [PUPickerCoordinator _logPhotosPickerPresentedForClientWithConfiguration:configurationCopy usingOptions:1];

  return v12;
}

- (PUPickerCoordinator)initWithPHConfiguration:(id)configuration coordinatorActionHandler:(id)handler loadingStatusManager:(id)manager
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  managerCopy = manager;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v12 = [[PUPickerConfiguration alloc] initWithPHPickerConfiguration:configurationCopy connection:0];
  if (v12)
  {
    v13 = [(PUPickerCoordinator *)self initWithPUConfiguration:v12 coordinatorActionHandler:handlerCopy loadingStatusManager:managerCopy];
  }

  else
  {
    v14 = PLPickerGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = configurationCopy;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Failed to create picker with configuration: %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (PUPickerCoordinator)initWithPhotoPicker:(id)picker mediaTypes:(id)types connection:(id)connection
{
  v24 = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  connectionCopy = connection;
  typesCopy = types;
  properties = [pickerCopy properties];
  v12 = [properties objectForKeyedSubscript:@"_UIImagePickerControllerMessagesLayout"];
  bOOLValue = [v12 BOOLValue];

  v14 = objc_alloc_init(MEMORY[0x1E69790E0]);
  [v14 set_onboardingHeaderDismissedBefore:{objc_msgSend(pickerCopy, "onboardingHeaderDismissedBefore")}];
  [v14 set_onboardingOverlayDismissedBefore:0];
  [v14 set_limitedLibraryHeaderDismissedBefore:0];
  if (bOOLValue)
  {
    [v14 setDisabledCapabilities:30];
  }

  [v14 _setDisabledPrivateCapabilities:4];
  if ([pickerCopy allowsMultipleSelection])
  {
    multipleSelectionLimit = [pickerCopy multipleSelectionLimit];
  }

  else
  {
    multipleSelectionLimit = 1;
  }

  [v14 setSelectionLimit:multipleSelectionLimit];
  [v14 _setAllowsDownscaling:{objc_msgSend(pickerCopy, "showsFileSizePicker")}];
  v16 = [[PUPickerGeneratedFilter alloc] initWithUIImagePickerControllerMediaTypes:typesCopy];

  v17 = [[PUPickerConfiguration alloc] initForUIImagePickerControllerWithPHPickerConfiguration:v14 connection:connectionCopy overriddenGeneratedFilter:v16];
  if (v17)
  {
    v18 = [(PUPickerCoordinator *)self initWithConfiguration:v17 coordinatorActionHandler:0 loadingStatusManager:0];
    [PUPickerCoordinator _logPhotosPickerPresentedForClientWithConfiguration:v17 usingOptions:0];
    objc_storeWeak(&v18->_photoPicker, pickerCopy);
    if (v18->_downloadHelper)
    {
      [(PUPhotosGridDownloadHelper *)v18->_downloadHelper setShouldTreatLivePhotosAsStills:[PUPickerCoordinator pu_legacy_shouldDownloadVideoComplement:pickerCopy configuration:v17]];
    }
  }

  else
  {
    v19 = PLPickerGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      properties2 = [pickerCopy properties];
      v22 = 138412290;
      v23 = properties2;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Failed to create picker with options: %@", &v22, 0xCu);
    }

    [pickerCopy cancelPhotoPicker];
    v18 = 0;
  }

  return v18;
}

+ (void)_logPhotosPickerPresentedForClientWithConfiguration:(id)configuration usingOptions:(int64_t)options
{
  configurationCopy = configuration;
  pickerClientIdentification = [configurationCopy pickerClientIdentification];
  if ([configurationCopy pickerClientIsEntitledForOrHasPrivateLibraryAccess])
  {
    isLimitedLibraryPicker = 1;
  }

  else
  {
    isLimitedLibraryPicker = [configurationCopy isLimitedLibraryPicker];
  }

  if (PLPlatformPhotosAccessLoggingSupported() && pickerClientIdentification && (isLimitedLibraryPicker & 1) == 0)
  {
    mEMORY[0x1E69BF2B0] = [MEMORY[0x1E69BF2B0] sharedInstance];
    trustedCallerBundleID = [pickerClientIdentification trustedCallerBundleID];
    [mEMORY[0x1E69BF2B0] logPhotosPickerPresentedLibraryForClient:trustedCallerBundleID usingOptions:options];
  }
}

+ (void)_updateSelectionCoordinatorLimit:(id)limit configuration:(id)configuration
{
  limitCopy = limit;
  configurationCopy = configuration;
  if (([configurationCopy allowsUnlimitedMultipleSelection] & 1) != 0 || objc_msgSend(configurationCopy, "isSingleSelection"))
  {
    [limitCopy setSelectionCountLimit:0];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(configurationCopy, "selectionLimit")}];
    [limitCopy setSelectionCountLimit:v6];
  }
}

- (id)ppt_scrollTestViewController
{
  managedViewController = [(PUPickerCoordinator *)self managedViewController];
  contentViewController = [managedViewController contentViewController];

  return contentViewController;
}

- (void)imageViewControllerDidConfirmSelection:(id)selection
{
  v4 = PLPickerGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Confirming UIImagePickerController review UI.", v5, 2u);
  }

  [(PUPickerCoordinator *)self pu_legacy_selectSingleAssetWithFileResizing];
}

- (id)imageViewControllerFileSizeMenuActions:(id)actions
{
  v11 = *MEMORY[0x1E69E9840];
  _createFetchResultUsingSelectedObjectIDs = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  fetchedObjects = [_createFetchResultUsingSelectedObjectIDs fetchedObjects];

  v6 = PLPickerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = fetchedObjects;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Providing UIImagePickerController review UI file resizing actions with assets: %@", &v9, 0xCu);
  }

  v7 = [(PUPickerCoordinator *)self _fileSizeActionsForAssets:fetchedObjects];

  return v7;
}

- (void)imageViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = PLPickerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing UIImagePickerController review UI.", v10, 2u);
  }

  selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];

  selectionCoordinator2 = [(PUPickerCoordinator *)self selectionCoordinator];
  orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
  [selectionCoordinator2 modifySelectionWithRemovedOIDs:selectedObjectIDs insertedOIDs:orderedSet];

  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)_completeMultipleSelection:(id)selection
{
  v28 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  if (!selectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1164 description:{@"Invalid parameter not satisfying: %@", @"selectedAssets"}];
  }

  photoPicker = [(PUPickerCoordinator *)self photoPicker];

  if (!photoPicker)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1165 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1166 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1167 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1168 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1169 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  v12 = PLPickerGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = [selectionCopy count];
    _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "Calling back with full dictionary for %lu assets.", buf, 0xCu);
  }

  resizeTaskDescriptorViewModel = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
  resizeTaskDescriptor = [resizeTaskDescriptorViewModel resizeTaskDescriptor];

  v15 = [PUPickerCoordinator _extraArgumentsForResizeTaskDescriptor:resizeTaskDescriptor];
  photoPicker2 = [(PUPickerCoordinator *)self photoPicker];
  properties = [photoPicker2 properties];
  v18 = PLPhotoPickerDictionariesFromMultipleMediaItems();

  photoPicker3 = [(PUPickerCoordinator *)self photoPicker];
  [photoPicker3 didSelectMultipleMediaItemsWithInfoDictionaries:v18];
}

- (void)_completeSingleSelection:(id)selection showConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  v46 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  if (!selectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1110 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  photoPicker = [(PUPickerCoordinator *)self photoPicker];

  if (!photoPicker)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1111 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1112 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1113 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1114 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1115 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  photoPicker2 = [(PUPickerCoordinator *)self photoPicker];
  pl_managedAsset = [selectionCopy pl_managedAsset];
  v16 = PLPickerGetLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (confirmationCopy)
  {
    if (v17)
    {
      *buf = 138412290;
      v45 = selectionCopy;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Moving to confirmation screen for asset %@.", buf, 0xCu);
    }

    configuration2 = [(PUPickerCoordinator *)self configuration];
    v19 = [PUPickerCoordinator _shouldTreatAssetAsLivePhoto:selectionCopy photoPicker:photoPicker2 configuration:configuration2];

    v20 = [PUUIImageViewController alloc];
    pl_managedAsset2 = [selectionCopy pl_managedAsset];
    properties = [photoPicker2 properties];
    resizeTaskDescriptor = [(PUUIImageViewController *)v20 initWithPhoto:pl_managedAsset2 imagePickerProperties:properties expectsLivePhoto:v19];

    [(PUUIImageViewController *)resizeTaskDescriptor setPhotoPicker:photoPicker2];
    [(PUUIImageViewController *)resizeTaskDescriptor setCancellationDelegate:self];
    [(PLUIImageViewController *)resizeTaskDescriptor setAllowsEditing:[PUPickerCoordinator _editingEnabled:photoPicker2]];
    configuration3 = [(PUPickerCoordinator *)self configuration];
    if ([configuration3 allowsDownscaling])
    {
      mediaType = [selectionCopy mediaType];

      if (mediaType == 1)
      {
        resizeTaskDescriptorViewModel = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
        [(PUUIImageViewController *)resizeTaskDescriptor setResizeTaskDescriptorViewModel:resizeTaskDescriptorViewModel];

        [(PUUIImageViewController *)resizeTaskDescriptor setFileResizingDelegate:self];
      }
    }

    else
    {
    }

    v32 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:resizeTaskDescriptor];
    if ((MEMORY[0x1B8C6D660]() & 1) == 0)
    {
      navigationBar = [v32 navigationBar];
      standardAppearance = [navigationBar standardAppearance];
      navigationBar2 = [v32 navigationBar];
      [navigationBar2 setScrollEdgeAppearance:standardAppearance];
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
      v45 = selectionCopy;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Calling back with full dictionary for asset %@.", buf, 0xCu);
    }

    resizeTaskDescriptorViewModel2 = [(PUPickerCoordinator *)self resizeTaskDescriptorViewModel];
    resizeTaskDescriptor = [resizeTaskDescriptorViewModel2 resizeTaskDescriptor];

    v28 = [PUPickerCoordinator _extraArgumentsForResizeTaskDescriptor:resizeTaskDescriptor];
    properties2 = [photoPicker2 properties];
    v30 = PLPhotoPickerDictionaryFromMedia();

    photoPicker3 = [(PUPickerCoordinator *)self photoPicker];
    [photoPicker3 didSelectMediaWithInfoDictionary:v30 allowedHandler:0];
  }
}

- (void)pu_legacy_selectMultipleAssets:(id)assets
{
  v70 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if (!assetsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1033 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  val = self;
  photoPicker = [(PUPickerCoordinator *)self photoPicker];

  if (!photoPicker)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1034 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  photoPicker2 = [(PUPickerCoordinator *)self photoPicker];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1035 description:{@"Invalid parameter not satisfying: %@", @"[self.photoPicker isKindOfClass:[UIViewController class]]"}];
  }

  selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];

  if (!selectedObjectIDs)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1036 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs > 0"}];
  }

  _createFetchResultUsingSelectedObjectIDs = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  fetchedObjects = [_createFetchResultUsingSelectedObjectIDs fetchedObjects];

  v11 = PLPickerGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [fetchedObjects count];
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Starting legacy multiple selection for %lu assets", &buf, 0xCu);
  }

  photoPicker3 = [(PUPickerCoordinator *)self photoPicker];
  configuration = [(PUPickerCoordinator *)self configuration];
  onlyReturnsIdentifiers = [configuration onlyReturnsIdentifiers];

  if (onlyReturnsIdentifiers)
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

    [photoPicker3 didSelectMultipleMediaItemsWithInfoDictionaries:v14];
    assetsCopy[2]();

    goto LABEL_35;
  }

  configuration2 = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration2 allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1053 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];
  v20 = downloadHelper == 0;

  if (v20)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1054 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)val downloadProgresses];
  v22 = downloadProgresses == 0;

  if (v22)
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1055 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)val progressController];
  v24 = progressController == 0;

  if (v24)
  {
    currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler8 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1056 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  downloadHelper2 = [(PUPickerCoordinator *)val downloadHelper];
  v26 = [downloadHelper2 isAnyPickerAssetDownloading:fetchedObjects];

  if (!v26)
  {
    [(PUPickerCoordinator *)val _completeMultipleSelection:fetchedObjects];
    assetsCopy[2]();
    goto LABEL_35;
  }

  v47 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(fetchedObjects, "count")}];
  photoPicker4 = [(PUPickerCoordinator *)val photoPicker];
  if (!photoPicker4)
  {
    currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    [currentHandler9 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1061 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photoPicker", v44}];
LABEL_38:

    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = objc_opt_class();
    v44 = NSStringFromClass(v45);
    px_descriptionForAssertionMessage = [photoPicker4 px_descriptionForAssertionMessage];
    [currentHandler9 handleFailureInMethod:a2 object:val file:@"PUPickerCoordinator.m" lineNumber:1061 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photoPicker", v44, px_descriptionForAssertionMessage}];

    goto LABEL_38;
  }

LABEL_26:
  [(PUPickerCoordinator *)val presentProgressControllerFromViewController:photoPicker4 progress:v47];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v68 = 0x2020000000;
  v69 = 1;
  v28 = dispatch_group_create();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = fetchedObjects;
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
        downloadHelper3 = [(PUPickerCoordinator *)val downloadHelper];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __72__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectMultipleAssets___block_invoke_619;
        v59[3] = &unk_1E7B77C00;
        p_buf = &buf;
        v60 = v28;
        [downloadHelper3 handleDownloadOfAssetIfNeeded:v32 inCollection:0 withSuccessHandler:v59];
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
  v55 = assetsCopy;
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
  photoPicker = [(PUPickerCoordinator *)self photoPicker];

  if (!photoPicker)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1017 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1018 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1019 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1020 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1021 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];

  if (!selectedObjectIDs)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1022 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs > 0"}];
  }

  _createFetchResultUsingSelectedObjectIDs = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  firstObject = [_createFetchResultUsingSelectedObjectIDs firstObject];

  v14 = PLPickerGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = firstObject;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Starting legacy single selection with file resizing for asset %@", buf, 0xCu);
  }

  [(PUPickerCoordinator *)self _completeSingleSelection:firstObject showConfirmation:0];
}

- (void)pu_legacy_selectSingleAsset
{
  v51 = *MEMORY[0x1E69E9840];
  photoPicker = [(PUPickerCoordinator *)self photoPicker];

  if (!photoPicker)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:966 description:{@"Invalid parameter not satisfying: %@", @"self.photoPicker"}];
  }

  photoPicker2 = [(PUPickerCoordinator *)self photoPicker];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:967 description:{@"Invalid parameter not satisfying: %@", @"[self.photoPicker isKindOfClass:[UIViewController class]]"}];
  }

  configuration = [(PUPickerCoordinator *)self configuration];
  allowsDownload = [configuration allowsDownload];

  if ((allowsDownload & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:968 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.allowsDownload"}];
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];

  if (!downloadHelper)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:969 description:{@"Invalid parameter not satisfying: %@", @"self.downloadHelper"}];
  }

  downloadProgresses = [(PUPickerCoordinator *)self downloadProgresses];

  if (!downloadProgresses)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:970 description:{@"Invalid parameter not satisfying: %@", @"self.downloadProgresses"}];
  }

  progressController = [(PUPickerCoordinator *)self progressController];

  if (!progressController)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:971 description:{@"Invalid parameter not satisfying: %@", @"self.progressController"}];
  }

  selectionCoordinator = [(PUPickerCoordinator *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];

  if (!selectedObjectIDs)
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:972 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs > 0"}];
  }

  _createFetchResultUsingSelectedObjectIDs = [(PUPickerCoordinator *)self _createFetchResultUsingSelectedObjectIDs];
  firstObject = [_createFetchResultUsingSelectedObjectIDs firstObject];

  v15 = PLPickerGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = firstObject;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "Starting legacy single selection for asset %@", buf, 0xCu);
  }

  photoPicker3 = [(PUPickerCoordinator *)self photoPicker];
  configuration2 = [(PUPickerCoordinator *)self configuration];
  downloadHelper2 = [(PUPickerCoordinator *)self downloadHelper];
  v18 = [PUPickerCoordinator _editingEnabled:photoPicker3];
  v19 = [PUPickerCoordinator _viewImageBeforeSelectingEnabled:photoPicker3];
  v20 = [PUPickerCoordinator _skipSelectionConfirmation:photoPicker3];
  configuration3 = [(PUPickerCoordinator *)self configuration];
  allowsDownscaling = [configuration3 allowsDownscaling];

  LOBYTE(configuration3) = [PUPickerCoordinator _assetCanPlay:firstObject];
  v23 = v19 | configuration3 | [PUPickerCoordinator _shouldTreatAssetAsLivePhoto:firstObject photoPicker:photoPicker3 configuration:configuration2];
  if (((allowsDownscaling | v20) | v18))
  {
    v24 = allowsDownscaling | ~(allowsDownscaling | v20);
  }

  else
  {
    v24 = v23;
  }

  [downloadHelper2 cancelAllDownloads];
  v48 = firstObject;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v26 = [downloadHelper2 isAnyPickerAssetDownloading:v25];

  v27 = v24 & 1;
  if (!v26)
  {
    [(PUPickerCoordinator *)self _completeSingleSelection:firstObject showConfirmation:v24 & 1];
    goto LABEL_25;
  }

  v28 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  photoPicker4 = [(PUPickerCoordinator *)self photoPicker];
  if (!photoPicker4)
  {
    currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [currentHandler8 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1001 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.photoPicker", v39}];
LABEL_28:

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = objc_opt_class();
    v39 = NSStringFromClass(v40);
    px_descriptionForAssertionMessage = [photoPicker4 px_descriptionForAssertionMessage];
    [currentHandler8 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1001 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.photoPicker", v39, px_descriptionForAssertionMessage}];

    goto LABEL_28;
  }

LABEL_23:
  [(PUPickerCoordinator *)self presentProgressControllerFromViewController:photoPicker4 progress:v28];

  objc_initWeak(buf, self);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __68__PUPickerCoordinator_LegacyAPISupport__pu_legacy_selectSingleAsset__block_invoke;
  v44[3] = &unk_1E7B77BB8;
  objc_copyWeak(&v46, buf);
  v45 = firstObject;
  v47 = v27;
  [downloadHelper2 handleDownloadOfAssetIfNeeded:v45 inCollection:0 withSuccessHandler:v44];

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
  photoPicker = [(PUPickerCoordinator *)self photoPicker];

  if (!photoPicker)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:956 description:@"PUPhotoPicker must not be nil."];
  }

  v5 = PLPickerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Starting legacy picker cancel", v9, 2u);
  }

  downloadHelper = [(PUPickerCoordinator *)self downloadHelper];
  [downloadHelper cancelAllDownloads];

  photoPicker2 = [(PUPickerCoordinator *)self photoPicker];
  [photoPicker2 cancelPhotoPicker];
}

- (void)pu_legacy_didDisplayPicker
{
  photoPicker = [(PUPickerCoordinator *)self photoPicker];

  if (!photoPicker)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:950 description:@"PUPhotoPicker must not be nil."];
  }

  photoPicker2 = [(PUPickerCoordinator *)self photoPicker];
  [photoPicker2 didDisplayPhotoPickerSourceType:0];
}

+ (id)_extraArgumentsForResizeTaskDescriptor:(id)descriptor
{
  v12[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v4 = descriptorCopy;
  if (!descriptorCopy || (([descriptorCopy targetSize], v5 == *MEMORY[0x1E6978E30]) ? (v7 = v6 == *(MEMORY[0x1E6978E30] + 8)) : (v7 = 0), v7))
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

+ (BOOL)_shouldTreatAssetAsLivePhoto:(id)photo photoPicker:(id)picker configuration:(id)configuration
{
  photoCopy = photo;
  pickerCopy = picker;
  configurationCopy = configuration;
  if (photoCopy)
  {
    if (pickerCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1223 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];

    if (configurationCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1222 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

  if (!pickerCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (configurationCopy)
  {
    goto LABEL_4;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1224 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

LABEL_4:
  generatedFilter = [configurationCopy generatedFilter];
  if (![generatedFilter pu_legacy_mediaTypesIncludesLivePhoto])
  {

    goto LABEL_8;
  }

  playbackStyle = [photoCopy playbackStyle];

  if (playbackStyle != 3)
  {
LABEL_8:
    LOBYTE(v14) = 0;
    goto LABEL_9;
  }

  v14 = [self _editingEnabled:pickerCopy] ^ 1;
LABEL_9:

  return v14;
}

+ (BOOL)_assetCanPlay:(id)play
{
  playCopy = play;
  if (!playCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1204 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  playbackStyle = [playCopy playbackStyle];
  v7 = playbackStyle < 6;
  v8 = 0x34u >> playbackStyle;

  return v7 & v8;
}

+ (BOOL)_editingEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (!enabledCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1196 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];
  }

  properties = [enabledCopy properties];
  v7 = [properties objectForKeyedSubscript:*MEMORY[0x1E69DDDD8]];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)_viewImageBeforeSelectingEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (!enabledCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1188 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];
  }

  properties = [enabledCopy properties];
  v7 = [properties objectForKeyedSubscript:*MEMORY[0x1E69DE9D0]];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)_skipSelectionConfirmation:(id)confirmation
{
  confirmationCopy = confirmation;
  if (!confirmationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1180 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];
  }

  properties = [confirmationCopy properties];
  v7 = [properties objectForKeyedSubscript:@"_UIImagePickerControllerSkipConfirmation"];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (BOOL)pu_legacy_shouldDownloadVideoComplement:(id)complement configuration:(id)configuration
{
  complementCopy = complement;
  configurationCopy = configuration;
  v9 = configurationCopy;
  if (complementCopy)
  {
    if (configurationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1094 description:{@"Invalid parameter not satisfying: %@", @"photoPicker"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerCoordinator.m" lineNumber:1095 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];

LABEL_3:
  generatedFilter = [v9 generatedFilter];
  if ([generatedFilter pu_legacy_mediaTypesIncludesLivePhoto])
  {
    v11 = [self _editingEnabled:complementCopy] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  properties = [complementCopy properties];
  v13 = [properties objectForKeyedSubscript:*MEMORY[0x1E69DE8C0]];
  bOOLValue = [v13 BOOLValue];

  return (v11 | bOOLValue) & 1;
}

@end