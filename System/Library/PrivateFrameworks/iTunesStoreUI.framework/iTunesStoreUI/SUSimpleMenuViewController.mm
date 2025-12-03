@interface SUSimpleMenuViewController
- (SUSimpleMenuViewController)initWithTitles:(id)titles;
- (void)_cancelAction:(id)action;
- (void)dealloc;
- (void)reloadContentSizeForViewInPopover;
- (void)setCancelButtonTitle:(id)title;
- (void)setTitles:(id)titles;
@end

@implementation SUSimpleMenuViewController

- (SUSimpleMenuViewController)initWithTitles:(id)titles
{
  v6.receiver = self;
  v6.super_class = SUSimpleMenuViewController;
  v4 = [(SUMenuViewController *)&v6 init];
  if (v4)
  {
    v4->_titles = [titles copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSimpleMenuViewController;
  [(SUMenuViewController *)&v3 dealloc];
}

- (void)setCancelButtonTitle:(id)title
{
  cancelButtonTitle = self->_cancelButtonTitle;
  if (cancelButtonTitle != title)
  {

    self->_cancelButtonTitle = [title copy];
    navigationItem = [(SUViewController *)self navigationItem];
    v7 = navigationItem;
    if (self->_cancelButtonTitle)
    {
      v8 = [[SUBarButtonItem alloc] initWithTitle:self->_cancelButtonTitle style:0 target:self action:sel__cancelAction_];
      [(SUUIAppearance *)[(SUClientInterface *)[(SUViewController *)self clientInterface] appearance] styleBarButtonItem:v8];
      [(SUNavigationItem *)v7 setLeftBarButtonItem:v8];
    }

    else
    {

      [(SUNavigationItem *)navigationItem setLeftBarButtonItem:0];
    }
  }
}

- (void)setTitles:(id)titles
{
  titles = self->_titles;
  if (titles != titles)
  {

    self->_titles = [titles copy];

    [(SUMenuViewController *)self reload];
  }
}

- (void)reloadContentSizeForViewInPopover
{
  [(SUSimpleMenuViewController *)self preferredContentSize];
  v4 = v3;
  v5 = [(NSArray *)self->_titles count];
  [-[SUMenuViewController _tableView](self "_tableView")];

  [(SUSimpleMenuViewController *)self setPreferredContentSize:v4, v6 * v5];
}

- (void)_cancelAction:(id)action
{
  if (![(SUMenuViewController *)self _sendDidCancel])
  {

    [(UIViewController *)self dismissAnimated:1];
  }
}

@end