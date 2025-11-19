@interface PXSettingsSearchViewController
- (PXSettingsSearchViewController)initWithCoder:(id)a3;
- (PXSettingsSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXSettingsSearchViewController)initWithSettingsController:(id)a3;
- (PXSettingsSearchViewController)initWithStyle:(int64_t)a3;
- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)priorityForInfoRequestOfKind:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handleCancelItem:(id)a3;
- (void)_indexerDidComplete;
- (void)infoUpdaterDidUpdate:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)setIndex:(id)a3;
- (void)setSearchResults:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXSettingsSearchViewController

- (void)infoUpdaterDidUpdate:(id)a3
{
  v5 = [(PXSettingsSearchViewController *)self resultsInfoUpdater];
  v4 = [v5 info];
  [(PXSettingsSearchViewController *)self setSearchResults:v4];
}

- (int64_t)priorityForInfoRequestOfKind:(id)a3
{
  v3 = [(PXSettingsSearchViewController *)self searchBar];
  v4 = [v3 text];
  if ([v4 length])
  {
    v5 = 0;
  }

  else
  {
    v5 = 100;
  }

  return v5;
}

- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4
{
  v5 = a4;
  v6 = [(PXSettingsSearchViewController *)self searchBar];
  v7 = [v6 text];

  v8 = [(PXSettingsSearchViewController *)self index];
  if (v8 && [v7 length])
  {
    v9 = [(PXSettingsSearchViewController *)self searchBar];
    v10 = [v9 text];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PXSettingsSearchViewController_requestInfoOfKind_withResultHandler___block_invoke;
    v13[3] = &unk_1E77357E8;
    v14 = v5;
    v11 = [v8 searchForText:v10 resultHandler:v13];
  }

  else
  {
    (*(v5 + 2))(v5, MEMORY[0x1E695E0F0]);
    v11 = 0;
  }

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXSettingsSearchViewController *)self indexingProgress];

  if (v8)
  {
    v9 = 0;
    v10 = @"Indexing…";
  }

  else
  {
    v11 = [(PXSettingsSearchViewController *)self searchResults];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

    v10 = [v12 title];
    v9 = [v12 subtitle];
  }

  v13 = [v6 dequeueReusableCellWithIdentifier:@"cellReuseIdentifier"];
  if (!v13)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"cellReuseIdentifier"];
  }

  v14 = v8 == 0;
  v15 = [v13 textLabel];
  [v15 setText:v10];

  v16 = [v13 detailTextLabel];
  [v16 setText:v9];

  [v13 setUserInteractionEnabled:v14];
  v17 = [v13 textLabel];
  [v17 setEnabled:v14];

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PXSettingsSearchViewController *)self indexingProgress:a3];

  if (v5)
  {
    return 1;
  }

  v7 = [(PXSettingsSearchViewController *)self searchResults];
  v8 = [v7 count];

  return v8;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = [(PXSettingsSearchViewController *)self searchBar];
  [v3 resignFirstResponder];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXSettingsSearchViewController *)self view];
  v9 = [v8 window];

  v10 = [v9 snapshotViewAfterScreenUpdates:0];
  [v9 addSubview:v10];
  [(PXSettingsSearchViewController *)self dismissViewControllerAnimated:0 completion:0];
  [v7 deselectRowAtIndexPath:v6 animated:0];

  v11 = [(PXSettingsSearchViewController *)self searchResults];
  v12 = [v6 row];

  v13 = [v11 objectAtIndexedSubscript:v12];

  v14 = [(PXSettingsSearchViewController *)self settingsController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__PXSettingsSearchViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v16[3] = &unk_1E774C648;
  v17 = v10;
  v15 = v10;
  [v13 revealInSettingsController:v14 withCompletionHandler:v16];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  [a3 resignFirstResponder];

  [(PXSettingsSearchViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v4 = [(PXSettingsSearchViewController *)self resultsInfoUpdater:a3];
  [v4 invalidateInfo];
}

- (void)_handleCancelItem:(id)a3
{
  v4 = [(PXSettingsSearchViewController *)self searchBar];
  [(PXSettingsSearchViewController *)self searchBarCancelButtonClicked:v4];
}

- (void)setSearchResults:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchResults != v4)
  {
    v10 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v10;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v10 copy];
      searchResults = self->_searchResults;
      self->_searchResults = v7;

      v9 = [(PXSettingsSearchViewController *)self tableView];
      [v9 reloadData];

      v5 = v10;
    }
  }
}

- (void)setIndex:(id)a3
{
  v5 = a3;
  if (self->_index != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_index, a3);
    v6 = [(PXSettingsSearchViewController *)self resultsInfoUpdater];
    [v6 invalidateInfo];

    v5 = v7;
  }
}

- (void)_indexerDidComplete
{
  [(PXSettingsSearchViewController *)self setIndexingProgress:0];
  v3 = [(PXSettingsSearchViewController *)self indexer];
  v4 = [v3 index];
  [(PXSettingsSearchViewController *)self setIndex:v4];

  v5 = [(PXSettingsSearchViewController *)self tableView];
  [v5 reloadData];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXSettingsSearchViewController;
  [(PXSettingsSearchViewController *)&v5 viewWillAppear:a3];
  v4 = [(PXSettingsSearchViewController *)self searchBar];
  [v4 becomeFirstResponder];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PXSettingsSearchViewController;
  [(PXSettingsSearchViewController *)&v16 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DCF08]);
  searchBar = self->_searchBar;
  self->_searchBar = v3;

  [(UISearchBar *)self->_searchBar setDelegate:self];
  [(UISearchBar *)self->_searchBar setShowsCancelButton:0];
  v5 = [(PXSettingsSearchViewController *)self navigationItem];
  v6 = [(PXSettingsSearchViewController *)self searchBar];
  [v5 setTitleView:v6];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelItem_];
  [v5 setRightBarButtonItem:v7];

  objc_initWeak(&location, self);
  indexer = self->_indexer;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __45__PXSettingsSearchViewController_viewDidLoad__block_invoke;
  v13 = &unk_1E774C318;
  objc_copyWeak(&v14, &location);
  v9 = [(PXSettingsIndexer *)indexer startIndexingWithCompletionHandler:&v10];
  [(PXSettingsSearchViewController *)self setIndexingProgress:v9, v10, v11, v12, v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __45__PXSettingsSearchViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _indexerDidComplete];
}

- (PXSettingsSearchViewController)initWithSettingsController:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PXSettingsSearchViewController;
  v6 = [(PXSettingsSearchViewController *)&v15 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settingsController, a3);
    v8 = [PXSettingsIndexer alloc];
    v9 = [v5 rootSettings];
    v10 = [(PXSettingsIndexer *)v8 initWithRootSettings:v9];
    indexer = v7->_indexer;
    v7->_indexer = v10;

    v12 = [[off_1E7721770 alloc] initWithInfoProvider:v7 infoKind:@"PXSettingsSearchResultsInfoKind"];
    resultsInfoUpdater = v7->_resultsInfoUpdater;
    v7->_resultsInfoUpdater = v12;

    [(PXInfoUpdater *)v7->_resultsInfoUpdater setObserver:v7];
  }

  return v7;
}

- (PXSettingsSearchViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXSettingsSearchViewController.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXSettingsSearchViewController initWithCoder:]"}];

  abort();
}

- (PXSettingsSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXSettingsSearchViewController.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXSettingsSearchViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXSettingsSearchViewController)initWithStyle:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXSettingsSearchViewController.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXSettingsSearchViewController initWithStyle:]"}];

  abort();
}

@end