@interface PXUIFilterController
- (PXFilterControllerDelegate)filterControllerDelegate;
- (PXUIFilterController)initWithDelegate:(id)a3 libraryFilterState:(id)a4 initialContentFilterState:(id)a5 sharedLibraryStatusProvider:(id)a6 filterControllerOptions:(unint64_t)a7;
- (id)_contentFilterGroups;
- (id)_localizedCounts;
- (id)_localizedGuestCounts;
- (id)_sectionHeaderTitleTextAttributes;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_contentFilterGroupsCount;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_doneButtonPressed:(id)a3;
- (void)_filterControllerDidClose;
- (void)_setVisibilityForSender:(id)a3;
- (void)_setupNavigationBar;
- (void)_setupTableView;
- (void)_tappedRowAtIndexPath:(id)a3;
- (void)_updateContentFilterStateWithFilterItemTag:(int64_t)a3 shouldEnable:(BOOL)a4;
- (void)_updateFooterLayout;
- (void)_updateFooterStatus;
- (void)_updateTableView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)setContentFilterState:(id)a3;
- (void)setDataSourceManager:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PXUIFilterController

- (PXFilterControllerDelegate)filterControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_filterControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXContentSyndicationConfigurationObservationContext_175640 == a5)
  {
    if ((v6 & 5) == 0)
    {
      goto LABEL_16;
    }

    v10 = v8;
    v9 = [(PXUIFilterController *)self contentFilterState];

    if (v9)
    {
      [(PXUIFilterController *)self setContentFilterState:0];
LABEL_15:
      v8 = v10;
      goto LABEL_16;
    }

LABEL_14:
    [(PXUIFilterController *)self _updateTableView];
    goto LABEL_15;
  }

  if (PXCountsControllerObserverContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }

    v10 = v8;
    [(PXUIFilterController *)self _updateFooterStatus];
    goto LABEL_15;
  }

  if (PXSharedLibraryStatusProviderObservationContext_175641 == a5)
  {
    if ((v6 & 3) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if ((v6 & 1) != 0 && PXLibraryFilterStateObservationContext_175642 == a5)
  {
LABEL_13:
    v10 = v8;
    goto LABEL_14;
  }

LABEL_16:
}

- (void)setContentFilterState:(id)a3
{
  v4 = a3;
  contentFilterState = self->_contentFilterState;
  if (contentFilterState != v4)
  {
    v14 = v4;
    v6 = [(PXContentFilterState *)contentFilterState isEqual:v4];
    v4 = v14;
    if (!v6)
    {
      v7 = [(PXContentFilterState *)v14 copy];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        v10 = self->_contentFilterState;
        self->_contentFilterState = v9;
      }

      else
      {
        v10 = [(PXContentFilterState *)self->_contentFilterState photoLibrary];
        v11 = [PXContentFilterState defaultFilterStateForPhotoLibrary:v10];
        v12 = self->_contentFilterState;
        self->_contentFilterState = v11;
      }

      [(PXUIFilterController *)self _updateTableView];
      v13 = [(PXUIFilterController *)self filterControllerDelegate];
      [v13 filterController:self contentFilterStateChanged:self->_contentFilterState];

      v4 = v14;
    }
  }
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = [a3 presentedViewController];
  v8 = [v7 modalPresentationStyle];

  if (a4 == -1 && v8 == 7)
  {
    v9 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  v11 = v9;
  v10 = [(PXUIFilterController *)self tableView];
  [v10 setBackgroundColor:v11];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [(PXUIFilterController *)self _contentFilterGroups];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [v7 name];

  v9 = [MEMORY[0x1E69DCC28] headerConfiguration];
  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = [(PXUIFilterController *)self _sectionHeaderTitleTextAttributes];
  v12 = [v10 initWithString:v8 attributes:v11];
  [v9 setAttributedText:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69DD050]);
  [v13 setContentConfiguration:v9];
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
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40 = v6;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"PXFilterControllerCellIdentifier"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PXFilterControllerCellIdentifier"];
    [v8 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [v8 setSelectionStyle:0];
    [v8 setInsetsLayoutMarginsFromSafeArea:0];
    v9 = [v8 textLabel];
    [v9 setAdjustsFontSizeToFitWidth:1];
    [v9 setNumberOfLines:2];
    [v9 setLineBreakMode:0];
    [v9 setMinimumScaleFactor:0.600000024];
    v10 = [v8 detailTextLabel];
    [v10 setAdjustsFontSizeToFitWidth:1];
    [v10 setMinimumScaleFactor:0.400000006];
  }

  v11 = [v8 textLabel];
  [v11 setText:0];

  v12 = [v8 detailTextLabel];
  [v12 setText:0];

  v13 = [v8 imageView];
  [v13 setImage:0];

  [v8 setAccessoryType:0];
  [v8 setAccessoryView:0];
  v14 = [v7 section];
  v15 = [(PXUIFilterController *)self _contentFilterGroups];
  v16 = [v15 objectAtIndexedSubscript:v14];
  v17 = [v16 filterIdentifiers];
  v39 = v7;
  v18 = [v17 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
  v19 = [v18 intValue];

  v20 = [(PXUIFilterController *)self contentFilterState];
  v21 = [v20 isContentFilterActive:v19];

  v22 = PXContentFilterImageForItemTag(v19);
  v23 = [v8 imageView];
  [v23 setImage:v22];

  v24 = PXContentFilterTitleForItemTag(v19);
  v25 = [v8 textLabel];
  [v25 setText:v24];

  v26 = [(PXUIFilterController *)self libraryFilterState];
  v27 = [v26 viewMode];

  v28 = [(PXUIFilterController *)self sharedLibraryStatusProvider];
  v29 = PXContentFilterSubtitleForItemTag(v19, v28, v27);
  v30 = [v8 detailTextLabel];
  [v30 setText:v29];

  v31 = [MEMORY[0x1E69DC888] grayColor];
  v32 = [v8 detailTextLabel];
  [v32 setTextColor:v31];

  [v8 setTag:v19];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PXUIFilterController_tableView_cellForRowAtIndexPath___block_invoke;
  aBlock[3] = &unk_1E77403F0;
  aBlock[4] = self;
  v43 = v21;
  v33 = v8;
  v42 = v33;
  v34 = _Block_copy(aBlock);
  if ([PXUIFilterController _isContentFilterItemTagHandledBySwitch:v19])
  {
    v34[2](v34, v19);
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PXUIFilterController *)self _contentFilterGroups];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 filterIdentifiers];
  v8 = [v7 count];

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
  v3 = [(PXUIFilterController *)self contentSyndicationConfigurationProvider];
  [v3 registerChangeObserver:self context:PXContentSyndicationConfigurationObservationContext_175640];
}

- (void)setDataSourceManager:(id)a3
{
  v5 = a3;
  if (self->_dataSourceManager != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_dataSourceManager, a3);
    [(PXAssetsDataSourceCountsController *)self->_countsController unregisterChangeObserver:self context:PXCountsControllerObserverContext];
    v6 = [[off_1E77214A8 alloc] initWithAssetsDataSourceManager:v8];
    countsController = self->_countsController;
    self->_countsController = v6;

    [(PXAssetsDataSourceCountsController *)self->_countsController registerChangeObserver:self context:PXCountsControllerObserverContext];
    [(PXAssetsDataSourceCountsController *)self->_countsController prepareCountsIfNeeded];
    [(PXUIFilterController *)self _updateFooterStatus];
    v5 = v8;
  }
}

- (PXUIFilterController)initWithDelegate:(id)a3 libraryFilterState:(id)a4 initialContentFilterState:(id)a5 sharedLibraryStatusProvider:(id)a6 filterControllerOptions:(unint64_t)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXUIFilterController.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"contentFilterState"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PXUIFilterController.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"libraryFilterState"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PXUIFilterController.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = PXUIFilterController;
  v17 = [(PXUIFilterController *)&v26 initWithStyle:2];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sharedLibraryStatusProvider, a6);
    objc_storeStrong(&v18->_libraryFilterState, a4);
    objc_storeStrong(&v18->_contentFilterState, a5);
    objc_storeWeak(&v18->_filterControllerDelegate, v13);
    v18->_hidesFooter = (v7 & 8) != 0;
    v19 = [(PXContentFilterState *)v18->_contentFilterState photoLibrary];
    v20 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v19];
    contentSyndicationConfigurationProvider = v18->_contentSyndicationConfigurationProvider;
    v18->_contentSyndicationConfigurationProvider = v20;

    [(PXSharedLibraryStatusProvider *)v18->_sharedLibraryStatusProvider registerChangeObserver:v18 context:PXSharedLibraryStatusProviderObservationContext_175641];
    [(PXLibraryFilterState *)v18->_libraryFilterState registerChangeObserver:v18 context:PXLibraryFilterStateObservationContext_175642];
  }

  return v18;
}

- (void)_doneButtonPressed:(id)a3
{
  v4 = a3;
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
  v3 = [(PXUIFilterController *)self filterControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 filterControllerDidClose:self];
  }
}

- (void)_updateContentFilterStateWithFilterItemTag:(int64_t)a3 shouldEnable:(BOOL)a4
{
  v4 = a4;
  v7 = [(PXUIFilterController *)self contentFilterState];
  v13 = PXContentFilterGetUpdatedState(v7, a3, v4, 0);

  [(PXUIFilterController *)self setContentFilterState:v13];
  if (a3 == 3)
  {
    if (v13)
    {
      v8 = [v13 includeSharedWithYou];
    }

    else
    {
      v8 = 1;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    v10 = [off_1E7721948 standardUserDefaults];
    [v10 setIncludeSharedWithYou:v9];
  }

  if (v4)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    PXContentFilterSendAnalyticsForItemSelected(a3, v12);
  }
}

- (void)_tappedRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXUIFilterController *)self tableView];
  v8 = [v5 cellForRowAtIndexPath:v4];

  v6 = [v8 isSelected];
  v7 = [v8 tag];
  if (![PXUIFilterController _isContentFilterItemTagHandledBySwitch:v7])
  {
    [(PXUIFilterController *)self _updateContentFilterStateWithFilterItemTag:v7 shouldEnable:v6];
  }
}

- (int64_t)_contentFilterGroupsCount
{
  v2 = [(PXUIFilterController *)self _contentFilterGroups];
  v3 = [v2 count];

  return v3;
}

- (id)_contentFilterGroups
{
  contentFilterGroups = self->_contentFilterGroups;
  if (!contentFilterGroups)
  {
    v4 = 0x1E695D000uLL;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v6 = [(PXUIFilterController *)self filterControllerDelegate];
    v7 = [v6 contentFilterHiddenTypesForFilterController:self];

    if (([v7 containsObject:&unk_1F190D0D8] & 1) == 0)
    {
      v8 = [PXFilterGroup groupWithName:&stru_1F1741150 filterIdentifiers:&unk_1F1911248];
      [(NSArray *)v5 addObject:v8];
    }

    v9 = [(PXUIFilterController *)self contentSyndicationConfigurationProvider];
    if ([v9 showUnsavedSyndicatedContentInPhotosGrids])
    {
      v10 = [(PXUIFilterController *)self contentSyndicationConfigurationProvider];
      if ([v10 contentSyndicationIsAvailable])
      {
        v11 = [off_1E7721948 standardUserDefaults];
        v12 = [v11 includeSharedWithYou];
        v13 = [v12 BOOLValue];

        v4 = 0x1E695D000;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_alloc(*(v4 + 3952)) initWithCapacity:4];
    if (v13)
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

    v15 = [(PXUIFilterController *)self contentFilterState];
    v16 = [v15 shouldExcludeScreenshots];

    if ((v16 & 1) == 0 && ([v7 containsObject:&unk_1F190D1E0] & 1) == 0)
    {
      [v14 addObject:&unk_1F190D1E0];
    }

    if (v13 && ([v7 containsObject:&unk_1F190D1F8] & 1) == 0)
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
    if (v13 && ([v7 containsObject:&unk_1F190D210] & 1) == 0)
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

- (void)_setVisibilityForSender:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];
  v6 = [v4 isOn];

  [(PXUIFilterController *)self _updateContentFilterStateWithFilterItemTag:v5 shouldEnable:v6];
}

- (void)_updateFooterStatus
{
  v3 = [(PXUIFilterController *)self tableView];
  v4 = [v3 tableFooterView];

  v5 = [(PXUIFilterController *)self _localizedCounts];
  v6 = [(PXUIFilterController *)self _localizedGuestCounts];
  v7 = @"shared.with.you";
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(PXUIFilterController *)self contentFilterState];
  if ([v9 isFiltering])
  {
    v10 = @"PXContentFilterFooterSubtitle_FilterResults";
  }

  else
  {
    v10 = @"PXContentFilterFooterSubtitle_NoFilters";
  }

  v11 = PXLocalizedStringFromTable(v10, @"PhotosUICore");

  v12 = [v4 viewModel];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __43__PXUIFilterController__updateFooterStatus__block_invoke;
  v20 = &unk_1E77403C8;
  v21 = v5;
  v22 = v6;
  v23 = v8;
  v24 = v11;
  v13 = v11;
  v14 = v8;
  v15 = v6;
  v16 = v5;
  [v12 performChanges:&v17];

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
  v45 = [(PXUIFilterController *)self tableView];
  v3 = [v45 tableFooterView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v13 = v12;
  if (v12 != v11)
  {
    [v3 setFrame:{v5, v7, v9, v12}];
    [v45 setTableFooterView:v3];
  }

  v14 = [(PXUIFilterController *)self traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 1)
  {
    [v45 rectForSection:{objc_msgSend(v45, "numberOfSections") - 1}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v45 contentOffset];
    v25 = v24;
    [v45 frame];
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
    [v3 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = [MEMORY[0x1E69DC938] currentDevice];
    v36 = [v35 orientation];

    if (v36 == 1)
    {
      v37 = 50.0;
    }

    else
    {
      v37 = 0.0;
    }

    [v45 bounds];
    [v3 setFrame:{v30, v28 + v38 - v34 - v37, v32, v34}];
  }

  v39 = [(PXUIFilterController *)self tableView];
  [v39 contentSize];
  v41 = v40;
  v43 = v42;
  v44 = [(PXUIFilterController *)self parentViewController];
  [v44 setPreferredContentSize:{v41, v43}];

  [v3 setHidden:{-[PXUIFilterController hidesFooter](self, "hidesFooter")}];
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
    v5 = 0;
  }

  else
  {
    v6 = [(PXUIFilterController *)self contentFilterState];
    v5 = [v6 showOnlySharedWithYou];
  }

  v7 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && *(&v11 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((*(&v11 + 1) + v11 + v12 != 0) | v5 & 1)
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
    v5 = [(PXUIFilterController *)self contentFilterState];
    v6 = [v5 showOnlySharedWithYou];

    if (v6)
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

  v4 = [(PXUIFilterController *)self tableView];
  [v4 reloadData];

  [(PXUIFilterController *)self _updateFooterStatus];
}

- (void)_setupTableView
{
  v3 = [PXPhotosGlobalFooterView alloc];
  v6 = [(PXPhotosGlobalFooterView *)v3 initWithFrame:0 needsWorkaroundFor53118165:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = objc_alloc_init(off_1E7721588);
  [(PXPhotosGlobalFooterView *)v6 setViewModel:v4];

  v5 = [(PXUIFilterController *)self tableView];
  [v5 setAllowsMultipleSelection:1];
  [v5 setTableFooterView:v6];
}

- (void)_setupNavigationBar
{
  v3 = PXLocalizedStringFromTable(@"PXFilterPopoverTitle", @"PhotosUICore");
  [(PXUIFilterController *)self setTitle:v3];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonPressed_];
  v4 = [(PXUIFilterController *)self navigationItem];
  [v4 setRightBarButtonItem:v5];
}

@end