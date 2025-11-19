@interface SKUIEditorialLockupCollectionViewCell
- (SKUIEditorialLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureForItem:(id)a3 clientContext:(id)a4;
@end

@implementation SKUIEditorialLockupCollectionViewCell

- (SKUIEditorialLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIEditorialLockupCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUIEditorialLockupCollectionViewCell;
  v8 = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [(SKUICellLayout *)[SKUIEditorialLockupCellLayout alloc] initWithCollectionViewCell:v8];
    layout = v8->_layout;
    v8->_layout = v9;
  }

  return v8;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIEditorialLockupCellLayout *)self->_layout lockupCellLayout];
  v9 = [v6 categoryName];
  [v8 setCategoryString:v9];

  v10 = SKUILockupItemCountString(v6, v7);
  [v8 setItemCountString:v10];

  [v8 setNumberOfUserRatings:{objc_msgSend(v6, "numberOfUserRatings")}];
  v11 = [v6 title];
  [v8 setTitle:v11];

  [v6 userRating];
  *&v13 = v12 / 5.0;
  [v8 setUserRating:v13];
  if (!v6)
  {
    [(SKUIEditorialLockupCellLayout *)self->_layout setItemOffer:0];
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if ([v6 itemKind] != 12)
  {
    if (!configureForItem_clientContext__sViewOffer_1)
    {
      v15 = [SKUIItemOffer alloc];
      if (v7)
      {
        [v7 localizedStringForKey:@"VIEW_BUTTON"];
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
    v22 = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
    [v22 setUniversal:0];

    goto LABEL_14;
  }

  if ([v6 hasInAppPurchases])
  {
    v14 = [v7 valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v14 = 0;
  }

  layout = self->_layout;
  v17 = [v6 primaryItemOffer];
  [(SKUIEditorialLockupCellLayout *)layout setItemOffer:v17];

  v18 = [(SKUIItemCellLayout *)self->_layout itemOfferButton];
  [v18 setUniversal:{SKUIItemDeviceFamilyIsUniversal(objc_msgSend(v6, "deviceFamilies"))}];

LABEL_15:
  [(SKUIEditorialLockupCellLayout *)self->_layout setItemOfferNoticeString:v14];
  v23.receiver = self;
  v23.super_class = SKUIEditorialLockupCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v23 configureForItem:v6 clientContext:v7];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialLockupCollectionViewCell initWithFrame:]";
}

@end