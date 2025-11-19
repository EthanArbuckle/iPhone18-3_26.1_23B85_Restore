@interface PKExpiredTableViewController
- (PKExpiredTableViewController)initWithStyle:(int64_t)a3;
- (PKExpiredTableViewControllerCachingDelegate)cachingDelegate;
- (id)tableView:(id)a3 cellWithReuseIdentifier:(id)a4;
- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4;
- (void)viewDidLoad;
@end

@implementation PKExpiredTableViewController

- (PKExpiredTableViewController)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PKExpiredTableViewController;
  v3 = [(PKExpiredTableViewController *)&v7 initWithStyle:a3];
  if (v3)
  {
    v4 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

    if (IsAccessibilityCategory)
    {
      v3->_isAccessibilityCategory = 1;
    }

    objc_storeWeak(&v3->_cachingDelegate, 0);
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKExpiredTableViewController;
  [(PKExpiredTableViewController *)&v5 viewDidLoad];
  v3 = [(PKExpiredTableViewController *)self tableView];
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setPrefetchDataSource:self];
  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [(UITableView *)self->_tableView setAllowsSelection:1];
  [(UITableView *)self->_tableView setAllowsSelectionDuringEditing:1];
  [(UITableView *)self->_tableView setAllowsMultipleSelectionDuringEditing:1];
  [(UITableView *)self->_tableView setSeparatorStyle:1];
  [(PKExpiredTableViewController *)self setEditing:0];
}

- (id)tableView:(id)a3 cellWithReuseIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 dequeueReusableCellWithIdentifier:v5];
  if (!v6)
  {
    v6 = [[PKExpiredPassesTableViewCell alloc] initWithReuseIdentifier:v5];
    [(PKExpiredPassesTableViewCell *)v6 setShowsReorderControl:0];
  }

  return v6;
}

- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_cachingDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained prefetchItemsAtIndexPaths:v7];
  }
}

- (PKExpiredTableViewControllerCachingDelegate)cachingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cachingDelegate);

  return WeakRetained;
}

@end