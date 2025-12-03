@interface SKUIItemBrowseTableViewCell
- (SKUIItemBrowseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index;
@end

@implementation SKUIItemBrowseTableViewCell

- (SKUIItemBrowseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIItemBrowseTableViewCell initWithStyle:reuseIdentifier:];
  }

  v11.receiver = self;
  v11.super_class = SKUIItemBrowseTableViewCell;
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
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", index + 1];
  [(SKUIItemBrowseCellLayout *)layout setIndexNumberString:v11];

  v12 = self->_layout;
  primaryItemOffer = [itemCopy primaryItemOffer];
  [(SKUIItemCellLayout *)v12 setItemOffer:primaryItemOffer];

  itemOfferButton = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
  [itemOfferButton setUniversal:{SKUIItemDeviceFamilyIsUniversal(objc_msgSend(itemCopy, "deviceFamilies"))}];

  -[SKUIItemBrowseCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [itemCopy numberOfUserRatings]);
  v15 = self->_layout;
  title = [itemCopy title];
  [(SKUIItemBrowseCellLayout *)v15 setTitle:title];

  v17 = self->_layout;
  [itemCopy userRating];
  [(SKUIItemBrowseCellLayout *)v17 setUserRating:(v18 / 5.0)];
  if ([itemCopy hasInAppPurchases])
  {
    v19 = [contextCopy valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v19 = 0;
  }

  [(SKUIItemCellLayout *)self->_layout setItemOfferNoticeString:v19];
  itemKind = [itemCopy itemKind];
  v21 = self->_layout;
  if (itemKind == 17)
  {
    SKUILockupItemCountString(itemCopy, contextCopy);
  }

  else
  {
    [itemCopy categoryName];
  }
  v22 = ;
  [(SKUIItemBrowseCellLayout *)v21 setSubtitle:v22];

  v23.receiver = self;
  v23.super_class = SKUIItemBrowseTableViewCell;
  [(SKUIItemTableViewCell *)&v23 configureForItem:itemCopy clientContext:contextCopy rowIndex:index];
}

- (void)initWithStyle:reuseIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemBrowseTableViewCell initWithStyle:reuseIdentifier:]";
}

@end