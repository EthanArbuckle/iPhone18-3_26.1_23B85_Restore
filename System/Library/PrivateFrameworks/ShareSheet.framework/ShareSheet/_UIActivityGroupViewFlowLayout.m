@interface _UIActivityGroupViewFlowLayout
- (BOOL)shouldCancelDraggingForGesture:(id)a3;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldReverseLayoutDirection;
- (CGSize)_evaluatePreferredItemSizeForItemsAtIndexPaths:(id)a3;
- (CGSize)evaluatedContentSize;
- (CGSize)evaluatedItemSize;
- (UIEdgeInsets)_evaluateInsetForSectionAtIndex:(int64_t)a3;
- (UIEdgeInsets)evaluatedInset;
- (UIEdgeInsets)externalSafeInset;
- (UIOffset)draggingOffset;
- (double)_evaluateHorizontalItemOffsetForItemSize:(CGSize)a3 inset:(UIEdgeInsets)a4 offscreenPeekInFactor:(float)a5;
- (id)_indexPathsForItemsInSection:(int64_t)a3;
- (id)_layoutAttributesForItemAtIndexPath:(id)a3 numberOfItemsInSection:(unint64_t)a4;
- (id)adjustLayoutAttributesForDraggingIfNeeded:(id)a3;
- (id)draggingViewForItemAtIndexPath:(id)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)indexPathForItemRecognizedByGesture:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)beginDraggingForGesture:(id)a3;
- (void)cancelDraggingForGesture:(id)a3;
- (void)finalizeCollectionViewUpdates;
- (void)handleEditingGesture:(id)a3;
- (void)invalidateGroupViewLayoutAnimated:(BOOL)a3;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
- (void)setEditingGestureRecognizer:(id)a3;
- (void)updateDraggingViewForGesture:(id)a3;
@end

@implementation _UIActivityGroupViewFlowLayout

- (void)setEditingGestureRecognizer:(id)a3
{
  v6 = a3;
  v5 = [(_UIActivityGroupViewFlowLayout *)self editingGestureRecognizer];

  if (v5 != v6)
  {
    [(UILongPressGestureRecognizer *)self->_editingGestureRecognizer removeTarget:self action:0];
    objc_storeStrong(&self->_editingGestureRecognizer, a3);
    [(UILongPressGestureRecognizer *)self->_editingGestureRecognizer addTarget:self action:sel_handleEditingGesture_];
  }
}

- (id)indexPathForItemRecognizedByGesture:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [v10 bounds];
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
  v39 = [v38 firstObject];
  v40 = [v39 indexPath];

  return v40;
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
    v44 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
    [v44 frame];
    CGRectGetWidth(v60);
    [v44 contentInset];
    [v44 setContentInset:?];
    if (v34 != v52 || v36 != v32)
    {
      [v44 frame];
      v47 = v52 - v46;
      [v44 contentOffset];
      [v44 setContentOffset:v47];
    }
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetHeight(a3);
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
  v11 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [v11 bounds];
  v12 = v10 != CGRectGetWidth(v15);

  return v12;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(_UIActivityGroupViewFlowLayout *)self preparedLayoutAttributes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68___UIActivityGroupViewFlowLayout_layoutAttributesForElementsInRect___block_invoke;
  v14[3] = &unk_1E71FB540;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  [v9 enumerateObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityGroupViewFlowLayout *)self preparedLayoutAttributes];
  v6 = [v4 item];

  v7 = [v5 objectAtIndexedSubscript:v6];

  v8 = [(_UIActivityGroupViewFlowLayout *)self adjustLayoutAttributesForDraggingIfNeeded:v7];

  return v7;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _UIActivityGroupViewFlowLayout;
  v5 = [(_UIActivityGroupViewFlowLayout *)&v21 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(_UIActivityGroupViewFlowLayout *)self preparedUpdateItems];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (![v11 updateAction])
        {
          v12 = [v11 indexPathAfterUpdate];
          v13 = [v12 isEqual:v4];

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

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _UIActivityGroupViewFlowLayout;
  v5 = [(_UIActivityGroupViewFlowLayout *)&v21 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(_UIActivityGroupViewFlowLayout *)self preparedUpdateItems];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 updateAction] == 1)
        {
          v12 = [v11 indexPathBeforeUpdate];
          v13 = [v12 isEqual:v4];

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

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIActivityGroupViewFlowLayout;
  v4 = a3;
  [(_UIActivityGroupViewFlowLayout *)&v5 prepareForCollectionViewUpdates:v4];
  [(_UIActivityGroupViewFlowLayout *)self setPreparedUpdateItems:v4, v5.receiver, v5.super_class];
}

- (void)finalizeCollectionViewUpdates
{
  [(_UIActivityGroupViewFlowLayout *)self setPreparedUpdateItems:0];
  v3.receiver = self;
  v3.super_class = _UIActivityGroupViewFlowLayout;
  [(_UIActivityGroupViewFlowLayout *)&v3 finalizeCollectionViewUpdates];
}

- (CGSize)_evaluatePreferredItemSizeForItemsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  v6 = [v5 delegate];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = &unk_18B4478A9;
  v22 = *MEMORY[0x1E695F060];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81___UIActivityGroupViewFlowLayout__evaluatePreferredItemSizeForItemsAtIndexPaths___block_invoke;
  v13[3] = &unk_1E71FB568;
  v7 = v6;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  v16 = self;
  v17 = &v18;
  [v4 enumerateObjectsUsingBlock:v13];
  v9 = v19[4];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIEdgeInsets)_evaluateInsetForSectionAtIndex:(int64_t)a3
{
  v3 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  v4 = [v3 traitCollection];
  v5 = [v4 verticalSizeClass];

  v6 = 7.0;
  if (v5 != 1)
  {
    v6 = 19.0;
  }

  v7 = 14.0;
  if (v5 != 1)
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

- (id)_indexPathsForItemsInSection:(int64_t)a3
{
  v4 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  if ([v4 numberOfSections] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 numberOfItemsInSection:a3];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:a3];
        [v6 addObject:v8];
      }
    }
  }

  return v6;
}

- (double)_evaluateHorizontalItemOffsetForItemSize:(CGSize)a3 inset:(UIEdgeInsets)a4 offscreenPeekInFactor:(float)a5
{
  left = a4.left;
  width = a3.width;
  v8 = [(_UIActivityGroupViewFlowLayout *)self collectionView:a3.width];
  [v8 frame];
  v9 = CGRectGetWidth(v13);

  v10 = v9 - width * a5 - left;
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

- (id)_layoutAttributesForItemAtIndexPath:(id)a3 numberOfItemsInSection:(unint64_t)a4
{
  v6 = MEMORY[0x1E69DC858];
  v7 = a3;
  v8 = [v6 layoutAttributesForCellWithIndexPath:v7];
  v9 = [v7 item];

  if ([(_UIActivityGroupViewFlowLayout *)self shouldReverseLayoutDirection])
  {
    v10 = ~v9 + a4;
  }

  else
  {
    v10 = v9;
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

- (id)adjustLayoutAttributesForDraggingIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityGroupViewFlowLayout *)self indexPathForDraggedItem];
  v6 = [v4 indexPath];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    [v4 setHidden:1];
  }

  return v4;
}

- (void)handleEditingGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [(_UIActivityGroupViewFlowLayout *)self indexPathForItemRecognizedByGesture:v4];
    if (v5)
    {
      v6 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
      [v4 locationInView:v6];
      v8 = v7;
      v10 = v9;

      v11 = [(_UIActivityGroupViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v5];
      [v11 center];
      v13 = v12;
      v15 = v14;

      [(_UIActivityGroupViewFlowLayout *)self setDraggingOffset:v8 - v13, v10 - v15];
      [(_UIActivityGroupViewFlowLayout *)self setIndexPathForDraggedItem:v5];
      [(_UIActivityGroupViewFlowLayout *)self beginDraggingForGesture:v4];
    }

    else
    {
      [(_UIActivityGroupViewFlowLayout *)self setIndexPathForDraggedItem:0];
    }
  }

  if ([v4 state] == 2)
  {
    v16 = [(_UIActivityGroupViewFlowLayout *)self indexPathForItemRecognizedByGesture:v4];
    v17 = [(_UIActivityGroupViewFlowLayout *)self indexPathForDraggedItem];
    if (([v17 isEqual:v16] & 1) == 0)
    {
      v18 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
      v19 = [v18 delegate];
      v20 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
      v21 = [v19 collectionView:v20 layout:self moveItemAtIndexPath:v17 toIndexPath:v16];

      if (v21)
      {
        v22 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __55___UIActivityGroupViewFlowLayout_handleEditingGesture___block_invoke;
        v23[3] = &unk_1E71F9638;
        v23[4] = self;
        v24 = v17;
        v16 = v21;
        v25 = v16;
        [v22 performBatchUpdates:v23 completion:&__block_literal_global_48];
      }

      else
      {
        v16 = 0;
      }
    }

    [(_UIActivityGroupViewFlowLayout *)self updateDraggingViewForGesture:v4];
    if ([(_UIActivityGroupViewFlowLayout *)self shouldCancelDraggingForGesture:v4])
    {
      [v4 setState:4];
    }
  }

  if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
  {
    [(_UIActivityGroupViewFlowLayout *)self cancelDraggingForGesture:v4];
  }
}

- (void)invalidateGroupViewLayoutAnimated:(BOOL)a3
{
  if (a3)
  {
    v4 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68___UIActivityGroupViewFlowLayout_invalidateGroupViewLayoutAnimated___block_invoke;
    v5[3] = &unk_1E71F9510;
    v5[4] = self;
    [v4 performBatchUpdates:v5 completion:0];
  }

  else
  {

    [(_UIActivityGroupViewFlowLayout *)self invalidateLayout];
  }
}

- (BOOL)shouldReverseLayoutDirection
{
  v3 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  if ([v3 _shouldReverseLayoutDirection])
  {
    v4 = [(_UIActivityGroupViewFlowLayout *)self _wantsRightToLeftHorizontalMirroringIfNeeded]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)draggingViewForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  v6 = [v5 delegate];
  v7 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  v8 = [v6 collectionView:v7 layout:self needsContainerViewForDraggingItemAtIndexPath:v4];

  v9 = [v5 cellForItemAtIndexPath:v4];

  [v9 bounds];
  [v9 convertRect:v8 toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v9 draggingView];
  [v18 setFrame:{v11, v13, v15, v17}];
  [v8 addSubview:v18];

  return v18;
}

- (void)beginDraggingForGesture:(id)a3
{
  v4 = [(_UIActivityGroupViewFlowLayout *)self indexPathForDraggedItem];
  v5 = [(_UIActivityGroupViewFlowLayout *)self draggingViewForItemAtIndexPath:v4];
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

- (void)updateDraggingViewForGesture:(id)a3
{
  v4 = [(_UIActivityGroupViewFlowLayout *)self draggingView];
  v16 = [v4 superview];

  v5 = [(_UIActivityGroupViewFlowLayout *)self editingGestureRecognizer];
  [v5 locationInView:v16];
  v7 = v6;
  v9 = v8;

  [(_UIActivityGroupViewFlowLayout *)self draggingOffset];
  v11 = v7 - v10;
  [(_UIActivityGroupViewFlowLayout *)self draggingOffset];
  v13 = v9 - v12;
  v14 = [(_UIActivityGroupViewFlowLayout *)self draggingView];
  [v14 setCenter:{v11, v13}];

  v15 = [(_UIActivityGroupViewFlowLayout *)self draggingView];
  [v15 setMaskView:0];
}

- (BOOL)shouldCancelDraggingForGesture:(id)a3
{
  v4 = a3;
  v5 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [v5 bounds];
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
  v18 = [(_UIActivityGroupViewFlowLayout *)self collectionView];
  [v4 locationInView:v18];
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

- (void)cancelDraggingForGesture:(id)a3
{
  v4 = [(_UIActivityGroupViewFlowLayout *)self draggingView];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59___UIActivityGroupViewFlowLayout_cancelDraggingForGesture___block_invoke;
    v13[3] = &unk_1E71F91A0;
    v14 = v4;
    v15 = self;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __59___UIActivityGroupViewFlowLayout_cancelDraggingForGesture___block_invoke_2;
    v10 = &unk_1E71FA638;
    v11 = self;
    v12 = v14;
    [v6 animateWithDuration:132 delay:v13 options:&v7 animations:0.3 completion:0.0];
    [(_UIActivityGroupViewFlowLayout *)self setDraggingView:0, v7, v8, v9, v10, v11];
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