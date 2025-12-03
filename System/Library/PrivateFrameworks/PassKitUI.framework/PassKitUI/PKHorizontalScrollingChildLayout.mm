@interface PKHorizontalScrollingChildLayout
- (CGSize)collectionViewContentSize;
- (PKHorizontalScrollingChildLayout)init;
- (PKHorizontalScrollingChildLayoutDataSource)dataSource;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)_adjustItems:(id)items withLateralMove:(double)move;
- (void)prepareLayout;
- (void)setAlphaTransition:(double)transition;
- (void)setVisible:(BOOL)visible;
@end

@implementation PKHorizontalScrollingChildLayout

- (PKHorizontalScrollingChildLayout)init
{
  v10.receiver = self;
  v10.super_class = PKHorizontalScrollingChildLayout;
  v2 = [(PKHorizontalScrollingChildLayout *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributesPerIndexPath = v2->_attributesPerIndexPath;
    v2->_attributesPerIndexPath = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    headersPerIndexPath = v2->_headersPerIndexPath;
    v2->_headersPerIndexPath = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    footersPerIndexPath = v2->_footersPerIndexPath;
    v2->_footersPerIndexPath = v7;
  }

  return v2;
}

- (void)setVisible:(BOOL)visible
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    [(PKHorizontalScrollingChildLayout *)self invalidateLayout];
  }
}

- (void)setAlphaTransition:(double)transition
{
  if (self->_alphaTransition != transition)
  {
    lastDrawnAlpha = self->_lastDrawnAlpha;
    self->_alphaTransition = transition;
    if (transition == 1.0 || transition == 0.0 || vabdd_f64(transition, lastDrawnAlpha) > 0.03 || !self->_isLowEndDevice)
    {
      self->_lastDrawnAlpha = transition;
      [(PKHorizontalScrollingChildLayout *)self invalidateLayout];
    }
  }
}

- (CGSize)collectionViewContentSize
{
  width = self->_currentSize.width;
  height = self->_currentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)prepareLayout
{
  collectionView = [(PKHorizontalScrollingChildLayout *)self collectionView];
  delegate = [collectionView delegate];
  v5 = delegate;
  if (collectionView && delegate)
  {
    [(NSMutableDictionary *)self->_headersPerIndexPath removeAllObjects];
    [(NSMutableDictionary *)self->_footersPerIndexPath removeAllObjects];
    [(NSMutableDictionary *)self->_attributesPerIndexPath removeAllObjects];
    [collectionView frame];
    v7 = v6;
    p_currentSize = &self->_currentSize;
    self->_currentSize.width = v6;
    self->_currentSize.height = 0.0;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([collectionView numberOfSections] >= 1)
    {
      v10 = 0;
      v11 = *(MEMORY[0x1E695F060] + 8);
      v68 = *MEMORY[0x1E695F060];
      v65 = *MEMORY[0x1E69DDC08];
      v64 = *MEMORY[0x1E69DDC00];
      v69 = v5;
      v66 = v11;
      do
      {
        [v5 collectionView:collectionView layout:self insetForSectionAtIndex:v10];
        v13 = v12;
        v15 = v14;
        v67 = v16;
        v18 = v17;
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        [WeakRetained lineSpacingForSection:v10];
        v70 = v20;

        v21 = v13 + p_currentSize->height;
        p_currentSize->height = v21;
        [v5 collectionView:collectionView layout:self referenceSizeForHeaderInSection:v10];
        v24 = v23;
        if (v23 == v68 && v22 == v11)
        {
          v26 = v11;
          v32 = v15;
        }

        else
        {
          v26 = v22;
          if (v10)
          {
            v21 = v21 + 8.0;
          }

          v27 = MEMORY[0x1E69DC858];
          v28 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v10];
          v29 = [v27 layoutAttributesForSupplementaryViewOfKind:v65 withIndexPath:v28];

          [v29 setSize:{v24, v26}];
          [v29 setFrame:{v15, v21, v24, v26}];
          headersPerIndexPath = self->_headersPerIndexPath;
          v31 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v10];
          [(NSMutableDictionary *)headersPerIndexPath setObject:v29 forKey:v31];

          [v9 addObject:v29];
          v32 = v15 + v24;
        }

        v33 = collectionView;
        v34 = [collectionView numberOfItemsInSection:v10];
        if (v34)
        {
          v35 = v34;
          for (i = 0; i != v35; ++i)
          {
            v37 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:v10];
            v38 = [(NSMutableDictionary *)self->_attributesPerIndexPath objectForKey:v37];
            v39 = v38;
            if (v38)
            {
              [v38 size];
            }

            else
            {
              [v69 collectionView:v33 layout:self sizeForItemAtIndexPath:v37];
            }

            v42 = v40;
            v43 = v41;
            if (v7 - v32 - v18 >= v40)
            {
              if (v32 == v15)
              {
                v44 = v32;
              }

              else
              {
                v44 = v32 + 8.0;
              }
            }

            else
            {
              if (i | v10)
              {
                v21 = v21 + v70 + v26;
              }

              else
              {
                v21 = v21 + v70 + v26 + 2.0;
              }

              PKFloatRoundToPixel();
              [(PKHorizontalScrollingChildLayout *)self _adjustItems:v9 withLateralMove:?];
              [v9 removeAllObjects];
              v44 = v15;
            }

            v45 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v37];
            [v45 setSize:{v42, v43}];
            [v45 setFrame:{v44, v21, v42, v43}];
            [(NSMutableDictionary *)self->_attributesPerIndexPath setObject:v45 forKey:v37];
            [v9 addObject:v45];
            v32 = v42 + v44;

            v26 = v43;
          }
        }

        else
        {
          v43 = v26;
        }

        v46 = v7 - v15 - v18;
        v5 = v69;
        collectionView = v33;
        [v69 collectionView:v33 layout:self referenceSizeForFooterInSection:v10];
        v49 = v47;
        v50 = v48;
        if (v47 == v68 && v48 == v66)
        {
          p_currentSize = &self->_currentSize;
        }

        else
        {
          p_currentSize = &self->_currentSize;
          if (v46 - v32 >= v47)
          {
            if (v32 == v15)
            {
              v15 = v32;
            }

            else
            {
              v15 = v32 + 8.0;
            }
          }

          else
          {
            v51 = objc_loadWeakRetained(&self->_dataSource);
            v52 = [v51 horizontalAlignmentForSection:v10];

            if ((v52 | 2) == 3)
            {
              PKFloatRoundToPixel();
            }

            else
            {
              v53 = 0.0;
            }

            v21 = v70 + v43 + v21;
            [(PKHorizontalScrollingChildLayout *)self _adjustItems:v9 withLateralMove:v53];
            [v9 removeAllObjects];
          }

          v54 = MEMORY[0x1E69DC858];
          v55 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v10];
          v56 = [v54 layoutAttributesForSupplementaryViewOfKind:v64 withIndexPath:v55];

          [v56 setSize:{v49, v50}];
          [v56 setFrame:{v15, v21, v49, v50}];
          footersPerIndexPath = self->_footersPerIndexPath;
          v58 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v10];
          [(NSMutableDictionary *)footersPerIndexPath setObject:v56 forKey:v58];

          [v9 addObject:v56];
          v43 = v50;
        }

        if ([v9 count])
        {
          v59 = objc_loadWeakRetained(&self->_dataSource);
          v60 = [v59 horizontalAlignmentForSection:v10];

          if ((v60 | 2) == 3)
          {
            PKFloatRoundToPixel();
            v62 = v61;
          }

          else
          {
            v62 = 0.0;
          }

          v63 = [v9 copy];
          [(PKHorizontalScrollingChildLayout *)self _adjustItems:v63 withLateralMove:v62];

          [v9 removeAllObjects];
        }

        p_currentSize->height = v67 + v43 + v21;
        ++v10;
        v11 = v66;
      }

      while (v10 < [collectionView numberOfSections]);
    }

    p_currentSize->height = p_currentSize->height + 16.0;
    v71.receiver = self;
    v71.super_class = PKHorizontalScrollingChildLayout;
    [(PKHorizontalScrollingChildLayout *)&v71 prepareLayout];
  }
}

- (void)_adjustItems:(id)items withLateralMove:(double)move
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 frame];
        [v10 setFrame:v11 + move];
      }

      v7 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = [(NSMutableDictionary *)self->_attributesPerIndexPath objectForKey:path];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  indexPath = [v4 indexPath];
  [WeakRetained alphaForIndexPath:indexPath visible:self->_visible transition:self->_alphaTransition];
  [v4 setAlpha:?];

  return v4;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = self->_attributesPerIndexPath;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_attributesPerIndexPath objectForKey:*(*(&v42 + 1) + 8 * i)];
        [v13 frame];
        v54.origin.x = x;
        v54.origin.y = y;
        v54.size.width = width;
        v54.size.height = height;
        if (CGRectIntersectsRect(v51, v54))
        {
          WeakRetained = objc_loadWeakRetained(&self->_dataSource);
          indexPath = [v13 indexPath];
          [WeakRetained alphaForIndexPath:indexPath visible:self->_visible transition:self->_alphaTransition];
          [v13 setAlpha:?];

          [v33 addObject:v13];
        }
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v10);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = self->_headersPerIndexPath;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(NSMutableDictionary *)self->_headersPerIndexPath objectForKey:*(*(&v38 + 1) + 8 * j)];
        [v21 frame];
        v55.origin.x = x;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        if (CGRectIntersectsRect(v52, v55))
        {
          v22 = objc_loadWeakRetained(&self->_dataSource);
          indexPath2 = [v21 indexPath];
          [v22 alphaForIndexPath:indexPath2 visible:self->_visible transition:self->_alphaTransition];
          [v21 setAlpha:?];

          [v33 addObject:v21];
        }
      }

      v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v18);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = self->_footersPerIndexPath;
  v25 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [(NSMutableDictionary *)self->_footersPerIndexPath objectForKey:*(*(&v34 + 1) + 8 * k)];
        [v29 frame];
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        if (CGRectIntersectsRect(v53, v56))
        {
          v30 = objc_loadWeakRetained(&self->_dataSource);
          indexPath3 = [v29 indexPath];
          [v30 alphaForIndexPath:indexPath3 visible:self->_visible transition:self->_alphaTransition];
          [v29 setAlpha:?];

          [v33 addObject:v29];
        }
      }

      v26 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v26);
  }

  return v33;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if (*MEMORY[0x1E69DDC08] == kindCopy)
  {
    v9 = &OBJC_IVAR___PKHorizontalScrollingChildLayout__headersPerIndexPath;
  }

  else
  {
    if (*MEMORY[0x1E69DDC00] != kindCopy)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v9 = &OBJC_IVAR___PKHorizontalScrollingChildLayout__footersPerIndexPath;
  }

  v8 = [*(&self->super.super.isa + *v9) objectForKey:pathCopy];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  indexPath = [v8 indexPath];
  [WeakRetained alphaForIndexPath:indexPath visible:self->_visible transition:self->_alphaTransition];
  [v8 setAlpha:?];

LABEL_7:

  return v8;
}

- (PKHorizontalScrollingChildLayoutDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end