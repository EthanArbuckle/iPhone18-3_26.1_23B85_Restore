@interface PUScrubberTilingLayout
- (BOOL)_shouldShowTimeIndicatorForExpandedItemAtIndexPath:(id)path;
- (CGPoint)focusPoint;
- (CGRect)_rectForItemAtIndexPath:(id)path withLoupeTransform:(BOOL)transform withExpanded:(BOOL)expanded;
- (CGRect)contentBounds;
- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)path scrollPosition:(int64_t)position;
- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)path transitionProgress:(double)progress;
- (CGSize)_slitSize;
- (CGSize)_transformedSizeForIndexPath:(id)path;
- (CGSize)estimatedSectionSize;
- (CGSize)interItemSpacing;
- (CGSize)sizeForSection:(int64_t)section numberOfItems:(int64_t)items;
- (PUScrubberTilingLayout)init;
- (PUScrubberTilingLayoutDelegate)delegate;
- (UIEdgeInsets)contentPadding;
- (double)_focusAbscissa;
- (double)_loupeAmountFor:(id)for;
- (double)_normalizedTransitionProgressFrom:(id)from withAbscissa:(double)abscissa outNeighborIndexPath:(id *)path;
- (double)_transformedHorizontalOffsetForIndexPath:(id)path;
- (float)_aspectRatioForIndexPath:(id)path;
- (id)_createLayoutInfoForTileWithIndexPath:(id)path kind:(id)kind;
- (id)_indexPathOfItemClosestToAbscissa:(double)abscissa;
- (id)indexPathOfItemClosestToPoint:(CGPoint)point;
- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind;
- (int64_t)_indexOfItemClosestToAbscissa:(double)abscissa inSection:(int64_t)section;
- (void)addLayoutInfosForTilesInRect:(CGRect)rect section:(int64_t)section toSet:(id)set;
- (void)invalidateLayoutWithContext:(id)context;
- (void)invalidateSelectedItems;
- (void)prepareLayout;
- (void)setDelegate:(id)delegate;
- (void)setExpandedItemIndexPath:(id)path;
- (void)setExpandedItemPlayheadProgress:(double)progress;
- (void)setExpandedItemWidth:(double)width;
- (void)setLoupeAmount:(double)amount;
- (void)setOnlyShowExpandedItem:(BOOL)item;
- (void)setOverrideLoupeIndexPath:(id)path;
- (void)setShouldHighlightSelectedItems:(BOOL)items;
- (void)setShowPlayheadForExpandedItem:(BOOL)item;
- (void)setSnapToExpandedItem:(BOOL)item;
- (void)setTimeIndicatorVerticalOffset:(double)offset;
- (void)setVisibleRect:(CGRect)rect;
@end

@implementation PUScrubberTilingLayout

- (UIEdgeInsets)contentPadding
{
  top = self->_contentPadding.top;
  left = self->_contentPadding.left;
  bottom = self->_contentPadding.bottom;
  right = self->_contentPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)interItemSpacing
{
  width = self->_interItemSpacing.width;
  height = self->_interItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUScrubberTilingLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_normalizedTransitionProgressFrom:(id)from withAbscissa:(double)abscissa outNeighborIndexPath:(id *)path
{
  fromCopy = from;
  if (!fromCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberTilingLayout.m" lineNumber:790 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:fromCopy withLoupeTransform:0 withExpanded:1];
  MidX = CGRectGetMidX(v48);
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__77542;
  v46 = __Block_byref_object_dispose__77543;
  v47 = 0;
  dataSource = [(PUTilingLayout *)self dataSource];
  if (leftToRight)
  {
    v13 = MidX > abscissa;
  }

  else
  {
    v13 = MidX < abscissa;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __94__PUScrubberTilingLayout__normalizedTransitionProgressFrom_withAbscissa_outNeighborIndexPath___block_invoke;
  v39[3] = &unk_1E7B7DD28;
  v14 = fromCopy;
  v40 = v14;
  v41 = &v42;
  [dataSource enumerateIndexPathsStartingAtIndexPath:v14 reverseDirection:v13 usingBlock:v39];

  if (!v43[5])
  {
    v19 = 0.0;
    if (!path)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];
  v16 = [v14 isEqual:expandedItemIndexPath];

  if (v16)
  {
    v17 = v43[5];
    v18 = v14;
  }

  else
  {
    v17 = v14;
    v18 = v43[5];
  }

  v20 = v18;
  [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:v17 withLoupeTransform:0 withExpanded:1];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  v25 = CGRectGetMidX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:v17 withLoupeTransform:0 withExpanded:0, CGRectGetMidY(v50)];
  v26 = v51.origin.x;
  v27 = v51.origin.y;
  v28 = v51.size.width;
  v29 = v51.size.height;
  v30 = CGRectGetMidX(v51);
  v52.origin.x = v26;
  v52.origin.y = v27;
  v52.size.width = v28;
  v52.size.height = v29;
  [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:v20 withLoupeTransform:0 withExpanded:0, CGRectGetMidY(v52)];
  v31 = v53.origin.x;
  v32 = v53.origin.y;
  v33 = v53.size.width;
  v34 = v53.size.height;
  v35 = CGRectGetMidX(v53);
  v54.origin.x = v31;
  v54.origin.y = v32;
  v54.size.width = v33;
  v54.size.height = v34;
  CGRectGetMidY(v54);
  v36 = vabdd_f64(v30, v35);
  if (v16)
  {
    v19 = -((v30 - (v25 - abscissa) - v30) / v36);
  }

  else
  {
    v19 = (v30 - (v25 - abscissa) - v30) / v36;
  }

  if (path)
  {
LABEL_16:
    *path = v43[5];
  }

LABEL_17:

  _Block_object_dispose(&v42, 8);
  return v19;
}

void __94__PUScrubberTilingLayout__normalizedTransitionProgressFrom_withAbscissa_outNeighborIndexPath___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([*(a1 + 32) isEqual:?] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_indexPathOfItemClosestToAbscissa:(double)abscissa
{
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  computedSections = [(PUSectionedTilingLayout *)self computedSections];
  v9 = computedSections + v8;
  if (computedSections >= computedSections + v8)
  {
LABEL_40:
    v36 = 0;
    goto LABEL_41;
  }

  v10 = computedSections;
  v11 = v9 - 1;
  while (1)
  {
    if (![(PUSectionedTilingLayout *)self numberOfItemsInSection:v10])
    {
      goto LABEL_36;
    }

    [(PUSectionedTilingLayout *)self boundsForSection:v10];
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    if (leftToRight)
    {
      v20 = CGRectGetMinX(*&v12) > abscissa;
    }

    else
    {
      v20 = CGRectGetMaxX(*&v12) < abscissa;
    }

    v45.origin.x = v16;
    v45.origin.y = v17;
    v45.size.width = v18;
    v45.size.height = v19;
    if (CGRectGetMinX(v45) <= abscissa)
    {
      v46.origin.x = v16;
      v46.origin.y = v17;
      v46.size.width = v18;
      v46.size.height = v19;
      if (CGRectGetMaxX(v46) > abscissa)
      {
        v21 = [(PUScrubberTilingLayout *)self _indexOfItemClosestToAbscissa:v10 inSection:abscissa];
        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = v21;
          v23 = MEMORY[0x1E696AC88];
LABEL_29:
          v24 = v10;
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }

    if (!v20)
    {
      if (v10 != v11 || v10 < 0)
      {
        goto LABEL_36;
      }

      v25 = v9;
      while ([(PUSectionedTilingLayout *)self numberOfItemsInSection:--v25]< 1)
      {
        if (v25 <= 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_34;
    }

    if (!v10)
    {
      v23 = MEMORY[0x1E696AC88];
      v22 = 0;
      v24 = 0;
      goto LABEL_35;
    }

    if (v10 == v11)
    {
      v23 = MEMORY[0x1E696AC88];
      v22 = 0;
      v24 = v9 - 1;
      goto LABEL_35;
    }

    [(PUSectionedTilingLayout *)self boundsForSection:v10 - 1];
    v30 = v27;
    v31 = v28;
    v32 = v29;
    rect = v26;
    if (leftToRight)
    {
      MaxX = CGRectGetMaxX(*&v26);
      v47.origin.x = v16;
      v47.origin.y = v17;
      v47.size.width = v18;
      v47.size.height = v19;
      if (MaxX <= CGRectGetMinX(v47))
      {
        goto LABEL_24;
      }
    }

    else
    {
      MinX = CGRectGetMinX(*&v26);
      v50.origin.x = v16;
      v50.origin.y = v17;
      v50.size.width = v18;
      v50.size.height = v19;
      if (MinX >= CGRectGetMaxX(v50))
      {
        goto LABEL_26;
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberTilingLayout.m" lineNumber:751 description:{@"Invalid parameter not satisfying: %@", @"leftToRight ? CGRectGetMaxX(previousSectionBounds) <= CGRectGetMinX(sectionBounds) : CGRectGetMinX(previousSectionBounds) >= CGRectGetMaxX(sectionBounds)"}];

    if (leftToRight)
    {
LABEL_24:
      v48.origin.x = rect;
      v48.origin.y = v30;
      v48.size.width = v31;
      v48.size.height = v32;
      v33 = abscissa - CGRectGetMaxX(v48);
      v49.origin.x = v16;
      v49.origin.y = v17;
      v49.size.width = v18;
      v49.size.height = v19;
      v34 = CGRectGetMinX(v49) - abscissa;
      goto LABEL_27;
    }

LABEL_26:
    v51.origin.x = rect;
    v51.origin.y = v30;
    v51.size.width = v31;
    v51.size.height = v32;
    v33 = CGRectGetMinX(v51) - abscissa;
    v52.origin.x = v16;
    v52.origin.y = v17;
    v52.size.width = v18;
    v52.size.height = v19;
    v34 = abscissa - CGRectGetMaxX(v52);
LABEL_27:
    if (v33 > v34)
    {
      v23 = MEMORY[0x1E696AC88];
      v22 = 0;
      goto LABEL_29;
    }

    v25 = v10;
    if (v10 >= 1)
    {
      break;
    }

LABEL_36:
    if (++v10 == v9)
    {
      goto LABEL_40;
    }
  }

  while ([(PUSectionedTilingLayout *)self numberOfItemsInSection:--v25]< 1)
  {
    if (v25 <= 0)
    {
      goto LABEL_36;
    }
  }

LABEL_34:
  v22 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:v25]- 1;
  v23 = MEMORY[0x1E696AC88];
  v24 = v25;
LABEL_35:
  v35 = [v23 indexPathForItem:v22 inSection:v24];
  v36 = v35;
  if (!v35)
  {
    goto LABEL_36;
  }

  if ([v35 item] < 0 || (v39 = objc_msgSend(v36, "item"), v39 >= -[PUSectionedTilingLayout numberOfItemsInSection:](self, "numberOfItemsInSection:", objc_msgSend(v36, "section"))))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUScrubberTilingLayout.m" lineNumber:780 description:{@"Computed invalid indexPath:%@", v36}];
  }

LABEL_41:

  return v36;
}

- (int64_t)_indexOfItemClosestToAbscissa:(double)abscissa inSection:(int64_t)section
{
  v7 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:?];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  [(PUSectionedTilingLayout *)self boundsForSection:section];
  if (leftToRight)
  {
    v14 = abscissa - CGRectGetMinX(*&v10);
  }

  else
  {
    v14 = CGRectGetMaxX(*&v10) - abscissa;
  }

  [(PUScrubberTilingLayout *)self _slitSize];
  v17 = v16;
  expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];
  v19 = expandedItemIndexPath;
  if (expandedItemIndexPath && [expandedItemIndexPath section] == section && (-[PUScrubberTilingLayout _rectForItemAtIndexPath:withLoupeTransform:withExpanded:](self, "_rectForItemAtIndexPath:withLoupeTransform:withExpanded:", v19, 0, 1), v21 = v20, v23 = v22, v25 = v24, v27 = v26, -[PUScrubberTilingLayout expandedItemPadding](self, "expandedItemPadding"), v29 = v28, -[PUScrubberTilingLayout expandedItemPadding](self, "expandedItemPadding"), v31 = -v30, v40.origin.x = v21 - v29, v40.origin.y = v23 + 0.0, v40.size.width = v25 - (v31 - v29), width = v40.size.width, v40.size.height = v27, v33 = (abscissa - CGRectGetMinX(v40)) / v40.size.width, v33 >= 0.0))
  {
    if (v33 <= 1.0)
    {
      item = [v19 item];
      goto LABEL_11;
    }

    [(PUScrubberTilingLayout *)self interItemSpacing];
    v35 = (v17 + v14 - width) / (v17 + v39);
  }

  else
  {
    [(PUScrubberTilingLayout *)self interItemSpacing];
    v35 = v14 / (v17 + v34);
  }

  item = v35;
LABEL_11:
  v37 = v8 - 1;
  if (item < v8)
  {
    v37 = item;
  }

  if (item >= 0)
  {
    v15 = v37;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGSize)_transformedSizeForIndexPath:(id)path
{
  pathCopy = path;
  [(PUScrubberTilingLayout *)self _loupeAmountFor:pathCopy];
  v6 = v5;
  [(PUScrubberTilingLayout *)self loupeAmount];
  v8 = v6 * v7;
  width = self->_slitSize.width;
  height = self->_slitSize.height;
  if (v8 != 0.0)
  {
    [(PUScrubberTilingLayout *)self _aspectRatioForIndexPath:pathCopy];
    v12 = v11;
    [(PUScrubberTilingLayout *)self maxAspectRatio];
    if (slitAspectRatio > v12)
    {
      slitAspectRatio = v12;
    }

    if (slitAspectRatio < self->_slitAspectRatio)
    {
      slitAspectRatio = self->_slitAspectRatio;
    }

    width = height * slitAspectRatio * v8 + (1.0 - v8) * width;
    height = height * v8 + (1.0 - v8) * height;
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)_transformedHorizontalOffsetForIndexPath:(id)path
{
  pathCopy = path;
  loupeIndexPath = [(PUScrubberTilingLayout *)self loupeIndexPath];
  v6 = 0.0;
  if (loupeIndexPath)
  {
    [(PUScrubberTilingLayout *)self loupeAmount];
    if (v7 > 0.0)
    {
      overrideLoupeIndexPath = [(PUScrubberTilingLayout *)self overrideLoupeIndexPath];

      if (overrideLoupeIndexPath)
      {
        overrideLoupeIndexPath2 = [(PUScrubberTilingLayout *)self overrideLoupeIndexPath];
        [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:overrideLoupeIndexPath2 withLoupeTransform:0 withExpanded:1];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v27.origin.x = v11;
        v27.origin.y = v13;
        v27.size.width = v15;
        v27.size.height = v17;
        MidX = CGRectGetMidX(v27);
      }

      else
      {
        [(PUScrubberTilingLayout *)self _focusAbscissa];
      }

      v19 = MidX;
      [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:pathCopy withLoupeTransform:0 withExpanded:1];
      v20 = CGRectGetMidX(v28);
      [(PUScrubberTilingLayout *)self _loupeAmountFor:pathCopy];
      v22 = v21;
      [(PUScrubberTilingLayout *)self loupeAmount];
      v24 = (1.0 - v22) * v23;
      loupeWidth = self->_loupeWidth;
      if (v20 <= v19)
      {
        loupeWidth = -loupeWidth;
      }

      v6 = loupeWidth * 0.5 * v24 + (1.0 - v24) * 0.0;
    }
  }

  return v6;
}

- (double)_loupeAmountFor:(id)for
{
  forCopy = for;
  loupeIndexPath = [(PUScrubberTilingLayout *)self loupeIndexPath];
  v6 = [forCopy isEqual:loupeIndexPath];

  if (v6)
  {
    [(PUScrubberTilingLayout *)self loupeTransitionProgress];
    v8 = 1.0 - fabs(v7);
  }

  else
  {
    v8 = 0.0;
    if ([forCopy isEqual:self->_loupeNeighborIndexPath])
    {
      v8 = fabs(self->_loupeTransitionProgress);
    }
  }

  return v8;
}

- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)path scrollPosition:(int64_t)position
{
  [(PUScrubberTilingLayout *)self visibleRectForScrollingToItemAtIndexPath:path transitionProgress:position, 0.0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)path transitionProgress:(double)progress
{
  pathCopy = path;
  [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:pathCopy withLoupeTransform:0 withExpanded:1];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];
  v13 = [pathCopy isEqual:expandedItemIndexPath];

  if (v13)
  {
    [(PUScrubberTilingLayout *)self expandedItemPlayheadProgress];
    v15 = v14;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v17 = CGRectGetMaxX(v33) * v15 + (1.0 - v15) * MinX;
  }

  else
  {
    [(PUScrubberTilingLayout *)self _slitSize];
    v19 = v18;
    [(PUScrubberTilingLayout *)self interItemSpacing];
    v21 = (v19 + v20) * progress;
    leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
    v23 = -1.0;
    if (leftToRight)
    {
      v23 = 1.0;
    }

    v17 = MidX + v21 * v23;
  }

  [(PUTilingLayout *)self visibleRect];
  v24 = v34.size.width;
  v25 = v34.size.height;
  v26 = CGRectGetMidY(v34) - v34.size.height * 0.5;
  v27 = v17 - v24 * 0.5;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v26;
  result.origin.x = v27;
  return result;
}

- (float)_aspectRatioForIndexPath:(id)path
{
  if (!self->_delegateFlags.respondsToAspectRatioForItemAtIndexPath)
  {
    return 1.0;
  }

  pathCopy = path;
  delegate = [(PUScrubberTilingLayout *)self delegate];
  [delegate layout:self aspectRatioForItemAtIndexPath:pathCopy];
  v7 = v6;

  return v7;
}

- (BOOL)_shouldShowTimeIndicatorForExpandedItemAtIndexPath:(id)path
{
  if (!self->_delegateFlags.respondsToShouldShowTimeIndicatorForExpandedItemAtIndexPath)
  {
    return 1;
  }

  selfCopy = self;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  LOBYTE(selfCopy) = [WeakRetained layout:selfCopy shouldShowTimeIndicatorForExpandedItemAtIndexPath:pathCopy];

  return selfCopy;
}

- (CGRect)_rectForItemAtIndexPath:(id)path withLoupeTransform:(BOOL)transform withExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  transformCopy = transform;
  pathCopy = path;
  -[PUSectionedTilingLayout boundsForSection:](self, "boundsForSection:", [pathCopy section]);
  v10 = v9;
  v12 = v11;
  [(PUScrubberTilingLayout *)self _slitSize];
  v14 = v13;
  v16 = v15;
  [(PUScrubberTilingLayout *)self interItemSpacing];
  v18 = v17;
  v19 = -[PUSectionedTilingLayout numberOfItemsInSection:](self, "numberOfItemsInSection:", [pathCopy section]);
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  [(PUScrubberTilingLayout *)self contentPadding];
  v22 = v12 + v21;
  item = [pathCopy item];
  v24 = v19 + ~item;
  if (leftToRight)
  {
    v24 = item;
  }

  v25 = v10 + v24 * (v14 + v18);
  if (expandedCopy && ([(PUScrubberTilingLayout *)self expandedItemIndexPath], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = v26;
    section = [pathCopy section];
    if (section == [v27 section])
    {
      v29 = [v27 compare:pathCopy];
      if (v29)
      {
        v30 = -1;
        if (!leftToRight)
        {
          v30 = 1;
        }

        if (v29 == v30)
        {
          if (leftToRight)
          {
            v31 = v25 - v14;
          }

          else
          {
            v31 = v25;
          }

          [(PUScrubberTilingLayout *)self expandedItemWidth];
          v33 = v32;
          [(PUScrubberTilingLayout *)self expandedItemPadding];
          v25 = v31 + v33 + v34 * 2.0;
        }
      }

      else
      {
        [(PUScrubberTilingLayout *)self expandedItemPadding];
        v25 = v25 + v46;
        [(PUScrubberTilingLayout *)self expandedItemWidth];
        v14 = v47;
      }
    }
  }

  else if (transformCopy)
  {
    [(PUScrubberTilingLayout *)self _transformedSizeForIndexPath:pathCopy];
    v36 = v35;
    v38 = v37;
    [(PUScrubberTilingLayout *)self _transformedHorizontalOffsetForIndexPath:pathCopy];
    v40 = v39;
    v48.origin.x = v25;
    v48.origin.y = v22;
    v48.size.width = v14;
    v48.size.height = v16;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v25;
    v49.origin.y = v22;
    v49.size.width = v14;
    v49.size.height = v16;
    v27 = 0;
    v25 = v40 + MidX - v36 * 0.5;
    v22 = CGRectGetMidY(v49) - v38 * 0.5;
    v16 = v38;
    v14 = v36;
  }

  else
  {
    v27 = 0;
  }

  v42 = v25;
  v43 = v22;
  v44 = v14;
  v45 = v16;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (CGSize)_slitSize
{
  p_slitSize = &self->_slitSize;
  width = self->_slitSize.width;
  if (width < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberTilingLayout.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"_slitSize.width >= 0.0f"}];

    width = p_slitSize->width;
  }

  height = p_slitSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)_focusAbscissa
{
  [(PUTilingLayout *)self visibleRect];

  return CGRectGetMidX(*&v2);
}

- (CGPoint)focusPoint
{
  [(PUScrubberTilingLayout *)self _focusAbscissa];
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)indexPathOfItemClosestToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PUTilingLayout *)self visibleRect];
  [(PUSectionedTilingLayout *)self computeSectionsInRect:x - v6 * 0.5, y - v7 * 0.5];

  return [(PUScrubberTilingLayout *)self _indexPathOfItemClosestToAbscissa:x];
}

- (CGRect)contentBounds
{
  v37.receiver = self;
  v37.super_class = PUScrubberTilingLayout;
  [(PUSectionedTilingLayout *)&v37 contentBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];
  if (expandedItemIndexPath && [(PUScrubberTilingLayout *)self snapToExpandedItem])
  {
    [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:expandedItemIndexPath withLoupeTransform:0 withExpanded:1];
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = v4;
    v39.origin.y = v6;
    v39.size.width = v8;
    v39.size.height = v10;
    MinY = CGRectGetMinY(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v16 = CGRectGetWidth(v40);
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    v10 = CGRectGetHeight(v41);
    [(PUTilingLayout *)self visibleRect];
    v18 = v17;
    v20 = v19;
    [(PUScrubberTilingLayout *)self _focusAbscissa];
    v22 = v21 - v18;
    v23 = -(v20 - v22);
    v4 = MinX - v22;
    v6 = MinY + 0.0;
    v8 = v16 - (v23 - v22);
  }

  else
  {
    [(PUTilingLayout *)self visibleRect];
    v24 = *MEMORY[0x1E695F058];
    v25 = *(MEMORY[0x1E695F058] + 8);
    v26 = *(MEMORY[0x1E695F058] + 16);
    v27 = *(MEMORY[0x1E695F058] + 24);
    v48.origin.x = *MEMORY[0x1E695F058];
    v48.origin.y = v25;
    v48.size.width = v26;
    v48.size.height = v27;
    if (!CGRectEqualToRect(v42, v48))
    {
      v43.origin.x = v4;
      v43.origin.y = v6;
      v43.size.width = v8;
      v43.size.height = v10;
      v49.origin.x = v24;
      v49.origin.y = v25;
      v49.size.width = v26;
      v49.size.height = v27;
      if (!CGRectEqualToRect(v43, v49))
      {
        [(PUTilingLayout *)self visibleRect];
        v28 = CGRectGetWidth(v44);
        [(PUScrubberTilingLayout *)self _slitSize];
        v30 = (v28 - v29) * -0.5;
        v45.origin.x = v4;
        v45.origin.y = v6;
        v45.size.width = v8;
        v45.size.height = v10;
        v46 = CGRectInset(v45, v30, 0.0);
        v4 = v46.origin.x;
        v6 = v46.origin.y;
        v8 = v46.size.width;
        v10 = v46.size.height;
      }
    }
  }

  v31 = v4;
  v32 = v6;
  v33 = v8;
  v34 = v10;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)setTimeIndicatorVerticalOffset:(double)offset
{
  if (self->_timeIndicatorVerticalOffset != offset)
  {
    self->_timeIndicatorVerticalOffset = offset;
    v5 = objc_alloc_init(PUScrubberTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:@"PUTileKindPlaybackTimeIndicator"];
    [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (id)_createLayoutInfoForTileWithIndexPath:(id)path kind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];
  v9 = [pathCopy isEqual:expandedItemIndexPath];

  [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:pathCopy withLoupeTransform:1 withExpanded:1];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if ([kindCopy isEqualToString:@"PUTileKindItemContent"])
  {
    if (v9)
    {
      [(PUScrubberTilingLayout *)self expandedItemWidth];
      v19 = v18;
      p_height = &self->_slitSize.height;
    }

    else
    {
      p_height = (MEMORY[0x1E695F060] + 8);
      v19 = *MEMORY[0x1E695F060];
    }

    v35 = *p_height;
    v36 = 1.0;
    if ([(PUScrubberTilingLayout *)self shouldHighlightSelectedItems]&& self->_delegateFlags.respondsToIsItemAtAtIndexPathSelected)
    {
      delegate = [(PUScrubberTilingLayout *)self delegate];
      v38 = [delegate layout:self isItemAtAtIndexPathSelected:pathCopy];

      if (v38)
      {
        v36 = 0.5;
      }

      else
      {
        v36 = 1.0;
      }
    }

    if ([(PUScrubberTilingLayout *)self useEmbeddedVideoScrubber]&& v9)
    {
      PXRectGetCenter();
      [(PUScrubberTilingLayout *)self _slitSize];
      PXRectWithCenterAndSize();
      v15 = v39;
      v17 = v40;
      v36 = 0.0;
    }

    [(PUScrubberTilingLayout *)self itemCornerRadius];
    v42 = v41;
    v30 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v43 = [PUExpandableTileLayoutInfo alloc];
    UIRectGetCenter();
    v45 = v44;
    v47 = v46;
    coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
    [(PUScrubberTilingLayout *)self _slitSize];
    v48 = *(MEMORY[0x1E695EFD0] + 16);
    v76 = *MEMORY[0x1E695EFD0];
    v77 = v48;
    v78 = *(MEMORY[0x1E695EFD0] + 32);
    v51 = [(PUExpandableTileLayoutInfo *)v43 initWithTileIdentifier:v30 center:&v76 size:coordinateSystem cornerRadius:v9 alpha:v45 transform:v47 zPosition:v15 coordinateSystem:v17 isExpanded:v42 expandedSize:v36 unexpandedSize:50.0, v19, v35, v49, v50];
    goto LABEL_25;
  }

  if ([kindCopy isEqualToString:@"PUTileKindPlayhead"])
  {
    if (v9 && [(PUScrubberTilingLayout *)self showPlayheadForExpandedItem])
    {
      [(PUScrubberTilingLayout *)self _slitSize];
      v22 = v21;
      v24 = v23;
      [(PUScrubberTilingLayout *)self playheadVerticalOverhang];
      v26 = v24 + v25 * 2.0;
      [(PUScrubberTilingLayout *)self currentItemFocusProgress];
      v28 = v11 + v15 * v27;
      v80.origin.x = v11;
      v80.origin.y = v13;
      v80.size.width = v15;
      v80.size.height = v17;
      MidY = CGRectGetMidY(v80);
      v30 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
      v31 = [PUTileLayoutInfo alloc];
      coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
      v33 = *(MEMORY[0x1E695EFD0] + 16);
      v76 = *MEMORY[0x1E695EFD0];
      v77 = v33;
      v78 = *(MEMORY[0x1E695EFD0] + 32);
      *&v34 = 120.0;
LABEL_21:
      v58 = *&v34;
      v59 = 1.0;
      v60 = v31;
      v61 = v30;
      v62 = v28;
      v63 = MidY;
      v64 = v22;
      v65 = v26;
LABEL_24:
      v51 = [(PUTileLayoutInfo *)v60 initWithTileIdentifier:v61 center:&v76 size:coordinateSystem alpha:v62 transform:v63 zPosition:v64 coordinateSystem:v65, v59, v58];
LABEL_25:
      v74 = v51;

      goto LABEL_27;
    }
  }

  else if ([kindCopy isEqualToString:@"PUTileKindPlaybackTimeIndicator"])
  {
    if (v9)
    {
      +[PUPlaybackTimeIndicatorTileViewController playbackTimeIndicatorTileSize];
      v22 = v52;
      v26 = v53;
      [(PUScrubberTilingLayout *)self currentItemFocusProgress];
      v28 = v11 + v15 * v54;
      v81.origin.x = v11;
      v81.origin.y = v13;
      v81.size.width = v15;
      v81.size.height = v17;
      v55 = CGRectGetMinY(v81) + -8.0 + v26 * -0.5;
      [(PUScrubberTilingLayout *)self timeIndicatorVerticalOffset];
      MidY = v56 + v55;
      v30 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
      v31 = [PUTileLayoutInfo alloc];
      coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
      v57 = *(MEMORY[0x1E695EFD0] + 16);
      v76 = *MEMORY[0x1E695EFD0];
      v77 = v57;
      v78 = *(MEMORY[0x1E695EFD0] + 32);
      *&v34 = 100.0;
      goto LABEL_21;
    }
  }

  else if (([kindCopy isEqualToString:@"PUTileKindVideoHighlightStrip"] & v9) == 1)
  {
    +[PUVideoHighlightStripTileViewController preferredTileHeight];
    v67 = v66;
    v82.origin.x = v11;
    v82.origin.y = v13;
    v82.size.width = v15;
    v82.size.height = v17;
    CGRectGetMinY(v82);
    v30 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v68 = [PUTileLayoutInfo alloc];
    UIRectGetCenter();
    v70 = v69;
    v72 = v71;
    coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
    v73 = *(MEMORY[0x1E695EFD0] + 16);
    v76 = *MEMORY[0x1E695EFD0];
    v77 = v73;
    v78 = *(MEMORY[0x1E695EFD0] + 32);
    v58 = 75.0;
    v59 = 1.0;
    v60 = v68;
    v61 = v30;
    v62 = v70;
    v63 = v72;
    v64 = v15;
    v65 = v67;
    goto LABEL_24;
  }

  v74 = 0;
LABEL_27:

  return v74;
}

- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  v8 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:kindCopy];
  v9 = [v8 objectForKeyedSubscript:pathCopy];

  if (!v9)
  {
    v9 = [(PUScrubberTilingLayout *)self _createLayoutInfoForTileWithIndexPath:pathCopy kind:kindCopy];
    v10 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:kindCopy];
    if (v10)
    {
      if (v9)
      {
LABEL_4:
        null = v9;
LABEL_7:
        v12 = null;
        [v10 setObject:null forKeyedSubscript:pathCopy];

        goto LABEL_8;
      }
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind setObject:v10 forKeyedSubscript:kindCopy];
      if (v9)
      {
        goto LABEL_4;
      }
    }

    null = [MEMORY[0x1E695DFB0] null];
    goto LABEL_7;
  }

LABEL_8:
  null2 = [MEMORY[0x1E695DFB0] null];
  v14 = [null2 isEqual:v9];

  if (v14)
  {

    v9 = 0;
  }

  return v9;
}

- (CGSize)sizeForSection:(int64_t)section numberOfItems:(int64_t)items
{
  [(PUScrubberTilingLayout *)self _slitSize];
  v8 = v7;
  if (items < 1)
  {
    v10 = *MEMORY[0x1E695F060];
  }

  else
  {
    [(PUScrubberTilingLayout *)self interItemSpacing];
    v10 = -(v9 - items * (v8 + v9));
  }

  [(PUTilingLayout *)self visibleRect];
  Height = CGRectGetHeight(v21);
  expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];
  v13 = expandedItemIndexPath;
  if (expandedItemIndexPath && [expandedItemIndexPath section] == section)
  {
    v14 = v10 - v8;
    [(PUScrubberTilingLayout *)self expandedItemWidth];
    v16 = v15;
    [(PUScrubberTilingLayout *)self expandedItemPadding];
    v10 = v14 + v16 + v17 * 2.0;
  }

  v18 = v10;
  v19 = Height;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)addLayoutInfosForTilesInRect:(CGRect)rect section:(int64_t)section toSet:(id)set
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  setCopy = set;
  v11 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:section];
  leftToRight = [(PUSectionedTilingLayout *)self leftToRight];
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  if (leftToRight)
  {
    MinX = CGRectGetMinX(*&v13);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxX = CGRectGetMaxX(v36);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v13);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MaxX = CGRectGetMinX(v37);
  }

  v19 = MaxX;
  v20 = [(PUScrubberTilingLayout *)self _indexOfItemClosestToAbscissa:section inSection:MinX];
  v21 = v20 & ~(v20 >> 63);
  v22 = [(PUScrubberTilingLayout *)self _indexOfItemClosestToAbscissa:section inSection:v19];
  v23 = v11 - 1;
  if (v22 < v11 - 1)
  {
    v23 = v22;
  }

  if (v21 <= v23)
  {
    v24 = v23 + 1;
    do
    {
      v25 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:section];
      if (!-[PUScrubberTilingLayout onlyShowExpandedItem](self, "onlyShowExpandedItem") || (-[PUScrubberTilingLayout expandedItemIndexPath](self, "expandedItemIndexPath"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v25 isEqual:v26], v26, v27))
      {
        v28 = [(PUScrubberTilingLayout *)self layoutInfoForTileWithIndexPath:v25 kind:@"PUTileKindItemContent"];
        [v28 frame];
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        if (CGRectIntersectsRect(v38, v40))
        {
          [setCopy addObject:v28];
        }
      }

      ++v21;
    }

    while (v24 != v21);
  }

  expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];
  if (expandedItemIndexPath)
  {
    [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:expandedItemIndexPath withLoupeTransform:0 withExpanded:1];
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    if (CGRectIntersectsRect(v39, v41))
    {
      if ([(PUScrubberTilingLayout *)self showPlayheadForExpandedItem])
      {
        v30 = [(PUScrubberTilingLayout *)self layoutInfoForTileWithIndexPath:expandedItemIndexPath kind:@"PUTileKindPlayhead"];
        [setCopy addObject:v30];
      }

      if ([(PUScrubberTilingLayout *)self _shouldShowTimeIndicatorForExpandedItemAtIndexPath:expandedItemIndexPath])
      {
        v31 = [(PUScrubberTilingLayout *)self layoutInfoForTileWithIndexPath:expandedItemIndexPath kind:@"PUTileKindPlaybackTimeIndicator"];
        [setCopy addObject:v31];
      }

      v32 = [(PUScrubberTilingLayout *)self layoutInfoForTileWithIndexPath:expandedItemIndexPath kind:@"PUTileKindVideoHighlightStrip"];
      if (v32)
      {
        [setCopy addObject:v32];
      }

      v33 = [(PUScrubberTilingLayout *)self layoutInfoForTileWithIndexPath:expandedItemIndexPath kind:@"PUTileKindEmbeddedVideoScrubber"];
      if (v33)
      {
        [setCopy addObject:v33];
      }
    }
  }
}

- (CGSize)estimatedSectionSize
{
  [(PUScrubberTilingLayout *)self sizeForSection:0x7FFFFFFFFFFFFFFFLL numberOfItems:20];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)invalidateLayoutWithContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([contextCopy invalidatedAllTiles])
  {
    [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind removeAllObjects];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    invalidatedTileKinds = [contextCopy invalidatedTileKinds];
    v6 = [invalidatedTileKinds countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(invalidatedTileKinds);
          }

          v10 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];
          [v10 removeAllObjects];

          ++v9;
        }

        while (v7 != v9);
        v7 = [invalidatedTileKinds countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PUScrubberTilingLayout_invalidateLayoutWithContext___block_invoke;
    v12[3] = &unk_1E7B7DD00;
    v12[4] = self;
    [contextCopy enumerateInvalidatedTilesUsingBlock:v12];
  }

  v11.receiver = self;
  v11.super_class = PUScrubberTilingLayout;
  [(PUTilingLayout *)&v11 invalidateLayoutWithContext:contextCopy];
}

void __54__PUScrubberTilingLayout_invalidateLayoutWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 232);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:a3];
  [v6 removeObjectForKey:v5];
}

- (void)prepareLayout
{
  v41.receiver = self;
  v41.super_class = PUScrubberTilingLayout;
  [(PUSectionedTilingLayout *)&v41 prepareLayout];
  [(PUTilingLayout *)self visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PUScrubberTilingLayout *)self contentPadding];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v42.size.height = v10 - (v11 + v16);
  v42.origin.x = v4 + v13;
  v42.origin.y = v12;
  v42.size.width = v15;
  Height = CGRectGetHeight(v42);
  self->_slitSize.height = Height;
  self->_slitSize.width = Height * self->_slitAspectRatio;
  [(PUScrubberTilingLayout *)self _focusAbscissa];
  v19 = v18;
  expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];
  if (expandedItemIndexPath && [(PUScrubberTilingLayout *)self snapToExpandedItem])
  {
    v21 = expandedItemIndexPath;
  }

  else
  {
    v21 = [(PUScrubberTilingLayout *)self _indexPathOfItemClosestToAbscissa:v19];
  }

  currentItemIndexPath = self->_currentItemIndexPath;
  self->_currentItemIndexPath = v21;

  v23 = self->_currentItemIndexPath;
  if (v23)
  {
    v40 = 0;
    [(PUScrubberTilingLayout *)self _normalizedTransitionProgressFrom:v23 withAbscissa:&v40 outNeighborIndexPath:v19];
    v25 = v24;
    v26 = v40;
  }

  else
  {
    v26 = 0;
    v25 = 0.0;
  }

  self->_currentItemTransitionProgress = v25;
  v27 = 0.5;
  if (expandedItemIndexPath)
  {
    [(PUScrubberTilingLayout *)self _rectForItemAtIndexPath:expandedItemIndexPath withLoupeTransform:0 withExpanded:1];
    if (v29 > 0.0)
    {
      v30 = (v19 - v28) / v29;
      if (v30 > 1.0)
      {
        v30 = 1.0;
      }

      v27 = fmax(v30, 0.0);
    }
  }

  self->_currentItemFocusProgress = v27;
  overrideLoupeIndexPath = [(PUScrubberTilingLayout *)self overrideLoupeIndexPath];

  if (overrideLoupeIndexPath)
  {
    overrideLoupeIndexPath2 = [(PUScrubberTilingLayout *)self overrideLoupeIndexPath];
    v33 = 0;
    currentItemTransitionProgress = 0.0;
  }

  else
  {
    overrideLoupeIndexPath2 = self->_currentItemIndexPath;
    v33 = v26;
    currentItemTransitionProgress = self->_currentItemTransitionProgress;
  }

  objc_storeStrong(&self->_loupeIndexPath, overrideLoupeIndexPath2);
  objc_storeStrong(&self->_loupeNeighborIndexPath, v33);
  self->_loupeTransitionProgress = currentItemTransitionProgress;
  if (overrideLoupeIndexPath2)
  {
    [(PUScrubberTilingLayout *)self _transformedSizeForIndexPath:overrideLoupeIndexPath2];
    v36 = v35;
    if (self->_loupeNeighborIndexPath)
    {
      [(PUScrubberTilingLayout *)self _transformedSizeForIndexPath:?];
      v38 = v36 + v37;
      [(PUScrubberTilingLayout *)self _slitSize];
      v36 = v38 - v39;
    }
  }

  else
  {
    v36 = 0.0;
  }

  self->_loupeWidth = v36;
}

- (void)invalidateSelectedItems
{
  v3 = objc_alloc_init(PUScrubberTilingLayoutInvalidationContext);
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
  [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)setShouldHighlightSelectedItems:(BOOL)items
{
  if (self->_shouldHighlightSelectedItems != items)
  {
    self->_shouldHighlightSelectedItems = items;
    [(PUScrubberTilingLayout *)self invalidateSelectedItems];
  }
}

- (void)setShowPlayheadForExpandedItem:(BOOL)item
{
  self->_showPlayheadForExpandedItem = item;
  v4 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUTilingLayoutInvalidationContext *)v4 invalidateAllTilesWithKind:@"PUTileKindPlayhead"];
  [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v4];
}

- (void)setExpandedItemPlayheadProgress:(double)progress
{
  if (self->_expandedItemPlayheadProgress != progress)
  {
    self->_expandedItemPlayheadProgress = progress;
  }
}

- (void)setExpandedItemWidth:(double)width
{
  if (self->_expandedItemWidth != width)
  {
    self->_expandedItemWidth = width;
    expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];

    if (expandedItemIndexPath)
    {
      [(PUSectionedTilingLayout *)self invalidateSectionInfos];
      v5 = objc_alloc_init(PUScrubberTilingLayoutInvalidationContext);
      [(PUScrubberTilingLayoutInvalidationContext *)v5 invalidateExpandedItem];
      [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v5];
    }
  }
}

- (void)setSnapToExpandedItem:(BOOL)item
{
  if (self->_snapToExpandedItem != item)
  {
    self->_snapToExpandedItem = item;
    expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];

    if (expandedItemIndexPath)
    {
      v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
      [(PUTilingLayoutInvalidationContext *)v5 invalidateContentBounds];
      [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v5];
    }
  }
}

- (void)setOnlyShowExpandedItem:(BOOL)item
{
  if (self->_onlyShowExpandedItem != item)
  {
    self->_onlyShowExpandedItem = item;
    v5 = objc_alloc_init(PUScrubberTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setExpandedItemIndexPath:(id)path
{
  pathCopy = path;
  expandedItemIndexPath = self->_expandedItemIndexPath;
  if (expandedItemIndexPath != pathCopy)
  {
    v8 = pathCopy;
    expandedItemIndexPath = [(NSIndexPath *)expandedItemIndexPath isEqual:pathCopy];
    pathCopy = v8;
    if ((expandedItemIndexPath & 1) == 0)
    {
      objc_storeStrong(&self->_expandedItemIndexPath, path);
      [(PUSectionedTilingLayout *)self invalidateSectionInfos];
      v7 = objc_alloc_init(PUScrubberTilingLayoutInvalidationContext);
      [(PUScrubberTilingLayoutInvalidationContext *)v7 invalidateExpandedItem];
      [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v7];

      pathCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](expandedItemIndexPath, pathCopy);
}

- (void)setLoupeAmount:(double)amount
{
  if (self->_loupeAmount != amount)
  {
    self->_loupeAmount = amount;
    expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];

    if (!expandedItemIndexPath)
    {
      v5 = objc_alloc_init(PUScrubberTilingLayoutInvalidationContext);
      [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
      [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v5];
    }
  }
}

- (void)setOverrideLoupeIndexPath:(id)path
{
  pathCopy = path;
  overrideLoupeIndexPath = self->_overrideLoupeIndexPath;
  if (overrideLoupeIndexPath != pathCopy)
  {
    v9 = pathCopy;
    overrideLoupeIndexPath = [overrideLoupeIndexPath isEqual:pathCopy];
    pathCopy = v9;
    if ((overrideLoupeIndexPath & 1) == 0)
    {
      objc_storeStrong(&self->_overrideLoupeIndexPath, path);
      overrideLoupeIndexPath = [(PUScrubberTilingLayout *)self loupeAmount];
      pathCopy = v9;
      if (v7 > 0.0)
      {
        v8 = objc_alloc_init(PUScrubberTilingLayoutInvalidationContext);
        [(PUTilingLayoutInvalidationContext *)v8 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
        [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v8];

        pathCopy = v9;
      }
    }
  }

  MEMORY[0x1EEE66BB8](overrideLoupeIndexPath, pathCopy);
}

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUTilingLayout *)self visibleRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v26.receiver = self;
  v26.super_class = PUScrubberTilingLayout;
  [(PUSectionedTilingLayout *)&v26 setVisibleRect:x, y, width, height];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  if (!CGRectEqualToRect(v27, v30))
  {
    v16 = objc_alloc_init(PUTilingLayoutInvalidationContext);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v17 = CGRectGetHeight(v28);
    v29.origin.x = v9;
    v29.origin.y = v11;
    v29.size.width = v13;
    v29.size.height = v15;
    if (v17 != CGRectGetHeight(v29))
    {
      __asm { FMOV            V0.2D, #-1.0 }

      self->_slitSize = _Q0;
      [(PUTilingLayoutInvalidationContext *)v16 invalidateContentBounds];
      [(PUTilingLayoutInvalidationContext *)v16 invalidateAllTiles];
LABEL_9:
      [(PUScrubberTilingLayout *)self invalidateLayoutWithContext:v16];

      return;
    }

    expandedItemIndexPath = [(PUScrubberTilingLayout *)self expandedItemIndexPath];

    if (expandedItemIndexPath)
    {
      [(PUTilingLayoutInvalidationContext *)v16 invalidateAllTilesWithKind:@"PUTileKindPlayhead"];
      [(PUTilingLayoutInvalidationContext *)v16 invalidateAllTilesWithKind:@"PUTileKindPlaybackTimeIndicator"];
      v24 = @"PUTileKindVideoHighlightStrip";
    }

    else
    {
      [(PUScrubberTilingLayout *)self loupeAmount];
      if (v25 <= 0.0)
      {
        goto LABEL_9;
      }

      v24 = @"PUTileKindItemContent";
    }

    [(PUTilingLayoutInvalidationContext *)v16 invalidateAllTilesWithKind:v24];
    goto LABEL_9;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToAspectRatioForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowTimeIndicatorForExpandedItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToIsItemAtAtIndexPathSelected = objc_opt_respondsToSelector() & 1;
  }
}

- (PUScrubberTilingLayout)init
{
  v14.receiver = self;
  v14.super_class = PUScrubberTilingLayout;
  v2 = [(PUTilingLayout *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_expandedItemPadding = 20.0;
    __asm { FMOV            V0.2D, #2.0 }

    v2->_interItemSpacing = _Q0;
    v2->_slitAspectRatio = 0.5;
    __asm { FMOV            V0.2D, #-1.0 }

    v2->_slitSize = _Q0;
    v2->_maxAspectRatio = 2.0;
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v2->_contentPadding.top = *MEMORY[0x1E69DDCE0];
    *&v2->_contentPadding.bottom = v10;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    layoutInfosByIndexPathByTileKind = v3->_layoutInfosByIndexPathByTileKind;
    v3->_layoutInfosByIndexPathByTileKind = dictionary;

    v3->_showPlayheadForExpandedItem = 1;
  }

  return v3;
}

@end