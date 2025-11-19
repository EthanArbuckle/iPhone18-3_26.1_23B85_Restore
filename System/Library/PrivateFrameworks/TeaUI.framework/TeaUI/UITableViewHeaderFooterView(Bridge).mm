@interface UITableViewHeaderFooterView(Bridge)
- (double)ts_cellSeparatorInsets;
@end

@implementation UITableViewHeaderFooterView(Bridge)

- (double)ts_cellSeparatorInsets
{
  v2 = [a1 tableView];

  if (!v2)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v3 = [a1 tableView];
  [v3 separatorInset];
  v5 = v4;

  return v5;
}

@end