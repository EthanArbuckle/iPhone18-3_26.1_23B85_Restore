@interface _UITableViewDragItemContext
- (UITableView)tableView;
- (_UITableViewDragItemContext)initWithIndexPath:(id)path forTableView:(id)view;
@end

@implementation _UITableViewDragItemContext

- (_UITableViewDragItemContext)initWithIndexPath:(id)path forTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = _UITableViewDragItemContext;
  v9 = [(_UITableViewDragItemContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_tableView, viewCopy);
    objc_storeStrong(&v10->_indexPath, path);
  }

  return v10;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end