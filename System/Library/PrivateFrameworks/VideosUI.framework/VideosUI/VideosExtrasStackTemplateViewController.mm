@interface VideosExtrasStackTemplateViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (VideosExtrasStackTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context;
- (id)_viewControllerForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)sectionStyle;
- (id)templateElement;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_dynamicTypeDidChange;
- (void)_prepareLayout;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VideosExtrasStackTemplateViewController

- (VideosExtrasStackTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context
{
  v12.receiver = self;
  v12.super_class = VideosExtrasStackTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v12 initWithDocument:document options:options context:context];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewControllers = v5->_viewControllers;
    v5->_viewControllers = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sizes = v5->_sizes;
    v5->_sizes = v8;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__dynamicTypeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasStackTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v4 dealloc];
}

- (void)_dynamicTypeDidChange
{
  v16 = *MEMORY[0x1E69E9840];
  visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        viewController = [*(*(&v11 + 1) + 8 * v7) viewController];
        collectionView = [viewController collectionView];
        collectionViewLayout = [collectionView collectionViewLayout];

        [collectionViewLayout invalidateLayout];
        [collectionViewLayout prepareLayout];

        ++v7;
      }

      while (v5 != v7);
      v5 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(UICollectionViewFlowLayout *)self->_collectionViewLayout invalidateLayout];
}

- (void)viewDidLoad
{
  v36[1] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = VideosExtrasStackTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v35 viewDidLoad];
  templateElement = [(VideosExtrasStackTemplateViewController *)self templateElement];
  background = [templateElement background];
  v36[0] = background;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [(VideosExtrasTemplateViewController *)self configureBackgroundWithElements:v5];

  templateElement2 = [(VideosExtrasStackTemplateViewController *)self templateElement];
  documentBanner = [templateElement2 documentBanner];
  [(VideosExtrasElementViewController *)self _configureBannerWithElement:documentBanner];

  v8 = objc_alloc_init(MEMORY[0x1E69DC840]);
  collectionViewLayout = self->_collectionViewLayout;
  self->_collectionViewLayout = v8;

  [(UICollectionViewFlowLayout *)self->_collectionViewLayout setSectionInset:10.0, 0.0, 10.0, 0.0];
  v10 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v11 = [v10 initWithFrame:self->_collectionViewLayout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  collectionView = self->_collectionView;
  self->_collectionView = v11;

  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VideosExtrasStackCollectionCellIdentifier"];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"VideosExtrasStackCollectionHeaderIdentifier"];
  view = [(VideosExtrasStackTemplateViewController *)self view];
  [view addSubview:self->_collectionView];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  v15 = self->_collectionView;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __54__VideosExtrasStackTemplateViewController_viewDidLoad__block_invoke;
  v34[3] = &unk_1E8733700;
  v34[4] = self;
  _MPUEnumerateItemsOfCollectionView(v15, 0, v34);
  v16 = [VideosExtrasBannerController alloc];
  templateElement3 = [(VideosExtrasStackTemplateViewController *)self templateElement];
  documentBanner2 = [templateElement3 documentBanner];
  v19 = [(VideosExtrasBannerController *)v16 initWithBannerElement:documentBanner2];
  bannerViewController = self->_bannerViewController;
  self->_bannerViewController = v19;

  [(VideosExtrasBannerController *)self->_bannerViewController setVignetteType:4];
  v21 = self->_bannerViewController;
  view2 = [(VideosExtrasStackTemplateViewController *)self view];
  [(VideosExtrasBannerController *)v21 installBannerOnView:view2 anchoredToScrollView:self->_collectionView];

  v23 = MEMORY[0x1E696ACD8];
  v24 = self->_collectionView;
  view3 = [(VideosExtrasStackTemplateViewController *)self view];
  v26 = [v23 constraintsByAttachingView:v24 toView:view3 alongEdges:14 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  v27 = MEMORY[0x1E696ACD8];
  v28 = self->_collectionView;
  view4 = [(VideosExtrasStackTemplateViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  v31 = [v27 constraintWithItem:v28 attribute:3 relatedBy:0 toItem:safeAreaLayoutGuide attribute:3 multiplier:1.0 constant:0.0];

  v32 = [v26 arrayByAddingObject:v31];
  view5 = [(VideosExtrasStackTemplateViewController *)self view];
  [view5 addConstraints:v32];
}

void __54__VideosExtrasStackTemplateViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _viewControllerForIndexPath:a2];
  v2 = [v4 collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 prepareLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VideosExtrasStackTemplateViewController;
  [(VideosExtrasElementViewController *)&v14 viewWillAppear:appear];
  [(UICollectionView *)self->_collectionView reloadData];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_viewControllers allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        contentScrollView = [*(*(&v10 + 1) + 8 * v8) contentScrollView];
        if (objc_opt_respondsToSelector())
        {
          [contentScrollView reloadData];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)templateElement
{
  document = [(VideosExtrasTemplateViewController *)self document];
  templateElement = [document templateElement];

  return templateElement;
}

- (id)sectionStyle
{
  extrasSize = [(VideosExtrasElementViewController *)self extrasSize];
  if (extrasSize > 2)
  {
    if (extrasSize != 3)
    {
      if (extrasSize == 4)
      {
        v3 = +[VideosExtrasGridElementViewController wideStackGridStyle];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v3 = +[VideosExtrasGridElementViewController extraLargeStackGridStyle];
  }

  else
  {
    if (extrasSize != 1)
    {
      if (extrasSize == 2)
      {
        v3 = +[VideosExtrasGridElementViewController largeStackGridStyle];
        goto LABEL_11;
      }

LABEL_8:
      v3 = +[VideosExtrasGridElementViewController smallStackGridStyle];
      goto LABEL_11;
    }

    v3 = +[VideosExtrasGridElementViewController mediumStackGridStyle];
  }

LABEL_11:
  v4 = v3;
  sectionHeaderStyle = [v3 sectionHeaderStyle];

  return sectionHeaderStyle;
}

- (void)_prepareLayout
{
  v24.receiver = self;
  v24.super_class = VideosExtrasStackTemplateViewController;
  [(VideosExtrasElementViewController *)&v24 _prepareLayout];
  [(UICollectionView *)self->_collectionView contentInset];
  isWide = [(VideosExtrasElementViewController *)self isWide];
  navigationController = [(VideosExtrasStackTemplateViewController *)self navigationController];
  view = [navigationController view];
  [view safeAreaInsets];
  v7 = v6;

  navigationController2 = [(VideosExtrasStackTemplateViewController *)self navigationController];
  view2 = [navigationController2 view];
  [view2 safeAreaInsets];
  v11 = v10;

  parentViewController = [(VideosExtrasStackTemplateViewController *)self parentViewController];
  LOBYTE(view2) = objc_opt_respondsToSelector();

  if (view2)
  {
    navigationController3 = [(VideosExtrasStackTemplateViewController *)self navigationController];
    mainTemplateViewController = [navigationController3 mainTemplateViewController];
    view3 = [mainTemplateViewController view];
    [view3 bounds];
    v17 = v16;

    v18 = 60.0;
    if (v17 > 60.0)
    {
      menuBarView = [mainTemplateViewController menuBarView];
      [menuBarView bounds];
      v21 = v20;

      v18 = fmax(v21, 60.0);
    }
  }

  else
  {
    v18 = 60.0;
  }

  v22 = 112.0;
  if (isWide)
  {
    v22 = 260.0;
  }

  [(UICollectionView *)self->_collectionView setContentInset:v22, v7, v18, v11];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"VideosExtrasStackCollectionCellIdentifier" forIndexPath:pathCopy];
  [v7 setParentViewController:self];
  v8 = [(VideosExtrasStackTemplateViewController *)self _viewControllerForIndexPath:pathCopy];

  [v7 setViewController:v8];

  return v7;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v9 = [view dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"VideosExtrasStackCollectionHeaderIdentifier" forIndexPath:pathCopy];
  section = [pathCopy section];

  templateElement = [(VideosExtrasStackTemplateViewController *)self templateElement];
  collectionList = [templateElement collectionList];
  collections = [collectionList collections];
  v14 = [collections objectAtIndex:section];

  header = [v14 header];
  sectionStyle = [(VideosExtrasStackTemplateViewController *)self sectionStyle];
  [v9 configureForHeaderElement:header headerStyle:sectionStyle];

  return v9;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  if (collectionView_layout_referenceSizeForHeaderInSection__onceToken_0 != -1)
  {
    [VideosExtrasStackTemplateViewController collectionView:layout:referenceSizeForHeaderInSection:];
  }

  templateElement = [(VideosExtrasStackTemplateViewController *)self templateElement];
  collectionList = [templateElement collectionList];
  collections = [collectionList collections];
  v13 = [collections objectAtIndex:section];

  header = [v13 header];
  if (header)
  {
    v15 = collectionView_layout_referenceSizeForHeaderInSection____sizingView_0;
    sectionStyle = [(VideosExtrasStackTemplateViewController *)self sectionStyle];
    [v15 configureForHeaderElement:header headerStyle:sectionStyle];

    [collectionView_layout_referenceSizeForHeaderInSection____sizingView_0 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v18 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

void __97__VideosExtrasStackTemplateViewController_collectionView_layout_referenceSizeForHeaderInSection___block_invoke()
{
  v0 = objc_alloc_init(VideosExtrasCollectionReusableView);
  v1 = collectionView_layout_referenceSizeForHeaderInSection____sizingView_0;
  collectionView_layout_referenceSizeForHeaderInSection____sizingView_0 = v0;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  templateElement = [(VideosExtrasStackTemplateViewController *)self templateElement];
  collectionList = [templateElement collectionList];
  collections = [collectionList collections];
  v6 = [collections count];

  return v6;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layout = [(NSMutableDictionary *)self->_sizes objectForKey:path, layout];
  v7 = layout;
  if (layout)
  {
    [layout CGSizeValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  [(UICollectionView *)self->_collectionView bounds];
  Width = CGRectGetWidth(v14);

  v11 = Width;
  v12 = v9;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)_viewControllerForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableDictionary *)self->_viewControllers objectForKey:pathCopy];
  if (!v5)
  {
    templateElement = [(VideosExtrasStackTemplateViewController *)self templateElement];
    collectionList = [templateElement collectionList];
    collections = [collectionList collections];
    v9 = [collections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    v5 = objc_alloc_init(VideosExtrasGridElementViewController);
    v10 = +[VideosExtrasGridElementViewController smallStackGridStyle];
    [(VideosExtrasGridElementViewController *)v5 setSmallStyle:v10];

    v11 = +[VideosExtrasGridElementViewController mediumStackGridStyle];
    [(VideosExtrasGridElementViewController *)v5 setMediumStyle:v11];

    v12 = +[VideosExtrasGridElementViewController largeStackGridStyle];
    [(VideosExtrasGridElementViewController *)v5 setLargeStyle:v12];

    v13 = +[VideosExtrasGridElementViewController extraLargeStackGridStyle];
    [(VideosExtrasGridElementViewController *)v5 setExtraLargeStyle:v13];

    v14 = +[VideosExtrasGridElementViewController wideStackGridStyle];
    [(VideosExtrasGridElementViewController *)v5 setWideStyle:v14];

    view = [(VideosExtrasGridElementViewController *)v5 view];
    view2 = [(VideosExtrasStackTemplateViewController *)self view];
    [view2 frame];
    [view setBounds:{0.0, 0.0}];

    [(VideosExtrasGridElementViewController *)v5 setViewElement:v9];
    [(VideosExtrasGridElementViewController *)v5 setShelfStyle:1];
    collectionView = [(VideosExtrasGridElementViewController *)v5 collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout prepareLayout];

    [(VideosExtrasGridElementViewController *)v5 preferredContentSize];
    if (*MEMORY[0x1E695F060] != v20 || *(MEMORY[0x1E695F060] + 8) != v19)
    {
      sizes = self->_sizes;
      v22 = [MEMORY[0x1E696B098] valueWithCGSize:?];
      [(NSMutableDictionary *)sizes setObject:v22 forKey:pathCopy];
    }

    [(NSMutableDictionary *)self->_viewControllers setObject:v5 forKey:pathCopy];
  }

  return v5;
}

@end