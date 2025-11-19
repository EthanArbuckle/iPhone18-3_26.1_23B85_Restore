@interface _TVStackViewFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)contentSize;
- (_TVStackViewFlowLayout)init;
- (double)_computeShowcaseFactorForContentOffset:(CGPoint)a3;
- (id)_oldLayoutAttributesForItemAtIndexPath:(id)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)_prepareSectionMetrics;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
- (void)setSupplementaryCellLayoutAttributes:(id)a3;
@end

@implementation _TVStackViewFlowLayout

- (_TVStackViewFlowLayout)init
{
  v3.receiver = self;
  v3.super_class = _TVStackViewFlowLayout;
  result = [(_TVStackViewFlowLayout *)&v3 init];
  if (result)
  {
    result->_supplementaryCellSection = 0x7FFFFFFFFFFFFFFFLL;
    result->_showcaseFactor = NAN;
  }

  return result;
}

- (void)setSupplementaryCellLayoutAttributes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  supplementaryCellLayoutAttributes = self->_supplementaryCellLayoutAttributes;
  self->_supplementaryCellLayoutAttributes = v4;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_supplementaryCellLayoutAttributes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setZIndex:{0, v12}];
        [(_TVStackViewFlowLayout *)self showcaseFactor];
        [v11 setShowcaseFactor:?];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)prepareLayout
{
  v3 = [(_TVStackViewFlowLayout *)self collectionView];
  obj = [v3 delegate];

  WeakRetained = objc_loadWeakRetained(&self->_stackViewDelegateFlowLayout);
  if (WeakRetained != obj)
  {
    if ([obj conformsToProtocol:&unk_287EA0E68])
    {
      v5 = objc_storeWeak(&self->_stackViewDelegateFlowLayout, obj);
      self->_stackViewDelegateFlowLayoutFlags.hasShowcaseFactorDidChange = objc_opt_respondsToSelector() & 1;
    }

    else
    {
      objc_storeWeak(&self->_stackViewDelegateFlowLayout, 0);
      self->_stackViewDelegateFlowLayoutFlags.hasShowcaseFactorDidChange = 0;
    }
  }

  showcaseFactor = self->_showcaseFactor;
  v7 = [(_TVStackViewFlowLayout *)self collectionView];
  [v7 contentOffset];
  [(_TVStackViewFlowLayout *)self _computeShowcaseFactorForContentOffset:?];
  self->_showcaseFactor = v8;

  if (showcaseFactor != self->_showcaseFactor && self->_stackViewDelegateFlowLayoutFlags.hasShowcaseFactorDidChange)
  {
    v9 = objc_loadWeakRetained(&self->_stackViewDelegateFlowLayout);
    v10 = [(_TVStackViewFlowLayout *)self collectionView];
    [v9 collectionView:v10 showcaseFactorDidChangeForLayout:self];
  }

  v11 = [(_TVStackViewFlowLayout *)self collectionView];
  [v11 bounds];
  Width = CGRectGetWidth(v19);

  if (self->_lastLayoutWidth != Width)
  {
    self->_lastLayoutWidth = Width;
    sectionCellLayoutAttributes = self->_sectionCellLayoutAttributes;
    self->_sectionCellLayoutAttributes = 0;
  }

  v14 = [(_TVStackViewFlowLayout *)self sectionCellLayoutAttributes];

  if (!v14)
  {
    v15 = [(_TVStackViewFlowLayout *)self onPrepareLayout];

    if (v15)
    {
      v16 = [(_TVStackViewFlowLayout *)self onPrepareLayout];
      (v16)[2](v16, self);
    }

    [(_TVStackViewFlowLayout *)self _prepareSectionMetrics];
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  [(_TVStackViewFlowLayout *)self _computeShowcaseFactorForContentOffset:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  [(_TVStackViewFlowLayout *)self showcaseFactor];
  return v5 != v6;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v6 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [(_TVStackViewFlowLayout *)self _computeShowcaseFactorForContentOffset:x, y];
  v8 = v7;
  [(_TVStackViewFlowLayout *)self showcaseFactor];
  if (v8 != v9)
  {
    [v6 setInvalidateSectionMetrics:1];
  }

  return v6;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  if (([v4 invalidateEverything] & 1) != 0 || objc_msgSend(v4, "invalidateDataSourceCounts"))
  {
    if ([v4 invalidateDataSourceCounts])
    {
      v5 = [(_TVStackViewFlowLayout *)self sectionCellLayoutAttributes];
      oldSectionCellLayoutAttributes = self->_oldSectionCellLayoutAttributes;
      self->_oldSectionCellLayoutAttributes = v5;
    }

    [(_TVStackViewFlowLayout *)self setSectionCellLayoutAttributes:0];
    [(_TVStackViewFlowLayout *)self setContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(_TVStackViewFlowLayout *)self setSupplementaryCellSection:0x7FFFFFFFFFFFFFFFLL];
    [(_TVStackViewFlowLayout *)self setSupplementaryCellLayoutAttributes:0];
  }

  else if ([v4 invalidateSectionMetrics])
  {
    [(_TVStackViewFlowLayout *)self setSectionCellLayoutAttributes:0];
    [(_TVStackViewFlowLayout *)self setContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  }

  v7.receiver = self;
  v7.super_class = _TVStackViewFlowLayout;
  [(_TVStackViewFlowLayout *)&v7 invalidateLayoutWithContext:v4];
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v43 = *MEMORY[0x277D85DE8];
  if (CGRectGetMinY(a3) == 0.0)
  {
    v8 = [(_TVStackViewFlowLayout *)self collectionView];
    [v8 contentInset];
    v10 = v9;

    y = -v10;
    height = height + v10;
  }

  v11 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [(_TVStackViewFlowLayout *)self supplementaryCellLayoutAttributes];
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        [v17 frame];
        v47.origin.x = v18;
        v47.origin.y = v19;
        v47.size.width = v20;
        v47.size.height = v21;
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        if (CGRectIntersectsRect(v45, v47))
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v14);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = [(_TVStackViewFlowLayout *)self sectionCellLayoutAttributes];
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v33 + 1) + 8 * j);
        [v27 frame];
        v48.origin.x = v28;
        v48.origin.y = v29;
        v48.size.width = v30;
        v48.size.height = v31;
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        if (CGRectIntersectsRect(v46, v48))
        {
          [v11 addObject:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v24);
  }

  return v11;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 section];
  if (v5 == [(_TVStackViewFlowLayout *)self supplementaryCellSection])
  {
    [(_TVStackViewFlowLayout *)self supplementaryCellLayoutAttributes];
  }

  else
  {
    [(_TVStackViewFlowLayout *)self sectionCellLayoutAttributes];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 indexPath];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v7;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = self;
  v45.receiver = self;
  v45.super_class = _TVStackViewFlowLayout;
  [(_TVStackViewFlowLayout *)&v45 prepareForCollectionViewUpdates:v4];
  v5 = [MEMORY[0x277CCAB58] indexSet];
  v6 = [MEMORY[0x277CCAB58] indexSet];
  v40 = [MEMORY[0x277CBEB38] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        if (![v12 updateAction])
        {
          v13 = [v12 indexPathAfterUpdate];
          v14 = [v13 section];
          v15 = v5;
          goto LABEL_10;
        }

        if ([v12 updateAction] == 1)
        {
          v13 = [v12 indexPathBeforeUpdate];
          v14 = [v13 section];
          v15 = v6;
LABEL_10:
          [v15 addIndex:v14];
LABEL_11:

          goto LABEL_12;
        }

        if ([v12 updateAction] == 3)
        {
          v16 = MEMORY[0x277CCABB0];
          v13 = [v12 indexPathBeforeUpdate];
          v17 = [v16 numberWithInteger:{objc_msgSend(v13, "section")}];
          v18 = MEMORY[0x277CCABB0];
          v19 = [v12 indexPathAfterUpdate];
          v20 = [v18 numberWithInteger:{objc_msgSend(v19, "section")}];
          [v40 setObject:v17 forKeyedSubscript:v20];

          goto LABEL_11;
        }

LABEL_12:
        ++v11;
      }

      while (v9 != v11);
      v21 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
      v9 = v21;
    }

    while (v21);
  }

  v22 = [objc_alloc(MEMORY[0x277D1B060]) initWithAddedIndexes:v5 removedIndexes:v6 movedIndexesByNewIndex:v40 updatedIndexesByNewIndex:0];
  changeSet = v39->_changeSet;
  v39->_changeSet = v22;

  v24 = [(_TVStackViewFlowLayout *)v39 collectionView];
  [v24 contentOffset];
  v39->_initialContentOffset.x = v25;
  v39->_initialContentOffset.y = v26;

  v27 = [(_TVStackViewFlowLayout *)v39 collectionView];
  v28 = [v27 dataSource];
  v29 = [(_TVStackViewFlowLayout *)v39 collectionView];
  v30 = [v28 numberOfSectionsInCollectionView:v29];

  v31 = [v5 count];
  v39->_isFullReplace = v31 == v30 - 1;
  if (v31 != v30 - 1)
  {
    v32 = [MEMORY[0x277CCAB58] indexSet];
    v33 = [v5 lastIndex];
    if (v33 != 0x7FFFFFFFFFFFFFFFLL && v33 == v30 - 2)
    {
      v34 = v30 - 3;
      do
      {
        [v32 addIndex:v34 + 1];
        v35 = [v5 indexLessThanIndex:v34 + 1];
      }

      while (v35 != 0x7FFFFFFFFFFFFFFFLL && v34-- == v35);
    }

    v37 = [v32 copy];
    indexesAddedAtEnd = v39->_indexesAddedAtEnd;
    v39->_indexesAddedAtEnd = v37;
  }
}

- (void)finalizeCollectionViewUpdates
{
  v6.receiver = self;
  v6.super_class = _TVStackViewFlowLayout;
  [(_TVStackViewFlowLayout *)&v6 finalizeCollectionViewUpdates];
  oldSectionCellLayoutAttributes = self->_oldSectionCellLayoutAttributes;
  self->_oldSectionCellLayoutAttributes = 0;

  changeSet = self->_changeSet;
  self->_changeSet = 0;

  self->_initialContentOffset = *MEMORY[0x277CBF348];
  indexesAddedAtEnd = self->_indexesAddedAtEnd;
  self->_indexesAddedAtEnd = 0;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = -[IKChangeSet oldIndexForNewIndex:](self->_changeSet, "oldIndexForNewIndex:", [v4 section]);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(_TVStackViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v4];
    v7 = [v6 copy];

    [v7 setAlpha:0.0];
    if (!self->_isFullReplace && !-[NSIndexSet containsIndex:](self->_indexesAddedAtEnd, "containsIndex:", [v4 section]))
    {
      [v7 frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(_TVStackViewFlowLayout *)self collectionView];
      v17 = [v16 effectiveUserInterfaceLayoutDirection];

      if (v17)
      {
        v18 = -1.0;
      }

      else
      {
        v18 = 1.0;
      }

      v19 = [(_TVStackViewFlowLayout *)self collectionView];
      [v19 bounds];
      v21 = v9 + v18 * v20;

      v22 = [(_TVStackViewFlowLayout *)self collectionView];
      [v22 contentOffset];
      v24 = v23;

      v25 = v11 - (v24 - self->_initialContentOffset.y);
      [v7 setAlpha:1.0];
      [v7 setFrame:{v21, v25, v13, v15}];
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v5];
    v7 = [(_TVStackViewFlowLayout *)self _oldLayoutAttributesForItemAtIndexPath:v26];
  }

  v27 = TVMLKitLogObject;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = @"NA";
    }

    else
    {
      v29 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    }

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "section")}];
    [v7 frame];
    v32 = v31;
    [v7 frame];
    v34 = 138413058;
    v35 = v29;
    v36 = 2112;
    v37 = v30;
    v38 = 2048;
    v39 = v32;
    v40 = 2048;
    v41 = v33;
    _os_log_debug_impl(&dword_26CD9A000, v27, OS_LOG_TYPE_DEBUG, "stackUpdate: appearing %@ - %@ initial {%lf, %lf}", &v34, 0x2Au);

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
    }
  }

  return v7;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = -[IKChangeSet newIndexForOldIndex:](self->_changeSet, "newIndexForOldIndex:", [v4 section]);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(_TVStackViewFlowLayout *)self _oldLayoutAttributesForItemAtIndexPath:v4];
    v7 = [v6 copy];

    [v7 setAlpha:0.0];
    if (!self->_isFullReplace)
    {
      CGAffineTransformMakeScale(&v21, 1.0, 0.1);
      [v7 setTransform:&v21];
      if (-[IKChangeSet oldIndexForNewIndex:](self->_changeSet, "oldIndexForNewIndex:", [v4 section]) != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v7 center];
        v9 = v8;
        v11 = v10;
        [v7 bounds];
        [v7 setCenter:{v9, v11 + v12 * -0.9 * 0.5}];
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v5];
    v7 = [(_TVStackViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v13];
  }

  v14 = TVMLKitLogObject;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "section")}];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = @"NA";
    }

    else
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    }

    [v7 frame];
    v19 = v18;
    [v7 frame];
    LODWORD(v21.a) = 138413058;
    *(&v21.a + 4) = v16;
    WORD2(v21.b) = 2112;
    *(&v21.b + 6) = v17;
    HIWORD(v21.c) = 2048;
    v21.d = v19;
    LOWORD(v21.tx) = 2048;
    *(&v21.tx + 2) = v20;
    _os_log_debug_impl(&dword_26CD9A000, v14, OS_LOG_TYPE_DEBUG, "stackUpdate: disappearing %@ - %@ final {%lf, %lf}", &v21, 0x2Au);
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
    }
  }

  return v7;
}

- (id)_oldLayoutAttributesForItemAtIndexPath:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_oldSectionCellLayoutAttributes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 indexPath];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_prepareSectionMetrics
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(_TVStackViewFlowLayout *)self collectionView];
  v4 = [v3 numberOfSections];
  [v3 bounds];
  v32 = v5;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  if (v4 < 1)
  {
    v9 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      if (v7 == [(_TVStackViewFlowLayout *)self supplementaryCellSection])
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = [(_TVStackViewFlowLayout *)self supplementaryCellLayoutAttributes];
        v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v34;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v34 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v33 + 1) + 8 * i) frame];
              Width = CGRectGetWidth(v39);
              if (v8 < Width)
              {
                v8 = Width;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v12);
        }
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_stackViewDelegateFlowLayout);
        [WeakRetained collectionView:v3 layout:self insetForSectionAtIndex:v7];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v25 = objc_loadWeakRetained(&self->_stackViewDelegateFlowLayout);
        [v25 collectionView:v3 layout:self sizeForSectionAtIndex:v7];
        v27 = v26;
        v29 = v28;

        v30 = v24 + v20 + v27;
        v10 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v7];
        v31 = [(UICollectionViewLayoutAttributes *)_TVStackViewFlowLayoutAttributes layoutAttributesForCellWithIndexPath:v10];
        [v31 setZIndex:1];
        [v31 setFrame:{floor((v32 - v30) * 0.5), v9 + v18, v27, v29}];
        [(_TVStackViewFlowLayout *)self showcaseFactor];
        [v31 setShowcaseFactor:?];
        [v6 addObject:v31];
        if (v8 < v30)
        {
          v8 = v30;
        }

        v9 = v9 + v22 + v18 + v29;
      }

      ++v7;
    }

    while (v7 != v4);
  }

  [(_TVStackViewFlowLayout *)self setContentSize:v8, v9];
  [(_TVStackViewFlowLayout *)self setSectionCellLayoutAttributes:v6];
}

- (double)_computeShowcaseFactorForContentOffset:(CGPoint)a3
{
  y = a3.y;
  [(_TVStackViewFlowLayout *)self showcaseHeight];
  v6 = v5;
  v7 = [(_TVStackViewFlowLayout *)self collectionView];
  [v7 contentInset];
  v9 = v8;

  result = 0.0;
  v11 = 0.0;
  if (v6 > 0.0)
  {
    v12 = y + v9;
    v11 = 1.0;
    if (y + v9 > 0.0)
    {
      v11 = 0.0;
      if (v12 < v6)
      {
        v11 = (v6 - v12) / v6;
      }
    }
  }

  v13 = fmin(v11 * 1.005 + -0.0025, 1.0);
  if (v13 >= 0.0)
  {
    return v13;
  }

  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end