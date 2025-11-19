@interface SearchUICardCollectionViewController
- (BOOL)showsVerticalScrollIndicator;
- (CGSize)collectionViewContentSize;
- (SearchUICardCollectionViewController)init;
- (id)cellForRowModel:(id)a3 atIndexPath:(id)a4;
- (id)tableView;
- (void)reloadViews;
- (void)setShouldUseInsetRoundedSections:(BOOL)a3;
- (void)setShouldUseStandardSectionInsets:(BOOL)a3;
- (void)setShowsVerticalScrollIndicator:(BOOL)a3;
- (void)updateTopPadding;
- (void)viewDidDisappear:(BOOL)a3;
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

- (void)viewDidDisappear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = SearchUICardCollectionViewController;
  [(SearchUICollectionViewController *)&v12 viewDidDisappear:a3];
  v4 = [(SearchUICardCollectionViewController *)self navigationController];
  v5 = [v4 visibleViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [(SearchUICollectionViewController *)self feedbackListener];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [(SearchUICardCollectionViewController *)self navigationController];
    v9 = [v8 interactivePopGestureRecognizer];
    if ([v9 state] < 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = [objc_alloc(MEMORY[0x1E69C9F28]) initWithEvent:v10];
    v11 = [(SearchUICollectionViewController *)self tableModel];
    [v4 setQueryId:{objc_msgSend(v11, "queryId")}];

    v5 = [(SearchUICollectionViewController *)self feedbackListener];
    [v5 cardViewDidDisappear:v4];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)a3
{
  v3 = a3;
  v4 = [(SearchUICardCollectionViewController *)self collectionView];
  [v4 setShowsVerticalScrollIndicator:v3];
}

- (BOOL)showsVerticalScrollIndicator
{
  v2 = [(SearchUICardCollectionViewController *)self collectionView];
  v3 = [v2 showsVerticalScrollIndicator];

  return v3;
}

- (void)reloadViews
{
  v3 = [(SearchUICardCollectionViewController *)self collectionView];
  [v3 reloadData];

  v4 = [(SearchUICardCollectionViewController *)self collectionView];
  [v4 layoutIfNeeded];
}

- (void)setShouldUseInsetRoundedSections:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SearchUICardCollectionViewController;
  [(SearchUICollectionViewController *)&v4 setShouldUseInsetRoundedSections:a3];
  [(SearchUICardCollectionViewController *)self updateTopPadding];
}

- (void)setShouldUseStandardSectionInsets:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SearchUICardCollectionViewController;
  [(SearchUICollectionViewController *)&v4 setShouldUseStandardSectionInsets:a3];
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

  v4 = [(SearchUICardCollectionViewController *)self collectionView];
  [v4 setContentInset:{v3, 0.0, 0.0, 0.0}];
}

- (CGSize)collectionViewContentSize
{
  v2 = [(SearchUICardCollectionViewController *)self collectionView];
  v3 = [v2 collectionViewLayout];
  [v3 collectionViewContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)cellForRowModel:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SearchUICollectionViewController *)self cardViewDelegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && ([v6 cardSection], v10 = objc_claimAutoreleasedReturnValue(), v10, v10) && (-[SearchUICollectionViewController cardViewDelegate](self, "cardViewDelegate"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "cardSection"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "customViewControllerForCardSection:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, v13))
  {
    [(SearchUICardCollectionViewController *)self addChildViewController:v13];
    v14 = [v6 cardSection];
    v15 = [v14 description];

    v16 = [(SearchUICardCollectionViewController *)self collectionView];
    [v16 registerClass:objc_opt_class() forCellWithReuseIdentifier:v15];

    v17 = [(SearchUICardCollectionViewController *)self collectionView];
    v18 = [v17 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v7];

    [v18 setEmbeddedViewController:v13];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SearchUICardCollectionViewController;
    v18 = [(SearchUICollectionViewController *)&v20 cellForRowModel:v6 atIndexPath:v7];
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
  v3 = [(SearchUICardCollectionViewController *)self collectionView];
  [v3 setScrollEnabled:0];

  v4 = [(SearchUICardCollectionViewController *)self collectionView];
  [v4 _setSafeAreaInsetsFrozen:1];

  v5 = SearchUIGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(SearchUICardCollectionViewController *)v5 tableView];
  }

  return 0;
}

@end