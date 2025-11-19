@interface PXStorageTipListViewController
- (id)_noContentConfiguration;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_updateDisplayedItems;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)setup;
- (void)viewDidLoad;
@end

@implementation PXStorageTipListViewController

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v5 = [a4 copy];
  preferenceValue = self->_preferenceValue;
  self->_preferenceValue = v5;
}

- (void)_updateDisplayedItems
{
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(PXStorageTipListViewController *)self currentDataSection];
  v4 = [v3 count];

  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [(PXStorageTipListViewController *)self currentDataSection];
      v7 = [v6 objectAtIndex:v5];

      if ([v7 count] >= 1)
      {
        [v10 addObject:v7];
      }

      ++v5;
      v8 = [(PXStorageTipListViewController *)self currentDataSection];
      v9 = [v8 count];
    }

    while (v5 < v9);
  }

  [(PXStorageTipListViewController *)self setDisplayedItems:v10];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (PXStorageTipCollectionViewDataSectionObservationContext != a5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXStorageTipListViewController.m" lineNumber:194 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = v8;
  v10 = [(PXStorageTipListViewController *)self dataSectionManager];
  v11 = [v10 dataSection];

  v12 = [(PXStorageTipListViewController *)self currentDataSection];
  v13 = [v12 totalStorageSize];

  if (v13 >= 1)
  {
    v14 = [(PXStorageTipListViewController *)self storageRecovered];
    v15 = [(PXStorageTipListViewController *)self currentDataSection];
    -[PXStorageTipListViewController setStorageRecovered:](self, "setStorageRecovered:", [v15 totalStorageSize] + v14 - objc_msgSend(v11, "totalStorageSize"));
  }

  [(PXStorageTipListViewController *)self setCurrentDataSection:v11];
  [(PXStorageTipListViewController *)self _updateDisplayedItems];
  v16 = [(PXStorageTipListViewController *)self displayedItems];
  v17 = [v16 count];

  if (v17)
  {
    [(PXStorageTipListViewController *)self setContentUnavailableConfiguration:0];
  }

  else
  {
    v18 = [(PXStorageTipListViewController *)self _noContentConfiguration];
    [(PXStorageTipListViewController *)self setContentUnavailableConfiguration:v18];

    v19 = PLUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "Cloud Storage Recommendation has no content available.", v22, 2u);
    }
  }

  v20 = [(PXStorageTipListViewController *)self collectionView];
  [v20 reloadData];
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (*MEMORY[0x1E69DDC00] != v10)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXStorageTipListViewController.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"kind == UICollectionElementKindSectionFooter"}];
  }

  v12 = [v9 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:@"PXStorageTipFooter" forIndexPath:v11];
  v13 = [v12 defaultContentConfiguration];
  v14 = [(PXStorageTipListViewController *)self currentDataSection];
  v15 = [v14 objectAtIndex:0];

  v16 = [v15 count];
  v17 = [(PXStorageTipListViewController *)self photoLibrary];
  v18 = [v17 isCloudPhotoLibraryEnabled];
  v19 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_FOOTER_CLOUD_NoDuplicates";
  if (v16 > 0)
  {
    v19 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_FOOTER_CLOUD";
  }

  if (!v18)
  {
    v19 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_FOOTER_LOCAL";
  }

  v20 = v19;

  v21 = [(PXStorageTipListViewController *)self displayedItems];
  if ([v21 count])
  {
    v22 = PXLocalizedStringFromTable(v20, @"PhotosUICore");
    [v13 setText:v22];
  }

  else
  {
    [v13 setText:&stru_1F1741150];
  }

  [v12 setContentConfiguration:v13];

  return v12;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PXStorageTipListViewController *)self displayedItems];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v10 = [v7 dequeueReusableCellWithReuseIdentifier:@"PXStorageTipCell" forIndexPath:v6];

  v11 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v12 = MEMORY[0x1E69DCAB8];
  v13 = [v9 systemImageName];
  v14 = [v12 systemImageNamed:v13];
  [v11 setImage:v14];

  v15 = [v9 title];
  [v11 setText:v15];

  v16 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v9 countStyle:{"totalSizeInBytes"), 0}];
  [v11 setSecondaryText:v16];

  v17 = PLUIGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v9 title];
    v19 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v9 countStyle:{"totalSizeInBytes"), 0}];
    *buf = 138412546;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_INFO, "Storage Recoverable for %@: %@", buf, 0x16u);
  }

  [v11 setDirectionalLayoutMargins:{10.0, 20.0, 10.0, 20.0}];
  [v10 setContentConfiguration:v11];
  v20 = objc_alloc(MEMORY[0x1E69DC7B8]);
  v21 = MEMORY[0x1E696ADA0];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "count")}];
  v23 = [v21 localizedStringFromNumber:v22 numberStyle:1];
  v24 = [v20 initWithText:v23];

  v25 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  v28[0] = v25;
  v28[1] = v24;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [v10 setAccessories:v26];

  return v10;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PXStorageTipListViewController *)self displayedItems:a3];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = a4;
  [a3 deselectItemAtIndexPath:v7 animated:1];
  v8 = [(PXStorageTipListViewController *)self displayedItems];
  v9 = [v7 item];

  v14 = [v8 objectAtIndexedSubscript:v9];

  v10 = +[PXStorageManagementUtility storageViewForTipType:customAssetSelectionHandler:](PXStorageManagementUtility, "storageViewForTipType:customAssetSelectionHandler:", [v14 storageTipType], 0);
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;

    v12 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXStorageTipListViewController.m" lineNumber:123 description:{@"%@ should not be nil", @"storageManagementViewController"}];

  v12 = 0;
LABEL_7:

  [(UIViewController *)self settingsPresentViaNavigationProxy:v12];
}

- (id)_noContentConfiguration
{
  v3 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  v4 = [(PXStorageTipListViewController *)self photoLibrary];
  if ([v4 isCloudPhotoLibraryEnabled])
  {
    v5 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_EMPTY_CLOUD";
  }

  else
  {
    v5 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_EMPTY_LOCAL";
  }

  v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  [v3 setSecondaryText:v6];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v8 = [v3 secondaryTextProperties];
  [v8 setFont:v7];

  return v3;
}

- (void)setup
{
  v3 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  photoLibrary = self->_photoLibrary;
  self->_photoLibrary = v3;

  v17 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  [v17 setFooterMode:1];
  v5 = [MEMORY[0x1E69DC808] layoutWithListConfiguration:v17];
  v6 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v7 = [(PXStorageTipListViewController *)self view];
  [v7 bounds];
  v8 = [v6 initWithFrame:v5 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v8;

  [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PXStorageTipCell"];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"PXStorageTipFooter"];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  v10 = [[PXStorageTipCollectionViewDataSectionManager alloc] initWithPhotoLibrary:self->_photoLibrary];
  dataSectionManager = self->_dataSectionManager;
  self->_dataSectionManager = v10;

  [(PXStorageTipCollectionViewDataSectionManager *)self->_dataSectionManager registerChangeObserver:self context:PXStorageTipCollectionViewDataSectionObservationContext];
  v12 = [(PXDataSectionManager *)self->_dataSectionManager dataSection];
  currentDataSection = self->_currentDataSection;
  self->_currentDataSection = v12;

  self->_storageRecovered = 0;
  v14 = PXLocalizedStringFromTable(@"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_TITLE", @"PhotosUICore");
  [(PXStorageTipListViewController *)self setTitle:v14];

  v15 = [(PXStorageTipListViewController *)self view];
  [v15 addSubview:self->_collectionView];

  v16 = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  [(PXStorageTipListViewController *)self setContentUnavailableConfiguration:v16];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PXStorageTipListViewController;
  [(PXStorageTipListViewController *)&v12 viewDidLoad];
  Helper_x8__OBJC_CLASS___APApplication = gotLoadHelper_x8__OBJC_CLASS___APApplication(v3);
  v6 = [*(v5 + 208) applicationWithBundleIdentifier:{*MEMORY[0x1E69BFF18], Helper_x8__OBJC_CLASS___APApplication}];
  Helper_x8__OBJC_CLASS___APGuard = gotLoadHelper_x8__OBJC_CLASS___APGuard(v7);
  v10 = [*(v9 + 216) sharedGuard];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PXStorageTipListViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E774C5C0;
  v11[4] = self;
  [v10 authenticateForSubject:v6 completion:v11];
}

void __45__PXStorageTipListViewController_viewDidLoad__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PXStorageTipListViewController_viewDidLoad__block_invoke_2;
    block[3] = &unk_1E774C648;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PXStorageTipListViewController_viewDidLoad__block_invoke_3;
    v7[3] = &unk_1E774C648;
    v7[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v7);
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Failed to pass APGuard check with error: %@", buf, 0xCu);
    }
  }
}

@end