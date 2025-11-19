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
- (void)_allowSharingSelectionOfInfoDictionaries:(id)a3 completion:(id)a4;
- (void)_confirmConfidentialWarning:(id)a3 showConfidentialityAlert:(BOOL)a4 completionHandler:(id)a5;
- (void)_confirmUserSafetyIntervention:(id)a3 completionHandler:(id)a4;
- (void)_handlePerformTraitCollectionUpdateUsingData:(id)a3 completion:(id)a4;
- (void)_handleViewControllerRequestWithOptions:(id)a3 error:(id)a4;
- (void)_loadContentViewIfNeeded;
- (void)_logAssetSelectionIfNeeded:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)cancelPhotoPicker;
- (void)didDisplayPhotoPickerPreview;
- (void)didDisplayPhotoPickerSourceType:(int64_t)a3;
- (void)didSelectMediaWithInfoDictionary:(id)a3 allowedHandler:(id)a4;
- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)a3;
- (void)loadView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performPhotoPickerPreviewOfFirstAsset;
- (void)performPhotosSelection;
- (void)performTraitCollectionUpdateUsingData:(id)a3 completion:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentViewController:(id)a3;
- (void)setOptions:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewConstraints;
- (void)viewWillLayoutSubviews;
@end

@implementation PUPhotoPickerRemoteViewController

- (PUPhotoPickerExtensionContext)extensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContext);

  return WeakRetained;
}

- (void)_confirmUserSafetyIntervention:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:447 description:{@"Invalid parameter not satisfying: %@", @"fetchResult != nil"}];

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:446 description:{@"%s must be called on the main thread", "-[PUPhotoPickerRemoteViewController _confirmUserSafetyIntervention:completionHandler:]"}];

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_10:
  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];

LABEL_4:
  v9 = [(PUPhotoPickerRemoteViewController *)self assetPickerCoordinator];
  v10 = [v9 configuration];
  v11 = [v10 shouldShowCommunicationSafetyIntervention];

  if (v11)
  {
    [(PUPhotoPickerRemoteViewController *)self setSensitivityInterventionManager:0];
    v12 = [(PUPhotoPickerRemoteViewController *)self assetPickerCoordinator];
    [v12 startActivityIndicatorsForAssetsWithFetchResult:v7];

    v13 = MEMORY[0x1E69C3A20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__PUPhotoPickerRemoteViewController__confirmUserSafetyIntervention_completionHandler___block_invoke;
    v17[3] = &unk_1E7B7C1F0;
    v17[4] = self;
    v18 = v7;
    v19 = v8;
    [v13 userSafetyInterventionCheckRequiredBeforeSharingAssets:v18 completion:v17];
  }

  else
  {
    (*(v8 + 2))(v8, 1);
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

- (void)_confirmConfidentialWarning:(id)a3 showConfidentialityAlert:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = v7;
  if (v5)
  {
    v9 = MEMORY[0x1E69C3A10];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __108__PUPhotoPickerRemoteViewController__confirmConfidentialWarning_showConfidentialityAlert_completionHandler___block_invoke;
    v16[3] = &unk_1E7B80980;
    v17 = v7;
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
    (*(v7 + 2))(v7, 1);
  }
}

- (void)_allowSharingSelectionOfInfoDictionaries:(id)a3 completion:(id)a4
{
  val = self;
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (([MEMORY[0x1E69C3A10] confidentialityCheckRequired] & 1) == 0)
  {
    v7 = [(PUPhotoPickerRemoteViewController *)val assetPickerCoordinator];
    v8 = [v7 configuration];
    v9 = [v8 shouldShowCommunicationSafetyIntervention];

    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v5;
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
    v6[2](v6, 1);
    goto LABEL_27;
  }

  v17 = MEMORY[0x1E6978630];
  v18 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v19 = [v18 librarySpecificFetchOptions];
  v20 = [v17 fetchAssetsWithLocalIdentifiers:v10 options:v19];

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
  v30 = v6;
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

- (void)_logAssetSelectionIfNeeded:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
    v15 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v16 = [v14 countOfAssetsWithLocationFromUUIDs:v5 photoLibrary:v15];

    if (v16)
    {
      v17 = [(PUPhotoPickerRemoteViewController *)self extensionContext];
      v18 = [v17 _auxiliaryConnection];
      v19 = PLClientApplicationIdentifierFromXPCConnection();

      plslogGreenTea();
    }
  }
}

- (void)performPhotoPickerPreviewOfFirstAsset
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:363 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PUPickerConfigurationObservationContext_61627 != a5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:355 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 8) != 0)
  {
    v14 = v9;
    v10 = [(PUPhotoPickerRemoteViewController *)self extensionContext];
    v11 = [(PUPhotoPickerRemoteViewController *)self assetPickerCoordinator];
    v12 = [v11 configuration];
    [v10 didSetOnboardingHeaderDismissed:{objc_msgSend(v12, "didDismissOnboardingHeaderView")}];

    v9 = v14;
  }
}

- (void)_handlePerformTraitCollectionUpdateUsingData:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MEMORY[0x1E696AF00];
  v9 = a3;
  if (([v8 isMainThread] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:329 description:@"[PUPhotoPickerRemoteViewController _handlePerformTraitCollectionUpdateUsingData] must be called on the main thread."];
  }

  v16 = 0;
  v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v16];

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

  v13 = [(PUPhotoPickerRemoteViewController *)self parentViewController];
  [v13 setOverrideTraitCollection:v10 forChildViewController:self];

  [(PUPhotoPickerRemoteViewController *)self _loadContentViewIfNeeded];
  if (v7)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v10 != 0];
    v7[2](v7, v14);
  }
}

- (void)performTraitCollectionUpdateUsingData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(PUPhotoPickerRemoteViewController *)self _handlePerformTraitCollectionUpdateUsingData:v6 completion:v7];
  }

  else
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__PUPhotoPickerRemoteViewController_performTraitCollectionUpdateUsingData_completion___block_invoke;
    v8[3] = &unk_1E7B7C1A0;
    objc_copyWeak(&v11, &location);
    v9 = v6;
    v10 = v7;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:314 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)didSelectMultipleMediaItemsWithInfoDictionaries:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PUPhotoPickerRemoteViewController_didSelectMultipleMediaItemsWithInfoDictionaries___block_invoke;
  v6[3] = &unk_1E7B80088;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)didSelectMediaWithInfoDictionary:(id)a3 allowedHandler:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PUPhotoPickerRemoteViewController_didSelectMediaWithInfoDictionary_allowedHandler___block_invoke;
  v11[3] = &unk_1E7B7D308;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
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
  v2 = [(PUPhotoPickerRemoteViewController *)self extensionContext];
  [v2 didDisplayPhotoPickerPreview];
}

- (void)didDisplayPhotoPickerSourceType:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = [(PUPhotoPickerRemoteViewController *)self extensionContext];
  [v4 didDisplayPhotoPickerSourceType:v5];
}

- (void)cancelPhotoPicker
{
  v3 = [(PUPhotoPickerRemoteViewController *)self extensionContext];
  [v3 cancelPhotoPicker];

  v4 = [(PUPhotoPickerRemoteViewController *)self assetPickerCoordinator];
  [v4 emitDidFinishPickingAnalytics];
}

- (void)presentViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoPickerRemoteViewController *)self px_topmostPresentedViewController];
  [v5 presentViewController:v4 animated:1 completion:0];
}

- (NSDictionary)properties
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 photoPickerProperties];

  return v3;
}

- (BOOL)convertAutoloopsToGIF
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 convertAutoloopsToGIF];

  return v3;
}

- (BOOL)showsPrompt
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 showsPrompt];

  return v3;
}

- (BOOL)showsFileSizePicker
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 showsFileSizePicker];

  return v3;
}

- (BOOL)requiresPickingConfirmation
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 requiresPickingConfirmation];

  return v3;
}

- (unint64_t)multipleSelectionLimit
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 multipleSelectionLimit];

  return v3;
}

- (BOOL)allowsMultipleSelection
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 allowsMultipleSelection];

  return v3;
}

- (BOOL)onboardingHeaderDismissedBefore
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 onboardingHeaderDismissedBefore];

  return v3;
}

- (NSArray)mediaTypes
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 mediaTypes];

  return v3;
}

- (unint64_t)savingOptions
{
  v2 = [(PUPhotoPickerRemoteViewController *)self options];
  v3 = [v2 savingOptions];

  return v3;
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  [(PUPhotoPickerRemoteViewController *)self setExtensionContext:v4];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PUPhotoPickerRemoteViewController_beginRequestWithExtensionContext___block_invoke;
  v5[3] = &unk_1E7B7C178;
  objc_copyWeak(&v6, &location);
  [v4 requestedViewControllerOptionsWithCompletionHandler:v5];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = PUPhotoPickerRemoteViewController;
  v4 = a3;
  [(PUPhotoPickerRemoteViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(PUPhotoPickerRemoteViewController *)self setPreferredContentSize:v6, v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = PUPhotoPickerRemoteViewController;
  v4 = a3;
  [(PUPhotoPickerRemoteViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(PUPhotoPickerRemoteViewController *)self traitCollection:v9.receiver];
  v6 = [v5 _presentationSemanticContext];
  v7 = [v4 _presentationSemanticContext];

  if (v6 != v7)
  {
    v8 = [(PUPhotoPickerRemoteViewController *)self view];
    [v8 setNeedsUpdateConstraints];
  }
}

- (void)updateViewConstraints
{
  v3 = [(PUPhotoPickerRemoteViewController *)self traitCollection];
  v4 = [v3 _presentationSemanticContext];
  v5 = v4 == 3;
  v6 = v4 != 3;

  v7 = [(PUPhotoPickerRemoteViewController *)self topConstraint];
  [v7 setActive:1];

  v8 = [(PUPhotoPickerRemoteViewController *)self bottomConstraint];
  [v8 setActive:1];

  v9 = [(PUPhotoPickerRemoteViewController *)self leadingConstraint];
  [v9 setActive:v6];

  v10 = [(PUPhotoPickerRemoteViewController *)self trailingConstraint];
  [v10 setActive:v6];

  v11 = [(PUPhotoPickerRemoteViewController *)self leadingSafeAreaConstraint];
  [v11 setActive:v5];

  v12 = [(PUPhotoPickerRemoteViewController *)self trailingSafeAreaConstraint];
  [v12 setActive:v5];

  v13.receiver = self;
  v13.super_class = PUPhotoPickerRemoteViewController;
  [(PUPhotoPickerRemoteViewController *)&v13 updateViewConstraints];
}

- (void)_loadContentViewIfNeeded
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PUPhotoPickerRemoteViewController.m" lineNumber:148 description:@"[PUPhotoPickerRemoteViewController _loadContentViewIfNeeded] must be called on the main thread."];
  }

  obj = self;
  objc_sync_enter(obj);
  v4 = [(PUPhotoPickerRemoteViewController *)obj options];
  if (v4)
  {
    v5 = [(PUPhotoPickerRemoteViewController *)obj assetPickerCoordinator];
    if (!v5)
    {
      if (![(PUPhotoPickerRemoteViewController *)obj isViewLoaded])
      {
        goto LABEL_10;
      }

      v6 = [(PUPhotoPickerRemoteViewController *)obj assetPickerCoordinator];

      if (!v6)
      {
        v7 = [PUPickerCoordinator alloc];
        v8 = [(PUPhotoPickerRemoteViewController *)obj mediaTypes];
        v9 = [(PUPhotoPickerRemoteViewController *)obj extensionContext];
        v10 = [v9 _auxiliaryConnection];
        v11 = [(PUPickerCoordinator *)v7 initWithPhotoPicker:obj mediaTypes:v8 connection:v10];

        v12 = [(PUPickerCoordinator *)v11 configuration];
        [v12 registerChangeObserver:obj context:PUPickerConfigurationObservationContext_61627];

        [(PUPhotoPickerRemoteViewController *)obj setAssetPickerCoordinator:v11];
      }

      v13 = [(PUPhotoPickerRemoteViewController *)obj assetPickerCoordinator];
      v5 = [v13 viewController];

      [v5 preferredContentSize];
      [(PUPhotoPickerRemoteViewController *)obj setPreferredContentSize:?];
      [(PUPhotoPickerRemoteViewController *)obj addChildViewController:v5];
      v14 = [(PUPhotoPickerRemoteViewController *)obj view];
      v15 = [v5 view];
      [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v14 addSubview:v15];
      v16 = [v14 topAnchor];
      v17 = [v15 topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [(PUPhotoPickerRemoteViewController *)obj setTopConstraint:v18];

      v19 = [v14 bottomAnchor];
      v20 = [v15 bottomAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      [(PUPhotoPickerRemoteViewController *)obj setBottomConstraint:v21];

      v22 = [v14 leadingAnchor];
      v23 = [v15 leadingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [(PUPhotoPickerRemoteViewController *)obj setLeadingConstraint:v24];

      v25 = [v14 trailingAnchor];
      v26 = [v15 trailingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [(PUPhotoPickerRemoteViewController *)obj setTrailingConstraint:v27];

      v28 = [v14 safeAreaLayoutGuide];
      v29 = [v28 leadingAnchor];
      v30 = [v15 leadingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      [(PUPhotoPickerRemoteViewController *)obj setLeadingSafeAreaConstraint:v31];

      v32 = [v14 safeAreaLayoutGuide];
      v33 = [v32 trailingAnchor];
      v34 = [v15 trailingAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];
      [(PUPhotoPickerRemoteViewController *)obj setTrailingSafeAreaConstraint:v35];

      [v14 setNeedsUpdateConstraints];
      [v5 didMoveToParentViewController:obj];
      v36 = [v14 window];
      [v36 setCanResizeToFitContent:1];

      [v14 layoutIfNeeded];
    }
  }

LABEL_10:

  objc_sync_exit(obj);
}

- (void)setOptions:(id)a3
{
  objc_storeStrong(&self->_options, a3);
  v4 = [(PUPhotoPickerRemoteViewController *)self extensionContext];
  [v4 photoPickerIsReadyForDisplay];
}

- (void)_handleViewControllerRequestWithOptions:(id)a3 error:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "PhotoPicker error: %@", &v8, 0xCu);
    }
  }

  else
  {
    [(PUPhotoPickerRemoteViewController *)self setOptions:a3];
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
    v3 = [(PUPhotoPickerRemoteViewController *)self extensionContext];
    v4 = [v3 _auxiliaryConnection];
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