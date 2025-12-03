@interface _TVCarouselCollectionViewLayout
- (CGSize)collectionViewContentSize;
- (CGSize)itemSize;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (int64_t)_expectedNumberOfCells;
- (void)prepareLayout;
@end

@implementation _TVCarouselCollectionViewLayout

- (void)prepareLayout
{
  collectionView = [(_TVCarouselCollectionViewLayout *)self collectionView];
  v3 = [collectionView numberOfItemsInSection:0];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v3];
  [(_TVCarouselCollectionViewLayout *)self itemSize];
  v6 = v5;
  v8 = v7;
  [(_TVCarouselCollectionViewLayout *)self minimumInteritemSpacing];
  v10 = v9;
  [collectionView center];
  v12 = v11;
  [collectionView contentOffset];
  v14 = v13;
  [collectionView center];
  [collectionView contentOffset];
  [(_TVCarouselCollectionViewLayout *)self itemSize];
  if (v3 >= 1)
  {
    v16 = 0;
    v17 = ((v12 + v14) / (v10 + v15));
    v18 = v6 + v10;
    v19 = 0.0;
    do
    {
      v20 = [MEMORY[0x277CCAA70] indexPathForItem:v16 inSection:0];
      v21 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v20];
      [v21 setFrame:{v19, 0.0, v6, v8}];
      [v21 setZIndex:{objc_msgSend(v20, "item") == v17}];
      [v4 setObject:v21 forKeyedSubscript:v20];
      v19 = v18 + v19;

      ++v16;
    }

    while (v3 != v16);
  }

  v22 = [v4 copy];
  layoutAttributesByIndexPath = self->_layoutAttributesByIndexPath;
  self->_layoutAttributesByIndexPath = v22;
}

- (CGSize)collectionViewContentSize
{
  collectionView = [(_TVCarouselCollectionViewLayout *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  [(_TVCarouselCollectionViewLayout *)self itemSize];
  v6 = v5;
  [(_TVCarouselCollectionViewLayout *)self minimumInteritemSpacing];
  if (v4)
  {
    v8 = 0.0;
    if (v4 != 1)
    {
      v8 = (v6 + v7) * (v4 - 1);
    }

    v9 = v6 + v8;
    [(_TVCarouselCollectionViewLayout *)self itemSize];
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

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v9 = 0;
  if (!CGRectIsEmpty(v25))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->_layoutAttributesByIndexPath;
    v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(NSDictionary *)self->_layoutAttributesByIndexPath objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i), v18];
          [v15 frame];
          v27.origin.x = x;
          v27.origin.y = y;
          v27.size.width = width;
          v27.size.height = height;
          if (CGRectIntersectsRect(v26, v27))
          {
            [v8 addObject:v15];
          }
        }

        v12 = [(NSDictionary *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v9 = v8;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int64_t)_expectedNumberOfCells
{
  [(_TVCarouselCollectionViewLayout *)self itemSize];
  v4 = v3;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  Width = CGRectGetWidth(v16);

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  Height = CGRectGetHeight(v17);

  if (Width < Height)
  {
    Width = Height;
  }

  v9 = v4;
  [(_TVCarouselCollectionViewLayout *)self minimumInteritemSpacing];
  v11 = v9 + v10 * 2.0;
  v12 = 3;
  while (Width > v11)
  {
    [(_TVCarouselCollectionViewLayout *)self minimumInteritemSpacing];
    v9 = (v9 + v9 + v13 * 2.0);
    [(_TVCarouselCollectionViewLayout *)self minimumInteritemSpacing];
    v11 = v9 + v14 * 2.0;
    v12 += 2;
  }

  return v12;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end