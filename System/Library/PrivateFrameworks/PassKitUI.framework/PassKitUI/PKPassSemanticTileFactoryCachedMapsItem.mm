@interface PKPassSemanticTileFactoryCachedMapsItem
- (PKPassSemanticTileFactoryCachedMapsItem)initWithMapItem:(id)item icon:(id)icon;
@end

@implementation PKPassSemanticTileFactoryCachedMapsItem

- (PKPassSemanticTileFactoryCachedMapsItem)initWithMapItem:(id)item icon:(id)icon
{
  itemCopy = item;
  iconCopy = icon;
  v14.receiver = self;
  v14.super_class = PKPassSemanticTileFactoryCachedMapsItem;
  v9 = [(PKPassSemanticTileFactoryCachedMapsItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, item);
    objc_storeStrong(&v10->_icon, icon);
    if (itemCopy)
    {
      v11 = iconCopy == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    v10->_valid = v12;
  }

  return v10;
}

@end