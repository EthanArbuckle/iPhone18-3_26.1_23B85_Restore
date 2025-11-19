@interface PUPickerPrincipalUIViewController
+ (BOOL)shouldDebounceDidFinishPicking:(id)a3 previousSelectedObjectIDs:(id)a4 previousSelectionDate:(id)a5;
+ (void)initialize;
- (id)createSharedAlbumActionViewController;
- (id)keyCommands;
- (id)showProgress:(id)a3 forAsset:(id)a4 progressURL:(id)a5;
- (void)_deselectItemsWithIdentifiers:(id)a3;
- (void)_hostModalInPresentationDidChange:(BOOL)a3;
- (void)_moveItemWithIdentifier:(id)a3 afterIdentifier:(id)a4;
- (void)_overrideSelectedItemsWithIdentifiers:(id)a3;
- (void)_pickerUnavailableViewControllerCancelButtonTapped:(id)a3;
- (void)_popViewControllerWithReply:(id)a3;
- (void)_scrollContentToInitialPosition;
- (void)_searchWithString:(id)a3;
- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)a3;
- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)a3;
- (void)_updateConfiguration:(id)a3 completionHandler:(id)a4;
- (void)_updatePickerUsingUpdateConfiguration:(id)a3;
- (void)_zoomInContent;
- (void)_zoomOutContent;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)confirmConfidentialWarning:(id)a3 completionHandler:(id)a4;
- (void)confirmUserSafetyIntervention:(id)a3 completionHandler:(id)a4;
- (void)coordinator:(id)a3 didFinishPicking:(id)a4 additionalSelectionState:(id)a5 action:(int64_t)a6;
- (void)find:(id)a3;
- (void)finishPicking:(id)a3 additionalSelectionState:(id)a4 action:(int64_t)a5;
- (void)finishProgress:(id)a3 progressURL:(id)a4 trackingID:(id)a5 observation:(id)a6;
- (void)finishUpdatePickerWithChildViewController:(id)a3 coordinator:(id)a4 completion:(id)a5;
- (void)keyCommandEscape;
- (void)keyCommandReturn;
- (void)keyCommandZoomIn;
- (void)keyCommandZoomOut;
- (void)logExitIfNeeded:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)processPendingUpdateConfigurationRequestIfNecessary;
- (void)processUpdateConfigurationRequest:(id)a3 completionHandler:(id)a4;
- (void)setupFileProviderDomainAsynchronouslyWithCompletion:(id)a3;
- (void)sharedAlbumActionControllerDidCancel:(id)a3;
- (void)sharedAlbumActionControllerDidFinish:(id)a3 error:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateModalInPresentation;
- (void)updatePickerAsynchronouslyWithCompletion:(id)a3;
- (void)updateViewConstraints;
@end

@implementation PUPickerPrincipalUIViewController

- (void)find:(id)a3
{
  v3 = [(PUPickerPrincipalUIViewController *)self coordinator];
  [v3 makeSearchBarAsFirstResponder];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PUPickerConfigurationObservationContext != a5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:973 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v19 = v9;
  if ((v6 & 4) != 0)
  {
    v10 = [(PUPickerPrincipalUIViewController *)self extensionContext];
    v11 = [v10 _auxiliaryConnection];
    v12 = [v11 remoteObjectProxy];

    v13 = [(PUPickerPrincipalUIViewController *)self configuration];
    [v12 _pickerDidSetOnboardingOverlayDismissed:{objc_msgSend(v13, "didDismissOnboardingOverlayView")}];

    v9 = v19;
  }

  if ((v6 & 8) != 0)
  {
    v14 = [(PUPickerPrincipalUIViewController *)self extensionContext];
    v15 = [v14 _auxiliaryConnection];
    v16 = [v15 remoteObjectProxy];

    v17 = [(PUPickerPrincipalUIViewController *)self configuration];
    [v16 _pickerDidSetOnboardingHeaderDismissed:{objc_msgSend(v17, "didDismissOnboardingHeaderView")}];

    v9 = v19;
  }
}

- (void)coordinator:(id)a3 didFinishPicking:(id)a4 additionalSelectionState:(id)a5 action:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:901 description:{@"Invalid parameter not satisfying: %@", @"coordinator != nil"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  [v41 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:900 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController coordinator:didFinishPicking:additionalSelectionState:action:]"}];

  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_17:
  v43 = [MEMORY[0x1E696AAA8] currentHandler];
  [v43 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:902 description:{@"Invalid parameter not satisfying: %@", @"additionalSelectionState != nil"}];

LABEL_4:
  v14 = [(PUPickerPrincipalUIViewController *)self selectionDate];
  v15 = [MEMORY[0x1E695DF00] date];
  [(PUPickerPrincipalUIViewController *)self setSelectionDate:v15];

  v16 = [(PUPickerPrincipalUIViewController *)self selectedObjectIDs];
  if (![PUPickerPrincipalUIViewController shouldDebounceDidFinishPicking:v12 previousSelectedObjectIDs:v16 previousSelectionDate:v14])
  {
    v46 = v14;
    v47 = v11;
    v17 = a6 == 1;
    if (a6 == 2)
    {
      v17 = 2;
    }

    v48 = v17;
    v18 = objc_alloc(MEMORY[0x1E69788E0]);
    v19 = [v12 array];
    v50 = v12;
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    v22 = [(PUPickerPrincipalUIViewController *)self coordinator];
    v23 = [v22 configuration];
    [v23 photoLibrary];
    v24 = v49 = v13;
    v25 = [(PUPickerPrincipalUIViewController *)self configuration];
    v26 = [v25 fetchType];
    v27 = [v18 initWithOids:v21 photoLibrary:v24 fetchType:v26 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

    v28 = [v50 mutableCopy];
    v45 = v16;
    [v28 minusOrderedSet:v16];
    v29 = objc_alloc(MEMORY[0x1E69788E0]);
    v44 = v28;
    v30 = [v28 array];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = MEMORY[0x1E695E0F0];
    }

    v33 = [(PUPickerPrincipalUIViewController *)self coordinator];
    v34 = [v33 configuration];
    v35 = [v34 photoLibrary];
    v36 = [(PUPickerPrincipalUIViewController *)self configuration];
    v37 = [v36 fetchType];
    v38 = v29;
    v39 = v27;
    v40 = [v38 initWithOids:v32 photoLibrary:v35 fetchType:v37 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

    v12 = v50;
    v13 = v49;

    objc_initWeak(location, self);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __98__PUPickerPrincipalUIViewController_coordinator_didFinishPicking_additionalSelectionState_action___block_invoke;
    v51[3] = &unk_1E7B73FC8;
    objc_copyWeak(v55, location);
    v51[4] = v40;
    v52 = v50;
    v53 = v39;
    v54 = v49;
    v55[1] = v48;
    [(PUPickerPrincipalUIViewController *)self confirmUserSafetyIntervention:v40 completionHandler:v51];

    objc_destroyWeak(v55);
    objc_destroyWeak(location);

    v14 = v46;
    v11 = v47;
    v16 = v45;
  }
}

void __98__PUPickerPrincipalUIViewController_coordinator_didFinishPicking_additionalSelectionState_action___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__PUPickerPrincipalUIViewController_coordinator_didFinishPicking_additionalSelectionState_action___block_invoke_2;
    v12[3] = &unk_1E7B73FA0;
    objc_copyWeak(v16, (a1 + 64));
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v13 = v5;
    v14 = v6;
    v8 = v7;
    v9 = *(a1 + 72);
    v15 = v8;
    v16[1] = v9;
    [WeakRetained confirmConfidentialWarning:v4 completionHandler:v12];

    objc_destroyWeak(v16);
  }

  else
  {
    v10 = PLPickerGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Aborted picking after confidential warning.", v11, 2u);
    }
  }
}

void __98__PUPickerPrincipalUIViewController_coordinator_didFinishPicking_additionalSelectionState_action___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setSelectedObjectIDs:v3];

    v6 = objc_loadWeakRetained((a1 + 56));
    [v6 finishPicking:*(a1 + 40) additionalSelectionState:*(a1 + 48) action:*(a1 + 64)];
  }

  else
  {
    v5 = PLPickerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Aborted picking after user safety intervention.", buf, 2u);
    }
  }
}

- (void)_zoomOutContent
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:892 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _zoomOutContent]"}];
  }

  v5 = [(PUPickerPrincipalUIViewController *)self coordinator];
  [v5 zoomOutContent];
}

- (void)_zoomInContent
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:886 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _zoomInContent]"}];
  }

  v5 = [(PUPickerPrincipalUIViewController *)self coordinator];
  [v5 zoomInContent];
}

- (void)_scrollContentToInitialPosition
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:880 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _scrollContentToInitialPosition]"}];
  }

  v5 = [(PUPickerPrincipalUIViewController *)self coordinator];
  [v5 scrollContentToInitialPosition];
}

- (void)_popViewControllerWithReply:(id)a3
{
  v9 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:871 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _popViewControllerWithReply:]"}];
  }

  v5 = [(PUPickerPrincipalUIViewController *)self coordinator];
  v6 = [v5 popViewController];

  v7 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v6);
    v7 = v9;
  }
}

- (void)_searchWithString:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (v5)
    {
LABEL_3:
      v6 = [(PUPickerPrincipalUIViewController *)self coordinator];
      [v6 searchWithString:v5];
      goto LABEL_7;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:861 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _searchWithString:]"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = PLPickerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v9 = 0;
    v10 = 2080;
    v11 = "[PUPickerPrincipalUIViewController _searchWithString:]";
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_7:
}

- (void)_overrideSelectedItemsWithIdentifiers:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:850 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _overrideSelectedItemsWithIdentifiers:]"}];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v6 = [(PUPickerPrincipalUIViewController *)self coordinator];
  v7 = [v6 configuration];
  v8 = [v7 receivedPhotoLibrary];

  if (v8)
  {
    v9 = [(PUPickerPrincipalUIViewController *)self programmaticallySelectedItemIdentifiers];
    [v9 addObjectsFromArray:v5];

    v10 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [v10 overrideSelectedItemsWithIdentifiers:v5];
    goto LABEL_8;
  }

LABEL_6:
  v10 = PLPickerGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v13 = v5;
    v14 = 2080;
    v15 = "[PUPickerPrincipalUIViewController _overrideSelectedItemsWithIdentifiers:]";
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_8:
}

- (void)_moveItemWithIdentifier:(id)a3 afterIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:840 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _moveItemWithIdentifier:afterIdentifier:]"}];

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v9 = [(PUPickerPrincipalUIViewController *)self coordinator];
  v10 = [v9 configuration];
  v11 = [v10 receivedPhotoLibrary];

  if (v11)
  {
    v12 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [v12 moveItemWithIdentifier:v7 afterIdentifier:v8];
    goto LABEL_8;
  }

LABEL_6:
  v12 = PLPickerGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2080;
    v19 = "[PUPickerPrincipalUIViewController _moveItemWithIdentifier:afterIdentifier:]";
    _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Invalid inputs (%@, %@) received: %s", buf, 0x20u);
  }

LABEL_8:
}

- (void)_deselectItemsWithIdentifiers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:830 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _deselectItemsWithIdentifiers:]"}];
  }

  if ([v5 count] && (-[PUPickerPrincipalUIViewController coordinator](self, "coordinator"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "configuration"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "receivedPhotoLibrary"), v7, v6, v8))
  {
    v9 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [v9 deselectItemsWithIdentifiers:v5];
  }

  else
  {
    v9 = PLPickerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v5;
      v13 = 2080;
      v14 = "[PUPickerPrincipalUIViewController _deselectItemsWithIdentifiers:]";
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
    }
  }
}

- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:820 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _stopActivityIndicatorsForAssetsWithIdentifiers:]"}];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v6 = [(PUPickerPrincipalUIViewController *)self coordinator];
  v7 = [v6 configuration];
  v8 = [v7 receivedPhotoLibrary];

  if (v8)
  {
    v9 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [v9 stopActivityIndicatorsForAssetsWithIdentifiers:v5];
    goto LABEL_8;
  }

LABEL_6:
  v9 = PLPickerGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 2080;
    v14 = "[PUPickerPrincipalUIViewController _stopActivityIndicatorsForAssetsWithIdentifiers:]";
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_8:
}

- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:808 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _startActivityIndicatorsForAssetsWithIdentifiers:]"}];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v6 = [(PUPickerPrincipalUIViewController *)self coordinator];
  v7 = [v6 configuration];
  v8 = [v7 receivedPhotoLibrary];

  if (v8)
  {
    v9 = [(PUPickerPrincipalUIViewController *)self configuration];
    v10 = [v9 photoLibrary];
    v11 = [v10 librarySpecificFetchOptions];

    v12 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v5 options:v11];
    v13 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [v13 startActivityIndicatorsForAssetsWithFetchResult:v12];

    goto LABEL_9;
  }

LABEL_6:
  v15 = PLPickerGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2080;
    v19 = "[PUPickerPrincipalUIViewController _startActivityIndicatorsForAssetsWithIdentifiers:]";
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_9:
}

- (void)_hostModalInPresentationDidChange:(BOOL)a3
{
  v3 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:789 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _hostModalInPresentationDidChange:]"}];
  }

  if ([(PUPickerPrincipalUIViewController *)self isModalInPresentation]!= v3)
  {

    [(PUPickerPrincipalUIViewController *)self setModalInPresentation:v3];
  }
}

- (void)_updatePickerUsingUpdateConfiguration:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:745 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _updatePickerUsingUpdateConfiguration:]"}];

    if (!v5)
    {
      goto LABEL_15;
    }
  }

  if ([v5 _isValidConfiguration])
  {
    v6 = [v5 _sharedAlbumSheetConfiguration];

    if (v6)
    {
      v7 = [(PUPickerPrincipalUIViewController *)self childViewControllers];
      v8 = [v7 firstObject];

      v9 = v8;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v10 = v9;

        if (v10)
        {
          v11 = MEMORY[0x1E6978830];
          v12 = [(PUPickerPrincipalUIViewController *)self configuration];
          v13 = [v12 photoLibrary];
          v14 = [v11 fetchOptionsWithInclusiveDefaultsForPhotoLibrary:v13];

          v15 = [v5 _sharedAlbumSheetConfiguration];
          v16 = PLPickerGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v15 defaultAlbumIdentifier];
            v18 = [v15 itemIdentifiers];
            *buf = 138412546;
            v29 = v17;
            v30 = 2112;
            v31 = v18;
            _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Updating PXSharedAlbumActionNavigationController for with album identifier: %@ and itemIdentifiers: %@", buf, 0x16u);
          }

          v19 = MEMORY[0x1E6978630];
          v20 = [v15 itemIdentifiers];
          v21 = [v19 fetchAssetsWithLocalIdentifiers:v20 options:v14];

          v22 = [v21 fetchedObjects];
          [v10 setAssets:v22];
        }
      }

      else
      {

        v10 = 0;
      }
    }

    v23 = [(PUPickerPrincipalUIViewController *)self configuration];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__PUPickerPrincipalUIViewController__updatePickerUsingUpdateConfiguration___block_invoke;
    v26[3] = &unk_1E7B73F78;
    v27 = v5;
    [v23 performChanges:v26];

    v24 = v27;
    goto LABEL_17;
  }

LABEL_15:
  v24 = PLPickerGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v29 = v5;
    v30 = 2080;
    v31 = "[PUPickerPrincipalUIViewController _updatePickerUsingUpdateConfiguration:]";
    _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_17:
}

void __75__PUPickerPrincipalUIViewController__updatePickerUsingUpdateConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) _didSetEdgesWithoutContentMargins])
  {
    [v5 setEdgesWithoutContentMargins:{objc_msgSend(*(a1 + 32), "edgesWithoutContentMargins")}];
  }

  if ([*(a1 + 32) _didSetSelectionLimit])
  {
    [v5 setSelectionLimit:{objc_msgSend(*(a1 + 32), "selectionLimit")}];
  }

  if ([*(a1 + 32) _didSetPrompt])
  {
    v3 = [*(a1 + 32) prompt];
    [v5 setPrompt:v3];
  }

  if ([*(a1 + 32) _didSetTitle])
  {
    v4 = [*(a1 + 32) title];
    [v5 setTitle:v4];
  }

  if ([*(a1 + 32) _didSetPrimaryButtonType])
  {
    [v5 setPrimaryButtonType:{objc_msgSend(*(a1 + 32), "_primaryButtonType")}];
  }

  if ([*(a1 + 32) _didSetSecondaryButtonType])
  {
    [v5 setSecondaryButtonType:{objc_msgSend(*(a1 + 32), "_secondaryButtonType")}];
  }
}

- (void)_updateConfiguration:(id)a3 completionHandler:(id)a4
{
  v7 = MEMORY[0x1E696AF00];
  v8 = a4;
  v9 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:734 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _updateConfiguration:completionHandler:]"}];
  }

  sSignpostID = os_signpost_id_generate(sPickerLaunchLog);
  v10 = sPickerLaunchLog;
  v11 = v10;
  v12 = sSignpostID;
  if ((sSignpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Launch Picker View Controller", "", buf, 2u);
  }

  [(PUPickerPrincipalUIViewController *)self setPassedInConfiguration:v9];
  [(PUPickerPrincipalUIViewController *)self processUpdateConfigurationRequest:v9 completionHandler:v8];
}

- (void)_pickerUnavailableViewControllerCancelButtonTapped:(id)a3
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:725 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _pickerUnavailableViewControllerCancelButtonTapped:]"}];
  }

  v5 = [(PUPickerPrincipalUIViewController *)self extensionContext];
  v6 = [v5 _auxiliaryConnection];
  v8 = [v6 remoteObjectProxy];

  [v8 _pickerDidFinishPicking:0 action:2 error:0];
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:680 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController beginRequestWithExtensionContext:]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"[context isKindOfClass:PUPickerExtensionVendorContext.class]"}];
  }

  v17.receiver = self;
  v17.super_class = PUPickerPrincipalUIViewController;
  v6 = [(PUPickerPrincipalUIViewController *)&v17 beginRequestWithExtensionContext:v5];
  if (MEMORY[0x1B8C6E6A0](v6))
  {
    v7 = [(PUPickerPrincipalUIViewController *)self extensionContext];
    v8 = [v7 _auxiliaryConnection];
    v9 = PLClientApplicationIdentifierFromXPCConnection();

    MEMORY[0x1B8C6E6B0](v9);
  }

  [(PUPickerPrincipalUIViewController *)self setIsFileProviderSetupComplete:0];
  [(PUPickerPrincipalUIViewController *)self setPendingCompletionHandler:0];
  v10 = objc_alloc_init(MEMORY[0x1E69C4558]);
  [(PUPickerPrincipalUIViewController *)self setLoadingStatusManager:v10];

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PUPickerPrincipalUIViewController *)self setProgressSubscribers:v11];

  [v5 setDelegate:self];
  [(PUPickerPrincipalUIViewController *)self setupFileProviderDomainAsynchronouslyWithCompletion:&__block_literal_global_320];
  v12 = MEMORY[0x1E6979148];
  v13 = [v5 _auxiliaryConnection];
  v14 = [v13 remoteObjectInterface];
  [v12 setAllowedClassesForExtensionAuxiliaryHostInterface:v14];
}

uint64_t __70__PUPickerPrincipalUIViewController_beginRequestWithExtensionContext___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return MEMORY[0x1EEE2D218]();
  }

  return result;
}

- (void)sharedAlbumActionControllerDidCancel:(id)a3
{
  v3 = [(PUPickerPrincipalUIViewController *)self extensionContext];
  v4 = [v3 _auxiliaryConnection];
  v5 = [v4 remoteObjectProxy];

  [v5 _pickerDidFinishPicking:0 action:2 error:0];
}

- (void)sharedAlbumActionControllerDidFinish:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(PUPickerPrincipalUIViewController *)self extensionContext];
  v7 = [v6 _auxiliaryConnection];
  v9 = [v7 remoteObjectProxy];

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  [v9 _pickerDidFinishPicking:v8 action:1 error:v5];
}

- (void)finishPicking:(id)a3 additionalSelectionState:(id)a4 action:(int64_t)a5
{
  v138 = *MEMORY[0x1E69E9840];
  v94 = a3;
  v92 = a4;
  val = self;
  v7 = [(PUPickerPrincipalUIViewController *)self extensionContext];
  v8 = [v7 _auxiliaryConnection];
  v90 = [v8 remoteObjectProxy];

  v9 = [(PUPickerPrincipalUIViewController *)val coordinator];
  v98 = [v9 configuration];

  v93 = [v92 registerConfiguration];
  v10 = [(PUPickerPrincipalUIViewController *)val coordinator];
  [v10 isShowingLiveWallpaperSuggestions];
  PXPickerFileProviderRegisterConfigurationSetIsLiveWallpaperSuggestion();

  v11 = [(PUPickerPrincipalUIViewController *)val coordinator];
  [v11 isShowingSpatialWallpaperSuggestions];
  PXPickerFileProviderRegisterConfigurationSetIsSpatialWallpaperSuggestion();

  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = PXMap();
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v91 = [v12 initWithArray:v15];

  v16 = [(PUPickerPrincipalUIViewController *)val programmaticallySelectedItemIdentifiers];
  [v16 intersectSet:v91];

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v17 = [(PUPickerPrincipalUIViewController *)val progressSubscribers];
  v18 = [v17 allValues];

  v19 = [v18 countByEnumeratingWithState:&v130 objects:v137 count:16];
  if (v19)
  {
    v20 = *v131;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v131 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [MEMORY[0x1E696AE38] removeSubscriber:*(*(&v130 + 1) + 8 * i)];
      }

      v19 = [v18 countByEnumeratingWithState:&v130 objects:v137 count:16];
    }

    while (v19);
  }

  v22 = [(PUPickerPrincipalUIViewController *)val progressSubscribers];
  [v22 removeAllObjects];

  v23 = [(PUPickerPrincipalUIViewController *)val coordinator];
  [v23 emitDidFinishPickingAnalytics];

  if ([v98 isLimitedLibraryPicker])
  {
    v24 = PXMap();
    v25 = [v98 limitedLibraryClientIdentifier];
    v128 = 0u;
    v129 = 0u;
    v26 = [v98 pickerClientIdentification];
    v27 = v26;
    if (v26)
    {
      [v26 clientAuditToken];
    }

    else
    {
      v128 = 0u;
      v129 = 0u;
    }

    v28 = PLPickerGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v25;
      _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_DEFAULT, "Sending updated limited library for application %@", buf, 0xCu);
    }

    v29 = [v98 photoLibrary];
    v30 = [v29 assetsdClient];
    v31 = [v30 libraryInternalClient];
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __83__PUPickerPrincipalUIViewController_finishPicking_additionalSelectionState_action___block_invoke_300;
    v127[3] = &unk_1E7B80280;
    v127[4] = v25;
    *buf = v128;
    *&buf[16] = v129;
    [v31 setFetchFilterWithAssets:v24 forApplication:v25 withAuditToken:buf completionHandler:v127];

    v32 = [v94 fetchedObjectIDsSet];
    v33 = [v32 mutableCopy];

    v34 = [v98 preselectedItemObjectIDs];
    v35 = [v34 set];
    [v33 minusSet:v35];

    v36 = objc_alloc(MEMORY[0x1E69788E0]);
    v37 = [v33 allObjects];
    v38 = [v36 initWithExistingFetchResult:v94 filteredObjectIDs:v37];

    v94 = v38;
  }

  v39 = [v98 confirmationBehavior];
  if (v39 <= 4 && ((1 << v39) & 0x13) != 0)
  {
    v40 = [(PUPickerPrincipalUIViewController *)val coordinator];
    [v40 resignSearchBarAsFirstResponder];
  }

  if ([v94 count])
  {
    v101 = [v98 allowsAssetData];
    v99 = [v98 allowsIdentifiers];
    v96 = [(PUPickerPrincipalUIViewController *)val programmaticallySelectedItemIdentifiers];
    v41 = [(PUPickerPrincipalUIViewController *)val manager];
    v42 = [(PUPickerPrincipalUIViewController *)val domain];
    v95 = PXPickerFileProviderRegister();

    v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    obj = v94;
    v103 = [obj countByEnumeratingWithState:&v123 objects:v135 count:16];
    if (v103)
    {
      v100 = *v124;
      do
      {
        v43 = 0;
        do
        {
          if (*v124 != v100)
          {
            v44 = v43;
            objc_enumerationMutation(obj);
            v43 = v44;
          }

          v105 = v43;
          v45 = *(*(&v123 + 1) + 8 * v43);
          v46 = v45;
          context = objc_autoreleasePoolPush();
          v106 = v45;
          if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v108 = v106;
          }

          else
          {
            v108 = 0;
          }

          v107 = objc_alloc_init(MEMORY[0x1E6979168]);
          if (((v108 != 0) & v101) == 1)
          {
            v47 = [v108 localIdentifier];
            v48 = [v96 containsObject:v47];

            if ((v48 & 1) == 0)
            {
              v128 = 0u;
              v129 = 0u;
              v49 = [v98 pickerClientIdentification];
              v50 = v49;
              if (v49)
              {
                [v49 clientAuditToken];
              }

              else
              {
                v128 = 0u;
                v129 = 0u;
              }

              v51 = [v108 originalFilename];
              v52 = [v51 stringByDeletingPathExtension];
              [v107 setSuggestedName:v52];

              v53 = [v98 phPickerConfiguration];
              [v107 setAllowsItemProviderOpenInPlace:{objc_msgSend(v53, "_usesOpenPanelLayout")}];

              [v107 setPixelWidth:{objc_msgSend(v108, "pixelWidth")}];
              [v107 setPixelHeight:{objc_msgSend(v108, "pixelHeight")}];
              [v108 preferredCropRect];
              [v107 setPreferredCropRect:?];
              [v108 acceptableCropRect];
              [v107 setAcceptableCropRect:?];
              [v108 faceAreaRect];
              [v107 setNormalizedFaceAreaRect:?];
              objc_initWeak(&location, val);
              v54 = PXPhotosFileProviderRegisteredFileRepresentations();
              v114 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v54, "count")}];
              v109 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v54, "count")}];
              v110 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v54, "count")}];
              v120 = 0u;
              v121 = 0u;
              v118 = 0u;
              v119 = 0u;
              v111 = v54;
              v55 = [v111 countByEnumeratingWithState:&v118 objects:v134 count:16];
              if (v55)
              {
                v113 = *v119;
                do
                {
                  for (j = 0; j != v55; ++j)
                  {
                    if (*v119 != v113)
                    {
                      objc_enumerationMutation(v111);
                    }

                    v57 = *(*(&v118 + 1) + 8 * j);
                    v58 = PXPhotosFileProviderRegisterFileRepresentationTypeIdentifier();
                    if (([v114 containsObject:v58] & 1) == 0)
                    {
                      v59 = MEMORY[0x1B8C6CFE0](v57);
                      v60 = [v59 path];
                      *buf = v128;
                      *&buf[16] = v129;
                      v61 = PLGetSandboxExtensionTokenForProcess();

                      v62 = [MEMORY[0x1E696AC08] defaultManager];
                      v63 = [v59 path];
                      v64 = [v62 fileExistsAtPath:v63];

                      if ((v64 & 1) == 0)
                      {
                        v65 = [MEMORY[0x1E696AC08] defaultManager];
                        v66 = [v59 URLByDeletingLastPathComponent];
                        v117 = 0;
                        v67 = [v65 createDirectoryAtURL:v66 withIntermediateDirectories:1 attributes:0 error:&v117];
                        v68 = v117;

                        if ((v67 & 1) == 0)
                        {
                          v69 = PLPickerGetLog();
                          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                          {
                            v70 = [v59 description];
                            v71 = [v68 localizedDescription];
                            *buf = 138412546;
                            *&buf[4] = v70;
                            *&buf[12] = 2112;
                            *&buf[14] = v71;
                            _os_log_impl(&dword_1B36F3000, v69, OS_LOG_TYPE_ERROR, "Failed to create directory at path:%@ Error:%@", buf, 0x16u);
                          }
                        }

                        v72 = [MEMORY[0x1E696AC08] defaultManager];
                        v73 = [v59 path];
                        [v72 createFileAtPath:v73 contents:0 attributes:0];
                      }

                      v74 = [(PUPickerPrincipalUIViewController *)val progressSubscribers];
                      v75 = [v74 objectForKeyedSubscript:v59];
                      if (v75)
                      {
                      }

                      else
                      {
                        v76 = MEMORY[0x1B8C6CFF0](v57);

                        if ((v76 & 1) == 0)
                        {
                          v77 = MEMORY[0x1E696AE38];
                          v115[0] = MEMORY[0x1E69E9820];
                          v115[1] = 3221225472;
                          v115[2] = __83__PUPickerPrincipalUIViewController_finishPicking_additionalSelectionState_action___block_invoke_308;
                          v115[3] = &unk_1E7B73F50;
                          objc_copyWeak(&v116, &location);
                          v115[4] = v108;
                          v115[5] = v59;
                          v78 = [v77 addSubscriberForFileURL:v59 withPublishingHandler:v115];
                          v79 = [(PUPickerPrincipalUIViewController *)val progressSubscribers];
                          [v79 setObject:v78 forKeyedSubscript:v59];

                          objc_destroyWeak(&v116);
                        }
                      }

                      [v114 addObject:v58];
                      [v110 setObject:v61 forKeyedSubscript:v58];
                      [v109 setObject:v59 forKeyedSubscript:v58];
                    }
                  }

                  v55 = [v111 countByEnumeratingWithState:&v118 objects:v134 count:16];
                }

                while (v55);
              }

              v80 = [v114 copy];
              [v107 setTypeIdentifiers:v80];

              v81 = [v109 copy];
              [v107 setFilePromiseURLs:v81];

              v82 = [v110 copy];
              [v107 setSandboxExtensionTokens:v82];

              v83 = [v106 localIdentifier];
              [v107 setItemIdentifier:v83];

              objc_destroyWeak(&location);
            }
          }

          v84 = objc_alloc(MEMORY[0x1E69790F0]);
          v85 = objc_alloc_init(MEMORY[0x1E696ACA0]);
          if (v99)
          {
            v86 = [v106 localIdentifier];
            v87 = [v84 _initWithItemProvider:v85 itemIdentifier:v86 isAssetResult:v108 != 0 metadata:v107];
          }

          else
          {
            v87 = [v84 _initWithItemProvider:v85 itemIdentifier:0 isAssetResult:v108 != 0 metadata:v107];
          }

          [v102 addObject:v87];
          objc_autoreleasePoolPop(context);
          v43 = v105 + 1;
        }

        while (v105 + 1 != v103);
        v103 = [obj countByEnumeratingWithState:&v123 objects:v135 count:16];
      }

      while (v103);
    }

    [(PUPickerPrincipalUIViewController *)val logExitIfNeeded:obj];
    v88 = [v102 copy];
    [v90 _pickerDidFinishPicking:v88 action:a5 error:0];
  }

  else
  {
    [v90 _pickerDidFinishPicking:0 action:a5 error:0];
  }
}

void __83__PUPickerPrincipalUIViewController_finishPicking_additionalSelectionState_action___block_invoke_300(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPickerGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138412290;
      v15 = v8;
      v9 = "Finished updating limited library for application %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    v9 = "Failed to update limited library for application %@ with error %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

id __83__PUPickerPrincipalUIViewController_finishPicking_additionalSelectionState_action___block_invoke_308(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained showProgress:v3 forAsset:*(a1 + 32) progressURL:*(a1 + 40)];

  return v5;
}

- (void)finishProgress:(id)a3 progressURL:(id)a4 trackingID:(id)a5 observation:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 isCancelled];
  v15 = [(PUPickerPrincipalUIViewController *)self loadingStatusManager];
  v16 = v15;
  if (v14)
  {
    [v15 didCancelLoadOperationWithTrackingID:v11];
  }

  else
  {
    [v15 didCompleteLoadOperationWithTrackingID:v11 withSuccess:1 error:0];
  }

  [v13 removeObservation:v10];
  v17 = MEMORY[0x1E696AE38];
  v18 = [(PUPickerPrincipalUIViewController *)self progressSubscribers];
  v19 = [v18 objectForKeyedSubscript:v12];
  [v17 removeSubscriber:v19];

  v20 = [(PUPickerPrincipalUIViewController *)self progressSubscribers];
  [v20 setObject:0 forKeyedSubscript:v12];
}

- (id)showProgress:(id)a3 forAsset:(id)a4 progressURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PUPickerPrincipalUIViewController *)self loadingStatusManager];
  v12 = [v9 uuid];
  v13 = [v11 willBeginLoadOperationWithItemIdentifier:v12];

  objc_initWeak(&location, self);
  v14 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v8 path:"fractionCompleted"];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__PUPickerPrincipalUIViewController_showProgress_forAsset_progressURL___block_invoke;
  v30[3] = &unk_1E7B73F28;
  objc_copyWeak(&v32, &location);
  v15 = v13;
  v31 = v15;
  v16 = [v14 addObserverBlock:v30];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__PUPickerPrincipalUIViewController_showProgress_forAsset_progressURL___block_invoke_3;
  v24[3] = &unk_1E7B783B0;
  objc_copyWeak(&v29, &location);
  v25 = v8;
  v26 = v10;
  v27 = v15;
  v28 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v10;
  v20 = v8;
  v21 = _Block_copy(v24);
  v22 = _Block_copy(v21);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  return v22;
}

void __71__PUPickerPrincipalUIViewController_showProgress_forAsset_progressURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v6, (a1 + 40));
  v4 = *(a1 + 32);
  v5 = v3;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v6);
}

void __71__PUPickerPrincipalUIViewController_showProgress_forAsset_progressURL___block_invoke_3(id *a1)
{
  objc_copyWeak(&v10, a1 + 8);
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v8 = v7;
  v9 = v6;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v10);
}

void __71__PUPickerPrincipalUIViewController_showProgress_forAsset_progressURL___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained finishProgress:*(a1 + 32) progressURL:*(a1 + 40) trackingID:*(a1 + 48) observation:*(a1 + 56)];
}

void __71__PUPickerPrincipalUIViewController_showProgress_forAsset_progressURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained loadingStatusManager];
  v3 = *(a1 + 32);
  [*(a1 + 40) doubleValue];
  [v2 didUpdateLoadOperationWithTrackingID:v3 withProgress:?];
}

- (void)confirmUserSafetyIntervention:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_20:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:451 description:{@"Invalid parameter not satisfying: %@", @"fetchResult != nil"}];

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:450 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController confirmUserSafetyIntervention:completionHandler:]"}];

  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_21:
  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];

LABEL_4:
  v9 = [(PUPickerPrincipalUIViewController *)self configuration];
  v10 = [v9 confirmationBehavior];

  v12 = v10 == 2 || v10 == 4;
  v13 = [v7 fetchType];
  v14 = v13;
  if (v13 != *MEMORY[0x1E6978D98])
  {

LABEL_17:
    v8[2](v8, 1);
    goto LABEL_18;
  }

  v15 = [(PUPickerPrincipalUIViewController *)self configuration];
  v16 = [v15 shouldShowCommunicationSafetyIntervention];

  if (!v16)
  {
    goto LABEL_17;
  }

  [(PUPickerPrincipalUIViewController *)self setSensitivityInterventionManager:0];
  v17 = [(PUPickerPrincipalUIViewController *)self coordinator];
  v18 = v17;
  if (v12)
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  [v17 startActivityIndicatorsForAssetsWithFetchResult:v19];

  v20 = MEMORY[0x1E69C3A20];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __85__PUPickerPrincipalUIViewController_confirmUserSafetyIntervention_completionHandler___block_invoke;
  v24[3] = &unk_1E7B7C1F0;
  v24[4] = self;
  v25 = v7;
  v26 = v8;
  [v20 userSafetyInterventionCheckRequiredBeforeSharingAssets:v25 completion:v24];

LABEL_18:
}

void __85__PUPickerPrincipalUIViewController_confirmUserSafetyIntervention_completionHandler___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1[4] coordinator];
  v7 = [a1[5] fetchedObjects];
  v8 = PXMap();
  [v6 stopActivityIndicatorsForAssetsWithIdentifiers:v8];

  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__PUPickerPrincipalUIViewController_confirmUserSafetyIntervention_completionHandler___block_invoke_3;
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

- (void)confirmConfidentialWarning:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_14:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"fetchResult != nil"}];

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:430 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController confirmConfidentialWarning:completionHandler:]"}];

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_15:
  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:432 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];

LABEL_4:
  v9 = [v7 fetchType];
  if (v9 != *MEMORY[0x1E6978D98])
  {
LABEL_10:

    goto LABEL_11;
  }

  v10 = [(PUPickerPrincipalUIViewController *)self configuration];
  if (![v10 allowsConfidentialWarning] || (objc_msgSend(MEMORY[0x1E69C3A10], "confidentialityCheckRequired") & 1) == 0)
  {

    goto LABEL_10;
  }

  v11 = MEMORY[0x1E69C3A10];
  v12 = [v7 fetchedObjects];
  LODWORD(v11) = [v11 confidentialWarningRequiredForAssets:v12];

  if (!v11)
  {
LABEL_11:
    v8[2](v8, 1);
    goto LABEL_12;
  }

  v13 = MEMORY[0x1E69C3A10];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__PUPickerPrincipalUIViewController_confirmConfidentialWarning_completionHandler___block_invoke;
  v20[3] = &unk_1E7B80980;
  v21 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__PUPickerPrincipalUIViewController_confirmConfidentialWarning_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7B80980;
  v19 = v21;
  v14 = [v13 confidentialityAlertWithConfirmAction:v20 abortAction:v18];
  [(PUPickerPrincipalUIViewController *)self px_presentOverTopmostPresentedViewController:v14 animated:1 completion:0];

LABEL_12:
}

- (void)logExitIfNeeded:(id)a3
{
  v16 = a3;
  if (!v16)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"fetchResult != nil"}];
  }

  if (MEMORY[0x1B8C6E6A0]() && [v16 count])
  {
    v5 = [v16 fetchedObjects];
    v6 = PXMap();

    v7 = MEMORY[0x1E6978630];
    v8 = [(PUPickerPrincipalUIViewController *)self coordinator];
    v9 = [v8 configuration];
    v10 = [v9 photoLibrary];
    v11 = [v7 countOfAssetsWithLocationFromUUIDs:v6 photoLibrary:v10];

    if (v11 >= 1)
    {
      v12 = [(PUPickerPrincipalUIViewController *)self extensionContext];
      v13 = [v12 _auxiliaryConnection];
      v14 = PLClientApplicationIdentifierFromXPCConnection();

      plslogGreenTea();
    }
  }
}

id __53__PUPickerPrincipalUIViewController_logExitIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6978958];
  v3 = [a2 localIdentifier];
  v4 = [v2 uuidFromLocalIdentifier:v3];

  return v4;
}

- (void)updateModalInPresentation
{
  v3 = [(PUPickerPrincipalUIViewController *)self configuration];
  v4 = [v3 phPickerConfiguration];
  v5 = [v4 _disabledPrivateCapabilities];

  if ((v5 & 0x40) == 0)
  {
    v6 = [(PUPickerPrincipalUIViewController *)self traitCollection];
    v7 = [v6 _presentationSemanticContext];

    v8 = [(PUPickerPrincipalUIViewController *)self isModalInPresentation];
    if (v7 == 3)
    {
      if ((v8 & 1) == 0)
      {
        return;
      }

      v9 = 0;
    }

    else if (v8)
    {
      if (([(PUPickerPrincipalUIViewController *)self isModalInPresentation]& 1) != 0)
      {
        return;
      }

      v9 = 1;
    }

    else
    {
      v10 = [(PUPickerPrincipalUIViewController *)self coordinator];
      v9 = [v10 selectionDidChange];

      if (v9 == [(PUPickerPrincipalUIViewController *)self isModalInPresentation])
      {
        return;
      }
    }

    [(PUPickerPrincipalUIViewController *)self setModalInPresentation:v9];
    v11 = [(PUPickerPrincipalUIViewController *)self extensionContext];
    v12 = [v11 _auxiliaryConnection];
    v13 = [v12 remoteObjectProxy];

    [v13 _pickerDidSetModalInPresentation:v9];
  }
}

- (id)createSharedAlbumActionViewController
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978830];
  v4 = [(PUPickerPrincipalUIViewController *)self configuration];
  v5 = [v4 photoLibrary];
  v6 = [v3 fetchOptionsWithInclusiveDefaultsForPhotoLibrary:v5];

  v7 = [(PUPickerPrincipalUIViewController *)self configuration];
  v8 = [v7 phPickerConfiguration];
  v9 = [v8 _sharedAlbumSheetConfiguration];

  v10 = PLPickerGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 defaultAlbumIdentifier];
    v12 = [v9 itemIdentifiers];
    v23 = 138412546;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Creating PXSharedAlbumActionNavigationController for with album identifier: %@ and itemIdentifiers: %@", &v23, 0x16u);
  }

  v13 = MEMORY[0x1E6978630];
  v14 = [v9 itemIdentifiers];
  v15 = [v13 fetchAssetsWithLocalIdentifiers:v14 options:v6];

  v16 = [v15 fetchedObjects];
  v17 = PLPickerGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v16 count];
    v23 = 134217984;
    v24 = v18;
    _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "Fetched assets for PXSharedAlbumActionNavigationController with asset count %ld", &v23, 0xCu);
  }

  v19 = objc_alloc(MEMORY[0x1E69C39E0]);
  v20 = [v9 defaultAlbumIdentifier];
  v21 = [v19 initWithAssets:v16 batchComment:&stru_1F2AC6818 perAssetCreationOptions:0 selectedPostToAlbumUUID:v20];

  [v21 setActionControllerDelegate:self];

  return v21;
}

- (void)finishUpdatePickerWithChildViewController:(id)a3 coordinator:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(PUPickerPrincipalUIViewController *)self setCoordinator:v8];
  [v10 preferredContentSize];
  [(PUPickerPrincipalUIViewController *)self setPreferredContentSize:?];
  [(PUPickerPrincipalUIViewController *)self px_addOrReplaceChildViewController:v10 activateConstraints:0];
  v11 = [(PUPickerPrincipalUIViewController *)self view];
  v12 = [v10 view];

  v13 = [v11 topAnchor];
  v14 = [v12 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [(PUPickerPrincipalUIViewController *)self setTopConstraint:v15];

  v16 = [v11 bottomAnchor];
  v17 = [v12 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [(PUPickerPrincipalUIViewController *)self setBottomConstraint:v18];

  v19 = [v11 leadingAnchor];
  v20 = [v12 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [(PUPickerPrincipalUIViewController *)self setLeadingConstraint:v21];

  v22 = [v11 trailingAnchor];
  v23 = [v12 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [(PUPickerPrincipalUIViewController *)self setTrailingConstraint:v24];

  v25 = [v11 safeAreaLayoutGuide];
  v26 = [v25 leadingAnchor];
  v27 = [v12 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [(PUPickerPrincipalUIViewController *)self setLeadingSafeAreaConstraint:v28];

  v29 = [v11 safeAreaLayoutGuide];
  v30 = [v29 trailingAnchor];
  v31 = [v12 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [(PUPickerPrincipalUIViewController *)self setTrailingSafeAreaConstraint:v32];

  [v11 setNeedsUpdateConstraints];
  v33 = [v11 window];
  [v33 setCanResizeToFitContent:1];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __102__PUPickerPrincipalUIViewController_finishUpdatePickerWithChildViewController_coordinator_completion___block_invoke;
  v36[3] = &unk_1E7B7C590;
  v36[4] = v11;
  v36[5] = self;
  v37 = v8;
  v38 = v9;
  v34 = v9;
  v35 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v36);
}

void __102__PUPickerPrincipalUIViewController_finishUpdatePickerWithChildViewController_coordinator_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 40) updateModalInPresentation];
  objc_initWeak(&location, *(a1 + 40));
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __102__PUPickerPrincipalUIViewController_finishUpdatePickerWithChildViewController_coordinator_completion___block_invoke_2;
  v12 = &unk_1E7B80638;
  objc_copyWeak(&v13, &location);
  [*(a1 + 48) setSelectionDidChangeObserver:&v9];
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v3 = [*(a1 + 40) configuration];
  v4 = [v3 preselectedItemIdentifiers];
  v5 = [v4 set];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  v7 = [v2 initWithSet:v6];
  [*(a1 + 40) setProgrammaticallySelectedItemIdentifiers:v7];

  if (!v5)
  {
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 48) != 0);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __102__PUPickerPrincipalUIViewController_finishUpdatePickerWithChildViewController_coordinator_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateModalInPresentation];
}

- (void)updatePickerAsynchronouslyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerPrincipalUIViewController *)self manager];
  v6 = [(PUPickerPrincipalUIViewController *)self domain];
  v7 = [(PUPickerPrincipalUIViewController *)self configuration];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1118;
  v37 = __Block_byref_object_dispose__1119;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1118;
  v31 = __Block_byref_object_dispose__1119;
  v32 = 0;
  v8 = [v7 phPickerConfiguration];
  v9 = [v8 _sharedAlbumSheetConfiguration];

  if (v9)
  {
    v10 = [(PUPickerPrincipalUIViewController *)self createSharedAlbumActionViewController];
    v11 = v28[5];
    v28[5] = v10;

    [(PUPickerPrincipalUIViewController *)self finishUpdatePickerWithChildViewController:v28[5] coordinator:v34[5] completion:v4];
  }

  else
  {
    if (v5 && v6 && v7)
    {
      v12 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
      v13 = dispatch_queue_create("com.apple.photos.picker.libraryopen", v12);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__PUPickerPrincipalUIViewController_updatePickerAsynchronouslyWithCompletion___block_invoke;
      block[3] = &unk_1E7B7FC38;
      block[4] = v7;
      block[5] = self;
      v25 = &v33;
      v26 = &v27;
      v24 = v4;
      dispatch_async(v13, block);
    }

    else
    {
      v14 = [v7 phPickerConfiguration];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E69790E0]);
      }

      v12 = v16;

      v17 = [(PUPickerPrincipalUIViewController *)self domainError];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [(PUPickerPrincipalUIViewController *)self configurationError];
      }

      v20 = v19;

      v21 = [MEMORY[0x1E6979158] unavailableViewController:0 configuration:v12 error:v20 delegate:self];
      v22 = v28[5];
      v28[5] = v21;

      [(PUPickerPrincipalUIViewController *)self finishUpdatePickerWithChildViewController:v28[5] coordinator:v34[5] completion:v4];
    }
  }

  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
}

void __78__PUPickerPrincipalUIViewController_updatePickerAsynchronouslyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v14 = 0;
  v3 = [v2 openAndWaitWithUpgrade:0 error:&v14];
  v4 = v14;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  block[2] = __78__PUPickerPrincipalUIViewController_updatePickerAsynchronouslyWithCompletion___block_invoke_2;
  block[3] = &unk_1E7B73F00;
  v13 = v3;
  v12 = *(a1 + 64);
  v10 = v4;
  v5 = v7;
  v11 = v7;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PUPickerPrincipalUIViewController_updatePickerAsynchronouslyWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = MEMORY[0x1E69C3380];
    v3 = [*(a1 + 32) photoLibrary];
    [v2 flushCachedBookmarksForPhotoLibrary:v3];

    v4 = [PUPickerCoordinator alloc];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v6 loadingStatusManager];
    v8 = [(PUPickerCoordinator *)v4 initWithPUConfiguration:v5 coordinatorActionHandler:v6 loadingStatusManager:v7];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(*(*(a1 + 64) + 8) + 40) viewController];
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    if ([*(a1 + 48) code] == 3108 || objc_msgSend(*(a1 + 48), "code") == 5403)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    v13 = [*(a1 + 32) phPickerConfiguration];
    v15 = [MEMORY[0x1E6979158] unavailableViewController:v14 configuration:v13 error:*(a1 + 48) delegate:*(a1 + 40)];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  v18 = *(a1 + 40);
  v19 = *(*(*(a1 + 72) + 8) + 40);
  v20 = *(a1 + 56);
  v21 = *(*(*(a1 + 64) + 8) + 40);

  return [v18 finishUpdatePickerWithChildViewController:v19 coordinator:v21 completion:v20];
}

- (void)processPendingUpdateConfigurationRequestIfNecessary
{
  if ([(PUPickerPrincipalUIViewController *)self isFileProviderSetupComplete])
  {
    v3 = [(PUPickerPrincipalUIViewController *)self pendingCompletionHandler];

    if (v3)
    {
      v4 = [(PUPickerPrincipalUIViewController *)self pendingCompletionHandler];
      v6 = [v4 copy];

      [(PUPickerPrincipalUIViewController *)self setPendingCompletionHandler:0];
      v5 = [(PUPickerPrincipalUIViewController *)self passedInConfiguration];
      [(PUPickerPrincipalUIViewController *)self processUpdateConfigurationRequest:v5 completionHandler:v6];
    }
  }
}

- (void)processUpdateConfigurationRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUPickerPrincipalUIViewController *)self isFileProviderSetupComplete])
  {
    if (v6)
    {
      v8 = [(PUPickerPrincipalUIViewController *)self configuration];
      [v8 unregisterChangeObserver:self context:PUPickerConfigurationObservationContext];

      v9 = [PUPickerConfiguration alloc];
      v10 = [(PUPickerPrincipalUIViewController *)self extensionContext];
      v11 = [v10 _auxiliaryConnection];
      v12 = [(PUPickerConfiguration *)v9 initWithPHPickerConfiguration:v6 connection:v11];
      [(PUPickerPrincipalUIViewController *)self setConfiguration:v12];

      v13 = [(PUPickerPrincipalUIViewController *)self configuration];
      [v13 registerChangeObserver:self context:PUPickerConfigurationObservationContext];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__PUPickerPrincipalUIViewController_processUpdateConfigurationRequest_completionHandler___block_invoke;
    v14[3] = &unk_1E7B80A18;
    v14[4] = self;
    v15 = v7;
    [(PUPickerPrincipalUIViewController *)self updatePickerAsynchronouslyWithCompletion:v14];
  }

  else
  {
    [(PUPickerPrincipalUIViewController *)self setPendingCompletionHandler:v7];
  }
}

void __89__PUPickerPrincipalUIViewController_processUpdateConfigurationRequest_completionHandler___block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = sPickerLaunchLog;
  v5 = v4;
  v6 = sSignpostID;
  if ((sSignpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Launch Picker View Controller", "", v10, 2u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [*(a1 + 32) configuration];
    if (v8)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    (*(v7 + 16))(v7, v9);
  }
}

- (void)setupFileProviderDomainAsynchronouslyWithCompletion:(id)a3
{
  v4 = a3;
  v3 = v4;
  PXAsynchronousAddPickerFileProviderDomain();
}

uint64_t __89__PUPickerPrincipalUIViewController_setupFileProviderDomainAsynchronouslyWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  [v7 setDomain:a2];
  [*(a1 + 32) setManager:v9];

  [*(a1 + 32) setDomainError:v8];
  [*(a1 + 32) setIsFileProviderSetupComplete:a2 != 0];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) isFileProviderSetupComplete]);
  v10 = *(a1 + 32);

  return [v10 processPendingUpdateConfigurationRequestIfNecessary];
}

- (void)keyCommandEscape
{
  v2 = [(PUPickerPrincipalUIViewController *)self coordinator];
  [v2 performCancellationAction];
}

- (void)keyCommandReturn
{
  v2 = [(PUPickerPrincipalUIViewController *)self coordinator];
  [v2 performConfirmationAction];
}

- (void)keyCommandZoomOut
{
  v2 = [(PUPickerPrincipalUIViewController *)self coordinator];
  [v2 zoomOutContent];
}

- (void)keyCommandZoomIn
{
  v2 = [(PUPickerPrincipalUIViewController *)self coordinator];
  [v2 zoomInContent];
}

- (id)keyCommands
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"+" modifierFlags:0x100000 action:sel_keyCommandZoomIn];
  v10[0] = v2;
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"=" modifierFlags:0x100000 action:sel_keyCommandZoomIn];
  v10[1] = v3;
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"-" modifierFlags:0x100000 action:sel_keyCommandZoomOut];
  v10[2] = v4;
  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"_" modifierFlags:0x100000 action:sel_keyCommandZoomOut];
  v10[3] = v5;
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_keyCommandReturn];
  v10[4] = v6;
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_keyCommandEscape];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = PUPickerPrincipalUIViewController;
  v4 = a3;
  [(PUPickerPrincipalUIViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(PUPickerPrincipalUIViewController *)self setPreferredContentSize:v6, v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = PUPickerPrincipalUIViewController;
  v4 = a3;
  [(PUPickerPrincipalUIViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(PUPickerPrincipalUIViewController *)self traitCollection:v9.receiver];
  v6 = [v5 _presentationSemanticContext];
  v7 = [v4 _presentationSemanticContext];

  if (v6 != v7)
  {
    v8 = [(PUPickerPrincipalUIViewController *)self view];
    [v8 setNeedsUpdateConstraints];

    [(PUPickerPrincipalUIViewController *)self updateModalInPresentation];
  }
}

- (void)updateViewConstraints
{
  v3 = [(PUPickerPrincipalUIViewController *)self traitCollection];
  v4 = [v3 _presentationSemanticContext];
  v5 = v4 == 3;
  v6 = v4 != 3;

  v7 = [(PUPickerPrincipalUIViewController *)self topConstraint];
  [v7 setActive:1];

  v8 = [(PUPickerPrincipalUIViewController *)self bottomConstraint];
  [v8 setActive:1];

  v9 = [(PUPickerPrincipalUIViewController *)self leadingConstraint];
  [v9 setActive:v6];

  v10 = [(PUPickerPrincipalUIViewController *)self trailingConstraint];
  [v10 setActive:v6];

  v11 = [(PUPickerPrincipalUIViewController *)self leadingSafeAreaConstraint];
  [v11 setActive:v5];

  v12 = [(PUPickerPrincipalUIViewController *)self trailingSafeAreaConstraint];
  [v12 setActive:v5];

  v13.receiver = self;
  v13.super_class = PUPickerPrincipalUIViewController;
  [(PUPickerPrincipalUIViewController *)&v13 updateViewConstraints];
}

+ (BOOL)shouldDebounceDidFinishPicking:(id)a3 previousSelectedObjectIDs:(id)a4 previousSelectionDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = [v7 isEqual:v8];
  }

  v11 = 0;
  if (v9 && v10)
  {
    [v9 timeIntervalSinceNow];
    v11 = fabs(v12) < 0.3;
  }

  return v11;
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_1137);
  }
}

void __47__PUPickerPrincipalUIViewController_initialize__block_invoke()
{
  [MEMORY[0x1E69C39C8] setSuiteName:@"com.apple.mobileslideshow"];
  v0 = os_log_create("com.apple.photos.picker-launch", "PointsOfInterest");
  v1 = sPickerLaunchLog;
  sPickerLaunchLog = v0;

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 removeObjectForKey:@"UIBarsApplyChromelessEverywhere"];
}

@end