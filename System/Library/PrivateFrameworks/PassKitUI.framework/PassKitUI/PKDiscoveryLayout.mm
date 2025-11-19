@interface PKDiscoveryLayout
- (CGSize)collectionViewContentSize;
- (PKDiscoveryLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)_adjustItems:(id)a3 withLateralMove:(double)a4;
- (void)prepareLayout;
@end

@implementation PKDiscoveryLayout

- (PKDiscoveryLayout)init
{
  v8.receiver = self;
  v8.super_class = PKDiscoveryLayout;
  v2 = [(PKDiscoveryLayout *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributesPerIndexPath = v2->_attributesPerIndexPath;
    v2->_attributesPerIndexPath = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    headersPerIndexPath = v2->_headersPerIndexPath;
    v2->_headersPerIndexPath = v5;
  }

  return v2;
}

- (CGSize)collectionViewContentSize
{
  p_currentSize = &self->_currentSize;
  width = self->_currentSize.width;
  height = self->_currentSize.height;
  v6 = PKUIGetMinScreenType();
  v7 = (&unk_1BE115F00 + 8 * v6);
  if (v6 >= 0x14)
  {
    v7 = (MEMORY[0x1E695F060] + 8);
  }

  v8 = *v7;
  v9 = p_currentSize->height;
  v10 = v9 < *v7;
  v11 = v9 >= *v7;
  v12 = v8 + 5.0;
  if (v10)
  {
    v13 = v12;
  }

  else
  {
    v13 = height;
  }

  self->_isScrollable = v11;
  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)prepareLayout
{
  v3 = [(PKDiscoveryLayout *)self collectionView];
  v4 = [v3 delegate];
  v5 = v4;
  if (v3 && v4)
  {
    [(NSMutableDictionary *)self->_attributesPerIndexPath removeAllObjects];
    [v3 bounds];
    v7 = v6;
    p_currentSize = &self->_currentSize;
    self->_currentSize.width = v6;
    self->_currentSize.height = 0.0;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v3 numberOfSections] >= 1)
    {
      v10 = 0;
      v11 = *(MEMORY[0x1E695F060] + 8);
      v38 = *MEMORY[0x1E695F060];
      v37 = *MEMORY[0x1E69DDC08];
      do
      {
        height = p_currentSize->height;
        [v5 collectionView:v3 layout:self referenceSizeForHeaderInSection:v10];
        v15 = v14;
        v16 = v14 == v38 && v13 == v11;
        v17 = v11;
        v18 = 0.0;
        if (!v16)
        {
          v19 = v13;
          v20 = MEMORY[0x1E69DC858];
          v21 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v10];
          v22 = [v20 layoutAttributesForSupplementaryViewOfKind:v37 withIndexPath:v21];

          [v22 setSize:{v15, v19}];
          [v22 setFrame:{0.0, height, v15, v19}];
          headersPerIndexPath = self->_headersPerIndexPath;
          v24 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v10];
          [(NSMutableDictionary *)headersPerIndexPath setObject:v22 forKey:v24];

          [v9 addObject:v22];
          v18 = v15 + 0.0;

          v17 = v19;
        }

        v25 = [v3 numberOfItemsInSection:v10];
        if (v25)
        {
          v26 = v25;
          for (i = 0; i != v26; ++i)
          {
            v28 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:v10];
            [v5 collectionView:v3 layout:self sizeForItemAtIndexPath:v28];
            v30 = v29;
            v32 = v31;
            if (v7 - v18 >= v29)
            {
              if (v18 != 0.0)
              {
                v18 = v18 + self->_interimSpacing;
              }
            }

            else
            {
              height = height + v17 + self->_lineSpacing;
              PKFloatRoundToPixel();
              [(PKDiscoveryLayout *)self _adjustItems:v9 withLateralMove:?];
              [v9 removeAllObjects];
              v18 = 0.0;
            }

            v33 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v28];
            [v33 setSize:{v30, v32}];
            [v33 setFrame:{v18, height, v30, v32}];
            [(NSMutableDictionary *)self->_attributesPerIndexPath setObject:v33 forKey:v28];
            [v9 addObject:v33];
            v18 = v30 + v18;

            v17 = v32;
          }
        }

        else
        {
          v32 = v17;
        }

        if ([v9 count])
        {
          PKFloatRoundToPixel();
          v35 = v34;
          v36 = [v9 copy];
          [(PKDiscoveryLayout *)self _adjustItems:v36 withLateralMove:v35];

          [v9 removeAllObjects];
        }

        p_currentSize = &self->_currentSize;
        self->_currentSize.height = v32 + height;
        ++v10;
      }

      while (v10 < [v3 numberOfSections]);
    }

    p_currentSize->height = p_currentSize->height + 16.0;
    v39.receiver = self;
    v39.super_class = PKDiscoveryLayout;
    [(PKDiscoveryLayout *)&v39 prepareLayout];
  }
}

- (void)_adjustItems:(id)a3 withLateralMove:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 frame];
        [v10 setFrame:v11 + a4];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_attributesPerIndexPath;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_attributesPerIndexPath objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        [v4 addObject:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end