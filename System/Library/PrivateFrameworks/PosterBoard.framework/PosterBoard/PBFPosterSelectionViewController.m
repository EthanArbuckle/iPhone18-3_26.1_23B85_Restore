@interface PBFPosterSelectionViewController
- (PBFPosterSelectionViewController)initWithAllowedConfigurationUUIDs:(id)a3 selectedConfigurationUUID:(id)a4 galleryDataProvider:(id)a5 dataStore:(id)a6;
- (PBFPosterSelectionViewControllerDelegate)delegate;
- (id)_cancelBarButtonItem;
- (id)_cellForItemAtIndexPath:(id)a3 identifier:(id)a4;
- (id)_doneBarButtonItem;
- (id)compositionalLayout;
- (id)sectionWithEnvironment:(id)a3;
- (void)_applySnapshotForCurrentStateWithAnimation:(BOOL)a3;
- (void)_cancel:(id)a3;
- (void)_done:(id)a3;
- (void)_orientationDidChange;
- (void)_reloadDataWithAnimation:(BOOL)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)posterExtensionDataStoreDidUpdateConfigurations:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PBFPosterSelectionViewController

- (id)sectionWithEnvironment:(id)a3
{
  v4 = [a3 container];
  [v4 effectiveContentSize];
  v6 = (v5 + -64.0 + -40.0) / 3.0;

  v7 = [(PBFPosterSelectionViewController *)self view];
  v8 = [v7 window];
  v9 = [v8 screen];
  if (v9)
  {
    [PBFFocusPosterCell estimatedCellSizeForItemWidth:v9 screen:1 hasAccessory:v6];
    v11 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [PBFFocusPosterCell estimatedCellSizeForItemWidth:v12 screen:1 hasAccessory:v6];
    v11 = v13;
  }

  v14 = MEMORY[0x277CFB870];
  v15 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v16 = [MEMORY[0x277CFB840] estimatedDimension:v11];
  v17 = [v14 sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = MEMORY[0x277CFB870];
  v19 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v20 = [MEMORY[0x277CFB840] estimatedDimension:v11];
  v21 = [v18 sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = [MEMORY[0x277CFB860] itemWithLayoutSize:v17 supplementaryItems:MEMORY[0x277CBEBF8]];
  [v22 setContentInsets:{10.0, 10.0, 10.0, 10.0}];
  v23 = [MEMORY[0x277CFB850] horizontalGroupWithLayoutSize:v21 subitem:v22 count:3];
  v24 = [MEMORY[0x277CFB868] sectionWithGroup:v23];
  [v24 setContentInsets:{26.0, 22.0, 26.0, 22.0}];
  [v24 setInterGroupSpacing:26.0];

  return v24;
}

- (id)compositionalLayout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x277D752B8]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PBFPosterSelectionViewController_compositionalLayout__block_invoke;
  v5[3] = &unk_2782C7D90;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __55__PBFPosterSelectionViewController_compositionalLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && WeakRetained[131])
  {
    v7 = [WeakRetained sectionWithEnvironment:v4];
    [v7 setContentInsets:{26.0, 22.0, 20.0, 22.0}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PBFPosterSelectionViewController)initWithAllowedConfigurationUUIDs:(id)a3 selectedConfigurationUUID:(id)a4 galleryDataProvider:(id)a5 dataStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v13;
  NSClassFromString(&cfstr_Pbfpostergalle.isa);
  if (!v15)
  {
    [PBFPosterSelectionViewController initWithAllowedConfigurationUUIDs:a2 selectedConfigurationUUID:? galleryDataProvider:? dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSelectionViewController initWithAllowedConfigurationUUIDs:a2 selectedConfigurationUUID:? galleryDataProvider:? dataStore:?];
  }

  v16 = v14;
  NSClassFromString(&cfstr_Pbfposterexten.isa);
  if (!v16)
  {
    [PBFPosterSelectionViewController initWithAllowedConfigurationUUIDs:a2 selectedConfigurationUUID:? galleryDataProvider:? dataStore:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSelectionViewController initWithAllowedConfigurationUUIDs:a2 selectedConfigurationUUID:? galleryDataProvider:? dataStore:?];
  }

  v17 = [(PBFPosterSelectionViewController *)self compositionalLayout];
  v24.receiver = self;
  v24.super_class = PBFPosterSelectionViewController;
  v18 = [(PBFPosterSelectionViewController *)&v24 initWithCollectionViewLayout:v17];

  if (v18)
  {
    v19 = [v11 copy];
    allowedConfigurationUUIDs = v18->_allowedConfigurationUUIDs;
    v18->_allowedConfigurationUUIDs = v19;

    objc_storeStrong(&v18->_selectedConfigurationUUID, a4);
    v21 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    configurationsToMetadata = v18->_configurationsToMetadata;
    v18->_configurationsToMetadata = v21;

    objc_storeStrong(&v18->_galleryDataProvider, a5);
    objc_storeStrong(&v18->_dataStore, a6);
    [(PBFPosterExtensionDataStore *)v18->_dataStore addObserver:v18];
  }

  return v18;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PBFPosterSelectionViewController;
  [(PBFPosterSelectionViewController *)&v17 viewDidLoad];
  v3 = [(PBFPosterSelectionViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(PBFPosterSelectionViewController *)self navigationItem];
  v6 = [(PBFPosterSelectionViewController *)self _cancelBarButtonItem];
  [v5 setLeftBarButtonItem:v6];

  v7 = [(PBFPosterSelectionViewController *)self navigationItem];
  v8 = [(PBFPosterSelectionViewController *)self _doneBarButtonItem];
  [v7 setRightBarButtonItem:v8];

  v9 = [(PBFPosterSelectionViewController *)self collectionView];
  [v9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Poster"];

  [(PBFPosterSelectionViewController *)self _validateDoneButton];
  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x277D752D0]);
  v11 = [(PBFPosterSelectionViewController *)self collectionView];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PBFPosterSelectionViewController_viewDidLoad__block_invoke;
  v14[3] = &unk_2782C5710;
  objc_copyWeak(&v15, &location);
  v12 = [v10 initWithCollectionView:v11 cellProvider:v14];
  dataSource = self->_dataSource;
  self->_dataSource = v12;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

id __47__PBFPosterSelectionViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _cellForItemAtIndexPath:v7 identifier:v6];

  return v9;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PBFPosterSelectionViewController;
  [(PBFPosterSelectionViewController *)&v4 viewIsAppearing:a3];
  self->_layoutOrientation = [(UIViewController *)self pbf_layoutOrientation];
  [(PBFPosterSelectionViewController *)self _reloadDataWithAnimation:0];
}

- (void)_orientationDidChange
{
  v8 = [(PBFPosterSelectionViewController *)self view];
  v3 = [v8 window];
  if (v3)
  {
    v4 = v3;
    layoutOrientation = self->_layoutOrientation;
    v6 = [(UIViewController *)self pbf_layoutOrientation];

    if (layoutOrientation == v6)
    {
      return;
    }

    self->_layoutOrientation = [(UIViewController *)self pbf_layoutOrientation];
    [(PBFPosterSelectionViewController *)self _reloadDataWithAnimation:0];
    v8 = [(PBFPosterSelectionViewController *)self collectionView];
    v7 = [v8 collectionViewLayout];
    [v7 invalidateLayout];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__PBFPosterSelectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_2782C7DB8;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
}

- (id)_cancelBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];

  return v2;
}

- (id)_doneBarButtonItem
{
  doneButtonItem = self->_doneButtonItem;
  if (!doneButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
    v5 = self->_doneButtonItem;
    self->_doneButtonItem = v4;

    [(UIBarButtonItem *)self->_doneButtonItem setEnabled:0];
    doneButtonItem = self->_doneButtonItem;
  }

  v6 = doneButtonItem;

  return v6;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_configurations, "objectAtIndexedSubscript:", [v7 item]);
  v9 = [v8 _path];
  v10 = [v9 serverIdentity];
  v11 = [v10 posterUUID];

  allowedConfigurationUUIDs = self->_allowedConfigurationUUIDs;
  if (!allowedConfigurationUUIDs || [(NSSet *)allowedConfigurationUUIDs containsObject:v11])
  {
    v25 = v6;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [v6 visibleCells];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = objc_opt_class();
          v20 = v18;
          if (v19)
          {
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          [v22 setCheckboxOn:0];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v6 = v25;
    v23 = [v25 cellForItemAtIndexPath:v7];
    objc_storeStrong(&self->_selectedConfigurationUUID, v11);
    [v23 setCheckboxOn:1];
    [(PBFPosterSelectionViewController *)self _validateDoneButton];

    v8 = v24;
  }
}

- (void)_reloadDataWithAnimation:(BOOL)a3
{
  v28 = a3;
  v42 = *MEMORY[0x277D85DE8];
  v4 = [(PBFPosterExtensionDataStore *)self->_dataStore switcherConfiguration];
  switcherConfiguration = self->_switcherConfiguration;
  self->_switcherConfiguration = v4;

  v6 = [(PRSwitcherConfiguration *)self->_switcherConfiguration configurations];
  configurations = self->_configurations;
  self->_configurations = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = [(UIViewController *)self pbf_displayContext];
  [(NSMapTable *)self->_configurationsToMetadata removeAllObjects];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_configurations;
  v32 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v32)
  {
    v9 = *v38;
    v29 = *v38;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [v11 _path];
        v13 = [v12 serverIdentity];

        v14 = [(NSMapTable *)self->_configurationsToMetadata objectForKey:v11];
        if (!v14)
        {
          v14 = objc_alloc_init(PBFPosterSelectionConfigurationMetadata);
          [(NSMapTable *)self->_configurationsToMetadata setObject:v14 forKey:v11];
        }

        v15 = [v13 posterUUID];
        v16 = [v15 UUIDString];

        if (!v16)
        {
          [PBFPosterSelectionViewController _reloadDataWithAnimation:a2];
        }

        [v8 setObject:v11 forKey:v16];
        v17 = [(PBFPosterSelectionConfigurationMetadata *)v14 cachedSnapshot];

        if (!v17)
        {
          dataStore = self->_dataStore;
          [v13 provider];
          v20 = v19 = v8;
          v21 = [(PBFPosterExtensionDataStore *)dataStore providerForExtensionIdentifier:v20];

          v22 = [[PBFPosterConfigurationGalleryPreview alloc] initWithConfiguration:v11 extension:v21];
          [(PBFPosterSelectionConfigurationMetadata *)v14 setPosterPreview:v22];
          v23 = self->_dataStore;
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __61__PBFPosterSelectionViewController__reloadDataWithAnimation___block_invoke;
          v33[3] = &unk_2782C6510;
          v34 = v14;
          v35 = self;
          v36 = v16;
          v24 = v23;
          v9 = v29;
          [(PBFPosterExtensionDataStore *)v24 fetchGallerySnapshotForConfiguration:v11 context:v30 completion:v33];

          v8 = v19;
        }
      }

      v32 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v32);
  }

  v25 = [v8 copy];
  uuidsToConfigurations = self->_uuidsToConfigurations;
  self->_uuidsToConfigurations = v25;

  [(PBFPosterSelectionViewController *)self _applySnapshotForCurrentStateWithAnimation:v28];
}

void __61__PBFPosterSelectionViewController__reloadDataWithAnimation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PBFPosterSelectionViewController__reloadDataWithAnimation___block_invoke_2;
  block[3] = &unk_2782C7610;
  v13 = v5;
  v14 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__PBFPosterSelectionViewController__reloadDataWithAnimation___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 48) setCachedSnapshot:?];
    v2 = [*(*(a1 + 56) + 1048) indexPathForItemIdentifier:*(a1 + 64)];
    if (v2)
    {
      v6 = v2;
      v3 = [*(a1 + 56) collectionView];
      v4 = [v3 cellForItemAtIndexPath:v6];

      [v4 setPosterImage:*(a1 + 32)];
      [v4 setCheckboxAssociatedPosterIdentifier:*(a1 + 64)];

      v2 = v6;
    }
  }

  else
  {
    v5 = PBFLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__PBFPosterSelectionViewController__reloadDataWithAnimation___block_invoke_2_cold_1(a1, v5);
    }
  }
}

- (void)_applySnapshotForCurrentStateWithAnimation:(BOOL)a3
{
  v3 = a3;
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_configurations bs_compactMap:&__block_literal_global_11];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CFB890]);
    v8[0] = @"Configured";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v6 appendSectionsWithIdentifiers:v7];

    [v6 appendItemsWithIdentifiers:v5];
    [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v6 animatingDifferences:v3];
  }
}

id __79__PBFPosterSelectionViewController__applySnapshotForCurrentStateWithAnimation___block_invoke(uint64_t a1, void *a2)
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
  block[2] = __84__PBFPosterSelectionViewController_posterExtensionDataStoreDidUpdateConfigurations___block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __84__PBFPosterSelectionViewController_posterExtensionDataStoreDidUpdateConfigurations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _reloadDataWithAnimation:1];
  }
}

- (id)_cellForItemAtIndexPath:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v23 = [(PBFPosterSelectionViewController *)self collectionView];
  v8 = [v23 dequeueReusableCellWithReuseIdentifier:@"Poster" forIndexPath:v7];

  v9 = [(NSDictionary *)self->_uuidsToConfigurations objectForKey:v6];
  v10 = [(NSMapTable *)self->_configurationsToMetadata objectForKey:v9];
  v11 = [v9 _path];
  v12 = [v11 serverIdentity];
  v13 = [v12 posterUUID];

  allowedConfigurationUUIDs = self->_allowedConfigurationUUIDs;
  if (allowedConfigurationUUIDs)
  {
    v15 = [(NSSet *)allowedConfigurationUUIDs containsObject:v13];
  }

  else
  {
    v15 = 1;
  }

  v16 = [v10 cachedSnapshot];
  [v8 setPosterImage:v16];

  [v8 setPosterPreviewGenerator:self->_galleryDataProvider];
  v17 = [v10 posterPreview];
  [v8 setPosterPreview:v17];

  [v8 setCheckboxAssociatedPosterIdentifier:v6];
  selectedConfigurationUUID = self->_selectedConfigurationUUID;
  v19 = [v9 _path];
  v20 = [v19 serverIdentity];
  v21 = [v20 posterUUID];
  [v8 setCheckboxOn:{-[NSUUID isEqual:](selectedConfigurationUUID, "isEqual:", v21)}];

  [v8 setActionType:1];
  [v8 setEnabled:v15];

  return v8;
}

- (void)_cancel:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277D3EAE8]) initWithResult:0 configurationUUID:0];
  v5 = [(PBFPosterSelectionViewController *)self delegate];
  [v5 posterSelectionViewController:self willDismissWithResponse:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PBFPosterSelectionViewController__cancel___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PBFPosterSelectionViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

void __44__PBFPosterSelectionViewController__cancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 posterSelectionViewController:*(a1 + 32) didDismissWithResponse:*(a1 + 40)];
}

- (void)_done:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277D3EAE8]) initWithResult:1 configurationUUID:self->_selectedConfigurationUUID];
  v5 = [(PBFPosterSelectionViewController *)self delegate];
  [v5 posterSelectionViewController:self willDismissWithResponse:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PBFPosterSelectionViewController__done___block_invoke;
  v7[3] = &unk_2782C58B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PBFPosterSelectionViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

void __42__PBFPosterSelectionViewController__done___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 posterSelectionViewController:*(a1 + 32) didDismissWithResponse:*(a1 + 40)];
}

- (PBFPosterSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAllowedConfigurationUUIDs:(char *)a1 selectedConfigurationUUID:galleryDataProvider:dataStore:.cold.1(char *a1)
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

- (void)initWithAllowedConfigurationUUIDs:(char *)a1 selectedConfigurationUUID:galleryDataProvider:dataStore:.cold.2(char *a1)
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

- (void)initWithAllowedConfigurationUUIDs:(char *)a1 selectedConfigurationUUID:galleryDataProvider:dataStore:.cold.3(char *a1)
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

- (void)initWithAllowedConfigurationUUIDs:(char *)a1 selectedConfigurationUUID:galleryDataProvider:dataStore:.cold.4(char *a1)
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

void __61__PBFPosterSelectionViewController__reloadDataWithAnimation___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "Poster Selection: Could not fetch snapshot for configuration: %@", &v3, 0xCu);
}

@end