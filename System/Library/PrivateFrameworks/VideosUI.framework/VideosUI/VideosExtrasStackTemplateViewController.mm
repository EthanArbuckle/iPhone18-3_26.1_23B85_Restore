@interface VideosExtrasStackTemplateViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (VideosExtrasStackTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5;
- (id)_viewControllerForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)sectionStyle;
- (id)templateElement;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_dynamicTypeDidChange;
- (void)_prepareLayout;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VideosExtrasStackTemplateViewController

- (VideosExtrasStackTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5
{
  v12.receiver = self;
  v12.super_class = VideosExtrasStackTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v12 initWithDocument:a3 options:a4 context:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewControllers = v5->_viewControllers;
    v5->_viewControllers = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sizes = v5->_sizes;
    v5->_sizes = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v5 selector:sel__dynamicTypeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasStackTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v4 dealloc];
}

- (void)_dynamicTypeDidChange
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(UICollectionView *)self->_collectionView visibleCells];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) viewController];
        v9 = [v8 collectionView];
        v10 = [v9 collectionViewLayout];

        [v10 invalidateLayout];
        [v10 prepareLayout];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(VideosExtrasStackTemplateViewController *)self templateElement];
  v4 = [v3 background];
  v36[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [(VideosExtrasTemplateViewController *)self configureBackgroundWithElements:v5];

  v6 = [(VideosExtrasStackTemplateViewController *)self templateElement];
  v7 = [v6 documentBanner];
  [(VideosExtrasElementViewController *)self _configureBannerWithElement:v7];

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
  v13 = [(VideosExtrasStackTemplateViewController *)self view];
  [v13 addSubview:self->_collectionView];

  v14 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v14];

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
  v17 = [(VideosExtrasStackTemplateViewController *)self templateElement];
  v18 = [v17 documentBanner];
  v19 = [(VideosExtrasBannerController *)v16 initWithBannerElement:v18];
  bannerViewController = self->_bannerViewController;
  self->_bannerViewController = v19;

  [(VideosExtrasBannerController *)self->_bannerViewController setVignetteType:4];
  v21 = self->_bannerViewController;
  v22 = [(VideosExtrasStackTemplateViewController *)self view];
  [(VideosExtrasBannerController *)v21 installBannerOnView:v22 anchoredToScrollView:self->_collectionView];

  v23 = MEMORY[0x1E696ACD8];
  v24 = self->_collectionView;
  v25 = [(VideosExtrasStackTemplateViewController *)self view];
  v26 = [v23 constraintsByAttachingView:v24 toView:v25 alongEdges:14 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  v27 = MEMORY[0x1E696ACD8];
  v28 = self->_collectionView;
  v29 = [(VideosExtrasStackTemplateViewController *)self view];
  v30 = [v29 safeAreaLayoutGuide];
  v31 = [v27 constraintWithItem:v28 attribute:3 relatedBy:0 toItem:v30 attribute:3 multiplier:1.0 constant:0.0];

  v32 = [v26 arrayByAddingObject:v31];
  v33 = [(VideosExtrasStackTemplateViewController *)self view];
  [v33 addConstraints:v32];
}

void __54__VideosExtrasStackTemplateViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _viewControllerForIndexPath:a2];
  v2 = [v4 collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 prepareLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VideosExtrasStackTemplateViewController;
  [(VideosExtrasElementViewController *)&v14 viewWillAppear:a3];
  [(UICollectionView *)self->_collectionView reloadData];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableDictionary *)self->_viewControllers allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) contentScrollView];
        if (objc_opt_respondsToSelector())
        {
          [v9 reloadData];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)templateElement
{
  v2 = [(VideosExtrasTemplateViewController *)self document];
  v3 = [v2 templateElement];

  return v3;
}

- (id)sectionStyle
{
  v2 = [(VideosExtrasElementViewController *)self extrasSize];
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
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
    if (v2 != 1)
    {
      if (v2 == 2)
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
  v5 = [v3 sectionHeaderStyle];

  return v5;
}

- (void)_prepareLayout
{
  v24.receiver = self;
  v24.super_class = VideosExtrasStackTemplateViewController;
  [(VideosExtrasElementViewController *)&v24 _prepareLayout];
  [(UICollectionView *)self->_collectionView contentInset];
  v3 = [(VideosExtrasElementViewController *)self isWide];
  v4 = [(VideosExtrasStackTemplateViewController *)self navigationController];
  v5 = [v4 view];
  [v5 safeAreaInsets];
  v7 = v6;

  v8 = [(VideosExtrasStackTemplateViewController *)self navigationController];
  v9 = [v8 view];
  [v9 safeAreaInsets];
  v11 = v10;

  v12 = [(VideosExtrasStackTemplateViewController *)self parentViewController];
  LOBYTE(v9) = objc_opt_respondsToSelector();

  if (v9)
  {
    v13 = [(VideosExtrasStackTemplateViewController *)self navigationController];
    v14 = [v13 mainTemplateViewController];
    v15 = [v14 view];
    [v15 bounds];
    v17 = v16;

    v18 = 60.0;
    if (v17 > 60.0)
    {
      v19 = [v14 menuBarView];
      [v19 bounds];
      v21 = v20;

      v18 = fmax(v21, 60.0);
    }
  }

  else
  {
    v18 = 60.0;
  }

  v22 = 112.0;
  if (v3)
  {
    v22 = 260.0;
  }

  [(UICollectionView *)self->_collectionView setContentInset:v22, v7, v18, v11];
  v23 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [v23 invalidateLayout];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"VideosExtrasStackCollectionCellIdentifier" forIndexPath:v6];
  [v7 setParentViewController:self];
  v8 = [(VideosExtrasStackTemplateViewController *)self _viewControllerForIndexPath:v6];

  [v7 setViewController:v8];

  return v7;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = [a3 dequeueReusableSupplementaryViewOfKind:a4 withReuseIdentifier:@"VideosExtrasStackCollectionHeaderIdentifier" forIndexPath:v8];
  v10 = [v8 section];

  v11 = [(VideosExtrasStackTemplateViewController *)self templateElement];
  v12 = [v11 collectionList];
  v13 = [v12 collections];
  v14 = [v13 objectAtIndex:v10];

  v15 = [v14 header];
  v16 = [(VideosExtrasStackTemplateViewController *)self sectionStyle];
  [v9 configureForHeaderElement:v15 headerStyle:v16];

  return v9;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (collectionView_layout_referenceSizeForHeaderInSection__onceToken_0 != -1)
  {
    [VideosExtrasStackTemplateViewController collectionView:layout:referenceSizeForHeaderInSection:];
  }

  v10 = [(VideosExtrasStackTemplateViewController *)self templateElement];
  v11 = [v10 collectionList];
  v12 = [v11 collections];
  v13 = [v12 objectAtIndex:a5];

  v14 = [v13 header];
  if (v14)
  {
    v15 = collectionView_layout_referenceSizeForHeaderInSection____sizingView_0;
    v16 = [(VideosExtrasStackTemplateViewController *)self sectionStyle];
    [v15 configureForHeaderElement:v14 headerStyle:v16];

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

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(VideosExtrasStackTemplateViewController *)self templateElement];
  v4 = [v3 collectionList];
  v5 = [v4 collections];
  v6 = [v5 count];

  return v6;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [(NSMutableDictionary *)self->_sizes objectForKey:a5, a4];
  v7 = v6;
  if (v6)
  {
    [v6 CGSizeValue];
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

- (id)_viewControllerForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_viewControllers objectForKey:v4];
  if (!v5)
  {
    v6 = [(VideosExtrasStackTemplateViewController *)self templateElement];
    v7 = [v6 collectionList];
    v8 = [v7 collections];
    v9 = [v8 objectAtIndex:{objc_msgSend(v4, "section")}];

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

    v15 = [(VideosExtrasGridElementViewController *)v5 view];
    v16 = [(VideosExtrasStackTemplateViewController *)self view];
    [v16 frame];
    [v15 setBounds:{0.0, 0.0}];

    [(VideosExtrasGridElementViewController *)v5 setViewElement:v9];
    [(VideosExtrasGridElementViewController *)v5 setShelfStyle:1];
    v17 = [(VideosExtrasGridElementViewController *)v5 collectionView];
    v18 = [v17 collectionViewLayout];
    [v18 prepareLayout];

    [(VideosExtrasGridElementViewController *)v5 preferredContentSize];
    if (*MEMORY[0x1E695F060] != v20 || *(MEMORY[0x1E695F060] + 8) != v19)
    {
      sizes = self->_sizes;
      v22 = [MEMORY[0x1E696B098] valueWithCGSize:?];
      [(NSMutableDictionary *)sizes setObject:v22 forKey:v4];
    }

    [(NSMutableDictionary *)self->_viewControllers setObject:v5 forKey:v4];
  }

  return v5;
}

@end