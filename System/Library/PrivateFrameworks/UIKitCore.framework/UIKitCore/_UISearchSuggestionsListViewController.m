@interface _UISearchSuggestionsListViewController
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (UISearchController)searchController;
- (_UISearchSuggestionsListViewController)initWithCoder:(id)a3;
- (_UISearchSuggestionsListViewController)initWithSearchController:(id)a3;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateList;
- (void)viewDidLoad;
@end

@implementation _UISearchSuggestionsListViewController

- (_UISearchSuggestionsListViewController)initWithSearchController:(id)a3
{
  v4 = a3;
  v5 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:1];
  v6 = [UICollectionViewCompositionalLayout layoutWithListConfiguration:v5];
  v23.receiver = self;
  v23.super_class = _UISearchSuggestionsListViewController;
  v7 = [(UICollectionViewController *)&v23 initWithCollectionViewLayout:v6];

  if (v7)
  {
    objc_storeWeak(&v7->_searchController, v4);
    [(UICollectionViewController *)v7 setInstallsStandardGestureForInteractiveMovement:0];
    objc_initWeak(&location, v7);
    v8 = objc_opt_class();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67___UISearchSuggestionsListViewController_initWithSearchController___block_invoke;
    v20[3] = &unk_1E7128108;
    objc_copyWeak(&v21, &location);
    v9 = [UICollectionViewCellRegistration registrationWithCellClass:v8 configurationHandler:v20];
    v10 = [UICollectionViewDiffableDataSource alloc];
    v11 = [(UICollectionViewController *)v7 collectionView];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67___UISearchSuggestionsListViewController_initWithSearchController___block_invoke_29;
    v18[3] = &unk_1E7128130;
    v12 = v9;
    v19 = v12;
    v13 = [(UICollectionViewDiffableDataSource *)v10 initWithCollectionView:v11 cellProvider:v18];
    dataSource = v7->_dataSource;
    v7->_dataSource = v13;

    v15 = v7->_dataSource;
    v16 = [(UICollectionViewController *)v7 collectionView];
    [v16 setDataSource:v15];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (_UISearchSuggestionsListViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISearchSuggestionsListViewController;
  v5 = [(UICollectionViewController *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"SearchControllerForSearchSuggestionsList"];
    objc_storeWeak(&v5->_searchController, v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UISearchSuggestionsListViewController;
  v4 = a3;
  [(UICollectionViewController *)&v6 encodeWithCoder:v4];
  WeakRetained = objc_loadWeakRetained(&self->_searchController);
  [v4 encodeObject:WeakRetained forKey:{@"SearchControllerForSearchSuggestionsList", v6.receiver, v6.super_class}];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _UISearchSuggestionsListViewController;
  [(UIViewController *)&v3 viewDidLoad];
  [(_UISearchSuggestionsListViewController *)self updateList];
}

- (void)updateList
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v4 = [v3 numberOfSections];
  v5 = [(_UISearchSuggestionsListViewController *)self searchController];
  v6 = [v5 _dci_searchSuggestions];

  v7 = [v6 count];
  v8 = v7;
  if (v4 >= 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Unexpected number of sections in snapshot for search suggestions list. Resetting", buf, 2u);
      }
    }

    else
    {
      v22 = *(__UILogGetCategoryCachedImpl("Assert", &updateList___s_category) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Unexpected number of sections in snapshot for search suggestions list. Resetting", buf, 2u);
      }
    }

    if (v4 >= 2)
    {
      [v3 deleteAllItems];
      if (!v8)
      {
        dataSource = self->_dataSource;
        goto LABEL_31;
      }
    }

    v9 = v8 == 0;
  }

  else
  {
    v9 = v7 == 0;
    if (!(v4 | v7))
    {
      goto LABEL_32;
    }
  }

  if (![v3 numberOfSections])
  {
    v26[0] = @"_UISearchSuggestionsList";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v3 appendSectionsWithIdentifiers:v10];
  }

  v11 = [v3 numberOfItemsInSection:@"_UISearchSuggestionsList"];
  if (v11 >= 1 || !v9)
  {
    v12 = v11;
    v13 = v11 & ~(v11 >> 63);
    if (v13 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v11 & ~(v11 >> 63);
    }

    if (v14)
    {
      v24 = v6;
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
      for (i = 0; i != v14; ++i)
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [v15 addObject:v17];
      }

      [v3 reconfigureItemsWithIdentifiers:v15];

      v6 = v24;
    }

    if (v13 >= v8)
    {
      if (v8 >= v13)
      {
        goto LABEL_22;
      }

      v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13 - v8];
      do
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        [v18 addObject:v20];

        ++v8;
      }

      while (v13 != v8);
      [v3 deleteItemsWithIdentifiers:v18];
    }

    else
    {
      v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8 - v13];
      do
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
        [v18 addObject:v19];

        ++v13;
      }

      while (v8 != v13);
      [v3 appendItemsWithIdentifiers:v18];
    }

LABEL_22:
    dataSource = self->_dataSource;
    if (v12 > 0)
    {
      [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v3 animatingDifferences:1];
      goto LABEL_32;
    }

LABEL_31:
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:v3];
  }

LABEL_32:
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UICollectionViewController *)self collectionView];

  if (v8 == v7)
  {
    v10 = [v6 row];
    v11 = [(_UISearchSuggestionsListViewController *)self searchController];
    v12 = [v11 _dci_searchSuggestions];
    v9 = v10 < [v12 count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(_UISearchSuggestionsListViewController *)self searchController];
  v6 = [v9 _dci_searchSuggestions];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [v9 _searchBarTextFieldDidSelectSearchSuggestion:v8];
}

- (UISearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

@end