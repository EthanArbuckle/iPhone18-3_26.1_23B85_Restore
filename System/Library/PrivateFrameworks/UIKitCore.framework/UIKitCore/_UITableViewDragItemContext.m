@interface _UITableViewDragItemContext
- (UITableView)tableView;
- (_UITableViewDragItemContext)initWithIndexPath:(id)a3 forTableView:(id)a4;
@end

@implementation _UITableViewDragItemContext

- (_UITableViewDragItemContext)initWithIndexPath:(id)a3 forTableView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UITableViewDragItemContext;
  v9 = [(_UITableViewDragItemContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_tableView, v8);
    objc_storeStrong(&v10->_indexPath, a3);
  }

  return v10;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end