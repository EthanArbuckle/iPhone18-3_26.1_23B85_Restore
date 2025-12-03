@interface SKUIRedeemResultLinksTableViewSection
- (SKUIRedeemResultLinksTableViewSection)initWithLinks:(id)links;
- (UIEdgeInsets)contentInsets;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path;
@end

@implementation SKUIRedeemResultLinksTableViewSection

- (SKUIRedeemResultLinksTableViewSection)initWithLinks:(id)links
{
  linksCopy = links;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemResultLinksTableViewSection initWithLinks:];
  }

  v9.receiver = self;
  v9.super_class = SKUIRedeemResultLinksTableViewSection;
  v5 = [(SKUIRedeemResultLinksTableViewSection *)&v9 init];
  if (v5)
  {
    v6 = [linksCopy copy];
    links = v5->_links;
    v5->_links = v6;
  }

  return v5;
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SKUIRRLTVC"];
  if (!v7)
  {
    v7 = [[SKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"SKUIRRLTVC"];
    [(SKUITableViewCell *)v7 setAccessoryType:1];
    textLabel = [(SKUITableViewCell *)v7 textLabel];
    v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [textLabel setFont:v9];
  }

  v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [(SKUITableViewCell *)v7 setTopBorderColor:v10];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SKUITableViewCell *)v7 setBorderPaddingLeft:30.0];
    [(SKUITableViewCell *)v7 setTextLabelInsets:0.0, 15.0, 0.0, -15.0];
  }

  v13 = [(NSArray *)self->_links count];
  if ([pathCopy row] == v13 - 1)
  {
    [(SKUITableViewCell *)v7 setBottomBorderColor:v10];
  }

  v14 = -[NSArray objectAtIndex:](self->_links, "objectAtIndex:", [pathCopy row]);
  textLabel2 = [(SKUITableViewCell *)v7 textLabel];
  title = [v14 title];
  [textLabel2 setText:title];

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  backgroundColor = [view backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];
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

- (void)initWithLinks:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemResultLinksTableViewSection initWithLinks:]";
}

@end