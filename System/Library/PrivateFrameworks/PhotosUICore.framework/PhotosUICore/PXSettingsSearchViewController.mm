@interface PXSettingsSearchViewController
- (PXSettingsSearchViewController)initWithCoder:(id)coder;
- (PXSettingsSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXSettingsSearchViewController)initWithSettingsController:(id)controller;
- (PXSettingsSearchViewController)initWithStyle:(int64_t)style;
- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)priorityForInfoRequestOfKind:(id)kind;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleCancelItem:(id)item;
- (void)_indexerDidComplete;
- (void)infoUpdaterDidUpdate:(id)update;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)setIndex:(id)index;
- (void)setSearchResults:(id)results;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXSettingsSearchViewController

- (void)infoUpdaterDidUpdate:(id)update
{
  resultsInfoUpdater = [(PXSettingsSearchViewController *)self resultsInfoUpdater];
  info = [resultsInfoUpdater info];
  [(PXSettingsSearchViewController *)self setSearchResults:info];
}

- (int64_t)priorityForInfoRequestOfKind:(id)kind
{
  searchBar = [(PXSettingsSearchViewController *)self searchBar];
  text = [searchBar text];
  if ([text length])
  {
    v5 = 0;
  }

  else
  {
    v5 = 100;
  }

  return v5;
}

- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler
{
  handlerCopy = handler;
  searchBar = [(PXSettingsSearchViewController *)self searchBar];
  text = [searchBar text];

  index = [(PXSettingsSearchViewController *)self index];
  if (index && [text length])
  {
    searchBar2 = [(PXSettingsSearchViewController *)self searchBar];
    text2 = [searchBar2 text];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PXSettingsSearchViewController_requestInfoOfKind_withResultHandler___block_invoke;
    v13[3] = &unk_1E77357E8;
    v14 = handlerCopy;
    v11 = [index searchForText:text2 resultHandler:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
    v11 = 0;
  }

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  indexingProgress = [(PXSettingsSearchViewController *)self indexingProgress];

  if (indexingProgress)
  {
    subtitle = 0;
    title = @"Indexing…";
  }

  else
  {
    searchResults = [(PXSettingsSearchViewController *)self searchResults];
    v12 = [searchResults objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    title = [v12 title];
    subtitle = [v12 subtitle];
  }

  v13 = [viewCopy dequeueReusableCellWithIdentifier:@"cellReuseIdentifier"];
  if (!v13)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"cellReuseIdentifier"];
  }

  v14 = indexingProgress == 0;
  textLabel = [v13 textLabel];
  [textLabel setText:title];

  detailTextLabel = [v13 detailTextLabel];
  [detailTextLabel setText:subtitle];

  [v13 setUserInteractionEnabled:v14];
  textLabel2 = [v13 textLabel];
  [textLabel2 setEnabled:v14];

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PXSettingsSearchViewController *)self indexingProgress:view];

  if (v5)
  {
    return 1;
  }

  searchResults = [(PXSettingsSearchViewController *)self searchResults];
  v8 = [searchResults count];

  return v8;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  searchBar = [(PXSettingsSearchViewController *)self searchBar];
  [searchBar resignFirstResponder];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  view = [(PXSettingsSearchViewController *)self view];
  window = [view window];

  v10 = [window snapshotViewAfterScreenUpdates:0];
  [window addSubview:v10];
  [(PXSettingsSearchViewController *)self dismissViewControllerAnimated:0 completion:0];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];

  searchResults = [(PXSettingsSearchViewController *)self searchResults];
  v12 = [pathCopy row];

  v13 = [searchResults objectAtIndexedSubscript:v12];

  settingsController = [(PXSettingsSearchViewController *)self settingsController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__PXSettingsSearchViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v16[3] = &unk_1E774C648;
  v17 = v10;
  v15 = v10;
  [v13 revealInSettingsController:settingsController withCompletionHandler:v16];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  [clicked resignFirstResponder];

  [(PXSettingsSearchViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v4 = [(PXSettingsSearchViewController *)self resultsInfoUpdater:bar];
  [v4 invalidateInfo];
}

- (void)_handleCancelItem:(id)item
{
  searchBar = [(PXSettingsSearchViewController *)self searchBar];
  [(PXSettingsSearchViewController *)self searchBarCancelButtonClicked:searchBar];
}

- (void)setSearchResults:(id)results
{
  resultsCopy = results;
  v5 = resultsCopy;
  if (self->_searchResults != resultsCopy)
  {
    v10 = resultsCopy;
    v6 = [(NSArray *)resultsCopy isEqual:?];
    v5 = v10;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v10 copy];
      searchResults = self->_searchResults;
      self->_searchResults = v7;

      tableView = [(PXSettingsSearchViewController *)self tableView];
      [tableView reloadData];

      v5 = v10;
    }
  }
}

- (void)setIndex:(id)index
{
  indexCopy = index;
  if (self->_index != indexCopy)
  {
    v7 = indexCopy;
    objc_storeStrong(&self->_index, index);
    resultsInfoUpdater = [(PXSettingsSearchViewController *)self resultsInfoUpdater];
    [resultsInfoUpdater invalidateInfo];

    indexCopy = v7;
  }
}

- (void)_indexerDidComplete
{
  [(PXSettingsSearchViewController *)self setIndexingProgress:0];
  indexer = [(PXSettingsSearchViewController *)self indexer];
  index = [indexer index];
  [(PXSettingsSearchViewController *)self setIndex:index];

  tableView = [(PXSettingsSearchViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PXSettingsSearchViewController;
  [(PXSettingsSearchViewController *)&v5 viewWillAppear:appear];
  searchBar = [(PXSettingsSearchViewController *)self searchBar];
  [searchBar becomeFirstResponder];
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
  navigationItem = [(PXSettingsSearchViewController *)self navigationItem];
  searchBar = [(PXSettingsSearchViewController *)self searchBar];
  [navigationItem setTitleView:searchBar];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelItem_];
  [navigationItem setRightBarButtonItem:v7];

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

- (PXSettingsSearchViewController)initWithSettingsController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = PXSettingsSearchViewController;
  v6 = [(PXSettingsSearchViewController *)&v15 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settingsController, controller);
    v8 = [PXSettingsIndexer alloc];
    rootSettings = [controllerCopy rootSettings];
    v10 = [(PXSettingsIndexer *)v8 initWithRootSettings:rootSettings];
    indexer = v7->_indexer;
    v7->_indexer = v10;

    v12 = [[off_1E7721770 alloc] initWithInfoProvider:v7 infoKind:@"PXSettingsSearchResultsInfoKind"];
    resultsInfoUpdater = v7->_resultsInfoUpdater;
    v7->_resultsInfoUpdater = v12;

    [(PXInfoUpdater *)v7->_resultsInfoUpdater setObserver:v7];
  }

  return v7;
}

- (PXSettingsSearchViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsSearchViewController.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXSettingsSearchViewController initWithCoder:]"}];

  abort();
}

- (PXSettingsSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsSearchViewController.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXSettingsSearchViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXSettingsSearchViewController)initWithStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsSearchViewController.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXSettingsSearchViewController initWithStyle:]"}];

  abort();
}

@end