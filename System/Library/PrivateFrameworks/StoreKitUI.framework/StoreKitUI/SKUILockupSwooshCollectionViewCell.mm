@interface SKUILockupSwooshCollectionViewCell
- (SKUILockupSwooshCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureForItem:(id)item clientContext:(id)context;
@end

@implementation SKUILockupSwooshCollectionViewCell

- (SKUILockupSwooshCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupSwooshCollectionViewCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUILockupSwooshCollectionViewCell;
  height = [(SKUICollectionViewCell *)&v12 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [[SKUILockupSwooshCellLayout alloc] initWithCollectionViewCell:height];
    layout = height->_layout;
    height->_layout = v9;

    [(SKUIItemCellLayout *)height->_layout setDisplaysItemOfferButton:0];
  }

  return height;
}

- (void)configureForItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  layout = self->_layout;
  artistName = [itemCopy artistName];
  [(SKUILockupSwooshCellLayout *)layout setArtistName:artistName];

  v10 = self->_layout;
  categoryName = [itemCopy categoryName];
  [(SKUILockupSwooshCellLayout *)v10 setCategory:categoryName];

  v12 = self->_layout;
  v13 = SKUILockupItemCountString(itemCopy, contextCopy);
  [(SKUILockupSwooshCellLayout *)v12 setItemCountString:v13];

  v14 = self->_layout;
  title = [itemCopy title];
  [(SKUILockupSwooshCellLayout *)v14 setTitle:title];

  primaryItemOffer = [itemCopy primaryItemOffer];
  if (!SKUIItemKindIsSoftwareKind([itemCopy itemKind]))
  {
    v17 = configureForItem_clientContext__sViewOffer_0;
    if (!configureForItem_clientContext__sViewOffer_0)
    {
      v18 = [SKUIItemOffer alloc];
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"VIEW_BUTTON"];
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

    primaryItemOffer = v22;
  }

  [(SKUILockupSwooshCellLayout *)self->_layout setItemOffer:primaryItemOffer];
  v23.receiver = self;
  v23.super_class = SKUILockupSwooshCollectionViewCell;
  [(SKUIItemCollectionViewCell *)&v23 configureForItem:itemCopy clientContext:contextCopy];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupSwooshCollectionViewCell initWithFrame:]";
}

@end