@interface PBFFocusPosterSelectionViewController
- (BOOL)posterRackCollectionViewControllerDidPressDone:(id)a3;
- (PBFFocusPosterSelectionViewController)initWithActivityUUID:(id)a3 activityIdentifier:(id)a4 galleryDataProvider:(id)a5 dataStore:(id)a6;
- (PBFFocusPosterSelectionViewControllerDelegate)delegate;
- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3;
- (id)_cancelBarButtonItem;
- (id)_cellForItemAtIndexPath:(id)a3 identifier:(id)a4;
- (id)_createLockScreenFromSuggestionsHeaderDescription;
- (id)_createLockScreenHeaderDescription;
- (id)_doneBarButtonItem;
- (id)_posterLimitExceededAlert;
- (id)_supplementaryViewAtIndexPath:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)compositionalLayout;
- (id)galleryViewController:(id)a3 willUseAnimationController:(id)a4 forDismissingEditingViewControllerWithAction:(int64_t)a5;
- (id)mastheadSectionWithEnvironment:(id)a3;
- (id)sectionWithEnvironment:(id)a3 section:(id)a4;
- (int64_t)pbf_layoutOrientation;
- (void)_applySnapshotForCurrentStateWithAnimation:(BOOL)a3;
- (void)_cancel:(id)a3;
- (void)_commitCheckedStates;
- (void)_done:(id)a3;
- (void)_logEditWithEditingViewController:(id)a3 posterUUID:(id)a4 lastModifiedDate:(id)a5;
- (void)_populateActivityMetadata;
- (void)_reloadDataWithAnimation:(BOOL)a3;
- (void)_showEditingForPoster:(id)a3 fromFocusPosterCell:(id)a4;
- (void)_showGallery;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)editingIngestionManager:(id)a3 didAccept:(id)a4 userChoice:(int64_t)a5;
- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7;
- (void)galleryViewController:(id)a3 didSelectPreview:(id)a4 fromPreviewView:(id)a5;
- (void)posterExtensionDataStoreDidUpdateConfigurations:(id)a3;
- (void)posterRackCollectionViewControllerDidPressCancel:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PBFFocusPosterSelectionViewController

- (id)mastheadSectionWithEnvironment:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFB870];
  v4 = [MEMORY[0x277CFB840] fractionalWidthDimension:{a3, 1.0}];
  v5 = [MEMORY[0x277CFB840] estimatedDimension:0.0];
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];

  v7 = [MEMORY[0x277CFB850] customGroupWithLayoutSize:v6 itemProvider:&__block_literal_global];
  v8 = MEMORY[0x277CFB870];
  v9 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v10 = [MEMORY[0x277CFB840] estimatedDimension:100.0];
  v11 = [v8 sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [MEMORY[0x277CFB830] boundarySupplementaryItemWithLayoutSize:v11 elementKind:*MEMORY[0x277D767D8] alignment:1];
  v13 = [MEMORY[0x277CFB868] sectionWithGroup:v7];
  v16[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v13 setBoundarySupplementaryItems:v14];

  return v13;
}

- (id)sectionWithEnvironment:(id)a3 section:(id)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 container];
  [v7 effectiveContentSize];
  v9 = (v8 + -64.0 + -40.0) / 3.0;

  v10 = [(PBFFocusPosterSelectionViewController *)self view];
  v11 = [v10 window];
  v12 = [v11 screen];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x277D759A0] mainScreen];
  }

  +[PBFFocusPosterCell estimatedCellSizeForItemWidth:screen:hasAccessory:](PBFFocusPosterCell, "estimatedCellSizeForItemWidth:screen:hasAccessory:", v13, [v6 isEqualToString:@"Configured"], v9);
  v15 = v14;
  if (!v12)
  {
  }

  v16 = MEMORY[0x277CFB870];
  v17 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v18 = [MEMORY[0x277CFB840] estimatedDimension:v15];
  v19 = [v16 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = MEMORY[0x277CFB870];
  v21 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v22 = [MEMORY[0x277CFB840] estimatedDimension:v15];
  v23 = [v20 sizeWithWidthDimension:v21 heightDimension:v22];

  v24 = [MEMORY[0x277CFB860] itemWithLayoutSize:v19 supplementaryItems:MEMORY[0x277CBEBF8]];
  [v24 setContentInsets:{10.0, 10.0, 10.0, 10.0}];
  v25 = [MEMORY[0x277CFB850] horizontalGroupWithLayoutSize:v23 subitem:v24 count:3];
  v26 = MEMORY[0x277CFB870];
  v27 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v28 = [MEMORY[0x277CFB840] estimatedDimension:60.0];
  v29 = [v26 sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [MEMORY[0x277CFB830] boundarySupplementaryItemWithLayoutSize:v29 elementKind:*MEMORY[0x277D767D8] alignment:1];
  v31 = [MEMORY[0x277CFB868] sectionWithGroup:v25];
  [v31 setContentInsets:{2.0, 22.0, 26.0, 22.0}];
  [v31 setInterGroupSpacing:26.0];
  v34[0] = v30;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [v31 setBoundarySupplementaryItems:v32];

  return v31;
}

- (id)compositionalLayout
{
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D752B8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PBFFocusPosterSelectionViewController_compositionalLayout__block_invoke;
  v7[3] = &unk_2782C5698;
  objc_copyWeak(v8, &location);
  v8[1] = a2;
  v7[4] = self;
  v5 = [v4 initWithSectionProvider:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

id __60__PBFFocusPosterSelectionViewController_compositionalLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!WeakRetained || (v8 = *(WeakRetained + 135)) == 0)
  {
    v11 = 0;
LABEL_12:

    return v11;
  }

  v9 = [v8 sectionIdentifierForIndex:a2];
  if ([v9 isEqualToString:@"Masthead"])
  {
    v10 = [v7 mastheadSectionWithEnvironment:v5];
LABEL_8:
    v11 = v10;
LABEL_11:

    goto LABEL_12;
  }

  if ([v9 isEqualToString:@"Create"])
  {
    v10 = [v7 sectionWithEnvironment:v5 section:v9];
    goto LABEL_8;
  }

  if ([v9 isEqualToString:@"Configured"])
  {
    v11 = [v7 sectionWithEnvironment:v5 section:v9];
    [v11 setContentInsets:{2.0, 22.0, 20.0, 22.0}];
    goto LABEL_11;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"NO"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__PBFFocusPosterSelectionViewController_compositionalLayout__block_invoke_cold_1(a1, v13);
  }

  [v13 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (PBFFocusPosterSelectionViewController)initWithActivityUUID:(id)a3 activityIdentifier:(id)a4 galleryDataProvider:(id)a5 dataStore:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v12;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v16)
  {
    [PBFFocusPosterSelectionViewController initWithActivityUUID:a2 activityIdentifier:? galleryDataProvider:? dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFFocusPosterSelectionViewController initWithActivityUUID:a2 activityIdentifier:? galleryDataProvider:? dataStore:?];
  }

  v17 = v13;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v17)
  {
    [PBFFocusPosterSelectionViewController initWithActivityUUID:a2 activityIdentifier:? galleryDataProvider:? dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFFocusPosterSelectionViewController initWithActivityUUID:a2 activityIdentifier:? galleryDataProvider:? dataStore:?];
  }

  v18 = v14;
  NSClassFromString(&cfstr_Pbfpostergalle.isa);
  if (!v18)
  {
    [PBFFocusPosterSelectionViewController initWithActivityUUID:a2 activityIdentifier:? galleryDataProvider:? dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFFocusPosterSelectionViewController initWithActivityUUID:a2 activityIdentifier:? galleryDataProvider:? dataStore:?];
  }

  v19 = v15;
  NSClassFromString(&cfstr_Pbfposterexten.isa);
  if (!v19)
  {
    [PBFFocusPosterSelectionViewController initWithActivityUUID:a2 activityIdentifier:? galleryDataProvider:? dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFFocusPosterSelectionViewController initWithActivityUUID:a2 activityIdentifier:? galleryDataProvider:? dataStore:?];
  }

  v20 = [(PBFFocusPosterSelectionViewController *)self compositionalLayout];
  v37.receiver = self;
  v37.super_class = PBFFocusPosterSelectionViewController;
  v21 = [(PBFFocusPosterSelectionViewController *)&v37 initWithCollectionViewLayout:v20];

  if (v21)
  {
    v22 = PBFLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PBFFocusPosterSelectionViewController initWithActivityUUID:activityIdentifier:galleryDataProvider:dataStore:];
    }

    objc_storeStrong(&v21->_activityUUID, a3);
    v23 = [v17 copy];
    activityIdentifier = v21->_activityIdentifier;
    v21->_activityIdentifier = v23;

    v25 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    configurationsToMetadata = v21->_configurationsToMetadata;
    v21->_configurationsToMetadata = v25;

    objc_storeStrong(&v21->_galleryDataProvider, a5);
    objc_storeStrong(&v21->_dataStore, a6);
    v27 = [[PBFApplicationStateNode alloc] initWithDescription:@"Focus Poster Selection View Controller"];
    state = v21->_state;
    v21->_state = v27;

    v29 = CACurrentMediaTime();
    [(PBFPosterExtensionDataStore *)v21->_dataStore addObserver:v21];
    dataStore = v21->_dataStore;
    v31 = [(NSUUID *)v21->_activityUUID UUIDString];
    v32 = +[PBFGenericDisplayContext mainScreen];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __111__PBFFocusPosterSelectionViewController_initWithActivityUUID_activityIdentifier_galleryDataProvider_dataStore___block_invoke;
    v34[3] = &unk_2782C56E8;
    v35 = v21;
    v36 = v29;
    [(PBFPosterExtensionDataStore *)dataStore fetchPosterSuggestionsForFocusModeWithUUID:v31 context:v32 completion:v34];
  }

  return v21;
}

void __111__PBFFocusPosterSelectionViewController_initWithActivityUUID_activityIdentifier_galleryDataProvider_dataStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PBFLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __111__PBFFocusPosterSelectionViewController_initWithActivityUUID_activityIdentifier_galleryDataProvider_dataStore___block_invoke_cold_1();
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __111__PBFFocusPosterSelectionViewController_initWithActivityUUID_activityIdentifier_galleryDataProvider_dataStore___block_invoke_138;
    block[3] = &unk_2782C56C0;
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);

    v7 = v9;
  }
}

uint64_t __111__PBFFocusPosterSelectionViewController_initWithActivityUUID_activityIdentifier_galleryDataProvider_dataStore___block_invoke_138(uint64_t a1)
{
  *(*(a1 + 32) + 1088) = 1;
  objc_storeStrong((*(a1 + 32) + 1096), *(a1 + 40));
  result = [*(a1 + 32) isViewLoaded];
  if (result)
  {
    v3 = CACurrentMediaTime() - *(a1 + 48) > 0.25;
    v4 = *(a1 + 32);

    return [v4 _applySnapshotForCurrentStateWithAnimation:v3];
  }

  return result;
}

- (void)dealloc
{
  [(PBFApplicationStateNode *)self->_state cancel];
  v3.receiver = self;
  v3.super_class = PBFFocusPosterSelectionViewController;
  [(PBFFocusPosterSelectionViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = PBFFocusPosterSelectionViewController;
  [(PBFFocusPosterSelectionViewController *)&v25 viewDidLoad];
  self->_initialLayoutOrientation = [(PBFFocusPosterSelectionViewController *)self pbf_layoutOrientation];
  v3 = [(PBFFocusPosterSelectionViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(PBFFocusPosterSelectionViewController *)self navigationItem];
  v6 = [(PBFFocusPosterSelectionViewController *)self _cancelBarButtonItem];
  [v5 setLeftBarButtonItem:v6];

  v7 = [(PBFFocusPosterSelectionViewController *)self navigationItem];
  v8 = [(PBFFocusPosterSelectionViewController *)self _doneBarButtonItem];
  [v7 setRightBarButtonItem:v8];

  v9 = [(PBFFocusPosterSelectionViewController *)self collectionView];
  [v9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Suggestion"];

  v10 = [(PBFFocusPosterSelectionViewController *)self collectionView];
  [v10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Poster"];

  v11 = [(PBFFocusPosterSelectionViewController *)self collectionView];
  v12 = objc_opt_class();
  v13 = *MEMORY[0x277D767D8];
  [v11 registerClass:v12 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"Header"];

  v14 = [(PBFFocusPosterSelectionViewController *)self collectionView];
  [v14 registerClass:objc_opt_class() forSupplementaryViewOfKind:v13 withReuseIdentifier:@"Masthead"];

  [(PBFFocusPosterSelectionViewController *)self _populateActivityMetadata];
  objc_initWeak(&location, self);
  v15 = objc_alloc(MEMORY[0x277D752D0]);
  v16 = [(PBFFocusPosterSelectionViewController *)self collectionView];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__PBFFocusPosterSelectionViewController_viewDidLoad__block_invoke;
  v22[3] = &unk_2782C5710;
  objc_copyWeak(&v23, &location);
  v17 = [v15 initWithCollectionView:v16 cellProvider:v22];
  dataSource = self->_dataSource;
  self->_dataSource = v17;

  v19 = self->_dataSource;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__PBFFocusPosterSelectionViewController_viewDidLoad__block_invoke_2;
  v20[3] = &unk_2782C5738;
  objc_copyWeak(&v21, &location);
  [(UICollectionViewDiffableDataSource *)v19 setSupplementaryViewProvider:v20];
  [(PBFFocusPosterSelectionViewController *)self _reloadDataWithAnimation:0];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

id __52__PBFFocusPosterSelectionViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _cellForItemAtIndexPath:v7 identifier:v6];

  return v9;
}

id __52__PBFFocusPosterSelectionViewController_viewDidLoad__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _supplementaryViewAtIndexPath:v5];

  return v7;
}

- (int64_t)pbf_layoutOrientation
{
  v2 = [(PBFFocusPosterSelectionViewController *)self presentingViewController];
  v3 = [v2 interfaceOrientation];

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = PBFFocusPosterSelectionViewController;
  v7 = a4;
  [(PBFFocusPosterSelectionViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(PBFFocusPosterSelectionViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__PBFFocusPosterSelectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_2782C5760;
  v12 = v9;
  v13 = self;
  v10 = v9;
  [v7 animateAlongsideTransition:v11 completion:&__block_literal_global_155];
}

uint64_t __92__PBFFocusPosterSelectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateLayout];
  v2 = *(a1 + 40);

  return [v2 _reloadDataWithAnimation:0];
}

- (id)_cancelBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];

  return v2;
}

- (id)_doneBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PBFFocusPosterSelectionViewController;
  [(PBFFocusPosterSelectionViewController *)&v5 viewWillAppear:a3];
  v4 = [(PBFPosterExtensionDataStore *)self->_dataStore applicationStateMonitor];
  [v4 pushState:self->_state];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PBFFocusPosterSelectionViewController;
  [(PBFFocusPosterSelectionViewController *)&v4 viewDidDisappear:a3];
  [(PBFApplicationStateNode *)self->_state cancel];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  dataSource = self->_dataSource;
  v8 = a3;
  v9 = -[UICollectionViewDiffableDataSource sectionIdentifierForIndex:](dataSource, "sectionIdentifierForIndex:", [v6 section]);
  v10 = [v8 cellForItemAtIndexPath:v6];

  if ([v9 isEqualToString:@"Create"])
  {
    v11 = -[PBFFocusPosterSuggestionData objectAtIndexedSubscript:](self->_suggestionData, "objectAtIndexedSubscript:", [v6 row]);
    [(PBFFocusPosterSelectionViewController *)self _showEditingForPoster:v11 fromFocusPosterCell:v10];
LABEL_20:

    goto LABEL_21;
  }

  if ([v9 isEqualToString:@"Configured"])
  {
    v11 = -[NSArray objectAtIndexedSubscript:](self->_configurations, "objectAtIndexedSubscript:", [v6 item]);
    v12 = [(NSMapTable *)self->_configurationsToMetadata objectForKey:v11];
    v13 = [v12 isChecked];
    if (v13)
    {
      [v12 setChecked:0];
      v14 = [v11 loadFocusConfigurationWithError:0];
      v15 = v14;
      if (!v14 || ([v14 activityUUID], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", self->_activityUUID), v16, v17))
      {
        [(NSMutableArray *)self->_nonFocusAssociatedConfigurations addObject:v11];
      }

      goto LABEL_18;
    }

    if ([(NSMutableArray *)self->_nonFocusAssociatedConfigurations count]== 1 && [(NSMutableArray *)self->_nonFocusAssociatedConfigurations containsObject:v11])
    {
      v18 = PBFLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "Cannot check checkbox because at least one Poster needs to be not associated with a focus.", buf, 2u);
      }

      v19 = MEMORY[0x277D75110];
      v20 = PBFLocalizedString(@"CANNOT_SET_POSTER_FOCUS_ALERT_TITLE");
      v21 = PBFLocalizedString(@"CANNOT_SET_POSTER_FOCUS_ALERT_MESSAGE");
      v22 = [v19 alertControllerWithTitle:v20 message:v21 preferredStyle:1];

      v23 = MEMORY[0x277D750F8];
      v24 = PBFLocalizedString(@"OK");
      v25 = [v23 actionWithTitle:v24 style:0 handler:0];

      [v22 addAction:v25];
      [(PBFFocusPosterSelectionViewController *)self presentViewController:v22 animated:1 completion:0];
    }

    else
    {
      v26 = [v12 otherFocusSymbolImageName];

      if (!v26)
      {
        [v12 setChecked:1];
        [(NSMutableArray *)self->_nonFocusAssociatedConfigurations removeObject:v11];
LABEL_18:
        [v10 setCheckboxOn:v13 ^ 1u];
        goto LABEL_19;
      }

      v37 = MEMORY[0x277D75110];
      v27 = PBFLocalizedString(@"LINK_POSTER_CONFIRMATION_TITLE");
      v28 = MEMORY[0x277CCACA8];
      v39 = PBFBundle();
      v29 = [v39 localizedStringForKey:@"LINK_POSTER_CONFIRMATION_MESSAGE" value:&stru_282CD3858 table:0];
      v30 = [v12 otherFocusDisplayName];
      v31 = [v28 localizedStringWithFormat:v29, v30];
      v38 = [v37 alertControllerWithTitle:v27 message:v31 preferredStyle:1];

      v32 = MEMORY[0x277D750F8];
      v33 = PBFLocalizedString(@"CANCEL");
      v25 = [v32 actionWithTitle:v33 style:1 handler:0];

      v34 = MEMORY[0x277D750F8];
      v22 = v38;
      v35 = PBFLocalizedString(@"LINK");
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __81__PBFFocusPosterSelectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
      v40[3] = &unk_2782C57A8;
      v41 = v12;
      v42 = self;
      v43 = v11;
      v44 = v10;
      v36 = [v34 actionWithTitle:v35 style:0 handler:v40];

      [v38 addAction:v25];
      [v38 addAction:v36];
      [(PBFFocusPosterSelectionViewController *)self presentViewController:v38 animated:1 completion:0];
    }

LABEL_19:
    goto LABEL_20;
  }

LABEL_21:
}

uint64_t __81__PBFFocusPosterSelectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setChecked:1];
  [*(a1 + 32) setOtherFocusSymbolImageName:0];
  [*(*(a1 + 40) + 1160) removeObject:*(a1 + 48)];
  [*(a1 + 56) setCheckboxOn:1];
  v2 = *(a1 + 56);

  return [v2 setFocusSymbolImageName:0];
}

- (void)_reloadDataWithAnimation:(BOOL)a3
{
  v36 = a3;
  v56 = *MEMORY[0x277D85DE8];
  v4 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
  switcherConfiguration = self->_switcherConfiguration;
  self->_switcherConfiguration = v4;

  v6 = [(PRSwitcherConfiguration *)self->_switcherConfiguration configurations];
  configurations = self->_configurations;
  self->_configurations = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  nonFocusAssociatedConfigurations = self->_nonFocusAssociatedConfigurations;
  self->_nonFocusAssociatedConfigurations = v8;

  v10 = [MEMORY[0x277D0A9E8] sharedActivityManager];
  v40 = [v10 availableActivities];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = [(UIViewController *)self pbf_displayContext];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_configurations;
  v43 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v43)
  {
    v42 = *v52;
    v37 = v11;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        v14 = [v13 loadFocusConfigurationWithError:0];
        v15 = [v13 _path];
        v16 = [v15 serverIdentity];

        v17 = [(NSMapTable *)self->_configurationsToMetadata objectForKey:v13];
        if (!v17)
        {
          v17 = objc_alloc_init(PBFFocusPosterConfigurationMetadata);
          [(NSMapTable *)self->_configurationsToMetadata setObject:v17 forKey:v13];
        }

        if (self->_activityUUID)
        {
          v18 = [v14 activityUUID];
          v19 = [v18 isEqual:self->_activityUUID];

          [(PBFFocusPosterConfigurationMetadata *)v17 setChecked:v19];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __66__PBFFocusPosterSelectionViewController__reloadDataWithAnimation___block_invoke;
          v49[3] = &unk_2782C57D0;
          v50 = v14;
          v20 = [v40 bs_firstObjectPassingTest:v49];
          v21 = v20;
          if (v19)
          {
            [(PBFFocusPosterConfigurationMetadata *)v17 setOtherFocusSymbolImageName:0];
            [(PBFFocusPosterConfigurationMetadata *)v17 setOtherFocusDisplayName:0];
          }

          else
          {
            v22 = [v20 activitySymbolImageName];
            [(PBFFocusPosterConfigurationMetadata *)v17 setOtherFocusSymbolImageName:v22];

            v23 = [v21 activityDisplayName];
            [(PBFFocusPosterConfigurationMetadata *)v17 setOtherFocusDisplayName:v23];
          }
        }

        if (!v14)
        {
          [(NSMutableArray *)self->_nonFocusAssociatedConfigurations addObject:v13];
        }

        v24 = [v16 posterUUID];
        v25 = [v24 UUIDString];

        if (!v25)
        {
          [PBFFocusPosterSelectionViewController _reloadDataWithAnimation:a2];
        }

        [v11 setObject:v13 forKey:v25];
        v26 = [(PBFFocusPosterConfigurationMetadata *)v17 cachedSnapshot];

        if (!v26)
        {
          dataStore = self->_dataStore;
          v28 = [v16 provider];
          v41 = [(PBFPosterExtensionDataStore *)dataStore providerForExtensionIdentifier:v28];

          v29 = [[PBFPosterConfigurationGalleryPreview alloc] initWithConfiguration:v13 extension:v41];
          [(PBFFocusPosterConfigurationMetadata *)v17 setPosterPreview:v29];
          v30 = self->_dataStore;
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __66__PBFFocusPosterSelectionViewController__reloadDataWithAnimation___block_invoke_201;
          v44[3] = &unk_2782C5820;
          v31 = v38;
          v45 = v31;
          v46 = self;
          v47 = v17;
          v48 = v25;
          v32 = v31;
          v11 = v37;
          [(PBFPosterExtensionDataStore *)v30 fetchGallerySnapshotForConfiguration:v13 context:v32 completion:v44];
        }
      }

      v43 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v43);
  }

  v33 = [v11 copy];
  uuidsToConfigurations = self->_uuidsToConfigurations;
  self->_uuidsToConfigurations = v33;

  [(PBFFocusPosterSelectionViewController *)self _applySnapshotForCurrentStateWithAnimation:v36];
}

uint64_t __66__PBFFocusPosterSelectionViewController__reloadDataWithAnimation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityUniqueIdentifier];
  v4 = [*(a1 + 32) activityUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __66__PBFFocusPosterSelectionViewController__reloadDataWithAnimation___block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PBFFocusPosterSelectionViewController__reloadDataWithAnimation___block_invoke_2;
  block[3] = &unk_2782C57F8;
  v15 = v5;
  v16 = v6;
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = *(a1 + 40);
  v13 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__PBFFocusPosterSelectionViewController__reloadDataWithAnimation___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 56) pbf_displayContext];
    LOBYTE(v2) = [v2 isEqualToDisplayContext:v3];

    if (v2)
    {
      [*(a1 + 64) setCachedSnapshot:*(a1 + 32)];
      v4 = [*(*(a1 + 56) + 1080) indexPathForItemIdentifier:*(a1 + 72)];
      if (v4)
      {
        v16 = v4;
        v5 = [*(a1 + 56) collectionView];
        v6 = [v5 cellForItemAtIndexPath:v16];

        [v6 setPosterImage:*(a1 + 32)];
        v7 = [@"poster-uuid--" stringByAppendingString:*(a1 + 72)];
        [v6 setCheckboxAssociatedPosterIdentifier:v7];

        v4 = v16;
      }
    }

    else
    {
      v15 = PBFLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "Focus Poster Selection: Display context changed. Will need to requery.", buf, 2u);
      }
    }
  }

  else
  {
    v8 = PBFLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__PBFFocusPosterSelectionViewController__reloadDataWithAnimation___block_invoke_2_cold_1(a1, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)_applySnapshotForCurrentStateWithAnimation:(BOOL)a3
{
  v3 = a3;
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [(PBFFocusPosterSuggestionData *)self->_suggestionData previews];
  v6 = [v5 bs_compactMap:&__block_literal_global_205];

  v7 = [(NSArray *)self->_configurations bs_compactMap:&__block_literal_global_208];
  v8 = objc_alloc_init(MEMORY[0x277CFB890]);
  v15[0] = @"Masthead";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v8 appendSectionsWithIdentifiers:v9];

  if (self->_receivedSuggestionsResponse)
  {
    v14 = @"Create";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v8 appendSectionsWithIdentifiers:v10];

    if ([v6 count])
    {
      [v8 appendItemsWithIdentifiers:v6];
    }
  }

  v13 = @"Configured";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v8 appendSectionsWithIdentifiers:v11];

  if (v7)
  {
    [v8 appendItemsWithIdentifiers:v7];
  }

  else
  {
    v12 = PBFLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(PBFFocusPosterSelectionViewController *)&self->_configurations _applySnapshotForCurrentStateWithAnimation:v12];
    }
  }

  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v8 animatingDifferences:v3];
}

id __84__PBFFocusPosterSelectionViewController__applySnapshotForCurrentStateWithAnimation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _path];
  v3 = [v2 serverIdentity];
  v4 = [v3 posterUUID];
  v5 = [v4 UUIDString];

  return v5;
}

- (void)posterExtensionDataStoreDidUpdateConfigurations:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__PBFFocusPosterSelectionViewController_posterExtensionDataStoreDidUpdateConfigurations___block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_cellForItemAtIndexPath:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PBFFocusPosterSelectionViewController *)self collectionView];
  v9 = -[UICollectionViewDiffableDataSource sectionIdentifierForIndex:](self->_dataSource, "sectionIdentifierForIndex:", [v6 section]);
  v10 = [v9 isEqualToString:@"Configured"];

  if (v10)
  {
    v11 = [v8 dequeueReusableCellWithReuseIdentifier:@"Poster" forIndexPath:v6];
    v12 = [(NSDictionary *)self->_uuidsToConfigurations objectForKey:v7];
    v13 = [(NSMapTable *)self->_configurationsToMetadata objectForKey:v12];
    [v11 setLayoutOrientation:self->_initialLayoutOrientation];
    v14 = [v13 cachedSnapshot];
    [v11 setPosterImage:v14];

    [v11 setPosterPreviewGenerator:self->_galleryDataProvider];
    v15 = [v13 posterPreview];
    [v11 setPosterPreview:v15];

    [v11 setCheckboxAssociatedPosterIdentifier:v7];
    if (self->_activityUUID)
    {
      [v11 setCheckboxOn:{objc_msgSend(v13, "isChecked")}];
      v16 = [v13 otherFocusSymbolImageName];
      [v11 setFocusSymbolImageName:v16];
    }

    else
    {
      [v11 setCheckboxOn:0];
      [v11 setFocusSymbolImageName:0];
    }

    [v11 setActionType:1];
  }

  else
  {
    v12 = [(PBFFocusPosterSuggestionData *)self->_suggestionData previewForUniqueIdentifier:v7];
    v11 = [v8 dequeueReusableCellWithReuseIdentifier:@"Suggestion" forIndexPath:v6];
    [v11 setLayoutOrientation:self->_initialLayoutOrientation];
    [v11 setActionType:0];
    v17 = [(PBFFocusPosterSuggestionData *)self->_suggestionData snapshotForPoster:v12];
    [v11 setPosterImage:v17];

    [v11 setPosterPreviewGenerator:self->_galleryDataProvider];
    [v11 setPosterPreview:v12];
  }

  return v11;
}

- (id)_supplementaryViewAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PBFFocusPosterSelectionViewController *)self collectionView];
  v6 = -[UICollectionViewDiffableDataSource sectionIdentifierForIndex:](self->_dataSource, "sectionIdentifierForIndex:", [v4 section]);
  v7 = [v6 isEqualToString:@"Masthead"];
  v8 = *MEMORY[0x277D767D8];
  if (!v7)
  {
    v9 = [v5 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:@"Header" forIndexPath:v4];

    if ([v6 isEqualToString:@"Create"])
    {
      v11 = PBFLocalizedString(@"CREATE_NEW_LOCK_SCREEN");
      [v9 setTitle:v11];

      if ([(PBFFocusPosterSuggestionData *)self->_suggestionData count])
      {
        [(PBFFocusPosterSelectionViewController *)self _createLockScreenFromSuggestionsHeaderDescription];
      }

      else
      {
        [(PBFFocusPosterSelectionViewController *)self _createLockScreenHeaderDescription];
      }
      v12 = ;
      [v9 setAttributedSubtitle:v12];

      v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__showGallery];
      [v9 addGestureRecognizer:v10];
    }

    else
    {
      if (![v6 isEqualToString:@"Configured"])
      {
        goto LABEL_13;
      }

      v10 = PBFLocalizedString(@"CHOOSE_FROM_YOUR_LOCK_SCREENS");
      [v9 setTitle:v10];
    }

    goto LABEL_12;
  }

  v9 = [v5 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:@"Masthead" forIndexPath:v4];

  if (self->_activitySymbolColor && self->_activitySymbolImageName)
  {
    v10 = [[_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration alloc] initWithKeyColor:self->_activitySymbolColor symbolImageName:self->_activitySymbolImageName];
    [v9 setConfiguration:v10];
LABEL_12:
  }

LABEL_13:

  return v9;
}

- (PREditingSceneViewControllerTopButtonLayout)topButtonLayoutForEditingSceneViewController:(SEL)a3
{
  v6 = [(PBFFocusPosterSelectionViewController *)self delegate];
  if (v6)
  {
    v8 = v6;
    [v6 topButtonLayoutForFocusPosterSelectionViewController:self];
    v6 = v8;
  }

  else
  {
    retstr->trailingTopButtonFrame.origin = 0u;
    retstr->trailingTopButtonFrame.size = 0u;
    retstr->leadingTopButtonFrame.origin = 0u;
    retstr->leadingTopButtonFrame.size = 0u;
  }

  return result;
}

- (void)editingSceneViewController:(id)a3 userDidDismissWithAction:(int64_t)a4 updatedConfiguration:(id)a5 updatedConfiguredProperties:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_opt_class();
  v17 = v12;
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  [v19 setGalleryDismissalAction:a4];
  if (a4 == 1)
  {
    v42 = v19;
    v43 = v15;
    v20 = [v14 suggestionMetadata];
    v41 = [v20 lastModifiedDate];

    v21 = [v14 suggestionMetadata];
    v22 = [v21 metadataBySettingLastModifiedDateToNow];

    if (!v22)
    {
      v23 = objc_alloc(MEMORY[0x277D3EE20]);
      v24 = [MEMORY[0x277CBEAA8] date];
      v22 = [v23 initWithSuggestedGalleryItem:0 suggestedComplicationsByIdentifier:MEMORY[0x277CBEC10] lastModifiedDate:v24];
    }

    v38 = v22;
    v40 = [v14 mutableCopy];
    [v40 setSuggestionMetadata:v22];
    v39 = objc_alloc_init(PBFPosterEditingIngestionManager);
    [(PBFPosterEditingIngestionManager *)v39 setDelegate:self];
    v25 = [(PBFPosterEditingIngestionManager *)v39 ingestConfiguration:v13 updatedConfiguredProperties:v40 editingViewController:v17 galleryViewController:0 showEditingConfirmation:1];
    v44 = v14;
    v26 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
    v45 = v13;
    v27 = [v26 mutableCopy];

    v28 = [v27 configurations];
    v29 = [v28 lastObject];

    v30 = [objc_alloc(MEMORY[0x277D3ED98]) initWithActivityIdentifier:self->_activityIdentifier activityUUID:self->_activityUUID];
    [v27 setFocusConfiguration:v30 forPosterConfiguration:v29];
    dataStore = self->_dataStore;
    v46 = 0;
    v32 = [(PBFPosterExtensionDataStore *)dataStore updateDataStoreForSwitcherConfiguration:v27 reason:@"Focus Poster Selection change focus configuration" error:&v46];
    v33 = v46;
    v34 = [v29 _path];
    v35 = [v34 serverIdentity];
    v36 = [v35 posterUUID];
    v37 = [v36 UUIDString];

    [(PBFFocusPosterSelectionViewController *)self _logEditWithEditingViewController:v17 posterUUID:v37 lastModifiedDate:v41];
    v15 = v43;
    v43[2](v43, v33);

    v14 = v44;
    v13 = v45;

    v19 = v42;
  }

  else
  {
    [v17 dismissViewControllerAnimated:1 completion:0];
    v15[2](v15, 0);
  }
}

- (void)_cancel:(id)a3
{
  v4 = [MEMORY[0x277D3EAF0] cancel];
  v5 = [(PBFFocusPosterSelectionViewController *)self delegate];
  [v5 focusPosterSelectionViewController:self willDismissWithResponse:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__PBFFocusPosterSelectionViewController__cancel___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PBFFocusPosterSelectionViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

void __49__PBFFocusPosterSelectionViewController__cancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 focusPosterSelectionViewController:*(a1 + 32) didDismissWithResponse:*(a1 + 40)];
}

- (void)_done:(id)a3
{
  [(PBFFocusPosterSelectionViewController *)self _commitCheckedStates];
  v4 = [MEMORY[0x277D3EAF0] done];
  v5 = [(PBFFocusPosterSelectionViewController *)self delegate];
  [v5 focusPosterSelectionViewController:self willDismissWithResponse:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PBFFocusPosterSelectionViewController__done___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PBFFocusPosterSelectionViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

void __47__PBFFocusPosterSelectionViewController__done___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 focusPosterSelectionViewController:*(a1 + 32) didDismissWithResponse:*(a1 + 40)];
}

- (void)_commitCheckedStates
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_activityUUID)
  {
    return;
  }

  v23 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
  v26 = [v23 mutableCopy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_configurations;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v3)
  {
    LOBYTE(v25) = 0;
    goto LABEL_20;
  }

  v4 = v3;
  v25 = 0;
  v5 = *v29;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v29 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v28 + 1) + 8 * i);
      v8 = [v7 loadFocusConfigurationWithError:0];
      v9 = [(NSMapTable *)self->_configurationsToMetadata objectForKey:v7];
      v10 = [v9 isChecked];

      v11 = [v8 activityUUID];
      v12 = [v11 isEqual:self->_activityUUID];

      if (v10)
      {
        if (v12)
        {
          goto LABEL_16;
        }

        v13 = [objc_alloc(MEMORY[0x277D3ED98]) initWithActivityIdentifier:self->_activityIdentifier activityUUID:self->_activityUUID];
        v14 = [v23 activeConfiguration];
        v15 = [v14 isEqual:v7];

        v16 = v15 | v25;
      }

      else
      {
        if (!v12)
        {
          goto LABEL_16;
        }

        v17 = [v23 activeConfiguration];
        v18 = [v17 isEqual:v7];

        if (!v18)
        {
          v13 = 0;
          goto LABEL_15;
        }

        [v26 setSelectedConfiguration:v7];
        v13 = 0;
        v16 = 1;
      }

      v25 = v16;
LABEL_15:
      [v26 setFocusConfiguration:v13 forPosterConfiguration:v7];

LABEL_16:
    }

    v4 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v4);
LABEL_20:

  dataStore = self->_dataStore;
  v27 = 0;
  v20 = [(PBFPosterExtensionDataStore *)dataStore updateDataStoreForSwitcherConfiguration:v26 reason:@"Focus poster selection commit" error:&v27];
  v21 = v27;
  if (v21)
  {
    v22 = PBFLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PBFFocusPosterSelectionViewController _commitCheckedStates];
    }
  }

  else if (v25)
  {
    [(PBFPosterExtensionDataStore *)self->_dataStore updateFocusModeForActivePosterChange];
  }
}

- (void)_showGallery
{
  v8 = [[PBFPosterGalleryPreviewViewController alloc] initWithNibName:0 bundle:0];
  [(PBFPosterGalleryPreviewViewController *)v8 setDelegate:self];
  [(PBFPosterGalleryPreviewViewController *)v8 setEditingSceneDelegate:self];
  [(PBFPosterGalleryPreviewViewController *)v8 setDataProvider:self->_galleryDataProvider];
  v3 = [(PBFPosterGalleryPreviewViewController *)v8 sheetPresentationController];
  [PBFPosterGalleryPreviewViewController configureSheetPresentationController:v3];
  [(PBFFocusPosterSelectionViewController *)self presentViewController:v8 animated:1 completion:0];
  v4 = [(PBFPosterExtensionDataStore *)self->_dataStore currentGalleryConfiguration];
  v5 = [v4 suggestedLayout];

  if (v5)
  {
    v6 = [MEMORY[0x277CEB530] sharedInstance];
    v7 = [v5 proactiveRepresentation];
    [v6 logFaceGalleryDidAppearWithFaceGalleryConfiguration:v7];
  }
}

- (void)_showEditingForPoster:(id)a3 fromFocusPosterCell:(id)a4
{
  v33 = a3;
  v6 = a4;
  if ([(PBFPosterExtensionDataStore *)self->_dataStore canPersistNewPosterConfiguration])
  {
    v7 = [v33 posterDescriptorLookupInfo];
    v8 = [v7 posterDescriptorPath];

    v9 = [v33 posterDescriptorLookupInfo];
    v10 = [v9 posterDescriptorExtension];

    v11 = MEMORY[0x277D3EB78];
    v12 = [v10 identity];
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v11 extensionInstanceForIdentity:v12 instanceIdentifier:v13];

    v15 = [PBFFocusEditingSceneViewController alloc];
    v16 = [MEMORY[0x277D3ED50] pbf_configurableOptionsForPreview:v33];
    v17 = [MEMORY[0x277D3ED60] pbf_configuredPropertiesForPreview:v33];
    v18 = [(PRSceneViewController *)v15 initWithProvider:v14 contents:v8 configurableOptions:v16 configuredProperties:v17];

    [(PREditingSceneViewController *)v18 setAcceptButtonType:1];
    [(PREditingSceneViewController *)v18 setDelegate:self];
    [(PREditingSceneViewController *)v18 addObserver:self];
    v19 = [v6 contentView];
    [v6 posterPreviewFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [v6 window];
    [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
    [(PBFFocusEditingSceneViewController *)v18 setPosterPreviewFrame:?];

    v29 = [v6 posterView];
    v30 = [v29 snapshot];
    [(PBFFocusEditingSceneViewController *)v18 setGalleryPreviewView:v30];

    v31 = [v6 makeComplicationsPortalView];
    [(PBFFocusEditingSceneViewController *)v18 setPosterPreviewComplicationsView:v31];

    v32 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v18];
    [v32 setNavigationBarHidden:1 animated:0];
    [v32 setModalPresentationStyle:0];
    [v32 setTransitioningDelegate:self];
    [(PBFFocusPosterSelectionViewController *)self presentViewController:v32 animated:1 completion:0];
  }

  else
  {
    v8 = [(PBFFocusPosterSelectionViewController *)self _posterLimitExceededAlert];
    [(PBFFocusPosterSelectionViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (id)_createLockScreenFromSuggestionsHeaderDescription
{
  createLockScreensFromSuggestionsHeaderDescription = self->_createLockScreensFromSuggestionsHeaderDescription;
  if (createLockScreensFromSuggestionsHeaderDescription)
  {
    v3 = createLockScreensFromSuggestionsHeaderDescription;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAB48]);
    v6 = PBFLocalizedString(@"CREATE_NEW_LOCK_SCREEN_FROM_SUGGESTIONS_HEADER_DESCRIPTION");
    v3 = [v5 initWithString:v6];

    v7 = [(NSAttributedString *)v3 string];
    v8 = PBFLocalizedString(@"CREATE_NEW_LOCK_SCREEN_HEADER_DESCRIPTION_GALLERY");
    v9 = [v7 rangeOfString:v8];
    v11 = v10;

    v12 = *MEMORY[0x277D740C0];
    v13 = [MEMORY[0x277D75348] systemBlueColor];
    [(NSAttributedString *)v3 addAttribute:v12 value:v13 range:v9, v11];

    objc_storeStrong(&self->_createLockScreensFromSuggestionsHeaderDescription, v3);
  }

  return v3;
}

- (id)_createLockScreenHeaderDescription
{
  createLockScreensHeaderDescription = self->_createLockScreensHeaderDescription;
  if (createLockScreensHeaderDescription)
  {
    v3 = createLockScreensHeaderDescription;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAB48]);
    v6 = PBFLocalizedString(@"CREATE_NEW_LOCK_SCREEN_HEADER_DESCRIPTION");
    v3 = [v5 initWithString:v6];

    v7 = [(NSAttributedString *)v3 string];
    v8 = PBFLocalizedString(@"CREATE_NEW_LOCK_SCREEN_HEADER_DESCRIPTION_GALLERY");
    v9 = [v7 rangeOfString:v8];
    v11 = v10;

    v12 = *MEMORY[0x277D740C0];
    v13 = [MEMORY[0x277D75348] systemBlueColor];
    [(NSAttributedString *)v3 addAttribute:v12 value:v13 range:v9, v11];

    objc_storeStrong(&self->_createLockScreensHeaderDescription, v3);
  }

  return v3;
}

- (void)_populateActivityMetadata
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_activityUUID)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = [MEMORY[0x277D0A9E8] sharedActivityManager];
    v4 = [v3 availableActivities];

    v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [v9 activityUniqueIdentifier];
          v11 = [v10 isEqual:self->_activityUUID];

          if (v11)
          {
            v18 = [v9 activitySymbolImageName];
            activitySymbolImageName = self->_activitySymbolImageName;
            self->_activitySymbolImageName = v18;

            v20 = [v9 activityColorName];
            v21 = NSSelectorFromString(v20);

            if (objc_opt_respondsToSelector())
            {
              v22 = [MEMORY[0x277D75348] performSelector:v21];
              activitySymbolColor = self->_activitySymbolColor;
              self->_activitySymbolColor = v22;
            }

            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v4 = PBFLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(PBFFocusPosterSelectionViewController *)&self->_activityUUID _populateActivityMetadata:v4];
    }

LABEL_14:
  }
}

- (void)_logEditWithEditingViewController:(id)a3 posterUUID:(id)a4 lastModifiedDate:(id)a5
{
  v8 = a5;
  v28 = a4;
  v9 = a3;
  v10 = [(PBFFocusPosterSelectionViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = @"focusSettingsSuggestion";
  if (isKindOfClass)
  {
    v12 = @"focusSettingsGallery";
  }

  v13 = v12;

  v29 = [v9 modifications];

  v14 = objc_alloc(MEMORY[0x277CEB7B8]);
  [v8 timeIntervalSinceNow];
  v16 = v15;

  v17 = [v29 colorModified];
  v18 = [v29 fontModified];
  v19 = [v29 numberingSystemModified];
  v20 = [v29 posterContentModified];
  v21 = [v29 widgetsModified];
  v22 = [v29 containedWidgetsBeforeEdit];
  v23 = [v29 startDate];
  [v23 timeIntervalSinceNow];
  BYTE4(v27) = v22;
  BYTE3(v27) = v21;
  BYTE2(v27) = v20;
  BYTE1(v27) = v19;
  LOBYTE(v27) = v18;
  v25 = [v14 initWithLockscreenId:v28 entryPoint:v13 newlyCreated:1 secondsSinceLastEdit:-v16 outcome:@"accepted" userChangedColor:v17 userChangedFont:v27 userChangedNumberingSystem:-v24 userChangedPosterContent:? userChangedWidgets:? didLockscreenHaveWidgetsBeforeEdit:? duration:?];

  v26 = [MEMORY[0x277CEB530] sharedInstance];
  [v26 logPosterEdit:v25 completion:&__block_literal_global_264];
}

void __103__PBFFocusPosterSelectionViewController__logEditWithEditingViewController_posterUUID_lastModifiedDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PBFLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __103__PBFFocusPosterSelectionViewController__logEditWithEditingViewController_posterUUID_lastModifiedDate___block_invoke_cold_1();
    }
  }
}

- (id)_posterLimitExceededAlert
{
  v2 = MEMORY[0x277D75110];
  v3 = PBFLocalizedString(@"TOO_MANY_CONFIGURATIONS_TITLE");
  v4 = PBFLocalizedString(@"TOO_MANY_CONFIGURATIONS_MESSAGE");
  v5 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = PBFLocalizedString(@"OK");
  v8 = [v6 actionWithTitle:v7 style:0 handler:0];
  [v5 addAction:v8];

  return v5;
}

- (void)galleryViewController:(id)a3 didSelectPreview:(id)a4 fromPreviewView:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(PBFPosterExtensionDataStore *)self->_dataStore canPersistNewPosterConfiguration])
  {
    [v11 presentPreview:v8 withMode:2 fromView:v9];
  }

  else
  {
    v10 = [(PBFFocusPosterSelectionViewController *)self _posterLimitExceededAlert];
    [v11 presentViewController:v10 animated:1 completion:0];
  }
}

- (id)galleryViewController:(id)a3 willUseAnimationController:(id)a4 forDismissingEditingViewControllerWithAction:(int64_t)a5
{
  if (a5 == 1)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v7 = a3;
  if (a5 == self && (objc_opt_self(), v8 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
  {
    v10 = [v7 bottomViewController];
    v11 = objc_opt_class();
    v12 = v10;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
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

    v16 = v13;

    [v16 posterPreviewFrame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [v16 galleryPreviewView];
    v26 = [v16 posterPreviewComplicationsView];

    v27 = [PBFEditingZoomUpAnimationController alloc];
    +[PBFFocusPosterCell cornerRadius];
    v14 = [(PBFEditingZoomAnimationController *)v27 initWithPreviewFrame:v25 previewCornerRadius:v26 previewView:v18 complicationsView:v20, v22, v24, v28];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 bottomViewController];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    if ([v11 galleryDismissalAction] == 1)
    {
      v10 = 0;
    }

    else
    {
      +[PBFFocusPosterCell cornerRadius];
      v13 = v12;
      [v11 posterPreviewFrame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v11 galleryPreviewView];
      v23 = [v11 posterPreviewComplicationsView];
      v10 = [(PBFEditingZoomAnimationController *)[PBFEditingZoomDownAnimationController alloc] initWithPreviewFrame:v22 previewCornerRadius:v23 previewView:v15 complicationsView:v17, v19, v21, v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)editingIngestionManager:(id)a3 didAccept:(id)a4 userChoice:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (a5)
  {
    [v9 dismissViewController];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [(PBFFocusPosterSelectionViewController *)self delegate];
    v12 = v11;
    if (v11)
    {
      [v11 topButtonLayoutForFocusPosterSelectionViewController:self];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
    }

    v22[0] = v23;
    v22[1] = v24;
    v22[2] = v25;
    v22[3] = v26;
    v17 = [PBFPosterRackCollectionViewController simplifiedHomeScreenSwitcherFor:v10 delegate:self topButtonLayout:v22];
    v18 = [v9 editingViewController];
    v19 = [v18 navigationController];

    if (!v19)
    {
      [PBFFocusPosterSelectionViewController editingIngestionManager:a2 didAccept:? userChoice:?];
    }

    v20 = [v9 editingViewController];
    v21 = [v20 navigationController];
    [v21 pushViewController:v17 animated:1];
  }

  else
  {
    v13 = [MEMORY[0x277D3EAF0] done];
    v14 = [(PBFFocusPosterSelectionViewController *)self delegate];
    [v14 focusPosterSelectionViewController:self willDismissWithResponse:v13];

    v15 = [(PBFFocusPosterSelectionViewController *)self presentingViewController];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__PBFFocusPosterSelectionViewController_editingIngestionManager_didAccept_userChoice___block_invoke;
    v27[3] = &unk_2782C58B0;
    v27[4] = self;
    v28 = v13;
    v16 = v13;
    [v15 dismissViewControllerAnimated:1 completion:v27];
  }
}

void __86__PBFFocusPosterSelectionViewController_editingIngestionManager_didAccept_userChoice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 focusPosterSelectionViewController:*(a1 + 32) didDismissWithResponse:*(a1 + 40)];
}

- (BOOL)posterRackCollectionViewControllerDidPressDone:(id)a3
{
  v4 = [MEMORY[0x277D3EAF0] done];
  v5 = [(PBFFocusPosterSelectionViewController *)self delegate];
  [v5 focusPosterSelectionViewController:self willDismissWithResponse:v4];

  v6 = [(PBFFocusPosterSelectionViewController *)self presentingViewController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__PBFFocusPosterSelectionViewController_posterRackCollectionViewControllerDidPressDone___block_invoke;
  v9[3] = &unk_2782C58B0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 dismissViewControllerAnimated:1 completion:v9];

  return 1;
}

void __88__PBFFocusPosterSelectionViewController_posterRackCollectionViewControllerDidPressDone___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 focusPosterSelectionViewController:*(a1 + 32) didDismissWithResponse:*(a1 + 40)];
}

- (void)posterRackCollectionViewControllerDidPressCancel:(id)a3
{
  v4 = [MEMORY[0x277D3EAF0] cancel];
  v5 = [(PBFFocusPosterSelectionViewController *)self delegate];
  [v5 focusPosterSelectionViewController:self willDismissWithResponse:v4];

  v6 = [(PBFFocusPosterSelectionViewController *)self presentingViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__PBFFocusPosterSelectionViewController_posterRackCollectionViewControllerDidPressCancel___block_invoke;
  v8[3] = &unk_2782C58B0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 dismissViewControllerAnimated:1 completion:v8];
}

void __90__PBFFocusPosterSelectionViewController_posterRackCollectionViewControllerDidPressCancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 focusPosterSelectionViewController:*(a1 + 32) didDismissWithResponse:*(a1 + 40)];
}

- (PBFFocusPosterSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __60__PBFFocusPosterSelectionViewController_compositionalLayout__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(*(a1 + 48));
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 32);
  v8 = 138544642;
  v9 = v4;
  v10 = 2114;
  v11 = v6;
  v12 = 2048;
  v13 = v7;
  v14 = 2114;
  v15 = @"PBFFocusPosterSelectionViewController.m";
  v16 = 1024;
  v17 = 210;
  v18 = 2114;
  v19 = a2;
  _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)initWithActivityUUID:(char *)a1 activityIdentifier:galleryDataProvider:dataStore:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithActivityUUID:(char *)a1 activityIdentifier:galleryDataProvider:dataStore:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithActivityUUID:(char *)a1 activityIdentifier:galleryDataProvider:dataStore:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterGalleryDataProviderClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithActivityUUID:(char *)a1 activityIdentifier:galleryDataProvider:dataStore:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterExtensionDataStoreClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithActivityUUID:activityIdentifier:galleryDataProvider:dataStore:.cold.5()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_21B526000, v0, OS_LOG_TYPE_DEBUG, "Creating PBFFocusPosterSelectionViewController with UUID: %@", v1, 0xCu);
}

- (void)initWithActivityUUID:(char *)a1 activityIdentifier:galleryDataProvider:dataStore:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithActivityUUID:(char *)a1 activityIdentifier:galleryDataProvider:dataStore:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithActivityUUID:(char *)a1 activityIdentifier:galleryDataProvider:dataStore:.cold.8(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithActivityUUID:(char *)a1 activityIdentifier:galleryDataProvider:dataStore:.cold.9(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_reloadDataWithAnimation:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"uuidString != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_applySnapshotForCurrentStateWithAnimation:(os_log_t)log .cold.1(void *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = @"NOT ";
  if (*a1)
  {
    v4 = @"NOT ";
  }

  else
  {
    v4 = &stru_282CD3858;
  }

  if (!*(a2 + 1128))
  {
    v3 = &stru_282CD3858;
  }

  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = v3;
  _os_log_fault_impl(&dword_21B526000, log, OS_LOG_TYPE_FAULT, "PBFFocusPosterSelectionViewController: Invalid state: _configurations is %@nil, _switcherConfiguration is %@nil", &v5, 0x16u);
}

- (void)editingIngestionManager:(char *)a1 didAccept:userChoice:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[manager editingViewController] navigationController]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end