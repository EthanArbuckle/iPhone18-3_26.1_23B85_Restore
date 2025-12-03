@interface PUPhotoPickerRemoteViewController
+ (void)initialize;
- (BOOL)allowsMultipleSelection;
- (BOOL)convertAutoloopsToGIF;
- (BOOL)onboardingHeaderDismissedBefore;
- (BOOL)requiresPickingConfirmation;
- (BOOL)showsFileSizePicker;
- (BOOL)showsPrompt;
- (NSArray)mediaTypes;
- (NSDictionary)properties;
- (PUPhotoPickerExtensionContext)extensionContext;
- (unint64_t)multipleSelectionLimit;
- (unint64_t)savingOptions;
- (void)_allowSharingSelectionOfInfoDictionaries:(id)dictionaries completion:(id)completion;
- (void)_confirmConfidentialWarning:(id)warning showConfidentialityAlert:(BOOL)alert completionHandler:(id)handler;
- (void)_confirmUserSafetyIntervention:(id)intervention completionHandler:(id)handler;
- (void)_handlePerformTraitCollectionUpdateUsingData:(id)data completion:(id)completion;
- (void)_handleViewControllerRequestWithOptions:(id)options error:(id)error;
- (void)_loadContentViewIfNeeded;
- (void)_logAssetSelectionIfNeeded:(id)needed;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)cancelPhotoPicker;
- (void)didDisplayPhotoPickerPreview;
- (void)didDisplayPhotoPickerSourceType:(int64_t)type;
- (void)didSelectMediaWithInfoDictionary:(id)dictionary allowedHandler:(id)handler;
- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)dictionaries;
- (void)loadView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performPhotoPickerPreviewOfFirstAsset;
- (void)performPhotosSelection;
- (void)performTraitCollectionUpdateUsingData:(id)data completion:(id)completion;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentViewController:(id)controller;
- (void)setOptions:(id)options;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)viewWillLayoutSubviews;
@end

@implementation PUPhotoPickerRemoteViewController

- (PUPhotoPickerExtensionContext)extensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContext);

  return WeakRetained;
}

- (void)_confirmUserSafetyIntervention:(id)intervention completionHandler:(id)handler
{
  interventionCopy = intervention;
  handlerCopy = handler;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (interventionCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:447 description:{@"Invalid parameter not satisfying: %@", @"fetchResult != nil"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:446 description:{@"%s must be called on the main thread", "-[PUPhotoPickerRemoteViewController _confirmUserSafetyIntervention:completionHandler:]"}];

  if (!interventionCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_10:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];

LABEL_4:
  assetPickerCoordinator = [(PUPhotoPickerRemoteViewController *)self assetPickerCoordinator];
  configuration = [assetPickerCoordinator configuration];
  shouldShowCommunicationSafetyIntervention = [configuration shouldShowCommunicationSafetyIntervention];

  if (shouldShowCommunicationSafetyIntervention)
  {
    [(PUPhotoPickerRemoteViewController *)self setSensitivityInterventionManager:0];
    assetPickerCoordinator2 = [(PUPhotoPickerRemoteViewController *)self assetPickerCoordinator];
    [assetPickerCoordinator2 startActivityIndicatorsForAssetsWithFetchResult:interventionCopy];

    v13 = MEMORY[0x1E69C3A20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__PUPhotoPickerRemoteViewController__confirmUserSafetyIntervention_completionHandler___block_invoke;
    v17[3] = &unk_1E7B7C1F0;
    v17[4] = self;
    v18 = interventionCopy;
    v19 = handlerCopy;
    [v13 userSafetyInterventionCheckRequiredBeforeSharingAssets:v18 completion:v17];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

void __86__PUPhotoPickerRemoteViewController__confirmUserSafetyIntervention_completionHandler___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1[4] assetPickerCoordinator];
  v7 = [a1[5] fetchedObjects];
  v8 = PXMap();
  [v6 stopActivityIndicatorsForAssetsWithIdentifiers:v8];

  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86__PUPhotoPickerRemoteViewController__confirmUserSafetyIntervention_completionHandler___block_invoke_3;
    v10[3] = &unk_1E7B7FA80;
    v11 = a1[6];
    [PUPickerUtilities presentUserSafetyViewControllerForNonPreviewableAnalysisResults:a2 completionHandler:a3, v10];
  }

  else
  {
    v9 = *(a1[6] + 2);

    v9();
  }
}

- (void)_confirmConfidentialWarning:(id)warning showConfidentialityAlert:(BOOL)alert completionHandler:(id)handler
{
  alertCopy = alert;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (alertCopy)
  {
    v9 = MEMORY[0x1E69C3A10];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __108__PUPhotoPickerRemoteViewController__confirmConfidentialWarning_showConfidentialityAlert_completionHandler___block_invoke;
    v16[3] = &unk_1E7B80980;
    v17 = handlerCopy;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __108__PUPhotoPickerRemoteViewController__confirmConfidentialWarning_showConfidentialityAlert_completionHandler___block_invoke_2;
    v14 = &unk_1E7B80980;
    v15 = v17;
    v10 = [v9 confidentialityAlertWithConfirmAction:v16 abortAction:&v11];
    [(PUPhotoPickerRemoteViewController *)self px_presentOverTopmostPresentedViewController:v10 animated:1 completion:0, v11, v12, v13, v14];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

- (void)_allowSharingSelectionOfInfoDictionaries:(id)dictionaries completion:(id)completion
{
  val = self;
  v44 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  completionCopy = completion;
  if (([MEMORY[0x1E69C3A10] confidentialityCheckRequired] & 1) == 0)
  {
    assetPickerCoordinator = [(PUPhotoPickerRemoteViewController *)val assetPickerCoordinator];
    configuration = [assetPickerCoordinator configuration];
    shouldShowCommunicationSafetyIntervention = [configuration shouldShowCommunicationSafetyIntervention];

    if (!shouldShowCommunicationSafetyIntervention)
    {
      goto LABEL_26;
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = dictionariesCopy;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = *v39;
    v14 = *MEMORY[0x1E69DE968];
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v38 + 1) + 8 * v15) objectForKeyedSubscript:{v14, val}];
        if (v16)
        {
          [v10 addObject:v16];
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v12);
  }

  if (![v10 count])
  {

LABEL_26:
    completionCopy[2](completionCopy, 1);
    goto LABEL_27;
  }

  v17 = MEMORY[0x1E6978630];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
  v20 = [v17 fetchAssetsWithLocalIdentifiers:v10 options:librarySpecificFetchOptions];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v22)
  {
    v23 = *v35;
    while (2)
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v21);
        }

        if ([MEMORY[0x1E69C3A10] confidentialWarningRequiredForAsset:{*(*(&v34 + 1) + 8 * v24), val}])
        {
          v25 = 1;
          goto LABEL_23;
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_23:

  if (!v21)
  {
    goto LABEL_26;
  }

  objc_initWeak(&location, val);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __89__PUPhotoPickerRemoteViewController__allowSharingSelectionOfInfoDictionaries_completion___block_invoke;
  v28[3] = &unk_1E7B7C1C8;
  objc_copyWeak(&v31, &location);
  v26 = v21;
  v29 = v26;
  v32 = v25;
  v30 = completionCopy;
  [(PUPhotoPickerRemoteViewController *)val _confirmUserSafetyIntervention:v26 completionHandler:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

LABEL_27:
}

void __89__PUPhotoPickerRemoteViewController__allowSharingSelectionOfInfoDictionaries_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__PUPhotoPickerRemoteViewController__allowSharingSelectionOfInfoDictionaries_completion___block_invoke_2;
    v7[3] = &unk_1E7B7FA80;
    v5 = *(a1 + 32);
    v8 = *(a1 + 40);
    [WeakRetained _confirmConfidentialWarning:v5 showConfidentialityAlert:v4 completionHandler:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)_logAssetSelectionIfNeeded:(id)needed
{
  v25 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = neededCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = *MEMORY[0x1E69DE968];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:v10];
        if (v12)
        {
          v13 = [MEMORY[0x1E6978958] uuidFromLocalIdentifier:v12];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (MEMORY[0x1B8C6E6A0]())
  {
    v14 = MEMORY[0x1E6978630];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v16 = [v14 countOfAssetsWithLocationFromUUIDs:v5 photoLibrary:px_deprecated_appPhotoLibrary];

    if (v16)
    {
      extensionContext = [(PUPhotoPickerRemoteViewController *)self extensionContext];
      _auxiliaryConnection = [extensionContext _auxiliaryConnection];
      v19 = PLClientApplicationIdentifierFromXPCConnection();

      plslogGreenTea();
    }
  }
}

- (void)performPhotoPickerPreviewOfFirstAsset
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:363 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUPickerConfigurationObservationContext_61627 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:355 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 8) != 0)
  {
    v14 = observableCopy;
    extensionContext = [(PUPhotoPickerRemoteViewController *)self extensionContext];
    assetPickerCoordinator = [(PUPhotoPickerRemoteViewController *)self assetPickerCoordinator];
    configuration = [assetPickerCoordinator configuration];
    [extensionContext didSetOnboardingHeaderDismissed:{objc_msgSend(configuration, "didDismissOnboardingHeaderView")}];

    observableCopy = v14;
  }
}

- (void)_handlePerformTraitCollectionUpdateUsingData:(id)data completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v8 = MEMORY[0x1E696AF00];
  dataCopy = data;
  if (([v8 isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:329 description:@"[PUPhotoPickerRemoteViewController _handlePerformTraitCollectionUpdateUsingData] must be called on the main thread."];
  }

  v16 = 0;
  v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v16];

  v11 = v16;
  if (v11)
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[PUPhotoPickerRemoteViewController _handlePerformTraitCollectionUpdateUsingData:completion:]";
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "%s Unable to create trait collection %@", buf, 0x16u);
    }
  }

  parentViewController = [(PUPhotoPickerRemoteViewController *)self parentViewController];
  [parentViewController setOverrideTraitCollection:v10 forChildViewController:self];

  [(PUPhotoPickerRemoteViewController *)self _loadContentViewIfNeeded];
  if (completionCopy)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v10 != 0];
    completionCopy[2](completionCopy, v14);
  }
}

- (void)performTraitCollectionUpdateUsingData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(PUPhotoPickerRemoteViewController *)self _handlePerformTraitCollectionUpdateUsingData:dataCopy completion:completionCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__PUPhotoPickerRemoteViewController_performTraitCollectionUpdateUsingData_completion___block_invoke;
    v8[3] = &unk_1E7B7C1A0;
    objc_copyWeak(&v11, &location);
    v9 = dataCopy;
    v10 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __86__PUPhotoPickerRemoteViewController_performTraitCollectionUpdateUsingData_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handlePerformTraitCollectionUpdateUsingData:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)performPhotosSelection
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:314 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PUPhotoPickerRemoteViewController_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke;
  v6[3] = &unk_1E7B80088;
  v6[4] = self;
  v7 = dictionariesCopy;
  v5 = dictionariesCopy;
  [(PUPhotoPickerRemoteViewController *)self _allowSharingSelectionOfInfoDictionaries:v5 completion:v6];
}

void __85__PUPhotoPickerRemoteViewController_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _logAssetSelectionIfNeeded:*(a1 + 40)];
    v3 = [*(a1 + 32) extensionContext];
    [v3 didSelectMultipleMediaItemsWithInfoDictionaries:*(a1 + 40)];

    v4 = [*(a1 + 32) assetPickerCoordinator];
    [v4 emitDidFinishPickingAnalytics];
  }
}

- (void)didSelectMediaWithInfoDictionary:(id)dictionary allowedHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  v14[0] = dictionaryCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PUPhotoPickerRemoteViewController_didSelectMediaWithInfoDictionary_allowedHandler___block_invoke;
  v11[3] = &unk_1E7B7D308;
  v12 = dictionaryCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = dictionaryCopy;
  v10 = handlerCopy;
  [(PUPhotoPickerRemoteViewController *)self _allowSharingSelectionOfInfoDictionaries:v8 completion:v11];
}

void __85__PUPhotoPickerRemoteViewController_didSelectMediaWithInfoDictionary_allowedHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  if (v2)
  {
    v5 = *(a1 + 32);
    v9[0] = *(a1 + 40);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v5 _logAssetSelectionIfNeeded:v6];

    v7 = [*(a1 + 32) extensionContext];
    [v7 didSelectMediaWithInfoDictionary:*(a1 + 40)];

    v8 = [*(a1 + 32) assetPickerCoordinator];
    [v8 emitDidFinishPickingAnalytics];
  }
}

- (void)didDisplayPhotoPickerPreview
{
  extensionContext = [(PUPhotoPickerRemoteViewController *)self extensionContext];
  [extensionContext didDisplayPhotoPickerPreview];
}

- (void)didDisplayPhotoPickerSourceType:(int64_t)type
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  extensionContext = [(PUPhotoPickerRemoteViewController *)self extensionContext];
  [extensionContext didDisplayPhotoPickerSourceType:v5];
}

- (void)cancelPhotoPicker
{
  extensionContext = [(PUPhotoPickerRemoteViewController *)self extensionContext];
  [extensionContext cancelPhotoPicker];

  assetPickerCoordinator = [(PUPhotoPickerRemoteViewController *)self assetPickerCoordinator];
  [assetPickerCoordinator emitDidFinishPickingAnalytics];
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  px_topmostPresentedViewController = [(PUPhotoPickerRemoteViewController *)self px_topmostPresentedViewController];
  [px_topmostPresentedViewController presentViewController:controllerCopy animated:1 completion:0];
}

- (NSDictionary)properties
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  photoPickerProperties = [options photoPickerProperties];

  return photoPickerProperties;
}

- (BOOL)convertAutoloopsToGIF
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  convertAutoloopsToGIF = [options convertAutoloopsToGIF];

  return convertAutoloopsToGIF;
}

- (BOOL)showsPrompt
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  showsPrompt = [options showsPrompt];

  return showsPrompt;
}

- (BOOL)showsFileSizePicker
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  showsFileSizePicker = [options showsFileSizePicker];

  return showsFileSizePicker;
}

- (BOOL)requiresPickingConfirmation
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  requiresPickingConfirmation = [options requiresPickingConfirmation];

  return requiresPickingConfirmation;
}

- (unint64_t)multipleSelectionLimit
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  multipleSelectionLimit = [options multipleSelectionLimit];

  return multipleSelectionLimit;
}

- (BOOL)allowsMultipleSelection
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  allowsMultipleSelection = [options allowsMultipleSelection];

  return allowsMultipleSelection;
}

- (BOOL)onboardingHeaderDismissedBefore
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  onboardingHeaderDismissedBefore = [options onboardingHeaderDismissedBefore];

  return onboardingHeaderDismissedBefore;
}

- (NSArray)mediaTypes
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  mediaTypes = [options mediaTypes];

  return mediaTypes;
}

- (unint64_t)savingOptions
{
  options = [(PUPhotoPickerRemoteViewController *)self options];
  savingOptions = [options savingOptions];

  return savingOptions;
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  [(PUPhotoPickerRemoteViewController *)self setExtensionContext:contextCopy];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PUPhotoPickerRemoteViewController_beginRequestWithExtensionContext___block_invoke;
  v5[3] = &unk_1E7B7C178;
  objc_copyWeak(&v6, &location);
  [contextCopy requestedViewControllerOptionsWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __70__PUPhotoPickerRemoteViewController_beginRequestWithExtensionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleViewControllerRequestWithOptions:v6 error:v5];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = PUPhotoPickerRemoteViewController;
  containerCopy = container;
  [(PUPhotoPickerRemoteViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(PUPhotoPickerRemoteViewController *)self setPreferredContentSize:v6, v8];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = PUPhotoPickerRemoteViewController;
  changeCopy = change;
  [(PUPhotoPickerRemoteViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(PUPhotoPickerRemoteViewController *)self traitCollection:v9.receiver];
  _presentationSemanticContext = [v5 _presentationSemanticContext];
  _presentationSemanticContext2 = [changeCopy _presentationSemanticContext];

  if (_presentationSemanticContext != _presentationSemanticContext2)
  {
    view = [(PUPhotoPickerRemoteViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)updateViewConstraints
{
  traitCollection = [(PUPhotoPickerRemoteViewController *)self traitCollection];
  _presentationSemanticContext = [traitCollection _presentationSemanticContext];
  v5 = _presentationSemanticContext == 3;
  v6 = _presentationSemanticContext != 3;

  topConstraint = [(PUPhotoPickerRemoteViewController *)self topConstraint];
  [topConstraint setActive:1];

  bottomConstraint = [(PUPhotoPickerRemoteViewController *)self bottomConstraint];
  [bottomConstraint setActive:1];

  leadingConstraint = [(PUPhotoPickerRemoteViewController *)self leadingConstraint];
  [leadingConstraint setActive:v6];

  trailingConstraint = [(PUPhotoPickerRemoteViewController *)self trailingConstraint];
  [trailingConstraint setActive:v6];

  leadingSafeAreaConstraint = [(PUPhotoPickerRemoteViewController *)self leadingSafeAreaConstraint];
  [leadingSafeAreaConstraint setActive:v5];

  trailingSafeAreaConstraint = [(PUPhotoPickerRemoteViewController *)self trailingSafeAreaConstraint];
  [trailingSafeAreaConstraint setActive:v5];

  v13.receiver = self;
  v13.super_class = PUPhotoPickerRemoteViewController;
  [(PUPhotoPickerRemoteViewController *)&v13 updateViewConstraints];
}

- (void)_loadContentViewIfNeeded
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:148 description:@"[PUPhotoPickerRemoteViewController _loadContentViewIfNeeded] must be called on the main thread."];
  }

  obj = self;
  objc_sync_enter(obj);
  options = [(PUPhotoPickerRemoteViewController *)obj options];
  if (options)
  {
    assetPickerCoordinator = [(PUPhotoPickerRemoteViewController *)obj assetPickerCoordinator];
    if (!assetPickerCoordinator)
    {
      if (![(PUPhotoPickerRemoteViewController *)obj isViewLoaded])
      {
        goto LABEL_10;
      }

      assetPickerCoordinator2 = [(PUPhotoPickerRemoteViewController *)obj assetPickerCoordinator];

      if (!assetPickerCoordinator2)
      {
        v7 = [PUPickerCoordinator alloc];
        mediaTypes = [(PUPhotoPickerRemoteViewController *)obj mediaTypes];
        extensionContext = [(PUPhotoPickerRemoteViewController *)obj extensionContext];
        _auxiliaryConnection = [extensionContext _auxiliaryConnection];
        v11 = [(PUPickerCoordinator *)v7 initWithPhotoPicker:obj mediaTypes:mediaTypes connection:_auxiliaryConnection];

        configuration = [(PUPickerCoordinator *)v11 configuration];
        [configuration registerChangeObserver:obj context:PUPickerConfigurationObservationContext_61627];

        [(PUPhotoPickerRemoteViewController *)obj setAssetPickerCoordinator:v11];
      }

      assetPickerCoordinator3 = [(PUPhotoPickerRemoteViewController *)obj assetPickerCoordinator];
      assetPickerCoordinator = [assetPickerCoordinator3 viewController];

      [assetPickerCoordinator preferredContentSize];
      [(PUPhotoPickerRemoteViewController *)obj setPreferredContentSize:?];
      [(PUPhotoPickerRemoteViewController *)obj addChildViewController:assetPickerCoordinator];
      view = [(PUPhotoPickerRemoteViewController *)obj view];
      view2 = [assetPickerCoordinator view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view addSubview:view2];
      topAnchor = [view topAnchor];
      topAnchor2 = [view2 topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [(PUPhotoPickerRemoteViewController *)obj setTopConstraint:v18];

      bottomAnchor = [view bottomAnchor];
      bottomAnchor2 = [view2 bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [(PUPhotoPickerRemoteViewController *)obj setBottomConstraint:v21];

      leadingAnchor = [view leadingAnchor];
      leadingAnchor2 = [view2 leadingAnchor];
      v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(PUPhotoPickerRemoteViewController *)obj setLeadingConstraint:v24];

      trailingAnchor = [view trailingAnchor];
      trailingAnchor2 = [view2 trailingAnchor];
      v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [(PUPhotoPickerRemoteViewController *)obj setTrailingConstraint:v27];

      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      leadingAnchor3 = [safeAreaLayoutGuide leadingAnchor];
      leadingAnchor4 = [view2 leadingAnchor];
      v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [(PUPhotoPickerRemoteViewController *)obj setLeadingSafeAreaConstraint:v31];

      safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
      trailingAnchor3 = [safeAreaLayoutGuide2 trailingAnchor];
      trailingAnchor4 = [view2 trailingAnchor];
      v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [(PUPhotoPickerRemoteViewController *)obj setTrailingSafeAreaConstraint:v35];

      [view setNeedsUpdateConstraints];
      [assetPickerCoordinator didMoveToParentViewController:obj];
      window = [view window];
      [window setCanResizeToFitContent:1];

      [view layoutIfNeeded];
    }
  }

LABEL_10:

  objc_sync_exit(obj);
}

- (void)setOptions:(id)options
{
  objc_storeStrong(&self->_options, options);
  extensionContext = [(PUPhotoPickerRemoteViewController *)self extensionContext];
  [extensionContext photoPickerIsReadyForDisplay];
}

- (void)_handleViewControllerRequestWithOptions:(id)options error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = errorCopy;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "PhotoPicker error: %@", &v8, 0xCu);
    }
  }

  else
  {
    [(PUPhotoPickerRemoteViewController *)self setOptions:options];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPhotoPickerRemoteViewController;
  [(PUPhotoPickerRemoteViewController *)&v3 viewWillLayoutSubviews];
  [(PUPhotoPickerRemoteViewController *)self _loadContentViewIfNeeded];
}

- (void)loadView
{
  if (MEMORY[0x1B8C6E6A0](self, a2))
  {
    extensionContext = [(PUPhotoPickerRemoteViewController *)self extensionContext];
    _auxiliaryConnection = [extensionContext _auxiliaryConnection];
    v5 = PLClientApplicationIdentifierFromXPCConnection();

    MEMORY[0x1B8C6E6B0](v5);
  }

  v6 = [PUPhotoPickerRemoteContainerView alloc];
  v7 = [(PUPhotoPickerRemoteContainerView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PUPhotoPickerRemoteContainerView *)v7 setAutoresizingMask:18];
  [(PUPhotoPickerRemoteViewController *)self setView:v7];
}

+ (void)initialize
{
  if (PFIsPhotosPicker() && initialize_onceToken_61652 != -1)
  {

    dispatch_once(&initialize_onceToken_61652, &__block_literal_global_61653);
  }
}

uint64_t __47__PUPhotoPickerRemoteViewController_initialize__block_invoke()
{
  [MEMORY[0x1E69C39C8] setSuiteName:@"com.apple.mobileslideshow"];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 removeObjectForKey:@"UIBarsApplyChromelessEverywhere"];

  return MEMORY[0x1EEE2D218]();
}

@end