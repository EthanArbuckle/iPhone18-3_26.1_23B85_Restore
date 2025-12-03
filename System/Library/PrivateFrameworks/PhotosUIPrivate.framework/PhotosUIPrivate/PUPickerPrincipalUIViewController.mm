@interface PUPickerPrincipalUIViewController
+ (BOOL)shouldDebounceDidFinishPicking:(id)picking previousSelectedObjectIDs:(id)ds previousSelectionDate:(id)date;
+ (void)initialize;
- (id)createSharedAlbumActionViewController;
- (id)keyCommands;
- (id)showProgress:(id)progress forAsset:(id)asset progressURL:(id)l;
- (void)_deselectItemsWithIdentifiers:(id)identifiers;
- (void)_hostModalInPresentationDidChange:(BOOL)change;
- (void)_moveItemWithIdentifier:(id)identifier afterIdentifier:(id)afterIdentifier;
- (void)_overrideSelectedItemsWithIdentifiers:(id)identifiers;
- (void)_pickerUnavailableViewControllerCancelButtonTapped:(id)tapped;
- (void)_popViewControllerWithReply:(id)reply;
- (void)_scrollContentToInitialPosition;
- (void)_searchWithString:(id)string;
- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers;
- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers;
- (void)_updateConfiguration:(id)configuration completionHandler:(id)handler;
- (void)_updatePickerUsingUpdateConfiguration:(id)configuration;
- (void)_zoomInContent;
- (void)_zoomOutContent;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)confirmConfidentialWarning:(id)warning completionHandler:(id)handler;
- (void)confirmUserSafetyIntervention:(id)intervention completionHandler:(id)handler;
- (void)coordinator:(id)coordinator didFinishPicking:(id)picking additionalSelectionState:(id)state action:(int64_t)action;
- (void)find:(id)find;
- (void)finishPicking:(id)picking additionalSelectionState:(id)state action:(int64_t)action;
- (void)finishProgress:(id)progress progressURL:(id)l trackingID:(id)d observation:(id)observation;
- (void)finishUpdatePickerWithChildViewController:(id)controller coordinator:(id)coordinator completion:(id)completion;
- (void)keyCommandEscape;
- (void)keyCommandReturn;
- (void)keyCommandZoomIn;
- (void)keyCommandZoomOut;
- (void)logExitIfNeeded:(id)needed;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)processPendingUpdateConfigurationRequestIfNecessary;
- (void)processUpdateConfigurationRequest:(id)request completionHandler:(id)handler;
- (void)setupFileProviderDomainAsynchronouslyWithCompletion:(id)completion;
- (void)sharedAlbumActionControllerDidCancel:(id)cancel;
- (void)sharedAlbumActionControllerDidFinish:(id)finish error:(id)error;
- (void)traitCollectionDidChange:(id)change;
- (void)updateModalInPresentation;
- (void)updatePickerAsynchronouslyWithCompletion:(id)completion;
- (void)updateViewConstraints;
@end

@implementation PUPickerPrincipalUIViewController

- (void)find:(id)find
{
  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  [coordinator makeSearchBarAsFirstResponder];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUPickerConfigurationObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:973 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v19 = observableCopy;
  if ((changeCopy & 4) != 0)
  {
    extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
    _auxiliaryConnection = [extensionContext _auxiliaryConnection];
    remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

    configuration = [(PUPickerPrincipalUIViewController *)self configuration];
    [remoteObjectProxy _pickerDidSetOnboardingOverlayDismissed:{objc_msgSend(configuration, "didDismissOnboardingOverlayView")}];

    observableCopy = v19;
  }

  if ((changeCopy & 8) != 0)
  {
    extensionContext2 = [(PUPickerPrincipalUIViewController *)self extensionContext];
    _auxiliaryConnection2 = [extensionContext2 _auxiliaryConnection];
    remoteObjectProxy2 = [_auxiliaryConnection2 remoteObjectProxy];

    configuration2 = [(PUPickerPrincipalUIViewController *)self configuration];
    [remoteObjectProxy2 _pickerDidSetOnboardingHeaderDismissed:{objc_msgSend(configuration2, "didDismissOnboardingHeaderView")}];

    observableCopy = v19;
  }
}

- (void)coordinator:(id)coordinator didFinishPicking:(id)picking additionalSelectionState:(id)state action:(int64_t)action
{
  coordinatorCopy = coordinator;
  pickingCopy = picking;
  stateCopy = state;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (coordinatorCopy)
    {
      goto LABEL_3;
    }

LABEL_16:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:901 description:{@"Invalid parameter not satisfying: %@", @"coordinator != nil"}];

    if (stateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:900 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController coordinator:didFinishPicking:additionalSelectionState:action:]"}];

  if (!coordinatorCopy)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (stateCopy)
  {
    goto LABEL_4;
  }

LABEL_17:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:902 description:{@"Invalid parameter not satisfying: %@", @"additionalSelectionState != nil"}];

LABEL_4:
  selectionDate = [(PUPickerPrincipalUIViewController *)self selectionDate];
  date = [MEMORY[0x1E695DF00] date];
  [(PUPickerPrincipalUIViewController *)self setSelectionDate:date];

  selectedObjectIDs = [(PUPickerPrincipalUIViewController *)self selectedObjectIDs];
  if (![PUPickerPrincipalUIViewController shouldDebounceDidFinishPicking:pickingCopy previousSelectedObjectIDs:selectedObjectIDs previousSelectionDate:selectionDate])
  {
    v46 = selectionDate;
    v47 = coordinatorCopy;
    v17 = action == 1;
    if (action == 2)
    {
      v17 = 2;
    }

    v48 = v17;
    v18 = objc_alloc(MEMORY[0x1E69788E0]);
    array = [pickingCopy array];
    v50 = pickingCopy;
    v20 = array;
    if (array)
    {
      v21 = array;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
    configuration = [coordinator configuration];
    [configuration photoLibrary];
    v24 = v49 = stateCopy;
    configuration2 = [(PUPickerPrincipalUIViewController *)self configuration];
    fetchType = [configuration2 fetchType];
    v27 = [v18 initWithOids:v21 photoLibrary:v24 fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];

    v28 = [v50 mutableCopy];
    v45 = selectedObjectIDs;
    [v28 minusOrderedSet:selectedObjectIDs];
    v29 = objc_alloc(MEMORY[0x1E69788E0]);
    v44 = v28;
    array2 = [v28 array];
    v31 = array2;
    if (array2)
    {
      v32 = array2;
    }

    else
    {
      v32 = MEMORY[0x1E695E0F0];
    }

    coordinator2 = [(PUPickerPrincipalUIViewController *)self coordinator];
    configuration3 = [coordinator2 configuration];
    photoLibrary = [configuration3 photoLibrary];
    configuration4 = [(PUPickerPrincipalUIViewController *)self configuration];
    fetchType2 = [configuration4 fetchType];
    v38 = v29;
    v39 = v27;
    v40 = [v38 initWithOids:v32 photoLibrary:photoLibrary fetchType:fetchType2 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

    pickingCopy = v50;
    stateCopy = v49;

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

    selectionDate = v46;
    coordinatorCopy = v47;
    selectedObjectIDs = v45;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:892 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _zoomOutContent]"}];
  }

  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  [coordinator zoomOutContent];
}

- (void)_zoomInContent
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:886 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _zoomInContent]"}];
  }

  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  [coordinator zoomInContent];
}

- (void)_scrollContentToInitialPosition
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:880 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _scrollContentToInitialPosition]"}];
  }

  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  [coordinator scrollContentToInitialPosition];
}

- (void)_popViewControllerWithReply:(id)reply
{
  replyCopy = reply;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:871 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _popViewControllerWithReply:]"}];
  }

  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  popViewController = [coordinator popViewController];

  v7 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, popViewController);
    v7 = replyCopy;
  }
}

- (void)_searchWithString:(id)string
{
  v12 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (stringCopy)
    {
LABEL_3:
      coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
      [coordinator searchWithString:stringCopy];
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:861 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _searchWithString:]"}];

    if (stringCopy)
    {
      goto LABEL_3;
    }
  }

  coordinator = PLPickerGetLog();
  if (os_log_type_enabled(coordinator, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v9 = 0;
    v10 = 2080;
    v11 = "[PUPickerPrincipalUIViewController _searchWithString:]";
    _os_log_impl(&dword_1B36F3000, coordinator, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_7:
}

- (void)_overrideSelectedItemsWithIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!identifiersCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:850 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _overrideSelectedItemsWithIdentifiers:]"}];

    if (!identifiersCopy)
    {
      goto LABEL_6;
    }
  }

  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  configuration = [coordinator configuration];
  receivedPhotoLibrary = [configuration receivedPhotoLibrary];

  if (receivedPhotoLibrary)
  {
    programmaticallySelectedItemIdentifiers = [(PUPickerPrincipalUIViewController *)self programmaticallySelectedItemIdentifiers];
    [programmaticallySelectedItemIdentifiers addObjectsFromArray:identifiersCopy];

    coordinator2 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [coordinator2 overrideSelectedItemsWithIdentifiers:identifiersCopy];
    goto LABEL_8;
  }

LABEL_6:
  coordinator2 = PLPickerGetLog();
  if (os_log_type_enabled(coordinator2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v13 = identifiersCopy;
    v14 = 2080;
    v15 = "[PUPickerPrincipalUIViewController _overrideSelectedItemsWithIdentifiers:]";
    _os_log_impl(&dword_1B36F3000, coordinator2, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_8:
}

- (void)_moveItemWithIdentifier:(id)identifier afterIdentifier:(id)afterIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  afterIdentifierCopy = afterIdentifier;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!identifierCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:840 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _moveItemWithIdentifier:afterIdentifier:]"}];

    if (!identifierCopy)
    {
      goto LABEL_6;
    }
  }

  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  configuration = [coordinator configuration];
  receivedPhotoLibrary = [configuration receivedPhotoLibrary];

  if (receivedPhotoLibrary)
  {
    coordinator2 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [coordinator2 moveItemWithIdentifier:identifierCopy afterIdentifier:afterIdentifierCopy];
    goto LABEL_8;
  }

LABEL_6:
  coordinator2 = PLPickerGetLog();
  if (os_log_type_enabled(coordinator2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v15 = identifierCopy;
    v16 = 2112;
    v17 = afterIdentifierCopy;
    v18 = 2080;
    v19 = "[PUPickerPrincipalUIViewController _moveItemWithIdentifier:afterIdentifier:]";
    _os_log_impl(&dword_1B36F3000, coordinator2, OS_LOG_TYPE_ERROR, "Invalid inputs (%@, %@) received: %s", buf, 0x20u);
  }

LABEL_8:
}

- (void)_deselectItemsWithIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:830 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _deselectItemsWithIdentifiers:]"}];
  }

  if ([identifiersCopy count] && (-[PUPickerPrincipalUIViewController coordinator](self, "coordinator"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "configuration"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "receivedPhotoLibrary"), v7, v6, v8))
  {
    coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
    [coordinator deselectItemsWithIdentifiers:identifiersCopy];
  }

  else
  {
    coordinator = PLPickerGetLog();
    if (os_log_type_enabled(coordinator, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = identifiersCopy;
      v13 = 2080;
      v14 = "[PUPickerPrincipalUIViewController _deselectItemsWithIdentifiers:]";
      _os_log_impl(&dword_1B36F3000, coordinator, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
    }
  }
}

- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers
{
  v15 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!identifiersCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:820 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _stopActivityIndicatorsForAssetsWithIdentifiers:]"}];

    if (!identifiersCopy)
    {
      goto LABEL_6;
    }
  }

  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  configuration = [coordinator configuration];
  receivedPhotoLibrary = [configuration receivedPhotoLibrary];

  if (receivedPhotoLibrary)
  {
    coordinator2 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [coordinator2 stopActivityIndicatorsForAssetsWithIdentifiers:identifiersCopy];
    goto LABEL_8;
  }

LABEL_6:
  coordinator2 = PLPickerGetLog();
  if (os_log_type_enabled(coordinator2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v12 = identifiersCopy;
    v13 = 2080;
    v14 = "[PUPickerPrincipalUIViewController _stopActivityIndicatorsForAssetsWithIdentifiers:]";
    _os_log_impl(&dword_1B36F3000, coordinator2, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_8:
}

- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!identifiersCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:808 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _startActivityIndicatorsForAssetsWithIdentifiers:]"}];

    if (!identifiersCopy)
    {
      goto LABEL_6;
    }
  }

  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  configuration = [coordinator configuration];
  receivedPhotoLibrary = [configuration receivedPhotoLibrary];

  if (receivedPhotoLibrary)
  {
    configuration2 = [(PUPickerPrincipalUIViewController *)self configuration];
    photoLibrary = [configuration2 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v12 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
    coordinator2 = [(PUPickerPrincipalUIViewController *)self coordinator];
    [coordinator2 startActivityIndicatorsForAssetsWithFetchResult:v12];

    goto LABEL_9;
  }

LABEL_6:
  v15 = PLPickerGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = identifiersCopy;
    v18 = 2080;
    v19 = "[PUPickerPrincipalUIViewController _startActivityIndicatorsForAssetsWithIdentifiers:]";
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Invalid inputs (%@) received: %s", buf, 0x16u);
  }

LABEL_9:
}

- (void)_hostModalInPresentationDidChange:(BOOL)change
{
  changeCopy = change;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:789 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _hostModalInPresentationDidChange:]"}];
  }

  if ([(PUPickerPrincipalUIViewController *)self isModalInPresentation]!= changeCopy)
  {

    [(PUPickerPrincipalUIViewController *)self setModalInPresentation:changeCopy];
  }
}

- (void)_updatePickerUsingUpdateConfiguration:(id)configuration
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (!configurationCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:745 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _updatePickerUsingUpdateConfiguration:]"}];

    if (!configurationCopy)
    {
      goto LABEL_15;
    }
  }

  if ([configurationCopy _isValidConfiguration])
  {
    _sharedAlbumSheetConfiguration = [configurationCopy _sharedAlbumSheetConfiguration];

    if (_sharedAlbumSheetConfiguration)
    {
      childViewControllers = [(PUPickerPrincipalUIViewController *)self childViewControllers];
      firstObject = [childViewControllers firstObject];

      v9 = firstObject;
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v10 = v9;

        if (v10)
        {
          v11 = MEMORY[0x1E6978830];
          configuration = [(PUPickerPrincipalUIViewController *)self configuration];
          photoLibrary = [configuration photoLibrary];
          v14 = [v11 fetchOptionsWithInclusiveDefaultsForPhotoLibrary:photoLibrary];

          _sharedAlbumSheetConfiguration2 = [configurationCopy _sharedAlbumSheetConfiguration];
          v16 = PLPickerGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            defaultAlbumIdentifier = [_sharedAlbumSheetConfiguration2 defaultAlbumIdentifier];
            itemIdentifiers = [_sharedAlbumSheetConfiguration2 itemIdentifiers];
            *buf = 138412546;
            v29 = defaultAlbumIdentifier;
            v30 = 2112;
            v31 = itemIdentifiers;
            _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Updating PXSharedAlbumActionNavigationController for with album identifier: %@ and itemIdentifiers: %@", buf, 0x16u);
          }

          v19 = MEMORY[0x1E6978630];
          itemIdentifiers2 = [_sharedAlbumSheetConfiguration2 itemIdentifiers];
          v21 = [v19 fetchAssetsWithLocalIdentifiers:itemIdentifiers2 options:v14];

          fetchedObjects = [v21 fetchedObjects];
          [v10 setAssets:fetchedObjects];
        }
      }

      else
      {

        v10 = 0;
      }
    }

    configuration2 = [(PUPickerPrincipalUIViewController *)self configuration];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__PUPickerPrincipalUIViewController__updatePickerUsingUpdateConfiguration___block_invoke;
    v26[3] = &unk_1E7B73F78;
    v27 = configurationCopy;
    [configuration2 performChanges:v26];

    v24 = v27;
    goto LABEL_17;
  }

LABEL_15:
  v24 = PLPickerGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v29 = configurationCopy;
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

- (void)_updateConfiguration:(id)configuration completionHandler:(id)handler
{
  v7 = MEMORY[0x1E696AF00];
  handlerCopy = handler;
  configurationCopy = configuration;
  if (([v7 isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:734 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _updateConfiguration:completionHandler:]"}];
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

  [(PUPickerPrincipalUIViewController *)self setPassedInConfiguration:configurationCopy];
  [(PUPickerPrincipalUIViewController *)self processUpdateConfigurationRequest:configurationCopy completionHandler:handlerCopy];
}

- (void)_pickerUnavailableViewControllerCancelButtonTapped:(id)tapped
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:725 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController _pickerUnavailableViewControllerCancelButtonTapped:]"}];
  }

  extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  [remoteObjectProxy _pickerDidFinishPicking:0 action:2 error:0];
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:680 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController beginRequestWithExtensionContext:]"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:681 description:{@"Invalid parameter not satisfying: %@", @"[context isKindOfClass:PUPickerExtensionVendorContext.class]"}];
  }

  v17.receiver = self;
  v17.super_class = PUPickerPrincipalUIViewController;
  v6 = [(PUPickerPrincipalUIViewController *)&v17 beginRequestWithExtensionContext:contextCopy];
  if (MEMORY[0x1B8C6E6A0](v6))
  {
    extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
    _auxiliaryConnection = [extensionContext _auxiliaryConnection];
    v9 = PLClientApplicationIdentifierFromXPCConnection();

    MEMORY[0x1B8C6E6B0](v9);
  }

  [(PUPickerPrincipalUIViewController *)self setIsFileProviderSetupComplete:0];
  [(PUPickerPrincipalUIViewController *)self setPendingCompletionHandler:0];
  v10 = objc_alloc_init(MEMORY[0x1E69C4558]);
  [(PUPickerPrincipalUIViewController *)self setLoadingStatusManager:v10];

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PUPickerPrincipalUIViewController *)self setProgressSubscribers:v11];

  [contextCopy setDelegate:self];
  [(PUPickerPrincipalUIViewController *)self setupFileProviderDomainAsynchronouslyWithCompletion:&__block_literal_global_320];
  v12 = MEMORY[0x1E6979148];
  _auxiliaryConnection2 = [contextCopy _auxiliaryConnection];
  remoteObjectInterface = [_auxiliaryConnection2 remoteObjectInterface];
  [v12 setAllowedClassesForExtensionAuxiliaryHostInterface:remoteObjectInterface];
}

uint64_t __70__PUPickerPrincipalUIViewController_beginRequestWithExtensionContext___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return MEMORY[0x1EEE2D218]();
  }

  return result;
}

- (void)sharedAlbumActionControllerDidCancel:(id)cancel
{
  extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  [remoteObjectProxy _pickerDidFinishPicking:0 action:2 error:0];
}

- (void)sharedAlbumActionControllerDidFinish:(id)finish error:(id)error
{
  errorCopy = error;
  extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  if (errorCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  [remoteObjectProxy _pickerDidFinishPicking:v8 action:1 error:errorCopy];
}

- (void)finishPicking:(id)picking additionalSelectionState:(id)state action:(int64_t)action
{
  v138 = *MEMORY[0x1E69E9840];
  pickingCopy = picking;
  stateCopy = state;
  val = self;
  extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
  _auxiliaryConnection = [extensionContext _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  coordinator = [(PUPickerPrincipalUIViewController *)val coordinator];
  configuration = [coordinator configuration];

  registerConfiguration = [stateCopy registerConfiguration];
  coordinator2 = [(PUPickerPrincipalUIViewController *)val coordinator];
  [coordinator2 isShowingLiveWallpaperSuggestions];
  PXPickerFileProviderRegisterConfigurationSetIsLiveWallpaperSuggestion();

  coordinator3 = [(PUPickerPrincipalUIViewController *)val coordinator];
  [coordinator3 isShowingSpatialWallpaperSuggestions];
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

  programmaticallySelectedItemIdentifiers = [(PUPickerPrincipalUIViewController *)val programmaticallySelectedItemIdentifiers];
  [programmaticallySelectedItemIdentifiers intersectSet:v91];

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  progressSubscribers = [(PUPickerPrincipalUIViewController *)val progressSubscribers];
  allValues = [progressSubscribers allValues];

  v19 = [allValues countByEnumeratingWithState:&v130 objects:v137 count:16];
  if (v19)
  {
    v20 = *v131;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v131 != v20)
        {
          objc_enumerationMutation(allValues);
        }

        [MEMORY[0x1E696AE38] removeSubscriber:*(*(&v130 + 1) + 8 * i)];
      }

      v19 = [allValues countByEnumeratingWithState:&v130 objects:v137 count:16];
    }

    while (v19);
  }

  progressSubscribers2 = [(PUPickerPrincipalUIViewController *)val progressSubscribers];
  [progressSubscribers2 removeAllObjects];

  coordinator4 = [(PUPickerPrincipalUIViewController *)val coordinator];
  [coordinator4 emitDidFinishPickingAnalytics];

  if ([configuration isLimitedLibraryPicker])
  {
    v24 = PXMap();
    limitedLibraryClientIdentifier = [configuration limitedLibraryClientIdentifier];
    v128 = 0u;
    v129 = 0u;
    pickerClientIdentification = [configuration pickerClientIdentification];
    v27 = pickerClientIdentification;
    if (pickerClientIdentification)
    {
      [pickerClientIdentification clientAuditToken];
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
      *&buf[4] = limitedLibraryClientIdentifier;
      _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_DEFAULT, "Sending updated limited library for application %@", buf, 0xCu);
    }

    photoLibrary = [configuration photoLibrary];
    assetsdClient = [photoLibrary assetsdClient];
    libraryInternalClient = [assetsdClient libraryInternalClient];
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __83__PUPickerPrincipalUIViewController_finishPicking_additionalSelectionState_action___block_invoke_300;
    v127[3] = &unk_1E7B80280;
    v127[4] = limitedLibraryClientIdentifier;
    *buf = v128;
    *&buf[16] = v129;
    [libraryInternalClient setFetchFilterWithAssets:v24 forApplication:limitedLibraryClientIdentifier withAuditToken:buf completionHandler:v127];

    fetchedObjectIDsSet = [pickingCopy fetchedObjectIDsSet];
    v33 = [fetchedObjectIDsSet mutableCopy];

    preselectedItemObjectIDs = [configuration preselectedItemObjectIDs];
    v35 = [preselectedItemObjectIDs set];
    [v33 minusSet:v35];

    v36 = objc_alloc(MEMORY[0x1E69788E0]);
    allObjects = [v33 allObjects];
    v38 = [v36 initWithExistingFetchResult:pickingCopy filteredObjectIDs:allObjects];

    pickingCopy = v38;
  }

  confirmationBehavior = [configuration confirmationBehavior];
  if (confirmationBehavior <= 4 && ((1 << confirmationBehavior) & 0x13) != 0)
  {
    coordinator5 = [(PUPickerPrincipalUIViewController *)val coordinator];
    [coordinator5 resignSearchBarAsFirstResponder];
  }

  if ([pickingCopy count])
  {
    allowsAssetData = [configuration allowsAssetData];
    allowsIdentifiers = [configuration allowsIdentifiers];
    programmaticallySelectedItemIdentifiers2 = [(PUPickerPrincipalUIViewController *)val programmaticallySelectedItemIdentifiers];
    manager = [(PUPickerPrincipalUIViewController *)val manager];
    domain = [(PUPickerPrincipalUIViewController *)val domain];
    v95 = PXPickerFileProviderRegister();

    v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    obj = pickingCopy;
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
          if (((v108 != 0) & allowsAssetData) == 1)
          {
            localIdentifier = [v108 localIdentifier];
            v48 = [programmaticallySelectedItemIdentifiers2 containsObject:localIdentifier];

            if ((v48 & 1) == 0)
            {
              v128 = 0u;
              v129 = 0u;
              pickerClientIdentification2 = [configuration pickerClientIdentification];
              v50 = pickerClientIdentification2;
              if (pickerClientIdentification2)
              {
                [pickerClientIdentification2 clientAuditToken];
              }

              else
              {
                v128 = 0u;
                v129 = 0u;
              }

              originalFilename = [v108 originalFilename];
              stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];
              [v107 setSuggestedName:stringByDeletingPathExtension];

              phPickerConfiguration = [configuration phPickerConfiguration];
              [v107 setAllowsItemProviderOpenInPlace:{objc_msgSend(phPickerConfiguration, "_usesOpenPanelLayout")}];

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
                      path = [v59 path];
                      *buf = v128;
                      *&buf[16] = v129;
                      v61 = PLGetSandboxExtensionTokenForProcess();

                      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
                      path2 = [v59 path];
                      v64 = [defaultManager fileExistsAtPath:path2];

                      if ((v64 & 1) == 0)
                      {
                        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
                        uRLByDeletingLastPathComponent = [v59 URLByDeletingLastPathComponent];
                        v117 = 0;
                        v67 = [defaultManager2 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v117];
                        v68 = v117;

                        if ((v67 & 1) == 0)
                        {
                          v69 = PLPickerGetLog();
                          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                          {
                            v70 = [v59 description];
                            localizedDescription = [v68 localizedDescription];
                            *buf = 138412546;
                            *&buf[4] = v70;
                            *&buf[12] = 2112;
                            *&buf[14] = localizedDescription;
                            _os_log_impl(&dword_1B36F3000, v69, OS_LOG_TYPE_ERROR, "Failed to create directory at path:%@ Error:%@", buf, 0x16u);
                          }
                        }

                        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
                        path3 = [v59 path];
                        [defaultManager3 createFileAtPath:path3 contents:0 attributes:0];
                      }

                      progressSubscribers3 = [(PUPickerPrincipalUIViewController *)val progressSubscribers];
                      v75 = [progressSubscribers3 objectForKeyedSubscript:v59];
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
                          progressSubscribers4 = [(PUPickerPrincipalUIViewController *)val progressSubscribers];
                          [progressSubscribers4 setObject:v78 forKeyedSubscript:v59];

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

              localIdentifier2 = [v106 localIdentifier];
              [v107 setItemIdentifier:localIdentifier2];

              objc_destroyWeak(&location);
            }
          }

          v84 = objc_alloc(MEMORY[0x1E69790F0]);
          v85 = objc_alloc_init(MEMORY[0x1E696ACA0]);
          if (allowsIdentifiers)
          {
            localIdentifier3 = [v106 localIdentifier];
            v87 = [v84 _initWithItemProvider:v85 itemIdentifier:localIdentifier3 isAssetResult:v108 != 0 metadata:v107];
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
    [remoteObjectProxy _pickerDidFinishPicking:v88 action:action error:0];
  }

  else
  {
    [remoteObjectProxy _pickerDidFinishPicking:0 action:action error:0];
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

- (void)finishProgress:(id)progress progressURL:(id)l trackingID:(id)d observation:(id)observation
{
  observationCopy = observation;
  dCopy = d;
  lCopy = l;
  progressCopy = progress;
  isCancelled = [progressCopy isCancelled];
  loadingStatusManager = [(PUPickerPrincipalUIViewController *)self loadingStatusManager];
  v16 = loadingStatusManager;
  if (isCancelled)
  {
    [loadingStatusManager didCancelLoadOperationWithTrackingID:dCopy];
  }

  else
  {
    [loadingStatusManager didCompleteLoadOperationWithTrackingID:dCopy withSuccess:1 error:0];
  }

  [progressCopy removeObservation:observationCopy];
  v17 = MEMORY[0x1E696AE38];
  progressSubscribers = [(PUPickerPrincipalUIViewController *)self progressSubscribers];
  v19 = [progressSubscribers objectForKeyedSubscript:lCopy];
  [v17 removeSubscriber:v19];

  progressSubscribers2 = [(PUPickerPrincipalUIViewController *)self progressSubscribers];
  [progressSubscribers2 setObject:0 forKeyedSubscript:lCopy];
}

- (id)showProgress:(id)progress forAsset:(id)asset progressURL:(id)l
{
  progressCopy = progress;
  assetCopy = asset;
  lCopy = l;
  loadingStatusManager = [(PUPickerPrincipalUIViewController *)self loadingStatusManager];
  uuid = [assetCopy uuid];
  v13 = [loadingStatusManager willBeginLoadOperationWithItemIdentifier:uuid];

  objc_initWeak(&location, self);
  v14 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:progressCopy path:"fractionCompleted"];
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
  v25 = progressCopy;
  v26 = lCopy;
  v27 = v15;
  v28 = v16;
  v17 = v16;
  v18 = v15;
  v19 = lCopy;
  v20 = progressCopy;
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

- (void)confirmUserSafetyIntervention:(id)intervention completionHandler:(id)handler
{
  interventionCopy = intervention;
  handlerCopy = handler;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (interventionCopy)
    {
      goto LABEL_3;
    }

LABEL_20:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:451 description:{@"Invalid parameter not satisfying: %@", @"fetchResult != nil"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:450 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController confirmUserSafetyIntervention:completionHandler:]"}];

  if (!interventionCopy)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_21:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];

LABEL_4:
  configuration = [(PUPickerPrincipalUIViewController *)self configuration];
  confirmationBehavior = [configuration confirmationBehavior];

  v12 = confirmationBehavior == 2 || confirmationBehavior == 4;
  fetchType = [interventionCopy fetchType];
  v14 = fetchType;
  if (fetchType != *MEMORY[0x1E6978D98])
  {

LABEL_17:
    handlerCopy[2](handlerCopy, 1);
    goto LABEL_18;
  }

  configuration2 = [(PUPickerPrincipalUIViewController *)self configuration];
  shouldShowCommunicationSafetyIntervention = [configuration2 shouldShowCommunicationSafetyIntervention];

  if (!shouldShowCommunicationSafetyIntervention)
  {
    goto LABEL_17;
  }

  [(PUPickerPrincipalUIViewController *)self setSensitivityInterventionManager:0];
  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  v18 = coordinator;
  if (v12)
  {
    v19 = interventionCopy;
  }

  else
  {
    v19 = 0;
  }

  [coordinator startActivityIndicatorsForAssetsWithFetchResult:v19];

  v20 = MEMORY[0x1E69C3A20];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __85__PUPickerPrincipalUIViewController_confirmUserSafetyIntervention_completionHandler___block_invoke;
  v24[3] = &unk_1E7B7C1F0;
  v24[4] = self;
  v25 = interventionCopy;
  v26 = handlerCopy;
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

- (void)confirmConfidentialWarning:(id)warning completionHandler:(id)handler
{
  warningCopy = warning;
  handlerCopy = handler;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (warningCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"fetchResult != nil"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:430 description:{@"%s must be called on the main thread", "-[PUPickerPrincipalUIViewController confirmConfidentialWarning:completionHandler:]"}];

  if (!warningCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:432 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];

LABEL_4:
  fetchType = [warningCopy fetchType];
  if (fetchType != *MEMORY[0x1E6978D98])
  {
LABEL_10:

    goto LABEL_11;
  }

  configuration = [(PUPickerPrincipalUIViewController *)self configuration];
  if (![configuration allowsConfidentialWarning] || (objc_msgSend(MEMORY[0x1E69C3A10], "confidentialityCheckRequired") & 1) == 0)
  {

    goto LABEL_10;
  }

  v11 = MEMORY[0x1E69C3A10];
  fetchedObjects = [warningCopy fetchedObjects];
  LODWORD(v11) = [v11 confidentialWarningRequiredForAssets:fetchedObjects];

  if (!v11)
  {
LABEL_11:
    handlerCopy[2](handlerCopy, 1);
    goto LABEL_12;
  }

  v13 = MEMORY[0x1E69C3A10];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__PUPickerPrincipalUIViewController_confirmConfidentialWarning_completionHandler___block_invoke;
  v20[3] = &unk_1E7B80980;
  v21 = handlerCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__PUPickerPrincipalUIViewController_confirmConfidentialWarning_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7B80980;
  v19 = v21;
  v14 = [v13 confidentialityAlertWithConfirmAction:v20 abortAction:v18];
  [(PUPickerPrincipalUIViewController *)self px_presentOverTopmostPresentedViewController:v14 animated:1 completion:0];

LABEL_12:
}

- (void)logExitIfNeeded:(id)needed
{
  neededCopy = needed;
  if (!neededCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerPrincipalUIViewController.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"fetchResult != nil"}];
  }

  if (MEMORY[0x1B8C6E6A0]() && [neededCopy count])
  {
    fetchedObjects = [neededCopy fetchedObjects];
    v6 = PXMap();

    v7 = MEMORY[0x1E6978630];
    coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
    configuration = [coordinator configuration];
    photoLibrary = [configuration photoLibrary];
    v11 = [v7 countOfAssetsWithLocationFromUUIDs:v6 photoLibrary:photoLibrary];

    if (v11 >= 1)
    {
      extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
      _auxiliaryConnection = [extensionContext _auxiliaryConnection];
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
  configuration = [(PUPickerPrincipalUIViewController *)self configuration];
  phPickerConfiguration = [configuration phPickerConfiguration];
  _disabledPrivateCapabilities = [phPickerConfiguration _disabledPrivateCapabilities];

  if ((_disabledPrivateCapabilities & 0x40) == 0)
  {
    traitCollection = [(PUPickerPrincipalUIViewController *)self traitCollection];
    _presentationSemanticContext = [traitCollection _presentationSemanticContext];

    isModalInPresentation = [(PUPickerPrincipalUIViewController *)self isModalInPresentation];
    if (_presentationSemanticContext == 3)
    {
      if ((isModalInPresentation & 1) == 0)
      {
        return;
      }

      selectionDidChange = 0;
    }

    else if (isModalInPresentation)
    {
      if (([(PUPickerPrincipalUIViewController *)self isModalInPresentation]& 1) != 0)
      {
        return;
      }

      selectionDidChange = 1;
    }

    else
    {
      coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
      selectionDidChange = [coordinator selectionDidChange];

      if (selectionDidChange == [(PUPickerPrincipalUIViewController *)self isModalInPresentation])
      {
        return;
      }
    }

    [(PUPickerPrincipalUIViewController *)self setModalInPresentation:selectionDidChange];
    extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
    _auxiliaryConnection = [extensionContext _auxiliaryConnection];
    remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

    [remoteObjectProxy _pickerDidSetModalInPresentation:selectionDidChange];
  }
}

- (id)createSharedAlbumActionViewController
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978830];
  configuration = [(PUPickerPrincipalUIViewController *)self configuration];
  photoLibrary = [configuration photoLibrary];
  v6 = [v3 fetchOptionsWithInclusiveDefaultsForPhotoLibrary:photoLibrary];

  configuration2 = [(PUPickerPrincipalUIViewController *)self configuration];
  phPickerConfiguration = [configuration2 phPickerConfiguration];
  _sharedAlbumSheetConfiguration = [phPickerConfiguration _sharedAlbumSheetConfiguration];

  v10 = PLPickerGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    defaultAlbumIdentifier = [_sharedAlbumSheetConfiguration defaultAlbumIdentifier];
    itemIdentifiers = [_sharedAlbumSheetConfiguration itemIdentifiers];
    v23 = 138412546;
    v24 = defaultAlbumIdentifier;
    v25 = 2112;
    v26 = itemIdentifiers;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Creating PXSharedAlbumActionNavigationController for with album identifier: %@ and itemIdentifiers: %@", &v23, 0x16u);
  }

  v13 = MEMORY[0x1E6978630];
  itemIdentifiers2 = [_sharedAlbumSheetConfiguration itemIdentifiers];
  v15 = [v13 fetchAssetsWithLocalIdentifiers:itemIdentifiers2 options:v6];

  fetchedObjects = [v15 fetchedObjects];
  v17 = PLPickerGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [fetchedObjects count];
    v23 = 134217984;
    v24 = v18;
    _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "Fetched assets for PXSharedAlbumActionNavigationController with asset count %ld", &v23, 0xCu);
  }

  v19 = objc_alloc(MEMORY[0x1E69C39E0]);
  defaultAlbumIdentifier2 = [_sharedAlbumSheetConfiguration defaultAlbumIdentifier];
  v21 = [v19 initWithAssets:fetchedObjects batchComment:&stru_1F2AC6818 perAssetCreationOptions:0 selectedPostToAlbumUUID:defaultAlbumIdentifier2];

  [v21 setActionControllerDelegate:self];

  return v21;
}

- (void)finishUpdatePickerWithChildViewController:(id)controller coordinator:(id)coordinator completion:(id)completion
{
  coordinatorCopy = coordinator;
  completionCopy = completion;
  controllerCopy = controller;
  [(PUPickerPrincipalUIViewController *)self setCoordinator:coordinatorCopy];
  [controllerCopy preferredContentSize];
  [(PUPickerPrincipalUIViewController *)self setPreferredContentSize:?];
  [(PUPickerPrincipalUIViewController *)self px_addOrReplaceChildViewController:controllerCopy activateConstraints:0];
  view = [(PUPickerPrincipalUIViewController *)self view];
  view2 = [controllerCopy view];

  topAnchor = [view topAnchor];
  topAnchor2 = [view2 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(PUPickerPrincipalUIViewController *)self setTopConstraint:v15];

  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(PUPickerPrincipalUIViewController *)self setBottomConstraint:v18];

  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [view2 leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(PUPickerPrincipalUIViewController *)self setLeadingConstraint:v21];

  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [view2 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(PUPickerPrincipalUIViewController *)self setTrailingConstraint:v24];

  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leadingAnchor3 = [safeAreaLayoutGuide leadingAnchor];
  leadingAnchor4 = [view2 leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [(PUPickerPrincipalUIViewController *)self setLeadingSafeAreaConstraint:v28];

  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  trailingAnchor3 = [safeAreaLayoutGuide2 trailingAnchor];
  trailingAnchor4 = [view2 trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [(PUPickerPrincipalUIViewController *)self setTrailingSafeAreaConstraint:v32];

  [view setNeedsUpdateConstraints];
  window = [view window];
  [window setCanResizeToFitContent:1];

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __102__PUPickerPrincipalUIViewController_finishUpdatePickerWithChildViewController_coordinator_completion___block_invoke;
  v36[3] = &unk_1E7B7C590;
  v36[4] = view;
  v36[5] = self;
  v37 = coordinatorCopy;
  v38 = completionCopy;
  v34 = completionCopy;
  v35 = coordinatorCopy;
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

- (void)updatePickerAsynchronouslyWithCompletion:(id)completion
{
  completionCopy = completion;
  manager = [(PUPickerPrincipalUIViewController *)self manager];
  domain = [(PUPickerPrincipalUIViewController *)self domain];
  configuration = [(PUPickerPrincipalUIViewController *)self configuration];
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
  phPickerConfiguration = [configuration phPickerConfiguration];
  _sharedAlbumSheetConfiguration = [phPickerConfiguration _sharedAlbumSheetConfiguration];

  if (_sharedAlbumSheetConfiguration)
  {
    createSharedAlbumActionViewController = [(PUPickerPrincipalUIViewController *)self createSharedAlbumActionViewController];
    v11 = v28[5];
    v28[5] = createSharedAlbumActionViewController;

    [(PUPickerPrincipalUIViewController *)self finishUpdatePickerWithChildViewController:v28[5] coordinator:v34[5] completion:completionCopy];
  }

  else
  {
    if (manager && domain && configuration)
    {
      v12 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
      v13 = dispatch_queue_create("com.apple.photos.picker.libraryopen", v12);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__PUPickerPrincipalUIViewController_updatePickerAsynchronouslyWithCompletion___block_invoke;
      block[3] = &unk_1E7B7FC38;
      block[4] = configuration;
      block[5] = self;
      v25 = &v33;
      v26 = &v27;
      v24 = completionCopy;
      dispatch_async(v13, block);
    }

    else
    {
      phPickerConfiguration2 = [configuration phPickerConfiguration];
      v15 = phPickerConfiguration2;
      if (phPickerConfiguration2)
      {
        v16 = phPickerConfiguration2;
      }

      else
      {
        v16 = objc_alloc_init(MEMORY[0x1E69790E0]);
      }

      v12 = v16;

      domainError = [(PUPickerPrincipalUIViewController *)self domainError];
      v18 = domainError;
      if (domainError)
      {
        configurationError = domainError;
      }

      else
      {
        configurationError = [(PUPickerPrincipalUIViewController *)self configurationError];
      }

      v20 = configurationError;

      v21 = [MEMORY[0x1E6979158] unavailableViewController:0 configuration:v12 error:v20 delegate:self];
      v22 = v28[5];
      v28[5] = v21;

      [(PUPickerPrincipalUIViewController *)self finishUpdatePickerWithChildViewController:v28[5] coordinator:v34[5] completion:completionCopy];
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
    pendingCompletionHandler = [(PUPickerPrincipalUIViewController *)self pendingCompletionHandler];

    if (pendingCompletionHandler)
    {
      pendingCompletionHandler2 = [(PUPickerPrincipalUIViewController *)self pendingCompletionHandler];
      v6 = [pendingCompletionHandler2 copy];

      [(PUPickerPrincipalUIViewController *)self setPendingCompletionHandler:0];
      passedInConfiguration = [(PUPickerPrincipalUIViewController *)self passedInConfiguration];
      [(PUPickerPrincipalUIViewController *)self processUpdateConfigurationRequest:passedInConfiguration completionHandler:v6];
    }
  }
}

- (void)processUpdateConfigurationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([(PUPickerPrincipalUIViewController *)self isFileProviderSetupComplete])
  {
    if (requestCopy)
    {
      configuration = [(PUPickerPrincipalUIViewController *)self configuration];
      [configuration unregisterChangeObserver:self context:PUPickerConfigurationObservationContext];

      v9 = [PUPickerConfiguration alloc];
      extensionContext = [(PUPickerPrincipalUIViewController *)self extensionContext];
      _auxiliaryConnection = [extensionContext _auxiliaryConnection];
      v12 = [(PUPickerConfiguration *)v9 initWithPHPickerConfiguration:requestCopy connection:_auxiliaryConnection];
      [(PUPickerPrincipalUIViewController *)self setConfiguration:v12];

      configuration2 = [(PUPickerPrincipalUIViewController *)self configuration];
      [configuration2 registerChangeObserver:self context:PUPickerConfigurationObservationContext];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__PUPickerPrincipalUIViewController_processUpdateConfigurationRequest_completionHandler___block_invoke;
    v14[3] = &unk_1E7B80A18;
    v14[4] = self;
    v15 = handlerCopy;
    [(PUPickerPrincipalUIViewController *)self updatePickerAsynchronouslyWithCompletion:v14];
  }

  else
  {
    [(PUPickerPrincipalUIViewController *)self setPendingCompletionHandler:handlerCopy];
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

- (void)setupFileProviderDomainAsynchronouslyWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = completionCopy;
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
  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  [coordinator performCancellationAction];
}

- (void)keyCommandReturn
{
  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  [coordinator performConfirmationAction];
}

- (void)keyCommandZoomOut
{
  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  [coordinator zoomOutContent];
}

- (void)keyCommandZoomIn
{
  coordinator = [(PUPickerPrincipalUIViewController *)self coordinator];
  [coordinator zoomInContent];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = PUPickerPrincipalUIViewController;
  containerCopy = container;
  [(PUPickerPrincipalUIViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(PUPickerPrincipalUIViewController *)self setPreferredContentSize:v6, v8];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = PUPickerPrincipalUIViewController;
  changeCopy = change;
  [(PUPickerPrincipalUIViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(PUPickerPrincipalUIViewController *)self traitCollection:v9.receiver];
  _presentationSemanticContext = [v5 _presentationSemanticContext];
  _presentationSemanticContext2 = [changeCopy _presentationSemanticContext];

  if (_presentationSemanticContext != _presentationSemanticContext2)
  {
    view = [(PUPickerPrincipalUIViewController *)self view];
    [view setNeedsUpdateConstraints];

    [(PUPickerPrincipalUIViewController *)self updateModalInPresentation];
  }
}

- (void)updateViewConstraints
{
  traitCollection = [(PUPickerPrincipalUIViewController *)self traitCollection];
  _presentationSemanticContext = [traitCollection _presentationSemanticContext];
  v5 = _presentationSemanticContext == 3;
  v6 = _presentationSemanticContext != 3;

  topConstraint = [(PUPickerPrincipalUIViewController *)self topConstraint];
  [topConstraint setActive:1];

  bottomConstraint = [(PUPickerPrincipalUIViewController *)self bottomConstraint];
  [bottomConstraint setActive:1];

  leadingConstraint = [(PUPickerPrincipalUIViewController *)self leadingConstraint];
  [leadingConstraint setActive:v6];

  trailingConstraint = [(PUPickerPrincipalUIViewController *)self trailingConstraint];
  [trailingConstraint setActive:v6];

  leadingSafeAreaConstraint = [(PUPickerPrincipalUIViewController *)self leadingSafeAreaConstraint];
  [leadingSafeAreaConstraint setActive:v5];

  trailingSafeAreaConstraint = [(PUPickerPrincipalUIViewController *)self trailingSafeAreaConstraint];
  [trailingSafeAreaConstraint setActive:v5];

  v13.receiver = self;
  v13.super_class = PUPickerPrincipalUIViewController;
  [(PUPickerPrincipalUIViewController *)&v13 updateViewConstraints];
}

+ (BOOL)shouldDebounceDidFinishPicking:(id)picking previousSelectedObjectIDs:(id)ds previousSelectionDate:(id)date
{
  pickingCopy = picking;
  dsCopy = ds;
  dateCopy = date;
  if (pickingCopy == dsCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = [pickingCopy isEqual:dsCopy];
  }

  v11 = 0;
  if (dateCopy && v10)
  {
    [dateCopy timeIntervalSinceNow];
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