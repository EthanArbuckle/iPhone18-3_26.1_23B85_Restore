@interface VUIDebugViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (VUIDebugViewController)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)preferredFocusEnvironments;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dealloc;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
  [(VUIDebugContainerView *)v8 setBackgroundColor:systemLightGrayColor];

  v17 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v17 setScrollDirection:0];
  [v17 setMinimumLineSpacing:0.0];
  [v17 setMinimumInteritemSpacing:0.0];
  [v17 setSectionInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  v10 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v17 collectionViewLayout:{v4, v5, v6, v7}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)v10 setBackgroundColor:clearColor];

  layer = [(UICollectionView *)v10 layer];
  [layer setMasksToBounds:1];

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
  navigationController = [(VUIDebugViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0];

  navigationController2 = [(VUIDebugViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  navigationItem = [(VUIDebugViewController *)self navigationItem];
  [navigationItem setTitle:@"Debug"];

  navigationController3 = [(VUIDebugViewController *)self navigationController];
  navigationBar2 = [navigationController3 navigationBar];

  vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
  [navigationBar2 setTintColor:vui_keyColor];
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
    collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    [(VUIDebugContainerView *)self->_containerView setNeedsLayout];
    self->_requiresRelayout = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = VUIDebugViewController;
  coordinatorCopy = coordinator;
  [(VUIDebugViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__VUIDebugViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section == 2)
    {
      defaultsDataSource = [(VUIDebugViewDataSource *)self->_dataSource defaultsDataSource];
      v10 = [defaultsDataSource count];
    }

    else
    {
      if (section != 1)
      {
        v10 = 0;
        goto LABEL_9;
      }

      defaultsDataSource = [(VUIDebugViewDataSource *)self->_dataSource metricsDataSource];
      v8 = [defaultsDataSource count];
      additionalMetricsTitles = [(VUIDebugViewController *)self additionalMetricsTitles];
      v10 = [additionalMetricsTitles count] + v8;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_9:

  return v10;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [view bounds];
  Width = CGRectGetWidth(v8);
  v6 = 60.0;
  result.height = v6;
  result.width = Width;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"VUIDebugViewNavigationCellReuseIdentifier" forIndexPath:pathCopy];
    [v11 configureWithTitle:@"UI Widgets"];
    goto LABEL_12;
  }

  if ([pathCopy section] == 1)
  {
    metricsDataSource = [(VUIDebugViewDataSource *)self->_dataSource metricsDataSource];
    v9 = [metricsDataSource count];

    if ([pathCopy row] >= v9)
    {
      v14 = [pathCopy row] % v9;
      v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"VUIDebugViewNavigationCellReuseIdentifier" forIndexPath:pathCopy];
      additionalMetricsTitles = [(VUIDebugViewController *)self additionalMetricsTitles];
      v13 = [additionalMetricsTitles objectAtIndexedSubscript:v14];

      [v11 configureWithTitle:v13];
      goto LABEL_10;
    }

    metricsDataSource2 = [(VUIDebugViewDataSource *)self->_dataSource metricsDataSource];
LABEL_8:
    v12 = metricsDataSource2;
    v13 = [metricsDataSource2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"VUIDebugViewDefaultsCellReuseIdentifier" forIndexPath:pathCopy];
    [v11 configureCellWithDefaults:v13];
LABEL_10:

    goto LABEL_12;
  }

  if ([pathCopy section] == 2)
  {
    metricsDataSource2 = [(VUIDebugViewDataSource *)self->_dataSource defaultsDataSource];
    goto LABEL_8;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69DC7F8]);
LABEL_12:

  return v11;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"VUIDebugViewHeaderReuseIdentifier" forIndexPath:pathCopy];
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      v8 = @"Metrics";
    }

    else
    {
      if ([pathCopy section] != 2)
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      v7 = [pathCopy row];
      metricsDataSource = [(VUIDebugViewDataSource *)self->_dataSource metricsDataSource];
      v9 = [metricsDataSource count];

      if (v7 == v9)
      {
        v10 = +[VUIMetricsController sharedInstance];
        getRecentEventsForDebuggerUI = [v10 getRecentEventsForDebuggerUI];

        v12 = [VUIDebugMetricsEventControllerGenerator alloc];
        allObjects = [getRecentEventsForDebuggerUI allObjects];
        v14 = [(VUIDebugMetricsEventControllerGenerator *)v12 initWithMetrics:allObjects];

        viewController = [(VUIDebugMetricsEventControllerGenerator *)v14 viewController];
      }

      else
      {
        v23 = [VUIMetricsRenderSessionListViewController alloc];
        getRecentEventsForDebuggerUI = +[VUIMetricsDiskManager sharedInstance];
        viewController = [(VUIMetricsRenderSessionListViewController *)v23 initWithStorageDataSource:getRecentEventsForDebuggerUI];
      }

      navigationController = [(VUIDebugViewController *)self navigationController];
      [navigationController pushViewController:viewController animated:1];
    }

    else if ([pathCopy section] == 2)
    {
      [viewCopy deselectItemAtIndexPath:pathCopy animated:0];
    }
  }

  else
  {
    v16 = +[VUITVAppLauncher sharedInstance];
    appController = [v16 appController];

    v18 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"UIMain"];
    v19 = +[VUIInterfaceFactory sharedInstance];
    appContext = [appController appContext];
    v21 = [v19 viewControllerWithDocumentDataSource:v18 appContext:appContext];

    navigationController2 = [(VUIDebugViewController *)self navigationController];
    [navigationController2 pushViewController:v21 animated:1];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if (section > 2)
  {
    Width = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [view bounds];
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
  collectionView = [(VUIDebugViewController *)self collectionView];
  v5[0] = collectionView;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  contextCopy = context;
  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
  previouslyFocusedIndexPath = [contextCopy previouslyFocusedIndexPath];

  v9 = [viewCopy cellForItemAtIndexPath:nextFocusedIndexPath];
  contentView = [v9 contentView];
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  [contentView setBackgroundColor:lightGrayColor];

  if (previouslyFocusedIndexPath)
  {
    v12 = [viewCopy cellForItemAtIndexPath:previouslyFocusedIndexPath];
  }

  else
  {
    v12 = 0;
  }

  contentView2 = [v12 contentView];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [contentView2 setBackgroundColor:whiteColor];
}

@end