@interface SKUILockupItemTableViewCell
- (SKUILockupItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForItem:(id)a3 clientContext:(id)a4 rowIndex:(int64_t)a5;
@end

@implementation SKUILockupItemTableViewCell

- (SKUILockupItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupItemTableViewCell initWithStyle:reuseIdentifier:];
  }

  v11.receiver = self;
  v11.super_class = SKUILockupItemTableViewCell;
  v7 = [(SKUITableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = [[SKUILockupItemCellLayout alloc] initWithTableViewCell:v7];
    layout = v7->_layout;
    v7->_layout = v8;
  }

  return v7;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4 rowIndex:(int64_t)a5
{
  layout = self->_layout;
  v9 = a4;
  v10 = a3;
  v11 = [v10 categoryName];
  [(SKUILockupItemCellLayout *)layout setCategoryString:v11];

  v12 = self->_layout;
  v13 = SKUILockupItemCountString(v10, v9);
  [(SKUILockupItemCellLayout *)v12 setItemCountString:v13];

  v14 = self->_layout;
  v15 = [v10 primaryItemOffer];
  [(SKUIItemCellLayout *)v14 setItemOffer:v15];

  -[SKUILockupItemCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [v10 numberOfUserRatings]);
  v16 = self->_layout;
  v17 = [v10 title];
  [(SKUILockupItemCellLayout *)v16 setTitle:v17];

  v18 = self->_layout;
  [v10 userRating];
  [(SKUILockupItemCellLayout *)v18 setUserRating:?];
  v19.receiver = self;
  v19.super_class = SKUILockupItemTableViewCell;
  [(SKUIItemTableViewCell *)&v19 configureForItem:v10 clientContext:v9 rowIndex:a5];
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupItemTableViewCell initWithStyle:reuseIdentifier:]";
}

@end