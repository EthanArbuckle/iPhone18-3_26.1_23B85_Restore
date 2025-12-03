@interface SKUILockupItemTableViewCell
- (SKUILockupItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index;
@end

@implementation SKUILockupItemTableViewCell

- (SKUILockupItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupItemTableViewCell initWithStyle:reuseIdentifier:];
  }

  v11.receiver = self;
  v11.super_class = SKUILockupItemTableViewCell;
  v7 = [(SKUITableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = [[SKUILockupItemCellLayout alloc] initWithTableViewCell:v7];
    layout = v7->_layout;
    v7->_layout = v8;
  }

  return v7;
}

- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index
{
  layout = self->_layout;
  contextCopy = context;
  itemCopy = item;
  categoryName = [itemCopy categoryName];
  [(SKUILockupItemCellLayout *)layout setCategoryString:categoryName];

  v12 = self->_layout;
  v13 = SKUILockupItemCountString(itemCopy, contextCopy);
  [(SKUILockupItemCellLayout *)v12 setItemCountString:v13];

  v14 = self->_layout;
  primaryItemOffer = [itemCopy primaryItemOffer];
  [(SKUIItemCellLayout *)v14 setItemOffer:primaryItemOffer];

  -[SKUILockupItemCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [itemCopy numberOfUserRatings]);
  v16 = self->_layout;
  title = [itemCopy title];
  [(SKUILockupItemCellLayout *)v16 setTitle:title];

  v18 = self->_layout;
  [itemCopy userRating];
  [(SKUILockupItemCellLayout *)v18 setUserRating:?];
  v19.receiver = self;
  v19.super_class = SKUILockupItemTableViewCell;
  [(SKUIItemTableViewCell *)&v19 configureForItem:itemCopy clientContext:contextCopy rowIndex:index];
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupItemTableViewCell initWithStyle:reuseIdentifier:]";
}

@end