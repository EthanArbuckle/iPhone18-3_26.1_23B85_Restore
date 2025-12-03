@interface _UITableViewDiffableDataSource
- (UITableView)tableView;
- (_UITableViewDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider;
- (_UITableViewDiffableDataSource)initWithTableView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler;
@end

@implementation _UITableViewDiffableDataSource

- (_UITableViewDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = _UITableViewDiffableDataSource;
  return [(_UIDiffableDataSource *)&v5 initWithTableView:view cellProvider:provider];
}

- (UITableView)tableView
{
  dsImpl = [(_UIDiffableDataSource *)self dsImpl];
  tableView = [dsImpl tableView];

  return tableView;
}

- (_UITableViewDiffableDataSource)initWithTableView:(id)view reuseIdentifierProvider:(id)provider cellConfigurationHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = _UITableViewDiffableDataSource;
  return [(_UIDiffableDataSource *)&v6 initWithTableView:view reuseIdentifierProvider:provider cellConfigurationHandler:handler];
}

@end