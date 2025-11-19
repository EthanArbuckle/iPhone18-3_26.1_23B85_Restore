@interface PUAvalancheReviewCollectionViewLayout
- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)a3;
- (CGRect)_floatingSelectionBadgeFrameForItemFrame:(CGRect)a3 visibleItemFrame:(CGRect)a4 atIndexPath:(id)a5;
- (UIOffset)sharingBadgeOffset;
- (id)_badgeLayoutAttributesForItemLayoutAttributes:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)setZoomingCellIndexPath:(id)a3;
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

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PUAvalancheReviewCollectionViewLayout;
  v8 = [(PUAvalancheReviewCollectionViewLayout *)&v11 layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
  if (!v8)
  {
    if ([v6 isEqualToString:@"PUAvalancheReviewBadgeKind"])
    {
      v9 = [(PUAvalancheReviewCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v7];
      v8 = [(PUAvalancheReviewCollectionViewLayout *)self _badgeLayoutAttributesForItemLayoutAttributes:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v9.receiver = self;
  v9.super_class = PUAvalancheReviewCollectionViewLayout;
  v4 = a3;
  v5 = [(PUHorizontalCollectionViewLayout *)&v9 layoutAttributesForItemAtIndexPath:v4];
  v6 = [(PUAvalancheReviewCollectionViewLayout *)self zoomingCellIndexPath:v9.receiver];
  v7 = [v4 isEqual:v6];

  [v5 setHidden:v7];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PUAvalancheReviewCollectionViewLayout;
  v4 = [(PUHorizontalCollectionViewLayout *)&v14 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [v4 mutableCopy];

  v6 = [v5 count];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 objectAtIndexedSubscript:i];
      v10 = [v9 indexPath];
      v11 = [(PUAvalancheReviewCollectionViewLayout *)self zoomingCellIndexPath];
      [v9 setHidden:{objc_msgSend(v10, "isEqual:", v11)}];

      v12 = [(PUAvalancheReviewCollectionViewLayout *)self _badgeLayoutAttributesForItemLayoutAttributes:v9];
      [v5 addObject:v12];
    }
  }

  return v5;
}

- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(PUAvalancheReviewCollectionViewLayout *)self collectionView:a3.origin.x];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  return v9 != height || v7 != width;
}

- (id)_badgeLayoutAttributesForItemLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 indexPath];
  v6 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:@"PUAvalancheReviewBadgeKind" withIndexPath:v5];
  v7 = [(PUAvalancheReviewCollectionViewLayout *)self collectionView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v4 frame];
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
    v29 = [v6 indexPath];
    v30 = [(PUAvalancheReviewCollectionViewLayout *)self zoomingCellIndexPath];
    v28 = [v29 isEqual:v30];
  }

  [v6 setHidden:v28];
  [(PUAvalancheReviewCollectionViewLayout *)self _floatingSelectionBadgeFrameForItemFrame:v5 visibleItemFrame:v17 atIndexPath:v19, v21, v23, x, y, width, height];
  [v6 setFrame:?];
  [v6 setZIndex:{objc_msgSend(v4, "zIndex") + 1}];
  [v6 setAlpha:1.0];

  return v6;
}

- (CGRect)_floatingSelectionBadgeFrameForItemFrame:(CGRect)a3 visibleItemFrame:(CGRect)a4 atIndexPath:(id)a5
{
  width = a4.size.width;
  height = a4.size.height;
  v42 = a3.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v6 = a3.size.height;
  v7 = a3.size.width;
  v41 = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  v11 = a5;
  [(PUAvalancheReviewCollectionViewLayout *)self sharingBadgeOffset];
  v13 = v12;
  v14 = [(PUAvalancheReviewCollectionViewLayout *)self collectionView];
  v15 = [(PUHorizontalCollectionViewLayout *)self delegate];
  v39 = v9;
  [v15 layout:self collectionView:v14 selectionBadgeFrameForItemFrame:v11 atIndexPath:{v9, v8, v7, v6}];
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

- (void)setZoomingCellIndexPath:(id)a3
{
  v5 = a3;
  if (self->_zoomingCellIndexPath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_zoomingCellIndexPath, a3);
    [(PUAvalancheReviewCollectionViewLayout *)self invalidateLayout];
    v5 = v6;
  }
}

@end