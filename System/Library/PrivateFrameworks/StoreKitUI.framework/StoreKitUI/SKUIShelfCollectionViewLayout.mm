@interface SKUIShelfCollectionViewLayout
+ (BOOL)collectionViewCanClipToBounds;
+ (Class)layoutAttributesClass;
+ (double)snapToBoundariesDecelerationRate;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
@end

@implementation SKUIShelfCollectionViewLayout

+ (double)snapToBoundariesDecelerationRate
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIShelfCollectionViewLayout *)v2 snapToBoundariesDecelerationRate:v3];
      }
    }
  }

  return 0.8;
}

+ (BOOL)collectionViewCanClipToBounds
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIShelfCollectionViewLayout *)v2 collectionViewCanClipToBounds:v3];
      }
    }
  }

  return 1;
}

+ (Class)layoutAttributesClass
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIShelfCollectionViewLayout *)v2 layoutAttributesClass:v3];
      }
    }
  }

  v10 = objc_opt_class();

  return v10;
}

- (CGSize)collectionViewContentSize
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIShelfCollectionViewLayout *)v3 collectionViewContentSize:v4];
      }
    }
  }

  [(SKUIShelfLayoutData *)self->_layoutData totalContentSize];
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIShelfCollectionViewLayout *)v8 layoutAttributesForElementsInRect:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v49 = [MEMORY[0x277CBEB18] array];
  [(SKUIShelfLayoutData *)self->_layoutData contentInset];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v61 = 0;
  v62 = &v61;
  v63 = 0x3010000000;
  v65 = 0;
  v66 = 0;
  v64 = &unk_215F8ACD7;
  [(SKUIShelfLayoutData *)self->_layoutData columnSpacing];
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v26 = v19;
  if (ShouldReverseLayoutDirection)
  {
    v47 = v23;
    v27 = x;
    v28 = y;
    v29 = v25;
    [(SKUIShelfLayoutData *)self->_layoutData totalContentSize];
    v26 = v30 - v19;
    v25 = v29;
    y = v28;
    x = v27;
    v23 = v47;
  }

  v31 = x + v19;
  v32 = y + v17;
  v33 = width - (v19 + v23);
  *&v60[3] = v26;
  layoutData = self->_layoutData;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __67__SKUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v58[3] = &unk_2781FC100;
  v59 = ShouldReverseLayoutDirection ^ 1;
  *&v58[6] = v31;
  *&v58[7] = v32;
  *&v58[8] = v33;
  *&v58[9] = height - (v17 + v21);
  v58[4] = v60;
  v58[5] = &v61;
  v58[10] = v25;
  [(SKUIShelfLayoutData *)layoutData enumerateColumnsUsingBlock:v58];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3010000000;
  v56 = 0;
  v57 = 0;
  v55 = &unk_215F8ACD7;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  *&v51[3] = v17;
  v35 = self->_layoutData;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __67__SKUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v50[3] = &unk_2781FC128;
  *&v50[6] = v31;
  *&v50[7] = v32;
  *&v50[8] = v33;
  *&v50[9] = height - (v17 + v21);
  v50[4] = v51;
  v50[5] = &v52;
  [(SKUIShelfLayoutData *)v35 enumerateRowsUsingBlock:v50];
  v36 = [(SKUIShelfCollectionViewLayout *)self collectionView];
  v37 = [v36 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v37 = 0;
  }

  v38 = [v36 numberOfItemsInSection:0];
  v48 = [(SKUIShelfLayoutData *)self->_layoutData numberOfRows];
  v39 = v62;
  v40 = v62[4];
  if (v40 < v62[5] + v40)
  {
    v41 = v53;
    v42 = v40 * v48;
    do
    {
      v43 = v41[4];
      if (v43 < v41[5] + v43)
      {
        do
        {
          if ((v42 + v43) < v38)
          {
            v44 = [MEMORY[0x277CCAA70] indexPathForItem:? inSection:?];
            v45 = [(SKUIShelfCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v44];

            [v37 collectionView:v36 layout:self willApplyLayoutAttributes:v45];
            [v49 addObject:v45];

            v41 = v53;
          }

          ++v43;
        }

        while (v43 < v41[5] + v41[4]);
        v39 = v62;
      }

      ++v40;
      v42 += v48;
    }

    while (v40 < v39[5] + v39[4]);
  }

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&v61, 8);

  return v49;
}

double __67__SKUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2, BOOL *a3, double a4)
{
  if (*(a1 + 88) == 1)
  {
    MaxX = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 48);
  }

  else
  {
    MaxX = CGRectGetMaxX(*(a1 + 48));
    v9 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (MaxX <= v9)
  {
    *(*(*(a1 + 40) + 8) + 32) = a2;
  }

  *(*(*(a1 + 40) + 8) + 40) = a2 - *(*(*(a1 + 40) + 8) + 32) + 1;
  v10 = *(*(*(a1 + 32) + 8) + 24);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  if (*(a1 + 88) == 1)
  {
    v15 = v10 >= CGRectGetMaxX(*&v11) - a4;
  }

  else
  {
    v15 = v10 <= CGRectGetMinX(*&v11) + a4;
  }

  *a3 = v15;
  v16 = *(a1 + 80) + a4;
  v17 = *(*(a1 + 32) + 8);
  if (!*(a1 + 88))
  {
    v16 = -v16;
  }

  result = *(v17 + 24) + v16;
  *(v17 + 24) = result;
  return result;
}

double __67__SKUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2(uint64_t a1, uint64_t a2, BOOL *a3, double a4)
{
  if (*(*(*(a1 + 32) + 8) + 24) <= *(a1 + 56))
  {
    *(*(*(a1 + 40) + 8) + 32) = a2;
  }

  *(*(*(a1 + 40) + 8) + 40) = a2 - *(*(*(a1 + 40) + 8) + 32) + 1;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  *a3 = v6 >= CGRectGetMaxY(*(a1 + 48)) - a4;
  v7 = *(*(a1 + 32) + 8);
  result = *(v7 + 24) + a4;
  *(v7 + 24) = result;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShelfCollectionViewLayout *)v5 layoutAttributesForItemAtIndexPath:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
  v14 = [(SKUIShelfCollectionViewLayout *)self collectionView];
  v15 = [v14 backgroundColor];
  [v13 setBackgroundColor:v15];

  [(SKUIShelfLayoutData *)self->_layoutData contentInset];
  v17 = v16;
  v19 = v18;
  v20 = [v4 item];
  v21 = [(SKUIShelfLayoutData *)self->_layoutData numberOfRows];
  v22 = v20 / v21;
  if (storeShouldReverseLayoutDirection())
  {
    for (i = [(SKUIShelfLayoutData *)self->_layoutData numberOfColumns]- 1; i > v22; --i)
    {
      [(SKUIShelfLayoutData *)self->_layoutData columnWidthForIndex:i];
      v25 = v24;
      [(SKUIShelfLayoutData *)self->_layoutData columnSpacing];
      v19 = v19 + v25 + v26;
    }
  }

  else if (v22 >= 1)
  {
    for (j = 0; j != v22; ++j)
    {
      [(SKUIShelfLayoutData *)self->_layoutData columnWidthForIndex:j];
      v29 = v28;
      [(SKUIShelfLayoutData *)self->_layoutData columnSpacing];
      v19 = v19 + v29 + v30;
    }
  }

  v31 = v20 % v21;
  if (v31 >= 1)
  {
    for (k = 0; k != v31; ++k)
    {
      [(SKUIShelfLayoutData *)self->_layoutData rowHeightForIndex:k];
      v17 = v17 + v33;
    }
  }

  [(SKUIShelfLayoutData *)self->_layoutData rowHeightForIndex:v31];
  v35 = v34;
  [(SKUIShelfLayoutData *)self->_layoutData columnWidthForIndex:v22];
  [v13 setFrame:{v19, v17, v36, v35}];

  return v13;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIShelfCollectionViewLayout *)v9 targetContentOffsetForProposedContentOffset:v10 withScrollingVelocity:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v32 = 0;
  v33 = 0;
  v31 = &unk_215F8ACD7;
  v27.receiver = self;
  v27.super_class = SKUIShelfCollectionViewLayout;
  [(SKUIShelfCollectionViewLayout *)&v27 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
  v32 = v17;
  v33 = v18;
  [(SKUIShelfLayoutData *)self->_layoutData columnSpacing];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  layoutData = self->_layoutData;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __99__SKUIShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke;
  v25[3] = &unk_2781FC150;
  v25[5] = &v28;
  v25[6] = v26;
  *&v25[7] = x;
  *&v25[8] = y;
  v25[9] = v20;
  v25[4] = self;
  [(SKUIShelfLayoutData *)layoutData enumerateColumnsUsingBlock:v25];
  v21 = v29[4];
  v22 = v29[5];
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
  v23 = v21;
  v24 = v22;
  result.y = v24;
  result.x = v23;
  return result;
}

double __99__SKUIShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 32);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  v10 = v9 + a2;
  if (v7 > v9 && v7 < v10)
  {
    v13 = *(a1 + 56);
    if (v13 > 0.0 || v13 >= 0.0 && v7 - v9 >= a2 * 0.5)
    {
      v9 = v10 + *(a1 + 72);
    }

    *(v6 + 32) = v9;
    v14 = [*(a1 + 32) collectionView];
    v15 = *(*(*(a1 + 40) + 8) + 32);
    [v14 contentSize];
    v17 = v16;
    [v14 bounds];
    v19 = v17 - v18;
    if (v15 < v17 - v18)
    {
      v19 = v15;
    }

    *(*(*(a1 + 40) + 8) + 32) = v19;
    *a4 = 1;

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 24);
  }

  result = *(a1 + 72) + a2 + v9;
  *(v8 + 24) = result;
  return result;
}

@end