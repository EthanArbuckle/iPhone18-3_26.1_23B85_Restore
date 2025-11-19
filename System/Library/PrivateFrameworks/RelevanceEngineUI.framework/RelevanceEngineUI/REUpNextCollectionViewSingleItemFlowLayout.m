@interface REUpNextCollectionViewSingleItemFlowLayout
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)prepareLayout;
@end

@implementation REUpNextCollectionViewSingleItemFlowLayout

- (void)prepareLayout
{
  v22.receiver = self;
  v22.super_class = REUpNextCollectionViewSingleItemFlowLayout;
  [(UICollectionViewFlowLayout *)&v22 prepareLayout];
  v3 = [(REUpNextCollectionViewSingleItemFlowLayout *)self collectionView];
  [v3 bounds];

  UIRectGetCenter();
  v5 = v4;
  v7 = v6;
  v8 = objc_opt_new();
  v9 = [(REUpNextCollectionViewSingleItemFlowLayout *)self collectionView];
  v10 = [v9 numberOfSections];

  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = [(REUpNextCollectionViewSingleItemFlowLayout *)self collectionView];
      v13 = [v12 numberOfItemsInSection:i];

      if (v13 >= 1)
      {
        for (j = 0; j != v13; ++j)
        {
          v15 = [MEMORY[0x277CCAA70] indexPathForItem:j inSection:i];
          v21.receiver = self;
          v21.super_class = REUpNextCollectionViewSingleItemFlowLayout;
          v16 = [(REUpNextCollectionViewFlowLayout *)&v21 layoutAttributesForItemAtIndexPath:v15];
          v17 = [v16 copy];

          v18 = [(NSIndexPath *)self->_preferedIndexPath isEqual:v15];
          v19 = 0.0;
          if (v18)
          {
            objc_storeStrong(&self->_preferedCellAttributes, v17);
            [v17 setCenter:{v5, v7}];
            v19 = 1.0;
          }

          [v17 setAlpha:v19];
          [(NSDictionary *)v8 setObject:v17 forKeyedSubscript:v15];
        }
      }
    }
  }

  allAttributes = self->_allAttributes;
  self->_allAttributes = v8;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (self->_preferedCellAttributes)
  {
    v6[0] = self->_preferedCellAttributes;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:{1, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = REUpNextCollectionViewSingleItemFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v7 layoutAttributesForSupplementaryViewOfKind:a3 atIndexPath:a4];
  v5 = [v4 copy];

  [v5 setAlpha:0.0];

  return v5;
}

@end