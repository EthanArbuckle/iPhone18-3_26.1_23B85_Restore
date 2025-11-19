@interface STTableWelcomeController
- (void)_contentSizeDidChangeFrom:(CGSize)a3 to:(CGSize)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setTableView:(id)a3;
- (void)setTableViewController:(id)a3;
@end

@implementation STTableWelcomeController

- (void)dealloc
{
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 removeObserver:self forKeyPath:@"contentSize" context:"KVOContextSTTableWelcomeController"];

  v4.receiver = self;
  v4.super_class = STTableWelcomeController;
  [(STTableWelcomeController *)&v4 dealloc];
}

- (void)setTableViewController:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(STTableWelcomeController *)a2 setTableViewController:?];
  }

  tableViewController = self->_tableViewController;
  self->_tableViewController = v5;
  v9 = v5;
  v7 = tableViewController;

  [(UITableViewController *)v7 willMoveToParentViewController:0];
  [(STTableWelcomeController *)self addChildViewController:v9];
  v8 = [(UITableViewController *)v9 tableView];
  [(STTableWelcomeController *)self setTableView:v8];

  [(UITableViewController *)v9 didMoveToParentViewController:self];
  [(UITableViewController *)v7 removeFromParentViewController];
}

- (void)setTableView:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 removeObserver:self forKeyPath:@"contentSize" context:"KVOContextSTTableWelcomeController"];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setScrollEnabled:0];
  v9.receiver = self;
  v9.super_class = STTableWelcomeController;
  [(OBTableWelcomeController *)&v9 setTableView:v4];
  v6 = [v4 heightAnchor];
  [v4 contentSize];
  v8 = [v6 constraintEqualToConstant:v7];

  [(STTableWelcomeController *)self setHeightConstraint:v8];
  [v8 setActive:1];
  [v4 addObserver:self forKeyPath:@"contentSize" options:3 context:"KVOContextSTTableWelcomeController"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  if (a6 == "KVOContextSTTableWelcomeController")
  {
    if ([a3 isEqualToString:@"contentSize"])
    {
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v12 = [MEMORY[0x277CBEB68] null];

      if (v11 == v12)
      {

        v11 = 0;
      }

      v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v14 = [MEMORY[0x277CBEB68] null];

      if (v13 == v14)
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
    [(STTableWelcomeController *)&v21 observeValueForKeyPath:@"contentSize" ofObject:a4 change:v10 context:a6];
  }
}

- (void)_contentSizeDidChangeFrom:(CGSize)a3 to:(CGSize)a4
{
  if (a3.height != a4.height)
  {
    height = a4.height;
    v7 = [(STTableWelcomeController *)self heightConstraint:a3.width];
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