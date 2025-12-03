@interface TPSDetailPane
- (TPSDetailPane)initWithFrame:(CGRect)frame;
- (id)preferenceValue;
- (void)layoutSubviews;
- (void)setPreferenceValue:(id)value;
@end

@implementation TPSDetailPane

- (TPSDetailPane)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

    textLabel = [(UITableViewCell *)v7->_tableViewCell textLabel];
    [textLabel setTextAlignment:1];
  }

  return v7;
}

- (void)layoutSubviews
{
  tableView = [(TPSDetailPane *)self tableView];
  [(TPSDetailPane *)self frame];
  [tableView setFrame:?];
  [tableView frame];
  v4 = v3;
  [tableView rectForSection:0];
  v6 = v4 - v5;
  [MEMORY[0x277D75658] defaultSize];
  [tableView setContentInset:{floor((v6 - v7) * 0.5), 0.0, 0.0, 0.0}];
}

- (id)preferenceValue
{
  tableViewCell = [(TPSDetailPane *)self tableViewCell];
  textLabel = [tableViewCell textLabel];
  text = [textLabel text];

  return text;
}

- (void)setPreferenceValue:(id)value
{
  valueCopy = value;
  tableViewCell = [(TPSDetailPane *)self tableViewCell];
  textLabel = [tableViewCell textLabel];
  [textLabel setText:valueCopy];
}

@end