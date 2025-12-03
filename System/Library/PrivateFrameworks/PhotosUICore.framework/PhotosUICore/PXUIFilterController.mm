@interface PXUIFilterController
- (PXFilterControllerDelegate)filterControllerDelegate;
- (PXUIFilterController)initWithDelegate:(id)delegate libraryFilterState:(id)state initialContentFilterState:(id)filterState sharedLibraryStatusProvider:(id)provider filterControllerOptions:(unint64_t)options;
- (id)_contentFilterGroups;
- (id)_localizedCounts;
- (id)_localizedGuestCounts;
- (id)_sectionHeaderTitleTextAttributes;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_contentFilterGroupsCount;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_doneButtonPressed:(id)pressed;
- (void)_filterControllerDidClose;
- (void)_setVisibilityForSender:(id)sender;
- (void)_setupNavigationBar;
- (void)_setupTableView;
- (void)_tappedRowAtIndexPath:(id)path;
- (void)_updateContentFilterStateWithFilterItemTag:(int64_t)tag shouldEnable:(BOOL)enable;
- (void)_updateFooterLayout;
- (void)_updateFooterStatus;
- (void)_updateTableView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)setContentFilterState:(id)state;
- (void)setDataSourceManager:(id)manager;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PXUIFilterController

- (PXFilterControllerDelegate)filterControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_filterControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXContentSyndicationConfigurationObservationContext_175640 == context)
  {
    if ((changeCopy & 5) == 0)
    {
      goto LABEL_16;
    }

    v10 = observableCopy;
    contentFilterState = [(PXUIFilterController *)self contentFilterState];

    if (contentFilterState)
    {
      [(PXUIFilterController *)self setContentFilterState:0];
LABEL_15:
      observableCopy = v10;
      goto LABEL_16;
    }

LABEL_14:
    [(PXUIFilterController *)self _updateTableView];
    goto LABEL_15;
  }

  if (PXCountsControllerObserverContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_16;
    }

    v10 = observableCopy;
    [(PXUIFilterController *)self _updateFooterStatus];
    goto LABEL_15;
  }

  if (PXSharedLibraryStatusProviderObservationContext_175641 == context)
  {
    if ((changeCopy & 3) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if ((changeCopy & 1) != 0 && PXLibraryFilterStateObservationContext_175642 == context)
  {
LABEL_13:
    v10 = observableCopy;
    goto LABEL_14;
  }

LABEL_16:
}

- (void)setContentFilterState:(id)state
{
  stateCopy = state;
  contentFilterState = self->_contentFilterState;
  if (contentFilterState != stateCopy)
  {
    v14 = stateCopy;
    v6 = [(PXContentFilterState *)contentFilterState isEqual:stateCopy];
    stateCopy = v14;
    if (!v6)
    {
      v7 = [(PXContentFilterState *)v14 copy];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        photoLibrary = self->_contentFilterState;
        self->_contentFilterState = v9;
      }

      else
      {
        photoLibrary = [(PXContentFilterState *)self->_contentFilterState photoLibrary];
        v11 = [PXContentFilterState defaultFilterStateForPhotoLibrary:photoLibrary];
        v12 = self->_contentFilterState;
        self->_contentFilterState = v11;
      }

      [(PXUIFilterController *)self _updateTableView];
      filterControllerDelegate = [(PXUIFilterController *)self filterControllerDelegate];
      [filterControllerDelegate filterController:self contentFilterStateChanged:self->_contentFilterState];

      stateCopy = v14;
    }
  }
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  presentedViewController = [controller presentedViewController];
  modalPresentationStyle = [presentedViewController modalPresentationStyle];

  if (style == -1 && modalPresentationStyle == 7)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  v11 = clearColor;
  tableView = [(PXUIFilterController *)self tableView];
  [tableView setBackgroundColor:v11];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  _contentFilterGroups = [(PXUIFilterController *)self _contentFilterGroups];
  v7 = [_contentFilterGroups objectAtIndexedSubscript:section];
  name = [v7 name];

  headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  _sectionHeaderTitleTextAttributes = [(PXUIFilterController *)self _sectionHeaderTitleTextAttributes];
  v12 = [v10 initWithString:name attributes:_sectionHeaderTitleTextAttributes];
  [headerConfiguration setAttributedText:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69DD050]);
  [v13 setContentConfiguration:headerConfiguration];
  [v13 setAutomaticallyUpdatesContentConfiguration:1];

  return v13;
}

- (id)_sectionHeaderTitleTextAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = *MEMORY[0x1E69DB648];
  v2 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:2 options:1];
  v7[0] = v2;
  v6[1] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7[1] = labelColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v40 = viewCopy;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"PXFilterControllerCellIdentifier"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PXFilterControllerCellIdentifier"];
    [v8 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [v8 setSelectionStyle:0];
    [v8 setInsetsLayoutMarginsFromSafeArea:0];
    textLabel = [v8 textLabel];
    [textLabel setAdjustsFontSizeToFitWidth:1];
    [textLabel setNumberOfLines:2];
    [textLabel setLineBreakMode:0];
    [textLabel setMinimumScaleFactor:0.600000024];
    detailTextLabel = [v8 detailTextLabel];
    [detailTextLabel setAdjustsFontSizeToFitWidth:1];
    [detailTextLabel setMinimumScaleFactor:0.400000006];
  }

  textLabel2 = [v8 textLabel];
  [textLabel2 setText:0];

  detailTextLabel2 = [v8 detailTextLabel];
  [detailTextLabel2 setText:0];

  imageView = [v8 imageView];
  [imageView setImage:0];

  [v8 setAccessoryType:0];
  [v8 setAccessoryView:0];
  section = [pathCopy section];
  _contentFilterGroups = [(PXUIFilterController *)self _contentFilterGroups];
  v16 = [_contentFilterGroups objectAtIndexedSubscript:section];
  filterIdentifiers = [v16 filterIdentifiers];
  v39 = pathCopy;
  v18 = [filterIdentifiers objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  intValue = [v18 intValue];

  contentFilterState = [(PXUIFilterController *)self contentFilterState];
  v21 = [contentFilterState isContentFilterActive:intValue];

  v22 = PXContentFilterImageForItemTag(intValue);
  imageView2 = [v8 imageView];
  [imageView2 setImage:v22];

  v24 = PXContentFilterTitleForItemTag(intValue);
  textLabel3 = [v8 textLabel];
  [textLabel3 setText:v24];

  libraryFilterState = [(PXUIFilterController *)self libraryFilterState];
  viewMode = [libraryFilterState viewMode];

  sharedLibraryStatusProvider = [(PXUIFilterController *)self sharedLibraryStatusProvider];
  v29 = PXContentFilterSubtitleForItemTag(intValue, sharedLibraryStatusProvider, viewMode);
  detailTextLabel3 = [v8 detailTextLabel];
  [detailTextLabel3 setText:v29];

  grayColor = [MEMORY[0x1E69DC888] grayColor];
  detailTextLabel4 = [v8 detailTextLabel];
  [detailTextLabel4 setTextColor:grayColor];

  [v8 setTag:intValue];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PXUIFilterController_tableView_cellForRowAtIndexPath___block_invoke;
  aBlock[3] = &unk_1E77403F0;
  aBlock[4] = self;
  v43 = v21;
  v33 = v8;
  v42 = v33;
  v34 = _Block_copy(aBlock);
  if ([PXUIFilterController _isContentFilterItemTagHandledBySwitch:intValue])
  {
    v34[2](v34, intValue);
    v36 = v39;
    v35 = v40;
  }

  else
  {
    v36 = v39;
    v35 = v40;
    if (v21)
    {
      [v33 setAccessoryType:3];
      [v40 selectRowAtIndexPath:v39 animated:0 scrollPosition:0];
    }
  }

  v37 = v33;

  return v33;
}

void __56__PXUIFilterController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  [v4 addTarget:*(a1 + 32) action:sel__setVisibilityForSender_ forControlEvents:4096];
  [v4 setTag:a2];
  [v4 setOn:*(a1 + 48)];
  [*(a1 + 40) setAccessoryView:v4];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  _contentFilterGroups = [(PXUIFilterController *)self _contentFilterGroups];
  v6 = [_contentFilterGroups objectAtIndexedSubscript:section];
  filterIdentifiers = [v6 filterIdentifiers];
  v8 = [filterIdentifiers count];

  return v8;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXUIFilterController;
  [(PXUIFilterController *)&v3 viewDidLayoutSubviews];
  [(PXUIFilterController *)self _updateFooterLayout];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PXUIFilterController;
  [(PXUIFilterController *)&v4 viewDidLoad];
  [(PXUIFilterController *)self _setupNavigationBar];
  [(PXUIFilterController *)self _setupTableView];
  contentSyndicationConfigurationProvider = [(PXUIFilterController *)self contentSyndicationConfigurationProvider];
  [contentSyndicationConfigurationProvider registerChangeObserver:self context:PXContentSyndicationConfigurationObservationContext_175640];
}

- (void)setDataSourceManager:(id)manager
{
  managerCopy = manager;
  if (self->_dataSourceManager != managerCopy)
  {
    v8 = managerCopy;
    objc_storeStrong(&self->_dataSourceManager, manager);
    [(PXAssetsDataSourceCountsController *)self->_countsController unregisterChangeObserver:self context:PXCountsControllerObserverContext];
    v6 = [[off_1E77214A8 alloc] initWithAssetsDataSourceManager:v8];
    countsController = self->_countsController;
    self->_countsController = v6;

    [(PXAssetsDataSourceCountsController *)self->_countsController registerChangeObserver:self context:PXCountsControllerObserverContext];
    [(PXAssetsDataSourceCountsController *)self->_countsController prepareCountsIfNeeded];
    [(PXUIFilterController *)self _updateFooterStatus];
    managerCopy = v8;
  }
}

- (PXUIFilterController)initWithDelegate:(id)delegate libraryFilterState:(id)state initialContentFilterState:(id)filterState sharedLibraryStatusProvider:(id)provider filterControllerOptions:(unint64_t)options
{
  optionsCopy = options;
  delegateCopy = delegate;
  stateCopy = state;
  filterStateCopy = filterState;
  providerCopy = provider;
  if (stateCopy)
  {
    if (filterStateCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIFilterController.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"contentFilterState"}];

    if (providerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXUIFilterController.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"libraryFilterState"}];

  if (!filterStateCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (providerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXUIFilterController.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = PXUIFilterController;
  v17 = [(PXUIFilterController *)&v26 initWithStyle:2];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sharedLibraryStatusProvider, provider);
    objc_storeStrong(&v18->_libraryFilterState, state);
    objc_storeStrong(&v18->_contentFilterState, filterState);
    objc_storeWeak(&v18->_filterControllerDelegate, delegateCopy);
    v18->_hidesFooter = (optionsCopy & 8) != 0;
    photoLibrary = [(PXContentFilterState *)v18->_contentFilterState photoLibrary];
    v20 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:photoLibrary];
    contentSyndicationConfigurationProvider = v18->_contentSyndicationConfigurationProvider;
    v18->_contentSyndicationConfigurationProvider = v20;

    [(PXSharedLibraryStatusProvider *)v18->_sharedLibraryStatusProvider registerChangeObserver:v18 context:PXSharedLibraryStatusProviderObservationContext_175641];
    [(PXLibraryFilterState *)v18->_libraryFilterState registerChangeObserver:v18 context:PXLibraryFilterStateObservationContext_175642];
  }

  return v18;
}

- (void)_doneButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PXUIFilterController__doneButtonPressed___block_invoke;
  v5[3] = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  [(PXUIFilterController *)self dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__PXUIFilterController__doneButtonPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _filterControllerDidClose];
}

- (void)_filterControllerDidClose
{
  filterControllerDelegate = [(PXUIFilterController *)self filterControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [filterControllerDelegate filterControllerDidClose:self];
  }
}

- (void)_updateContentFilterStateWithFilterItemTag:(int64_t)tag shouldEnable:(BOOL)enable
{
  enableCopy = enable;
  contentFilterState = [(PXUIFilterController *)self contentFilterState];
  v13 = PXContentFilterGetUpdatedState(contentFilterState, tag, enableCopy, 0);

  [(PXUIFilterController *)self setContentFilterState:v13];
  if (tag == 3)
  {
    if (v13)
    {
      includeSharedWithYou = [v13 includeSharedWithYou];
    }

    else
    {
      includeSharedWithYou = 1;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:includeSharedWithYou];
    standardUserDefaults = [off_1E7721948 standardUserDefaults];
    [standardUserDefaults setIncludeSharedWithYou:v9];
  }

  if (enableCopy)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    PXContentFilterSendAnalyticsForItemSelected(tag, v12);
  }
}

- (void)_tappedRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(PXUIFilterController *)self tableView];
  v8 = [tableView cellForRowAtIndexPath:pathCopy];

  isSelected = [v8 isSelected];
  v7 = [v8 tag];
  if (![PXUIFilterController _isContentFilterItemTagHandledBySwitch:v7])
  {
    [(PXUIFilterController *)self _updateContentFilterStateWithFilterItemTag:v7 shouldEnable:isSelected];
  }
}

- (int64_t)_contentFilterGroupsCount
{
  _contentFilterGroups = [(PXUIFilterController *)self _contentFilterGroups];
  v3 = [_contentFilterGroups count];

  return v3;
}

- (id)_contentFilterGroups
{
  contentFilterGroups = self->_contentFilterGroups;
  if (!contentFilterGroups)
  {
    v4 = 0x1E695D000uLL;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    filterControllerDelegate = [(PXUIFilterController *)self filterControllerDelegate];
    v7 = [filterControllerDelegate contentFilterHiddenTypesForFilterController:self];

    if (([v7 containsObject:&unk_1F190D0D8] & 1) == 0)
    {
      v8 = [PXFilterGroup groupWithName:&stru_1F1741150 filterIdentifiers:&unk_1F1911248];
      [(NSArray *)v5 addObject:v8];
    }

    contentSyndicationConfigurationProvider = [(PXUIFilterController *)self contentSyndicationConfigurationProvider];
    if ([contentSyndicationConfigurationProvider showUnsavedSyndicatedContentInPhotosGrids])
    {
      contentSyndicationConfigurationProvider2 = [(PXUIFilterController *)self contentSyndicationConfigurationProvider];
      if ([contentSyndicationConfigurationProvider2 contentSyndicationIsAvailable])
      {
        standardUserDefaults = [off_1E7721948 standardUserDefaults];
        includeSharedWithYou = [standardUserDefaults includeSharedWithYou];
        bOOLValue = [includeSharedWithYou BOOLValue];

        v4 = 0x1E695D000;
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }

    v14 = [objc_alloc(*(v4 + 3952)) initWithCapacity:4];
    if (bOOLValue)
    {
      if (([v7 containsObject:&unk_1F190D0F0] & 1) == 0)
      {
        [v14 addObject:&unk_1F190D0F0];
      }

      if (([v7 containsObject:&unk_1F190D108] & 1) == 0)
      {
        [v14 addObject:&unk_1F190D108];
      }
    }

    if (([v7 containsObject:&unk_1F190D120] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D120];
    }

    if (([v7 containsObject:&unk_1F190D138] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D138];
    }

    if (([v7 containsObject:&unk_1F190D150] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D150];
    }

    if (([v7 containsObject:&unk_1F190D168] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D168];
    }

    if (([v7 containsObject:&unk_1F190D180] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D180];
    }

    if (([v7 containsObject:&unk_1F190D198] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D198];
    }

    if (([v7 containsObject:&unk_1F190D1B0] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D1B0];
    }

    if (([v7 containsObject:&unk_1F190D1C8] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D1C8];
    }

    contentFilterState = [(PXUIFilterController *)self contentFilterState];
    shouldExcludeScreenshots = [contentFilterState shouldExcludeScreenshots];

    if ((shouldExcludeScreenshots & 1) == 0 && ([v7 containsObject:&unk_1F190D1E0] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D1E0];
    }

    if (bOOLValue && ([v7 containsObject:&unk_1F190D1F8] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D1F8];
    }

    if ([v14 count])
    {
      v17 = PXLocalizedStringFromTable(@"PXContentFilterGroupTitleOnlyShow", @"PhotosUICore");
      v18 = [PXFilterGroup groupWithName:v17 filterIdentifiers:v14];

      [(NSArray *)v5 addObject:v18];
    }

    v19 = [objc_alloc(*(v4 + 3952)) initWithCapacity:2];
    if (bOOLValue && ([v7 containsObject:&unk_1F190D210] & 1) == 0)
    {
      [v19 addObject:&unk_1F190D210];
    }

    if ([v19 count])
    {
      v20 = PXLocalizedStringFromTable(@"PXContentFilterGroupTitleInclude", @"PhotosUICore");
      v21 = [PXFilterGroup groupWithName:v20 filterIdentifiers:v19];

      [(NSArray *)v5 addObject:v21];
    }

    v22 = self->_contentFilterGroups;
    self->_contentFilterGroups = v5;

    contentFilterGroups = self->_contentFilterGroups;
  }

  return contentFilterGroups;
}

- (void)_setVisibilityForSender:(id)sender
{
  senderCopy = sender;
  v5 = [senderCopy tag];
  isOn = [senderCopy isOn];

  [(PXUIFilterController *)self _updateContentFilterStateWithFilterItemTag:v5 shouldEnable:isOn];
}

- (void)_updateFooterStatus
{
  tableView = [(PXUIFilterController *)self tableView];
  tableFooterView = [tableView tableFooterView];

  _localizedCounts = [(PXUIFilterController *)self _localizedCounts];
  _localizedGuestCounts = [(PXUIFilterController *)self _localizedGuestCounts];
  v7 = @"shared.with.you";
  if (!_localizedGuestCounts)
  {
    v7 = 0;
  }

  v8 = v7;
  contentFilterState = [(PXUIFilterController *)self contentFilterState];
  if ([contentFilterState isFiltering])
  {
    v10 = @"PXContentFilterFooterSubtitle_FilterResults";
  }

  else
  {
    v10 = @"PXContentFilterFooterSubtitle_NoFilters";
  }

  v11 = PXLocalizedStringFromTable(v10, @"PhotosUICore");

  viewModel = [tableFooterView viewModel];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __43__PXUIFilterController__updateFooterStatus__block_invoke;
  v20 = &unk_1E77403C8;
  v21 = _localizedCounts;
  v22 = _localizedGuestCounts;
  v23 = v8;
  v24 = v11;
  v13 = v11;
  v14 = v8;
  v15 = _localizedGuestCounts;
  v16 = _localizedCounts;
  [viewModel performChanges:&v17];

  [(PXUIFilterController *)self _updateFooterLayout:v17];
}

void __43__PXUIFilterController__updateFooterStatus__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setExtendedTitle:a1[5]];
  [v4 setExtendedSystemImageName:a1[6]];
  [v4 setSubtitle1:a1[7]];
}

- (void)_updateFooterLayout
{
  tableView = [(PXUIFilterController *)self tableView];
  tableFooterView = [tableView tableFooterView];
  [tableFooterView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [tableFooterView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v13 = v12;
  if (v12 != v11)
  {
    [tableFooterView setFrame:{v5, v7, v9, v12}];
    [tableView setTableFooterView:tableFooterView];
  }

  traitCollection = [(PXUIFilterController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    [tableView rectForSection:{objc_msgSend(tableView, "numberOfSections") - 1}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [tableView contentOffset];
    v25 = v24;
    [tableView frame];
    v26 = v25 + CGRectGetHeight(v47);
    v48.origin.x = v17;
    v48.origin.y = v19;
    v48.size.width = v21;
    v48.size.height = v23;
    v27 = v26 - CGRectGetMaxY(v48);
    if (v27 >= v13)
    {
      v27 = v13;
    }

    v28 = v13 + v25 - v27;
    [tableFooterView frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    orientation = [currentDevice orientation];

    if (orientation == 1)
    {
      v37 = 50.0;
    }

    else
    {
      v37 = 0.0;
    }

    [tableView bounds];
    [tableFooterView setFrame:{v30, v28 + v38 - v34 - v37, v32, v34}];
  }

  tableView2 = [(PXUIFilterController *)self tableView];
  [tableView2 contentSize];
  v41 = v40;
  v43 = v42;
  parentViewController = [(PXUIFilterController *)self parentViewController];
  [parentViewController setPreferredContentSize:{v41, v43}];

  [tableFooterView setHidden:{-[PXUIFilterController hidesFooter](self, "hidesFooter")}];
}

- (id)_localizedGuestCounts
{
  v11 = 0uLL;
  v12 = 0;
  countsController = self->_countsController;
  if (countsController)
  {
    [(PXAssetsDataSourceCountsController *)countsController guestCounts];
  }

  v4 = +[PXLemonadeSettings sharedInstance];
  if ([v4 sharedWithYouOnlyFilterIncludesUnsaved])
  {
    showOnlySharedWithYou = 0;
  }

  else
  {
    contentFilterState = [(PXUIFilterController *)self contentFilterState];
    showOnlySharedWithYou = [contentFilterState showOnlySharedWithYou];
  }

  v7 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && *(&v11 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((*(&v11 + 1) + v11 + v12 != 0) | showOnlySharedWithYou & 1)
    {
      v9 = v11;
      v10 = v12;
      v7 = PXLocalizedDetailedCountsDescription(&v9);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_localizedCounts
{
  v11 = 0uLL;
  v12 = 0;
  countsController = self->_countsController;
  if (countsController)
  {
    [(PXAssetsDataSourceCountsController *)countsController counts];
  }

  v4 = +[PXLemonadeSettings sharedInstance];
  if ([v4 sharedWithYouOnlyFilterIncludesUnsaved])
  {
  }

  else
  {
    contentFilterState = [(PXUIFilterController *)self contentFilterState];
    showOnlySharedWithYou = [contentFilterState showOnlySharedWithYou];

    if (showOnlySharedWithYou)
    {
      v7 = 0;
      goto LABEL_11;
    }
  }

  v7 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && *(&v11 + 1) != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v11;
    v10 = v12;
    v7 = PXLocalizedDetailedCountsDescription(&v9);
  }

LABEL_11:

  return v7;
}

- (void)_updateTableView
{
  contentFilterGroups = self->_contentFilterGroups;
  self->_contentFilterGroups = 0;

  tableView = [(PXUIFilterController *)self tableView];
  [tableView reloadData];

  [(PXUIFilterController *)self _updateFooterStatus];
}

- (void)_setupTableView
{
  v3 = [PXPhotosGlobalFooterView alloc];
  v6 = [(PXPhotosGlobalFooterView *)v3 initWithFrame:0 needsWorkaroundFor53118165:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = objc_alloc_init(off_1E7721588);
  [(PXPhotosGlobalFooterView *)v6 setViewModel:v4];

  tableView = [(PXUIFilterController *)self tableView];
  [tableView setAllowsMultipleSelection:1];
  [tableView setTableFooterView:v6];
}

- (void)_setupNavigationBar
{
  v3 = PXLocalizedStringFromTable(@"PXFilterPopoverTitle", @"PhotosUICore");
  [(PXUIFilterController *)self setTitle:v3];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonPressed_];
  navigationItem = [(PXUIFilterController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];
}

@end