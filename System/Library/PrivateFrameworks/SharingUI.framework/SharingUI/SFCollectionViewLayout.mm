@interface SFCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldReverseLayoutDirection;
- (CGPoint)firstItemCenterForContainerWidth:(double)a3;
- (CGSize)_evaluatePreferredItemSizeForItemsAtIndexPaths:(id)a3;
- (CGSize)evaluatedContentSize;
- (CGSize)evaluatedItemSize;
- (SFCollectionViewDelegateLayout)fallbackDelegate;
- (SFCollectionViewLayout)init;
- (UIEdgeInsets)_evaluateInsetForSectionAtIndex:(int64_t)a3;
- (UIEdgeInsets)evaluatedInset;
- (double)_evaluateHorizontalItemOffsetForItemSize:(CGSize)a3 inset:(UIEdgeInsets)a4 containerWidth:(double)a5 offscreenPeekInFactor:(float)a6;
- (id)_indexPathsForItemsInSection:(int64_t)a3;
- (id)_layoutAttributesForItemAtIndexPath:(id)a3 numberOfItemsInSection:(unint64_t)a4;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)calculateLayoutValuesForIndexPaths:(id)a3 containerWidth:(double)a4;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateGroupViewLayoutAnimated:(BOOL)a3;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
@end

@implementation SFCollectionViewLayout

- (SFCollectionViewLayout)init
{
  v5.receiver = self;
  v5.super_class = SFCollectionViewLayout;
  v2 = [(SFCollectionViewLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SFCollectionViewLayout *)v2 _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
  }

  return v3;
}

- (CGPoint)firstItemCenterForContainerWidth:(double)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(SFCollectionViewLayout *)self calculateLayoutValuesForIndexPaths:v6 containerWidth:a3];

  v7 = [(SFCollectionViewLayout *)self _layoutAttributesForItemAtIndexPath:v5 numberOfItemsInSection:1];
  [v7 center];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)calculateLayoutValuesForIndexPaths:(id)a3 containerWidth:(double)a4
{
  v24 = a3;
  [(SFCollectionViewLayout *)self _evaluatePreferredItemSizeForItemsAtIndexPaths:?];
  v29 = v7;
  v30 = v6;
  v25 = *MEMORY[0x1E69DDCE0];
  v26 = *(MEMORY[0x1E69DDCE0] + 8);
  v27 = *(MEMORY[0x1E69DDCE0] + 16);
  v28 = *(MEMORY[0x1E69DDCE0] + 24);
  v8 = 15;
  v9 = 3.40282347e38;
  do
  {
    v10 = v8 / 100.0;
    [(SFCollectionViewLayout *)self _evaluateInsetForSectionAtIndex:0];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    *&v19 = v10;
    [(SFCollectionViewLayout *)self _evaluateHorizontalItemOffsetForItemSize:v30 inset:v29 containerWidth:v11 offscreenPeekInFactor:v13, v15, v17, a4, v19];
    if (v20 > 0.0)
    {
      v18 = 9.0;
      *&v21 = v8 / 100.0;
      [(SFCollectionViewLayout *)self _evaluateHorizontalItemOffsetForItemSize:v30 inset:v29 containerWidth:v12 offscreenPeekInFactor:9.0, v16, 9.0, a4, v21];
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

      v27 = v16;
      v28 = v18;
      v25 = v12;
      v26 = v14;
    }

    if (v9 <= 12.0)
    {
      break;
    }

    v22 = v8 >= 0x2E;
    v8 += 5;
  }

  while (!v22);
  v23 = v28 + v26 + [v24 count] * v30;
  v31 = v23 + ([v24 count] - 1) * v9;
  [(SFCollectionViewLayout *)self setEvaluatedHorizontalItemOffset:v9];
  [(SFCollectionViewLayout *)self setEvaluatedInset:v25, v26, v27, v28];
  [(SFCollectionViewLayout *)self setEvaluatedItemSize:v30, v29];
  [(SFCollectionViewLayout *)self setEvaluatedContentSize:v31, v27 + v29 + v25];
}

- (void)prepareLayout
{
  v30 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = SFCollectionViewLayout;
  [(SFCollectionViewLayout *)&v28 prepareLayout];
  v3 = [(SFCollectionViewLayout *)self _indexPathsForItemsInSection:0];
  v4 = [(SFCollectionViewLayout *)self collectionView];
  [v4 frame];
  [(SFCollectionViewLayout *)self calculateLayoutValuesForIndexPaths:v3 containerWidth:CGRectGetWidth(v31)];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[SFCollectionViewLayout _layoutAttributesForItemAtIndexPath:numberOfItemsInSection:](self, "_layoutAttributesForItemAtIndexPath:numberOfItemsInSection:", *(*(&v24 + 1) + 8 * i), [v6 count]);
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  [(SFCollectionViewLayout *)self setPreparedLayoutAttributes:v5];
  if ([(SFCollectionViewLayout *)self shouldReverseLayoutDirection])
  {
    v12 = [(SFCollectionViewLayout *)self collectionView];
    [v12 frame];
    Width = CGRectGetWidth(v32);
    [(SFCollectionViewLayout *)self evaluatedContentSize];
    v15 = Width - v14;

    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = [(SFCollectionViewLayout *)self collectionView];
    [v16 contentInset];
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(SFCollectionViewLayout *)self collectionView];
    [v23 setContentInset:{v18, v15, v20, v22}];
  }
}

- (BOOL)shouldReverseLayoutDirection
{
  v3 = [(SFCollectionViewLayout *)self collectionView];
  if ([v3 _shouldReverseLayoutDirection])
  {
    v4 = [(SFCollectionViewLayout *)self _wantsRightToLeftHorizontalMirroringIfNeeded]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  Width = CGRectGetWidth(a3);
  [(SFCollectionViewLayout *)self collectionViewContentSize];
  return Width != v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(SFCollectionViewLayout *)self preparedLayoutAttributes];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__SFCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v12[3] = &unk_1E7EE3D08;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v10 = v8;
  v13 = v10;
  [v9 enumerateObjectsUsingBlock:v12];

  return v10;
}

void __60__SFCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  if (CGRectIntersectsRect(v5, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SFCollectionViewLayout *)self preparedLayoutAttributes];
  v6 = [v4 item];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SFCollectionViewLayout;
  v5 = [(SFCollectionViewLayout *)&v21 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(SFCollectionViewLayout *)self preparedUpdateItems];
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
  v21.super_class = SFCollectionViewLayout;
  v5 = [(SFCollectionViewLayout *)&v21 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(SFCollectionViewLayout *)self preparedUpdateItems];
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
  v5.super_class = SFCollectionViewLayout;
  v4 = a3;
  [(SFCollectionViewLayout *)&v5 prepareForCollectionViewUpdates:v4];
  [(SFCollectionViewLayout *)self setPreparedUpdateItems:v4, v5.receiver, v5.super_class];
}

- (void)finalizeCollectionViewUpdates
{
  [(SFCollectionViewLayout *)self setPreparedUpdateItems:0];
  v3.receiver = self;
  v3.super_class = SFCollectionViewLayout;
  [(SFCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
}

- (CGSize)_evaluatePreferredItemSizeForItemsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(SFCollectionViewLayout *)self collectionView];
  v6 = [v5 delegate];
  if (!v6)
  {
    v6 = [(SFCollectionViewLayout *)self fallbackDelegate];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v21 = "";
  v22 = *MEMORY[0x1E695F060];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__SFCollectionViewLayout__evaluatePreferredItemSizeForItemsAtIndexPaths___block_invoke;
  v13[3] = &unk_1E7EE3D30;
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

uint64_t __73__SFCollectionViewLayout__evaluatePreferredItemSizeForItemsAtIndexPaths___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) collectionView:*(a1 + 40) layout:*(a1 + 48) preferredSizeForItemAtIndexPath:a2];
  v6 = *(*(a1 + 56) + 8);
  if (*(v6 + 40) >= v5)
  {
    v5 = *(v6 + 40);
  }

  *(v6 + 40) = v5;
  v7 = *(*(a1 + 56) + 8);
  if (*(v7 + 32) >= v4)
  {
    v4 = *(v7 + 32);
  }

  *(v7 + 32) = v4;
  return result;
}

- (UIEdgeInsets)_evaluateInsetForSectionAtIndex:(int64_t)a3
{
  v3 = 0.0;
  v4 = 2.0;
  v5 = 0.0;
  v6 = 2.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)_indexPathsForItemsInSection:(int64_t)a3
{
  v4 = [(SFCollectionViewLayout *)self collectionView];
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

- (double)_evaluateHorizontalItemOffsetForItemSize:(CGSize)a3 inset:(UIEdgeInsets)a4 containerWidth:(double)a5 offscreenPeekInFactor:(float)a6
{
  v6 = a5 - a3.width * a6 - a4.left;
  v7 = vcvtmd_u64_f64(v6 / a3.width);
  if (v7)
  {
    return floor((v6 - v7 * a3.width) / v7);
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

  if ([(SFCollectionViewLayout *)self shouldReverseLayoutDirection])
  {
    v10 = ~v9 + a4;
  }

  else
  {
    v10 = v9;
  }

  [(SFCollectionViewLayout *)self evaluatedItemSize];
  v12 = v11;
  v14 = v13;
  [(SFCollectionViewLayout *)self evaluatedHorizontalItemOffset];
  v16 = v12 * 0.5 + v12 * v10 + v15 * v10;
  [(SFCollectionViewLayout *)self evaluatedInset];
  v18 = v17 + v16;
  [(SFCollectionViewLayout *)self evaluatedInset];
  v20 = v14 * 0.5 + v19;
  [v8 setSize:{v12, v14}];
  [v8 setCenter:{v18, v20}];

  return v8;
}

- (void)invalidateGroupViewLayoutAnimated:(BOOL)a3
{
  if (a3)
  {
    v4 = [(SFCollectionViewLayout *)self collectionView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__SFCollectionViewLayout_invalidateGroupViewLayoutAnimated___block_invoke;
    v5[3] = &unk_1E7EE3720;
    v5[4] = self;
    [v4 performBatchUpdates:v5 completion:0];
  }

  else
  {

    [(SFCollectionViewLayout *)self invalidateLayout];
  }
}

- (SFCollectionViewDelegateLayout)fallbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_fallbackDelegate);

  return WeakRetained;
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

@end