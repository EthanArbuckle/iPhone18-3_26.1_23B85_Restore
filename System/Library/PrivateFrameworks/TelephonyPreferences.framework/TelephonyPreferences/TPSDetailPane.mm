@interface TPSDetailPane
- (TPSDetailPane)initWithFrame:(CGRect)a3;
- (id)preferenceValue;
- (void)layoutSubviews;
- (void)setPreferenceValue:(id)a3;
@end

@implementation TPSDetailPane

- (TPSDetailPane)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = TPSDetailPane;
  v7 = [(PSEditingPane *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{x, y, width, height}];
    tableView = v7->_tableView;
    v7->_tableView = v8;

    [(UITableView *)v7->_tableView setAllowsSelection:0];
    [(UITableView *)v7->_tableView setDataSource:v7];
    [(UITableView *)v7->_tableView setScrollEnabled:0];
    [(UITableView *)v7->_tableView reloadData];
    [(TPSDetailPane *)v7 addSubview:v7->_tableView];
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"TPSDetailTableViewCell"];
    tableViewCell = v7->_tableViewCell;
    v7->_tableViewCell = v10;

    v12 = [(UITableViewCell *)v7->_tableViewCell textLabel];
    [v12 setTextAlignment:1];
  }

  return v7;
}

- (void)layoutSubviews
{
  v8 = [(TPSDetailPane *)self tableView];
  [(TPSDetailPane *)self frame];
  [v8 setFrame:?];
  [v8 frame];
  v4 = v3;
  [v8 rectForSection:0];
  v6 = v4 - v5;
  [MEMORY[0x277D75658] defaultSize];
  [v8 setContentInset:{floor((v6 - v7) * 0.5), 0.0, 0.0, 0.0}];
}

- (id)preferenceValue
{
  v2 = [(TPSDetailPane *)self tableViewCell];
  v3 = [v2 textLabel];
  v4 = [v3 text];

  return v4;
}

- (void)setPreferenceValue:(id)a3
{
  v4 = a3;
  v6 = [(TPSDetailPane *)self tableViewCell];
  v5 = [v6 textLabel];
  [v5 setText:v4];
}

@end