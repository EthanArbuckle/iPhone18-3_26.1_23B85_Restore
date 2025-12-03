@interface UITableViewHeaderFooterView(Bridge)
- (double)ts_cellSeparatorInsets;
@end

@implementation UITableViewHeaderFooterView(Bridge)

- (double)ts_cellSeparatorInsets
{
  tableView = [self tableView];

  if (!tableView)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  tableView2 = [self tableView];
  [tableView2 separatorInset];
  v5 = v4;

  return v5;
}

@end