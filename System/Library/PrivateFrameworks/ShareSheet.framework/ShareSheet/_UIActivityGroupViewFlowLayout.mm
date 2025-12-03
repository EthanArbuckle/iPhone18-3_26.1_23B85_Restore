@interface _UIActivityGroupViewFlowLayout
- (BOOL)shouldCancelDraggingForGesture:(id)gesture;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (BOOL)shouldReverseLayoutDirection;
- (CGSize)_evaluatePreferredItemSizeForItemsAtIndexPaths:(id)paths;
- (CGSize)evaluatedContentSize;
- (CGSize)evaluatedItemSize;
- (UIEdgeInsets)_evaluateInsetForSectionAtIndex:(int64_t)index;
- (UIEdgeInsets)evaluatedInset;
- (UIEdgeInsets)externalSafeInset;
- (UIOffset)draggingOffset;
- (double)_evaluateHorizontalItemOffsetForItemSize:(CGSize)size inset:(UIEdgeInsets)inset offscreenPeekInFactor:(float)factor;
- (id)_indexPathsForItemsInSection:(int64_t)section;
- (id)_layoutAttributesForItemAtIndexPath:(id)path numberOfItemsInSection:(unint64_t)section;
- (id)adjustLayoutAttributesForDraggingIfNeeded:(id)needed;
- (id)draggingViewForItemAtIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)indexPathForItemRecognizedByGesture:(id)gesture;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)beginDraggingForGesture:(id)gesture;
- (void)cancelDraggingForGesture:(id)gesture;
- (void)finalizeCollectionViewUpdates;
- (void)handleEditingGesture:(id)gesture;
- (void)invalidateGroupViewLayoutAnimated:(BOOL)animated;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareLayout;
- (void)setEditingGestureRecognizer:(id)recognizer;
- (void)updateDraggingViewForGesture:(id)gesture;
@end

@implementation _UIActivityGroupViewFlowLayout

- (void)setEditingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  editingGestureRecognizer = [(_UIActivityGroupViewFlowLayout *)self editingGestureRecognizer];

  if (editingGestureRecognizer != recognizerCopy)
  {
    [(UILongPressGestureRecognizer *)self->_editingGestureRecognizer removeTarget:self action:0];
    objc_storeStrong(&self->_editingGestureRecognizer, recognizer);
    [(UILongPressGestureRecognizer *)self->_editingGestureRecognizer addTarget:self action:sel_handleEditingGesture_];
  }
}

- (id)indexPathForItemRecognizedByGesture:(id)gesture
{
  gestureCopy = gesture;
  collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [gestureCopy locationInView:collectionView];
  v7 = v6;
  v9 = v8;

  collectionView2 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [collectionView2 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(_UIActivityGroupViewFlowLayout *)self evaluatedInset];
  v20 = v12 + v19;
  v22 = v14 + v21;
  v24 = v16 - (v19 + v23);
  v26 = v18 - (v21 + v25);

  v43.origin.x = v20;
  v43.origin.y = v22;
  v43.size.width = v24;
  v43.size.height = v26;
  v27 = CGRectGetWidth(v43) * 0.5;
  if (v27 <= 0.5)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0.5;
  }

  v44.origin.x = v20;
  v44.origin.y = v22;
  v44.size.width = v24;
  v44.size.height = v26;
  v29 = CGRectGetHeight(v44) * 0.5;
  if (v29 <= 0.5)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0.5;
  }

  v45.origin.x = v20;
  v45.origin.y = v22;
  v45.size.width = v24;
  v45.size.height = v26;
  v46 = CGRectInset(v45, v28, v30);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  v35 = fmax(v7, CGRectGetMinX(v46));
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v36 = fmin(v35, CGRectGetMaxX(v47));
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v37 = fmax(v9, CGRectGetMinY(v48));
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v38 = [(_UIActivityGroupViewFlowLayout *)self layoutAttributesForElementsInRect:v36 + -0.5, fmin(v37, CGRectGetMaxY(v49)) + -0.5, 1.0, 1.0];
  firstObject = [v38 firstObject];
  indexPath = [firstObject indexPath];

  return indexPath;
}

- (void)prepareLayout
{
  v59 = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _UIActivityGroupViewFlowLayout;
  [(_UIActivityGroupViewFlowLayout *)&v57 prepareLayout];
  v3 = [(_UIActivityGroupViewFlowLayout *)self _indexPathsForItemsInSection:0];
  [(_UIActivityGroupViewFlowLayout *)self _evaluatePreferredItemSizeForItemsAtIndexPaths:v3];
  v5 = v4;
  v7 = v6;
  v49 = *MEMORY[0x1E69DDCE0];
  v50 = *(MEMORY[0x1E69DDCE0] + 8);
  v48 = *(MEMORY[0x1E69DDCE0] + 16);
  v51 = *(MEMORY[0x1E69DDCE0] + 24);
  v8 = 15;
  v9 = 3.40282347e38;
  do
  {
    v10 = v8 / 100.0;
    [(_UIActivityGroupViewFlowLayout *)self _evaluateInsetForSectionAtIndex:0];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    *&v19 = v10;
    [(_UIActivityGroupViewFlowLayout *)self _evaluateHorizontalItemOffsetForItemSize:v5 inset:v7 offscreenPeekInFactor:v11, v13, v15, v17, v19];
    if (v20 > 0.0)
    {
      v18 = 9.0;
      *&v21 = v8 / 100.0;
      [(_UIActivityGroupViewFlowLayout *)self _evaluateHorizontalItemOffsetForItemSize:v5 inset:v7 offscreenPeekInFactor:v12, 9.0, v16, 9.0, v21];
      v14 = 9.0;
    }

    if (v20 <= v9)
    {
      if (v20 >= 8.0)
      {
        v9 = v20;
      }

      else
      {
        v9 = 8.0;
      }

      v50 = v14;
      v51 = v18;
      v48 = v16;
      v49 = v12;
    }

    if (v9 <= 12.0)
    {
      break;
    }

    v22 = v8 >= 0x2E;
    v8 += 5;
  }

  while (!v22);
  [(_UIActivityGroupViewFlowLayout *)self externalSafeInset];
  v24 = fmax(v48 - v23, 0.0);
  [(_UIActivityGroupViewFlowLayout *)self externalSafeInset];
  v26 = fmax(v49 - v25, 0.0);
  v27 = v51 + v50 + [v3 count] * v5;
  v52 = v27 + ([v3 count] - 1) * v9;
  [(_UIActivityGroupViewFlowLayout *)self externalSafeInset];
  v29 = v24;
  v30 = v24 + v26 + v7 + v28;
  [(_UIActivityGroupViewFlowLayout *)self externalSafeInset];
  v32 = v31 + v30;
  [(_UIActivityGroupViewFlowLayout *)self setEvaluatedHorizontalItemOffset:v9];
  [(_UIActivityGroupViewFlowLayout *)self setEvaluatedInset:v26, v50, v29, v51];
  [(_UIActivityGroupViewFlowLayout *)self setEvaluatedItemSize:v5, v7];
  [(_UIActivityGroupViewFlowLayout *)self evaluatedContentSize];
  v34 = v33;
  v36 = v35;
  [(_UIActivityGroupViewFlowLayout *)self setEvaluatedContentSize:v52, v32];
  v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v38 = v3;
  v39 = [v38 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v54;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = -[_UIActivityGroupViewFlowLayout _layoutAttributesForItemAtIndexPath:numberOfItemsInSection:](self, "_layoutAttributesForItemAtIndexPath:numberOfItemsInSection:", *(*(&v53 + 1) + 8 * i), [v38 count]);
        if (v43)
        {
          [v37 addObject:v43];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v40);
  }

  [(_UIActivityGroupViewFlowLayout *)self setPreparedLayoutAttributes:v37];
  if ([(_UIActivityGroupViewFlowLayout *)self shouldReverseLayoutDirection])
  {
    collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
    [collectionView frame];
    CGRectGetWidth(v60);
    [collectionView contentInset];
    [collectionView setContentInset:?];
    if (v34 != v52 || v36 != v32)
    {
      [collectionView frame];
      v47 = v52 - v46;
      [collectionView contentOffset];
      [collectionView setContentOffset:v47];
    }
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v8 = CGRectGetHeight(change);
  [(_UIActivityGroupViewFlowLayout *)self collectionViewContentSize];
  if (v8 != v9)
  {
    return 1;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGRectGetWidth(v14);
  collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [collectionView bounds];
  v12 = v10 != CGRectGetWidth(v15);

  return v12;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  array = [MEMORY[0x1E695DF70] array];
  preparedLayoutAttributes = [(_UIActivityGroupViewFlowLayout *)self preparedLayoutAttributes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68___UIActivityGroupViewFlowLayout_layoutAttributesForElementsInRect___block_invoke;
  v14[3] = &unk_1E71FB540;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v14[4] = self;
  v10 = array;
  v15 = v10;
  [preparedLayoutAttributes enumerateObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  preparedLayoutAttributes = [(_UIActivityGroupViewFlowLayout *)self preparedLayoutAttributes];
  item = [pathCopy item];

  v7 = [preparedLayoutAttributes objectAtIndexedSubscript:item];

  v8 = [(_UIActivityGroupViewFlowLayout *)self adjustLayoutAttributesForDraggingIfNeeded:v7];

  return v7;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = _UIActivityGroupViewFlowLayout;
  v5 = [(_UIActivityGroupViewFlowLayout *)&v21 initialLayoutAttributesForAppearingItemAtIndexPath:pathCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  preparedUpdateItems = [(_UIActivityGroupViewFlowLayout *)self preparedUpdateItems];
  v7 = [preparedUpdateItems countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(preparedUpdateItems);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (![v11 updateAction])
        {
          indexPathAfterUpdate = [v11 indexPathAfterUpdate];
          v13 = [indexPathAfterUpdate isEqual:pathCopy];

          if (v13)
          {
            [v5 setAlpha:0.0];
            CGAffineTransformMakeScale(&v16, 0.1, 0.1);
            v15 = v16;
            [v5 setTransform:&v15];

            goto LABEL_12;
          }
        }
      }

      v8 = [preparedUpdateItems countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [v5 setAlpha:1.0];
LABEL_12:

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = _UIActivityGroupViewFlowLayout;
  v5 = [(_UIActivityGroupViewFlowLayout *)&v21 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  preparedUpdateItems = [(_UIActivityGroupViewFlowLayout *)self preparedUpdateItems];
  v7 = [preparedUpdateItems countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(preparedUpdateItems);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 updateAction] == 1)
        {
          indexPathBeforeUpdate = [v11 indexPathBeforeUpdate];
          v13 = [indexPathBeforeUpdate isEqual:pathCopy];

          if (v13)
          {
            [v5 setAlpha:0.0];
            CGAffineTransformMakeScale(&v16, 0.1, 0.1);
            v15 = v16;
            [v5 setTransform:&v15];

            goto LABEL_12;
          }
        }
      }

      v8 = [preparedUpdateItems countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [v5 setAlpha:1.0];
LABEL_12:

  return v5;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v5.receiver = self;
  v5.super_class = _UIActivityGroupViewFlowLayout;
  updatesCopy = updates;
  [(_UIActivityGroupViewFlowLayout *)&v5 prepareForCollectionViewUpdates:updatesCopy];
  [(_UIActivityGroupViewFlowLayout *)self setPreparedUpdateItems:updatesCopy, v5.receiver, v5.super_class];
}

- (void)finalizeCollectionViewUpdates
{
  [(_UIActivityGroupViewFlowLayout *)self setPreparedUpdateItems:0];
  v3.receiver = self;
  v3.super_class = _UIActivityGroupViewFlowLayout;
  [(_UIActivityGroupViewFlowLayout *)&v3 finalizeCollectionViewUpdates];
}

- (CGSize)_evaluatePreferredItemSizeForItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  delegate = [collectionView delegate];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = &unk_18B4478A9;
  v22 = *MEMORY[0x1E695F060];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81___UIActivityGroupViewFlowLayout__evaluatePreferredItemSizeForItemsAtIndexPaths___block_invoke;
  v13[3] = &unk_1E71FB568;
  v7 = delegate;
  v14 = v7;
  v8 = collectionView;
  v15 = v8;
  selfCopy = self;
  v17 = &v18;
  [pathsCopy enumerateObjectsUsingBlock:v13];
  v9 = v19[4];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIEdgeInsets)_evaluateInsetForSectionAtIndex:(int64_t)index
{
  collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  traitCollection = [collectionView traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  v6 = 7.0;
  if (verticalSizeClass != 1)
  {
    v6 = 19.0;
  }

  v7 = 14.0;
  if (verticalSizeClass != 1)
  {
    v7 = 19.0;
  }

  v8 = 2.0;
  v9 = 2.0;
  result.right = v9;
  result.bottom = v7;
  result.left = v8;
  result.top = v6;
  return result;
}

- (id)_indexPathsForItemsInSection:(int64_t)section
{
  collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  if ([collectionView numberOfSections] <= section)
  {
    v6 = 0;
  }

  else
  {
    v5 = [collectionView numberOfItemsInSection:section];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:section];
        [v6 addObject:v8];
      }
    }
  }

  return v6;
}

- (double)_evaluateHorizontalItemOffsetForItemSize:(CGSize)size inset:(UIEdgeInsets)inset offscreenPeekInFactor:(float)factor
{
  left = inset.left;
  width = size.width;
  v8 = [(_UIActivityGroupViewFlowLayout *)self collectionView:size.width];
  [v8 frame];
  v9 = CGRectGetWidth(v13);

  v10 = v9 - width * factor - left;
  v11 = vcvtmd_u64_f64(v10 / width);
  if (v11)
  {
    return floor((v10 - v11 * width) / v11);
  }

  else
  {
    return 0.0;
  }
}

- (id)_layoutAttributesForItemAtIndexPath:(id)path numberOfItemsInSection:(unint64_t)section
{
  v6 = MEMORY[0x1E69DC858];
  pathCopy = path;
  v8 = [v6 layoutAttributesForCellWithIndexPath:pathCopy];
  item = [pathCopy item];

  if ([(_UIActivityGroupViewFlowLayout *)self shouldReverseLayoutDirection])
  {
    v10 = ~item + section;
  }

  else
  {
    v10 = item;
  }

  [(_UIActivityGroupViewFlowLayout *)self evaluatedItemSize];
  v12 = v11;
  v14 = v13;
  [(_UIActivityGroupViewFlowLayout *)self evaluatedHorizontalItemOffset];
  v16 = v12 * 0.5 + v12 * v10 + v15 * v10;
  [(_UIActivityGroupViewFlowLayout *)self evaluatedInset];
  v18 = v17 + v16;
  [(_UIActivityGroupViewFlowLayout *)self evaluatedInset];
  v20 = v14 * 0.5 + v19;
  [v8 setSize:{v12, v14}];
  [v8 setCenter:{v18, v20}];

  return v8;
}

- (id)adjustLayoutAttributesForDraggingIfNeeded:(id)needed
{
  neededCopy = needed;
  indexPathForDraggedItem = [(_UIActivityGroupViewFlowLayout *)self indexPathForDraggedItem];
  indexPath = [neededCopy indexPath];
  v7 = [indexPathForDraggedItem isEqual:indexPath];

  if (v7)
  {
    [neededCopy setHidden:1];
  }

  return neededCopy;
}

- (void)handleEditingGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    v5 = [(_UIActivityGroupViewFlowLayout *)self indexPathForItemRecognizedByGesture:gestureCopy];
    if (v5)
    {
      collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
      [gestureCopy locationInView:collectionView];
      v8 = v7;
      v10 = v9;

      v11 = [(_UIActivityGroupViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v5];
      [v11 center];
      v13 = v12;
      v15 = v14;

      [(_UIActivityGroupViewFlowLayout *)self setDraggingOffset:v8 - v13, v10 - v15];
      [(_UIActivityGroupViewFlowLayout *)self setIndexPathForDraggedItem:v5];
      [(_UIActivityGroupViewFlowLayout *)self beginDraggingForGesture:gestureCopy];
    }

    else
    {
      [(_UIActivityGroupViewFlowLayout *)self setIndexPathForDraggedItem:0];
    }
  }

  if ([gestureCopy state] == 2)
  {
    v16 = [(_UIActivityGroupViewFlowLayout *)self indexPathForItemRecognizedByGesture:gestureCopy];
    indexPathForDraggedItem = [(_UIActivityGroupViewFlowLayout *)self indexPathForDraggedItem];
    if (([indexPathForDraggedItem isEqual:v16] & 1) == 0)
    {
      collectionView2 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
      delegate = [collectionView2 delegate];
      collectionView3 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
      v21 = [delegate collectionView:collectionView3 layout:self moveItemAtIndexPath:indexPathForDraggedItem toIndexPath:v16];

      if (v21)
      {
        collectionView4 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __55___UIActivityGroupViewFlowLayout_handleEditingGesture___block_invoke;
        v23[3] = &unk_1E71F9638;
        v23[4] = self;
        v24 = indexPathForDraggedItem;
        v16 = v21;
        v25 = v16;
        [collectionView4 performBatchUpdates:v23 completion:&__block_literal_global_48];
      }

      else
      {
        v16 = 0;
      }
    }

    [(_UIActivityGroupViewFlowLayout *)self updateDraggingViewForGesture:gestureCopy];
    if ([(_UIActivityGroupViewFlowLayout *)self shouldCancelDraggingForGesture:gestureCopy])
    {
      [gestureCopy setState:4];
    }
  }

  if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
  {
    [(_UIActivityGroupViewFlowLayout *)self cancelDraggingForGesture:gestureCopy];
  }
}

- (void)invalidateGroupViewLayoutAnimated:(BOOL)animated
{
  if (animated)
  {
    collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68___UIActivityGroupViewFlowLayout_invalidateGroupViewLayoutAnimated___block_invoke;
    v5[3] = &unk_1E71F9510;
    v5[4] = self;
    [collectionView performBatchUpdates:v5 completion:0];
  }

  else
  {

    [(_UIActivityGroupViewFlowLayout *)self invalidateLayout];
  }
}

- (BOOL)shouldReverseLayoutDirection
{
  collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  if ([collectionView _shouldReverseLayoutDirection])
  {
    v4 = [(_UIActivityGroupViewFlowLayout *)self _wantsRightToLeftHorizontalMirroringIfNeeded]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)draggingViewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  delegate = [collectionView delegate];
  collectionView2 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  v8 = [delegate collectionView:collectionView2 layout:self needsContainerViewForDraggingItemAtIndexPath:pathCopy];

  v9 = [collectionView cellForItemAtIndexPath:pathCopy];

  [v9 bounds];
  [v9 convertRect:v8 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  draggingView = [v9 draggingView];
  [draggingView setFrame:{v11, v13, v15, v17}];
  [v8 addSubview:draggingView];

  return draggingView;
}

- (void)beginDraggingForGesture:(id)gesture
{
  indexPathForDraggedItem = [(_UIActivityGroupViewFlowLayout *)self indexPathForDraggedItem];
  v5 = [(_UIActivityGroupViewFlowLayout *)self draggingViewForItemAtIndexPath:indexPathForDraggedItem];
  [(_UIActivityGroupViewFlowLayout *)self setDraggingView:v5];

  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___UIActivityGroupViewFlowLayout_beginDraggingForGesture___block_invoke;
  v8[3] = &unk_1E71F9510;
  v9 = v5;
  v7 = v5;
  [v6 animateWithDuration:132 delay:v8 options:&__block_literal_global_18 animations:0.3 completion:0.0];
  [(_UIActivityGroupViewFlowLayout *)self invalidateGroupViewLayoutAnimated:0];
}

- (void)updateDraggingViewForGesture:(id)gesture
{
  draggingView = [(_UIActivityGroupViewFlowLayout *)self draggingView];
  superview = [draggingView superview];

  editingGestureRecognizer = [(_UIActivityGroupViewFlowLayout *)self editingGestureRecognizer];
  [editingGestureRecognizer locationInView:superview];
  v7 = v6;
  v9 = v8;

  [(_UIActivityGroupViewFlowLayout *)self draggingOffset];
  v11 = v7 - v10;
  [(_UIActivityGroupViewFlowLayout *)self draggingOffset];
  v13 = v9 - v12;
  draggingView2 = [(_UIActivityGroupViewFlowLayout *)self draggingView];
  [draggingView2 setCenter:{v11, v13}];

  draggingView3 = [(_UIActivityGroupViewFlowLayout *)self draggingView];
  [draggingView3 setMaskView:0];
}

- (BOOL)shouldCancelDraggingForGesture:(id)gesture
{
  gestureCopy = gesture;
  collectionView = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [collectionView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  v26 = CGRectInset(v25, -120.0, -120.0);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  collectionView2 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [gestureCopy locationInView:collectionView2];
  v20 = v19;
  v22 = v21;

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v24.x = v20;
  v24.y = v22;
  return !CGRectContainsPoint(v27, v24);
}

- (void)cancelDraggingForGesture:(id)gesture
{
  draggingView = [(_UIActivityGroupViewFlowLayout *)self draggingView];
  v5 = draggingView;
  if (draggingView)
  {
    v6 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___UIActivityGroupViewFlowLayout_cancelDraggingForGesture___block_invoke;
    v13[3] = &unk_1E71F91A0;
    v14 = draggingView;
    selfCopy = self;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __59___UIActivityGroupViewFlowLayout_cancelDraggingForGesture___block_invoke_2;
    v10 = &unk_1E71FA638;
    selfCopy2 = self;
    v12 = v14;
    [v6 animateWithDuration:132 delay:v13 options:&v7 animations:0.3 completion:0.0];
    [(_UIActivityGroupViewFlowLayout *)self setDraggingView:0, v7, v8, v9, v10, selfCopy2];
  }
}

- (UIEdgeInsets)externalSafeInset
{
  top = self->_externalSafeInset.top;
  left = self->_externalSafeInset.left;
  bottom = self->_externalSafeInset.bottom;
  right = self->_externalSafeInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)evaluatedInset
{
  top = self->_evaluatedInset.top;
  left = self->_evaluatedInset.left;
  bottom = self->_evaluatedInset.bottom;
  right = self->_evaluatedInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)evaluatedItemSize
{
  width = self->_evaluatedItemSize.width;
  height = self->_evaluatedItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)evaluatedContentSize
{
  width = self->_evaluatedContentSize.width;
  height = self->_evaluatedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIOffset)draggingOffset
{
  horizontal = self->_draggingOffset.horizontal;
  vertical = self->_draggingOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end