@interface PKExpiredTableViewController
- (PKExpiredTableViewController)initWithStyle:(int64_t)style;
- (PKExpiredTableViewControllerCachingDelegate)cachingDelegate;
- (id)tableView:(id)view cellWithReuseIdentifier:(id)identifier;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
- (void)viewDidLoad;
@end

@implementation PKExpiredTableViewController

- (PKExpiredTableViewController)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = PKExpiredTableViewController;
  v3 = [(PKExpiredTableViewController *)&v7 initWithStyle:style];
  if (v3)
  {
    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  tableView = [(PKExpiredTableViewController *)self tableView];
  tableView = self->_tableView;
  self->_tableView = tableView;

  [(UITableView *)self->_tableView setPrefetchDataSource:self];
  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [(UITableView *)self->_tableView setAllowsSelection:1];
  [(UITableView *)self->_tableView setAllowsSelectionDuringEditing:1];
  [(UITableView *)self->_tableView setAllowsMultipleSelectionDuringEditing:1];
  [(UITableView *)self->_tableView setSeparatorStyle:1];
  [(PKExpiredTableViewController *)self setEditing:0];
}

- (id)tableView:(id)view cellWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [view dequeueReusableCellWithIdentifier:identifierCopy];
  if (!v6)
  {
    v6 = [[PKExpiredPassesTableViewCell alloc] initWithReuseIdentifier:identifierCopy];
    [(PKExpiredPassesTableViewCell *)v6 setShowsReorderControl:0];
  }

  return v6;
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  WeakRetained = objc_loadWeakRetained(&self->_cachingDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained prefetchItemsAtIndexPaths:pathsCopy];
  }
}

- (PKExpiredTableViewControllerCachingDelegate)cachingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cachingDelegate);

  return WeakRetained;
}

@end