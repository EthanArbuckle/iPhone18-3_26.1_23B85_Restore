@interface SKUIZoomingShelfCollectionViewLayout
+ (BOOL)collectionViewCanClipToBounds;
+ (Class)invalidationContextClass;
+ (Class)layoutAttributesClass;
+ (double)snapToBoundariesDecelerationRate;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)collectionViewContentSize;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)menuBarFocusedItemIndexPathWithTransitionProgress:(double *)a3;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setFocusedItemHorizontalCenterOffset:(double)a3;
- (void)setInterItemSpacing:(double)a3;
- (void)setItemWidth:(double)a3;
- (void)setLayoutData:(id)a3;
- (void)setMenuBarFocusedItemIndexPath:(id)a3 withTransitionProgress:(double)a4;
- (void)setScaledItemWidth:(double)a3;
@end

@implementation SKUIZoomingShelfCollectionViewLayout

+ (Class)layoutAttributesClass
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v2 layoutAttributesClass:v3];
      }
    }
  }

  v10 = objc_opt_class();

  return v10;
}

- (void)prepareLayout
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v3 prepareLayout:v4];
      }
    }
  }

  v71.receiver = self;
  v71.super_class = SKUIZoomingShelfCollectionViewLayout;
  [(SKUIZoomingShelfCollectionViewLayout *)&v71 prepareLayout];
  v11 = [(SKUIZoomingShelfCollectionViewLayout *)self collectionView];
  v58 = [v11 backgroundColor];
  [v11 bounds];
  v69 = v13;
  v70 = v12;
  v67 = v15;
  v68 = v14;
  v57 = v11;
  [v11 contentOffset];
  v17 = v16;
  focusedItemHorizontalCenterOffset = self->_focusedItemHorizontalCenterOffset;
  interItemSpacing = self->_interItemSpacing;
  itemWidth = self->_itemWidth;
  scaledItemWidth = self->_scaledItemWidth;
  v22 = scaledItemWidth * 0.5;
  if (self->_cachedLayoutAttributes && self->_invalidateGeometryOnlyOfExistingLayoutAttributes)
  {
    v63 = 0;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedLayoutAttributes = self->_cachedLayoutAttributes;
    self->_cachedLayoutAttributes = v23;

    v63 = 1;
  }

  v25 = itemWidth * 0.5;
  v65 = interItemSpacing + itemWidth;
  v66 = focusedItemHorizontalCenterOffset - v22;
  v56 = [v11 numberOfSections];
  if (v56 <= 0)
  {
    v52 = scaledItemWidth - itemWidth;
    v51 = -1.0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v54 = scaledItemWidth * 0.5;
    v55 = focusedItemHorizontalCenterOffset;
    v28 = v25 + interItemSpacing + v22 + v25 + interItemSpacing + v22;
    v61 = v28 * 0.5;
    v62 = v17 + focusedItemHorizontalCenterOffset;
    v64 = scaledItemWidth - itemWidth;
    v60 = v28 - (scaledItemWidth - itemWidth);
    v29 = *(MEMORY[0x277CBF3A0] + 8);
    v59 = *MEMORY[0x277CBF3A0];
    v30 = *MEMORY[0x277CDA7B8];
    v31 = scaledItemWidth / itemWidth;
    v32 = 1.0 - scaledItemWidth / itemWidth + 1.0 - scaledItemWidth / itemWidth;
    do
    {
      v33 = [v57 numberOfItemsInSection:{v27, *&v54, *&v55}];
      if (v33 >= 1)
      {
        for (i = 0; i != v33; ++i)
        {
          v35 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:v27];
          if ((v63 & 1) != 0 || ([(NSMutableDictionary *)self->_cachedLayoutAttributes objectForKey:v35], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v36 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
            [v36 setBackgroundColor:v58];
          }

          [(SKUIShelfLayoutData *)self->_layoutData sizeForItemAtIndex:v26 + i];
          v38 = v37;
          v39 = v25 + v66 + (v26 + i) * v65;
          v40 = (v61 + v39 - v62) / v60;
          if (v40 < 0.0)
          {
            v40 = 0.0;
          }

          v41 = fmin(v40, 1.0);
          [v36 _setZoomingImageLambda:v41];
          v72.origin.y = v69;
          v72.origin.x = v70;
          v72.size.height = v67;
          v72.size.width = v68;
          [v36 setCenter:{v39 + v41 * v64, CGRectGetMinY(v72) + v38 * 0.5}];
          [v36 setBounds:{v59, v29, itemWidth, v38}];
          v42 = fabs(v41 + -0.5);
          v43 = [MEMORY[0x277CD9EF8] functionWithName:v30];
          *&v44 = 1.0 - v42;
          [v43 _solveForInput:v44];
          v46 = v45;

          [v36 setZoomingImageAlpha:v46];
          [v36 setZoomingImageWidth:itemWidth * (v31 + v32 * v42)];
          v47 = [MEMORY[0x277CD9EF8] functionWithName:v30];
          *&v48 = v42 + v42;
          [v47 _solveForInput:v48];
          v50 = v49;

          [v36 setZoomingImageImposedAlphaOfOtherViews:v50];
          [(NSMutableDictionary *)self->_cachedLayoutAttributes setObject:v36 forKey:v35];
        }
      }

      v26 += v33;
      ++v27;
    }

    while (v27 != v56);
    v51 = (v26 - 1);
    v22 = v54;
    focusedItemHorizontalCenterOffset = v55;
    v52 = v64;
  }

  [(SKUIShelfLayoutData *)self->_layoutData totalContentSize];
  self->_cachedCollectionViewContentSize.width = v25 + v52 + v25 + v66 + v51 * v65;
  self->_cachedCollectionViewContentSize.height = v53;
  v73.origin.y = v69;
  v73.origin.x = v70;
  v73.size.height = v67;
  v73.size.width = v68;
  self->_cachedCollectionViewContentSize.width = self->_cachedCollectionViewContentSize.width + CGRectGetWidth(v73) - focusedItemHorizontalCenterOffset - v22;
}

- (CGSize)collectionViewContentSize
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v3 collectionViewContentSize:v4];
      }
    }
  }

  width = self->_cachedCollectionViewContentSize.width;
  height = self->_cachedCollectionViewContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v8 layoutAttributesForElementsInRect:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedLayoutAttributes = self->_cachedLayoutAttributes;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__SKUIZoomingShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v20[3] = &unk_2781FE500;
  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  v18 = v16;
  v21 = v18;
  [(NSMutableDictionary *)cachedLayoutAttributes enumerateKeysAndObjectsUsingBlock:v20];

  return v18;
}

void __74__SKUIZoomingShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 frame];
  if (CGRectIntersectsRect(v6, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v5 layoutAttributesForItemAtIndexPath:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(NSMutableDictionary *)self->_cachedLayoutAttributes objectForKey:v4];

  return v13;
}

+ (Class)invalidationContextClass
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v2 invalidationContextClass:v3];
      }
    }
  }

  v10 = objc_opt_class();

  return v10;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v8 invalidationContextForBoundsChange:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v24.receiver = self;
  v24.super_class = SKUIZoomingShelfCollectionViewLayout;
  v16 = [(SKUIZoomingShelfCollectionViewLayout *)&v24 invalidationContextForBoundsChange:x, y, width, height];
  v17 = [(SKUIZoomingShelfCollectionViewLayout *)self collectionView];
  [v17 bounds];
  v19 = v18;
  v21 = v20;

  if (v19 == width && v21 == height)
  {
    [v16 setInvalidateGeometryOnlyOfExistingLayoutAttributes:1];
  }

  return v16;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v5 invalidateLayoutWithContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = v4;
  self->_invalidateGeometryOnlyOfExistingLayoutAttributes = [v13 invalidateGeometryOnlyOfExistingLayoutAttributes];
  v14.receiver = self;
  v14.super_class = SKUIZoomingShelfCollectionViewLayout;
  [(SKUIZoomingShelfCollectionViewLayout *)&v14 invalidateLayoutWithContext:v13];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v9 targetContentOffsetForProposedContentOffset:v10 withScrollingVelocity:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [(SKUIZoomingShelfCollectionViewLayout *)self collectionView];
  focusedItemHorizontalCenterOffset = self->_focusedItemHorizontalCenterOffset;
  interItemSpacing = self->_interItemSpacing;
  itemWidth = self->_itemWidth;
  scaledItemWidth = self->_scaledItemWidth;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__62;
  v41 = __Block_byref_object_dispose__62;
  v42 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  cachedLayoutAttributes = self->_cachedLayoutAttributes;
  v36[3] = 0x7FEFFFFFFFFFFFFFLL;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __106__SKUIZoomingShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke;
  v35[3] = &unk_2781FE528;
  *&v35[6] = v7 + focusedItemHorizontalCenterOffset;
  v35[4] = v36;
  v35[5] = &v37;
  [(NSMutableDictionary *)cachedLayoutAttributes enumerateKeysAndObjectsUsingBlock:v35];
  v34.receiver = self;
  v34.super_class = SKUIZoomingShelfCollectionViewLayout;
  [(SKUIZoomingShelfCollectionViewLayout *)&v34 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
  v25 = v24;
  v26 = v38[5];
  if (v26)
  {
    v27 = [v26 section];
    v28 = [v38[5] item];
    if (v27 < 1)
    {
      v30 = 0;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      do
      {
        v30 += [v17 numberOfItemsInSection:v29++];
      }

      while (v27 != v29);
    }

    v31 = itemWidth * 0.5 + focusedItemHorizontalCenterOffset - scaledItemWidth * 0.5 + (v30 + v28) * (interItemSpacing + itemWidth) + (scaledItemWidth - itemWidth) * 0.5 - focusedItemHorizontalCenterOffset;
  }

  else
  {
    v31 = v23;
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v37, 8);

  v32 = v31;
  v33 = v25;
  result.y = v33;
  result.x = v32;
  return result;
}

void __106__SKUIZoomingShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  [a3 center];
  v7 = vabdd_f64(v6, *(a1 + 48));
  v8 = *(*(a1 + 32) + 8);
  if (v7 < *(v8 + 24))
  {
    *(v8 + 24) = v7;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)menuBarFocusedItemIndexPathWithTransitionProgress:(double *)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v5 menuBarFocusedItemIndexPathWithTransitionProgress:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIZoomingShelfCollectionViewLayout *)self collectionView];
  [v13 layoutIfNeeded];
  v14 = [v13 indexPathsForVisibleItems];
  v34 = a3;
  if (![v14 count])
  {
    [v13 contentOffset];
    if (v15 <= 0.0)
    {
      v18 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      v41[0] = v18;
      v19 = v41;
    }

    else
    {
      v16 = [v13 numberOfSections] - 1;
      v17 = [v13 numberOfItemsInSection:v16];
      v18 = [MEMORY[0x277CCAA70] indexPathForItem:v17 - 1 inSection:v16];
      v40 = v18;
      v19 = &v40;
    }

    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

    v14 = v20;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v36;
    v26 = 1.79769313e308;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v35 + 1) + 8 * i);
        v29 = [(NSMutableDictionary *)self->_cachedLayoutAttributes objectForKey:v28];
        [v29 _zoomingImageLambda];
        v31 = v30;
        if (fabs(v30 + -0.5) < fabs(v26 + -0.5))
        {
          v32 = v28;

          v26 = v31;
          v24 = v32;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
    v26 = 1.79769313e308;
  }

  if (v34)
  {
    *v34 = v26 * 2.0 + -1.0;
  }

  return v24;
}

- (void)setMenuBarFocusedItemIndexPath:(id)a3 withTransitionProgress:(double)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v7 setMenuBarFocusedItemIndexPath:v8 withTransitionProgress:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [(SKUIZoomingShelfCollectionViewLayout *)self collectionView];
  interItemSpacing = self->_interItemSpacing;
  itemWidth = self->_itemWidth;
  scaledItemWidth = self->_scaledItemWidth;
  v19 = [v6 section];
  if (v19 < 1)
  {
    v22 = 0;
  }

  else
  {
    v20 = v19;
    v21 = 0;
    v22 = 0;
    do
    {
      v22 += [v15 numberOfItemsInSection:v21++];
    }

    while (v20 != v21);
  }

  v23 = itemWidth * 0.5 + interItemSpacing + scaledItemWidth * 0.5 + itemWidth * 0.5 + interItemSpacing + scaledItemWidth * 0.5;
  v24 = [v6 item] + v22;
  [v15 contentOffset];
  [v15 setContentOffset:v23 * 0.5 + itemWidth * 0.5 + scaledItemWidth * -0.5 + v24 * (interItemSpacing + itemWidth) + (a4 + 1.0) * -0.5 * (v23 - (scaledItemWidth - itemWidth))];
}

- (void)setFocusedItemHorizontalCenterOffset:(double)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v5 setFocusedItemHorizontalCenterOffset:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_focusedItemHorizontalCenterOffset != a3)
  {
    self->_focusedItemHorizontalCenterOffset = a3;
    [(SKUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setLayoutData:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v6 setLayoutData:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_layoutData != v5)
  {
    objc_storeStrong(&self->_layoutData, a3);
    [(SKUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setInterItemSpacing:(double)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v5 setInterItemSpacing:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_interItemSpacing != a3)
  {
    self->_interItemSpacing = a3;
    [(SKUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setItemWidth:(double)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v5 setItemWidth:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_itemWidth != a3)
  {
    self->_itemWidth = a3;
    [(SKUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setScaledItemWidth:(double)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v5 setScaledItemWidth:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_scaledItemWidth != a3)
  {
    self->_scaledItemWidth = a3;
    [(SKUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

+ (double)snapToBoundariesDecelerationRate
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v2 snapToBoundariesDecelerationRate:v3];
      }
    }
  }

  return 0.98;
}

+ (BOOL)collectionViewCanClipToBounds
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIZoomingShelfCollectionViewLayout *)v2 collectionViewCanClipToBounds:v3];
      }
    }
  }

  return 0;
}

@end