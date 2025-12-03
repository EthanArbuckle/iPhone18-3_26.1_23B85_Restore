@interface SKUIItemRoomTableViewCell
- (SKUIItemRoomTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index;
@end

@implementation SKUIItemRoomTableViewCell

- (SKUIItemRoomTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIItemRoomTableViewCell initWithStyle:reuseIdentifier:];
  }

  v11.receiver = self;
  v11.super_class = SKUIItemRoomTableViewCell;
  v7 = [(SKUITableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = [[SKUIItemBrowseCellLayout alloc] initWithTableViewCell:v7];
    layout = v7->_layout;
    v7->_layout = v8;
  }

  return v7;
}

- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index
{
  itemCopy = item;
  contextCopy = context;
  layout = self->_layout;
  primaryItemOffer = [itemCopy primaryItemOffer];
  [(SKUIItemCellLayout *)layout setItemOffer:primaryItemOffer];

  itemOfferButton = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
  [itemOfferButton setUniversal:{SKUIItemDeviceFamilyIsUniversal(objc_msgSend(itemCopy, "deviceFamilies"))}];

  -[SKUIItemBrowseCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [itemCopy numberOfUserRatings]);
  v13 = self->_layout;
  title = [itemCopy title];
  [(SKUIItemBrowseCellLayout *)v13 setTitle:title];

  v15 = self->_layout;
  [itemCopy userRating];
  [(SKUIItemBrowseCellLayout *)v15 setUserRating:(v16 / 5.0)];
  if ([itemCopy hasInAppPurchases])
  {
    v17 = [contextCopy valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v17 = 0;
  }

  [(SKUIItemCellLayout *)self->_layout setItemOfferNoticeString:v17];
  itemKind = [itemCopy itemKind];
  v19 = self->_layout;
  if (itemKind == 17)
  {
    SKUILockupItemCountString(itemCopy, contextCopy);
  }

  else
  {
    [itemCopy categoryName];
  }
  v20 = ;
  [(SKUIItemBrowseCellLayout *)v19 setSubtitle:v20];

  v21.receiver = self;
  v21.super_class = SKUIItemRoomTableViewCell;
  [(SKUIItemTableViewCell *)&v21 configureForItem:itemCopy clientContext:contextCopy rowIndex:index];
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemRoomTableViewCell initWithStyle:reuseIdentifier:]";
}

@end