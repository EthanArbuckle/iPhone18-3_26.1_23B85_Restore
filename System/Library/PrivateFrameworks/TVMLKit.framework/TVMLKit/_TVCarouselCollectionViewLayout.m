@interface _TVCarouselCollectionViewLayout
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (int64_t)_expectedNumberOfCells;
- (void)prepareLayout;
@end

@implementation _TVCarouselCollectionViewLayout

- (void)prepareLayout
{
  v3 = [(_TVCarouselCollectionViewLayout *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v4];
  [(UICollectionViewFlowLayout *)self itemSize];
  v6 = v5;
  v8 = v7;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  if (v4 >= 1)
  {
    v10 = 0;
    v11 = v6 + v9;
    v12 = 0.0;
    do
    {
      v13 = [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:0];
      v14 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v13];
      [v14 setFrame:{v12, 0.0, v6, v8}];
      [v17 setObject:v14 forKeyedSubscript:v13];

      v12 = v11 + v12;
      ++v10;
    }

    while (v4 != v10);
  }

  v15 = [v17 copy];
  layoutAttributesByIndexPath = self->_layoutAttributesByIndexPath;
  self->_layoutAttributesByIndexPath = v15;
}

- (CGSize)collectionViewContentSize
{
  v3 = [(_TVCarouselCollectionViewLayout *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  [(UICollectionViewFlowLayout *)self itemSize];
  v6 = v5;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  if (v4)
  {
    v8 = 0.0;
    if (v4 != 1)
    {
      v8 = (v6 + v7) * (v4 - 1);
    }

    v9 = v6 + v8;
    [(UICollectionViewFlowLayout *)self itemSize];
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = v9;
  result.height = v10;
  result.width = v11;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v9 = 0;
  if (!CGRectIsEmpty(v24))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->_layoutAttributesByIndexPath;
    v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(NSDictionary *)self->_layoutAttributesByIndexPath objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          [v15 frame];
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          if (CGRectIntersectsRect(v25, v26))
          {
            [v8 addObject:v15];
          }
        }

        v12 = [(NSDictionary *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v9 = v8;
  }

  return v9;
}

- (int64_t)_expectedNumberOfCells
{
  [(UICollectionViewFlowLayout *)self itemSize];
  v4 = v3;
  v5 = [(_TVCarouselCollectionViewLayout *)self collectionView];
  [v5 bounds];
  if (CGRectGetWidth(v15) > 0.0)
  {
    [(_TVCarouselCollectionViewLayout *)self collectionView];
  }

  else
  {
    [MEMORY[0x277D759A0] mainScreen];
  }
  v6 = ;
  [v6 bounds];
  Width = CGRectGetWidth(v16);

  v8 = v4;
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  v10 = v8 + v9 * 2.0;
  v11 = 3;
  while (Width > v10)
  {
    [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
    v8 = (v8 + v8 + v12 * 2.0);
    [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
    v10 = v8 + v13 * 2.0;
    v11 += 2;
  }

  return v11;
}

@end