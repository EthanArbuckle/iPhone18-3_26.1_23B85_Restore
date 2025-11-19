@interface PXPhotosAppGridViewModel
- (BOOL)isFiltering;
- (BOOL)isLocked;
- (BOOL)wantsContentUnavailableUnlockButtonVisible;
- (NSArray)internalMenuProducers;
- (PHPhotoLibrary)photoLibrary;
- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory;
- (PXPhotosAppGridViewModel)init;
- (PXPhotosAppGridViewModel)initWithConfiguration:(id)a3 viewModel:(id)a4;
- (PXPhotosAppSpecificGridDelegate)photosAppGridDelegate;
- (PXPhotosViewModel)viewModel;
- (id)_initialLibraryFilterStateForConfiguration:(id)a3;
- (id)createGridActionManagerForViewModel:(id)a3;
- (id)createInteractionHelperWithInteraction:(id)a3 viewModel:(id)a4;
- (id)initialFilterStateForViewModel:(id)a3;
- (int64_t)authenticationType;
- (unint64_t)dateType;
- (void)_invalidateCurrentDataSourceContainer;
- (void)_invalidateLibraryFilterState;
- (void)_invalidatePersonContainerProperties;
- (void)_updateContentFilterStateForSharedWithYouObservationChange;
- (void)_updateCurrentDataSourceContainer;
- (void)_updateLibraryFilterState;
- (void)_updatePersonContainerProperties;
- (void)_updateSortOrder;
- (void)applySpecManagerOptions:(id)a3;
- (void)dealloc;
- (void)didPerformChanges;
- (void)initializationWillFinishWithConfiguration:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performChanges:(id)a3;
- (void)registerInternalMenuProducer:(id)a3;
- (void)setCurrentDataSourceContainer:(id)a3;
- (void)setOpenInPhotosAppButtonNavigationDestination:(id)a3;
- (void)swift_reverseSortOrderDidChange;
- (void)swift_viewModelDidChange:(id)a3;
@end

@implementation PXPhotosAppGridViewModel

- (void)swift_viewModelDidChange:(id)a3
{
  swift_unknownObjectRetain();
  self;
  sub_1A46515D4();
}

- (void)swift_reverseSortOrderDidChange
{
  v2 = self;
  sub_1A4651EB4();
}

- (PXPhotosAppSpecificGridDelegate)photosAppGridDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photosAppGridDelegate);

  return WeakRetained;
}

- (PXPhotosViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (UserDefaultsIncludeSharedWithYouObservationContext != a6)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridViewModel.m" lineNumber:371 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v14 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PXPhotosAppGridViewModel_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateContentFilterStateForSharedWithYouObservationChange
{
  v2 = [(PXPhotosAppGridViewModel *)self viewModel];
  v3 = [v2 contentFilterState];
  if (!v3)
  {
    PXAssertGetLog();
  }

  v4 = [v2 dataSourceManager];
  v5 = [v4 dataSource];
  v6 = [v5 containerCollection];

  v7 = [off_1E7721948 standardUserDefaults];
  v8 = [v3 copy];
  [v8 setIncludeScreenshots:1];
  if ([v6 px_isContentSyndicationAlbum])
  {
    [v8 setIncludeSharedWithYou:1];
  }

  else
  {
    v9 = [v7 includeSharedWithYou];
    [v8 setIncludeSharedWithYou:{objc_msgSend(v9, "BOOLValue")}];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PXPhotosAppGridViewModel__updateContentFilterStateForSharedWithYouObservationChange__block_invoke;
  v11[3] = &unk_1E7748CB8;
  v12 = v8;
  v10 = v8;
  [v2 performChanges:v11];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PhotosViewModelObservationContext == a5)
  {
    if (a4)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__PXPhotosAppGridViewModel_observable_didChange_context___block_invoke;
      v12[3] = &unk_1E774C5F8;
      v12[4] = self;
      [(PXPhotosAppGridViewModel *)self performChanges:v12];
    }

    if ((a4 & 0x8000000) != 0)
    {
      [(PXPhotosAppGridViewModel *)self swift_reverseSortOrderDidChange];
    }
  }

  else if (SortOrderStateObservationContext == a5)
  {
    if (a4)
    {
      [(PXPhotosAppGridViewModel *)self _updateSortOrder];
    }
  }

  else
  {
    if (PrivacyControllerObservationContext_131596 != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridViewModel.m" lineNumber:337 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PXPhotosAppGridViewModel_observable_didChange_context___block_invoke_2;
    v11[3] = &unk_1E7749D78;
    v11[4] = self;
    v11[5] = a4;
    [(PXPhotosAppGridViewModel *)self performChanges:v11];
  }
}

uint64_t __57__PXPhotosAppGridViewModel_observable_didChange_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateCurrentDataSourceContainer];
  v2 = *(a1 + 32);

  return [v2 _invalidateLibraryFilterState];
}

void __57__PXPhotosAppGridViewModel_observable_didChange_context___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    [*(a1 + 32) signalChange:1];
    v3 = *(a1 + 40);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_3;
  }

  [*(a1 + 32) signalChange:2];
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_4:
    [*(a1 + 32) signalChange:4];
  }

LABEL_5:
}

- (id)createInteractionHelperWithInteraction:(id)a3 viewModel:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PXPhotosViewUIInteractionHelper alloc] initWithInteraction:v6 viewModel:v5];

  return v7;
}

- (BOOL)wantsContentUnavailableUnlockButtonVisible
{
  v2 = [(PXPhotosAppGridViewModel *)self contentPrivacyController];
  v3 = [v2 willPerformAuthenticationAutomatically];

  v4 = +[PXContentPrivacySettings sharedInstance];
  v5 = objc_opt_self();
  v6 = [v5 shouldAlwaysShowUnlockButtonInContentUnavailableViews];

  return v6 & 1 | ((v3 & 1) == 0);
}

- (int64_t)authenticationType
{
  v2 = [(PXPhotosAppGridViewModel *)self contentPrivacyController];
  v3 = [v2 authenticationType];

  return v3;
}

- (BOOL)isLocked
{
  v2 = [(PXPhotosAppGridViewModel *)self contentPrivacyController];
  v3 = [v2 isLocked];

  return v3;
}

- (unint64_t)dateType
{
  v2 = [(PXPhotosAppGridViewModel *)self viewOptionsModel];
  v3 = [v2 browserDateType];

  return v3;
}

- (BOOL)isFiltering
{
  v3 = [(PXPhotosAppGridViewModel *)self libraryFilterState];
  if ([v3 isFiltering])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PXPhotosAppGridViewModel *)self viewModel];
    v6 = [v5 filterState];
    v4 = [v6 isFiltering];
  }

  return v4;
}

- (id)initialFilterStateForViewModel:(id)a3
{
  v4 = [a3 dataSourceManager];
  v5 = [(PXPhotosAppGridViewModel *)self photoLibrary];
  if (v5)
  {
    v6 = [v4 dataSource];
    v7 = [v6 containerCollection];

    v8 = [PXContentFilterState defaultFilterStateForContainerCollection:v7 photoLibrary:v5];
    if ([(PXPhotosAppGridViewModel *)self alwaysIncludeSharedWithYouAssets])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 includeSharedWithYou];
    }

    [v8 setIncludeSharedWithYou:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createGridActionManagerForViewModel:(id)a3
{
  v3 = a3;
  v4 = [[PXPhotosGridActionManager alloc] initWithViewModel:v3];

  return v4;
}

- (void)initializationWillFinishWithConfiguration:(id)a3
{
  v4 = a3;
  [(PXPhotosAppGridViewModel *)self _updateSortOrder];
  v5 = [(PXPhotosAppGridViewModel *)self _initialLibraryFilterStateForConfiguration:v4];
  libraryFilterState = self->_libraryFilterState;
  self->_libraryFilterState = v5;

  v7 = [v4 dataSourceManager];

  v8 = [v7 dataSource];
  v11 = [v8 containerCollection];

  if (([v11 px_isContentSyndicationAlbum] & 1) == 0)
  {
    v9 = [(PXPhotosAppGridViewModel *)self photoLibrary];

    if (v9)
    {
      self->_didRegisterForSWYDefaultsChanges = 1;
      v10 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v10 addObserver:self forKeyPath:*off_1E7722280 options:0 context:UserDefaultsIncludeSharedWithYouObservationContext];
    }
  }
}

- (void)applySpecManagerOptions:(id)a3
{
  v3 = a3;
  [v3 setHasPhysicalHomeButton:PLHasHomeButton()];
  [v3 setDynamicHeaderHeightCallback:&__block_literal_global_131602];
}

- (void)_updateLibraryFilterState
{
  v3 = [(PXPhotosAppGridViewModel *)self viewModel];
  v4 = [v3 currentDataSource];
  v5 = [v4 libraryFilter];

  v6 = [(PXPhotosAppGridViewModel *)self libraryFilterState];
  [v6 setViewMode:v5];
}

- (void)_invalidateLibraryFilterState
{
  v2 = [(PXPhotosAppGridViewModel *)self updater];
  [v2 setNeedsUpdateSelector:sel__updateLibraryFilterState];
}

- (id)_initialLibraryFilterStateForConfiguration:(id)a3
{
  v4 = [(PXPhotosAppGridViewModel *)self viewModel];
  v5 = [v4 dataSourceManager];
  v6 = [v5 dataSource];
  v7 = [v6 ignoreSharedLibraryFilters];

  if (v7)
  {
    v8 = objc_alloc_init(PXLibraryFilterState);
  }

  else
  {
    v9 = [PXLibraryFilterState alloc];
    v10 = [(PXPhotosAppGridViewModel *)self sharedLibraryStatusProvider];
    v8 = [(PXLibraryFilterState *)v9 initWithSharedLibraryStatusProvider:v10];
  }

  return v8;
}

- (void)_updateSortOrder
{
  v3 = [(PXPhotosAppGridViewModel *)self viewOptionsModel];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 sortOrderState];
    v6 = PXFetchSortOrderStandardAssetSortDescriptors([v5 sortOrder]);

    v7 = [(PXPhotosAppGridViewModel *)self viewModel];
    v8 = [v7 dataSourceManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PXPhotosAppGridViewModel__updateSortOrder__block_invoke;
    v10[3] = &unk_1E774A6B8;
    v11 = v6;
    v9 = v6;
    [v8 performChanges:v10];
  }
}

- (void)_updatePersonContainerProperties
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [(PXPhotosAppGridViewModel *)self viewModel];
  v3 = [v2 assetCollectionActionManager];
  v4 = [v2 currentDataSource];
  v5 = [v4 container];

  v6 = v5;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
    goto LABEL_12;
  }

  v7 = v6;

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v9 = [v7 photoLibrary];
      v10 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v8 photoLibrary:v9];
      [v3 setPeople:v10];
    }

    v11 = [v2 dataSourceManager];
    v12 = +[PXPeopleUtilities sortDescriptorsWithPersonAssetSortOrder:](PXPeopleUtilities, "sortDescriptorsWithPersonAssetSortOrder:", [v7 assetSortOrder]);
    v13 = [v11 sortDescriptors];
    v14 = v13;
    if (v13 != v12)
    {
      v15 = [v13 isEqual:v12];

      if (v15)
      {
LABEL_10:

        goto LABEL_12;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__PXPhotosAppGridViewModel__updatePersonContainerProperties__block_invoke;
      v16[3] = &unk_1E774C620;
      v17 = v11;
      v18 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], v16);

      v14 = v17;
    }

    goto LABEL_10;
  }

LABEL_12:
}

void __60__PXPhotosAppGridViewModel__updatePersonContainerProperties__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__PXPhotosAppGridViewModel__updatePersonContainerProperties__block_invoke_2;
  v2[3] = &unk_1E773BB80;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performChanges:v2];
}

- (void)_invalidatePersonContainerProperties
{
  v2 = [(PXPhotosAppGridViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePersonContainerProperties];
}

- (void)setCurrentDataSourceContainer:(id)a3
{
  v5 = a3;
  if (self->_currentDataSourceContainer != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentDataSourceContainer, a3);
    [(PXPhotosAppGridViewModel *)self _invalidatePersonContainerProperties];
    v5 = v6;
  }
}

- (void)_updateCurrentDataSourceContainer
{
  v5 = [(PXPhotosAppGridViewModel *)self viewModel];
  v3 = [v5 currentDataSource];
  v4 = [v3 container];
  [(PXPhotosAppGridViewModel *)self setCurrentDataSourceContainer:v4];
}

- (void)_invalidateCurrentDataSourceContainer
{
  v2 = [(PXPhotosAppGridViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentDataSourceContainer];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXPhotosAppGridViewModel;
  [(PXPhotosAppGridViewModel *)&v4 didPerformChanges];
  v3 = [(PXPhotosAppGridViewModel *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXPhotosAppGridViewModel;
  [(PXPhotosAppGridViewModel *)&v3 performChanges:a3];
}

- (void)setOpenInPhotosAppButtonNavigationDestination:(id)a3
{
  v8 = a3;
  v5 = self->_openInPhotosAppButtonNavigationDestination;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXProgrammaticNavigationDestination *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_openInPhotosAppButtonNavigationDestination, a3);
      [(PXPhotosAppGridViewModel *)self signalChange:8];
    }
  }
}

- (void)registerInternalMenuProducer:(id)a3
{
  v4 = a3;
  internalMenuProducers = self->_internalMenuProducers;
  v8 = v4;
  if (!internalMenuProducers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_internalMenuProducers;
    self->_internalMenuProducers = v6;

    v4 = v8;
    internalMenuProducers = self->_internalMenuProducers;
  }

  [(NSHashTable *)internalMenuProducers addObject:v4];
}

- (NSArray)internalMenuProducers
{
  v2 = [(NSHashTable *)self->_internalMenuProducers allObjects];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory
{
  v3 = [(PXPhotosAppGridViewModel *)self photosAppGridDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(PXPhotosAppGridViewModel *)self photosAppGridDelegate];
    v5 = [v4 memoryAssetsActionFactory];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PHPhotoLibrary)photoLibrary
{
  v3 = [(PXPhotosAppGridViewModel *)self photoLibraries];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(PXPhotosAppGridViewModel *)self viewModel];
    v7 = [v6 dataSourceManager];
    v8 = [v7 dataSource];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 photosDataSource];
    v5 = [v10 photoLibrary];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_didRegisterForSWYDefaultsChanges)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 removeObserver:self forKeyPath:*off_1E7722280 context:UserDefaultsIncludeSharedWithYouObservationContext];
  }

  v4.receiver = self;
  v4.super_class = PXPhotosAppGridViewModel;
  [(PXPhotosAppGridViewModel *)&v4 dealloc];
}

- (PXPhotosAppGridViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridViewModel.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXPhotosAppGridViewModel init]"}];

  abort();
}

- (PXPhotosAppGridViewModel)initWithConfiguration:(id)a3 viewModel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40.receiver = self;
  v40.super_class = PXPhotosAppGridViewModel;
  v9 = [(PXPhotosAppGridViewModel *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_viewModel, v8);
    [v8 registerChangeObserver:v10 context:PhotosViewModelObservationContext];
    v11 = [[off_1E7721940 alloc] initWithTarget:v10 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v10->_updater;
    v10->_updater = v11;

    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateCurrentDataSourceContainer];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updatePersonContainerProperties];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateLibraryFilterState];
    v13 = [v7 photosAppConfiguration];
    v14 = [v13 photosAppGridDelegate];
    objc_storeWeak(&v10->_photosAppGridDelegate, v14);

    v15 = [v13 searchQueryMatchInfo];
    searchQueryMatchInfo = v10->_searchQueryMatchInfo;
    v10->_searchQueryMatchInfo = v15;

    v17 = [v13 searchContextualVideoThumbnailIdentifiers];
    searchContextualVideoThumbnailIdentifiers = v10->_searchContextualVideoThumbnailIdentifiers;
    v10->_searchContextualVideoThumbnailIdentifiers = v17;

    v19 = [v13 viewOptionsModel];
    viewOptionsModel = v10->_viewOptionsModel;
    v10->_viewOptionsModel = v19;

    v10->_hidesViewOptionsToolbar = [v13 hidesViewOptionsToolbar];
    v21 = [(PXPhotosViewOptionsModel *)v10->_viewOptionsModel sortOrderState];
    [v21 registerChangeObserver:v10 context:SortOrderStateObservationContext];

    v10->_alwaysIncludeSharedWithYouAssets = [v13 alwaysIncludeSharedWithYouAssets];
    v22 = [v13 barItemProviderClass];
    barItemProviderClass = v10->_barItemProviderClass;
    v10->_barItemProviderClass = v22;

    v24 = [v13 photoLibraries];
    photoLibraries = v10->_photoLibraries;
    v10->_photoLibraries = v24;

    v26 = [v13 openInPhotosAppButtonNavigationDestination];
    openInPhotosAppButtonNavigationDestination = v10->_openInPhotosAppButtonNavigationDestination;
    v10->_openInPhotosAppButtonNavigationDestination = v26;

    v28 = [v13 privacyController];
    contentPrivacyController = v10->_contentPrivacyController;
    v10->_contentPrivacyController = v28;

    [(PXContentPrivacyController *)v10->_contentPrivacyController registerChangeObserver:v10 context:PrivacyControllerObservationContext_131596];
    v30 = [v7 dataSourceManager];
    if (objc_opt_respondsToSelector())
    {
      v31 = [v30 sharedLibraryStatusProvider];
      if (v31)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v34 = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = [(PXSharedLibraryStatusProvider *)v31 px_descriptionForAssertionMessage];
          [v34 handleFailureInMethod:a2 object:v10 file:@"PXPhotosAppGridViewModel.m" lineNumber:83 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[(id<_PXStatusProviderWorkaround>)dataSourceManager sharedLibraryStatusProvider]", v36, v37}];
        }
      }

      sharedLibraryStatusProvider = v10->_sharedLibraryStatusProvider;
      v10->_sharedLibraryStatusProvider = v31;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__PXPhotosAppGridViewModel_initWithConfiguration_viewModel___block_invoke;
    v38[3] = &unk_1E774C5F8;
    v39 = v10;
    [(PXPhotosAppGridViewModel *)v39 performChanges:v38];
  }

  return v10;
}

@end