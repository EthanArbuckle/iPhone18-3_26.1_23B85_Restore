@interface SKUIItemGridCollectionViewLayout
- (SKUIItemGridCollectionViewLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)init;
@end

@implementation SKUIItemGridCollectionViewLayout

- (SKUIItemGridCollectionViewLayout)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIItemGridCollectionViewLayout init];
  }

  v6.receiver = self;
  v6.super_class = SKUIItemGridCollectionViewLayout;
  v3 = [(UICollectionViewFlowLayout *)&v6 init];
  v4 = v3;
  if (v3)
  {
    [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v4 setMinimumLineSpacing:0.0];
  }

  return v4;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v33 = *MEMORY[0x277D85DE8];
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v31.receiver = self;
  v31.super_class = SKUIItemGridCollectionViewLayout;
  [(UICollectionViewFlowLayout *)&v31 layoutAttributesForElementsInRect:x, y, width, height];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v13 indexPath];
        v15 = [v14 item];

        if ((v15 / self->_numberOfColumns))
        {
          v16 = 568;
        }

        else
        {
          v16 = 552;
        }

        if (*(&self->super.super.super.isa + v16))
        {
          [v13 setBackgroundColor:?];
        }

        else
        {
          v17 = [MEMORY[0x277D75348] whiteColor];
          [v13 setBackgroundColor:v17];
        }

        numberOfColumns = self->_numberOfColumns;
        v19 = 16;
        if (v15 < numberOfColumns)
        {
          v19 = 8;
        }

        v20 = v15 % numberOfColumns == 0;
        v21 = v15 % numberOfColumns == numberOfColumns - 1;
        if (ShouldReverseLayoutDirection)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        if (ShouldReverseLayoutDirection)
        {
          v21 = v20;
        }

        v23 = !v21;
        v24 = 4;
        if (v23)
        {
          v24 = 2;
        }

        if (v22)
        {
          v24 = 1;
        }

        [v13 setPosition:v19 | v24];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  return obj;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemGridCollectionViewLayout init]";
}

@end