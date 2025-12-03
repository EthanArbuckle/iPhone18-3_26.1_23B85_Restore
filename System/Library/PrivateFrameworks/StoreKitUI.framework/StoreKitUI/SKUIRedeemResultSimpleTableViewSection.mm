@interface SKUIRedeemResultSimpleTableViewSection
- (SKUIRedeemResultSimpleTableViewSection)initWithView:(id)view;
- (UIEdgeInsets)contentInsets;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path;
@end

@implementation SKUIRedeemResultSimpleTableViewSection

- (SKUIRedeemResultSimpleTableViewSection)initWithView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemResultSimpleTableViewSection initWithView:];
  }

  v9.receiver = self;
  v9.super_class = SKUIRedeemResultSimpleTableViewSection;
  v6 = [(SKUIRedeemResultSimpleTableViewSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
  }

  return v7;
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"SKUIRRSTVC", path}];
  if (!v5)
  {
    v5 = [[SKUIRedeemResultSimpleTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SKUIRRSTVC"];
    [(SKUIRedeemResultSimpleTableViewCell *)v5 setSelectionStyle:0];
  }

  [(SKUIRedeemResultSimpleTableViewCell *)v5 setChildContentInsets:self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right];
  [(SKUIRedeemResultSimpleTableViewCell *)v5 setChildContentView:self->_view];

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  backgroundColor = [view backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];

  [(UIView *)self->_view setBackgroundColor:backgroundColor];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithView:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemResultSimpleTableViewSection initWithView:]";
}

@end