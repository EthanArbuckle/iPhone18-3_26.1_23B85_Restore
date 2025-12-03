@interface PUAvalancheReviewCollectionViewLayout
- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)change;
- (CGRect)_floatingSelectionBadgeFrameForItemFrame:(CGRect)frame visibleItemFrame:(CGRect)itemFrame atIndexPath:(id)path;
- (UIOffset)sharingBadgeOffset;
- (id)_badgeLayoutAttributesForItemLayoutAttributes:(id)attributes;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)setZoomingCellIndexPath:(id)path;
@end

@implementation PUAvalancheReviewCollectionViewLayout

- (UIOffset)sharingBadgeOffset
{
  horizontal = self->_sharingBadgeOffset.horizontal;
  vertical = self->_sharingBadgeOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = PUAvalancheReviewCollectionViewLayout;
  v8 = [(PUAvalancheReviewCollectionViewLayout *)&v11 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
  if (!v8)
  {
    if ([kindCopy isEqualToString:@"PUAvalancheReviewBadgeKind"])
    {
      v9 = [(PUAvalancheReviewCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
      v8 = [(PUAvalancheReviewCollectionViewLayout *)self _badgeLayoutAttributesForItemLayoutAttributes:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = PUAvalancheReviewCollectionViewLayout;
  pathCopy = path;
  v5 = [(PUHorizontalCollectionViewLayout *)&v9 layoutAttributesForItemAtIndexPath:pathCopy];
  v6 = [(PUAvalancheReviewCollectionViewLayout *)self zoomingCellIndexPath:v9.receiver];
  v7 = [pathCopy isEqual:v6];

  [v5 setHidden:v7];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v14.receiver = self;
  v14.super_class = PUAvalancheReviewCollectionViewLayout;
  v4 = [(PUHorizontalCollectionViewLayout *)&v14 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [v4 mutableCopy];

  v6 = [v5 count];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 objectAtIndexedSubscript:i];
      indexPath = [v9 indexPath];
      zoomingCellIndexPath = [(PUAvalancheReviewCollectionViewLayout *)self zoomingCellIndexPath];
      [v9 setHidden:{objc_msgSend(indexPath, "isEqual:", zoomingCellIndexPath)}];

      v12 = [(PUAvalancheReviewCollectionViewLayout *)self _badgeLayoutAttributesForItemLayoutAttributes:v9];
      [v5 addObject:v12];
    }
  }

  return v5;
}

- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v5 = [(PUAvalancheReviewCollectionViewLayout *)self collectionView:change.origin.x];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  return v9 != height || v7 != width;
}

- (id)_badgeLayoutAttributesForItemLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  indexPath = [attributesCopy indexPath];
  v6 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:@"PUAvalancheReviewBadgeKind" withIndexPath:indexPath];
  collectionView = [(PUAvalancheReviewCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [attributesCopy frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.width = v13;
  v33.size.height = v15;
  v36.origin.x = v17;
  v36.origin.y = v19;
  v36.size.width = v21;
  v36.size.height = v23;
  v34 = CGRectIntersection(v33, v36);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  if (CGRectIsNull(v34))
  {
    height = v23;
    width = v21;
    y = v19;
    x = v17;
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  if (CGRectIsEmpty(v35))
  {
    v28 = 1;
  }

  else
  {
    indexPath2 = [v6 indexPath];
    zoomingCellIndexPath = [(PUAvalancheReviewCollectionViewLayout *)self zoomingCellIndexPath];
    v28 = [indexPath2 isEqual:zoomingCellIndexPath];
  }

  [v6 setHidden:v28];
  [(PUAvalancheReviewCollectionViewLayout *)self _floatingSelectionBadgeFrameForItemFrame:indexPath visibleItemFrame:v17 atIndexPath:v19, v21, v23, x, y, width, height];
  [v6 setFrame:?];
  [v6 setZIndex:{objc_msgSend(attributesCopy, "zIndex") + 1}];
  [v6 setAlpha:1.0];

  return v6;
}

- (CGRect)_floatingSelectionBadgeFrameForItemFrame:(CGRect)frame visibleItemFrame:(CGRect)itemFrame atIndexPath:(id)path
{
  width = itemFrame.size.width;
  height = itemFrame.size.height;
  v42 = frame.size.height;
  y = itemFrame.origin.y;
  x = itemFrame.origin.x;
  v6 = frame.size.height;
  v7 = frame.size.width;
  v41 = frame.size.width;
  v8 = frame.origin.y;
  v9 = frame.origin.x;
  pathCopy = path;
  [(PUAvalancheReviewCollectionViewLayout *)self sharingBadgeOffset];
  v13 = v12;
  collectionView = [(PUAvalancheReviewCollectionViewLayout *)self collectionView];
  delegate = [(PUHorizontalCollectionViewLayout *)self delegate];
  v39 = v9;
  [delegate layout:self collectionView:collectionView selectionBadgeFrameForItemFrame:pathCopy atIndexPath:{v9, v8, v7, v6}];
  v17 = v16;
  v19 = v18;
  v40 = v20;
  rect = v21;

  v22 = v9 + v17;
  v23 = v8 + v19;
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v38 = v13;
  v24 = v13 + CGRectGetMinX(v47);
  if (v9 + v17 >= v24)
  {
    v25 = v9 + v17;
  }

  else
  {
    v25 = v24;
  }

  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = v22;
  v49.origin.y = v23;
  v49.size.width = v40;
  v49.size.height = rect;
  v27 = MaxX - CGRectGetWidth(v49) - v13;
  if (v25 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  v50.origin.x = v39;
  v50.origin.y = v8;
  v50.size.width = v41;
  v50.size.height = v42;
  v29 = v13 + CGRectGetMinX(v50);
  if (v28 >= v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v51.origin.x = v39;
  v51.origin.y = v8;
  v51.size.width = v41;
  v51.size.height = v42;
  v31 = CGRectGetMaxX(v51);
  v52.origin.x = v28;
  v52.origin.y = v23;
  v52.size.width = v40;
  v52.size.height = rect;
  v32 = v31 - CGRectGetWidth(v52) - v38;
  if (v30 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v30;
  }

  v34 = v33;
  v35 = v23;
  v36 = v40;
  v37 = rect;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)setZoomingCellIndexPath:(id)path
{
  pathCopy = path;
  if (self->_zoomingCellIndexPath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_zoomingCellIndexPath, path);
    [(PUAvalancheReviewCollectionViewLayout *)self invalidateLayout];
    pathCopy = v6;
  }
}

@end