@interface WFTagPickerViewController
- (CGSize)preferredContentSize;
- (WFTagPickerViewController)initWithTitle:(id)a3 tags:(id)a4;
- (WFTagPickerViewControllerDelegate)delegate;
- (id)currentResults;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel;
- (void)dismiss;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFTagPickerViewController

- (WFTagPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v3 = [(WFTagPickerViewController *)self tableView];
  [v3 reloadData];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(WFTagPickerViewController *)self currentResults];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  v10 = [(WFTagPickerViewController *)self selectedTags];
  v11 = [v10 containsObject:v9];

  v12 = [(WFTagPickerViewController *)self selectedTags];
  v13 = v12;
  if (v11)
  {
    [v12 removeObject:v9];
  }

  else
  {
    [v12 addObject:v9];
  }

  [v7 deselectRowAtIndexPath:v6 animated:1];
  v15[0] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v7 reloadRowsAtIndexPaths:v14 withRowAnimation:100];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"TagCell" forIndexPath:v6];
  v8 = [(WFTagPickerViewController *)self currentResults];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v7 textLabel];
  [v11 setText:v10];

  v12 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v12];

  v13 = [(WFTagPickerViewController *)self selectedTags];
  if ([v13 containsObject:v10])
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v7 setAccessoryType:v14];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFTagPickerViewController *)self currentResults:a3];
  v5 = [v4 count];

  return v5;
}

- (id)currentResults
{
  v3 = [(WFTagPickerViewController *)self searchController];
  if ([v3 isActive])
  {
    v4 = [(WFTagPickerViewController *)self searchController];
    v5 = [v4 searchBar];
    v6 = [v5 text];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [(WFTagPickerViewController *)self searchController];
      v9 = [v8 searchBar];
      v10 = [v9 text];
      v11 = [v10 lowercaseString];

      v12 = [(WFTagPickerViewController *)self tags];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __43__WFTagPickerViewController_currentResults__block_invoke;
      v16[3] = &unk_279EDBA40;
      v17 = v11;
      v13 = v11;
      v14 = [v12 if_compactMap:v16];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = [(WFTagPickerViewController *)self tags];
LABEL_6:

  return v14;
}

void *__43__WFTagPickerViewController_currentResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lowercaseString];
  if ([v4 containsString:*(a1 + 32)])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)dismiss
{
  v5 = [(WFTagPickerViewController *)self delegate];
  v3 = [(WFTagPickerViewController *)self selectedTags];
  v4 = [v3 array];
  [v5 tagPicker:self didSelectTags:v4];
}

- (void)cancel
{
  v3 = [(WFTagPickerViewController *)self delegate];
  [v3 tagPickerDidCancel:self];
}

- (CGSize)preferredContentSize
{
  v2 = [(WFTagPickerViewController *)self tableView];
  [v2 contentSize];
  v4 = v3;

  v5 = 320.0;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = WFTagPickerViewController;
  [(WFTagPickerViewController *)&v16 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
  v4 = [(WFTagPickerViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismiss];
  v6 = [(WFTagPickerViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [MEMORY[0x277D75348] whiteColor];
  v8 = [(WFTagPickerViewController *)self view];
  [v8 setBackgroundColor:v7];
  v9 = [(WFTagPickerViewController *)self tableView];
  [v9 setBackgroundColor:v7];

  v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  v11 = [(WFTagPickerViewController *)self tableView];
  [v11 setTableFooterView:v10];

  v12 = [(WFTagPickerViewController *)self tableView];
  [v12 registerClass:objc_opt_class() forCellReuseIdentifier:@"TagCell"];

  v13 = [(WFTagPickerViewController *)self searchController];
  v14 = [v13 searchBar];
  v15 = [(WFTagPickerViewController *)self tableView];
  [v15 setTableHeaderView:v14];

  [(WFTagPickerViewController *)self setDefinesPresentationContext:1];
}

- (WFTagPickerViewController)initWithTitle:(id)a3 tags:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = WFTagPickerViewController;
  v8 = [(WFTagPickerViewController *)&v17 initWithStyle:0];
  if (v8)
  {
    v9 = [v7 copy];
    tags = v8->_tags;
    v8->_tags = v9;

    v11 = objc_opt_new();
    selectedTags = v8->_selectedTags;
    v8->_selectedTags = v11;

    v13 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
    searchController = v8->_searchController;
    v8->_searchController = v13;

    [(UISearchController *)v8->_searchController setSearchResultsUpdater:v8];
    [(UISearchController *)v8->_searchController setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)v8->_searchController setHidesNavigationBarDuringPresentation:0];
    [(WFTagPickerViewController *)v8 setTitle:v6];
    v15 = v8;
  }

  return v8;
}

@end