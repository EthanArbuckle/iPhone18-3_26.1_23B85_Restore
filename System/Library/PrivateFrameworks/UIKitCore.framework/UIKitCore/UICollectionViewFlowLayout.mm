@interface UICollectionViewFlowLayout
- (BOOL)_boundsAndInsetsAreValidForReferenceDimension;
- (BOOL)_shouldInvalidateLayoutForOldInsets:(UIEdgeInsets)a3 newInsets:(UIEdgeInsets)a4;
- (BOOL)_shouldInvalidateLayoutForUpdatedLayoutMargins:(UIEdgeInsets)a3 fromOldMargins:(UIEdgeInsets)a4;
- (BOOL)_shouldInvalidateLayoutForUpdatedSafeAreaInsets:(UIEdgeInsets)a3 fromOldInsets:(UIEdgeInsets)a4;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (CGRect)_frameForFooterInSection:(int64_t)a3 usingData:(id)a4;
- (CGRect)_frameForHeaderInSection:(int64_t)a3 usingData:(id)a4;
- (CGRect)_frameForItem:(int64_t)a3 inSection:(int64_t)a4 usingData:(id)a5;
- (CGRect)_frameForScrollingToFirstElementInSectionAtIndex:(int64_t)a3;
- (CGRect)_layoutFrameForSection:(int64_t)a3;
- (CGSize)_effectiveEstimatedItemSize;
- (CGSize)collectionViewContentSize;
- (CGSize)estimatedItemSize;
- (CGSize)footerReferenceSize;
- (CGSize)headerReferenceSize;
- (CGSize)itemSize;
- (CGSize)synchronizeLayout;
- (UICollectionViewFlowLayout)init;
- (UICollectionViewFlowLayout)initWithCoder:(id)a3;
- (UIEdgeInsets)_adjustedSectionInsetForSectionInset:(UIEdgeInsets)a3 forAxis:(unint64_t)a4;
- (UIEdgeInsets)sectionInset;
- (double)_dimensionFromCollectionView;
- (id)_existingLayoutAttributesForItemAtIndexPath:(id)a3;
- (id)_fetchAndCacheNewLayoutAttributesForCellWithIndexPath:(id)a3 frame:(CGRect)a4;
- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)a3;
- (id)_layoutAttributesForItemsInRect:(CGRect)a3;
- (id)finalLayoutAttributesForFooterInDeletedSection:(int64_t)a3;
- (id)finalLayoutAttributesForHeaderInDeletedSection:(int64_t)a3;
- (id)indexesForSectionFootersInRect:(CGRect)a3 usingData:(id)a4;
- (id)indexesForSectionHeadersInRect:(CGRect)a3 usingData:(id)a4;
- (id)initialLayoutAttributesForFooterInInsertedSection:(int64_t)a3;
- (id)initialLayoutAttributesForHeaderInInsertedSection:(int64_t)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForFooterInSection:(int64_t)a3 usingData:(id)a4;
- (id)layoutAttributesForHeaderInSection:(int64_t)a3 usingData:(id)a4;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3 usingData:(id)a4;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (int64_t)_sectionArrayIndexForIndexPath:(id)a3;
- (unint64_t)_layoutAxis;
- (void)_calculateAttributesForRect:(CGRect)a3;
- (void)_didPerformUpdateVisibleCellsPassWithLayoutOffset:(CGPoint)a3;
- (void)_fetchItemsInfoForRect:(CGRect)a3;
- (void)_finalizeCollectionViewUpdate:(id)a3;
- (void)_getSizingInfosWithExistingSizingDictionary:(id)a3;
- (void)_invalidateButKeepAllInfo;
- (void)_invalidateButKeepDelegateInfo;
- (void)_resetCachedItems;
- (void)_setCollectionView:(id)a3;
- (void)_setFooterFollowsSectionMargins:(BOOL)a3;
- (void)_setHeaderFollowsSectionMargins:(BOOL)a3;
- (void)_setRoundsToScreenScale:(BOOL)a3;
- (void)_updateCollectionViewScrollableAxis;
- (void)_updateContentSizeScrollingDimensionWithDelta:(double)a3;
- (void)_updateDelegateFlags;
- (void)_updateItemsLayoutForRect:(CGRect)a3 allowsPartialUpdate:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setEstimatedItemSize:(CGSize)estimatedItemSize;
- (void)setFooterReferenceSize:(CGSize)footerReferenceSize;
- (void)setHeaderReferenceSize:(CGSize)headerReferenceSize;
- (void)setItemSize:(CGSize)itemSize;
- (void)setMinimumInteritemSpacing:(CGFloat)minimumInteritemSpacing;
- (void)setMinimumLineSpacing:(CGFloat)minimumLineSpacing;
- (void)setScrollDirection:(UICollectionViewScrollDirection)scrollDirection;
- (void)setSectionFootersPinToVisibleBounds:(BOOL)sectionFootersPinToVisibleBounds;
- (void)setSectionHeadersPinToVisibleBounds:(BOOL)sectionHeadersPinToVisibleBounds;
- (void)setSectionInset:(UIEdgeInsets)sectionInset;
@end

@implementation UICollectionViewFlowLayout

- (void)_updateCollectionViewScrollableAxis
{
  [(UIScrollView *)self->super._collectionView _setContentScrollsAlongXAxis:self->_scrollDirection == 1];
  collectionView = self->super._collectionView;
  v4 = self->_scrollDirection == 0;

  [(UIScrollView *)collectionView _setContentScrollsAlongYAxis:v4];
}

- (void)_resetCachedItems
{
  [(NSMutableDictionary *)self->_cachedItemAttributes removeAllObjects];
  cachedItemFrames = self->_cachedItemFrames;

  [(NSMutableDictionary *)cachedItemFrames removeAllObjects];
}

- (UICollectionViewFlowLayout)init
{
  v5.receiver = self;
  v5.super_class = UICollectionViewFlowLayout;
  v2 = [(UICollectionViewLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    UICollectionViewFlowLayoutCommonInit(v2);
  }

  return v3;
}

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (unint64_t)_layoutAxis
{
  v2 = [(UICollectionViewFlowLayout *)self scrollDirection];
  if (v2)
  {
    return v2 == UICollectionViewScrollDirectionHorizontal;
  }

  else
  {
    return 2;
  }
}

- (void)prepareLayout
{
  v12.receiver = self;
  v12.super_class = UICollectionViewFlowLayout;
  [(UICollectionViewLayout *)&v12 prepareLayout];
  self->_contentSizeAdjustment = *MEMORY[0x1E695F060];
  self->_contentOffsetAdjustment = *MEMORY[0x1E695EFF8];
  v3 = [(UICollectionViewLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  if (!CGRectIsEmpty(v13))
  {
    [(UICollectionViewFlowLayout *)self _fetchItemsInfoForRect:v5, v7, v9, v11];
  }
}

- (BOOL)_boundsAndInsetsAreValidForReferenceDimension
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  scrollDirection = self->_scrollDirection;
  v9 = [(UICollectionViewLayout *)self collectionView];
  [v9 _effectiveContentInset];
  v11 = v10;
  v13 = v12;
  v14 = [(UICollectionViewLayout *)self collectionView];
  [v14 _effectiveContentInset];
  v16 = v15;
  v18 = v17;

  v19 = v5 - v13 - v18;
  if (scrollDirection)
  {
    v19 = v7 - v11 - v16;
  }

  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  return v19 > 0.0;
}

- (void)_updateDelegateFlags
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  v11 = [v3 _delegateActual];

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFFFD | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFFFB | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFFF7 | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFFEF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFFDF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFFBF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 1024;
  }

  else
  {
    v10 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFBFF | v10;
}

- (double)_dimensionFromCollectionView
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  v4 = v3;
  data = self->_data;
  if (data)
  {
    horizontal = data->_horizontal;
  }

  else
  {
    horizontal = 0;
  }

  [v3 bounds];
  v8 = v7;
  v10 = v9;
  [v4 _effectiveContentInset];
  v13 = v8 - v11 - v12;
  result = v10 - v14 - v15;
  if (!horizontal)
  {
    result = v13;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)collectionViewContentSize
{
  [(UICollectionViewFlowLayout *)self _fetchItemsInfoForRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  width = self->_currentLayoutSize.width;
  height = self->_currentLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UICollectionViewFlowLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = UICollectionViewFlowLayout;
  v5 = [(UICollectionViewLayout *)&v20 init];
  v6 = v5;
  if (v5)
  {
    UICollectionViewFlowLayoutCommonInit(v5);
    if ([v4 containsValueForKey:@"UIInteritemSpacing"])
    {
      [v4 decodeFloatForKey:@"UIInteritemSpacing"];
      v6->_interitemSpacing = v7;
    }

    if ([v4 containsValueForKey:@"UILineSpacing"])
    {
      [v4 decodeFloatForKey:@"UILineSpacing"];
      v6->_lineSpacing = v8;
    }

    if ([v4 containsValueForKey:@"UIItemSize"])
    {
      [v4 decodeCGSizeForKey:@"UIItemSize"];
      v6->_itemSize.width = v9;
      v6->_itemSize.height = v10;
    }

    if ([v4 containsValueForKey:@"UIHeaderReferenceSize"])
    {
      [v4 decodeCGSizeForKey:@"UIHeaderReferenceSize"];
      v6->_headerReferenceSize.width = v11;
      v6->_headerReferenceSize.height = v12;
    }

    if ([v4 containsValueForKey:@"UIFooterReferenceSize"])
    {
      [v4 decodeCGSizeForKey:@"UIFooterReferenceSize"];
      v6->_footerReferenceSize.width = v13;
      v6->_footerReferenceSize.height = v14;
    }

    if ([v4 containsValueForKey:@"UISectionInset"])
    {
      [v4 decodeUIEdgeInsetsForKey:@"UISectionInset"];
      v6->_sectionInset.top = v15;
      v6->_sectionInset.left = v16;
      v6->_sectionInset.bottom = v17;
      v6->_sectionInset.right = v18;
    }

    if ([v4 containsValueForKey:@"UISectionInsetReference"])
    {
      v6->_sectionInsetReference = [v4 decodeIntegerForKey:@"UISectionInsetReference"];
    }

    if ([v4 containsValueForKey:@"UIScrollDirection"])
    {
      v6->_scrollDirection = [v4 decodeIntegerForKey:@"UIScrollDirection"];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  interitemSpacing = self->_interitemSpacing;
  v16 = v4;
  if (interitemSpacing != 10.0)
  {
    *&interitemSpacing = interitemSpacing;
    [v4 encodeFloat:@"UIInteritemSpacing" forKey:interitemSpacing];
    v4 = v16;
  }

  lineSpacing = self->_lineSpacing;
  if (lineSpacing != 10.0)
  {
    *&lineSpacing = lineSpacing;
    [v16 encodeFloat:@"UILineSpacing" forKey:lineSpacing];
    v4 = v16;
  }

  if (self->_itemSize.width != 50.0 || self->_itemSize.height != 50.0)
  {
    [v16 encodeCGSize:@"UIItemSize" forKey:?];
    v4 = v16;
  }

  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  if (self->_headerReferenceSize.width != *MEMORY[0x1E695F060] || self->_headerReferenceSize.height != v9)
  {
    [v16 encodeCGSize:@"UIHeaderReferenceSize" forKey:?];
    v4 = v16;
  }

  if (self->_footerReferenceSize.width != v8 || self->_footerReferenceSize.height != v9)
  {
    [v16 encodeCGSize:@"UIFooterReferenceSize" forKey:?];
    v4 = v16;
  }

  v12 = *&self->_sectionInset.top;
  v13 = *&self->_sectionInset.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v12), vceqzq_f64(v13))))))
  {
    [v16 encodeUIEdgeInsets:@"UISectionInset" forKey:{*&v12, *&v13}];
    v4 = v16;
  }

  sectionInsetReference = self->_sectionInsetReference;
  if (sectionInsetReference)
  {
    [v16 encodeInteger:sectionInsetReference forKey:@"UISectionInsetReference"];
    v4 = v16;
  }

  scrollDirection = self->_scrollDirection;
  if (scrollDirection)
  {
    [v16 encodeInteger:scrollDirection forKey:@"UIScrollDirection"];
    v4 = v16;
  }
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The invalidation context (%@) sent to -[UICollectionViewFlowLayout invalidateLayoutWithContext:] is not an instance of type UICollectionViewFlowLayoutInvalidationContext or a subclass. Collection view: %@", v4, self->super._collectionView}];
  }

  if (dyld_program_sdk_at_least() && -[UICollectionViewFlowLayout _estimatesSizes](self, "_estimatesSizes") && (([v4 _retainExistingSizingInfoForEstimates] & 1) != 0 || objc_msgSend(v4, "_intent") == 3 && -[UICollectionView _dataSourceMatchesCurrentCounts](self->super._collectionView, "_dataSourceMatchesCurrentCounts")))
  {
    [(UICollectionViewFlowLayout *)self collectionViewContentSize];
    v6 = v5;
    v8 = v7;
    if (fabs(v5 * v7) >= 2.22044605e-16)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__41;
      v27 = __Block_byref_object_dispose__41;
      v28 = [(_UIFlowLayoutInfo *)self->_data specifiedItemSizes];
      v11 = [v4 _updateItems];
      v12 = [v11 count];

      if (v12)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = v24[5];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __58__UICollectionViewFlowLayout_invalidateLayoutWithContext___block_invoke;
        v19[3] = &unk_1E70FFEE0;
        v19[4] = self;
        v20 = v4;
        v22 = &v23;
        v15 = v13;
        v21 = v15;
        [v14 enumerateKeysAndObjectsUsingBlock:v19];
        v16 = v24[5];
        v24[5] = v15;
        v17 = v15;
      }

      [(_UIFlowLayoutInfo *)self->_data invalidate:?];
      [(UICollectionViewFlowLayout *)self _getSizingInfosWithExistingSizingDictionary:v24[5]];
      [(UICollectionViewFlowLayout *)self _updateItemsLayoutForRect:0 allowsPartialUpdate:0.0, 0.0, v6, v8];
      [(UICollectionViewFlowLayout *)self _resetCachedItems];
      *(&self->_gridLayoutFlags + 1) |= 0x180u;
      _Block_object_dispose(&v23, 8);
    }

    else
    {
      [(_UIFlowLayoutInfo *)self->_data invalidate:?];
      [(UICollectionViewFlowLayout *)self _resetCachedItems];
      *(&self->_gridLayoutFlags + 1) &= 0xFFFFFE7F;
    }
  }

  else
  {
    if ((([v4 invalidateFlowLayoutAttributes] & 1) != 0 || objc_msgSend(v4, "invalidateDataSourceCounts")) && (*(&self->_gridLayoutFlags + 1) & 0x80) != 0)
    {
      -[_UIFlowLayoutInfo invalidate:](self->_data, [v4 invalidateFlowLayoutDelegateMetrics] ^ 1);
      [(UICollectionViewFlowLayout *)self _resetCachedItems];
      if ([v4 invalidateFlowLayoutDelegateMetrics])
      {
        v9 = 0;
      }

      else if ([(UICollectionViewFlowLayout *)self _estimatesSizes])
      {
        v9 = 0;
      }

      else
      {
        v9 = 256;
      }

      *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFE7F | v9;
    }

    v10 = [v4 invalidatedItemIndexPaths];
    if ([v10 count])
    {
      [(NSMutableDictionary *)self->_cachedItemAttributes removeObjectsForKeys:v10];
      [(NSMutableDictionary *)self->_cachedItemFrames removeObjectsForKeys:v10];
    }
  }

  self->_contentSizeAdjustment = *MEMORY[0x1E695F060];
  self->_contentOffsetAdjustment = *MEMORY[0x1E695EFF8];
  v18.receiver = self;
  v18.super_class = UICollectionViewFlowLayout;
  [(UICollectionViewLayout *)&v18 invalidateLayoutWithContext:v4];
}

void __58__UICollectionViewFlowLayout_invalidateLayoutWithContext___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a2 item];
  v8 = [a2 section];
  if (dyld_program_sdk_at_least() && (v9 = *(*(a1 + 32) + 536)) != 0)
  {
    v10 = [v9 finalIndexPathForInitialIndexPath:a2];
    if (v10)
    {
      v11 = v10;
      v7 = [v10 item];
      v8 = [v11 section];

LABEL_26:
      v23 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:v8];
      [*(a1 + 48) setObject:v6 forKeyedSubscript:v23];
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [*(a1 + 40) _updateItems];
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (!v13)
    {

      goto LABEL_26;
    }

    v14 = v13;
    v15 = a1;
    v24 = v6;
    v16 = *v28;
    v25 = 1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [v18 indexPathBeforeUpdate];
        v20 = [v18 indexPathAfterUpdate];
        if ([v18 updateAction] == 1)
        {
          if ([v19 section] == v8)
          {
            if ([v19 item] == v7)
            {
              v25 = 0;
            }

            else
            {
              v7 -= [v19 item] < v7;
            }
          }
        }

        else if ([v18 updateAction])
        {
          v21 = *(*(v15 + 56) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = 0;

          *a4 = 1;
        }

        else if ([v20 section] == v8 && objc_msgSend(v20, "item") <= v7)
        {
          ++v7;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);

    v6 = v24;
    a1 = v15;
    if (v25)
    {
      goto LABEL_26;
    }
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UICollectionViewLayout *)self collectionView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *(&self->_gridLayoutFlags + 1);
  if ((v17 & 0x800) != 0)
  {
    v21 = [(UICollectionViewFlowLayout *)self indexesForSectionHeadersInRect:self->_data usingData:v10, v12, v14, v16];
    if ([v21 count])
    {
LABEL_14:

      return 1;
    }

    v22 = [(UICollectionViewFlowLayout *)self indexesForSectionHeadersInRect:self->_data usingData:x, y, width, height];
    v23 = [v22 count];

    if (v23)
    {
      return 1;
    }

    if ((*(&self->_gridLayoutFlags + 1) & 0x1000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v21 = [(UICollectionViewFlowLayout *)self indexesForSectionFootersInRect:self->_data usingData:v10, v12, v14, v16];
    if ([v21 count])
    {
      goto LABEL_14;
    }

    v24 = [(UICollectionViewFlowLayout *)self indexesForSectionFootersInRect:self->_data usingData:x, y, width, height];
    v25 = [v24 count];

    if (!v25)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if ((v17 & 0x1000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = height != v16;
  if (y != v12)
  {
    v18 = 1;
  }

  v19 = width != v14;
  if (x != v10)
  {
    v19 = 1;
  }

  if (self->_scrollDirection)
  {
    return v18;
  }

  else
  {
    return v19;
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27.receiver = self;
  v27.super_class = UICollectionViewFlowLayout;
  v8 = [(UICollectionViewLayout *)&v27 invalidationContextForBoundsChange:?];
  [v8 setInvalidateFlowLayoutDelegateMetrics:0];
  [v8 setInvalidateFlowLayoutAttributes:0];
  [(UICollectionViewLayout *)self bounds];
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  scrollDirection = self->_scrollDirection;
  if (scrollDirection == 1)
  {
    if (height == v12 && y == v10)
    {
      goto LABEL_5;
    }

LABEL_17:
    [v8 setInvalidateFlowLayoutAttributes:1];
    goto LABEL_18;
  }

  if (!scrollDirection && (width != v11 || x != v9))
  {
    goto LABEL_17;
  }

LABEL_5:
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v30 = CGRectUnion(v29, *&v13);
  v18 = v30.origin.x;
  v19 = v30.origin.y;
  v20 = v30.size.width;
  v21 = v30.size.height;
  v22 = *(&self->_gridLayoutFlags + 1);
  if ((v22 & 0x800) != 0)
  {
    v23 = [(UICollectionViewFlowLayout *)self indexesForSectionHeadersInRect:self->_data usingData:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
    if ([v23 count])
    {
      [v8 invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionHeader" atIndexPaths:v23];
    }

    v22 = *(&self->_gridLayoutFlags + 1);
  }

  if ((v22 & 0x1000) != 0)
  {
    v24 = [(UICollectionViewFlowLayout *)self indexesForSectionFootersInRect:self->_data usingData:v18, v19, v20, v21];
    if ([v24 count])
    {
      [v8 invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionFooter" atIndexPaths:v24];
    }
  }

LABEL_18:
  if (dyld_program_sdk_at_least() && [(UICollectionViewFlowLayout *)self _estimatesSizes])
  {
    [v8 setInvalidateFlowLayoutDelegateMetrics:0];
    [v8 setInvalidateFlowLayoutAttributes:0];
    [v8 _setRetainExistingSizingInfoForEstimates:1];
  }

  return v8;
}

- (BOOL)_shouldInvalidateLayoutForOldInsets:(UIEdgeInsets)a3 newInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = a3.right;
  v9 = a3.bottom;
  v10 = a3.left;
  v11 = a3.top;
  v12 = [(UICollectionViewFlowLayout *)self _layoutAxis];
  if (v12 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12 == 2;
  }

  return !_UIEdgeInsetsEqualToInsetsAlongAxis(v13, v11, v10, v9, v8, top, left, bottom, right);
}

- (BOOL)_shouldInvalidateLayoutForUpdatedSafeAreaInsets:(UIEdgeInsets)a3 fromOldInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = a3.right;
  v9 = a3.bottom;
  v10 = a3.left;
  v11 = a3.top;
  if (!_UISupportsShouldInvalidateForInsets())
  {
    return 1;
  }

  return [(UICollectionViewFlowLayout *)self _shouldInvalidateLayoutForOldInsets:top newInsets:left, bottom, right, v11, v10, v9, v8];
}

- (BOOL)_shouldInvalidateLayoutForUpdatedLayoutMargins:(UIEdgeInsets)a3 fromOldMargins:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = a3.right;
  v9 = a3.bottom;
  v10 = a3.left;
  v11 = a3.top;
  if (!_UISupportsShouldInvalidateForInsets())
  {
    return 1;
  }

  return [(UICollectionViewFlowLayout *)self _shouldInvalidateLayoutForOldInsets:top newInsets:left, bottom, right, v11, v10, v9, v8];
}

- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)a3
{
  v5.receiver = self;
  v5.super_class = UICollectionViewFlowLayout;
  v3 = [(UICollectionViewLayout *)&v5 _invalidationContextForUpdatedLayoutMargins:a3.top, a3.left, a3.bottom, a3.right];
  if (dyld_program_sdk_at_least())
  {
    [v3 _setIntent:7];
  }

  return v3;
}

- (id)indexesForSectionHeadersInRect:(CGRect)a3 usingData:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
LABEL_4:
    sections = v11->_sections;
    goto LABEL_5;
  }

  v11 = self->_data;
  if (v11)
  {
    goto LABEL_4;
  }

  sections = 0;
LABEL_5:
  v13 = sections;
  v14 = [(NSMutableArray *)v13 count];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      v17 = [(NSMutableArray *)v13 objectAtIndex:i];
      v18 = v17;
      if (v17)
      {
        if (*(v17 + 128) > 0.0)
        {
          v25.origin.x = x;
          v25.origin.y = y;
          v25.size.width = width;
          v25.size.height = height;
          v22 = CGRectIntersection(*(v17 + 312), v25);
          if (!CGRectIsNull(v22))
          {
            [(UICollectionViewFlowLayout *)self _frameForHeaderInSection:i usingData:v11];
            v26.origin.x = x;
            v26.origin.y = y;
            v26.size.width = width;
            v26.size.height = height;
            v24 = CGRectIntersection(v23, v26);
            if (!CGRectIsNull(v24))
            {
              v19 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:i];
              [v15 addObject:v19];
            }
          }
        }
      }
    }
  }

  return v15;
}

- (id)indexesForSectionFootersInRect:(CGRect)a3 usingData:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
LABEL_4:
    sections = v11->_sections;
    goto LABEL_5;
  }

  v11 = self->_data;
  if (v11)
  {
    goto LABEL_4;
  }

  sections = 0;
LABEL_5:
  v13 = sections;
  v14 = [(NSMutableArray *)v13 count];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      v17 = [(NSMutableArray *)v13 objectAtIndex:i];
      v18 = v17;
      if (v17)
      {
        if (*(v17 + 136) > 0.0)
        {
          v25.origin.x = x;
          v25.origin.y = y;
          v25.size.width = width;
          v25.size.height = height;
          v22 = CGRectIntersection(*(v17 + 312), v25);
          if (!CGRectIsNull(v22))
          {
            [(UICollectionViewFlowLayout *)self _frameForFooterInSection:i usingData:v11];
            v26.origin.x = x;
            v26.origin.y = y;
            v26.size.width = width;
            v26.size.height = height;
            v24 = CGRectIntersection(v23, v26);
            if (!CGRectIsNull(v24))
            {
              v19 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:i];
              [v15 addObject:v19];
            }
          }
        }
      }
    }
  }

  return v15;
}

- (id)layoutAttributesForHeaderInSection:(int64_t)a3 usingData:(id)a4
{
  [(UICollectionViewFlowLayout *)self _frameForHeaderInSection:a3 usingData:a4];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectEqualToRect(v16, *MEMORY[0x1E695F058]))
  {
    v9 = 0;
  }

  else
  {
    v10 = [objc_opt_class() layoutAttributesClass];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
    v12 = [v10 layoutAttributesForSupplementaryViewOfKind:@"UICollectionElementKindSectionHeader" withIndexPath:v11];
    v13 = v12;

    [v12 setFrame:{x, y, width, height}];
    if (dyld_program_sdk_at_least())
    {
      [v12 setZIndex:10];
      if (dyld_program_sdk_at_least())
      {
        [v12 _setZPosition:1];
      }
    }

    v9 = v12;
  }

  return v9;
}

- (id)layoutAttributesForFooterInSection:(int64_t)a3 usingData:(id)a4
{
  [(UICollectionViewFlowLayout *)self _frameForFooterInSection:a3 usingData:a4];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectEqualToRect(v16, *MEMORY[0x1E695F058]))
  {
    v9 = 0;
  }

  else
  {
    v10 = [objc_opt_class() layoutAttributesClass];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
    v12 = [v10 layoutAttributesForSupplementaryViewOfKind:@"UICollectionElementKindSectionFooter" withIndexPath:v11];
    v13 = v12;

    [v12 setFrame:{x, y, width, height}];
    if (dyld_program_sdk_at_least())
    {
      [v12 setZIndex:10];
    }

    v9 = v12;
  }

  return v9;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3 usingData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(UICollectionViewFlowLayout *)self _existingLayoutAttributesForItemAtIndexPath:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(UICollectionViewLayout *)self _sections];
    v13 = [v7 section];
    v14 = v13;
    if (v12)
    {
      if (([v12 containsIndex:v13] & 1) == 0)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"UICollectionViewFlowLayout.m" lineNumber:615 description:{@"request for layout attributes at index path (%@) when this flow layout only lays out sections in the set (%@)", v7, v12}];
      }

      v14 = [v12 countOfIndexesInRange:{0, v13}];
    }

    v15 = [v7 item];
    if (v8)
    {
      v16 = v8[13];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v17 objectAtIndexedSubscript:v14];
    [(UICollectionViewFlowLayout *)self _frameForItem:v15 inSection:v13 usingData:v18];
    v11 = [(UICollectionViewFlowLayout *)self _fetchAndCacheNewLayoutAttributesForCellWithIndexPath:v7 frame:?];
  }

  return v11;
}

- (void)_calculateAttributesForRect:(CGRect)a3
{
  if ((*(&self->_gridLayoutFlags + 1) & 0x80) == 0)
  {
    [(UICollectionViewFlowLayout *)self _fetchItemsInfoForRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v6 = a3;
  if (v6)
  {
    if ((*(&self->_gridLayoutFlags + 1) & 0x80) != 0)
    {
      v8 = [(UICollectionViewFlowLayout *)self _existingLayoutAttributesForItemAtIndexPath:v6];
      v9 = v8;
      if (v8)
      {
        v7 = v8;
      }

      else
      {
        v10 = [v6 copy];
        v11 = [(UICollectionViewFlowLayout *)self _sectionArrayIndexForIndexPath:v10];
        v12 = [v10 item];
        data = self->_data;
        if (data)
        {
          data = data->_sections;
        }

        v14 = data;
        v15 = [(_UIFlowLayoutInfo *)v14 count];

        if (v11 >= v15)
        {
          v7 = 0;
        }

        else
        {
          v16 = self->_data;
          if (v16)
          {
            v16 = v16->_sections;
          }

          v17 = v16;
          v18 = [(_UIFlowLayoutInfo *)v17 objectAtIndex:v11];

          if (((*(&self->_gridLayoutFlags + 1) & 0x401) == 0 || v18 && *(v18 + 88) == 1) && ![(UICollectionViewFlowLayout *)self _estimatesSizes])
          {
            v20 = self->_data;
            if (v20)
            {
              horizontal = v20->_horizontal;
            }

            else
            {
              horizontal = 0;
            }

            v22 = [(UICollectionViewLayout *)self collectionView];
            if ([v22 _shouldReverseLayoutDirection])
            {
              v23 = [(UICollectionViewLayout *)self _wantsRightToLeftHorizontalMirroringIfNeeded];
            }

            else
            {
              v23 = 1;
            }

            if (v18)
            {
              v24 = *(v18 + 216);
              v25 = v12 / v24;
              v26 = v12 % v24;
              v28 = *(v18 + 248);
              v27 = *(v18 + 256);
              if (horizontal)
              {
                v29 = *(v18 + 248);
              }

              else
              {
                v29 = *(v18 + 256);
              }

              if (horizontal)
              {
                v30 = *(v18 + 256);
              }

              else
              {
                v30 = *(v18 + 248);
              }

              if (*(v18 + 89) == 1 && v25 == *(v18 + 224) && *(v18 + 232) != 3)
              {
                v31 = 200;
                v32 = 184;
              }

              else
              {
                v31 = 176;
                v32 = 160;
              }

              v33 = *(v18 + 312);
              v34 = *(v18 + 320);
              v3 = *(v18 + v32) + (v30 + *(v18 + v31)) * v26;
              v4 = *(v18 + 152) + (v29 + *(v18 + 112)) * v25;
            }

            else
            {
              v27 = 0.0;
              v28 = 0.0;
              v33 = 0.0;
              v34 = 0.0;
            }

            v35 = [(UICollectionViewLayout *)self collectionView];
            [v35 _currentScreenScale];
            v37 = v36;

            if (horizontal)
            {
              v38 = v4;
            }

            else
            {
              v38 = v3;
            }

            if (!horizontal)
            {
              v3 = v4;
            }

            v39 = v33 + v38;
            if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
            {
              v40 = v37;
              if (v37 == 0.0)
              {
                if (AdjustToScale_onceToken != -1)
                {
                  dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
                }

                v40 = *&AdjustToScale___s;
              }

              if (v40 == 1.0)
              {
                v39 = round(v39);
              }

              else
              {
                v39 = round(v39 * v40) / v40;
              }
            }

            v41 = v34 + v3;
            if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
            {
              if (v37 == 0.0)
              {
                if (AdjustToScale_onceToken != -1)
                {
                  dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
                }

                v37 = *&AdjustToScale___s;
              }

              if (v37 == 1.0)
              {
                v41 = round(v41);
              }

              else
              {
                v41 = round(v41 * v37) / v37;
              }
            }

            if (!v23)
            {
              v42 = 0.0;
              v43 = v39;
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = 0.0;
              if (v18)
              {
                v47 = *(v18 + 312);
                v44 = *(v18 + 320);
                v43 = v39 - v47;
                v45 = *(v18 + 328);
                v46 = *(v18 + 336);
              }

              Width = CGRectGetWidth(*&v47);
              v52.origin.x = v39;
              v52.origin.y = v41;
              v52.size.width = v28;
              v52.size.height = v27;
              v49 = Width - CGRectGetWidth(v52) - v43;
              if (v18)
              {
                v42 = *(v18 + 312);
              }

              v39 = v49 + v42;
            }

            v19 = [(UICollectionViewFlowLayout *)self _fetchAndCacheNewLayoutAttributesForCellWithIndexPath:v10 frame:v39, v41, v28, v27];
          }

          else
          {
            v19 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v10 usingData:self->_data];
          }

          v7 = v19;
        }
      }
    }

    else
    {
      v7 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 isEqualToString:@"UICollectionElementKindSectionHeader"])
    {
      v8 = -[UICollectionViewFlowLayout layoutAttributesForHeaderInSection:usingData:](self, "layoutAttributesForHeaderInSection:usingData:", [v7 indexAtPosition:0], self->_data);
LABEL_6:
      v9 = v8;
      goto LABEL_8;
    }

    if ([v6 isEqualToString:@"UICollectionElementKindSectionFooter"])
    {
      v8 = -[UICollectionViewFlowLayout layoutAttributesForFooterInSection:usingData:](self, "layoutAttributesForFooterInSection:usingData:", [v7 indexAtPosition:0], self->_data);
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(UICollectionViewFlowLayout *)self _estimatesSizes];
  if (v8)
  {
    v10 = v8[288] & 1;
  }

  else
  {
    v10 = 0;
  }

  [v7 size];
  v12 = v11;
  v14 = v13;
  [v8 size];
  if (!v9)
  {
    dyld_program_sdk_at_least();
    goto LABEL_11;
  }

  v17 = v12 != v15;
  if (v14 != v16)
  {
    v17 = 1;
  }

  v18 = v10 & v17;
  if (dyld_program_sdk_at_least() && v18)
  {
    if ((*(&self->_gridLayoutFlags + 6) & 1) == 0)
    {
      LOBYTE(v18) = 1;
      goto LABEL_12;
    }

    if (!self->_updateVisibleCellsContext)
    {
      v20 = objc_alloc_init(_UIUpdateVisibleCellsContext);
      updateVisibleCellsContext = self->_updateVisibleCellsContext;
      self->_updateVisibleCellsContext = v20;
    }

    [v7 size];
    if (v23 == *MEMORY[0x1E695F060] && v22 == *(MEMORY[0x1E695F060] + 8))
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = [(UICollectionViewLayout *)self collectionView];
      [v42 handleFailureInMethod:a2 object:self file:@"UICollectionViewFlowLayout.m" lineNumber:749 description:{@"UICollectionView Flow Layout received layout attributes with an empty size. This happens when a reusable view has incorrectly configured constraints, or an incorrect override of -sizeThatFits:, -systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:, or -preferredLayoutAttributesFittingAttributes:. Ensure that your view generates a valid preferred size.\nOriginal attributes: %@. Preferred attributes: %@.\nCollection View: %@", v8, v7, v43}];

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionLayout", &_MergedGlobals_131);
      if ((*CategoryCachedImpl & 1) == 0)
      {
        goto LABEL_11;
      }

      v45 = *(CategoryCachedImpl + 8);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v29 = v45;
      v46 = [(UICollectionViewLayout *)self collectionView];
      *buf = 134218754;
      v54 = v46;
      v55 = 2048;
      v56 = self;
      v57 = 2112;
      v58 = v7;
      v59 = 2112;
      v60 = v8;
      _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "cv == %p; flow layout == %p; ignoring invalid preferred attributes. Preferred attrs: %@; original attrs: %@.", buf, 0x2Au);
    }

    else
    {
      v25 = __UILogGetCategoryCachedImpl("UICollectionLayout", &qword_1ED497668);
      if (*v25)
      {
        v47 = *(v25 + 8);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = v47;
          v49 = [(UICollectionViewLayout *)self collectionView];
          *buf = 134218754;
          v54 = v49;
          v55 = 2048;
          v56 = self;
          v57 = 2112;
          v58 = v7;
          v59 = 2112;
          v60 = v8;
          _os_log_impl(&dword_188A29000, v48, OS_LOG_TYPE_ERROR, "cv == %p; flow layout == %p; adding preferred attributes to invalidation batch. Preferred attrs: %@; original attrs: %@.", buf, 0x2Au);
        }
      }

      v26 = [(UICollectionViewLayout *)self collectionView];
      v27 = v26;
      if (v26)
      {
        v28 = *(v26 + 3352);
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;

      if (v29)
      {
        v30 = MEMORY[0x1E696B098];
        [v8 size];
        v52[0] = v31;
        v52[1] = v32;
        v33 = [v30 valueWithBytes:v52 objCType:"{CGSize=dd}"];
        v34 = MEMORY[0x1E696B098];
        [v7 size];
        v51[0] = v35;
        v51[1] = v36;
        v37 = [v34 valueWithBytes:v51 objCType:"{CGSize=dd}"];
        v38 = MEMORY[0x1E696B098];
        [v8 size];
        v50[0] = v39;
        v50[1] = v40;
        v41 = [v38 valueWithBytes:v50 objCType:"{CGSize=dd}"];
        [v29 recordPreferredAttributesChangeForElementWithAttributes:v7 reason:@"preferred size changed" changedAttribute:@"preferredSize" fromValue:v33 toValue:v37 layoutGeneratedValue:v41];
      }

      [(_UIUpdateVisibleCellsContext *)self->_updateVisibleCellsContext addPreferredAttributes:v7];
    }

LABEL_11:
    LOBYTE(v18) = 0;
  }

LABEL_12:

  return v18;
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 size];
  v9 = v8;
  v11 = v10;
  [v7 size];
  if (v13 == v9 && v12 == v11)
  {
    v40.receiver = self;
    v40.super_class = UICollectionViewFlowLayout;
    v17 = [(UICollectionViewLayout *)&v40 invalidationContextForPreferredLayoutAttributes:v6 withOriginalAttributes:v7];
    [v17 setInvalidateFlowLayoutAttributes:0];
    [v17 setInvalidateFlowLayoutDelegateMetrics:0];
  }

  else
  {
    data = self->_data;
    v16 = [v7 indexPath];
    v17 = [(_UIFlowLayoutInfo *)data setSize:v16 forItemAtIndexPath:v9, v11];

    if (dyld_program_sdk_at_least() && [(UICollectionViewFlowLayout *)self _estimatesSizes])
    {
      v39 = v6;
      v18 = [v7 indexPath];
      v19 = [v18 section];

      v38 = self;
      v20 = [(UICollectionView *)self->super._collectionView _collectionViewData];
      v21 = [(UICollectionViewData *)v20 existingSupplementaryLayoutAttributesInSection:v19];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v42;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v42 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v41 + 1) + 8 * i);
            if (v27)
            {
              if ((*(v27 + 288) & 3) == 0)
              {
                v28 = [*(*(&v41 + 1) + 8 * i) indexPath];
                v29 = [v7 indexPath];
                v30 = [v28 isEqual:v29];

                if (!v30 || (-[_UILabelConfiguration _content](v27), v31 = objc_claimAutoreleasedReturnValue(), -[_UILabelConfiguration _content](v7), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v31 isEqualToString:v32], v32, v31, (v33 & 1) == 0))
                {
                  v34 = [(_UILabelConfiguration *)v27 _content];
                  v35 = [v27 indexPath];
                  v45 = v35;
                  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
                  [v17 invalidateSupplementaryElementsOfKind:v34 atIndexPaths:v36];
                }
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v24);
      }

      self = v38;
      v6 = v39;
    }
  }

  [v17 setContentOffsetAdjustment:{self->_contentOffsetAdjustment.x, self->_contentOffsetAdjustment.y}];
  [v17 setContentSizeAdjustment:{self->_contentSizeAdjustment.width, self->_contentSizeAdjustment.height}];

  return v17;
}

- (CGSize)_effectiveEstimatedItemSize
{
  width = self->_estimatedItemSize.width;
  height = self->_estimatedItemSize.height;
  if (width == 1.79769313e308 && height == 1.79769313e308)
  {
    data = self->_data;
    if (data)
    {
      computedEstimatedCount = data->_computedEstimatedCount;
      v7 = *(MEMORY[0x1E695F060] + 8);
      v8 = *MEMORY[0x1E695F060];
      if (computedEstimatedCount >= 1)
      {
        v8 = data->_computedEstimatedSum.width / computedEstimatedCount;
        v7 = data->_computedEstimatedSum.height / computedEstimatedCount;
      }
    }

    else
    {
      v7 = 0.0;
      v8 = 0.0;
    }

    v9 = v8 == *MEMORY[0x1E695F060];
    v10 = v7 == *(MEMORY[0x1E695F060] + 8);
    width = 50.0;
    if (v9 && v10)
    {
      height = 50.0;
    }

    else
    {
      height = v7;
    }

    if (!v9 || !v10)
    {
      width = v8;
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)_fetchAndCacheNewLayoutAttributesForCellWithIndexPath:(id)a3 frame:(CGRect)a4
{
  if (a3)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v10 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
    [v10 setFrame:{x, y, width, height}];
    if (![(UICollectionViewFlowLayout *)self _estimatesSizes])
    {
      [(NSMutableDictionary *)self->_cachedItemAttributes setObject:v10 forKeyedSubscript:a3];
      v11 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
      [(NSMutableDictionary *)self->_cachedItemFrames setObject:v11 forKeyedSubscript:a3];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_existingLayoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cachedItemFrames objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_cachedItemAttributes objectForKeyedSubscript:v4];
    if (v6)
    {
      [v5 CGRectValue];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [v6 frame];
      v30.origin.x = v8;
      v30.origin.y = v10;
      v30.size.width = v12;
      v30.size.height = v14;
      if (!CGRectEqualToRect(v29, v30))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __74__UICollectionViewFlowLayout__existingLayoutAttributesForItemAtIndexPath___block_invoke;
        block[3] = &unk_1E70FFF08;
        v21 = v4;
        v22 = v6;
        v24 = v8;
        v25 = v10;
        v26 = v12;
        v27 = v14;
        v23 = self;
        v15 = _existingLayoutAttributesForItemAtIndexPath__onceToken;
        v16 = v6;
        if (v15 != -1)
        {
          dispatch_once(&_existingLayoutAttributesForItemAtIndexPath__onceToken, block);
        }

        cachedItemAttributes = self->_cachedItemAttributes;
        self->_cachedItemAttributes = 0;

        cachedItemFrames = self->_cachedItemFrames;
        self->_cachedItemFrames = 0;

        v6 = [v16 copy];
        [v6 setFrame:{v8, v10, v12, v14}];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __74__UICollectionViewFlowLayout__existingLayoutAttributesForItemAtIndexPath___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_LoggingOnlyOnc.isa);
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  [*(a1 + 40) frame];
  v4 = NSStringFromCGRect(v10);
  v5 = NSStringFromCGRect(*(a1 + 56));
  v8 = [v2 stringWithFormat:@"UICollectionViewFlowLayout has cached frame mismatch for index path %@ - cached value: %@ expected value: %@", v3, v4, v5];;

  NSLog(&stru_1EFB25450.isa, v8);
  if ([*(a1 + 48) isMemberOfClass:objc_opt_class()])
  {
    NSLog(&cfstr_ThisIsLikelyAB.isa);
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    NSLog(&cfstr_ThisIsLikelyOc.isa, v7);
  }
}

- (id)_layoutAttributesForItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v176 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(a3) || (-[UICollectionViewLayout collectionView](self, "collectionView"), v8 = objc_claimAutoreleasedReturnValue(), [v8 bounds], IsEmpty = CGRectIsEmpty(v178), v8, IsEmpty) || !-[UICollectionViewFlowLayout _boundsAndInsetsAreValidForReferenceDimension](self, "_boundsAndInsetsAreValidForReferenceDimension"))
  {
    v160 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v160 = [MEMORY[0x1E695DF70] array];
    v10 = [(UICollectionViewLayout *)self collectionView];
    if ([v10 _shouldReverseLayoutDirection])
    {
      v144 = ![(UICollectionViewLayout *)self _wantsRightToLeftHorizontalMirroringIfNeeded];
    }

    else
    {
      v144 = 0;
    }

    while (1)
    {
      [(UICollectionViewFlowLayout *)self _fetchItemsInfoForRect:x, y, width, height];
      data = self->_data;
      if (data)
      {
        data = data->_sections;
      }

      v13 = data;
      v131 = [(UICollectionViewLayout *)self _sections];
      v14 = [v131 firstIndex];
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      obj = v13;
      v132 = [(_UIFlowLayoutInfo *)obj countByEnumeratingWithState:&v169 objects:v175 count:16];
      if (v132)
      {
        rect_24 = 0;
        v130 = *v170;
        do
        {
          v15 = 0;
          v16 = 0x1E696A000uLL;
          do
          {
            if (*v170 != v130)
            {
              objc_enumerationMutation(obj);
            }

            v139 = v15;
            v17 = *(*(&v169 + 1) + 8 * v15);
            if (v17)
            {
              v18 = *(v17 + 312);
              v19 = *(v17 + 320);
              v20 = *(v17 + 328);
              v21 = *(v17 + 336);
            }

            else
            {
              v19 = 0.0;
              v20 = 0.0;
              v21 = 0.0;
              v18 = 0.0;
            }

            rect = v18;
            rect_8 = v19;
            v141 = v21;
            v142 = v20;
            v190.origin.x = x;
            v190.origin.y = y;
            v190.size.width = width;
            v190.size.height = height;
            v179 = CGRectIntersection(*&v18, v190);
            v22 = v179.origin.x;
            v23 = v179.origin.y;
            v24 = v179.size.width;
            v25 = v179.size.height;
            if (!CGRectIsNull(v179) && v17 && *(v17 + 208))
            {
              if (*(v17 + 88) == 1 && ![(UICollectionViewFlowLayout *)self _estimatesSizes])
              {
                v63 = self->_data;
                if (v63)
                {
                  horizontal = v63->_horizontal;
                  v148 = horizontal;
                  v65 = 0.0;
                  v66 = rect_8;
                  if (horizontal)
                  {
                    v67 = 0.0;
                  }

                  else
                  {
                    v67 = rect_8;
                  }

                  if (horizontal)
                  {
                    v65 = rect;
                  }
                }

                else
                {
                  v148 = 0;
                  v65 = 0.0;
                  v66 = rect_8;
                  v67 = rect_8;
                }

                v68 = v22 - v65;
                v69 = v23 - v67;
                if (v144)
                {
                  v70 = rect;
                  v72 = v141;
                  v71 = v142;
                  v153 = CGRectGetWidth(*(&v66 - 1));
                  v182.origin.x = v68;
                  v182.origin.y = v69;
                  v182.size.width = v24;
                  v182.size.height = v25;
                  v154 = v153 - CGRectGetWidth(v182);
                  v183.origin.x = v68;
                  v183.origin.y = v69;
                  v183.size.width = v24;
                  v183.size.height = v25;
                  v68 = v154 - CGRectGetMinX(v183);
                }

                v184.origin.x = v68;
                v184.origin.y = v69;
                v184.size.width = v24;
                v184.size.height = v25;
                MinX = CGRectGetMinX(v184);
                v185.origin.x = v68;
                v185.origin.y = v69;
                v185.size.width = v24;
                v185.size.height = v25;
                MinY = CGRectGetMinY(v185);
                v186.origin.x = v68;
                v186.origin.y = v69;
                v186.size.width = v24;
                v186.size.height = v25;
                MaxX = CGRectGetMaxX(v186);
                v187.origin.y = v69;
                v74 = MaxX;
                v187.origin.x = v68;
                v187.size.width = v24;
                v187.size.height = v25;
                MaxY = CGRectGetMaxY(v187);
                v76 = MinY;
                if (v148)
                {
                  v77 = MinY;
                }

                else
                {
                  v77 = MinX;
                }

                if (v148)
                {
                  v76 = MinX;
                  v78 = MaxY;
                }

                else
                {
                  v78 = v74;
                }

                if (v148)
                {
                  MaxY = v74;
                  v79 = *(v17 + 248);
                }

                else
                {
                  v79 = *(v17 + 256);
                }

                v151 = *(v17 + 256);
                v156 = *(v17 + 248);
                if (v148)
                {
                  v80 = *(v17 + 256);
                }

                else
                {
                  v80 = *(v17 + 248);
                }

                v81 = *(v17 + 152);
                if (v76 <= v81)
                {
                  v83 = -1;
                }

                else
                {
                  v82 = v79 + *(v17 + 112);
                  if (fabs(v82) <= 2.22044605e-16)
                  {
                    v83 = -1;
                  }

                  else
                  {
                    v83 = vcvtmd_s64_f64((v76 - v81) / v82);
                  }

                  if (v79 + v81 + v82 * v83 < v76)
                  {
                    ++v83;
                  }
                }

                if (MaxY <= v81)
                {
                  goto LABEL_173;
                }

                v84 = v79 + *(v17 + 112);
                if (fabs(v84) <= 2.22044605e-16)
                {
                  goto LABEL_173;
                }

                v85 = vcvtmd_s64_f64((MaxY - v81) / v84);
                if (v85 == -1)
                {
                  goto LABEL_173;
                }

                if (v83 == -1)
                {
                  v83 = 0;
                }

                v129 = v83;
                v86 = *(v17 + 160);
                if (v77 <= v86)
                {
                  v90 = -1;
                }

                else
                {
                  v87 = v80 + *(v17 + 176);
                  v88 = (v77 - v86) / v87;
                  v89 = vcvtmd_s64_f64(v88);
                  v90 = v80 + v86 + v87 * floor(v88) >= v77 ? v89 : v89 + 1;
                }

                v138 = v80;
                v128 = v79;
                if (v78 <= v86)
                {
                  v97 = -1;
                }

                else
                {
                  WeakRetained = objc_loadWeakRetained((v17 + 144));
                  if (WeakRetained)
                  {
                    v92 = WeakRetained[14];
                  }

                  else
                  {
                    v92 = 0.0;
                  }

                  v93 = v92 - *(v17 + 168);

                  if (v78 > v93)
                  {
                    v94 = objc_loadWeakRetained((v17 + 144));
                    if (v94)
                    {
                      v95 = v94[14];
                    }

                    else
                    {
                      v95 = 0.0;
                    }

                    v78 = v95 - *(v17 + 168);
                  }

                  v96 = *(v17 + 176);
                  v97 = vcvtmd_s64_f64((v78 - *(v17 + 160) + v96) / (v80 + v96)) - (*(v17 + 160) + (v80 + v96) * floor((v78 - *(v17 + 160) + v96) / (v80 + v96)) >= v78);
                }

                v134 = v97;
                if (v90 == -1 && v97 == -1)
                {
                  goto LABEL_173;
                }

                if (v90 == -1)
                {
                  v98 = 0;
                }

                else
                {
                  v98 = v90;
                }

                v137 = v98;
                v99 = [(UICollectionViewLayout *)self collectionView];
                [v99 _currentScreenScale];
                v146 = v100;

                v101 = v85 < v129;
                v133 = v85 - v129;
                v16 = 0x1E696A000uLL;
                if (!v101)
                {
                  v102 = 0;
                  v103 = v129;
                  do
                  {
                    if (v134 >= v137)
                    {
                      v105 = *(v17 + 152) + (v128 + *(v17 + 112)) * (v102 + v129);
                      v140 = rect_8 + v105;
                      v143 = rect + v105;
                      v135 = round(rect + v105);
                      v136 = round(rect_8 + v105);
                      v106 = *(v17 + 216) * v103;
                      v107 = v137;
                      do
                      {
                        if (v106 + v107 >= *(v17 + 208))
                        {
                          break;
                        }

                        v108 = [*(v16 + 3208) indexPathForItem:? inSection:?];
                        v109 = [(UICollectionViewFlowLayout *)self _existingLayoutAttributesForItemAtIndexPath:v108];
                        if (v109)
                        {
                          goto LABEL_165;
                        }

                        v110 = *(v17 + 160) + (v80 + *(v17 + 176)) * v107;
                        if (v148)
                        {
                          v111 = v143;
                          if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
                          {
                            v112 = v146;
                            if (v146 == 0.0)
                            {
                              if (AdjustToScale_onceToken != -1)
                              {
                                dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
                              }

                              v112 = *&AdjustToScale___s;
                            }

                            v104 = v112 == 1.0;
                            v113 = round(v143 * v112) / v112;
                            if (v104)
                            {
                              v111 = v135;
                            }

                            else
                            {
                              v111 = v113;
                            }
                          }

                          v114 = v110 + 0.0;
                          if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
                          {
                            v115 = v146;
                            v116 = rect_8;
                            v117 = v111;
                            if (v146 == 0.0)
                            {
                              if (AdjustToScale_onceToken != -1)
                              {
                                dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
                                v116 = rect_8;
                              }

                              v115 = *&AdjustToScale___s;
                            }

                            v114 = v115 == 1.0 ? round(v114) : round(v114 * v115) / v115;
                          }

                          else
                          {
                            v116 = rect_8;
                            v117 = v111;
                          }
                        }

                        else
                        {
                          v117 = v110 + 0.0;
                          if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
                          {
                            v118 = v146;
                            if (v146 == 0.0)
                            {
                              if (AdjustToScale_onceToken != -1)
                              {
                                dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
                              }

                              v118 = *&AdjustToScale___s;
                            }

                            if (v118 == 1.0)
                            {
                              v117 = round(v117);
                            }

                            else
                            {
                              v117 = round(v117 * v118) / v118;
                            }
                          }

                          if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
                          {
                            v119 = v146;
                            v116 = rect_8;
                            if (v146 == 0.0)
                            {
                              if (AdjustToScale_onceToken != -1)
                              {
                                dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
                                v116 = rect_8;
                              }

                              v119 = *&AdjustToScale___s;
                            }

                            v104 = v119 == 1.0;
                            v120 = round(v140 * v119) / v119;
                            v114 = v104 ? v136 : v120;
                          }

                          else
                          {
                            v114 = v140;
                            v116 = rect_8;
                          }
                        }

                        if (v144)
                        {
                          v121 = v117 - rect;
                          v188.origin.x = rect;
                          v188.origin.y = v116;
                          v188.size.height = v141;
                          v188.size.width = v142;
                          v122 = CGRectGetWidth(v188);
                          v123 = v117;
                          v124 = v122;
                          v189.origin.x = v123;
                          v189.origin.y = v114;
                          *&v189.size.height = v151;
                          v189.size.width = v156;
                          v117 = rect + v124 - CGRectGetWidth(v189) - v121;
                          v80 = v138;
                        }

                        v109 = [(UICollectionViewFlowLayout *)self _fetchAndCacheNewLayoutAttributesForCellWithIndexPath:v108 frame:v117, v114, v156, *&v151];
                        if (v109)
                        {
LABEL_165:
                          v125 = v109;
                          [v160 addObject:v109];
                        }

                        ++v107;
                        v16 = 0x1E696A000;
                      }

                      while (v134 + 1 != v107);
                    }

                    ++v103;
                    v104 = v102++ == v133;
                  }

                  while (!v104);
                }
              }

              else
              {
                v26 = *(v17 + 264);
                v165 = 0u;
                v166 = 0u;
                v167 = 0u;
                v168 = 0u;
                v149 = *(v17 + 104);
                v27 = [v149 countByEnumeratingWithState:&v165 objects:v174 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v166;
                  v145 = *v166;
                  do
                  {
                    v30 = 0;
                    v147 = v28;
                    do
                    {
                      if (*v166 != v29)
                      {
                        objc_enumerationMutation(v149);
                      }

                      v31 = *(*(&v165 + 1) + 8 * v30);
                      if (v31)
                      {
                        v32 = *(v31 + 72);
                        v33 = *(v31 + 80);
                        v34 = *(v31 + 88);
                        v35 = *(v31 + 96);
                      }

                      else
                      {
                        v33 = 0.0;
                        v34 = 0;
                        v35 = 0;
                        v32 = 0.0;
                      }

                      v36 = rect + v32;
                      v37 = rect_8 + v33;
                      v191.origin.x = x;
                      v191.origin.y = y;
                      v191.size.width = width;
                      v191.size.height = height;
                      if (CGRectIntersectsRect(*(&v34 - 2), v191))
                      {
                        v163 = 0u;
                        v164 = 0u;
                        v161 = 0u;
                        v162 = 0u;
                        if (v31)
                        {
                          v38 = *(v31 + 40);
                        }

                        else
                        {
                          v38 = 0;
                        }

                        v39 = v38;
                        v40 = [v39 countByEnumeratingWithState:&v161 objects:v173 count:16];
                        if (v40)
                        {
                          v41 = v40;
                          v152 = v30;
                          v42 = *v162;
                          while (1)
                          {
                            if (*v162 != v42)
                            {
                              objc_enumerationMutation(v39);
                            }

                            v43 = [*(v16 + 3208) indexPathForItem:v26 inSection:v14];
                            v44 = [(UICollectionViewFlowLayout *)self _existingLayoutAttributesForItemAtIndexPath:v43];
                            v45 = v44;
                            if (v44)
                            {
                              [v44 frame];
                              v47 = v46;
                              v49 = v48;
                              v51 = v50;
                              v53 = v52;
                            }

                            else
                            {
                              v54 = self->_data;
                              if (v54)
                              {
                                v54 = v54->_sections;
                              }

                              v55 = v54;
                              v56 = [(_UIFlowLayoutInfo *)v55 objectAtIndexedSubscript:rect_24];
                              [(UICollectionViewFlowLayout *)self _frameForItem:v26 inSection:v14 usingData:v56];
                              v47 = v57;
                              v49 = v58;
                              v51 = v59;
                              v53 = v60;

                              v16 = 0x1E696A000;
                            }

                            v180.origin.x = v47;
                            v180.origin.y = v49;
                            v180.size.width = v51;
                            v180.size.height = v53;
                            v192.origin.x = x;
                            v192.origin.y = y;
                            v192.size.width = width;
                            v192.size.height = height;
                            v181 = CGRectIntersection(v180, v192);
                            if (!CGRectIsNull(v181))
                            {
                              if (v45 || ([(UICollectionViewFlowLayout *)self _fetchAndCacheNewLayoutAttributesForCellWithIndexPath:v43 frame:v47, v49, v51, v53], (v45 = objc_claimAutoreleasedReturnValue()) != 0))
                              {
                                [v160 addObject:v45];
                              }
                            }

                            ++v26;

                            if (!--v41)
                            {
                              v41 = [v39 countByEnumeratingWithState:&v161 objects:v173 count:16];
                              if (!v41)
                              {
                                break;
                              }
                            }
                          }

                          v29 = v145;
                          v28 = v147;
                          v30 = v152;
                        }
                      }

                      else
                      {
                        if (v31)
                        {
                          v61 = *(v31 + 40);
                        }

                        else
                        {
                          v61 = 0;
                        }

                        v39 = v61;
                        v26 += [v39 count];
                      }

                      ++v30;
                    }

                    while (v30 != v28);
                    v62 = [v149 countByEnumeratingWithState:&v165 objects:v174 count:16];
                    v28 = v62;
                  }

                  while (v62);
                }
              }
            }

            if (v131)
            {
              v14 = [v131 indexGreaterThanIndex:v14];
            }

            else
            {
              ++v14;
            }

            ++rect_24;
            v15 = v139 + 1;
          }

          while (v139 + 1 != v132);
          v126 = [(_UIFlowLayoutInfo *)obj countByEnumeratingWithState:&v169 objects:v175 count:16];
          v132 = v126;
        }

        while (v126);
      }

LABEL_173:

      if ((*(&self->_gridLayoutFlags + 1) & 0x80) != 0)
      {
        break;
      }

      [v160 removeAllObjects];
      [(_UIFlowLayoutInfo *)self->_data invalidate:?];
    }
  }

  return v160;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v33 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [(UICollectionViewFlowLayout *)self _layoutAttributesForItemsInRect:x, y, width, height];
  [v8 addObjectsFromArray:v9];
  v10 = [(UICollectionViewFlowLayout *)self indexesForSectionHeadersInRect:self->_data usingData:x, y, width, height];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = -[UICollectionViewFlowLayout layoutAttributesForHeaderInSection:usingData:](self, "layoutAttributesForHeaderInSection:usingData:", [*(*(&v27 + 1) + 8 * i) indexAtPosition:0], self->_data);
        [v8 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  v16 = [(UICollectionViewFlowLayout *)self indexesForSectionFootersInRect:self->_data usingData:x, y, width, height];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = -[UICollectionViewFlowLayout layoutAttributesForFooterInSection:usingData:](self, "layoutAttributesForFooterInSection:usingData:", [*(*(&v23 + 1) + 8 * j) indexAtPosition:0], self->_data);
        [v8 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  if ((*(&self->_gridLayoutFlags + 1) & 0x80) == 0)
  {
    [(UICollectionViewFlowLayout *)self _fetchItemsInfoForRect:x, y, width, height];
  }

  return v8;
}

- (void)_setCollectionView:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICollectionViewFlowLayout;
  [(UICollectionViewLayout *)&v4 _setCollectionView:a3];
  [(UICollectionViewFlowLayout *)self _updateCollectionViewScrollableAxis];
}

- (void)setScrollDirection:(UICollectionViewScrollDirection)scrollDirection
{
  if (self->_scrollDirection != scrollDirection && (*(&self->_gridLayoutFlags + 1) & 0x80) != 0)
  {
    self->_scrollDirection = scrollDirection;
    [(UICollectionViewLayout *)self invalidateLayout];
  }

  else
  {
    self->_scrollDirection = scrollDirection;
  }

  [(UICollectionViewFlowLayout *)self _updateCollectionViewScrollableAxis];
}

- (void)setMinimumInteritemSpacing:(CGFloat)minimumInteritemSpacing
{
  if (self->_interitemSpacing != minimumInteritemSpacing && (*(&self->_gridLayoutFlags + 1) & 0x80) != 0)
  {
    self->_interitemSpacing = minimumInteritemSpacing;
    [(UICollectionViewLayout *)self invalidateLayout];
  }

  else
  {
    self->_interitemSpacing = minimumInteritemSpacing;
  }
}

- (void)setMinimumLineSpacing:(CGFloat)minimumLineSpacing
{
  if (self->_lineSpacing != minimumLineSpacing && (*(&self->_gridLayoutFlags + 1) & 0x80) != 0)
  {
    self->_lineSpacing = minimumLineSpacing;
    [(UICollectionViewLayout *)self invalidateLayout];
  }

  else
  {
    self->_lineSpacing = minimumLineSpacing;
  }
}

- (void)setItemSize:(CGSize)itemSize
{
  height = itemSize.height;
  width = itemSize.width;
  if (itemSize.width <= 0.0)
  {
    UICollectionViewFlowLayoutAlertForInvalidItemSize(self->super._collectionView, itemSize.width, itemSize.height);
  }

  p_itemSize = &self->_itemSize;
  if ((*(&self->_gridLayoutFlags + 1) & 0x401) != 0)
  {
    p_itemSize->width = width;
    self->_itemSize.height = height;
  }

  else
  {
    v7 = p_itemSize->width;
    v8 = self->_itemSize.height;
    p_itemSize->width = width;
    self->_itemSize.height = height;
    if (width != v7 || height != v8)
    {
      v10 = dyld_program_sdk_at_least();
      v11 = *(&self->_gridLayoutFlags + 1);
      if (v10)
      {
        v11 |= 0x80u;
        *(&self->_gridLayoutFlags + 1) = v11;
      }

      if ((v11 & 0x80) != 0)
      {

        [(UICollectionViewLayout *)self invalidateLayout];
      }
    }
  }
}

- (void)setEstimatedItemSize:(CGSize)estimatedItemSize
{
  if (estimatedItemSize.width != self->_estimatedItemSize.width || estimatedItemSize.height != self->_estimatedItemSize.height)
  {
    self->_estimatedItemSize = estimatedItemSize;
    if (dyld_program_sdk_at_least())
    {
      if ([(UICollectionViewFlowLayout *)self _estimatesSizes])
      {
        [(UICollectionViewFlowLayout *)self _resetCachedItems];
      }

      [objc_opt_class() invalidationContextClass];
      v5 = objc_opt_new();
      [v5 _setInvalidateEverything:1];
      [(UICollectionViewFlowLayout *)self invalidateLayoutWithContext:v5];
    }
  }
}

- (void)setHeaderReferenceSize:(CGSize)headerReferenceSize
{
  height = headerReferenceSize.height;
  width = headerReferenceSize.width;
  v18 = *MEMORY[0x1E69E9840];
  if (headerReferenceSize.width < 0.0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_6;
      }

      v20.width = width;
      v20.height = height;
      v8 = NSStringFromCGSize(v20);
      collectionView = self->super._collectionView;
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = collectionView;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Negative sizes of headers are not supported by flow layout. Invalid size: %@; collection view: %@", &v14, 0x16u);
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &setHeaderReferenceSize____s_category) + 8);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v7 = v6;
      v19.width = width;
      v19.height = height;
      v8 = NSStringFromCGSize(v19);
      v9 = self->super._collectionView;
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Negative sizes of headers are not supported by flow layout. Invalid size: %@; collection view: %@", &v14, 0x16u);
    }

LABEL_6:
  }

LABEL_7:
  v10 = *(&self->_gridLayoutFlags + 1);
  p_headerReferenceSize = &self->_headerReferenceSize;
  if ((v10 & 2) != 0)
  {
    p_headerReferenceSize->width = width;
    self->_headerReferenceSize.height = height;
  }

  else
  {
    v12 = width == p_headerReferenceSize->width;
    if (height != self->_headerReferenceSize.height)
    {
      v12 = 0;
    }

    p_headerReferenceSize->width = width;
    self->_headerReferenceSize.height = height;
    if ((v10 & 0x80) != 0 && !v12)
    {
      [(UICollectionViewLayout *)self invalidateLayout];
    }
  }
}

- (void)setFooterReferenceSize:(CGSize)footerReferenceSize
{
  height = footerReferenceSize.height;
  width = footerReferenceSize.width;
  v18 = *MEMORY[0x1E69E9840];
  if (footerReferenceSize.width < 0.0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_6;
      }

      v20.width = width;
      v20.height = height;
      v8 = NSStringFromCGSize(v20);
      collectionView = self->super._collectionView;
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = collectionView;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Negative sizes of footers are not supported by flow layout. Invalid size: %@; collection view: %@", &v14, 0x16u);
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &setFooterReferenceSize____s_category) + 8);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v7 = v6;
      v19.width = width;
      v19.height = height;
      v8 = NSStringFromCGSize(v19);
      v9 = self->super._collectionView;
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Negative sizes of footers are not supported by flow layout. Invalid size: %@; collection view: %@", &v14, 0x16u);
    }

LABEL_6:
  }

LABEL_7:
  v10 = *(&self->_gridLayoutFlags + 1);
  p_footerReferenceSize = &self->_footerReferenceSize;
  if ((v10 & 4) != 0)
  {
    p_footerReferenceSize->width = width;
    self->_footerReferenceSize.height = height;
  }

  else
  {
    v12 = width == p_footerReferenceSize->width;
    if (height != self->_footerReferenceSize.height)
    {
      v12 = 0;
    }

    p_footerReferenceSize->width = width;
    self->_footerReferenceSize.height = height;
    if ((v10 & 0x80) != 0 && !v12)
    {
      [(UICollectionViewLayout *)self invalidateLayout];
    }
  }
}

- (void)setSectionInset:(UIEdgeInsets)sectionInset
{
  v3 = *(&self->_gridLayoutFlags + 1);
  p_sectionInset = &self->_sectionInset;
  if ((v3 & 8) != 0)
  {
    p_sectionInset->top = sectionInset.top;
    self->_sectionInset.left = sectionInset.left;
    self->_sectionInset.bottom = sectionInset.bottom;
    self->_sectionInset.right = sectionInset.right;
  }

  else
  {
    v5 = *&p_sectionInset->top;
    v6 = *&self->_sectionInset.bottom;
    p_sectionInset->top = sectionInset.top;
    self->_sectionInset.left = sectionInset.left;
    self->_sectionInset.bottom = sectionInset.bottom;
    self->_sectionInset.right = sectionInset.right;
    if ((v3 & 0x80) != 0)
    {
      left = sectionInset.left;
      right = sectionInset.right;
      if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*&sectionInset.top, v5), vceqq_f64(*&sectionInset.bottom, v6)), xmmword_18A650B80)) & 0xF) != 0)
      {
        [(UICollectionViewLayout *)self invalidateLayout];
      }
    }
  }
}

- (void)_getSizingInfosWithExistingSizingDictionary:(id)a3
{
  v163 = a2;
  v209 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UICollectionViewLayout *)self collectionView];
  v180 = [v5 _delegateProxy];
  data = self->_data;
  v169 = 392;
  if (data)
  {
    p_scrollDirection = &self->_scrollDirection;
    goto LABEL_10;
  }

  v8 = objc_alloc_init(_UIFlowLayoutInfo);
  v9 = self->_data;
  self->_data = v8;

  v10 = self->_data;
  if (v10)
  {
    objc_storeWeak(&v10->_layout, self);
  }

  if ([v5 _shouldReverseLayoutDirection])
  {
    v11 = [(UICollectionViewLayout *)self _wantsRightToLeftHorizontalMirroringIfNeeded];
  }

  else
  {
    v11 = 1;
  }

  v12 = v169;
  v13 = *(&self->super.super.isa + v169);
  if (v13)
  {
    *(v13 + 98) = v11;
    data = *(&self->super.super.isa + v12);
    p_scrollDirection = &self->_scrollDirection;
    if (!data)
    {
LABEL_186:
      v167 = 0;
      goto LABEL_12;
    }

LABEL_10:
    data->_horizontal = *p_scrollDirection == 1;
    v14 = *(&self->super.super.isa + v169);
    if (v14)
    {
      v167 = *(v14 + 97);
      goto LABEL_12;
    }

    goto LABEL_186;
  }

  v167 = 0;
  p_scrollDirection = &self->_scrollDirection;
LABEL_12:
  [(UICollectionViewFlowLayout *)self _dimensionFromCollectionView];
  v166 = v15;
  v181 = 276;
  if ((*(&self->_gridLayoutFlags + 1) & 0x401) != 0)
  {
    v178 = 0;
  }

  else
  {
    v178 = ![(UICollectionViewFlowLayout *)self _estimatesSizes];
  }

  v16 = *(&self->super.super.isa + v169);
  v177 = p_scrollDirection;
  if (v16)
  {
    v16 = v16[13];
  }

  v171 = v16;
  v174 = [v171 count];
  v162 = v174 != 0;
  v175 = [(UICollectionViewLayout *)self _sections];
  v182 = [v175 firstIndex];
  v172 = [v5 numberOfSections];
  if (v182 < v172)
  {
    v161 = v184;
    v18 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
    v20 = 1;
    if (v167)
    {
      v20 = 2;
    }

    v170 = v20;
    *&v17 = 138412290;
    v154 = v17;
    v156 = v4;
    v158 = v5;
    while (1)
    {
      if (v174)
      {
        [v171 objectAtIndexedSubscript:0];
      }

      else
      {
        [(_UIFlowLayoutInfo *)*(&self->super.super.isa + v169) addSection];
      }
      v21 = ;
      v22 = [v5 numberOfItemsInSection:{v182, v154, *(&v154 + 1)}];
      v23 = v22;
      if (v21)
      {
        *(v21 + 208) = v22;
      }

      if ((v178 & 1) == 0)
      {
        break;
      }

LABEL_131:
      if ((*(&self->super.super.isa + v181) & 8) != 0)
      {
        v114 = [(UICollectionViewLayout *)self collectionView];
        [v180 collectionView:v114 layout:self insetForSectionAtIndex:v182];
        if (!v21)
        {

LABEL_178:
          left = 0.0;
          bottom = 0.0;
          right = 0.0;
          top = 0.0;
          if (!self->_sectionInsetReference)
          {
            goto LABEL_140;
          }

          goto LABEL_138;
        }

        *(v21 + 280) = v115;
        *(v21 + 288) = v116;
        *(v21 + 296) = v117;
        *(v21 + 304) = v118;

        if (!self->_sectionInsetReference)
        {
          goto LABEL_140;
        }

        top = *(v21 + 280);
        left = *(v21 + 288);
        bottom = *(v21 + 296);
        right = *(v21 + 304);
      }

      else
      {
        if (!v21)
        {
          goto LABEL_178;
        }

        bottom = self->_sectionInset.bottom;
        right = self->_sectionInset.right;
        top = self->_sectionInset.top;
        left = self->_sectionInset.left;
        *(v21 + 280) = top;
        *(v21 + 288) = left;
        *(v21 + 296) = bottom;
        *(v21 + 304) = right;
        if (!self->_sectionInsetReference)
        {
          goto LABEL_140;
        }
      }

LABEL_138:
      [(UICollectionViewFlowLayout *)self _adjustedSectionInsetForSectionInset:v170 forAxis:top, left, bottom, right];
      if (v21)
      {
        *(v21 + 280) = v119;
        *(v21 + 288) = v120;
        *(v21 + 296) = v121;
        *(v21 + 304) = v122;
      }

LABEL_140:
      if ((*(&self->super.super.isa + v181) & 0x10) != 0)
      {
        v124 = [(UICollectionViewLayout *)self collectionView];
        [v180 collectionView:v124 layout:self minimumInteritemSpacingForSectionAtIndex:v182];
        if (v21)
        {
          *(v21 + 120) = v125;
        }
      }

      else
      {
        [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
        if (v21)
        {
          *(v21 + 120) = v123;
        }
      }

      if ((*(&self->super.super.isa + v181) & 0x20) != 0)
      {
        v127 = [(UICollectionViewLayout *)self collectionView];
        [v180 collectionView:v127 layout:self minimumLineSpacingForSectionAtIndex:v182];
        if (v21)
        {
          *(v21 + 112) = v128;

LABEL_151:
          if (v178)
          {
            *(v21 + 88) = 1;
            [(UICollectionViewFlowLayout *)self itemSize];
            *(v21 + 248) = v129;
            *(v21 + 256) = v130;
          }

          goto LABEL_153;
        }
      }

      else
      {
        [(UICollectionViewFlowLayout *)self minimumLineSpacing];
        if (v21)
        {
          *(v21 + 112) = v126;
          goto LABEL_151;
        }
      }

      if (v178)
      {
        [(UICollectionViewFlowLayout *)self itemSize];
      }

LABEL_153:
      if ((*(&self->super.super.isa + v181) & 0x40) == 0 || (-[UICollectionViewLayout collectionView](self, "collectionView"), v131 = objc_claimAutoreleasedReturnValue(), [v180 _collectionView:v131 layout:self flowLayoutRowAlignmentOptionsForSection:v182], v132 = objc_claimAutoreleasedReturnValue(), v131, !v132))
      {
        v132 = self->_rowAlignmentsOptionsDictionary;
        if (!v132)
        {
          v138 = 0;
          v139 = 0;
          if (!v21)
          {
            goto LABEL_158;
          }

LABEL_157:
          *(v21 + 232) = v139;
          *(v21 + 240) = v138;
          goto LABEL_158;
        }
      }

      v133 = [(NSDictionary *)v132 objectForKeyedSubscript:@"UIFlowLayoutCommonRowHorizontalAlignmentKey"];
      v134 = [v133 intValue];

      v135 = [(NSDictionary *)v132 objectForKeyedSubscript:@"UIFlowLayoutLastRowHorizontalAlignmentKey"];
      v136 = [v135 intValue];

      v137 = [(NSDictionary *)v132 objectForKeyedSubscript:@"UIFlowLayoutRowVerticalAlignmentKey"];
      v138 = [v137 intValue];

      v139 = v134 | (v136 << 32);
      if (v21)
      {
        goto LABEL_157;
      }

LABEL_158:
      if ((*(&self->super.super.isa + v181) & 2) != 0)
      {
        v142 = [(UICollectionViewLayout *)self collectionView];
        [v180 collectionView:v142 layout:self referenceSizeForHeaderInSection:v182];
        width = v143;
        height = v144;
      }

      else
      {
        width = self->_headerReferenceSize.width;
        height = self->_headerReferenceSize.height;
      }

      if (*v177)
      {
        v145 = width;
      }

      else
      {
        v145 = height;
      }

      [(_UIFlowLayoutSection *)v21 setHeaderDimension:v182 forSection:v145];
      if ((*(&self->super.super.isa + v181) & 4) != 0)
      {
        v148 = [(UICollectionViewLayout *)self collectionView];
        [v180 collectionView:v148 layout:self referenceSizeForFooterInSection:v182];
        v146 = v149;
        v147 = v150;
      }

      else
      {
        v146 = self->_footerReferenceSize.width;
        v147 = self->_footerReferenceSize.height;
      }

      v151 = v175 == 0;
      if (*v177)
      {
        v152 = v146;
      }

      else
      {
        v152 = v147;
      }

      [(_UIFlowLayoutSection *)v21 setFooterDimension:v182 forSection:v152];
      if (v151)
      {
        ++v182;
      }

      else
      {
        v182 = [v175 indexGreaterThanIndex:v182];
      }

      if (v182 >= v172)
      {
        goto LABEL_185;
      }
    }

    v194 = 0;
    v195 = &v194;
    v196 = 0x3010000000;
    v197 = "";
    v198 = *MEMORY[0x1E695F060];
    v190 = 0;
    v191 = &v190;
    v192 = 0x2020000000;
    v193 = ![(UICollectionViewFlowLayout *)self _estimatesSizes];
    if (v174)
    {
      if (v23 >= 1)
      {
        for (i = 0; i != v23; ++i)
        {
          if (v21)
          {
            v25 = *(v21 + 96);
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;
          v27 = [v26 objectAtIndexedSubscript:i];

          if (v27)
          {
            v28 = *(v27 + 48);
            v29 = *(v27 + 56);
          }

          else
          {
            v28 = 0.0;
            v29 = 0.0;
          }

          v30 = dyld_program_sdk_at_least();
          v31 = v28 < 0.0;
          if (v29 < 0.0)
          {
            v31 = 1;
          }

          if (v30)
          {
            if (v31)
            {
              v32 = [MEMORY[0x1E696AAA8] currentHandler];
              [v32 handleFailureInMethod:v163 object:self file:@"UICollectionViewFlowLayout.m" lineNumber:1461 description:{@"Negative sizes are not supported by flow layout. Collection view: %@", self->super._collectionView}];
            }
          }

          else if (v31)
          {
            v38 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497670) + 8);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              collectionView = self->super._collectionView;
              *buf = v154;
              v200 = collectionView;
              _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "Negative sizes are not supported by flow layout. Collection view: %@", buf, 0xCu);
            }
          }

          if (*(v191 + 24) == 1)
          {
            v33 = v195;
            v34 = v195[4];
            v35 = v195[5];
            if (v18 == v34 && v19 == v35)
            {
              v195[4] = v28;
              v33[5] = v29;
            }

            else if (v28 != v34 || v29 != v35)
            {
              *(v191 + 24) = 0;
            }
          }

          if (v27)
          {
            *(v27 + 32) = 0;
            *(v27 + 40) = 0;
            *(v27 + 48) = v28;
            *(v27 + 56) = v29;
          }
        }
      }

      goto LABEL_125;
    }

    if ((*(&self->super.super.isa + v181 + 1) & 4) != 0)
    {
      v75 = [v180 _collectionView:v5 layout:self sizesForItemsInSection:v182];
      v183[0] = MEMORY[0x1E69E9820];
      v183[1] = 3221225472;
      v184[0] = __74__UICollectionViewFlowLayout__getSizingInfosWithExistingSizingDictionary___block_invoke;
      v184[1] = &unk_1E70FFF30;
      v188 = v163;
      v184[2] = self;
      v189 = v162;
      v185 = v21;
      v186 = &v190;
      v187 = &v194;
      v76 = v75;
      v165 = v183;
      v77 = [v76 count];
      v164 = &v154;
      v78 = 8 * v77;
      MEMORY[0x1EEE9AC00](v77);
      v79 = &v154 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
      v179 = v80;
      bzero(v79, v78);
      MEMORY[0x1EEE9AC00](v81);
      bzero(v79, v78);
      v82 = [v76 getObjects:v79 andKeys:v79 count:v179];
      v168 = v76;
      MEMORY[0x1EEE9AC00](v82);
      MEMORY[0x1EEE9AC00](v83);
      v176 = v79;
      MEMORY[0x1EEE9AC00](v84);
      v88 = MEMORY[0x1EEE9AC00](v85);
      if (v87)
      {
        v89 = 0;
        v90 = &v154 - 2 * v87 + 1;
        v91 = (v86 + 8);
        v159 = (v86 + 8);
        v160 = v90;
        do
        {
          [*&v79[8 * v89] CGSizeValue];
          *(v91 - 1) = v92;
          *v91 = v93;
          *&v176[8 * v89] = 1;
          v94 = [*&v79[8 * v89] rangeCount];
          *&v79[8 * v89] = v94;
          if (v94)
          {
            *(v90 - 1) = [*&v79[8 * v89] rangeAtIndex:0];
            *v90 = v95;
          }

          ++v89;
          v90 += 2;
          v91 += 2;
          v96 = v179;
        }

        while (v179 != v89);
        v157 = &v154;
        v173 = 0;
LABEL_112:
        v97 = v79;
        v98 = v176;
        v99 = v160;
        v100 = v159;
        v101 = v79;
        do
        {
          v102 = *v98;
          v104 = *v97;
          v97 += 8;
          v103 = v104;
          if (*v98 <= v104 && *(v99 - 1) == v173)
          {
            v105 = *(v100 - 1);
            v106 = *v100;
            v155 = *v99;
            (v184[0])(v165, v173, v105, v106);
            if (v102 < v103)
            {
              *(v99 - 1) = [*v101 rangeAtIndex:v102];
              *v99 = v107;
            }

            v173 += v155;
            *v98 = v102 + 1;
            v96 = v179;
            goto LABEL_112;
          }

          ++v101;
          v100 += 2;
          v99 += 2;
          v98 += 8;
          --v96;
        }

        while (v96);
        v4 = v156;
      }

      else
      {
        v173 = 0;
      }

      v5 = v158;
      if (v173 != v23)
      {
        v153 = [MEMORY[0x1E696AAA8] currentHandler];
        [v153 handleFailureInMethod:v163 object:self file:@"UICollectionViewFlowLayout.m" lineNumber:1496 description:@"not all items covered by _collectionView:layout:sizesForItemsInSection:"];

        v5 = v158;
      }
    }

    else
    {
      if (v21)
      {
        v40 = *(v21 + 96);
      }

      else
      {
        v40 = 0;
      }

      v168 = v40;
      [(UICollectionViewFlowLayout *)self itemSize];
      if (v23 >= 1)
      {
        v43 = v41;
        v44 = v42;
        for (j = 0; v23 != j; ++j)
        {
          v46 = [(_UIFlowLayoutSection *)v21 addItem];

          v47 = (*(&self->super.super.isa + v181) & 1) == 0;
          if (*(&self->super.super.isa + v181))
          {
            v55 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:v182];
            [v180 collectionView:v5 layout:self sizeForItemAtIndexPath:v55];
            v52 = v56;
            v53 = v57;

            v58 = dyld_program_sdk_at_least();
            v59 = v52 < 0.0;
            if (v53 < 0.0)
            {
              v59 = 1;
            }

            if (v58)
            {
              if (v59)
              {
                v49 = [MEMORY[0x1E696AAA8] currentHandler];
                v210.width = v52;
                v210.height = v53;
                v60 = NSStringFromCGSize(v210);
                [v49 handleFailureInMethod:v163 object:self file:@"UICollectionViewFlowLayout.m" lineNumber:1511 description:@"Collection view delegate returned a negative size %@ from -collectionView:layout:sizeForItemAtIndexPath: for item %ld in section %ld, which is not supported by flow layout. Delegate: %@; collection view: %@", v60, j, v182, v180, self->super._collectionView];

                goto LABEL_70;
              }
            }

            else if (v59)
            {
              v49 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497678) + 8);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v211.width = v52;
                v211.height = v53;
                v73 = NSStringFromCGSize(v211);
                v74 = self->super._collectionView;
                *buf = 138413314;
                v200 = v73;
                v201 = 2048;
                v202 = j;
                v203 = 2048;
                v204 = v182;
                v205 = 2112;
                v206 = v180;
                v207 = 2112;
                v208 = v74;
                _os_log_impl(&dword_188A29000, v49, OS_LOG_TYPE_ERROR, "Collection view delegate returned a negative size %@ from -collectionView:layout:sizeForItemAtIndexPath: for item %ld in section %ld, which is not supported by flow layout. Delegate: %@; collection view: %@", buf, 0x34u);
              }

LABEL_70:
              v54 = 4;
LABEL_80:

              goto LABEL_81;
            }

            v47 = 0;
            v54 = 4;
          }

          else
          {
            if ([(UICollectionViewFlowLayout *)self _estimatesSizes])
            {
              v48 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:v182];
              v49 = [v4 objectForKeyedSubscript:v48];

              if (v49)
              {
                [v49 CGSizeValue];
                v52 = v50;
                v53 = v51;
                if (v167)
                {
                  v50 = v51;
                }

                if (v50 < v166)
                {
                  goto LABEL_70;
                }
              }

              [(UICollectionViewFlowLayout *)self _effectiveEstimatedItemSize];
              v52 = v61;
              v53 = v62;
              v54 = 0;
              goto LABEL_80;
            }

            v47 = 0;
            v54 = 4;
            v53 = v44;
            v52 = v43;
          }

LABEL_81:
          v63 = dyld_program_sdk_at_least();
          v64 = v52 < 0.0;
          if (v53 < 0.0)
          {
            v64 = 1;
          }

          if (v63)
          {
            if (v64)
            {
              v65 = [MEMORY[0x1E696AAA8] currentHandler];
              [v65 handleFailureInMethod:v163 object:self file:@"UICollectionViewFlowLayout.m" lineNumber:1548 description:{@"Negative sizes are not supported by flow layout. Collection view: %@", self->super._collectionView}];
            }
          }

          else if (v64)
          {
            v71 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497680) + 8);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              v72 = self->super._collectionView;
              *buf = v154;
              v200 = v72;
              _os_log_impl(&dword_188A29000, v71, OS_LOG_TYPE_ERROR, "Negative sizes are not supported by flow layout. Collection view: %@", buf, 0xCu);
            }
          }

          if (*(v191 + 24) == 1)
          {
            v66 = v195;
            v67 = v195[4];
            v68 = v195[5];
            if (v18 == v67 && v19 == v68)
            {
              v195[4] = v52;
              v66[5] = v53;
            }

            else if (v52 != v67 || v53 != v68)
            {
              *(v191 + 24) = 0;
            }
          }

          if (v46)
          {
            *(v46 + 8) = v54 | v47 | *(v46 + 8) & 0xFA;
            *(v46 + 32) = 0;
            *(v46 + 40) = 0;
            *(v46 + 48) = v52;
            *(v46 + 56) = v53;
          }
        }
      }
    }

LABEL_125:
    if (*(v191 + 24) == 1)
    {
      v108 = v21 ? *(v21 + 96) : 0;
      v109 = v108;
      [v109 removeAllObjects];

      if (v21)
      {
        *(v21 + 248) = *(v195 + 2);
        *(v21 + 88) = 1;
      }
    }

    _Block_object_dispose(&v190, 8);
    _Block_object_dispose(&v194, 8);
    goto LABEL_131;
  }

LABEL_185:
}

void __74__UICollectionViewFlowLayout__getSizingInfosWithExistingSizingDictionary___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a4 < 0.0 || a5 < 0.0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:*(a1 + 64) object:*(*(a1 + 32) + 8) file:? lineNumber:? description:?];
  }

  if (a2 < a2 + a3)
  {
    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      v12 = *(a1 + 40);
      if (*(a1 + 72))
      {
        if (v12)
        {
          v13 = *(v12 + 96);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [v14 objectAtIndexedSubscript:a2];
      }

      else
      {
        v15 = [(_UIFlowLayoutSection *)v12 addItem];
      }

      v16 = *(*(a1 + 48) + 8);
      if (*(v16 + 24) == 1)
      {
        v17 = *(*(a1 + 56) + 8);
        v18 = *(v17 + 32);
        v19 = *(v17 + 40);
        if (v10 == v18 && v11 == v19)
        {
          *(v17 + 32) = a4;
          *(v17 + 40) = a5;
        }

        else if (a4 != v18 || a5 != v19)
        {
          *(v16 + 24) = 0;
        }
      }

      if (v15)
      {
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 48) = a4;
        *(v15 + 56) = a5;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }
}

- (void)_updateItemsLayoutForRect:(CGRect)a3 allowsPartialUpdate:(BOOL)a4
{
  if (self->_data)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    [(UICollectionViewFlowLayout *)self _dimensionFromCollectionView];
    if (v10 != 0.0)
    {
      data = self->_data;
      v12 = 1;
      if (data)
      {
        horizontal = data->_horizontal;
        v12 = !horizontal;
        data->_dimension = v10;
      }

      else
      {
        horizontal = 0;
      }

      p_currentLayoutSize = &self->_currentLayoutSize;
      self->_currentLayoutSize.width = 0.0;
      self->_currentLayoutSize.height = 0.0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      sectionInsetReference = self->_sectionInsetReference;
      if (sectionInsetReference)
      {
        if (horizontal)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        [(UICollectionViewFlowLayout *)self _adjustedSectionInsetForSectionInset:v16 forAxis:0.0, 0.0, 0.0, 0.0];
        v20 = v19;
        v22 = v21;
        if (horizontal)
        {
          v17 = v18;
        }

        v39[3] = v17 + v39[3];
      }

      else
      {
        v22 = 0.0;
        v20 = 0.0;
      }

      v23 = self->_data;
      if (v23)
      {
        v23 = v23->_sections;
      }

      v24 = v23;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __76__UICollectionViewFlowLayout__updateItemsLayoutForRect_allowsPartialUpdate___block_invoke;
      v35[3] = &unk_1E70FFF58;
      *&v35[6] = x;
      *&v35[7] = y;
      *&v35[8] = width;
      *&v35[9] = height;
      v36 = a4;
      v37 = v12;
      v35[4] = self;
      v35[5] = &v38;
      [(_UIFlowLayoutInfo *)v24 enumerateObjectsUsingBlock:v35];

      if (sectionInsetReference)
      {
        if (horizontal)
        {
          v25 = v22;
        }

        else
        {
          v25 = v20;
        }

        v39[3] = v25 + v39[3];
      }

      if (horizontal)
      {
        dimension = v39[3];
        v27 = self->_data;
        if (!v27)
        {
          v30 = 0.0;
LABEL_27:
          p_currentLayoutSize->width = dimension;
          self->_currentLayoutSize.height = v30;
          v31 = [(UICollectionViewFlowLayout *)self _estimatesSizes];
          v32 = self->_data;
          if (v31)
          {
            if (!v32)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (!v32)
            {
              goto LABEL_35;
            }

            if (!v32->_leftToRight && v32->_horizontal)
            {
              v33 = v32->_sections;
              v34[0] = MEMORY[0x1E69E9820];
              v34[1] = 3221225472;
              v34[2] = __76__UICollectionViewFlowLayout__updateItemsLayoutForRect_allowsPartialUpdate___block_invoke_2;
              v34[3] = &unk_1E70FFF80;
              v34[4] = self;
              [(NSMutableArray *)v33 enumerateObjectsUsingBlock:v34];

              v32 = self->_data;
              if (!v32)
              {
                goto LABEL_35;
              }
            }
          }

          v32->_contentSize = *p_currentLayoutSize;
LABEL_35:
          _Block_object_dispose(&v38, 8);
          return;
        }

        p_dimension = &v27->_dimension;
      }

      else
      {
        v29 = self->_data;
        if (v29)
        {
          dimension = v29->_dimension;
        }

        else
        {
          dimension = 0.0;
        }

        p_dimension = v39 + 3;
      }

      v30 = *p_dimension;
      goto LABEL_27;
    }
  }
}

void __76__UICollectionViewFlowLayout__updateItemsLayoutForRect_allowsPartialUpdate___block_invoke(uint64_t a1, double *a2, uint64_t a3)
{
  if ([*(a1 + 32) _estimatesSizes])
  {
    [(_UIFlowLayoutSection *)a2 updateEstimatedSizeForSection:a3];
    if (a2)
    {
      v7 = a2[39];
      v6 = a2[40];
      v8 = a2[41];
      v9 = a2[42];
    }

    else
    {
      v6 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      v7 = 0.0;
    }

    v28.origin.x = v7;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v9;
    if (CGRectIntersectsRect(v28, *(a1 + 48)))
    {
      v10 = v7;
      v11 = v6;
      v12 = v8;
      v13 = v9;
      if (*(a1 + 80) == 1)
      {
        v33.origin.x = v7;
        v33.origin.y = v6;
        v33.size.width = v8;
        v33.size.height = v9;
        *(&v13 - 3) = CGRectIntersection(*(a1 + 48), v33);
        v10 = v14;
        v11 = v15;
        v12 = v16;
      }

      rect = v13;
      v29.origin.x = v7;
      v29.origin.y = v6;
      v29.size.width = v8;
      v29.size.height = v9;
      v17 = -CGRectGetMinX(v29);
      v30.origin.x = v7;
      v30.origin.y = v6;
      v30.size.width = v8;
      v30.size.height = v9;
      v18 = -CGRectGetMinY(v30);
      v31.origin.x = v10;
      v31.origin.y = v11;
      v31.size.width = v12;
      v31.size.height = rect;
      v32 = CGRectOffset(v31, v17, v18);
      [(_UIFlowLayoutSection *)a2 computeLayoutInRect:a3 forSection:0 invalidating:0 invalidationContext:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
    }
  }

  else
  {
    [(_UIFlowLayoutSection *)a2 computeLayout];
  }

  if (a2)
  {
    v20 = a2[39];
    v19 = a2[40];
    v21 = a2[41];
    v22 = a2[42];
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v20 = 0.0;
  }

  v23 = *(a1 + 81);
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 24);
  if (*(a1 + 81))
  {
    v26 = v22;
  }

  else
  {
    v26 = v21;
  }

  *(v24 + 24) = v26 + v25;
  if (a2)
  {
    if (v23)
    {
      v19 = v25;
    }

    else
    {
      v20 = v25;
    }

    a2[39] = v20;
    a2[40] = v19;
    a2[41] = v21;
    a2[42] = v22;
  }
}

void __76__UICollectionViewFlowLayout__updateItemsLayoutForRect_allowsPartialUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v5 = v3[39];
    v4 = v3[40];
    v6 = v3[41];
    v7 = v3[42];
  }

  else
  {
    v4 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v5 = 0.0;
  }

  v8 = *(*(a1 + 32) + 400);
  v13.origin.x = v5;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v7;
  Width = CGRectGetWidth(v13);
  v14.origin.x = v5;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v7;
  MinX = CGRectGetMinX(v14);
  if (v11)
  {
    v11[39] = v8 - Width - MinX;
    v11[40] = v4;
    v11[41] = v6;
    v11[42] = v7;
  }
}

- (void)_fetchItemsInfoForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (((*(&self->_gridLayoutFlags + 1) & 0x80) == 0 || [(UICollectionViewFlowLayout *)self _estimatesSizes]) && [(UICollectionViewFlowLayout *)self _boundsAndInsetsAreValidForReferenceDimension])
  {
    v8 = dyld_program_sdk_at_least();
    v9 = *(&self->_gridLayoutFlags + 1);
    if (v8 && (v9 & 0x8000) != 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__UICollectionViewFlowLayout__fetchItemsInfoForRect___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      if (_fetchItemsInfoForRect__once != -1)
      {
        dispatch_once(&_fetchItemsInfoForRect__once, block);
      }

      v9 = *(&self->_gridLayoutFlags + 1);
    }

    *(&self->_gridLayoutFlags + 1) = v9 | 0x8000;
    [(UICollectionViewFlowLayout *)self _updateDelegateFlags];
    v10 = *(&self->_gridLayoutFlags + 1);
    if ((v10 & 0x100) == 0)
    {
      [(UICollectionViewFlowLayout *)self _getSizingInfosWithExistingSizingDictionary:0];
      *(&self->_gridLayoutFlags + 1) |= 0x100u;
    }

    [(UICollectionViewFlowLayout *)self _updateItemsLayoutForRect:(v10 >> 8) & 1 allowsPartialUpdate:x, y, width, height];
    *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFF7F7F | 0x80;
  }
}

void __53__UICollectionViewFlowLayout__fetchItemsInfoForRect___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("CollectionView", &UICollectionViewFlowLayoutSectionHeaderZPosition_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "An attempt to update layout information was detected while already in the process of computing the layout (i.e. reentrant call). This will result in unexpected behaviour or a crash. This may happen if a layout pass is triggered while calling out to a delegate. UICollectionViewFlowLayout instance is (%@)", &v4, 0xCu);
  }
}

- (CGRect)_frameForItem:(int64_t)a3 inSection:(int64_t)a4 usingData:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v11 = *(v8 + 39);
    v10 = *(v8 + 40);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v12 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:a4];
  v13 = [(_UIFlowLayoutSection *)v9 frameForItemAtIndexPath:v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (v9)
  {
    v20 = v9[12];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v21 objectAtIndex:a3];

  v23 = 0.0;
  if (v22)
  {
    WeakRetained = objc_loadWeakRetained(v22 + 3);
    v25 = WeakRetained;
    if (WeakRetained)
    {
      v26 = WeakRetained[9];
      v23 = WeakRetained[10];
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 0.0;
LABEL_8:
  v27 = v13 + v11 + v26;
  v28 = v10 + v23;
  v29 = [(UICollectionViewLayout *)self collectionView];
  [v29 _currentScreenScale];
  v31 = v30;

  if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
  {
    v32 = v31;
    if (v31 == 0.0)
    {
      if (AdjustToScale_onceToken != -1)
      {
        dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
      }

      v32 = *&AdjustToScale___s;
    }

    if (v32 == 1.0)
    {
      v27 = round(v27);
    }

    else
    {
      v27 = round(v27 * v32) / v32;
    }
  }

  v33 = v15 + v28;
  if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
  {
    if (v31 == 0.0)
    {
      if (AdjustToScale_onceToken != -1)
      {
        dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
      }

      v31 = *&AdjustToScale___s;
    }

    if (v31 == 1.0)
    {
      v33 = round(v33);
    }

    else
    {
      v33 = round(v33 * v31) / v31;
    }
  }

  v34 = v27;
  v35 = v33;
  v36 = v17;
  v37 = v19;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)_frameForHeaderInSection:(int64_t)a3 usingData:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6[13];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 count];

  if (v10 <= a3)
  {
    v25 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_59;
  }

  if (v7)
  {
    v11 = v7[13];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 objectAtIndexedSubscript:a3];

  if (v13)
  {
    v14 = *(v13 + 312);
    v15 = *(v13 + 320);
    v17 = *(v13 + 328);
    v16 = *(v13 + 336);
    if ([(UICollectionViewFlowLayout *)self _headerFollowsSectionMargins])
    {
LABEL_8:
      v18 = [(_UIFlowLayoutSection *)v13 effectiveHeaderFrameWithSectionMarginsApplied];
      v21 = v20;
      v23 = v22;
      goto LABEL_11;
    }

    v18 = *(v13 + 344);
    v19 = *(v13 + 352);
    v21 = *(v13 + 360);
    v23 = *(v13 + 368);
  }

  else
  {
    v64 = [(UICollectionViewFlowLayout *)self _headerFollowsSectionMargins];
    v14 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    v19 = 0.0;
    v21 = 0.0;
    v23 = 0.0;
    v18 = 0.0;
    if (v64)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  v25 = v14 + v18;
  v24 = v15 + v19;
  if ((*(&self->_gridLayoutFlags + 5) & 8) != 0)
  {
    v93 = v16;
    v94 = v23;
    data = self->_data;
    v91 = v14;
    v92 = v17;
    v90 = v15;
    v27 = v21;
    if (data)
    {
      leftToRight = data->_leftToRight;
    }

    else
    {
      leftToRight = 0;
    }

    [(UIView *)self->super._collectionView bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    [(UIScrollView *)self->super._collectionView _effectiveContentInset];
    v38 = v30 + v37;
    v40 = v32 + v39;
    v42 = v34 - (v37 + v41);
    v44 = v36 - (v39 + v43);
    v45 = self->_data;
    if (v45)
    {
      v21 = v27;
      if (v45->_horizontal)
      {
        v23 = v94;
        rect = v44;
        v46 = v38;
        v47 = v40;
        v48 = v42;
        v49 = v44;
        v50 = v42;
        if (leftToRight)
        {
          MinX = CGRectGetMinX(*&v46);
          v95.origin.x = v25;
          v95.origin.y = v24;
          v95.size.width = v21;
          v95.size.height = v94;
          if (MinX > CGRectGetMinX(v95))
          {
            v96.origin.x = v38;
            v96.origin.y = v40;
            v96.size.width = v50;
            v96.size.height = rect;
            v25 = CGRectGetMinX(v96);
          }
        }

        else
        {
          MaxX = CGRectGetMaxX(*&v46);
          v97.origin.x = v25;
          v97.origin.y = v24;
          v97.size.width = v21;
          v97.size.height = v94;
          if (MaxX < CGRectGetMaxX(v97))
          {
            v98.origin.x = v38;
            v98.origin.y = v40;
            v98.size.width = v50;
            v98.size.height = rect;
            v53 = CGRectGetMaxX(v98);
            v99.origin.x = v25;
            v99.origin.y = v24;
            v99.size.width = v21;
            v99.size.height = v94;
            v25 = v53 - CGRectGetWidth(v99);
          }
        }

        if (v13)
        {
          v54 = *(v13 + 376);
          v55 = *(v13 + 384);
          v56 = *(v13 + 392);
          v57 = *(v13 + 400);
        }

        else
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v54 = 0;
        }

        Width = CGRectGetWidth(*&v54);
        v87 = Width;
        v59 = v25;
        v60 = v24;
        v61 = v21;
        v62 = v94;
        if (leftToRight)
        {
          rectb = Width + CGRectGetMaxX(*&v59);
          v100.origin.x = v91;
          v100.origin.y = v90;
          v100.size.width = v92;
          v100.size.height = v93;
          if (rectb > CGRectGetMaxX(v100))
          {
            v101.origin.x = v91;
            v101.origin.y = v90;
            v101.size.width = v92;
            v101.size.height = v93;
            v63 = CGRectGetMaxX(v101);
            v102.origin.x = v25;
            v102.origin.y = v24;
            v102.size.width = v21;
            v102.size.height = v94;
            v25 = v63 - (v87 + CGRectGetWidth(v102));
          }
        }

        else
        {
          rectc = CGRectGetMinX(*&v59) - Width;
          v103.origin.x = v91;
          v103.origin.y = v90;
          v103.size.width = v92;
          v103.size.height = v93;
          if (rectc < CGRectGetMinX(v103))
          {
            v104.origin.x = v91;
            v104.origin.y = v90;
            v104.size.width = v92;
            v104.size.height = v93;
            v25 = Width + CGRectGetMinX(v104);
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v21 = v27;
    }

    v105.origin.x = v38;
    v105.origin.y = v40;
    v105.size.width = v42;
    v88 = v42;
    v105.size.height = v44;
    MinY = CGRectGetMinY(v105);
    v106.origin.x = v25;
    v66 = v24;
    v106.origin.y = v24;
    v106.size.width = v21;
    v106.size.height = v94;
    if (MinY > CGRectGetMinY(v106))
    {
      v107.origin.x = v38;
      v107.origin.y = v40;
      v107.size.width = v88;
      v107.size.height = v44;
      v66 = CGRectGetMinY(v107);
    }

    if (v13)
    {
      v67 = *(v13 + 376);
      v68 = *(v13 + 384);
      v69 = *(v13 + 392);
      v70 = *(v13 + 400);
    }

    else
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v67 = 0;
    }

    Height = CGRectGetHeight(*&v67);
    v108.origin.x = v25;
    v89 = v25;
    v72 = v66;
    v108.origin.y = v66;
    v108.size.width = v21;
    v23 = v94;
    v108.size.height = v94;
    recta = Height;
    v73 = Height + CGRectGetMaxY(v108);
    v109.origin.x = v91;
    v109.origin.y = v90;
    v109.size.width = v92;
    v109.size.height = v93;
    if (v73 <= CGRectGetMaxY(v109))
    {
      v24 = v72;
    }

    else
    {
      v110.origin.x = v91;
      v110.origin.y = v90;
      v110.size.width = v92;
      v110.size.height = v93;
      MaxY = CGRectGetMaxY(v110);
      v111.origin.x = v89;
      v111.origin.y = v72;
      v111.size.width = v21;
      v111.size.height = v94;
      v24 = MaxY - (recta + CGRectGetHeight(v111));
    }

    v25 = v89;
  }

LABEL_42:
  v75 = [(UICollectionViewLayout *)self collectionView];
  [v75 _currentScreenScale];
  v77 = v76;

  if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
  {
    v78 = v77;
    if (v77 == 0.0)
    {
      if (AdjustToScale_onceToken != -1)
      {
        dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
      }

      v78 = *&AdjustToScale___s;
    }

    if (v78 == 1.0)
    {
      v25 = round(v25);
    }

    else
    {
      v25 = round(v25 * v78) / v78;
    }
  }

  if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
  {
    if (v77 == 0.0)
    {
      if (AdjustToScale_onceToken != -1)
      {
        dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
      }

      v77 = *&AdjustToScale___s;
    }

    if (v77 == 1.0)
    {
      v24 = round(v24);
    }

    else
    {
      v24 = round(v24 * v77) / v77;
    }
  }

LABEL_59:
  v79 = v25;
  v80 = v24;
  v81 = v21;
  v82 = v23;
  result.size.height = v82;
  result.size.width = v81;
  result.origin.y = v80;
  result.origin.x = v79;
  return result;
}

- (CGRect)_frameForFooterInSection:(int64_t)a3 usingData:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6[13];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 count];

  if (v10 <= a3)
  {
    v25 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_36;
  }

  if (v7)
  {
    v11 = v7[13];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 objectAtIndexedSubscript:a3];

  if (v13)
  {
    v15 = *(v13 + 312);
    v14 = *(v13 + 320);
    v17 = *(v13 + 328);
    v16 = *(v13 + 336);
    if (![(UICollectionViewFlowLayout *)self _footerFollowsSectionMargins])
    {
      v18 = *(v13 + 376);
      v19 = *(v13 + 384);
      v21 = *(v13 + 392);
      v23 = *(v13 + 400);
      goto LABEL_11;
    }
  }

  else
  {
    v77 = [(UICollectionViewFlowLayout *)self _footerFollowsSectionMargins];
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v14 = 0.0;
    v19 = 0.0;
    v21 = 0.0;
    v23 = 0.0;
    v18 = 0.0;
    if (!v77)
    {
      goto LABEL_11;
    }
  }

  v18 = [(_UIFlowLayoutSection *)v13 effectiveFooterFrameWithSectionMarginsApplied];
  v21 = v20;
  v23 = v22;
LABEL_11:
  v25 = v15 + v18;
  v24 = v14 + v19;
  if ((*(&self->_gridLayoutFlags + 5) & 0x10) != 0)
  {
    v82 = v23;
    v85 = v14;
    v79 = v17;
    v81 = v16;
    v30 = v21;
    [(UIView *)self->super._collectionView bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [(UIScrollView *)self->super._collectionView _effectiveContentInset];
    v42 = v40 + v41;
    v44 = v39 + v43;
    data = self->_data;
    v80 = v15;
    if (data)
    {
      LOBYTE(data) = data->_horizontal;
    }

    v46 = v32 + v40;
    v47 = v34 + v39;
    v48 = v36 - v42;
    v49 = v38 - v44;
    rect = v24;
    v50 = v46;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    if (data)
    {
      MaxX = CGRectGetMaxX(*&v50);
      v86.origin.x = v25;
      v86.origin.y = v24;
      v86.size.width = v30;
      v86.size.height = v82;
      if (MaxX >= CGRectGetMaxX(v86))
      {
        v56 = v24;
      }

      else
      {
        v87.origin.x = v46;
        v87.origin.y = v47;
        v87.size.width = v48;
        v87.size.height = v49;
        v55 = CGRectGetMaxX(v87);
        v88.origin.x = v25;
        v88.origin.y = v24;
        v56 = v24;
        v88.size.width = v30;
        v88.size.height = v82;
        v25 = v55 - CGRectGetWidth(v88);
      }

      v21 = v30;
      v23 = v82;
      if (v13)
      {
        v65 = *(v13 + 344);
        v66 = *(v13 + 352);
        v67 = *(v13 + 360);
        v68 = *(v13 + 368);
      }

      else
      {
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v65 = 0;
      }

      v24 = v56;
      Width = CGRectGetWidth(*&v65);
      v92.origin.x = v25;
      v92.origin.y = v56;
      v92.size.width = v21;
      v92.size.height = v82;
      v83 = Width;
      v70 = CGRectGetMinX(v92) - Width;
      v93.origin.x = v80;
      v93.origin.y = v85;
      v93.size.width = v79;
      v93.size.height = v81;
      if (v70 < CGRectGetMinX(v93))
      {
        v94.origin.x = v80;
        v94.origin.y = v85;
        v94.size.width = v79;
        v94.size.height = v81;
        v25 = v83 + CGRectGetMinX(v94);
      }
    }

    else
    {
      MaxY = CGRectGetMaxY(*&v50);
      v89.origin.x = v25;
      v89.origin.y = v24;
      v58 = v30;
      v89.size.width = v30;
      v23 = v82;
      v89.size.height = v82;
      if (MaxY >= CGRectGetMaxY(v89))
      {
        v60 = rect;
      }

      else
      {
        v90.origin.x = v46;
        v90.origin.y = v47;
        v90.size.width = v48;
        v90.size.height = v49;
        v59 = CGRectGetMaxY(v90);
        v91.origin.x = v25;
        v91.origin.y = rect;
        v91.size.width = v58;
        v91.size.height = v82;
        v60 = v59 - CGRectGetHeight(v91);
      }

      v21 = v58;
      if (v13)
      {
        v71 = *(v13 + 344);
        v72 = *(v13 + 352);
        v73 = *(v13 + 360);
        v74 = *(v13 + 368);
      }

      else
      {
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v71 = 0;
      }

      v24 = v60;
      Height = CGRectGetHeight(*&v71);
      v95.origin.x = v25;
      v95.origin.y = v24;
      v95.size.width = v21;
      v95.size.height = v82;
      v84 = Height;
      v76 = CGRectGetMinY(v95) - Height;
      v96.origin.x = v80;
      v96.origin.y = v85;
      v96.size.width = v79;
      v96.size.height = v81;
      if (v76 < CGRectGetMinY(v96))
      {
        v97.origin.x = v80;
        v97.origin.y = v85;
        v97.size.width = v79;
        v97.size.height = v81;
        v24 = v84 + CGRectGetMinY(v97);
      }
    }
  }

  v26 = [(UICollectionViewLayout *)self collectionView];
  [v26 _currentScreenScale];
  v28 = v27;

  if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
  {
    v29 = v28;
    if (v28 == 0.0)
    {
      if (AdjustToScale_onceToken != -1)
      {
        dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
      }

      v29 = *&AdjustToScale___s;
    }

    if (v29 == 1.0)
    {
      v25 = round(v25);
    }

    else
    {
      v25 = round(v25 * v29) / v29;
    }
  }

  if ([(UICollectionViewFlowLayout *)self _roundsToScreenScale])
  {
    if (v28 == 0.0)
    {
      if (AdjustToScale_onceToken != -1)
      {
        dispatch_once(&AdjustToScale_onceToken, &__block_literal_global_121);
      }

      v28 = *&AdjustToScale___s;
    }

    if (v28 == 1.0)
    {
      v24 = round(v24);
    }

    else
    {
      v24 = round(v24 * v28) / v28;
    }
  }

LABEL_36:
  v61 = v25;
  v62 = v24;
  v63 = v21;
  v64 = v23;
  result.size.height = v64;
  result.size.width = v63;
  result.origin.y = v62;
  result.origin.x = v61;
  return result;
}

- (void)_finalizeCollectionViewUpdate:(id)a3
{
  insertedItemsAttributesDict = self->_insertedItemsAttributesDict;
  self->_insertedItemsAttributesDict = 0;
  v5 = a3;

  insertedSectionHeadersAttributesDict = self->_insertedSectionHeadersAttributesDict;
  self->_insertedSectionHeadersAttributesDict = 0;

  insertedSectionFootersAttributesDict = self->_insertedSectionFootersAttributesDict;
  self->_insertedSectionFootersAttributesDict = 0;

  deletedItemsAttributesDict = self->_deletedItemsAttributesDict;
  self->_deletedItemsAttributesDict = 0;

  deletedSectionHeadersAttributesDict = self->_deletedSectionHeadersAttributesDict;
  self->_deletedSectionHeadersAttributesDict = 0;

  deletedSectionFootersAttributesDict = self->_deletedSectionFootersAttributesDict;
  self->_deletedSectionFootersAttributesDict = 0;

  currentUpdateTranslator = self->_currentUpdateTranslator;
  self->_currentUpdateTranslator = 0;

  v12.receiver = self;
  v12.super_class = UICollectionViewFlowLayout;
  [(UICollectionViewLayout *)&v12 _finalizeCollectionViewUpdate:v5];
}

- (CGRect)_layoutFrameForSection:(int64_t)a3
{
  data = self->_data;
  if (data)
  {
    data = data->_sections;
  }

  v6 = data;
  v7 = v6;
  if (a3 < 0 || [(_UIFlowLayoutInfo *)v6 count]<= a3)
  {
    v21.receiver = self;
    v21.super_class = UICollectionViewFlowLayout;
    [(UICollectionViewLayout *)&v21 _layoutFrameForSection:a3];
    v10 = v13;
    v9 = v14;
    v11 = v15;
    v12 = v16;
  }

  else
  {
    v8 = [(_UIFlowLayoutInfo *)v7 objectAtIndexedSubscript:a3];
    if (v8)
    {
      v10 = v8[39];
      v9 = v8[40];
      v11 = v8[41];
      v12 = v8[42];
    }

    else
    {
      v9 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      v10 = 0.0;
    }
  }

  v17 = v10;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)initialLayoutAttributesForHeaderInInsertedSection:(int64_t)a3
{
  insertedSectionHeadersAttributesDict = self->_insertedSectionHeadersAttributesDict;
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:a3];
  v5 = [(NSMutableDictionary *)insertedSectionHeadersAttributesDict objectForKey:v4];

  return v5;
}

- (id)initialLayoutAttributesForFooterInInsertedSection:(int64_t)a3
{
  insertedSectionFootersAttributesDict = self->_insertedSectionFootersAttributesDict;
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:a3];
  v5 = [(NSMutableDictionary *)insertedSectionFootersAttributesDict objectForKey:v4];

  return v5;
}

- (id)finalLayoutAttributesForHeaderInDeletedSection:(int64_t)a3
{
  deletedSectionHeadersAttributesDict = self->_deletedSectionHeadersAttributesDict;
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:a3];
  v5 = [(NSMutableDictionary *)deletedSectionHeadersAttributesDict objectForKey:v4];

  return v5;
}

- (id)finalLayoutAttributesForFooterInDeletedSection:(int64_t)a3
{
  deletedSectionFootersAttributesDict = self->_deletedSectionFootersAttributesDict;
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:a3];
  v5 = [(NSMutableDictionary *)deletedSectionFootersAttributesDict objectForKey:v4];

  return v5;
}

- (CGSize)synchronizeLayout
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_invalidateButKeepDelegateInfo
{
  v3 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [v3 setInvalidateFlowLayoutDelegateMetrics:0];
  [(UICollectionViewLayout *)self _invalidateLayoutUsingContext:v3];
}

- (void)_invalidateButKeepAllInfo
{
  v3 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [v3 setInvalidateFlowLayoutDelegateMetrics:0];
  [v3 setInvalidateFlowLayoutAttributes:0];
  [(UICollectionViewLayout *)self _invalidateLayoutUsingContext:v3];
}

- (void)_updateContentSizeScrollingDimensionWithDelta:(double)a3
{
  if (a3 != 0.0)
  {
    if (self->_scrollDirection == 1)
    {
      self->_currentLayoutSize.width = self->_currentLayoutSize.width + a3;
      p_contentSizeAdjustment = &self->_contentSizeAdjustment;
    }

    else
    {
      self->_currentLayoutSize.height = self->_currentLayoutSize.height + a3;
      p_contentSizeAdjustment = &self->_contentSizeAdjustment.height;
    }

    p_contentSizeAdjustment->width = a3;
  }
}

- (int64_t)_sectionArrayIndexForIndexPath:(id)a3
{
  v4 = [a3 section];
  v5 = [(UICollectionViewLayout *)self _sections];
  v6 = v4 - [v5 firstIndex];

  return v6;
}

- (void)_setRoundsToScreenScale:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFFDFF | v3;
}

- (void)_setHeaderFollowsSectionMargins:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFDFFF | v3;
}

- (void)_setFooterFollowsSectionMargins:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFBFFF | v3;
}

- (void)setSectionHeadersPinToVisibleBounds:(BOOL)sectionHeadersPinToVisibleBounds
{
  if (sectionHeadersPinToVisibleBounds)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFF7FF | v3;
}

- (void)setSectionFootersPinToVisibleBounds:(BOOL)sectionFootersPinToVisibleBounds
{
  if (sectionFootersPinToVisibleBounds)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_gridLayoutFlags + 1) = *(&self->_gridLayoutFlags + 1) & 0xFFFFEFFF | v3;
}

- (CGRect)_frameForScrollingToFirstElementInSectionAtIndex:(int64_t)a3
{
  v5 = [(UICollectionViewFlowLayout *)self layoutAttributesForHeaderInSection:?];
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a3];
    v5 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v6];
  }

  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (UIEdgeInsets)_adjustedSectionInsetForSectionInset:(UIEdgeInsets)a3 forAxis:(unint64_t)a4
{
  v4 = a4;
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v10 = [(UICollectionViewLayout *)self collectionView];
  [v10 adjustedContentInset];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sectionInsetReference = self->_sectionInsetReference;
  if (sectionInsetReference == 2)
  {
    v33 = v12;
    v34 = v14;
    v35 = v16;
    v36 = v18;
    v24 = [(UICollectionViewLayout *)self collectionView];
    [v24 layoutMargins];
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if (sectionInsetReference != 1)
    {
      goto LABEL_13;
    }

    v33 = v12;
    v34 = v14;
    v35 = v16;
    v36 = v18;
    v24 = [(UICollectionViewLayout *)self collectionView:0.0];
    [v24 safeAreaInsets];
  }

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;

  v23 = fmax(top + v29 - v33, 0.0);
  if ((v4 & 2) == 0)
  {
    v23 = top;
  }

  v22 = fmax(left + v30 - v34, 0.0);
  v21 = fmax(bottom + v31 - v35, 0.0);
  if ((v4 & 2) == 0)
  {
    v21 = bottom;
  }

  if ((v4 & 1) == 0)
  {
    v22 = left;
  }

  v20 = fmax(right + v32 - v36, 0.0);
  if ((v4 & 1) == 0)
  {
    v20 = right;
  }

LABEL_13:
  result.right = v20;
  result.bottom = v21;
  result.left = v22;
  result.top = v23;
  return result;
}

- (void)_didPerformUpdateVisibleCellsPassWithLayoutOffset:(CGPoint)a3
{
  if (dyld_program_sdk_at_least())
  {
    updateVisibleCellsContext = self->_updateVisibleCellsContext;
    if (updateVisibleCellsContext && [(NSMutableArray *)updateVisibleCellsContext->_attributes count]&& !updateVisibleCellsContext->_visibleCellsRefCount)
    {
      data = self->_data;
      v7 = self->_updateVisibleCellsContext;
      if (v7)
      {
        v7 = v7->_sizes;
      }

      v8 = v7;
      v9 = self->_updateVisibleCellsContext;
      if (v9)
      {
        v9 = v9->_indexPaths;
      }

      v10 = v9;
      [(_UIFlowLayoutInfo *)data setSizes:v8 forItemsAtIndexPaths:v10];

      v11 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:a2 object:self file:@"UICollectionViewFlowLayout.m" lineNumber:2116 description:{@"The invalidation context (%@) sent to -[UICollectionViewFlowLayout invalidateLayoutWithContext:] is not an instance of type UICollectionViewFlowLayoutInvalidationContext or a subclass. Collection view: %@", v11, self->super._collectionView}];
      }

      v12 = self->_updateVisibleCellsContext;
      if (v12)
      {
        v12 = v12->_indexPaths;
      }

      v13 = v12;
      [v11 invalidateItemsAtIndexPaths:v13];

      [v11 setInvalidateFlowLayoutAttributes:0];
      [v11 _setInvalidateDataSourceCounts:0];
      [v11 setContentOffsetAdjustment:{self->_contentOffsetAdjustment.x, self->_contentOffsetAdjustment.y}];
      [v11 setContentSizeAdjustment:{self->_contentSizeAdjustment.width, self->_contentSizeAdjustment.height}];
      if (dyld_program_sdk_at_least())
      {
        [v11 _setIntent:5];
      }

      [(UICollectionViewFlowLayout *)self invalidateLayoutWithContext:v11];
      [(UICollectionView *)self->super._collectionView _setNeedsVisibleCellsUpdate:1 withLayoutAttributes:1];
    }

    v14 = self->_updateVisibleCellsContext;
    self->_updateVisibleCellsContext = 0;
  }

  *(&self->_gridLayoutFlags + 1) &= ~0x10000u;
}

- (CGSize)headerReferenceSize
{
  width = self->_headerReferenceSize.width;
  height = self->_headerReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)footerReferenceSize
{
  width = self->_footerReferenceSize.width;
  height = self->_footerReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedItemSize
{
  width = self->_estimatedItemSize.width;
  height = self->_estimatedItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end