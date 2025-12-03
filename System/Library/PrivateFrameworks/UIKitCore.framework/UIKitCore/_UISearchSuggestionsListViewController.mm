@interface _UISearchSuggestionsListViewController
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (UISearchController)searchController;
- (_UISearchSuggestionsListViewController)initWithCoder:(id)coder;
- (_UISearchSuggestionsListViewController)initWithSearchController:(id)controller;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)encodeWithCoder:(id)coder;
- (void)updateList;
- (void)viewDidLoad;
@end

@implementation _UISearchSuggestionsListViewController

- (_UISearchSuggestionsListViewController)initWithSearchController:(id)controller
{
  controllerCopy = controller;
  v5 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:1];
  v6 = [UICollectionViewCompositionalLayout layoutWithListConfiguration:v5];
  v23.receiver = self;
  v23.super_class = _UISearchSuggestionsListViewController;
  v7 = [(UICollectionViewController *)&v23 initWithCollectionViewLayout:v6];

  if (v7)
  {
    objc_storeWeak(&v7->_searchController, controllerCopy);
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
    collectionView = [(UICollectionViewController *)v7 collectionView];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67___UISearchSuggestionsListViewController_initWithSearchController___block_invoke_29;
    v18[3] = &unk_1E7128130;
    v12 = v9;
    v19 = v12;
    v13 = [(UICollectionViewDiffableDataSource *)v10 initWithCollectionView:collectionView cellProvider:v18];
    dataSource = v7->_dataSource;
    v7->_dataSource = v13;

    v15 = v7->_dataSource;
    collectionView2 = [(UICollectionViewController *)v7 collectionView];
    [collectionView2 setDataSource:v15];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (_UISearchSuggestionsListViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _UISearchSuggestionsListViewController;
  v5 = [(UICollectionViewController *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"SearchControllerForSearchSuggestionsList"];
    objc_storeWeak(&v5->_searchController, v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UISearchSuggestionsListViewController;
  coderCopy = coder;
  [(UICollectionViewController *)&v6 encodeWithCoder:coderCopy];
  WeakRetained = objc_loadWeakRetained(&self->_searchController);
  [coderCopy encodeObject:WeakRetained forKey:{@"SearchControllerForSearchSuggestionsList", v6.receiver, v6.super_class}];
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
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  numberOfSections = [snapshot numberOfSections];
  searchController = [(_UISearchSuggestionsListViewController *)self searchController];
  _dci_searchSuggestions = [searchController _dci_searchSuggestions];

  v7 = [_dci_searchSuggestions count];
  v8 = v7;
  if (numberOfSections >= 2)
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

    if (numberOfSections >= 2)
    {
      [snapshot deleteAllItems];
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
    if (!(numberOfSections | v7))
    {
      goto LABEL_32;
    }
  }

  if (![snapshot numberOfSections])
  {
    v26[0] = @"_UISearchSuggestionsList";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [snapshot appendSectionsWithIdentifiers:v10];
  }

  v11 = [snapshot numberOfItemsInSection:@"_UISearchSuggestionsList"];
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
      v24 = _dci_searchSuggestions;
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
      for (i = 0; i != v14; ++i)
      {
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [v15 addObject:v17];
      }

      [snapshot reconfigureItemsWithIdentifiers:v15];

      _dci_searchSuggestions = v24;
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
      [snapshot deleteItemsWithIdentifiers:v18];
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
      [snapshot appendItemsWithIdentifiers:v18];
    }

LABEL_22:
    dataSource = self->_dataSource;
    if (v12 > 0)
    {
      [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:snapshot animatingDifferences:1];
      goto LABEL_32;
    }

LABEL_31:
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:snapshot];
  }

LABEL_32:
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  collectionView = [(UICollectionViewController *)self collectionView];

  if (collectionView == viewCopy)
  {
    v10 = [pathCopy row];
    searchController = [(_UISearchSuggestionsListViewController *)self searchController];
    _dci_searchSuggestions = [searchController _dci_searchSuggestions];
    v9 = v10 < [_dci_searchSuggestions count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  searchController = [(_UISearchSuggestionsListViewController *)self searchController];
  _dci_searchSuggestions = [searchController _dci_searchSuggestions];
  v7 = [pathCopy row];

  v8 = [_dci_searchSuggestions objectAtIndexedSubscript:v7];
  [searchController _searchBarTextFieldDidSelectSearchSuggestion:v8];
}

- (UISearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

@end