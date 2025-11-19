@interface PUPhotosSharingCollectionViewLayout
- (UIOffset)sharingBadgesOffset;
- (double)_floatingBadgeOffsetForBadgesContainerFrame:(CGFloat)a3 ItemFrame:(CGFloat)a4 visibleItemFrame:(CGFloat)a5;
- (id)_sublayoutForItemLayoutAttributes:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)_floatingBadgeContainerFrameForBadgeContainerFrame:(CGFloat)a3 itemFrame:(CGFloat)a4 visibleItemFrame:(CGFloat)a5;
- (void)invalidateCachedLayout;
- (void)setZoomingCellIndexPath:(id)a3;
@end

@implementation PUPhotosSharingCollectionViewLayout

- (UIOffset)sharingBadgesOffset
{
  horizontal = self->_sharingBadgesOffset.horizontal;
  vertical = self->_sharingBadgesOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Index path nil while getting layout attributes for supplementary view of kind: %@", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = PUPhotosSharingCollectionViewLayout;
  v8 = [(PUPhotosSharingCollectionViewLayout *)&v13 layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = [(PUPhotosSharingCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v7];
  v10 = [(PUPhotosSharingCollectionViewLayout *)self _sublayoutForItemLayoutAttributes:v9];
  if ([v6 isEqualToString:@"PUPhotosSharingSelectionBadgeKind"])
  {
    v11 = [v10 selectionBadgeLayoutAttributes];
  }

  else
  {
    if (![v6 isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
    {
      v8 = 0;
      goto LABEL_12;
    }

    v11 = [v10 optionBadgeLayoutAttributes];
  }

  v8 = v11;
LABEL_12:

LABEL_13:
LABEL_14:

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v9.receiver = self;
  v9.super_class = PUPhotosSharingCollectionViewLayout;
  v4 = a3;
  v5 = [(PUHorizontalTiledCollectionViewLayout *)&v9 layoutAttributesForItemAtIndexPath:v4];
  v6 = [(PUPhotosSharingCollectionViewLayout *)self zoomingCellIndexPath:v9.receiver];
  v7 = [v4 isEqual:v6];

  [v5 setHidden:v7];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = PUPhotosSharingCollectionViewLayout;
  v4 = [(PUHorizontalTiledCollectionViewLayout *)&v16 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [v4 mutableCopy];

  v6 = [v5 count];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 objectAtIndexedSubscript:i];
      v10 = [v9 indexPath];
      v11 = [(PUPhotosSharingCollectionViewLayout *)self zoomingCellIndexPath];
      [v9 setHidden:{objc_msgSend(v10, "isEqual:", v11)}];

      v12 = [(PUPhotosSharingCollectionViewLayout *)self _sublayoutForItemLayoutAttributes:v9];
      v13 = [v12 selectionBadgeLayoutAttributes];
      [v5 addObject:v13];

      v14 = [v12 optionBadgeLayoutAttributes];
      [v5 addObject:v14];
    }
  }

  return v5;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v47 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = PUPhotosSharingCollectionViewLayout;
  v8 = [(PUHorizontalTiledCollectionViewLayout *)&v45 invalidationContextForBoundsChange:?];
  v9 = [(PUPhotosSharingCollectionViewLayout *)self collectionView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v49.origin.x = v11;
  v49.origin.y = v13;
  v49.size.width = v15;
  v49.size.height = v17;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (CGRectIntersectsRect(v49, v53) && ([v8 invalidateCachedLayout] & 1) == 0)
  {
    v50.origin.x = v11;
    v50.origin.y = v13;
    v50.size.width = v15;
    v50.size.height = v17;
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v51 = CGRectUnion(v50, v54);
    v18 = [(PUHorizontalTiledCollectionViewLayout *)self layoutAttributesForItemsInRect:v51.origin.x, v51.origin.y, v51.size.width, v51.size.height];
    if ([v18 count])
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v42;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v42 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v41 + 1) + 8 * i);
            v26 = [v25 indexPath];
            v27 = [(PUPhotosSharingCollectionViewLayout *)self _sublayoutForItemLayoutAttributes:v25];
            [v27 badgesContainerFrame];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            [v27 floatingBadgesContainerFrame];
            v55.origin.x = v36;
            v55.origin.y = v37;
            v55.size.width = v38;
            v55.size.height = v39;
            v52.origin.x = v29;
            v52.origin.y = v31;
            v52.size.width = v33;
            v52.size.height = v35;
            if (!CGRectEqualToRect(v52, v55))
            {
              [v19 addObject:v26];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v22);
      }

      if ([v19 count])
      {
        [v8 invalidateSupplementaryElementsOfKind:@"PUPhotosSharingSelectionBadgeKind" atIndexPaths:v19];
        [v8 invalidateSupplementaryElementsOfKind:@"PUPhotosSharingOptionBadgeKind" atIndexPaths:v19];
      }
    }
  }

  return v8;
}

- (void)invalidateCachedLayout
{
  v4.receiver = self;
  v4.super_class = PUPhotosSharingCollectionViewLayout;
  [(PUHorizontalTiledCollectionViewLayout *)&v4 invalidateCachedLayout];
  cachedItemSublayouts = self->_cachedItemSublayouts;
  self->_cachedItemSublayouts = 0;
}

- (id)_sublayoutForItemLayoutAttributes:(id)a3
{
  v4 = a3;
  if (!self->_cachedItemSublayouts)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedItemSublayouts = self->_cachedItemSublayouts;
    self->_cachedItemSublayouts = v5;
  }

  [v4 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v4 indexPath];
  v16 = [(NSMutableDictionary *)self->_cachedItemSublayouts objectForKey:v15];
  v17 = v16;
  if (v16)
  {
    [(PUPhotosSharingCollectionViewItemSublayout *)v16 itemFrame];
    v75.origin.x = v18;
    v75.origin.y = v19;
    v75.size.width = v20;
    v75.size.height = v21;
    v67.origin.x = v8;
    v67.origin.y = v10;
    v67.size.width = v12;
    v67.size.height = v14;
    if (!CGRectEqualToRect(v67, v75))
    {
      [(NSMutableDictionary *)self->_cachedItemSublayouts removeObjectForKey:v15];

      v17 = 0;
    }
  }

  v22 = [(PUPhotosSharingCollectionViewLayout *)self collectionView];
  v23 = [(PUHorizontalTiledCollectionViewLayout *)self delegate];
  if (!v17)
  {
    v17 = [[PUPhotosSharingCollectionViewItemSublayout alloc] initWithIndexPath:v15 itemFrame:v8, v10, v12, v14];
    [v23 layout:self collectionView:v22 sizeForBadgeViewOfKind:@"PUPhotosSharingSelectionBadgeKind" forItemAtIndexPath:v15];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setSelectionBadgeSize:?];
    [v23 layout:self collectionView:v22 sizeForBadgeViewOfKind:@"PUPhotosSharingOptionBadgeKind" forItemAtIndexPath:v15];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setOptionBadgeSize:?];
    [v23 layout:self collectionView:v22 bottomBadgeInsetforItemAtIndexPath:v15];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setBottomBadgeInset:?];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setBadgesCorner:[(PUPhotosSharingCollectionViewLayout *)self sharingBadgesCorner]];
    [(PUPhotosSharingCollectionViewLayout *)self sharingBadgesOffset];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setBadgesOffset:?];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 prepareSublayout];
    [(NSMutableDictionary *)self->_cachedItemSublayouts setObject:v17 forKey:v15];
  }

  v24 = [(PUPhotosSharingCollectionViewLayout *)self collectionView];
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v68.origin.x = v26;
  v68.origin.y = v28;
  v68.size.width = v30;
  v68.size.height = v32;
  v76.origin.x = v8;
  v76.origin.y = v10;
  v76.size.width = v12;
  v76.size.height = v14;
  v69 = CGRectIntersection(v68, v76);
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  [(PUPhotosSharingCollectionViewItemSublayout *)v17 visibleItemFrame];
  v77.origin.x = v37;
  v77.origin.y = v38;
  v77.size.width = v39;
  v77.size.height = v40;
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  if (!CGRectEqualToRect(v70, v77))
  {
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setVisibleItemFrame:x, y, width, height];
    [v23 layout:self collectionView:v22 itemAtIndexPath:v15 didChangeToVisibleFrame:{x, y, width, height}];
  }

  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  IsNull = CGRectIsNull(v71);
  if (IsNull)
  {
    x = v8;
    y = v10;
  }

  v63 = x;
  v64 = y;
  if (IsNull)
  {
    width = v12;
  }

  rect = width;
  if (IsNull)
  {
    height = v14;
  }

  [(PUPhotosSharingCollectionViewItemSublayout *)v17 badgesContainerFrame];
  [(PUPhotosSharingCollectionViewLayout *)self _floatingBadgeOffsetForBadgesContainerFrame:*&x ItemFrame:*&y visibleItemFrame:*&width, *&height];
  [(PUPhotosSharingCollectionViewItemSublayout *)v17 setFloatingOffset:?];
  v42 = [(PUPhotosSharingCollectionViewItemSublayout *)v17 optionBadgeLayoutAttributes];
  [v42 frame];
  v44 = v43;
  v46 = v45;

  v72.origin.x = v8;
  v72.origin.y = v10;
  v72.size.width = v12;
  v72.size.height = v14;
  v47 = v14;
  v48 = v12;
  MinX = CGRectGetMinX(v72);
  [(PUPhotosSharingCollectionViewItemSublayout *)v17 badgesOffset];
  v51 = MinX + v50;
  v73.origin.x = v8;
  v73.origin.y = v10;
  v73.size.width = v48;
  v73.size.height = v47;
  MinY = CGRectGetMinY(v73);
  [(PUPhotosSharingCollectionViewItemSublayout *)v17 badgesOffset];
  v54 = MinY + v53;
  v55 = [(PUPhotosSharingCollectionViewItemSublayout *)v17 optionBadgeLayoutAttributes];
  [v55 setFrame:{v51, v54, v44, v46}];

  v56 = [(PUPhotosSharingCollectionViewItemSublayout *)v17 selectionBadgeLayoutAttributes];
  v57 = [(PUPhotosSharingCollectionViewItemSublayout *)v17 optionBadgeLayoutAttributes];
  v74.origin.x = v63;
  v74.origin.y = v64;
  v74.size.width = rect;
  v74.size.height = height;
  if (CGRectIsEmpty(v74))
  {
    v58 = 1;
  }

  else
  {
    v59 = [v4 indexPath];
    v60 = [(PUPhotosSharingCollectionViewLayout *)self zoomingCellIndexPath];
    v58 = [v59 isEqual:v60];
  }

  [v56 setHidden:v58];
  [v57 setHidden:v58];
  v61 = [v4 zIndex];
  [v56 setZIndex:v61 + 1];
  [v57 setZIndex:v61 + 1];
  [v56 setAlpha:1.0];
  [v57 setAlpha:1.0];

  return v17;
}

- (double)_floatingBadgeOffsetForBadgesContainerFrame:(CGFloat)a3 ItemFrame:(CGFloat)a4 visibleItemFrame:(CGFloat)a5
{
  v21 = [a1 collectionView];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [a1 collectionView];
  [v30 safeAreaInsets];
  PXEdgeInsetsForEdges();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [a1 _floatingBadgeContainerFrameForBadgeContainerFrame:a2 itemFrame:a3 visibleItemFrame:{a4, a5, a6, a7, a8, a9, v23 + v34, v25 + v32, v27 - (v34 + v38), v29 - (v32 + v36)}];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  if (CGRectIsEmpty(v58))
  {
    [a1 _floatingBadgeContainerFrameForBadgeContainerFrame:a2 itemFrame:a3 visibleItemFrame:{a4, a5, a6, a7, a8, a9, a17, a18, a19, a20}];
    x = v43;
    y = v44;
    width = v45;
    height = v46;
  }

  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = a2;
  v60.origin.y = a3;
  v60.size.width = a4;
  v60.size.height = a5;
  v48 = MinX - CGRectGetMinX(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  CGRectGetMinY(v61);
  v62.origin.y = a3;
  v62.origin.x = a2;
  v62.size.width = a4;
  v62.size.height = a5;
  CGRectGetMinY(v62);
  return v48;
}

- (void)_floatingBadgeContainerFrameForBadgeContainerFrame:(CGFloat)a3 itemFrame:(CGFloat)a4 visibleItemFrame:(CGFloat)a5
{
  *&v31[16] = a8;
  *&v31[24] = a9;
  *v31 = a6;
  *&v31[8] = a7;
  [a1 sharingBadgesOffset];
  v23 = v22;
  v33.origin.x = a10;
  v33.origin.y = a11;
  v33.size.width = a12;
  v33.size.height = a13;
  v24 = CGRectGetMinX(v33) + v23;
  if (a2 >= v24)
  {
    v25 = a2;
  }

  else
  {
    v25 = v24;
  }

  v34.origin.x = a10;
  v34.origin.y = a11;
  v34.size.width = a12;
  v34.size.height = a13;
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  v27 = MaxX - CGRectGetWidth(v35) - v23;
  if (v25 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  CGRectGetMinX(*v31);
  CGRectGetMaxX(*v31);
  v36.origin.x = v28;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetWidth(v36);
}

- (void)setZoomingCellIndexPath:(id)a3
{
  v5 = a3;
  if (self->_zoomingCellIndexPath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_zoomingCellIndexPath, a3);
    [(PUPhotosSharingCollectionViewLayout *)self invalidateLayout];
    v5 = v6;
  }
}

@end