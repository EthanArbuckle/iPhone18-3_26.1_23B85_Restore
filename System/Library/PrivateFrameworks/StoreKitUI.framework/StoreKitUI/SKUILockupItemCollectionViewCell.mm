@interface SKUILockupItemCollectionViewCell
- (SKUILockupItemCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureForItem:(id)a3 clientContext:(id)a4;
@end

@implementation SKUILockupItemCollectionViewCell

- (SKUILockupItemCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupItemCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUILockupItemCollectionViewCell;
  v8 = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [[SKUILockupItemCellLayout alloc] initWithCollectionViewCell:v8];
    layout = v8->_layout;
    v8->_layout = v9;
  }

  return v8;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  layout = self->_layout;
  v9 = [v6 artistName];
  [(SKUILockupItemCellLayout *)layout setArtistName:v9];

  v10 = self->_layout;
  v11 = [v6 categoryName];
  [(SKUILockupItemCellLayout *)v10 setCategoryString:v11];

  v12 = self->_layout;
  v13 = SKUILockupItemCountString(v6, v7);
  [(SKUILockupItemCellLayout *)v12 setItemCountString:v13];

  -[SKUILockupItemCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [v6 numberOfUserRatings]);
  v14 = self->_layout;
  v15 = [v6 title];
  [(SKUILockupItemCellLayout *)v14 setTitle:v15];

  v16 = self->_layout;
  [v6 userRating];
  *&v18 = v17 / 5.0;
  [(SKUILockupItemCellLayout *)v16 setUserRating:v18];
  v19 = self->_layout;
  v20 = [v6 editorialBadge];
  [(SKUILockupItemCellLayout *)v19 setEditorialBadgeString:v20];

  if ([v6 itemKind] == 12)
  {
    v21 = self->_layout;
    v22 = [v6 primaryItemOffer];
    [(SKUIItemCellLayout *)v21 setItemOffer:v22];

    v23 = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
    [v23 setUniversal:{SKUIItemDeviceFamilyIsUniversal(objc_msgSend(v6, "deviceFamilies"))}];

    if ([v6 hasInAppPurchases])
    {
      v24 = [v7 valueForConfigurationKey:@"inappnote"];
    }

    else
    {
      v24 = 0;
    }

    [(SKUIItemCellLayout *)self->_layout setItemOfferNoticeString:v24];
  }

  else
  {
    if (v6 && !configureForItem_clientContext__sViewOffer)
    {
      v25 = [SKUIItemOffer alloc];
      if (v7)
      {
        [v7 localizedStringForKey:@"VIEW_BUTTON"];
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
    v24 = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
    [v24 setUniversal:0];
  }

  v29.receiver = self;
  v29.super_class = SKUILockupItemCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v29 configureForItem:v6 clientContext:v7];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupItemCollectionViewCell initWithFrame:]";
}

@end