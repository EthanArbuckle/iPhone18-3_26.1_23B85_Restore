@interface WFMapSearchTableViewController
- (WFMapSearchTableViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFMapSearchTableViewController

- (WFMapSearchTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 text];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CD4E38]);
    [v6 setNaturalLanguageQuery:v5];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  [a3 deselectRowAtIndexPath:? animated:?];
  v6 = [(WFMapSearchTableViewController *)self delegate];

  if (v6)
  {
    v7 = [(WFMapSearchTableViewController *)self delegate];
    v8 = [(WFMapSearchTableViewController *)self mapItems];
    v9 = [v8 objectAtIndex:{objc_msgSend(v10, "row")}];
    [v7 mapSearchViewController:self didSelectMapItem:v9];
  }

  [(WFMapSearchTableViewController *)self dismissViewControllerAnimated:0 completion:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  v11 = [(WFMapSearchTableViewController *)self mapItems];
  v12 = [v6 row];

  v13 = [v11 objectAtIndex:v12];
  v14 = [v13 name];

  v15 = [v10 textLabel];
  [v15 setText:v14];

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFMapSearchTableViewController *)self mapItems:a3];
  v5 = [v4 count];

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WFMapSearchTableViewController;
  [(WFMapSearchTableViewController *)&v7 viewDidLoad];
  v3 = [(WFMapSearchTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellReuseIdentifier:v6];
}

@end