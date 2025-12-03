@interface WFMapSearchTableViewController
- (WFMapSearchTableViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation WFMapSearchTableViewController

- (WFMapSearchTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if (text)
  {
    v6 = objc_alloc_init(MEMORY[0x277CD4E38]);
    [v6 setNaturalLanguageQuery:text];
    v7 = [objc_alloc(MEMORY[0x277CD4E20]) initWithRequest:v6];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__WFMapSearchTableViewController_updateSearchResultsForSearchController___block_invoke;
    v8[3] = &unk_279EE7AD8;
    v8[4] = self;
    [v7 startWithCompletionHandler:v8];
  }
}

void __73__WFMapSearchTableViewController_updateSearchResultsForSearchController___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 mapItems];
    [*(a1 + 32) setMapItems:v3];

    v4 = [*(a1 + 32) tableView];
    [v4 reloadData];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:? animated:?];
  delegate = [(WFMapSearchTableViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(WFMapSearchTableViewController *)self delegate];
    mapItems = [(WFMapSearchTableViewController *)self mapItems];
    v9 = [mapItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    [delegate2 mapSearchViewController:self didSelectMapItem:v9];
  }

  [(WFMapSearchTableViewController *)self dismissViewControllerAnimated:0 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  mapItems = [(WFMapSearchTableViewController *)self mapItems];
  v12 = [pathCopy row];

  v13 = [mapItems objectAtIndex:v12];
  name = [v13 name];

  textLabel = [v10 textLabel];
  [textLabel setText:name];

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFMapSearchTableViewController *)self mapItems:view];
  v5 = [v4 count];

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WFMapSearchTableViewController;
  [(WFMapSearchTableViewController *)&v7 viewDidLoad];
  tableView = [(WFMapSearchTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [tableView registerClass:v4 forCellReuseIdentifier:v6];
}

@end