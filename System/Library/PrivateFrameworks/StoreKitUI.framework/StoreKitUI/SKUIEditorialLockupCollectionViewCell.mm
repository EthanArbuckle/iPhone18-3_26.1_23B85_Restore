@interface SKUIEditorialLockupCollectionViewCell
- (SKUIEditorialLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureForItem:(id)item clientContext:(id)context;
@end

@implementation SKUIEditorialLockupCollectionViewCell

- (SKUIEditorialLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialLockupCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIEditorialLockupCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [(SKUICellLayout *)[SKUIEditorialLockupCellLayout alloc] initWithCollectionViewCell:height];
    layout = height->_layout;
    height->_layout = v9;
  }

  return height;
}

- (void)configureForItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  lockupCellLayout = [(SKUIEditorialLockupCellLayout *)self->_layout lockupCellLayout];
  categoryName = [itemCopy categoryName];
  [lockupCellLayout setCategoryString:categoryName];

  v10 = SKUILockupItemCountString(itemCopy, contextCopy);
  [lockupCellLayout setItemCountString:v10];

  [lockupCellLayout setNumberOfUserRatings:{objc_msgSend(itemCopy, "numberOfUserRatings")}];
  title = [itemCopy title];
  [lockupCellLayout setTitle:title];

  [itemCopy userRating];
  *&v13 = v12 / 5.0;
  [lockupCellLayout setUserRating:v13];
  if (!itemCopy)
  {
    [(SKUIEditorialLockupCellLayout *)self->_layout setItemOffer:0];
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if ([itemCopy itemKind] != 12)
  {
    if (!configureForItem_clientContext__sViewOffer_1)
    {
      v15 = [SKUIItemOffer alloc];
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"VIEW_BUTTON"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"VIEW_BUTTON" inBundles:0];
      }
      v19 = ;
      v20 = [(SKUIItemOffer *)v15 initWithButtonText:v19];
      v21 = configureForItem_clientContext__sViewOffer_1;
      configureForItem_clientContext__sViewOffer_1 = v20;
    }

    [(SKUIEditorialLockupCellLayout *)self->_layout setItemOffer:?];
    itemOfferButton = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
    [itemOfferButton setUniversal:0];

    goto LABEL_14;
  }

  if ([itemCopy hasInAppPurchases])
  {
    v14 = [contextCopy valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v14 = 0;
  }

  layout = self->_layout;
  primaryItemOffer = [itemCopy primaryItemOffer];
  [(SKUIEditorialLockupCellLayout *)layout setItemOffer:primaryItemOffer];

  itemOfferButton2 = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
  [itemOfferButton2 setUniversal:{SKUIItemDeviceFamilyIsUniversal(objc_msgSend(itemCopy, "deviceFamilies"))}];

LABEL_15:
  [(SKUIEditorialLockupCellLayout *)self->_layout setItemOfferNoticeString:v14];
  v23.receiver = self;
  v23.super_class = SKUIEditorialLockupCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v23 configureForItem:itemCopy clientContext:contextCopy];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialLockupCollectionViewCell initWithFrame:]";
}

@end