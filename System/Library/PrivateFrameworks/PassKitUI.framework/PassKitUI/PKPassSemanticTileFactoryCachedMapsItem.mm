@interface PKPassSemanticTileFactoryCachedMapsItem
- (PKPassSemanticTileFactoryCachedMapsItem)initWithMapItem:(id)a3 icon:(id)a4;
@end

@implementation PKPassSemanticTileFactoryCachedMapsItem

- (PKPassSemanticTileFactoryCachedMapsItem)initWithMapItem:(id)a3 icon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKPassSemanticTileFactoryCachedMapsItem;
  v9 = [(PKPassSemanticTileFactoryCachedMapsItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, a3);
    objc_storeStrong(&v10->_icon, a4);
    if (v7)
    {
      v11 = v8 == 0;
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