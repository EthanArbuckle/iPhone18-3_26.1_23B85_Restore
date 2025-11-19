@interface STSGridLayout
- (BOOL)_hasOnlyLargeItems;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGRect)_gridFrameForRow:(unint64_t)a3 andColumn:(unint64_t)a4 inSize:(CGSize)a5;
- (CGSize)_availableContentSize;
- (CGSize)collectionViewContentSize;
- (STSGridLayout)init;
- (id)_gridLayoutDelegate;
- (id)_gridTilesForCurrentDataSource;
- (id)_tileSmallFramesForSize:(CGSize)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (unint64_t)_tilesPerRowAndWidth:(double *)a3;
- (void)_gridTilesForCurrentDataSource;
- (void)_redistributeLastRowItemsInTiles:(id)a3 withTilesPerRow:(unint64_t)a4;
- (void)invalidateLayout;
- (void)prepareLayout;
- (void)setFooterHeight:(double)a3;
- (void)setHeaderHeight:(double)a3;
- (void)setItemSpacing:(double)a3;
@end

@implementation STSGridLayout

- (STSGridLayout)init
{
  v7.receiver = self;
  v7.super_class = STSGridLayout;
  v2 = [(STSGridLayout *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_itemSpacing = 6.0;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    tileSmallFrameCache = v3->_tileSmallFrameCache;
    v3->_tileSmallFrameCache = v4;

    [(STSGridLayout *)v3 registerClass:objc_opt_class() forDecorationViewOfKind:@"TileOverlay"];
  }

  return v3;
}

- (void)prepareLayout
{
  v3 = [(STSGridLayout *)self _hasOnlyLargeItems];
  v4 = [(STSGridLayout *)self _gridTilesForCurrentDataSource];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  if (self->_headerHeight > 0.0)
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v7 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:@"STSGridLayoutElementKindHeader" withIndexPath:v6];
    [(STSGridLayout *)self _availableContentSize];
    v9 = v8;
    headerHeight = self->_headerHeight;
    [v7 setFrame:{0.0, 0.0, v8, headerHeight}];
    [v7 setZIndex:300];
    v54.origin.x = 0.0;
    v54.origin.y = 0.0;
    v54.size.width = v9;
    v54.size.height = headerHeight;
    v51[3] = CGRectGetMaxY(v54) + self->_itemSpacing;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:v6];
    headerAttributes = self->_headerAttributes;
    self->_headerAttributes = v11;
  }

  v49 = 0.0;
  v13 = [(STSGridLayout *)self _tilesPerRowAndWidth:&v49];
  v14 = [v4 count];
  v15 = v49;
  if (v3)
  {
    v16 = [(STSGridLayout *)self collectionView];
    UICeilToViewScale();
    v18 = v17;

    v15 = v49;
  }

  else
  {
    v18 = v49;
  }

  v19 = 0;
  v46[2] = 0x4010000000;
  v46[3] = &unk_264EC8ED5;
  v47 = 0u;
  v48 = 0u;
  v20 = *(v51 + 3);
  v46[0] = 0;
  v46[1] = v46;
  *(&v47 + 1) = v20;
  *&v48 = v15;
  *(&v48 + 1) = v18;
  if (!v3)
  {
    v19 = [(STSGridLayout *)self _tileSmallFramesForSize:v15, v18];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __30__STSGridLayout_prepareLayout__block_invoke;
  v35[3] = &unk_279B8AAD8;
  v45 = v3;
  v39 = v46;
  v21 = (v13 + v14 - 1) / v13;
  v22 = v19;
  v36 = v22;
  v23 = v5;
  v41 = v13;
  v42 = v21;
  v40 = &v50;
  v37 = v23;
  v38 = self;
  v43 = v18;
  v44 = v49;
  [v4 enumerateObjectsUsingBlock:v35];
  if (self->_footerHeight > 0.0)
  {
    v24 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v25 = [MEMORY[0x277D75308] layoutAttributesForSupplementaryViewOfKind:@"STSGridLayoutElementKindFooter" withIndexPath:v24];
    v26 = v51[3];
    [(STSGridLayout *)self _availableContentSize];
    v28 = v27;
    footerHeight = self->_footerHeight;
    [(UICollectionViewLayoutAttributes *)v25 setFrame:0.0, v26, v27, footerHeight];
    [(UICollectionViewLayoutAttributes *)v25 setZIndex:100];
    v55.origin.x = 0.0;
    v55.origin.y = v26;
    v55.size.width = v28;
    v55.size.height = footerHeight;
    v51[3] = CGRectGetMaxY(v55);
    footerAttributes = self->_footerAttributes;
    self->_footerAttributes = v25;
  }

  self->_contentSizeMaxY = v51[3];
  v31 = [v23 copy];
  cellAttributes = self->_cellAttributes;
  self->_cellAttributes = v31;

  v33 = [0 copy];
  tileAttributes = self->_tileAttributes;
  self->_tileAttributes = v33;

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v50, 8);
}

void __30__STSGridLayout_prepareLayout__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 layoutStyle];
  if (v6 > 5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v7 = *(&off_279B8ABB8 + v6);
    v8 = qword_264EC5B20[v6];
    v9 = qword_264EC5B50[v6];
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v10 = [v5 largeIndex];

  if (v10)
  {
    v11 = MEMORY[0x277CCAA70];
    v12 = [v5 largeIndex];
    v13 = [v11 indexPathForItem:objc_msgSend(v12 inSection:{"integerValue"), 0}];

    v14 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v13];
    if (*(a1 + 104) == 1)
    {
      v15 = *(*(a1 + 56) + 8);
      v16 = v15[4];
      v17 = v15[5];
      v18 = v15[6];
      v19 = v15[7];
    }

    else
    {
      v20 = [*(a1 + 32) objectAtIndexedSubscript:v9];
      [v20 CGRectValue];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [*(a1 + 32) objectAtIndexedSubscript:v8];
      [v29 CGRectValue];
      v64.origin.x = v30;
      v64.origin.y = v31;
      v64.size.width = v32;
      v64.size.height = v33;
      v59.origin.x = v22;
      v59.origin.y = v24;
      v59.size.width = v26;
      v59.size.height = v28;
      v60 = CGRectUnion(v59, v64);
      x = v60.origin.x;
      y = v60.origin.y;
      width = v60.size.width;
      height = v60.size.height;

      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      v62 = CGRectOffset(v61, *(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40));
      v16 = v62.origin.x;
      v17 = v62.origin.y;
      v18 = v62.size.width;
      v19 = v62.size.height;
    }

    [v14 setFrame:{v16, v17, v18, v19}];
    [*(a1 + 40) setObject:v14 forKeyedSubscript:v13];
    v63.origin.x = v16;
    v63.origin.y = v17;
    v63.size.width = v18;
    v63.size.height = v19;
    v56[3] = CGRectGetMaxY(v63);
  }

  v38 = [v5 smallIndexes];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __30__STSGridLayout_prepareLayout__block_invoke_40;
  v49[3] = &unk_279B8AAB0;
  v50 = v7;
  v39 = *(a1 + 32);
  v40 = *(a1 + 56);
  v51 = v39;
  v53 = v40;
  v52 = *(a1 + 40);
  v54 = &v55;
  [v38 enumerateObjectsUsingBlock:v49];

  v41 = *(a1 + 72);
  if (a3 / v41 == *(a1 + 80) - 1)
  {
    MaxY = v56[3];
  }

  else
  {
    MaxY = CGRectGetMaxY(*(*(*(a1 + 56) + 8) + 32));
    v41 = *(a1 + 72);
  }

  v43 = *(*(a1 + 64) + 8);
  if (MaxY < *(v43 + 24))
  {
    MaxY = *(v43 + 24);
  }

  *(v43 + 24) = MaxY;
  v44 = a3 % v41;
  v45 = v41 - 1;
  v46 = *(*(a1 + 56) + 8);
  if (v44 == v45)
  {
    v46[1].origin.x = 0.0;
    v46 = *(*(a1 + 56) + 8);
    v47 = *(a1 + 88) + *(*(a1 + 48) + 344);
    v48 = 0.0;
  }

  else
  {
    v48 = *(a1 + 96) + *(*(a1 + 48) + 344);
    v47 = 0.0;
  }

  *(*(*(a1 + 56) + 8) + 32) = CGRectOffset(v46[1], v48, v47);

  _Block_object_dispose(&v55, 8);
}

void __30__STSGridLayout_prepareLayout__block_invoke_40(uint64_t a1, void *a2, unint64_t a3)
{
  v23 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(a2 inSection:{"integerValue"), 0}];
  v5 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:?];
  if ([*(a1 + 32) count] <= a3)
  {
    v10 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v7 = [v6 integerValue];

    v8 = [*(a1 + 40) objectAtIndexedSubscript:v7];
    [v8 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  v25.origin.x = v10;
  v25.origin.y = v12;
  v25.size.width = v14;
  v25.size.height = v16;
  v26 = CGRectOffset(v25, *(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  [v5 setFrame:?];
  [*(a1 + 48) setObject:v5 forKeyedSubscript:v23];
  v21 = *(*(*(a1 + 64) + 8) + 24);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxY = CGRectGetMaxY(v27);
  if (v21 >= MaxY)
  {
    MaxY = v21;
  }

  *(*(*(a1 + 64) + 8) + 24) = MaxY;
}

- (void)invalidateLayout
{
  v8.receiver = self;
  v8.super_class = STSGridLayout;
  [(STSGridLayout *)&v8 invalidateLayout];
  headerAttributes = self->_headerAttributes;
  self->_headerAttributes = 0;

  cellAttributes = self->_cellAttributes;
  self->_cellAttributes = 0;

  tileAttributes = self->_tileAttributes;
  self->_tileAttributes = 0;

  footerAttributes = self->_footerAttributes;
  self->_footerAttributes = 0;

  hasOnlyLargeItems = self->_hasOnlyLargeItems;
  self->_hasOnlyLargeItems = 0;

  self->_contentSizeMaxY = 0.0;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(STSGridLayout *)self collectionView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  v16 = CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  return v16 != CGRectGetWidth(v19);
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __51__STSGridLayout_layoutAttributesForElementsInRect___block_invoke;
  v25[3] = &__block_descriptor_64_e49_B32__0__UICollectionViewLayoutAttributes_8Q16_B24l;
  v26 = a3;
  v8 = MEMORY[0x266751FB0](v25, a2);
  v9 = [MEMORY[0x277CBEB18] array];
  if (self->_headerHeight > 0.0)
  {
    v10 = [(NSDictionary *)self->_headerAttributes allValues];
    v11 = [v10 indexesOfObjectsPassingTest:v8];
    v12 = [v10 objectsAtIndexes:v11];
    [v9 addObjectsFromArray:v12];
  }

  v13 = [(NSDictionary *)self->_cellAttributes allValues];
  v14 = [v13 indexesOfObjectsPassingTest:v8];
  v15 = [v13 objectsAtIndexes:v14];
  [v9 addObjectsFromArray:v15];

  v16 = [(NSDictionary *)self->_tileAttributes allValues];
  v17 = [v16 indexesOfObjectsPassingTest:v8];
  v18 = [v16 objectsAtIndexes:v17];
  [v9 addObjectsFromArray:v18];

  footerAttributes = self->_footerAttributes;
  if (footerAttributes)
  {
    [(UICollectionViewLayoutAttributes *)footerAttributes frame];
    v29.origin.x = v20;
    v29.origin.y = v21;
    v29.size.width = v22;
    v29.size.height = v23;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    if (CGRectIntersectsRect(v28, v29))
    {
      [v9 addObject:self->_footerAttributes];
    }
  }

  return v9;
}

BOOL __51__STSGridLayout_layoutAttributesForElementsInRect___block_invoke(void *a1, void *a2)
{
  [a2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v14 = a1[7];

  return CGRectIntersectsRect(*&v11, *&v4);
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"STSGridLayoutElementKindHeader"])
  {
    v8 = [(NSDictionary *)self->_headerAttributes objectForKeyedSubscript:v7];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"STSGridLayoutElementKindFooter"])
  {
    v8 = self->_footerAttributes;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (CGSize)collectionViewContentSize
{
  [(STSGridLayout *)self _availableContentSize];
  contentSizeMaxY = self->_contentSizeMaxY;
  result.height = contentSizeMaxY;
  result.width = v3;
  return result;
}

- (void)setHeaderHeight:(double)a3
{
  if (self->_headerHeight != a3)
  {
    self->_headerHeight = a3;
    [(STSGridLayout *)self invalidateLayout];
  }
}

- (void)setFooterHeight:(double)a3
{
  if (self->_footerHeight != a3)
  {
    self->_footerHeight = a3;
    [(STSGridLayout *)self invalidateLayout];
  }
}

- (void)setItemSpacing:(double)a3
{
  if (self->_itemSpacing != a3)
  {
    self->_itemSpacing = a3;
    [(NSMutableDictionary *)self->_tileSmallFrameCache removeAllObjects];

    [(STSGridLayout *)self invalidateLayout];
  }
}

- (id)_gridLayoutDelegate
{
  v2 = [(STSGridLayout *)self collectionView];
  v3 = [v2 delegate];

  return v3;
}

- (id)_gridTilesForCurrentDataSource
{
  v25 = [MEMORY[0x277CBEB18] array];
  v3 = [(STSGridLayout *)self collectionView];
  v4 = [(STSGridLayout *)self _tilesPerRowAndWidth:0];
  v5 = [(STSGridLayout *)self _hasOnlyLargeItems];
  v22 = v3;
  if ([v3 numberOfSections])
  {
    if (v5)
    {
      v6 = &unk_2876BA480;
    }

    else if (v4 > 2)
    {
      v6 = &unk_2876BA4C8;
    }

    else
    {
      v6 = qword_279B8ABE8[v4];
    }

    v24 = v6;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy_;
    v37 = __Block_byref_object_dispose_;
    v38 = 0;
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{9, v4}];
    v8 = [v3 numberOfItemsInSection:0];
    v9 = v8;
    if (v8)
    {
      v10 = 0;
      v11 = v8 - 1;
      v23 = self;
      do
      {
        v12 = [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:0];
        if (v5 || (-[STSGridLayout _gridLayoutDelegate](self, "_gridLayoutDelegate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 collectionView:v22 layout:self sizeForItemAtIndexPath:v12], v13, !v14))
        {
          v14 = 0;
          if (v34[5])
          {
            v15 = 0;
          }

          else
          {
            v15 = [v7 count] < 6;
          }
        }

        else
        {
          if (v14 != 1)
          {
            goto LABEL_15;
          }

          if (!v34[5])
          {
            goto LABEL_21;
          }

          if ([v7 count] < 5)
          {
            v14 = 1;
LABEL_15:
            v15 = 1;
            goto LABEL_23;
          }

          if (v34[5])
          {
            v15 = 0;
          }

          else
          {
LABEL_21:
            v15 = [v7 count] < 9;
          }

          v14 = 1;
        }

LABEL_23:
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __47__STSGridLayout__gridTilesForCurrentDataSource__block_invoke;
        v28[3] = &unk_279B8AB20;
        v16 = v7;
        v32 = &v33;
        v29 = v16;
        v30 = v24;
        v31 = v25;
        v17 = MEMORY[0x266751FB0](v28);
        if (!v15)
        {
          if (v11 != v10 && (!v34[5] && [v16 count] < 9 || !v5 && v34[5] && objc_msgSend(v16, "count") <= 4) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [(STSGridLayout *)&buf _gridTilesForCurrentDataSource];
          }

          v17[2](v17);
        }

        if (!v14)
        {
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
          v18 = v34[5];
          v34[5] = v19;
          goto LABEL_37;
        }

        if (v14 == 1)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
          [v16 addObject:v18];
LABEL_37:
        }

        if (v11 == v10)
        {
          v17[2](v17);
        }

        ++v10;
        self = v23;
      }

      while (v9 != v10);
    }

    if (!v5)
    {
      [(STSGridLayout *)self _redistributeLastRowItemsInTiles:v25 withTilesPerRow:v21];
    }

    _Block_object_dispose(&v33, 8);
  }

  return v25;
}

void __47__STSGridLayout__gridTilesForCurrentDataSource__block_invoke(uint64_t a1)
{
  v5 = objc_alloc_init(STSGridTile);
  [(STSGridTile *)v5 setSmallIndexes:*(a1 + 32)];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "count") % objc_msgSend(*(a1 + 40), "count")}];
    -[STSGridTile setLayoutStyle:](v5, "setLayoutStyle:", [v2 integerValue]);

    [(STSGridTile *)v5 setLargeIndex:*(*(*(a1 + 56) + 8) + 40)];
  }

  else
  {
    [(STSGridTile *)v5 setLayoutStyle:0];
  }

  [*(a1 + 48) addObject:v5];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  [*(a1 + 32) removeAllObjects];
}

- (void)_redistributeLastRowItemsInTiles:(id)a3 withTilesPerRow:(unint64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [v6 lastObject];
    if (!([v6 count] % a4))
    {
      v25 = [v7 largeIndex];
      if (!v25 || ([v7 smallIndexes], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "count") > 4))
      {
        v26 = [v7 largeIndex];
        if (v26)
        {

          if (v25)
          {
          }

          goto LABEL_23;
        }

        v27 = [v7 smallIndexes];
        v28 = [v27 count];

        if (v25)
        {

          if (v28 < 9)
          {
            goto LABEL_3;
          }
        }

        else if (v28 <= 8)
        {
          goto LABEL_3;
        }

LABEL_23:

        goto LABEL_24;
      }
    }

LABEL_3:
    v31 = v7;
    v8 = [v6 count];
    v32 = v8 - 1 - (a4 + v8 - 1) % a4;
    v9 = [v6 subarrayWithRange:{v32, objc_msgSend(v6, "count") - v32}];
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{9 * objc_msgSend(v9, "count")}];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __66__STSGridLayout__redistributeLastRowItemsInTiles_withTilesPerRow___block_invoke;
    v35[3] = &unk_279B8AB48;
    v12 = v10;
    v36 = v12;
    v29 = v11;
    v30 = v9;
    v37 = v29;
    [v9 enumerateObjectsUsingBlock:v35];
    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:a4];
    if ([v12 count])
    {
      v14 = 0;
      v15 = v32;
      do
      {
        if (v15 >= [v6 count] || (objc_msgSend(v6, "objectAtIndexedSubscript:", v15), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v16 = objc_alloc_init(STSGridTile);
          [(STSGridTile *)v16 setLayoutStyle:0];
          [v6 addObject:v16];
        }

        v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
        v18 = [v13 objectForKeyedSubscript:v17];

        if (!v18)
        {
          v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
          [v13 setObject:v18 forKeyedSubscript:v19];
        }

        v20 = [(STSGridTile *)v16 largeIndex];
        if (v20)
        {
          if ([v18 count] <= 1)
          {
            v21 = 1;
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          v21 = 3;
        }

        v22 = [v12 count];
        if (v21 >= v22 - v14)
        {
          v23 = v22 - v14;
        }

        else
        {
          v23 = v21;
        }

        v24 = [v12 subarrayWithRange:{v14, v23}];
        [v18 addObjectsFromArray:v24];
        v14 += v23;
        if ((v15 + 1) % a4)
        {
          ++v15;
        }

        else
        {
          v15 = v32;
        }
      }

      while (v14 < [v12 count]);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __66__STSGridLayout__redistributeLastRowItemsInTiles_withTilesPerRow___block_invoke_2;
    v33[3] = &unk_279B8AB70;
    v34 = v6;
    [v13 enumerateKeysAndObjectsUsingBlock:v33];

    v7 = v31;
    goto LABEL_23;
  }

LABEL_24:
}

void __66__STSGridLayout__redistributeLastRowItemsInTiles_withTilesPerRow___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 smallIndexes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v12 smallIndexes];
    [v5 addObjectsFromArray:v6];
  }

  v7 = [v12 largeIndex];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [v12 largeIndex];
    [v8 addObject:v9];

    if ([v12 layoutStyle] == 4)
    {
      v10 = v12;
      v11 = 2;
    }

    else
    {
      if ([v12 layoutStyle] != 5)
      {
        goto LABEL_9;
      }

      v10 = v12;
      v11 = 3;
    }

    [v10 setLayoutStyle:v11];
  }

LABEL_9:
}

void __66__STSGridLayout__redistributeLastRowItemsInTiles_withTilesPerRow___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [v4 objectAtIndexedSubscript:{objc_msgSend(a2, "integerValue")}];
  v6 = [v5 copy];

  [v7 setSmallIndexes:v6];
}

- (BOOL)_hasOnlyLargeItems
{
  hasOnlyLargeItems = self->_hasOnlyLargeItems;
  if (!hasOnlyLargeItems)
  {
    v4 = [(STSGridLayout *)self collectionView];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__STSGridLayout__hasOnlyLargeItems__block_invoke;
    v8[3] = &unk_279B8AB98;
    v10 = &v11;
    v8[4] = self;
    v5 = v4;
    v9 = v5;
    [v5 sts_enumerateAllIndexPathsUsingBlock:v8];
    if (v12[5])
    {
      v6 = v12[5];
    }

    else
    {
      v6 = MEMORY[0x277CBEC28];
    }

    objc_storeStrong(&self->_hasOnlyLargeItems, v6);

    _Block_object_dispose(&v11, 8);
    hasOnlyLargeItems = self->_hasOnlyLargeItems;
  }

  return [(NSNumber *)hasOnlyLargeItems BOOLValue];
}

void __35__STSGridLayout__hasOnlyLargeItems__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = *(*(a1 + 48) + 8);
  if (!*(v5 + 40))
  {
    *(v5 + 40) = MEMORY[0x277CBEC38];
  }

  v6 = [*(a1 + 32) _gridLayoutDelegate];
  v7 = [v6 collectionView:*(a1 + 40) layout:*(a1 + 32) sizeForItemAtIndexPath:v10];

  if (v7)
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = MEMORY[0x277CBEC28];

    *a3 = 1;
  }
}

- (id)_tileSmallFramesForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
  v7 = [(NSMutableDictionary *)self->_tileSmallFrameCache objectForKey:v6];
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v10 = MEMORY[0x277CCAE60];
        [(STSGridLayout *)self _gridFrameForRow:v7 andColumn:i inSize:width, height];
        v11 = [v10 valueWithCGRect:?];
        [v8 addObject:v11];
      }

      ++v7;
    }

    while (v7 != 3);
    v7 = [v8 copy];
    [(NSMutableDictionary *)self->_tileSmallFrameCache setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

- (CGRect)_gridFrameForRow:(unint64_t)a3 andColumn:(unint64_t)a4 inSize:(CGSize)a5
{
  v6 = [(STSGridLayout *)self collectionView];
  UIFloorToViewScale();
  v8 = v7;

  v9 = [(STSGridLayout *)self collectionView];
  UIFloorToViewScale();
  v11 = v10;

  v12 = [(STSGridLayout *)self collectionView];
  UIFloorToViewScale();
  v14 = v13;

  v15 = v8;
  v16 = v11;
  v17 = v14;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (unint64_t)_tilesPerRowAndWidth:(double *)a3
{
  [(STSGridLayout *)self _availableContentSize];
  if (v5 >= 550.0)
  {
    if (v5 <= v6 || v5 / 3.0 <= 440.0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    if (a3)
    {
      v9 = [(STSGridLayout *)self collectionView];
      UIFloorToViewScale();
      *a3 = v10;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = v5;
    }

    return 1;
  }

  return v7;
}

- (CGSize)_availableContentSize
{
  v3 = [(STSGridLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(STSGridLayout *)self collectionView];
  [v8 contentInset];
  v11 = v5 - (v9 + v10);
  v14 = v7 - (v12 + v13);

  v15 = v11;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)_gridTilesForCurrentDataSource
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected partially filled tile in the middle of results", buf, 2u);
}

@end