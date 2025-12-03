@interface STTableWelcomeController
- (void)_contentSizeDidChangeFrom:(CGSize)from to:(CGSize)to;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setTableView:(id)view;
- (void)setTableViewController:(id)controller;
@end

@implementation STTableWelcomeController

- (void)dealloc
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView removeObserver:self forKeyPath:@"contentSize" context:"KVOContextSTTableWelcomeController"];

  v4.receiver = self;
  v4.super_class = STTableWelcomeController;
  [(STTableWelcomeController *)&v4 dealloc];
}

- (void)setTableViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [(STTableWelcomeController *)a2 setTableViewController:?];
  }

  tableViewController = self->_tableViewController;
  self->_tableViewController = controllerCopy;
  v9 = controllerCopy;
  v7 = tableViewController;

  [(UITableViewController *)v7 willMoveToParentViewController:0];
  [(STTableWelcomeController *)self addChildViewController:v9];
  tableView = [(UITableViewController *)v9 tableView];
  [(STTableWelcomeController *)self setTableView:tableView];

  [(UITableViewController *)v9 didMoveToParentViewController:self];
  [(UITableViewController *)v7 removeFromParentViewController];
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView removeObserver:self forKeyPath:@"contentSize" context:"KVOContextSTTableWelcomeController"];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy setScrollEnabled:0];
  v9.receiver = self;
  v9.super_class = STTableWelcomeController;
  [(OBTableWelcomeController *)&v9 setTableView:viewCopy];
  heightAnchor = [viewCopy heightAnchor];
  [viewCopy contentSize];
  v8 = [heightAnchor constraintEqualToConstant:v7];

  [(STTableWelcomeController *)self setHeightConstraint:v8];
  [v8 setActive:1];
  [viewCopy addObserver:self forKeyPath:@"contentSize" options:3 context:"KVOContextSTTableWelcomeController"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if (context == "KVOContextSTTableWelcomeController")
  {
    if ([path isEqualToString:@"contentSize"])
    {
      v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      null = [MEMORY[0x277CBEB68] null];

      if (v11 == null)
      {

        v11 = 0;
      }

      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      null2 = [MEMORY[0x277CBEB68] null];

      if (v13 == null2)
      {

        v13 = 0;
      }

      [v11 CGSizeValue];
      v16 = v15;
      v18 = v17;
      [v13 CGSizeValue];
      [(STTableWelcomeController *)self _contentSizeDidChangeFrom:v16 to:v18, v19, v20];
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = STTableWelcomeController;
    [(STTableWelcomeController *)&v21 observeValueForKeyPath:@"contentSize" ofObject:object change:changeCopy context:context];
  }
}

- (void)_contentSizeDidChangeFrom:(CGSize)from to:(CGSize)to
{
  if (from.height != to.height)
  {
    height = to.height;
    v7 = [(STTableWelcomeController *)self heightConstraint:from.width];
    [v7 setConstant:height];

    [(STTableWelcomeController *)self performSelector:sel_viewDidLayoutSubviews withObject:0 afterDelay:0.0];
  }
}

- (void)setTableViewController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STTableWelcomeController.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"tableViewController != nil"}];
}

@end