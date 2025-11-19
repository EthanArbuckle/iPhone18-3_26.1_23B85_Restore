@interface SKUILockupSwooshCollectionViewCell
- (SKUILockupSwooshCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureForItem:(id)a3 clientContext:(id)a4;
@end

@implementation SKUILockupSwooshCollectionViewCell

- (SKUILockupSwooshCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupSwooshCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUILockupSwooshCollectionViewCell;
  v8 = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [[SKUILockupSwooshCellLayout alloc] initWithCollectionViewCell:v8];
    layout = v8->_layout;
    v8->_layout = v9;

    [(SKUIItemCellLayout *)v8->_layout setDisplaysItemOfferButton:0];
  }

  return v8;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  layout = self->_layout;
  v9 = [v6 artistName];
  [(SKUILockupSwooshCellLayout *)layout setArtistName:v9];

  v10 = self->_layout;
  v11 = [v6 categoryName];
  [(SKUILockupSwooshCellLayout *)v10 setCategory:v11];

  v12 = self->_layout;
  v13 = SKUILockupItemCountString(v6, v7);
  [(SKUILockupSwooshCellLayout *)v12 setItemCountString:v13];

  v14 = self->_layout;
  v15 = [v6 title];
  [(SKUILockupSwooshCellLayout *)v14 setTitle:v15];

  v16 = [v6 primaryItemOffer];
  if (!SKUIItemKindIsSoftwareKind([v6 itemKind]))
  {
    v17 = configureForItem_clientContext__sViewOffer_0;
    if (!configureForItem_clientContext__sViewOffer_0)
    {
      v18 = [SKUIItemOffer alloc];
      if (v7)
      {
        [v7 localizedStringForKey:@"VIEW_BUTTON"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"VIEW_BUTTON" inBundles:0];
      }
      v19 = ;
      v20 = [(SKUIItemOffer *)v18 initWithButtonText:v19];
      v21 = configureForItem_clientContext__sViewOffer_0;
      configureForItem_clientContext__sViewOffer_0 = v20;

      v17 = configureForItem_clientContext__sViewOffer_0;
    }

    v22 = v17;

    v16 = v22;
  }

  [(SKUILockupSwooshCellLayout *)self->_layout setItemOffer:v16];
  v23.receiver = self;
  v23.super_class = SKUILockupSwooshCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v23 configureForItem:v6 clientContext:v7];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupSwooshCollectionViewCell initWithFrame:]";
}

@end