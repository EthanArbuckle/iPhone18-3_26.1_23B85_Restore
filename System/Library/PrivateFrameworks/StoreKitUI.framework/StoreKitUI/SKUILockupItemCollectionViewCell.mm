@interface SKUILockupItemCollectionViewCell
- (SKUILockupItemCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureForItem:(id)item clientContext:(id)context;
@end

@implementation SKUILockupItemCollectionViewCell

- (SKUILockupItemCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupItemCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUILockupItemCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [[SKUILockupItemCellLayout alloc] initWithCollectionViewCell:height];
    layout = height->_layout;
    height->_layout = v9;
  }

  return height;
}

- (void)configureForItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  layout = self->_layout;
  artistName = [itemCopy artistName];
  [(SKUILockupItemCellLayout *)layout setArtistName:artistName];

  v10 = self->_layout;
  categoryName = [itemCopy categoryName];
  [(SKUILockupItemCellLayout *)v10 setCategoryString:categoryName];

  v12 = self->_layout;
  v13 = SKUILockupItemCountString(itemCopy, contextCopy);
  [(SKUILockupItemCellLayout *)v12 setItemCountString:v13];

  -[SKUILockupItemCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [itemCopy numberOfUserRatings]);
  v14 = self->_layout;
  title = [itemCopy title];
  [(SKUILockupItemCellLayout *)v14 setTitle:title];

  v16 = self->_layout;
  [itemCopy userRating];
  *&v18 = v17 / 5.0;
  [(SKUILockupItemCellLayout *)v16 setUserRating:v18];
  v19 = self->_layout;
  editorialBadge = [itemCopy editorialBadge];
  [(SKUILockupItemCellLayout *)v19 setEditorialBadgeString:editorialBadge];

  if ([itemCopy itemKind] == 12)
  {
    v21 = self->_layout;
    primaryItemOffer = [itemCopy primaryItemOffer];
    [(SKUIItemCellLayout *)v21 setItemOffer:primaryItemOffer];

    itemOfferButton = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
    [itemOfferButton setUniversal:{SKUIItemDeviceFamilyIsUniversal(objc_msgSend(itemCopy, "deviceFamilies"))}];

    if ([itemCopy hasInAppPurchases])
    {
      itemOfferButton2 = [contextCopy valueForConfigurationKey:@"inappnote"];
    }

    else
    {
      itemOfferButton2 = 0;
    }

    [(SKUIItemCellLayout *)self->_layout setItemOfferNoticeString:itemOfferButton2];
  }

  else
  {
    if (itemCopy && !configureForItem_clientContext__sViewOffer)
    {
      v25 = [SKUIItemOffer alloc];
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"VIEW_BUTTON"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"VIEW_BUTTON" inBundles:0];
      }
      v26 = ;
      v27 = [(SKUIItemOffer *)v25 initWithButtonText:v26];
      v28 = configureForItem_clientContext__sViewOffer;
      configureForItem_clientContext__sViewOffer = v27;
    }

    [(SKUIItemCellLayout *)self->_layout setItemOffer:?];
    [(SKUIItemCellLayout *)self->_layout setItemOfferNoticeString:0];
    itemOfferButton2 = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
    [itemOfferButton2 setUniversal:0];
  }

  v29.receiver = self;
  v29.super_class = SKUILockupItemCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v29 configureForItem:itemCopy clientContext:contextCopy];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupItemCollectionViewCell initWithFrame:]";
}

@end