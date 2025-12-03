@interface PXPeopleRecoCollectionViewController
+ (id)recoControllerForPerson:(id)person;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_initWithPerson:(id)person;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_cancelTapped:(id)tapped;
- (void)_doneTapped:(id)tapped;
- (void)_reviewMoreTapped:(id)tapped;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view frameDidChange:(CGRect)change;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)recoDataSourceDataChanged:(id)changed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PXPeopleRecoCollectionViewController

- (void)collectionView:(id)view frameDidChange:(CGRect)change
{
  viewCopy = view;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleRecoCollectionViewController.m" lineNumber:205 description:{@"%s must be called on the main thread", "-[PXPeopleRecoCollectionViewController collectionView:frameDidChange:]"}];
  }

  collectionViewLayout = [viewCopy collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)recoDataSourceDataChanged:(id)changed
{
  collectionView = [(PXPeopleRecoCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)_reviewMoreTapped:(id)tapped
{
  v4 = [PXPeopleSplitConfirmationViewController alloc];
  dataSource = [(PXPeopleRecoCollectionViewController *)self dataSource];
  person = [dataSource person];
  v9 = [(PXPeopleSplitConfirmationViewController *)v4 initWithPerson:person];

  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
  navigationController = [(PXPeopleRecoCollectionViewController *)self navigationController];
  [navigationController presentViewController:v7 animated:1 completion:0];
}

- (void)_cancelTapped:(id)tapped
{
  presentingViewController = [(PXPeopleRecoCollectionViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_doneTapped:(id)tapped
{
  dataSource = [(PXPeopleRecoCollectionViewController *)self dataSource];
  [dataSource commitChanges];

  presentingViewController = [(PXPeopleRecoCollectionViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v5 = [(PXPeopleRecoCollectionViewController *)self view:view];
  [v5 bounds];
  v7 = v6;

  v8 = 40.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v27 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathsCopy = paths;
  dataSource = [(PXPeopleRecoCollectionViewController *)self dataSource];
  collectionViewLayout = [viewCopy collectionViewLayout];
  [collectionViewLayout itemSize];
  v11 = v10;
  v13 = v12;

  traitCollection = [viewCopy traitCollection];
  [traitCollection displayScale];
  v16 = v15;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = pathsCopy;
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

        [dataSource requestImageForItemAtIndex:objc_msgSend(*(*(&v22 + 1) + 8 * v21++) targetSize:"item" displayScale:v22) imageBlock:{0, v11, v13, v16}];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v19);
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [view frame];

  [PXPeopleGridSizer cellSizeForGridClass:0 width:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [view frame];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(PXPeopleRecoCollectionViewController *)self dataSource];
  v8 = [dataSource toggleRejectionForIndex:{objc_msgSend(pathCopy, "item")}];
  v9 = [viewCopy cellForItemAtIndexPath:pathCopy];

  if ([v9 hasImageSet])
  {
    [v9 setIsRejected:v8];
    shouldAllowCommitting = [dataSource shouldAllowCommitting];
    navigationItem = [(PXPeopleRecoCollectionViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:shouldAllowCommitting];
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  headerRegistration = [(PXPeopleRecoCollectionViewController *)self headerRegistration];
  v10 = [viewCopy dequeueConfiguredReusableSupplementaryViewWithRegistration:headerRegistration forIndexPath:pathCopy];

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  cellRegistration = [(PXPeopleRecoCollectionViewController *)self cellRegistration];
  dataSource = [(PXPeopleRecoCollectionViewController *)self dataSource];
  v10 = [viewCopy dequeueConfiguredReusableCellWithRegistration:cellRegistration forIndexPath:pathCopy item:dataSource];

  return v10;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PXPeopleRecoCollectionViewController *)self dataSource:view];
  numberOfItems = [v4 numberOfItems];

  return numberOfItems;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PXPeopleRecoCollectionViewController;
  [(PXPeopleRecoCollectionViewController *)&v5 viewWillDisappear:disappear];
  navigationController = [(PXPeopleRecoCollectionViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PXPeopleRecoCollectionViewController;
  [(PXPeopleRecoCollectionViewController *)&v5 viewWillAppear:appear];
  navigationController = [(PXPeopleRecoCollectionViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:1];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PXPeopleRecoCollectionViewController;
  [(PXPeopleRecoCollectionViewController *)&v16 viewDidLoad];
  collectionView = [(PXPeopleRecoCollectionViewController *)self collectionView];
  v4 = [PXPeopleRecoCollectionView alloc];
  [collectionView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  collectionViewLayout = [collectionView collectionViewLayout];
  v14 = [(PXPeopleRecoCollectionView *)v4 initWithFrame:collectionViewLayout collectionViewLayout:v6, v8, v10, v12];

  [(PXPeopleRecoCollectionView *)v14 setRecoCollectionViewDelegate:self];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PXPeopleRecoCollectionView *)v14 setBackgroundColor:systemBackgroundColor];

  [(PXPeopleRecoCollectionView *)v14 setPrefetchDataSource:self];
  [(PXPeopleRecoCollectionView *)v14 setContentInsetAdjustmentBehavior:3];
  [(PXPeopleRecoCollectionViewController *)self setCollectionView:v14];
}

- (id)_initWithPerson:(id)person
{
  personCopy = person;
  v5 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v24.receiver = self;
  v24.super_class = PXPeopleRecoCollectionViewController;
  v6 = [(PXPeopleRecoCollectionViewController *)&v24 initWithCollectionViewLayout:v5];

  if (v6)
  {
    v7 = [[PXPeopleRecoDataSource alloc] initWithPerson:personCopy dataSourceDelegate:v6];
    dataSource = v6->_dataSource;
    v6->_dataSource = v7;

    v9 = MEMORY[0x1E69DC870];
    v10 = objc_opt_class();
    v11 = *MEMORY[0x1E69DDC08];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__PXPeopleRecoCollectionViewController__initWithPerson___block_invoke;
    v22[3] = &unk_1E7735BA8;
    v23 = personCopy;
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

+ (id)recoControllerForPerson:(id)person
{
  v17[3] = *MEMORY[0x1E69E9840];
  personCopy = person;
  v4 = [[PXPeopleRecoCollectionViewController alloc] _initWithPerson:personCopy];

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
  navigationItem = [v4 navigationItem];
  [navigationItem setLeftBarButtonItem:v12];
  [navigationItem setRightBarButtonItem:v13];
  v15 = PXLocalizedStringFromTable(@"PXPeopleImproveRecoHeaderTitle", @"PhotosUICore");
  [navigationItem setTitle:v15];

  return v5;
}

@end