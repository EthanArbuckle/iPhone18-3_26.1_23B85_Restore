@interface SKUIItemBrowseTableViewCell
- (SKUIItemBrowseTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForItem:(id)a3 clientContext:(id)a4 rowIndex:(int64_t)a5;
@end

@implementation SKUIItemBrowseTableViewCell

- (SKUIItemBrowseTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIItemBrowseTableViewCell initWithStyle:reuseIdentifier:];
  }

  v11.receiver = self;
  v11.super_class = SKUIItemBrowseTableViewCell;
  v7 = [(SKUITableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = [[SKUIItemBrowseCellLayout alloc] initWithTableViewCell:v7];
    layout = v7->_layout;
    v7->_layout = v8;
  }

  return v7;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4 rowIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  layout = self->_layout;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a5 + 1];
  [(SKUIItemBrowseCellLayout *)layout setIndexNumberString:v11];

  v12 = self->_layout;
  v13 = [v8 primaryItemOffer];
  [(SKUIItemCellLayout *)v12 setItemOffer:v13];

  v14 = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
  [v14 setUniversal:{SKUIItemDeviceFamilyIsUniversal(objc_msgSend(v8, "deviceFamilies"))}];

  -[SKUIItemBrowseCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [v8 numberOfUserRatings]);
  v15 = self->_layout;
  v16 = [v8 title];
  [(SKUIItemBrowseCellLayout *)v15 setTitle:v16];

  v17 = self->_layout;
  [v8 userRating];
  [(SKUIItemBrowseCellLayout *)v17 setUserRating:(v18 / 5.0)];
  if ([v8 hasInAppPurchases])
  {
    v19 = [v9 valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v19 = 0;
  }

  [(SKUIItemCellLayout *)self->_layout setItemOfferNoticeString:v19];
  v20 = [v8 itemKind];
  v21 = self->_layout;
  if (v20 == 17)
  {
    SKUILockupItemCountString(v8, v9);
  }

  else
  {
    [v8 categoryName];
  }
  v22 = ;
  [(SKUIItemBrowseCellLayout *)v21 setSubtitle:v22];

  v23.receiver = self;
  v23.super_class = SKUIItemBrowseTableViewCell;
  [(SKUIItemTableViewCell *)&v23 configureForItem:v8 clientContext:v9 rowIndex:a5];
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemBrowseTableViewCell initWithStyle:reuseIdentifier:]";
}

@end