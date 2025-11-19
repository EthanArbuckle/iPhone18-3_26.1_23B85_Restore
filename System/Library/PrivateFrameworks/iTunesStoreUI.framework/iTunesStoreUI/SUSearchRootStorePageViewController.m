@interface SUSearchRootStorePageViewController
- (id)copyArchivableContext;
- (void)reloadCancelBarButtonItem;
- (void)resetNavigationItem:(id)a3;
- (void)setParentViewController:(id)a3;
- (void)setSection:(id)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUSearchRootStorePageViewController

- (void)reloadCancelBarButtonItem
{
  v3 = [(SUViewController *)self navigationItem];
  if ([-[SUNavigationItem leftBarButtonItem](v3 "leftBarButtonItem")] == 1397244748)
  {
    [(SUNavigationItem *)v3 setLeftBarButtonItem:0];
  }

  else if ([-[SUNavigationItem rightBarButtonItem](v3 "rightBarButtonItem")] == 1397244748)
  {
    [(SUNavigationItem *)v3 setRightBarButtonItem:0];
  }

  v4 = [(SUSearchFieldController *)[(SUStorePageViewController *)self searchFieldController] searchFieldConfiguration];
  if (!v4)
  {
    v4 = [-[UIViewController section](self "section")];
  }

  v5 = [(SUSearchFieldConfiguration *)v4 cancelString];
  if ([(NSString *)v5 length])
  {
    v6 = [[SUBarButtonItem alloc] initWithTitle:v5 style:2 target:0 action:sel_cancelTransientViewController_];
    [(SUUIAppearance *)[(SUClientInterface *)[(SUViewController *)self clientInterface] appearance] styleBarButtonItem:v6];
    [(SUBarButtonItem *)v6 setTag:1397244748];
    if ([(SUSearchFieldConfiguration *)v4 location]== 1)
    {
      [(SUNavigationItem *)v3 setRightBarButtonItem:v6];
    }

    else
    {
      [(SUNavigationItem *)v3 setLeftBarButtonItem:v6];
    }
  }
}

- (id)copyArchivableContext
{
  v4.receiver = self;
  v4.super_class = SUSearchRootStorePageViewController;
  v2 = [(SUStorePageViewController *)&v4 copyArchivableContext];
  [v2 setType:6];
  return v2;
}

- (void)resetNavigationItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUSearchRootStorePageViewController;
  [(SUStorePageViewController *)&v4 resetNavigationItem:a3];
  [(SUSearchRootStorePageViewController *)self reloadCancelBarButtonItem];
}

- (void)setParentViewController:(id)a3
{
  v5 = [(UIViewController *)self section];
  v6.receiver = self;
  v6.super_class = SUSearchRootStorePageViewController;
  [(SUStorePageViewController *)&v6 setParentViewController:a3];
  if (v5 != [(UIViewController *)self section])
  {
    [(SUSearchRootStorePageViewController *)self reloadCancelBarButtonItem];
  }
}

- (void)setSection:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUSearchRootStorePageViewController;
  [(SUStorePageViewController *)&v4 setSection:a3];
  [(SUSearchRootStorePageViewController *)self reloadCancelBarButtonItem];
  [(SUViewController *)self setTitle:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(UISearchBar *)[(SUSearchFieldController *)[(SUStorePageViewController *)self searchFieldController] searchBar] resignFirstResponder];
  v5.receiver = self;
  v5.super_class = SUSearchRootStorePageViewController;
  [(SUStorePageViewController *)&v5 viewWillDisappear:v3];
}

@end