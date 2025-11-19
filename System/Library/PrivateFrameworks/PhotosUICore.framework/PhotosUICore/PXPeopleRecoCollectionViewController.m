@interface PXPeopleRecoCollectionViewController
+ (id)recoControllerForPerson:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_initWithPerson:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_cancelTapped:(id)a3;
- (void)_doneTapped:(id)a3;
- (void)_reviewMoreTapped:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 frameDidChange:(CGRect)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)recoDataSourceDataChanged:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PXPeopleRecoCollectionViewController

- (void)collectionView:(id)a3 frameDidChange:(CGRect)a4
{
  v8 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPeopleRecoCollectionViewController.m" lineNumber:205 description:{@"%s must be called on the main thread", "-[PXPeopleRecoCollectionViewController collectionView:frameDidChange:]"}];
  }

  v6 = [v8 collectionViewLayout];
  [v6 invalidateLayout];
}

- (void)recoDataSourceDataChanged:(id)a3
{
  v3 = [(PXPeopleRecoCollectionViewController *)self collectionView];
  [v3 reloadData];
}

- (void)_reviewMoreTapped:(id)a3
{
  v4 = [PXPeopleSplitConfirmationViewController alloc];
  v5 = [(PXPeopleRecoCollectionViewController *)self dataSource];
  v6 = [v5 person];
  v9 = [(PXPeopleSplitConfirmationViewController *)v4 initWithPerson:v6];

  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
  v8 = [(PXPeopleRecoCollectionViewController *)self navigationController];
  [v8 presentViewController:v7 animated:1 completion:0];
}

- (void)_cancelTapped:(id)a3
{
  v3 = [(PXPeopleRecoCollectionViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_doneTapped:(id)a3
{
  v4 = [(PXPeopleRecoCollectionViewController *)self dataSource];
  [v4 commitChanges];

  v5 = [(PXPeopleRecoCollectionViewController *)self presentingViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v5 = [(PXPeopleRecoCollectionViewController *)self view:a3];
  [v5 bounds];
  v7 = v6;

  v8 = 40.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXPeopleRecoCollectionViewController *)self dataSource];
  v9 = [v6 collectionViewLayout];
  [v9 itemSize];
  v11 = v10;
  v13 = v12;

  v14 = [v6 traitCollection];
  [v14 displayScale];
  v16 = v15;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [v8 requestImageForItemAtIndex:objc_msgSend(*(*(&v22 + 1) + 8 * v21++) targetSize:"item" displayScale:v22) imageBlock:{0, v11, v13, v16}];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v19);
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [a3 frame];

  [PXPeopleGridSizer cellSizeForGridClass:0 width:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [a3 frame];
  [PXPeopleGridSizer marginForGridClass:0 width:v5];
  v7 = v6;
  v8 = v6;
  v9 = v6;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = [(PXPeopleRecoCollectionViewController *)self dataSource];
  v8 = [v13 toggleRejectionForIndex:{objc_msgSend(v6, "item")}];
  v9 = [v7 cellForItemAtIndexPath:v6];

  if ([v9 hasImageSet])
  {
    [v9 setIsRejected:v8];
    v10 = [v13 shouldAllowCommitting];
    v11 = [(PXPeopleRecoCollectionViewController *)self navigationItem];
    v12 = [v11 rightBarButtonItem];
    [v12 setEnabled:v10];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(PXPeopleRecoCollectionViewController *)self headerRegistration];
  v10 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:v9 forIndexPath:v7];

  return v10;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPeopleRecoCollectionViewController *)self cellRegistration];
  v9 = [(PXPeopleRecoCollectionViewController *)self dataSource];
  v10 = [v7 dequeueConfiguredReusableCellWithRegistration:v8 forIndexPath:v6 item:v9];

  return v10;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(PXPeopleRecoCollectionViewController *)self dataSource:a3];
  v5 = [v4 numberOfItems];

  return v5;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPeopleRecoCollectionViewController;
  [(PXPeopleRecoCollectionViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PXPeopleRecoCollectionViewController *)self navigationController];
  [v4 setToolbarHidden:1 animated:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXPeopleRecoCollectionViewController;
  [(PXPeopleRecoCollectionViewController *)&v5 viewWillAppear:a3];
  v4 = [(PXPeopleRecoCollectionViewController *)self navigationController];
  [v4 setToolbarHidden:0 animated:1];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PXPeopleRecoCollectionViewController;
  [(PXPeopleRecoCollectionViewController *)&v16 viewDidLoad];
  v3 = [(PXPeopleRecoCollectionViewController *)self collectionView];
  v4 = [PXPeopleRecoCollectionView alloc];
  [v3 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v3 collectionViewLayout];
  v14 = [(PXPeopleRecoCollectionView *)v4 initWithFrame:v13 collectionViewLayout:v6, v8, v10, v12];

  [(PXPeopleRecoCollectionView *)v14 setRecoCollectionViewDelegate:self];
  v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PXPeopleRecoCollectionView *)v14 setBackgroundColor:v15];

  [(PXPeopleRecoCollectionView *)v14 setPrefetchDataSource:self];
  [(PXPeopleRecoCollectionView *)v14 setContentInsetAdjustmentBehavior:3];
  [(PXPeopleRecoCollectionViewController *)self setCollectionView:v14];
}

- (id)_initWithPerson:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v24.receiver = self;
  v24.super_class = PXPeopleRecoCollectionViewController;
  v6 = [(PXPeopleRecoCollectionViewController *)&v24 initWithCollectionViewLayout:v5];

  if (v6)
  {
    v7 = [[PXPeopleRecoDataSource alloc] initWithPerson:v4 dataSourceDelegate:v6];
    dataSource = v6->_dataSource;
    v6->_dataSource = v7;

    v9 = MEMORY[0x1E69DC870];
    v10 = objc_opt_class();
    v11 = *MEMORY[0x1E69DDC08];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__PXPeopleRecoCollectionViewController__initWithPerson___block_invoke;
    v22[3] = &unk_1E7735BA8;
    v23 = v4;
    v12 = [v9 registrationWithSupplementaryClass:v10 elementKind:v11 configurationHandler:v22];
    headerRegistration = v6->_headerRegistration;
    v6->_headerRegistration = v12;

    objc_initWeak(&location, v6);
    v14 = MEMORY[0x1E69DC800];
    v15 = objc_opt_class();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__PXPeopleRecoCollectionViewController__initWithPerson___block_invoke_2;
    v19[3] = &unk_1E7735C20;
    objc_copyWeak(&v20, &location);
    v16 = [v14 registrationWithCellClass:v15 configurationHandler:v19];
    cellRegistration = v6->_cellRegistration;
    v6->_cellRegistration = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __56__PXPeopleRecoCollectionViewController__initWithPerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 px_localizedName];
  v6 = [v5 length];
  v7 = *(a1 + 32);
  if (v6)
  {
    PXLocalizedStringForPersonOrPetAndVisibility(v7, 0, @"PXPeopleImproveRecoHeaderNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v8 = PXLocalizedStringForPersonOrPetAndVisibility(v7, 0, @"PXPeopleImproveRecoHeaderUnnamed");
  [v4 setTitle:v8];
}

void __56__PXPeopleRecoCollectionViewController__initWithPerson___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained collectionView];

  if (v11)
  {
    [v11 frame];
    v13 = v12;
    v14 = [v11 traitCollection];
    [v14 displayScale];
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
    v13 = 1.0;
  }

  [PXPeopleGridSizer cellSizeForGridClass:0 width:v13];
  v18 = v17;
  v20 = v19;
  v21 = [v7 tag] + 1;
  [v7 setTag:v21];
  v22 = [v9 item];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__PXPeopleRecoCollectionViewController__initWithPerson___block_invoke_3;
  v25[3] = &unk_1E7735BF8;
  v26 = v7;
  v27 = v8;
  v28 = v21;
  v29 = v22;
  v23 = v8;
  v24 = v7;
  [v23 requestImageForItemAtIndex:v22 targetSize:v25 displayScale:v18 imageBlock:{v20, v16}];
}

void __56__PXPeopleRecoCollectionViewController__initWithPerson___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v3;
  px_dispatch_on_main_queue();
}

uint64_t __56__PXPeopleRecoCollectionViewController__initWithPerson___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) tag];
  if (result == *(a1 + 56))
  {
    [*(a1 + 32) setIsRejected:{objc_msgSend(*(a1 + 40), "isIndexRejected:", *(a1 + 64))}];
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);

    return [v3 setImage:v4 contentsRect:{v5, v6, v7, v8}];
  }

  return result;
}

+ (id)recoControllerForPerson:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [[PXPeopleRecoCollectionViewController alloc] _initWithPerson:v3];

  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v5 setToolbarHidden:0];
  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  v9 = PXLocalizedStringFromTable(@"PXPeopleImproveRecoReviewMore", @"PhotosUICore");
  v10 = [v8 initWithTitle:v9 style:0 target:v4 action:sel__reviewMoreTapped_];

  v17[0] = v6;
  v17[1] = v10;
  v17[2] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  [v4 setToolbarItems:v11];

  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v4 action:sel__cancelTapped_];
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v4 action:sel__doneTapped_];
  v14 = [v4 navigationItem];
  [v14 setLeftBarButtonItem:v12];
  [v14 setRightBarButtonItem:v13];
  v15 = PXLocalizedStringFromTable(@"PXPeopleImproveRecoHeaderTitle", @"PhotosUICore");
  [v14 setTitle:v15];

  return v5;
}

@end