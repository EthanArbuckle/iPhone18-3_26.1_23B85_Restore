@interface SUSearchRootStorePageViewController
- (id)copyArchivableContext;
- (void)reloadCancelBarButtonItem;
- (void)resetNavigationItem:(id)item;
- (void)setParentViewController:(id)controller;
- (void)setSection:(id)section;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUSearchRootStorePageViewController

- (void)reloadCancelBarButtonItem
{
  navigationItem = [(SUViewController *)self navigationItem];
  if ([-[SUNavigationItem leftBarButtonItem](navigationItem "leftBarButtonItem")] == 1397244748)
  {
    [(SUNavigationItem *)navigationItem setLeftBarButtonItem:0];
  }

  else if ([-[SUNavigationItem rightBarButtonItem](navigationItem "rightBarButtonItem")] == 1397244748)
  {
    [(SUNavigationItem *)navigationItem setRightBarButtonItem:0];
  }

  searchFieldConfiguration = [(SUSearchFieldController *)[(SUStorePageViewController *)self searchFieldController] searchFieldConfiguration];
  if (!searchFieldConfiguration)
  {
    searchFieldConfiguration = [-[UIViewController section](self "section")];
  }

  cancelString = [(SUSearchFieldConfiguration *)searchFieldConfiguration cancelString];
  if ([(NSString *)cancelString length])
  {
    v6 = [[SUBarButtonItem alloc] initWithTitle:cancelString style:2 target:0 action:sel_cancelTransientViewController_];
    [(SUUIAppearance *)[(SUClientInterface *)[(SUViewController *)self clientInterface] appearance] styleBarButtonItem:v6];
    [(SUBarButtonItem *)v6 setTag:1397244748];
    if ([(SUSearchFieldConfiguration *)searchFieldConfiguration location]== 1)
    {
      [(SUNavigationItem *)navigationItem setRightBarButtonItem:v6];
    }

    else
    {
      [(SUNavigationItem *)navigationItem setLeftBarButtonItem:v6];
    }
  }
}

- (id)copyArchivableContext
{
  v4.receiver = self;
  v4.super_class = SUSearchRootStorePageViewController;
  copyArchivableContext = [(SUStorePageViewController *)&v4 copyArchivableContext];
  [copyArchivableContext setType:6];
  return copyArchivableContext;
}

- (void)resetNavigationItem:(id)item
{
  v4.receiver = self;
  v4.super_class = SUSearchRootStorePageViewController;
  [(SUStorePageViewController *)&v4 resetNavigationItem:item];
  [(SUSearchRootStorePageViewController *)self reloadCancelBarButtonItem];
}

- (void)setParentViewController:(id)controller
{
  section = [(UIViewController *)self section];
  v6.receiver = self;
  v6.super_class = SUSearchRootStorePageViewController;
  [(SUStorePageViewController *)&v6 setParentViewController:controller];
  if (section != [(UIViewController *)self section])
  {
    [(SUSearchRootStorePageViewController *)self reloadCancelBarButtonItem];
  }
}

- (void)setSection:(id)section
{
  v4.receiver = self;
  v4.super_class = SUSearchRootStorePageViewController;
  [(SUStorePageViewController *)&v4 setSection:section];
  [(SUSearchRootStorePageViewController *)self reloadCancelBarButtonItem];
  [(SUViewController *)self setTitle:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(UISearchBar *)[(SUSearchFieldController *)[(SUStorePageViewController *)self searchFieldController] searchBar] resignFirstResponder];
  v5.receiver = self;
  v5.super_class = SUSearchRootStorePageViewController;
  [(SUStorePageViewController *)&v5 viewWillDisappear:disappearCopy];
}

@end