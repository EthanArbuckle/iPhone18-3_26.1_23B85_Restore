@interface PUSelectableAssetCollectionViewLayout
- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)change;
- (CGRect)_floatingSelectionBadgeFrameForItemFrame:(CGRect)frame visibleItemFrame:(CGRect)itemFrame atIndexPath:(id)path;
- (CGRect)collectionViewBounds;
- (CGSize)layoutReferenceSize;
- (UIOffset)sharingBadgeOffset;
- (id)_badgeLayoutAttributesForItemLayoutAttributes:(id)attributes;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)setFloatingCellIndexPaths:(id)paths;
- (void)setLayoutReferenceSize:(CGSize)size;
@end

@implementation PUSelectableAssetCollectionViewLayout

- (CGSize)layoutReferenceSize
{
  width = self->_layoutReferenceSize.width;
  height = self->_layoutReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIOffset)sharingBadgeOffset
{
  horizontal = self->_sharingBadgeOffset.horizontal;
  vertical = self->_sharingBadgeOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGRect)collectionViewBounds
{
  [(PUSelectableAssetCollectionViewLayout *)self layoutReferenceSize];
  v4 = v3;
  v6 = v5;
  v11.receiver = self;
  v11.super_class = PUSelectableAssetCollectionViewLayout;
  [(PUHorizontalCollectionViewLayout *)&v11 collectionViewBounds];
  if (v4 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    v9 = v4;
    v10 = v6;
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)setLayoutReferenceSize:(CGSize)size
{
  p_layoutReferenceSize = &self->_layoutReferenceSize;
  width = self->_layoutReferenceSize.width;
  height = self->_layoutReferenceSize.height;
  if (width == size.width && height == size.height)
  {
    return;
  }

  p_layoutReferenceSize->width = size.width;
  self->_layoutReferenceSize.height = size.height;
  collectionView = [(PUSelectableAssetCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v10 = v9;
  v12 = v11;

  v13 = p_layoutReferenceSize->height;
  if (p_layoutReferenceSize->width == *MEMORY[0x1E695F060] && v13 == *(MEMORY[0x1E695F060] + 8))
  {
    if (width != v10 || height != v12)
    {
      goto LABEL_13;
    }
  }

  else if (p_layoutReferenceSize->width != v10 || v13 != v12)
  {
LABEL_13:

    [(PUSelectableAssetCollectionViewLayout *)self invalidateLayout];
  }
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = PUSelectableAssetCollectionViewLayout;
  v8 = [(PUSelectableAssetCollectionViewLayout *)&v11 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
  if (!v8)
  {
    if ([kindCopy isEqualToString:@"PUSelectableAssetBadgeKind"])
    {
      v9 = [(PUSelectableAssetCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
      v8 = [(PUSelectableAssetCollectionViewLayout *)self _badgeLayoutAttributesForItemLayoutAttributes:v9];
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
  v10.receiver = self;
  v10.super_class = PUSelectableAssetCollectionViewLayout;
  pathCopy = path;
  v5 = [(PUHorizontalCollectionViewLayout *)&v10 layoutAttributesForItemAtIndexPath:pathCopy];
  v6 = [(PUSelectableAssetCollectionViewLayout *)self floatingCellIndexPaths:v10.receiver];
  v7 = [v6 member:pathCopy];

  v8 = 0.0;
  if (!v7)
  {
    v8 = 1.0;
  }

  [v5 setAlpha:v8];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v16.receiver = self;
  v16.super_class = PUSelectableAssetCollectionViewLayout;
  v4 = [(PUHorizontalCollectionViewLayout *)&v16 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [v4 mutableCopy];

  v6 = [v5 count];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 objectAtIndexedSubscript:i];
      floatingCellIndexPaths = [(PUSelectableAssetCollectionViewLayout *)self floatingCellIndexPaths];
      indexPath = [v9 indexPath];
      v12 = [floatingCellIndexPaths member:indexPath];

      if (v12)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 1.0;
      }

      [v9 setAlpha:v13];
      v14 = [(PUSelectableAssetCollectionViewLayout *)self _badgeLayoutAttributesForItemLayoutAttributes:v9];
      [v5 addObject:v14];
    }
  }

  return v5;
}

- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  [(PUSelectableAssetCollectionViewLayout *)self collectionViewBounds:change.origin.x];
  return v6 != height || v5 != width;
}

- (id)_badgeLayoutAttributesForItemLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (attributesCopy)
  {
    indexPath = [attributesCopy indexPath];
    v7 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:@"PUSelectableAssetBadgeKind" withIndexPath:indexPath];
    [(PUSelectableAssetCollectionViewLayout *)self collectionViewBounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v5 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v41.origin.x = v9;
    v41.origin.y = v11;
    v41.size.width = v13;
    v41.size.height = v15;
    v43.origin.x = v17;
    v43.origin.y = v19;
    v43.size.width = v21;
    v43.size.height = v23;
    v42 = CGRectIntersection(v41, v43);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    IsNull = CGRectIsNull(v42);
    if (IsNull)
    {
      v29 = v23;
    }

    else
    {
      v29 = height;
    }

    if (IsNull)
    {
      width = v21;
      y = v19;
      v30 = v17;
    }

    else
    {
      v30 = x;
    }

    v31 = v30;
    v32 = y;
    v33 = width;
    v39 = v29;
    v34 = 0.0;
    if (!CGRectIsEmpty(*(&v29 - 3)))
    {
      floatingCellIndexPaths = [(PUSelectableAssetCollectionViewLayout *)self floatingCellIndexPaths];
      indexPath2 = [v7 indexPath];
      v37 = [floatingCellIndexPaths member:indexPath2];
      if (v37)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = 1.0;
      }
    }

    [v7 setAlpha:v34];
    [(PUSelectableAssetCollectionViewLayout *)self _floatingSelectionBadgeFrameForItemFrame:indexPath visibleItemFrame:v17 atIndexPath:v19, v21, v23, v30, y, width, v39];
    [v7 setFrame:?];
    [v7 setZIndex:{objc_msgSend(v5, "zIndex") + 1}];
    [v7 setAlpha:1.0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
  [(PUSelectableAssetCollectionViewLayout *)self sharingBadgeOffset];
  v13 = v12;
  collectionView = [(PUSelectableAssetCollectionViewLayout *)self collectionView];
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

- (void)setFloatingCellIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = self->_floatingCellIndexPaths;
  v6 = v5;
  if (v5 == pathsCopy)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_floatingCellIndexPaths, paths);
      [(PUSelectableAssetCollectionViewLayout *)self invalidateLayout];
    }
  }
}

@end