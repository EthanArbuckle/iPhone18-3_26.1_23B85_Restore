@interface WFTagPickerViewController
- (CGSize)preferredContentSize;
- (WFTagPickerViewController)initWithTitle:(id)title tags:(id)tags;
- (WFTagPickerViewControllerDelegate)delegate;
- (id)currentResults;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel;
- (void)dismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation WFTagPickerViewController

- (WFTagPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  tableView = [(WFTagPickerViewController *)self tableView];
  [tableView reloadData];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v15[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  viewCopy = view;
  currentResults = [(WFTagPickerViewController *)self currentResults];
  v9 = [currentResults objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  selectedTags = [(WFTagPickerViewController *)self selectedTags];
  v11 = [selectedTags containsObject:v9];

  selectedTags2 = [(WFTagPickerViewController *)self selectedTags];
  v13 = selectedTags2;
  if (v11)
  {
    [selectedTags2 removeObject:v9];
  }

  else
  {
    [selectedTags2 addObject:v9];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v15[0] = pathCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [viewCopy reloadRowsAtIndexPaths:v14 withRowAnimation:100];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"TagCell" forIndexPath:pathCopy];
  currentResults = [(WFTagPickerViewController *)self currentResults];
  v9 = [pathCopy row];

  v10 = [currentResults objectAtIndex:v9];

  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  selectedTags = [(WFTagPickerViewController *)self selectedTags];
  if ([selectedTags containsObject:v10])
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFTagPickerViewController *)self currentResults:view];
  v5 = [v4 count];

  return v5;
}

- (id)currentResults
{
  searchController = [(WFTagPickerViewController *)self searchController];
  if ([searchController isActive])
  {
    searchController2 = [(WFTagPickerViewController *)self searchController];
    searchBar = [searchController2 searchBar];
    text = [searchBar text];
    v7 = [text length];

    if (v7)
    {
      searchController3 = [(WFTagPickerViewController *)self searchController];
      searchBar2 = [searchController3 searchBar];
      text2 = [searchBar2 text];
      lowercaseString = [text2 lowercaseString];

      tags = [(WFTagPickerViewController *)self tags];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __43__WFTagPickerViewController_currentResults__block_invoke;
      v16[3] = &unk_279EDBA40;
      v17 = lowercaseString;
      v13 = lowercaseString;
      tags2 = [tags if_compactMap:v16];

      goto LABEL_6;
    }
  }

  else
  {
  }

  tags2 = [(WFTagPickerViewController *)self tags];
LABEL_6:

  return tags2;
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
  delegate = [(WFTagPickerViewController *)self delegate];
  selectedTags = [(WFTagPickerViewController *)self selectedTags];
  array = [selectedTags array];
  [delegate tagPicker:self didSelectTags:array];
}

- (void)cancel
{
  delegate = [(WFTagPickerViewController *)self delegate];
  [delegate tagPickerDidCancel:self];
}

- (CGSize)preferredContentSize
{
  tableView = [(WFTagPickerViewController *)self tableView];
  [tableView contentSize];
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
  navigationItem = [(WFTagPickerViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismiss];
  navigationItem2 = [(WFTagPickerViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v5];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  view = [(WFTagPickerViewController *)self view];
  [view setBackgroundColor:whiteColor];
  tableView = [(WFTagPickerViewController *)self tableView];
  [tableView setBackgroundColor:whiteColor];

  v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  tableView2 = [(WFTagPickerViewController *)self tableView];
  [tableView2 setTableFooterView:v10];

  tableView3 = [(WFTagPickerViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"TagCell"];

  searchController = [(WFTagPickerViewController *)self searchController];
  searchBar = [searchController searchBar];
  tableView4 = [(WFTagPickerViewController *)self tableView];
  [tableView4 setTableHeaderView:searchBar];

  [(WFTagPickerViewController *)self setDefinesPresentationContext:1];
}

- (WFTagPickerViewController)initWithTitle:(id)title tags:(id)tags
{
  titleCopy = title;
  tagsCopy = tags;
  v17.receiver = self;
  v17.super_class = WFTagPickerViewController;
  v8 = [(WFTagPickerViewController *)&v17 initWithStyle:0];
  if (v8)
  {
    v9 = [tagsCopy copy];
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
    [(WFTagPickerViewController *)v8 setTitle:titleCopy];
    v15 = v8;
  }

  return v8;
}

@end