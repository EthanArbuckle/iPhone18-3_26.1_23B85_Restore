@interface PUPhotosSharingCollectionViewLayout
- (UIOffset)sharingBadgesOffset;
- (double)_floatingBadgeOffsetForBadgesContainerFrame:(CGFloat)frame ItemFrame:(CGFloat)itemFrame visibleItemFrame:(CGFloat)visibleItemFrame;
- (id)_sublayoutForItemLayoutAttributes:(id)attributes;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)_floatingBadgeContainerFrameForBadgeContainerFrame:(CGFloat)frame itemFrame:(CGFloat)itemFrame visibleItemFrame:(CGFloat)visibleItemFrame;
- (void)invalidateCachedLayout;
- (void)setZoomingCellIndexPath:(id)path;
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

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  pathCopy = path;
  if (!pathCopy)
  {
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = kindCopy;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Index path nil while getting layout attributes for supplementary view of kind: %@", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = PUPhotosSharingCollectionViewLayout;
  v8 = [(PUPhotosSharingCollectionViewLayout *)&v13 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = [(PUPhotosSharingCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
  v10 = [(PUPhotosSharingCollectionViewLayout *)self _sublayoutForItemLayoutAttributes:v9];
  if ([kindCopy isEqualToString:@"PUPhotosSharingSelectionBadgeKind"])
  {
    selectionBadgeLayoutAttributes = [v10 selectionBadgeLayoutAttributes];
  }

  else
  {
    if (![kindCopy isEqualToString:@"PUPhotosSharingOptionBadgeKind"])
    {
      v8 = 0;
      goto LABEL_12;
    }

    selectionBadgeLayoutAttributes = [v10 optionBadgeLayoutAttributes];
  }

  v8 = selectionBadgeLayoutAttributes;
LABEL_12:

LABEL_13:
LABEL_14:

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = PUPhotosSharingCollectionViewLayout;
  pathCopy = path;
  v5 = [(PUHorizontalTiledCollectionViewLayout *)&v9 layoutAttributesForItemAtIndexPath:pathCopy];
  v6 = [(PUPhotosSharingCollectionViewLayout *)self zoomingCellIndexPath:v9.receiver];
  v7 = [pathCopy isEqual:v6];

  [v5 setHidden:v7];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v16.receiver = self;
  v16.super_class = PUPhotosSharingCollectionViewLayout;
  v4 = [(PUHorizontalTiledCollectionViewLayout *)&v16 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [v4 mutableCopy];

  v6 = [v5 count];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 objectAtIndexedSubscript:i];
      indexPath = [v9 indexPath];
      zoomingCellIndexPath = [(PUPhotosSharingCollectionViewLayout *)self zoomingCellIndexPath];
      [v9 setHidden:{objc_msgSend(indexPath, "isEqual:", zoomingCellIndexPath)}];

      v12 = [(PUPhotosSharingCollectionViewLayout *)self _sublayoutForItemLayoutAttributes:v9];
      selectionBadgeLayoutAttributes = [v12 selectionBadgeLayoutAttributes];
      [v5 addObject:selectionBadgeLayoutAttributes];

      optionBadgeLayoutAttributes = [v12 optionBadgeLayoutAttributes];
      [v5 addObject:optionBadgeLayoutAttributes];
    }
  }

  return v5;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v47 = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = PUPhotosSharingCollectionViewLayout;
  v8 = [(PUHorizontalTiledCollectionViewLayout *)&v45 invalidationContextForBoundsChange:?];
  collectionView = [(PUPhotosSharingCollectionViewLayout *)self collectionView];
  [collectionView bounds];
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
            indexPath = [v25 indexPath];
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
              [v19 addObject:indexPath];
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

- (id)_sublayoutForItemLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (!self->_cachedItemSublayouts)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedItemSublayouts = self->_cachedItemSublayouts;
    self->_cachedItemSublayouts = v5;
  }

  [attributesCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  indexPath = [attributesCopy indexPath];
  v16 = [(NSMutableDictionary *)self->_cachedItemSublayouts objectForKey:indexPath];
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
      [(NSMutableDictionary *)self->_cachedItemSublayouts removeObjectForKey:indexPath];

      v17 = 0;
    }
  }

  collectionView = [(PUPhotosSharingCollectionViewLayout *)self collectionView];
  delegate = [(PUHorizontalTiledCollectionViewLayout *)self delegate];
  if (!v17)
  {
    v17 = [[PUPhotosSharingCollectionViewItemSublayout alloc] initWithIndexPath:indexPath itemFrame:v8, v10, v12, v14];
    [delegate layout:self collectionView:collectionView sizeForBadgeViewOfKind:@"PUPhotosSharingSelectionBadgeKind" forItemAtIndexPath:indexPath];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setSelectionBadgeSize:?];
    [delegate layout:self collectionView:collectionView sizeForBadgeViewOfKind:@"PUPhotosSharingOptionBadgeKind" forItemAtIndexPath:indexPath];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setOptionBadgeSize:?];
    [delegate layout:self collectionView:collectionView bottomBadgeInsetforItemAtIndexPath:indexPath];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setBottomBadgeInset:?];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setBadgesCorner:[(PUPhotosSharingCollectionViewLayout *)self sharingBadgesCorner]];
    [(PUPhotosSharingCollectionViewLayout *)self sharingBadgesOffset];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 setBadgesOffset:?];
    [(PUPhotosSharingCollectionViewItemSublayout *)v17 prepareSublayout];
    [(NSMutableDictionary *)self->_cachedItemSublayouts setObject:v17 forKey:indexPath];
  }

  collectionView2 = [(PUPhotosSharingCollectionViewLayout *)self collectionView];
  [collectionView2 bounds];
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
    [delegate layout:self collectionView:collectionView itemAtIndexPath:indexPath didChangeToVisibleFrame:{x, y, width, height}];
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
  optionBadgeLayoutAttributes = [(PUPhotosSharingCollectionViewItemSublayout *)v17 optionBadgeLayoutAttributes];
  [optionBadgeLayoutAttributes frame];
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
  optionBadgeLayoutAttributes2 = [(PUPhotosSharingCollectionViewItemSublayout *)v17 optionBadgeLayoutAttributes];
  [optionBadgeLayoutAttributes2 setFrame:{v51, v54, v44, v46}];

  selectionBadgeLayoutAttributes = [(PUPhotosSharingCollectionViewItemSublayout *)v17 selectionBadgeLayoutAttributes];
  optionBadgeLayoutAttributes3 = [(PUPhotosSharingCollectionViewItemSublayout *)v17 optionBadgeLayoutAttributes];
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
    indexPath2 = [attributesCopy indexPath];
    zoomingCellIndexPath = [(PUPhotosSharingCollectionViewLayout *)self zoomingCellIndexPath];
    v58 = [indexPath2 isEqual:zoomingCellIndexPath];
  }

  [selectionBadgeLayoutAttributes setHidden:v58];
  [optionBadgeLayoutAttributes3 setHidden:v58];
  zIndex = [attributesCopy zIndex];
  [selectionBadgeLayoutAttributes setZIndex:zIndex + 1];
  [optionBadgeLayoutAttributes3 setZIndex:zIndex + 1];
  [selectionBadgeLayoutAttributes setAlpha:1.0];
  [optionBadgeLayoutAttributes3 setAlpha:1.0];

  return v17;
}

- (double)_floatingBadgeOffsetForBadgesContainerFrame:(CGFloat)frame ItemFrame:(CGFloat)itemFrame visibleItemFrame:(CGFloat)visibleItemFrame
{
  collectionView = [self collectionView];
  [collectionView bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  collectionView2 = [self collectionView];
  [collectionView2 safeAreaInsets];
  PXEdgeInsetsForEdges();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [self _floatingBadgeContainerFrameForBadgeContainerFrame:a2 itemFrame:frame visibleItemFrame:{itemFrame, visibleItemFrame, a6, a7, a8, a9, v23 + v34, v25 + v32, v27 - (v34 + v38), v29 - (v32 + v36)}];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  if (CGRectIsEmpty(v58))
  {
    [self _floatingBadgeContainerFrameForBadgeContainerFrame:a2 itemFrame:frame visibleItemFrame:{itemFrame, visibleItemFrame, a6, a7, a8, a9, a17, a18, a19, a20}];
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
  v60.origin.y = frame;
  v60.size.width = itemFrame;
  v60.size.height = visibleItemFrame;
  v48 = MinX - CGRectGetMinX(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  CGRectGetMinY(v61);
  v62.origin.y = frame;
  v62.origin.x = a2;
  v62.size.width = itemFrame;
  v62.size.height = visibleItemFrame;
  CGRectGetMinY(v62);
  return v48;
}

- (void)_floatingBadgeContainerFrameForBadgeContainerFrame:(CGFloat)frame itemFrame:(CGFloat)itemFrame visibleItemFrame:(CGFloat)visibleItemFrame
{
  *&v31[16] = a8;
  *&v31[24] = a9;
  *v31 = a6;
  *&v31[8] = a7;
  [self sharingBadgesOffset];
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
  v35.origin.y = frame;
  v35.size.width = itemFrame;
  v35.size.height = visibleItemFrame;
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
  v36.origin.y = frame;
  v36.size.width = itemFrame;
  v36.size.height = visibleItemFrame;
  CGRectGetWidth(v36);
}

- (void)setZoomingCellIndexPath:(id)path
{
  pathCopy = path;
  if (self->_zoomingCellIndexPath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_zoomingCellIndexPath, path);
    [(PUPhotosSharingCollectionViewLayout *)self invalidateLayout];
    pathCopy = v6;
  }
}

@end