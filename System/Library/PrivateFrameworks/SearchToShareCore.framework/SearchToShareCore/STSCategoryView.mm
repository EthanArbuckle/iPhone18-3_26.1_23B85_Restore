@interface STSCategoryView
- (CGPoint)footerOffset;
- (STSCategoryView)init;
- (UIEdgeInsets)contentInset;
@end

@implementation STSCategoryView

- (STSCategoryView)init
{
  v24.receiver = self;
  v24.super_class = STSCategoryView;
  v2 = [(STSCategoryView *)&v24 init];
  v3 = v2;
  if (v2)
  {
    [(STSCategoryView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [v4 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    tableView = v3->_tableView;
    v3->_tableView = v5;

    v7 = v3->_tableView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)v7 setBackgroundColor:clearColor];

    [(UITableView *)v3->_tableView setSeparatorStyle:0];
    [(UITableView *)v3->_tableView setCellLayoutMarginsFollowReadableWidth:1];
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v9 sizeToFit];
    [(UITableView *)v3->_tableView setTableFooterView:v9];
    [(UITableView *)v3->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STSCategoryView *)v3 addSubview:v3->_tableView];
    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(UITableView *)v3->_tableView leadingAnchor];
    leadingAnchor2 = [(STSCategoryView *)v3 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v13];

    trailingAnchor = [(UITableView *)v3->_tableView trailingAnchor];
    trailingAnchor2 = [(STSCategoryView *)v3 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v16];

    topAnchor = [(UITableView *)v3->_tableView topAnchor];
    topAnchor2 = [(STSCategoryView *)v3 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v19];

    bottomAnchor = [(UITableView *)v3->_tableView bottomAnchor];
    bottomAnchor2 = [(STSCategoryView *)v3 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v22];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v3;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)footerOffset
{
  x = self->_footerOffset.x;
  y = self->_footerOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end