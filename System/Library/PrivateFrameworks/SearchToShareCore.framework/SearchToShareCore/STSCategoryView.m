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
    v8 = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)v7 setBackgroundColor:v8];

    [(UITableView *)v3->_tableView setSeparatorStyle:0];
    [(UITableView *)v3->_tableView setCellLayoutMarginsFollowReadableWidth:1];
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v9 sizeToFit];
    [(UITableView *)v3->_tableView setTableFooterView:v9];
    [(UITableView *)v3->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STSCategoryView *)v3 addSubview:v3->_tableView];
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(UITableView *)v3->_tableView leadingAnchor];
    v12 = [(STSCategoryView *)v3 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v10 addObject:v13];

    v14 = [(UITableView *)v3->_tableView trailingAnchor];
    v15 = [(STSCategoryView *)v3 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v10 addObject:v16];

    v17 = [(UITableView *)v3->_tableView topAnchor];
    v18 = [(STSCategoryView *)v3 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v10 addObject:v19];

    v20 = [(UITableView *)v3->_tableView bottomAnchor];
    v21 = [(STSCategoryView *)v3 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v10 addObject:v22];

    [MEMORY[0x277CCAAD0] activateConstraints:v10];
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