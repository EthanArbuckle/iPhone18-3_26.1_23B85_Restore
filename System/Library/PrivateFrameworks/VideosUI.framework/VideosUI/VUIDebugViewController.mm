@interface VUIDebugViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (VUIDebugViewController)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)preferredFocusEnvironments;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)dealloc;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VUIDebugViewController

- (VUIDebugViewController)init
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VUIDebugViewController;
  v2 = [(VUIDebugViewController *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(VUIDebugViewDataSource);
    dataSource = v2->_dataSource;
    v2->_dataSource = v3;

    additionalMetricsTitles = v2->_additionalMetricsTitles;
    v2->_additionalMetricsTitles = &unk_1F5E5EB68;

    objc_initWeak(&location, v2);
    v13[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__VUIDebugViewController_init__block_invoke;
    v9[3] = &unk_1E872E760;
    objc_copyWeak(&v10, &location);
    v7 = [(VUIDebugViewController *)v2 registerForTraitChanges:v6 withHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __30__VUIDebugViewController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRequiresRelayout:1];
}

- (void)loadView
{
  v3 = [VUIDebugContainerView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(VUIDebugContainerView *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = [MEMORY[0x1E69DC888] systemLightGrayColor];
  [(VUIDebugContainerView *)v8 setBackgroundColor:v9];

  v17 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v17 setScrollDirection:0];
  [v17 setMinimumLineSpacing:0.0];
  [v17 setMinimumInteritemSpacing:0.0];
  [v17 setSectionInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  v10 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v17 collectionViewLayout:{v4, v5, v6, v7}];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)v10 setBackgroundColor:v11];

  v12 = [(UICollectionView *)v10 layer];
  [v12 setMasksToBounds:1];

  [(UICollectionView *)v10 setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)v10 setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)v10 setAlwaysBounceVertical:1];
  [(UICollectionView *)v10 setDelegate:self];
  [(UICollectionView *)v10 setDataSource:self];
  [(UICollectionView *)v10 setAutoresizingMask:18];
  [(UICollectionView *)v10 setOpaque:0];
  [(UICollectionView *)v10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUIDebugViewDefaultsCellReuseIdentifier"];
  [(UICollectionView *)v10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUIDebugViewNavigationCellReuseIdentifier"];
  [(UICollectionView *)v10 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"VUIDebugViewHeaderReuseIdentifier"];
  collectionView = self->_collectionView;
  self->_collectionView = v10;
  v14 = v10;

  [(VUIDebugContainerView *)v8 setCollectionView:v14];
  containerView = self->_containerView;
  self->_containerView = v8;
  v16 = v8;

  [(VUIDebugViewController *)self setView:self->_containerView];
  self->_requiresRelayout = 1;
}

- (void)viewDidLoad
{
  v3 = +[VUIMetricsController sharedInstance];
  [v3 setIsInDebugMode:1];

  v11.receiver = self;
  v11.super_class = VUIDebugViewController;
  [(VUIDebugViewController *)&v11 viewDidLoad];
  v4 = [(VUIDebugViewController *)self navigationController];
  [v4 setNavigationBarHidden:0];

  v5 = [(VUIDebugViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setPrefersLargeTitles:1];

  v7 = [(VUIDebugViewController *)self navigationItem];
  [v7 setTitle:@"Debug"];

  v8 = [(VUIDebugViewController *)self navigationController];
  v9 = [v8 navigationBar];

  v10 = [MEMORY[0x1E69DC888] vui_keyColor];
  [v9 setTintColor:v10];
}

- (void)dealloc
{
  v3 = +[VUIMetricsController sharedInstance];
  [v3 setIsInDebugMode:0];

  v4.receiver = self;
  v4.super_class = VUIDebugViewController;
  [(VUIDebugViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = VUIDebugViewController;
  [(VUIDebugViewController *)&v4 viewDidLayoutSubviews];
  if (self->_requiresRelayout)
  {
    v3 = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [v3 invalidateLayout];

    [(VUIDebugContainerView *)self->_containerView setNeedsLayout];
    self->_requiresRelayout = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = VUIDebugViewController;
  v7 = a4;
  [(VUIDebugViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__VUIDebugViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __77__VUIDebugViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isViewLoaded] && (objc_msgSend(*(a1 + 32), "view"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "window"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = [*(*(a1 + 32) + 1008) collectionViewLayout];
    [v4 invalidateLayout];

    v5 = *(*(a1 + 32) + 1000);

    [v5 setNeedsLayout];
  }

  else
  {
    *(*(a1 + 32) + 992) = 1;
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 2)
    {
      v7 = [(VUIDebugViewDataSource *)self->_dataSource defaultsDataSource];
      v10 = [v7 count];
    }

    else
    {
      if (a4 != 1)
      {
        v10 = 0;
        goto LABEL_9;
      }

      v7 = [(VUIDebugViewDataSource *)self->_dataSource metricsDataSource];
      v8 = [v7 count];
      v9 = [(VUIDebugViewController *)self additionalMetricsTitles];
      v10 = [v9 count] + v8;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_9:

  return v10;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [a3 bounds];
  Width = CGRectGetWidth(v8);
  v6 = 60.0;
  result.height = v6;
  result.width = Width;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    v11 = [v6 dequeueReusableCellWithReuseIdentifier:@"VUIDebugViewNavigationCellReuseIdentifier" forIndexPath:v7];
    [v11 configureWithTitle:@"UI Widgets"];
    goto LABEL_12;
  }

  if ([v7 section] == 1)
  {
    v8 = [(VUIDebugViewDataSource *)self->_dataSource metricsDataSource];
    v9 = [v8 count];

    if ([v7 row] >= v9)
    {
      v14 = [v7 row] % v9;
      v11 = [v6 dequeueReusableCellWithReuseIdentifier:@"VUIDebugViewNavigationCellReuseIdentifier" forIndexPath:v7];
      v15 = [(VUIDebugViewController *)self additionalMetricsTitles];
      v13 = [v15 objectAtIndexedSubscript:v14];

      [v11 configureWithTitle:v13];
      goto LABEL_10;
    }

    v10 = [(VUIDebugViewDataSource *)self->_dataSource metricsDataSource];
LABEL_8:
    v12 = v10;
    v13 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    v11 = [v6 dequeueReusableCellWithReuseIdentifier:@"VUIDebugViewDefaultsCellReuseIdentifier" forIndexPath:v7];
    [v11 configureCellWithDefaults:v13];
LABEL_10:

    goto LABEL_12;
  }

  if ([v7 section] == 2)
  {
    v10 = [(VUIDebugViewDataSource *)self->_dataSource defaultsDataSource];
    goto LABEL_8;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69DC7F8]);
LABEL_12:

  return v11;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v6 = a5;
  v7 = [a3 dequeueReusableSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"VUIDebugViewHeaderReuseIdentifier" forIndexPath:v6];
  if ([v6 section])
  {
    if ([v6 section] == 1)
    {
      v8 = @"Metrics";
    }

    else
    {
      if ([v6 section] != 2)
      {
        goto LABEL_8;
      }

      v8 = @"Application Defaults";
    }
  }

  else
  {
    v8 = @"UI";
  }

  [v7 configureHeaderViewWithTitle:v8];
LABEL_8:

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v25 = a3;
  v6 = a4;
  if ([v6 section])
  {
    if ([v6 section] == 1)
    {
      v7 = [v6 row];
      v8 = [(VUIDebugViewDataSource *)self->_dataSource metricsDataSource];
      v9 = [v8 count];

      if (v7 == v9)
      {
        v10 = +[VUIMetricsController sharedInstance];
        v11 = [v10 getRecentEventsForDebuggerUI];

        v12 = [VUIDebugMetricsEventControllerGenerator alloc];
        v13 = [v11 allObjects];
        v14 = [(VUIDebugMetricsEventControllerGenerator *)v12 initWithMetrics:v13];

        v15 = [(VUIDebugMetricsEventControllerGenerator *)v14 viewController];
      }

      else
      {
        v23 = [VUIMetricsRenderSessionListViewController alloc];
        v11 = +[VUIMetricsDiskManager sharedInstance];
        v15 = [(VUIMetricsRenderSessionListViewController *)v23 initWithStorageDataSource:v11];
      }

      v24 = [(VUIDebugViewController *)self navigationController];
      [v24 pushViewController:v15 animated:1];
    }

    else if ([v6 section] == 2)
    {
      [v25 deselectItemAtIndexPath:v6 animated:0];
    }
  }

  else
  {
    v16 = +[VUITVAppLauncher sharedInstance];
    v17 = [v16 appController];

    v18 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"UIMain"];
    v19 = +[VUIInterfaceFactory sharedInstance];
    v20 = [v17 appContext];
    v21 = [v19 viewControllerWithDocumentDataSource:v18 appContext:v20];

    v22 = [(VUIDebugViewController *)self navigationController];
    [v22 pushViewController:v21 animated:1];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if (a5 > 2)
  {
    Width = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [a3 bounds];
    Width = CGRectGetWidth(v10);
    v8 = 56.0;
  }

  result.height = v8;
  result.width = Width;
  return result;
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(VUIDebugViewController *)self collectionView];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v15 = a3;
  v6 = a4;
  v7 = [v6 nextFocusedIndexPath];
  v8 = [v6 previouslyFocusedIndexPath];

  v9 = [v15 cellForItemAtIndexPath:v7];
  v10 = [v9 contentView];
  v11 = [MEMORY[0x1E69DC888] lightGrayColor];
  [v10 setBackgroundColor:v11];

  if (v8)
  {
    v12 = [v15 cellForItemAtIndexPath:v8];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 contentView];
  v14 = [MEMORY[0x1E69DC888] whiteColor];
  [v13 setBackgroundColor:v14];
}

@end