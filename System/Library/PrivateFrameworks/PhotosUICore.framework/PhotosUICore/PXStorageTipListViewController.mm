@interface PXStorageTipListViewController
- (id)_noContentConfiguration;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_updateDisplayedItems;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setup;
- (void)viewDidLoad;
@end

@implementation PXStorageTipListViewController

- (void)handleURL:(id)l withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  v5 = [specifier copy];
  preferenceValue = self->_preferenceValue;
  self->_preferenceValue = v5;
}

- (void)_updateDisplayedItems
{
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  currentDataSection = [(PXStorageTipListViewController *)self currentDataSection];
  v4 = [currentDataSection count];

  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      currentDataSection2 = [(PXStorageTipListViewController *)self currentDataSection];
      v7 = [currentDataSection2 objectAtIndex:v5];

      if ([v7 count] >= 1)
      {
        [v10 addObject:v7];
      }

      ++v5;
      currentDataSection3 = [(PXStorageTipListViewController *)self currentDataSection];
      v9 = [currentDataSection3 count];
    }

    while (v5 < v9);
  }

  [(PXStorageTipListViewController *)self setDisplayedItems:v10];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXStorageTipCollectionViewDataSectionObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorageTipListViewController.m" lineNumber:194 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = observableCopy;
  dataSectionManager = [(PXStorageTipListViewController *)self dataSectionManager];
  dataSection = [dataSectionManager dataSection];

  currentDataSection = [(PXStorageTipListViewController *)self currentDataSection];
  totalStorageSize = [currentDataSection totalStorageSize];

  if (totalStorageSize >= 1)
  {
    storageRecovered = [(PXStorageTipListViewController *)self storageRecovered];
    currentDataSection2 = [(PXStorageTipListViewController *)self currentDataSection];
    -[PXStorageTipListViewController setStorageRecovered:](self, "setStorageRecovered:", [currentDataSection2 totalStorageSize] + storageRecovered - objc_msgSend(dataSection, "totalStorageSize"));
  }

  [(PXStorageTipListViewController *)self setCurrentDataSection:dataSection];
  [(PXStorageTipListViewController *)self _updateDisplayedItems];
  displayedItems = [(PXStorageTipListViewController *)self displayedItems];
  v17 = [displayedItems count];

  if (v17)
  {
    [(PXStorageTipListViewController *)self setContentUnavailableConfiguration:0];
  }

  else
  {
    _noContentConfiguration = [(PXStorageTipListViewController *)self _noContentConfiguration];
    [(PXStorageTipListViewController *)self setContentUnavailableConfiguration:_noContentConfiguration];

    v19 = PLUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "Cloud Storage Recommendation has no content available.", v22, 2u);
    }
  }

  collectionView = [(PXStorageTipListViewController *)self collectionView];
  [collectionView reloadData];
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (*MEMORY[0x1E69DDC00] != kindCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorageTipListViewController.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"kind == UICollectionElementKindSectionFooter"}];
  }

  v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"PXStorageTipFooter" forIndexPath:pathCopy];
  defaultContentConfiguration = [v12 defaultContentConfiguration];
  currentDataSection = [(PXStorageTipListViewController *)self currentDataSection];
  v15 = [currentDataSection objectAtIndex:0];

  v16 = [v15 count];
  photoLibrary = [(PXStorageTipListViewController *)self photoLibrary];
  isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];
  v19 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_FOOTER_CLOUD_NoDuplicates";
  if (v16 > 0)
  {
    v19 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_FOOTER_CLOUD";
  }

  if (!isCloudPhotoLibraryEnabled)
  {
    v19 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_FOOTER_LOCAL";
  }

  v20 = v19;

  displayedItems = [(PXStorageTipListViewController *)self displayedItems];
  if ([displayedItems count])
  {
    v22 = PXLocalizedStringFromTable(v20, @"PhotosUICore");
    [defaultContentConfiguration setText:v22];
  }

  else
  {
    [defaultContentConfiguration setText:&stru_1F1741150];
  }

  [v12 setContentConfiguration:defaultContentConfiguration];

  return v12;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  displayedItems = [(PXStorageTipListViewController *)self displayedItems];
  v9 = [displayedItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PXStorageTipCell" forIndexPath:pathCopy];

  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v12 = MEMORY[0x1E69DCAB8];
  systemImageName = [v9 systemImageName];
  v14 = [v12 systemImageNamed:systemImageName];
  [subtitleCellConfiguration setImage:v14];

  title = [v9 title];
  [subtitleCellConfiguration setText:title];

  v16 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v9 countStyle:{"totalSizeInBytes"), 0}];
  [subtitleCellConfiguration setSecondaryText:v16];

  v17 = PLUIGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    title2 = [v9 title];
    v19 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v9 countStyle:{"totalSizeInBytes"), 0}];
    *buf = 138412546;
    v30 = title2;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_INFO, "Storage Recoverable for %@: %@", buf, 0x16u);
  }

  [subtitleCellConfiguration setDirectionalLayoutMargins:{10.0, 20.0, 10.0, 20.0}];
  [v10 setContentConfiguration:subtitleCellConfiguration];
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PXStorageTipListViewController *)self displayedItems:view];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  displayedItems = [(PXStorageTipListViewController *)self displayedItems];
  item = [pathCopy item];

  v14 = [displayedItems objectAtIndexedSubscript:item];

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

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorageTipListViewController.m" lineNumber:123 description:{@"%@ should not be nil", @"storageManagementViewController"}];

  v12 = 0;
LABEL_7:

  [(UIViewController *)self settingsPresentViaNavigationProxy:v12];
}

- (id)_noContentConfiguration
{
  emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  photoLibrary = [(PXStorageTipListViewController *)self photoLibrary];
  if ([photoLibrary isCloudPhotoLibraryEnabled])
  {
    v5 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_EMPTY_CLOUD";
  }

  else
  {
    v5 = @"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_EMPTY_LOCAL";
  }

  v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  [emptyConfiguration setSecondaryText:v6];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  secondaryTextProperties = [emptyConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v7];

  return emptyConfiguration;
}

- (void)setup
{
  px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  photoLibrary = self->_photoLibrary;
  self->_photoLibrary = px_systemPhotoLibrary;

  v17 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  [v17 setFooterMode:1];
  v5 = [MEMORY[0x1E69DC808] layoutWithListConfiguration:v17];
  v6 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(PXStorageTipListViewController *)self view];
  [view bounds];
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
  dataSection = [(PXDataSectionManager *)self->_dataSectionManager dataSection];
  currentDataSection = self->_currentDataSection;
  self->_currentDataSection = dataSection;

  self->_storageRecovered = 0;
  v14 = PXLocalizedStringFromTable(@"STORAGE_MANAGEMENT_REVIEW_ALL_LIST_TITLE", @"PhotosUICore");
  [(PXStorageTipListViewController *)self setTitle:v14];

  view2 = [(PXStorageTipListViewController *)self view];
  [view2 addSubview:self->_collectionView];

  loadingConfiguration = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  [(PXStorageTipListViewController *)self setContentUnavailableConfiguration:loadingConfiguration];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PXStorageTipListViewController;
  [(PXStorageTipListViewController *)&v12 viewDidLoad];
  Helper_x8__OBJC_CLASS___APApplication = gotLoadHelper_x8__OBJC_CLASS___APApplication(v3);
  v6 = [*(v5 + 208) applicationWithBundleIdentifier:{*MEMORY[0x1E69BFF18], Helper_x8__OBJC_CLASS___APApplication}];
  Helper_x8__OBJC_CLASS___APGuard = gotLoadHelper_x8__OBJC_CLASS___APGuard(v7);
  sharedGuard = [*(v9 + 216) sharedGuard];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__PXStorageTipListViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E774C5C0;
  v11[4] = self;
  [sharedGuard authenticateForSubject:v6 completion:v11];
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