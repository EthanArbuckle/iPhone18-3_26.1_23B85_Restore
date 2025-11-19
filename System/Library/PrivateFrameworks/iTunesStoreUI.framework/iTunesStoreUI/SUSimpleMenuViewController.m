@interface SUSimpleMenuViewController
- (SUSimpleMenuViewController)initWithTitles:(id)a3;
- (void)_cancelAction:(id)a3;
- (void)dealloc;
- (void)reloadContentSizeForViewInPopover;
- (void)setCancelButtonTitle:(id)a3;
- (void)setTitles:(id)a3;
@end

@implementation SUSimpleMenuViewController

- (SUSimpleMenuViewController)initWithTitles:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUSimpleMenuViewController;
  v4 = [(SUMenuViewController *)&v6 init];
  if (v4)
  {
    v4->_titles = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUSimpleMenuViewController;
  [(SUMenuViewController *)&v3 dealloc];
}

- (void)setCancelButtonTitle:(id)a3
{
  cancelButtonTitle = self->_cancelButtonTitle;
  if (cancelButtonTitle != a3)
  {

    self->_cancelButtonTitle = [a3 copy];
    v6 = [(SUViewController *)self navigationItem];
    v7 = v6;
    if (self->_cancelButtonTitle)
    {
      v8 = [[SUBarButtonItem alloc] initWithTitle:self->_cancelButtonTitle style:0 target:self action:sel__cancelAction_];
      [(SUUIAppearance *)[(SUClientInterface *)[(SUViewController *)self clientInterface] appearance] styleBarButtonItem:v8];
      [(SUNavigationItem *)v7 setLeftBarButtonItem:v8];
    }

    else
    {

      [(SUNavigationItem *)v6 setLeftBarButtonItem:0];
    }
  }
}

- (void)setTitles:(id)a3
{
  titles = self->_titles;
  if (titles != a3)
  {

    self->_titles = [a3 copy];

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

- (void)_cancelAction:(id)a3
{
  if (![(SUMenuViewController *)self _sendDidCancel])
  {

    [(UIViewController *)self dismissAnimated:1];
  }
}

@end