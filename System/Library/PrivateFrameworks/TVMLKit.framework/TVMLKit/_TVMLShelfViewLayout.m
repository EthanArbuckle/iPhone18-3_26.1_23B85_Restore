@interface _TVMLShelfViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (TVCellMetrics)cellMetrics;
- (_TVMLShelfViewLayout)init;
- (double)expectedLineSpacing;
- (double)headerAllowance;
- (id)_animationForReusableView:(id)a3 toLayoutAttributes:(id)a4 type:(unint64_t)a5;
- (id)contentRowMetricsForShowcase:(BOOL)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)setCellMetrics:(TVCellMetrics *)a3;
- (void)setShowcaseFactor:(double)a3;
@end

@implementation _TVMLShelfViewLayout

- (_TVMLShelfViewLayout)init
{
  v3.receiver = self;
  v3.super_class = _TVMLShelfViewLayout;
  result = [(_TVShelfViewLayout *)&v3 init];
  if (result)
  {
    result->_cachedTallestHeaderHeight = -1.0;
  }

  return result;
}

- (void)setCellMetrics:(TVCellMetrics *)a3
{
  self->_cellMetrics.cellSize = a3->cellSize;
  v3 = *&a3->cellInset.bottom;
  v5 = *&a3->cellPadding.top;
  v4 = *&a3->cellPadding.bottom;
  *&self->_cellMetrics.cellInset.top = *&a3->cellInset.top;
  *&self->_cellMetrics.cellInset.bottom = v3;
  *&self->_cellMetrics.cellPadding.top = v5;
  *&self->_cellMetrics.cellPadding.bottom = v4;
  v6 = *&a3->cellMargin.bottom;
  v8 = *&a3->cellInsetAlt.top;
  v7 = *&a3->cellInsetAlt.bottom;
  *&self->_cellMetrics.cellMargin.top = *&a3->cellMargin.top;
  *&self->_cellMetrics.cellMargin.bottom = v6;
  *&self->_cellMetrics.cellInsetAlt.top = v8;
  *&self->_cellMetrics.cellInsetAlt.bottom = v7;
  if (a3->cellSize.width > 2.22044605e-16 && a3->cellSize.height > 2.22044605e-16)
  {
    [(_TVShelfViewLayout *)self setItemSize:a3->cellSize.width];
  }
}

- (void)setShowcaseFactor:(double)a3
{
  self->_showcaseFactor = a3;
  v4 = objc_alloc_init(_TVMLShelfViewLayoutInvalidationContext);
  [(_TVMLShelfViewLayoutInvalidationContext *)v4 setInvalidateShowcase:1];
  [(_TVMLShelfViewLayout *)self invalidateLayoutWithContext:v4];
}

- (double)expectedLineSpacing
{
  v20[2] = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  [(_TVMLShelfViewLayout *)self cellMetrics];
  TVRowMetricsMakeWithCellMetrics(&v10, &v15);
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  v2 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v10];
  v20[0] = v2;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  v3 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v10];
  v20[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = [TVMLUtilities rowSpacingMetricsForRowMetrics:v4, 0];
  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    [v6 tv_rowMetricsValue];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v8 = *(&v10 + 1);
  return v8;
}

- (double)headerAllowance
{
  [(_TVMLShelfViewLayout *)self cachedTallestHeaderHeight];
  v4 = v3;
  if (v3 == -1.0)
  {
    v7 = [(_TVMLShelfViewLayout *)self collectionView];
    v8 = [v7 delegate];

    v9 = objc_opt_respondsToSelector();
    v10 = 0.0;
    if ((v9 & 1) == 0)
    {
      [(_TVShelfViewLayout *)self headerReferenceSize];
      v10 = v11;
    }

    v12 = [(_TVMLShelfViewLayout *)self collectionView];
    v13 = [v12 numberOfSections];

    if (v13 >= 1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (v9)
        {
          v15 = [(_TVMLShelfViewLayout *)self collectionView];
          [v8 collectionView:v15 layout:self referenceSizeForHeaderInSection:i];
          v17 = v16;

          if (v17 > v10)
          {
            v10 = v17;
          }
        }
      }
    }

    [(_TVMLShelfViewLayout *)self setCachedTallestHeaderHeight:v10];
    v5 = 0.0;
    if (v10 > 0.0)
    {
      [(_TVShelfViewLayout *)self headerBottomMargin];
      v5 = v10 + v18;
    }
  }

  else
  {
    v5 = 0.0;
    if (v3 > 0.0)
    {
      [(_TVShelfViewLayout *)self headerBottomMargin];
      return v4 + v6;
    }
  }

  return v5;
}

- (id)contentRowMetricsForShowcase:(BOOL)a3
{
  v5 = [(_TVMLShelfViewLayout *)self collectionView];
  v6 = [v5 delegate];

  v7 = objc_opt_respondsToSelector();
  v8 = objc_opt_respondsToSelector();
  v9 = 0.0;
  if (!a3 && (v7 & 1) == 0)
  {
    [(_TVShelfViewLayout *)self headerReferenceSize];
    v9 = v10;
  }

  v11 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 16);
  v13 = [(_TVMLShelfViewLayout *)self collectionView];
  v14 = [v13 numberOfSections];

  if (v14 >= 1)
  {
    v15 = 0;
    v16 = a3 | v7 ^ 1;
    do
    {
      if ((v16 & 1) == 0)
      {
        v17 = [(_TVMLShelfViewLayout *)self collectionView];
        [v6 collectionView:v17 layout:self referenceSizeForHeaderInSection:v15];
        v19 = v18;

        if (v19 > v9)
        {
          v9 = v19;
        }
      }

      if (v8)
      {
        v20 = [(_TVMLShelfViewLayout *)self collectionView];
        [v6 collectionView:v20 layout:self insetForSectionAtIndex:v15];
        v22 = v21;
        v24 = v23;

        if (v22 > v11)
        {
          v11 = v22;
        }

        if (v24 > v12)
        {
          v12 = v24;
        }
      }

      ++v15;
    }

    while (v14 != v15);
  }

  v56 = v9;
  v25 = [(_TVShelfViewLayout *)self computedRowCount];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  [(_TVMLShelfViewLayout *)self cellMetrics];
  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{v25, TVRowMetricsMakeWithCellMetrics(v58, &v59)}];
  if (v25 >= 1)
  {
    v27 = 0;
    do
    {
      v29 = *(&v59 + 1);
      v28 = v59;
      v30 = *(&v60 + 1);
      v31 = *&v60;
      v32 = *(&v61 + 1);
      v33 = v61;
      v35 = *(&v62 + 1);
      v34 = v62;
      v36 = *(&v63 + 1);
      v37 = *&v63;
      if (!v27)
      {
        if (v56 > 0.0)
        {
          v54 = *(&v62 + 1);
          v55 = *(&v61 + 1);
          [(_TVShelfViewLayout *)self headerSelectionMargin];
          v39 = v38;
          [(_TVShelfViewLayout *)self headerBottomMargin];
          v41 = v40;
          [(_TVMLShelfViewLayout *)self cellMetrics];
          v42 = v39 - (v41 - v57);
          v33 = 0;
          v37 = fmax(v42, 0.0);
          [(_TVShelfViewLayout *)self headerBottomMargin];
          v35 = v54;
          v32 = v55;
          v44 = v56 + v43;
          v29 = v29 + v44;
          v31 = v31 + v44;
          v34 = 0;
        }

        v45 = fmax(v37 - v11, 0.0);
        if (v11 > 0.0)
        {
          v29 = v11 + v29;
          v31 = v11 + v31;
          v37 = v45;
        }
      }

      v46 = v12 > 0.0;
      v47 = --v25 == 0;
      v48 = v12 + v29;
      v49 = v12 + v31;
      if (!v47 || !v46)
      {
        v48 = v29;
        v49 = v31;
      }

      v58[0] = v28;
      *&v58[1] = v48;
      *&v58[2] = v49;
      v50 = fmax(v36 - v12, 0.0);
      v58[3] = v30;
      v58[4] = v33;
      if (!v47 || !v46)
      {
        v50 = v37;
      }

      v58[5] = v32;
      v58[6] = v34;
      v58[7] = v35;
      *&v58[8] = v50;
      *&v58[9] = v36;
      v51 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:v58];
      [v26 addObject:v51];

      --v27;
    }

    while (v25);
  }

  v52 = [v26 copy];

  return v52;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 invalidateShowcase])
  {
    v5 = v4;
    v6 = [(_TVMLShelfViewLayout *)self collectionView];
    v7 = [v6 delegate];
    if ([v7 conformsToProtocol:&unk_287E801C8])
    {
      v8 = [v6 delegate];
    }

    else
    {
      v8 = 0;
    }

    v9 = objc_opt_respondsToSelector();
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(_TVMLShelfViewLayout *)self collectionView];
    v12 = [v11 numberOfSections];

    if (v12 >= 1)
    {
      v13 = 0;
      do
      {
        if (v9)
        {
          [v8 collectionView:v6 layout:self referenceSizeForHeaderInSection:v13];
        }

        else
        {
          [(_TVShelfViewLayout *)self headerReferenceSize];
        }

        if (v14 > 0.0)
        {
          v15 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v13];
          [v10 addObject:v15];
        }

        ++v13;
        v16 = [(_TVMLShelfViewLayout *)self collectionView];
        v17 = [v16 numberOfSections];
      }

      while (v13 < v17);
    }

    [(_TVMLShelfViewLayout *)self setCachedTallestHeaderHeight:-1.0];
    [v5 invalidateSupplementaryElementsOfKind:@"TVShelfLayoutElementKindHeader" atIndexPaths:v10];
  }

  v18.receiver = self;
  v18.super_class = _TVMLShelfViewLayout;
  [(_TVShelfViewLayout *)&v18 invalidateLayoutWithContext:v4];
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = _TVMLShelfViewLayout;
  v4 = [(_TVShelfViewLayout *)&v17 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 representedElementCategory] == 1)
        {
          v10 = [v9 representedElementKind];
          v11 = [v10 isEqualToString:@"TVShelfLayoutElementKindHeader"];

          if (v11)
          {
            [(_TVMLShelfViewLayout *)self showcaseFactor];
            [TVMLUtilities _headerFadeForShowcaseFactor:?];
            [v9 setAlpha:?];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = _TVMLShelfViewLayout;
  v6 = a3;
  v7 = [(_TVShelfViewLayout *)&v10 layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:a4];
  v8 = [v6 isEqualToString:{@"TVShelfLayoutElementKindHeader", v10.receiver, v10.super_class}];

  if (v8)
  {
    [(_TVMLShelfViewLayout *)self showcaseFactor];
    [TVMLUtilities _headerFadeForShowcaseFactor:?];
    [v7 setAlpha:?];
  }

  return v7;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  v31.receiver = self;
  v31.super_class = _TVMLShelfViewLayout;
  [(_TVShelfViewLayout *)&v31 targetContentOffsetForProposedContentOffset:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(_TVMLShelfViewLayout *)self collectionView];
  v9 = [v8 delegate];
  v10 = [v9 indexPathForPreferredFocusedViewInCollectionView:v8];

  if (v10)
  {
    v11 = [v8 layoutAttributesForItemAtIndexPath:v10];
    [v11 frame];
    v13 = v12;
    v15 = v14;

    v16 = [(_TVShelfViewLayout *)self layoutAttributesForItemAtIndexPath:v10];
    [v16 frame];
    v18 = v17;
    v20 = v19;

    [v8 contentOffset];
    v22 = v18 + v20 * 0.5 - (v13 - v21 + v15 * 0.5);
    [v8 contentInset];
    v25 = v24;
    v26 = v18 - v22;
    if (v18 - v22 < v23)
    {
      v22 = v22 - (v23 - (v18 - v22));
    }

    [v8 bounds];
    v28 = v27 - (v18 + v20 - v22);
    if (v28 >= v25)
    {
      v5 = v22;
    }

    else
    {
      v5 = v22 + v25 - v28;
    }
  }

  v29 = v5;
  v30 = v7;
  result.y = v30;
  result.x = v29;
  return result;
}

- (id)_animationForReusableView:(id)a3 toLayoutAttributes:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 1)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74___TVMLShelfViewLayout__animationForReusableView_toLayoutAttributes_type___block_invoke;
    v12[3] = &unk_279D6EFC8;
    v13 = v8;
    v14 = self;
    v15 = v9;
    v10 = [v12 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TVCellMetrics)cellMetrics
{
  v3 = *&self[3].cellInsetAlt.right;
  *&retstr->cellInsetAlt.bottom = *&self[3].cellInsetAlt.left;
  *&retstr->cellMargin.top = v3;
  *&retstr->cellMargin.bottom = *&self[3].cellMargin.left;
  v4 = *&self[3].cellPadding.right;
  *&retstr->cellPadding.bottom = *&self[3].cellPadding.left;
  *&retstr->cellInset.top = v4;
  v5 = *&self[3].cellInset.right;
  *&retstr->cellInset.bottom = *&self[3].cellInset.left;
  *&retstr->cellInsetAlt.top = v5;
  v6 = *&self[3].cellSize.height;
  retstr->cellSize = *&self[2].cellMargin.right;
  *&retstr->cellPadding.top = v6;
  return self;
}

@end