@interface PXPeopleDonationSettingsViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PXPeopleDonationSettingsViewController)init;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)commonInit;
- (void)loadSuggestionsForPerson:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXPeopleDonationSettingsViewController

- (void)loadSuggestionsForPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(PXPeopleDonationSettingsViewController *)self dataSource];
  v7 = [v6 personAtIndex:v5];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__224210;
  v22[4] = __Block_byref_object_dispose__224211;
  v23 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = [(PXPeopleDonationSettingsViewController *)self collectionView];
  v10 = [v9 traitCollection];
  [v10 displayScale];
  v12 = v11;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__PXPeopleDonationSettingsViewController_loadSuggestionsForPerson___block_invoke;
  v19[3] = &unk_1E7747868;
  v21 = v22;
  v13 = v8;
  v20 = v13;
  [v6 imageAtIndex:v5 targetSize:v19 displayScale:110.0 resultHandler:{110.0, v12}];

  v14 = dispatch_time(0, 20000000000);
  dispatch_semaphore_wait(v13, v14);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__PXPeopleDonationSettingsViewController_loadSuggestionsForPerson___block_invoke_2;
  v16[3] = &unk_1E774C620;
  v17 = v7;
  v18 = self;
  v15 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  _Block_object_dispose(v22, 8);
}

void __67__PXPeopleDonationSettingsViewController_loadSuggestionsForPerson___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __67__PXPeopleDonationSettingsViewController_loadSuggestionsForPerson___block_invoke_2(uint64_t a1)
{
  v3 = [[PXPeopleDonationSettingsSuggestionViewController alloc] initWithPerson:*(a1 + 32)];
  v2 = [*(a1 + 40) navigationController];
  [v2 pushViewController:v3 animated:1];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__PXPeopleDonationSettingsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v8[3] = &unk_1E774C620;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = 10.0;
  v6 = 0.0;
  v7 = 10.0;
  v8 = 2.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  [a3 bounds];
  v6 = v5;
  v7 = 10.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  [a3 bounds];
  v6 = v5;
  v7 = 10.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 110.0;
  v6 = 110.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:v6];
  v9 = [v8 tag] + 1;
  [v8 setTag:v9];
  v10 = [(PXPeopleDonationSettingsViewController *)self dataSource];
  v11 = [v6 item];

  v12 = [v7 traitCollection];

  [v12 displayScale];
  v14 = v13;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __80__PXPeopleDonationSettingsViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v32[3] = &unk_1E7747840;
  v15 = v8;
  v33 = v15;
  v34 = v9;
  [v10 imageAtIndex:v11 targetSize:v32 displayScale:110.0 resultHandler:{110.0, v14}];

  v16 = [(PXPeopleDonationSettingsViewController *)self dataSource];
  v17 = [v16 personAtIndex:v11];

  v18 = [v10 titleAtIndex:v11];
  if (![v18 length])
  {
    v19 = [v17 localIdentifier];

    v18 = v19;
  }

  v20 = [v10 photoQuantityAtIndex:v11];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v20];
  v22 = [v15 quantityLabel];
  [v22 setText:v21];

  v23 = [v15 avatarView];
  [v23 setAlpha:1.0];
  [v23 setHighlighted:0];
  v27 = *(MEMORY[0x1E695EFD0] + 16);
  v29 = *MEMORY[0x1E695EFD0];
  v28 = v29;
  v30 = v27;
  v31 = *(MEMORY[0x1E695EFD0] + 32);
  v26 = v31;
  [v23 setTransform:&v29];
  v29 = v28;
  v30 = v27;
  v31 = v26;
  [v15 setTransform:&v29];
  [v15 setName:v18];
  [v15 setTextAlpha:1.0];
  v24 = v15;

  return v15;
}

void __80__PXPeopleDonationSettingsViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXPeopleDonationSettingsViewController_collectionView_cellForItemAtIndexPath___block_invoke_2;
  block[3] = &unk_1E7749FF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v8 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __80__PXPeopleDonationSettingsViewController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) tag];
  if (result == *(a1 + 48))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setImage:v4];
  }

  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PXPeopleDonationSettingsViewController *)self dataSource:a3];
  v5 = [v4 numberOfMembers];

  return v5;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PXPeopleDonationSettingsViewController;
  [(PXPeopleDonationSettingsViewController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v3 setMinimumInteritemSpacing:15.0];
  [v3 setMinimumLineSpacing:15.0];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [(PXPeopleDonationSettingsViewController *)self view];
  [v5 frame];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];

  [v6 setAutoresizingMask:18];
  [v6 setDataSource:self];
  [v6 setDelegate:self];
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v6 setAllowsSelection:1];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"cellIdentifier"];
  [(PXPeopleDonationSettingsViewController *)self setCollectionView:v6];
  v8 = [(PXPeopleDonationSettingsViewController *)self view];
  v9 = [(PXPeopleDonationSettingsViewController *)self collectionView];
  [v8 addSubview:v9];

  objc_initWeak(&location, self);
  v10 = [(PXPeopleDonationSettingsViewController *)self dataSource];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PXPeopleDonationSettingsViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E774C318;
  objc_copyWeak(&v12, &location);
  [v10 loadObjectsAndUpdateMembersWithCompletion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __53__PXPeopleDonationSettingsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PXPeopleDonationSettingsViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __53__PXPeopleDonationSettingsViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  [v1 reloadData];
}

- (PXPeopleDonationSettingsViewController)init
{
  v5.receiver = self;
  v5.super_class = PXPeopleDonationSettingsViewController;
  v2 = [(PXPeopleDonationSettingsViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXPeopleDonationSettingsViewController *)v2 commonInit];
  }

  return v3;
}

- (void)commonInit
{
  v3 = [(PXPeopleDonationSettingsViewController *)self dataSource];

  if (!v3)
  {
    v5 = [(PXPeopleDataSource *)[PXPeoplePersonDataSource alloc] initWithName:@"PeopleDonationDataSource" objectsReloadBlock:&__block_literal_global_224259 asynchronousLoad:1 callbackDelegate:self];
    [(PXPeopleDataSource *)v5 setSortComparator:&__block_literal_global_195_224260];
    [(PXPeopleDonationSettingsViewController *)self setDataSource:v5];
    v4 = [[PXPeopleSuggestionDataSource alloc] initWithFlowType:0];
    [(PXPeopleDonationSettingsViewController *)self setSuggestionDataSource:v4];
  }
}

uint64_t __52__PXPeopleDonationSettingsViewController_commonInit__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [a2 modelObject];
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v6, "manualOrder")}];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v5 modelObject];

  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "manualOrder")}];
  v11 = [v7 compare:v10];

  return v11;
}

id __52__PXPeopleDonationSettingsViewController_commonInit__block_invoke()
{
  v0 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v1 = [v0 librarySpecificFetchOptions];

  v2 = [MEMORY[0x1E6978980] fetchSuggestedPersonsForClient:1 options:v1];

  return v2;
}

@end