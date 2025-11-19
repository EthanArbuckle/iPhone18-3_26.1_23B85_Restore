@interface SKUIRedeemResultSimpleTableViewSection
- (SKUIRedeemResultSimpleTableViewSection)initWithView:(id)a3;
- (UIEdgeInsets)contentInsets;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5;
@end

@implementation SKUIRedeemResultSimpleTableViewSection

- (SKUIRedeemResultSimpleTableViewSection)initWithView:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"SKUIRRSTVC", a4}];
  if (!v5)
  {
    v5 = [[SKUIRedeemResultSimpleTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SKUIRRSTVC"];
    [(SKUIRedeemResultSimpleTableViewCell *)v5 setSelectionStyle:0];
  }

  [(SKUIRedeemResultSimpleTableViewCell *)v5 setChildContentInsets:self->_contentInsets.top, self->_contentInsets.left, self->_contentInsets.bottom, self->_contentInsets.right];
  [(SKUIRedeemResultSimpleTableViewCell *)v5 setChildContentView:self->_view];

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forIndexPath:(id)a5
{
  v7 = a4;
  v8 = [a3 backgroundColor];
  [v7 setBackgroundColor:v8];

  [(UIView *)self->_view setBackgroundColor:v8];
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