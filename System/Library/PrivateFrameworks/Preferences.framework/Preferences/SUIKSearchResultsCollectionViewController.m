@interface SUIKSearchResultsCollectionViewController
- (SUIKSearchResultsCollectionViewController)init;
- (SUIKSearchResultsCollectionViewControllerDelegate)delegate;
- (double)iconWidth;
- (unint64_t)totalSearchResults;
- (void)_selectAndScrollToIndexPath:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)searchQueryCompleted;
- (void)searchQueryFoundItems:(id)a3;
- (void)searchQueryStarted;
- (void)selectNextSearchResult;
- (void)selectPreviousSearchResult;
- (void)setResults:(id)a3;
- (void)showSelectedSearchResult;
- (void)viewDidLoad;
@end

@implementation SUIKSearchResultsCollectionViewController

- (SUIKSearchResultsCollectionViewController)init
{
  v3 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSectionProvider:&__block_literal_global_31];
  v4 = [(SUIKSearchResultsCollectionViewController *)self initWithCollectionViewLayout:v3];

  return v4;
}

id __49__SUIKSearchResultsCollectionViewController_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = reuseIdentifier_block_invoke_onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    __49__SUIKSearchResultsCollectionViewController_init__block_invoke_cold_1();
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:0];
  v6 = +[PSListController appearance];
  v7 = [v6 foregroundColor];
  [v5 setBackgroundColor:v7];

  [v5 setHeaderMode:0];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v5 layoutEnvironment:v4];
  v9 = MEMORY[0x1E6995588];
  v10 = [MEMORY[0x1E6995558] estimatedDimension:*&reuseIdentifier_block_invoke_iconSize_0];
  v11 = [MEMORY[0x1E6995558] estimatedDimension:*&reuseIdentifier_block_invoke_iconSize_1];
  v12 = [v9 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = MEMORY[0x1E6995548];
  v14 = SUIKCategoryHeaderKind;
  [reuseIdentifier_block_invoke_cellConfig directionalLayoutMargins];
  v16 = v15;
  v17 = [v4 container];

  [v17 contentInsets];
  v19 = [v13 boundarySupplementaryItemWithLayoutSize:v12 elementKind:v14 alignment:2 absoluteOffset:{v16 + v18, 0.0}];

  [v19 setPinToVisibleBounds:1];
  [v19 setExtendsBoundary:0];
  [v19 setZIndex:1000];
  v22[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v8 setBoundarySupplementaryItems:v20];

  return v8;
}

void __49__SUIKSearchResultsCollectionViewController_init__block_invoke_2()
{
  v0 = PSBlankIconImage();
  [v0 size];
  reuseIdentifier_block_invoke_iconSize_0 = v1;
  reuseIdentifier_block_invoke_iconSize_1 = v2;

  v3 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v4 = reuseIdentifier_block_invoke_cellConfig;
  reuseIdentifier_block_invoke_cellConfig = v3;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = SUIKSearchResultsCollectionViewController;
  [(SUIKSearchResultsCollectionViewController *)&v22 viewDidLoad];
  v3 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  [v3 setKeyboardDismissMode:1];

  v4 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v5 = objc_opt_class();
  v6 = +[SUIKSearchResultCollectionViewListCell reuseIdentifier];
  [v4 registerClass:v5 forCellWithReuseIdentifier:v6];

  v7 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = SUIKCategoryHeaderKind;
  v10 = +[SUIKSearchResultCollectionViewSectionHeader reuseIdentifier];
  [v7 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

  v11 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  [v11 setAlwaysBounceVertical:1];

  v12 = +[PSListController appearance];
  v13 = [v12 foregroundColor];
  v14 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  [v14 setBackgroundColor:v13];

  v15 = objc_alloc(MEMORY[0x1E69DC820]);
  v16 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v17 = [v15 initWithCollectionView:v16 cellProvider:&__block_literal_global_38_1];
  [(SUIKSearchResultsCollectionViewController *)self setDiffableDataSource:v17];

  objc_initWeak(&location, self);
  v19 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v20, &location);
  v18 = [(SUIKSearchResultsCollectionViewController *)self diffableDataSource:v19];
  [v18 setSupplementaryViewProvider:&v19];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

id __56__SUIKSearchResultsCollectionViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = +[SUIKSearchResultCollectionViewListCell reuseIdentifier];
  v10 = [v8 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

  [v10 configureWithSearchableItem:v6];

  return v10;
}

id __56__SUIKSearchResultsCollectionViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v8 isEqualToString:SUIKCategoryHeaderKind])
  {
    v11 = SUIKCategoryHeaderKind;
    v12 = +[SUIKSearchResultCollectionViewSectionHeader reuseIdentifier];
    v13 = [v7 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v9];

    v14 = [WeakRetained diffableDataSource];
    v15 = [v14 snapshot];
    v16 = [v15 sectionIdentifiers];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];

    v18 = [WeakRetained delegate];
    v19 = [v18 searchResultsCollectionViewController:WeakRetained iconForCategory:v17];

    [v13 setCategoryImage:v19];
  }

  else
  {
    v20 = PKLogForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v26 = 138543874;
      v27 = v22;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = v8;
      _os_log_impl(&dword_18B008000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Element kind for indexpath '%{public}@' is '%{public}@'.", &v26, 0x20u);
    }

    v23 = objc_alloc(MEMORY[0x1E69DC7E8]);
    v13 = [v23 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v24 = [MEMORY[0x1E69DC888] clearColor];
    [v13 setBackgroundColor:v24];
  }

  return v13;
}

- (double)iconWidth
{
  if (iconWidth_onceToken != -1)
  {
    [SUIKSearchResultsCollectionViewController iconWidth];
  }

  return *&iconWidth_iconWidth;
}

void __54__SUIKSearchResultsCollectionViewController_iconWidth__block_invoke()
{
  v1 = PSBlankIconImage();
  [v1 size];
  *&iconWidth_iconWidth = v0 + 15.0;
}

- (unint64_t)totalSearchResults
{
  v3 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v4 = [v3 numberOfSections];

  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
    v6 += [v7 numberOfItemsInSection:v5] + 1;

    ++v5;
    v8 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
    v9 = [v8 numberOfSections];
  }

  while (v9 > v5);
  return v6;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(SUIKSearchResultsCollectionViewController *)self diffableDataSource];
  v8 = [v7 itemIdentifierForIndexPath:v6];

  if (v8)
  {
    v9 = MEMORY[0x1E695DFF8];
    v10 = [v8 uniqueIdentifier];
    v11 = [v9 URLWithString:v10];

    v12 = [(SUIKSearchResultsCollectionViewController *)self delegate];
    [v12 searchResultsCollectionViewController:self didSelectURL:v11];

    v13 = [(SUIKSearchResultsCollectionViewController *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      if ([v6 section] < 1)
      {
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
          v16 += [v17 numberOfItemsInSection:v15];

          ++v15;
        }

        while (v15 < [v6 section]);
      }

      v18 = [v6 item];
      v19 = [(SUIKSearchResultsCollectionViewController *)self delegate];
      [v19 searchResultsCollectionViewController:self didSelectItem:v8 atIndex:v18 + v16];
    }
  }

  [v20 deselectItemAtIndexPath:v6 animated:0];
}

- (void)setResults:(id)a3
{
  v4 = a3;
  v5 = [(SUIKSearchResultsCollectionViewController *)self updateOperation];
  [v5 cancel];

  [(SUIKSearchResultsCollectionViewController *)self setUpdateOperation:0];
  v6 = [_SUIKSearchResultsUpdateOperation alloc];
  v7 = [(SUIKSearchResultsCollectionViewController *)self diffableDataSource];
  v8 = [(SUIKSearchResultsCollectionViewController *)self delegate];
  v9 = [(_SUIKSearchResultsUpdateOperation *)v6 initWithResults:v4 diffableDataSource:v7 delegate:v8];
  [(SUIKSearchResultsCollectionViewController *)self setUpdateOperation:v9];

  v10 = [(SUIKSearchResultsCollectionViewController *)self updateOperation];
  [v10 start];

  v11 = [v4 count];
  if (v11)
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__SUIKSearchResultsCollectionViewController_setResults___block_invoke;
    v12[3] = &unk_1E71DBE20;
    v12[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], v12);
    objc_destroyWeak(&location);
  }
}

void __56__SUIKSearchResultsCollectionViewController_setResults___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) collectionView];
  if ([v5 numberOfSections])
  {
    v2 = [*(a1 + 32) collectionView];
    v3 = [v2 numberOfItemsInSection:0];

    if (!v3)
    {
      return;
    }

    v5 = [*(a1 + 32) collectionView];
    v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    [v5 scrollToItemAtIndexPath:v4 atScrollPosition:1 animated:1];
  }
}

- (void)searchQueryStarted
{
  v3 = [MEMORY[0x1E695DEC8] array];
  [(SUIKSearchResultsCollectionViewController *)self setResults:v3];
}

- (void)searchQueryFoundItems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(SUIKSearchResultsCollectionViewController *)self setQueryFoundItems:1];
  }

  v5 = [(SUIKSearchResultsCollectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __67__SUIKSearchResultsCollectionViewController_searchQueryFoundItems___block_invoke;
    v11 = &unk_1E71DEAF8;
    objc_copyWeak(&v12, &location);
    v7 = [v4 na_filter:&v8];
    [(SUIKSearchResultsCollectionViewController *)self setResults:v7, v8, v9, v10, v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SUIKSearchResultsCollectionViewController *)self setResults:v4];
  }
}

uint64_t __67__SUIKSearchResultsCollectionViewController_searchQueryFoundItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained delegate];
  v6 = SUIKCategoryFromSearchableItem(v3);

  v7 = [v5 searchResultsCollectionViewController:WeakRetained shouldShowCategory:v6];
  return v7;
}

- (void)searchQueryCompleted
{
  if (![(SUIKSearchResultsCollectionViewController *)self queryFoundItems])
  {
    v3 = [MEMORY[0x1E695DEC8] array];
    [(SUIKSearchResultsCollectionViewController *)self setResults:v3];
  }
}

- (void)selectNextSearchResult
{
  v3 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v4 = [v3 numberOfSections];

  if (!v4)
  {
    return;
  }

  v5 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v17 = [v6 firstObject];

  if (!v17)
  {
    v11 = MEMORY[0x1E696AC88];
    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v7 = [v17 item];
  v8 = [v17 section];
  v9 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v10 = [v9 numberOfItemsInSection:v8] - 1;

  if (v7 < v10)
  {
    v11 = MEMORY[0x1E696AC88];
    v12 = v7 + 1;
    v13 = v8;
LABEL_9:
    v16 = [v11 indexPathForItem:v12 inSection:v13];
    [(SUIKSearchResultsCollectionViewController *)self _selectAndScrollToIndexPath:v16];

    goto LABEL_10;
  }

  v14 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v15 = [v14 numberOfSections] - 1;

  if (v8 < v15)
  {
    v11 = MEMORY[0x1E696AC88];
    v13 = v8 + 1;
    v12 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)selectPreviousSearchResult
{
  v3 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v4 = [v3 numberOfSections];

  if (!v4)
  {
    return;
  }

  v5 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v17 = [v6 firstObject];

  v7 = v17;
  if (v17)
  {
    v8 = [v17 item];
    v9 = [v17 section];
    v10 = v9;
    v11 = v8 - 1;
    if (v8 >= 1)
    {
      v12 = MEMORY[0x1E696AC88];
LABEL_8:
      v16 = [v12 indexPathForItem:v11 inSection:v10];
      [(SUIKSearchResultsCollectionViewController *)self _selectAndScrollToIndexPath:v16];

      v7 = v17;
      goto LABEL_9;
    }

    v13 = v9 - 1;
    v7 = v17;
    if (v10 >= 1)
    {
      v14 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
      v15 = [v14 numberOfItemsInSection:v13] - 1;

      v12 = MEMORY[0x1E696AC88];
      v11 = v15;
      v10 = v13;
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)showSelectedSearchResult
{
  v3 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v6 = [v4 firstObject];

  if (v6)
  {
    v5 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
    [(SUIKSearchResultsCollectionViewController *)self collectionView:v5 didSelectItemAtIndexPath:v6];

    [(SUIKSearchResultsCollectionViewController *)self _selectAndScrollToIndexPath:v6];
  }
}

- (void)_selectAndScrollToIndexPath:(id)a3
{
  v14 = a3;
  v4 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForVisibleItems];

  v6 = [v5 firstObject];
  v7 = [v6 compare:v14];

  if (v7 == 1)
  {
    v8 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
    v9 = v8;
    v10 = v14;
    v11 = 1;
  }

  else
  {
    v12 = [v5 lastObject];
    v13 = [v12 compare:v14];

    v8 = [(SUIKSearchResultsCollectionViewController *)self collectionView];
    v9 = v8;
    v10 = v14;
    if (v13 == -1)
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }
  }

  [v8 selectItemAtIndexPath:v10 animated:1 scrollPosition:v11];
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = a3;
  v4 = [(SUIKSearchResultsCollectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SUIKSearchResultsCollectionViewController *)self delegate];
    [v6 searchResultsCollectionViewController:self didScrollResultsInScrollView:v7];
  }
}

- (SUIKSearchResultsCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end