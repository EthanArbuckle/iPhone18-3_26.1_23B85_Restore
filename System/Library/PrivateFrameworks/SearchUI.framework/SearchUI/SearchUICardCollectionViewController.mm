@interface SearchUICardCollectionViewController
- (BOOL)showsVerticalScrollIndicator;
- (CGSize)collectionViewContentSize;
- (SearchUICardCollectionViewController)init;
- (id)cellForRowModel:(id)model atIndexPath:(id)path;
- (id)tableView;
- (void)reloadViews;
- (void)setShouldUseInsetRoundedSections:(BOOL)sections;
- (void)setShouldUseStandardSectionInsets:(BOOL)insets;
- (void)setShowsVerticalScrollIndicator:(BOOL)indicator;
- (void)updateTopPadding;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SearchUICardCollectionViewController

- (SearchUICardCollectionViewController)init
{
  v5.receiver = self;
  v5.super_class = SearchUICardCollectionViewController;
  v2 = [(SearchUICollectionViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SearchUICardCollectionViewController *)v2 setRowSelectionAppearanceEnabled:1];
  }

  return v3;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = SearchUICardCollectionViewController;
  [(SearchUICollectionViewController *)&v12 viewDidDisappear:disappear];
  navigationController = [(SearchUICardCollectionViewController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    feedbackListener = [(SearchUICollectionViewController *)self feedbackListener];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    navigationController2 = [(SearchUICardCollectionViewController *)self navigationController];
    interactivePopGestureRecognizer = [navigationController2 interactivePopGestureRecognizer];
    if ([interactivePopGestureRecognizer state] < 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    navigationController = [objc_alloc(MEMORY[0x1E69C9F28]) initWithEvent:v10];
    tableModel = [(SearchUICollectionViewController *)self tableModel];
    [navigationController setQueryId:{objc_msgSend(tableModel, "queryId")}];

    visibleViewController = [(SearchUICollectionViewController *)self feedbackListener];
    [visibleViewController cardViewDidDisappear:navigationController];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  collectionView = [(SearchUICardCollectionViewController *)self collectionView];
  [collectionView setShowsVerticalScrollIndicator:indicatorCopy];
}

- (BOOL)showsVerticalScrollIndicator
{
  collectionView = [(SearchUICardCollectionViewController *)self collectionView];
  showsVerticalScrollIndicator = [collectionView showsVerticalScrollIndicator];

  return showsVerticalScrollIndicator;
}

- (void)reloadViews
{
  collectionView = [(SearchUICardCollectionViewController *)self collectionView];
  [collectionView reloadData];

  collectionView2 = [(SearchUICardCollectionViewController *)self collectionView];
  [collectionView2 layoutIfNeeded];
}

- (void)setShouldUseInsetRoundedSections:(BOOL)sections
{
  v4.receiver = self;
  v4.super_class = SearchUICardCollectionViewController;
  [(SearchUICollectionViewController *)&v4 setShouldUseInsetRoundedSections:sections];
  [(SearchUICardCollectionViewController *)self updateTopPadding];
}

- (void)setShouldUseStandardSectionInsets:(BOOL)insets
{
  v4.receiver = self;
  v4.super_class = SearchUICardCollectionViewController;
  [(SearchUICollectionViewController *)&v4 setShouldUseStandardSectionInsets:insets];
  [(SearchUICardCollectionViewController *)self updateTopPadding];
}

- (void)updateTopPadding
{
  v3 = 0.0;
  if ([(SearchUICollectionViewController *)self shouldUseInsetRoundedSections])
  {
    if ([(SearchUICollectionViewController *)self shouldUseStandardSectionInsets])
    {
      v3 = 16.0;
    }

    else
    {
      v3 = 12.0;
    }
  }

  collectionView = [(SearchUICardCollectionViewController *)self collectionView];
  [collectionView setContentInset:{v3, 0.0, 0.0, 0.0}];
}

- (CGSize)collectionViewContentSize
{
  collectionView = [(SearchUICardCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)cellForRowModel:(id)model atIndexPath:(id)path
{
  modelCopy = model;
  pathCopy = path;
  cardViewDelegate = [(SearchUICollectionViewController *)self cardViewDelegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && ([modelCopy cardSection], v10 = objc_claimAutoreleasedReturnValue(), v10, v10) && (-[SearchUICollectionViewController cardViewDelegate](self, "cardViewDelegate"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(modelCopy, "cardSection"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "customViewControllerForCardSection:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, v13))
  {
    [(SearchUICardCollectionViewController *)self addChildViewController:v13];
    cardSection = [modelCopy cardSection];
    v15 = [cardSection description];

    collectionView = [(SearchUICardCollectionViewController *)self collectionView];
    [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:v15];

    collectionView2 = [(SearchUICardCollectionViewController *)self collectionView];
    v18 = [collectionView2 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];

    [v18 setEmbeddedViewController:v13];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SearchUICardCollectionViewController;
    v18 = [(SearchUICollectionViewController *)&v20 cellForRowModel:modelCopy atIndexPath:pathCopy];
    if (![(SearchUICardCollectionViewController *)self rowSelectionAppearanceEnabled])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v18 setSearchui_focusStyle:6];
      }
    }
  }

  return v18;
}

- (id)tableView
{
  collectionView = [(SearchUICardCollectionViewController *)self collectionView];
  [collectionView setScrollEnabled:0];

  collectionView2 = [(SearchUICardCollectionViewController *)self collectionView];
  [collectionView2 _setSafeAreaInsetsFrozen:1];

  v5 = SearchUIGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(SearchUICardCollectionViewController *)v5 tableView];
  }

  return 0;
}

@end