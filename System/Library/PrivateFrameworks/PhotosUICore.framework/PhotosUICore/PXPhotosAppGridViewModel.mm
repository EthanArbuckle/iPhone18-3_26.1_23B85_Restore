@interface PXPhotosAppGridViewModel
- (BOOL)isFiltering;
- (BOOL)isLocked;
- (BOOL)wantsContentUnavailableUnlockButtonVisible;
- (NSArray)internalMenuProducers;
- (PHPhotoLibrary)photoLibrary;
- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory;
- (PXPhotosAppGridViewModel)init;
- (PXPhotosAppGridViewModel)initWithConfiguration:(id)configuration viewModel:(id)model;
- (PXPhotosAppSpecificGridDelegate)photosAppGridDelegate;
- (PXPhotosViewModel)viewModel;
- (id)_initialLibraryFilterStateForConfiguration:(id)configuration;
- (id)createGridActionManagerForViewModel:(id)model;
- (id)createInteractionHelperWithInteraction:(id)interaction viewModel:(id)model;
- (id)initialFilterStateForViewModel:(id)model;
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
- (void)applySpecManagerOptions:(id)options;
- (void)dealloc;
- (void)didPerformChanges;
- (void)initializationWillFinishWithConfiguration:(id)configuration;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)registerInternalMenuProducer:(id)producer;
- (void)setCurrentDataSourceContainer:(id)container;
- (void)setOpenInPhotosAppButtonNavigationDestination:(id)destination;
- (void)swift_reverseSortOrderDidChange;
- (void)swift_viewModelDidChange:(id)change;
@end

@implementation PXPhotosAppGridViewModel

- (void)swift_viewModelDidChange:(id)change
{
  swift_unknownObjectRetain();
  self;
  sub_1A46515D4();
}

- (void)swift_reverseSortOrderDidChange
{
  selfCopy = self;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (UserDefaultsIncludeSharedWithYouObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridViewModel.m" lineNumber:371 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v14 = changeCopy;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PXPhotosAppGridViewModel_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateContentFilterStateForSharedWithYouObservationChange
{
  viewModel = [(PXPhotosAppGridViewModel *)self viewModel];
  contentFilterState = [viewModel contentFilterState];
  if (!contentFilterState)
  {
    PXAssertGetLog();
  }

  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  containerCollection = [dataSource containerCollection];

  standardUserDefaults = [off_1E7721948 standardUserDefaults];
  v8 = [contentFilterState copy];
  [v8 setIncludeScreenshots:1];
  if ([containerCollection px_isContentSyndicationAlbum])
  {
    [v8 setIncludeSharedWithYou:1];
  }

  else
  {
    includeSharedWithYou = [standardUserDefaults includeSharedWithYou];
    [v8 setIncludeSharedWithYou:{objc_msgSend(includeSharedWithYou, "BOOLValue")}];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PXPhotosAppGridViewModel__updateContentFilterStateForSharedWithYouObservationChange__block_invoke;
  v11[3] = &unk_1E7748CB8;
  v12 = v8;
  v10 = v8;
  [viewModel performChanges:v11];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PhotosViewModelObservationContext == context)
  {
    if (change)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__PXPhotosAppGridViewModel_observable_didChange_context___block_invoke;
      v12[3] = &unk_1E774C5F8;
      v12[4] = self;
      [(PXPhotosAppGridViewModel *)self performChanges:v12];
    }

    if ((change & 0x8000000) != 0)
    {
      [(PXPhotosAppGridViewModel *)self swift_reverseSortOrderDidChange];
    }
  }

  else if (SortOrderStateObservationContext == context)
  {
    if (change)
    {
      [(PXPhotosAppGridViewModel *)self _updateSortOrder];
    }
  }

  else
  {
    if (PrivacyControllerObservationContext_131596 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridViewModel.m" lineNumber:337 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PXPhotosAppGridViewModel_observable_didChange_context___block_invoke_2;
    v11[3] = &unk_1E7749D78;
    v11[4] = self;
    v11[5] = change;
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

- (id)createInteractionHelperWithInteraction:(id)interaction viewModel:(id)model
{
  modelCopy = model;
  interactionCopy = interaction;
  v7 = [[PXPhotosViewUIInteractionHelper alloc] initWithInteraction:interactionCopy viewModel:modelCopy];

  return v7;
}

- (BOOL)wantsContentUnavailableUnlockButtonVisible
{
  contentPrivacyController = [(PXPhotosAppGridViewModel *)self contentPrivacyController];
  willPerformAuthenticationAutomatically = [contentPrivacyController willPerformAuthenticationAutomatically];

  v4 = +[PXContentPrivacySettings sharedInstance];
  v5 = objc_opt_self();
  shouldAlwaysShowUnlockButtonInContentUnavailableViews = [v5 shouldAlwaysShowUnlockButtonInContentUnavailableViews];

  return shouldAlwaysShowUnlockButtonInContentUnavailableViews & 1 | ((willPerformAuthenticationAutomatically & 1) == 0);
}

- (int64_t)authenticationType
{
  contentPrivacyController = [(PXPhotosAppGridViewModel *)self contentPrivacyController];
  authenticationType = [contentPrivacyController authenticationType];

  return authenticationType;
}

- (BOOL)isLocked
{
  contentPrivacyController = [(PXPhotosAppGridViewModel *)self contentPrivacyController];
  isLocked = [contentPrivacyController isLocked];

  return isLocked;
}

- (unint64_t)dateType
{
  viewOptionsModel = [(PXPhotosAppGridViewModel *)self viewOptionsModel];
  browserDateType = [viewOptionsModel browserDateType];

  return browserDateType;
}

- (BOOL)isFiltering
{
  libraryFilterState = [(PXPhotosAppGridViewModel *)self libraryFilterState];
  if ([libraryFilterState isFiltering])
  {
    isFiltering = 1;
  }

  else
  {
    viewModel = [(PXPhotosAppGridViewModel *)self viewModel];
    filterState = [viewModel filterState];
    isFiltering = [filterState isFiltering];
  }

  return isFiltering;
}

- (id)initialFilterStateForViewModel:(id)model
{
  dataSourceManager = [model dataSourceManager];
  photoLibrary = [(PXPhotosAppGridViewModel *)self photoLibrary];
  if (photoLibrary)
  {
    dataSource = [dataSourceManager dataSource];
    containerCollection = [dataSource containerCollection];

    v8 = [PXContentFilterState defaultFilterStateForContainerCollection:containerCollection photoLibrary:photoLibrary];
    if ([(PXPhotosAppGridViewModel *)self alwaysIncludeSharedWithYouAssets])
    {
      includeSharedWithYou = 1;
    }

    else
    {
      includeSharedWithYou = [v8 includeSharedWithYou];
    }

    [v8 setIncludeSharedWithYou:includeSharedWithYou];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createGridActionManagerForViewModel:(id)model
{
  modelCopy = model;
  v4 = [[PXPhotosGridActionManager alloc] initWithViewModel:modelCopy];

  return v4;
}

- (void)initializationWillFinishWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(PXPhotosAppGridViewModel *)self _updateSortOrder];
  v5 = [(PXPhotosAppGridViewModel *)self _initialLibraryFilterStateForConfiguration:configurationCopy];
  libraryFilterState = self->_libraryFilterState;
  self->_libraryFilterState = v5;

  dataSourceManager = [configurationCopy dataSourceManager];

  dataSource = [dataSourceManager dataSource];
  containerCollection = [dataSource containerCollection];

  if (([containerCollection px_isContentSyndicationAlbum] & 1) == 0)
  {
    photoLibrary = [(PXPhotosAppGridViewModel *)self photoLibrary];

    if (photoLibrary)
    {
      self->_didRegisterForSWYDefaultsChanges = 1;
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults addObserver:self forKeyPath:*off_1E7722280 options:0 context:UserDefaultsIncludeSharedWithYouObservationContext];
    }
  }
}

- (void)applySpecManagerOptions:(id)options
{
  optionsCopy = options;
  [optionsCopy setHasPhysicalHomeButton:PLHasHomeButton()];
  [optionsCopy setDynamicHeaderHeightCallback:&__block_literal_global_131602];
}

- (void)_updateLibraryFilterState
{
  viewModel = [(PXPhotosAppGridViewModel *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  libraryFilter = [currentDataSource libraryFilter];

  libraryFilterState = [(PXPhotosAppGridViewModel *)self libraryFilterState];
  [libraryFilterState setViewMode:libraryFilter];
}

- (void)_invalidateLibraryFilterState
{
  updater = [(PXPhotosAppGridViewModel *)self updater];
  [updater setNeedsUpdateSelector:sel__updateLibraryFilterState];
}

- (id)_initialLibraryFilterStateForConfiguration:(id)configuration
{
  viewModel = [(PXPhotosAppGridViewModel *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  ignoreSharedLibraryFilters = [dataSource ignoreSharedLibraryFilters];

  if (ignoreSharedLibraryFilters)
  {
    v8 = objc_alloc_init(PXLibraryFilterState);
  }

  else
  {
    v9 = [PXLibraryFilterState alloc];
    sharedLibraryStatusProvider = [(PXPhotosAppGridViewModel *)self sharedLibraryStatusProvider];
    v8 = [(PXLibraryFilterState *)v9 initWithSharedLibraryStatusProvider:sharedLibraryStatusProvider];
  }

  return v8;
}

- (void)_updateSortOrder
{
  viewOptionsModel = [(PXPhotosAppGridViewModel *)self viewOptionsModel];
  v4 = viewOptionsModel;
  if (viewOptionsModel)
  {
    sortOrderState = [viewOptionsModel sortOrderState];
    v6 = PXFetchSortOrderStandardAssetSortDescriptors([sortOrderState sortOrder]);

    viewModel = [(PXPhotosAppGridViewModel *)self viewModel];
    dataSourceManager = [viewModel dataSourceManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__PXPhotosAppGridViewModel__updateSortOrder__block_invoke;
    v10[3] = &unk_1E774A6B8;
    v11 = v6;
    v9 = v6;
    [dataSourceManager performChanges:v10];
  }
}

- (void)_updatePersonContainerProperties
{
  v19[1] = *MEMORY[0x1E69E9840];
  viewModel = [(PXPhotosAppGridViewModel *)self viewModel];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  currentDataSource = [viewModel currentDataSource];
  container = [currentDataSource container];

  v6 = container;
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
      photoLibrary = [v7 photoLibrary];
      v10 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v8 photoLibrary:photoLibrary];
      [assetCollectionActionManager setPeople:v10];
    }

    dataSourceManager = [viewModel dataSourceManager];
    v12 = +[PXPeopleUtilities sortDescriptorsWithPersonAssetSortOrder:](PXPeopleUtilities, "sortDescriptorsWithPersonAssetSortOrder:", [v7 assetSortOrder]);
    sortDescriptors = [dataSourceManager sortDescriptors];
    v14 = sortDescriptors;
    if (sortDescriptors != v12)
    {
      v15 = [sortDescriptors isEqual:v12];

      if (v15)
      {
LABEL_10:

        goto LABEL_12;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__PXPhotosAppGridViewModel__updatePersonContainerProperties__block_invoke;
      v16[3] = &unk_1E774C620;
      v17 = dataSourceManager;
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
  updater = [(PXPhotosAppGridViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updatePersonContainerProperties];
}

- (void)setCurrentDataSourceContainer:(id)container
{
  containerCopy = container;
  if (self->_currentDataSourceContainer != containerCopy)
  {
    v6 = containerCopy;
    objc_storeStrong(&self->_currentDataSourceContainer, container);
    [(PXPhotosAppGridViewModel *)self _invalidatePersonContainerProperties];
    containerCopy = v6;
  }
}

- (void)_updateCurrentDataSourceContainer
{
  viewModel = [(PXPhotosAppGridViewModel *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  container = [currentDataSource container];
  [(PXPhotosAppGridViewModel *)self setCurrentDataSourceContainer:container];
}

- (void)_invalidateCurrentDataSourceContainer
{
  updater = [(PXPhotosAppGridViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentDataSourceContainer];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXPhotosAppGridViewModel;
  [(PXPhotosAppGridViewModel *)&v4 didPerformChanges];
  updater = [(PXPhotosAppGridViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXPhotosAppGridViewModel;
  [(PXPhotosAppGridViewModel *)&v3 performChanges:changes];
}

- (void)setOpenInPhotosAppButtonNavigationDestination:(id)destination
{
  destinationCopy = destination;
  v5 = self->_openInPhotosAppButtonNavigationDestination;
  v6 = v5;
  if (v5 == destinationCopy)
  {
  }

  else
  {
    v7 = [(PXProgrammaticNavigationDestination *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_openInPhotosAppButtonNavigationDestination, destination);
      [(PXPhotosAppGridViewModel *)self signalChange:8];
    }
  }
}

- (void)registerInternalMenuProducer:(id)producer
{
  producerCopy = producer;
  internalMenuProducers = self->_internalMenuProducers;
  v8 = producerCopy;
  if (!internalMenuProducers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_internalMenuProducers;
    self->_internalMenuProducers = weakObjectsHashTable;

    producerCopy = v8;
    internalMenuProducers = self->_internalMenuProducers;
  }

  [(NSHashTable *)internalMenuProducers addObject:producerCopy];
}

- (NSArray)internalMenuProducers
{
  allObjects = [(NSHashTable *)self->_internalMenuProducers allObjects];
  v3 = allObjects;
  if (allObjects)
  {
    v4 = allObjects;
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
  photosAppGridDelegate = [(PXPhotosAppGridViewModel *)self photosAppGridDelegate];
  if (objc_opt_respondsToSelector())
  {
    photosAppGridDelegate2 = [(PXPhotosAppGridViewModel *)self photosAppGridDelegate];
    memoryAssetsActionFactory = [photosAppGridDelegate2 memoryAssetsActionFactory];
  }

  else
  {
    memoryAssetsActionFactory = 0;
  }

  return memoryAssetsActionFactory;
}

- (PHPhotoLibrary)photoLibrary
{
  photoLibraries = [(PXPhotosAppGridViewModel *)self photoLibraries];
  firstObject = [photoLibraries firstObject];

  if (firstObject)
  {
    photoLibrary = firstObject;
  }

  else
  {
    viewModel = [(PXPhotosAppGridViewModel *)self viewModel];
    dataSourceManager = [viewModel dataSourceManager];
    dataSource = [dataSourceManager dataSource];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = dataSource;
    }

    else
    {
      v9 = 0;
    }

    photosDataSource = [v9 photosDataSource];
    photoLibrary = [photosDataSource photoLibrary];
  }

  return photoLibrary;
}

- (void)dealloc
{
  if (self->_didRegisterForSWYDefaultsChanges)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults removeObserver:self forKeyPath:*off_1E7722280 context:UserDefaultsIncludeSharedWithYouObservationContext];
  }

  v4.receiver = self;
  v4.super_class = PXPhotosAppGridViewModel;
  [(PXPhotosAppGridViewModel *)&v4 dealloc];
}

- (PXPhotosAppGridViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridViewModel.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXPhotosAppGridViewModel init]"}];

  abort();
}

- (PXPhotosAppGridViewModel)initWithConfiguration:(id)configuration viewModel:(id)model
{
  configurationCopy = configuration;
  modelCopy = model;
  v40.receiver = self;
  v40.super_class = PXPhotosAppGridViewModel;
  v9 = [(PXPhotosAppGridViewModel *)&v40 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_viewModel, modelCopy);
    [modelCopy registerChangeObserver:v10 context:PhotosViewModelObservationContext];
    v11 = [[off_1E7721940 alloc] initWithTarget:v10 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v10->_updater;
    v10->_updater = v11;

    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateCurrentDataSourceContainer];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updatePersonContainerProperties];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateLibraryFilterState];
    photosAppConfiguration = [configurationCopy photosAppConfiguration];
    photosAppGridDelegate = [photosAppConfiguration photosAppGridDelegate];
    objc_storeWeak(&v10->_photosAppGridDelegate, photosAppGridDelegate);

    searchQueryMatchInfo = [photosAppConfiguration searchQueryMatchInfo];
    searchQueryMatchInfo = v10->_searchQueryMatchInfo;
    v10->_searchQueryMatchInfo = searchQueryMatchInfo;

    searchContextualVideoThumbnailIdentifiers = [photosAppConfiguration searchContextualVideoThumbnailIdentifiers];
    searchContextualVideoThumbnailIdentifiers = v10->_searchContextualVideoThumbnailIdentifiers;
    v10->_searchContextualVideoThumbnailIdentifiers = searchContextualVideoThumbnailIdentifiers;

    viewOptionsModel = [photosAppConfiguration viewOptionsModel];
    viewOptionsModel = v10->_viewOptionsModel;
    v10->_viewOptionsModel = viewOptionsModel;

    v10->_hidesViewOptionsToolbar = [photosAppConfiguration hidesViewOptionsToolbar];
    sortOrderState = [(PXPhotosViewOptionsModel *)v10->_viewOptionsModel sortOrderState];
    [sortOrderState registerChangeObserver:v10 context:SortOrderStateObservationContext];

    v10->_alwaysIncludeSharedWithYouAssets = [photosAppConfiguration alwaysIncludeSharedWithYouAssets];
    barItemProviderClass = [photosAppConfiguration barItemProviderClass];
    barItemProviderClass = v10->_barItemProviderClass;
    v10->_barItemProviderClass = barItemProviderClass;

    photoLibraries = [photosAppConfiguration photoLibraries];
    photoLibraries = v10->_photoLibraries;
    v10->_photoLibraries = photoLibraries;

    openInPhotosAppButtonNavigationDestination = [photosAppConfiguration openInPhotosAppButtonNavigationDestination];
    openInPhotosAppButtonNavigationDestination = v10->_openInPhotosAppButtonNavigationDestination;
    v10->_openInPhotosAppButtonNavigationDestination = openInPhotosAppButtonNavigationDestination;

    privacyController = [photosAppConfiguration privacyController];
    contentPrivacyController = v10->_contentPrivacyController;
    v10->_contentPrivacyController = privacyController;

    [(PXContentPrivacyController *)v10->_contentPrivacyController registerChangeObserver:v10 context:PrivacyControllerObservationContext_131596];
    dataSourceManager = [configurationCopy dataSourceManager];
    if (objc_opt_respondsToSelector())
    {
      sharedLibraryStatusProvider = [dataSourceManager sharedLibraryStatusProvider];
      if (sharedLibraryStatusProvider)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          px_descriptionForAssertionMessage = [(PXSharedLibraryStatusProvider *)sharedLibraryStatusProvider px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXPhotosAppGridViewModel.m" lineNumber:83 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[(id<_PXStatusProviderWorkaround>)dataSourceManager sharedLibraryStatusProvider]", v36, px_descriptionForAssertionMessage}];
        }
      }

      sharedLibraryStatusProvider = v10->_sharedLibraryStatusProvider;
      v10->_sharedLibraryStatusProvider = sharedLibraryStatusProvider;
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