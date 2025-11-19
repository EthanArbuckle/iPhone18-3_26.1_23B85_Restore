@interface SKUIShelfPageSectionConfiguration
- (BOOL)prefetchResourcesForShelfItemViewElement:(id)a3 reason:(int64_t)a4;
- (BOOL)supportsDuplicateShelfItems;
- (CGSize)cellSizeForShelfViewElement:(id)a3 indexPath:(id)a4 numberOfShelfItems:(int64_t)a5;
- (Class)_cellClassForEffectiveShelfItemViewElement:(id)a3;
- (Class)_lockupCellClassWithLockup:(id)a3;
- (SKUIShelfPageSectionConfigurationDataSource)dataSource;
- (UICollectionView)existingShelfCollectionView;
- (UICollectionView)shelfCollectionView;
- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)a3 forShelfViewElement:(id)a4 withSectionIndex:(int64_t)a5;
- (double)_columnSpacingForShelfItemViewElements:(id)a3;
- (double)_perspectiveHeightForContentSize:(double)a3;
- (id)_dequeueCellForLockup:(id)a3 collectionView:(id)a4 indexPath:(id)a5;
- (id)_reloadShelfLayoutDataWithNumberOfShelfItems:(int64_t)a3;
- (id)_shelfItemViewElementAtIndex:(int64_t)a3;
- (id)_styledShelfCollectionViewLayoutForExistingLayout:(id)a3;
- (id)actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:(id)a3 numberOfShelfItems:(unint64_t)a4;
- (id)backgroundColorForShelfViewElement:(id)a3;
- (id)cellForShelfItemViewElement:(id)a3 indexPath:(id)a4;
- (id)cellForShelfViewElement:(id)a3 indexPath:(id)a4;
- (id)effectiveViewElementForShelfItemViewElement:(id)a3;
- (id)normalizedShelfItemIndexPathFromActualIndexPath:(id)a3 numberOfShelfItems:(unint64_t)a4;
- (int64_t)lockupTypeForLockup:(id)a3;
- (int64_t)numberOfSectionCells;
- (unint64_t)numberOfCellsForNumberOfShelfItems:(unint64_t)a3;
- (unint64_t)numberOfIterations;
- (void)_updateShelfLayoutDataContentInset;
- (void)registerReusableClassesForCollectionView:(id)a3;
- (void)reloadLockupTypeForShelfViewElement:(id)a3;
- (void)reloadShelfLayoutDataForShelfViewElement:(id)a3 withShelfItemViewElements:(id)a4 requestCellLayouts:(BOOL)a5 numberOfShelfItems:(int64_t)a6;
- (void)requestCellLayoutForViewElement:(id)a3 withColumnWidth:(double)a4;
- (void)setShelfCollectionViewBackgroundColor:(id)a3;
- (void)setShelfCollectionViewDataSource:(id)a3;
- (void)setShelfCollectionViewDelegate:(id)a3;
- (void)setShelfViewElementStyle:(id)a3;
- (void)shelfItemsCollectionView:(id)a3 willApplyLayoutAttributes:(id)a4 forViewElement:(id)a5 withItemIndex:(int64_t)a6;
@end

@implementation SKUIShelfPageSectionConfiguration

- (UICollectionView)existingShelfCollectionView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIShelfPageSectionConfiguration *)v3 existingShelfCollectionView:v4];
      }
    }
  }

  shelfCollectionView = self->_shelfCollectionView;

  return shelfCollectionView;
}

- (unint64_t)numberOfIterations
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIShelfPageSectionConfiguration *)v2 numberOfIterations:v3];
      }
    }
  }

  return 1;
}

- (UICollectionView)shelfCollectionView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIShelfPageSectionConfiguration *)v3 shelfCollectionView:v4];
      }
    }
  }

  shelfCollectionView = self->_shelfCollectionView;
  if (!shelfCollectionView)
  {
    v12 = [(SKUIShelfPageSectionConfiguration *)self _styledShelfCollectionViewLayoutForExistingLayout:0];
    v13 = objc_alloc(MEMORY[0x277D752A0]);
    v14 = [v13 initWithFrame:v12 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v15 = self->_shelfCollectionView;
    self->_shelfCollectionView = v14;

    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828091E8];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828133E8];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280C5E8];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280D588];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2827FFFC8];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282808388];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828040A8];
    [(UICollectionView *)self->_shelfCollectionView setAlwaysBounceHorizontal:1];
    [(UICollectionView *)self->_shelfCollectionView setBackgroundColor:self->_shelfCollectionViewBackgroundColor];
    -[UICollectionView setClipsToBounds:](self->_shelfCollectionView, "setClipsToBounds:", [objc_opt_class() collectionViewCanClipToBounds]);
    [(UICollectionView *)self->_shelfCollectionView setDataSource:self->_shelfCollectionViewDataSource];
    v16 = self->_shelfCollectionView;
    [objc_opt_class() snapToBoundariesDecelerationRate];
    [(UICollectionView *)v16 setDecelerationRate:?];
    [(UICollectionView *)self->_shelfCollectionView setDelegate:self->_shelfCollectionViewDelegate];
    [(UICollectionView *)self->_shelfCollectionView setScrollsToTop:0];
    [(UICollectionView *)self->_shelfCollectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_shelfCollectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)self->_shelfCollectionView setPrefetchingEnabled:0];
    if (self->_rendersWithPerspective)
    {
      [(UICollectionView *)self->_shelfCollectionView setClipsToBounds:0];
    }

    shelfCollectionView = self->_shelfCollectionView;
  }

  return shelfCollectionView;
}

- (void)setShelfCollectionViewBackgroundColor:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIShelfPageSectionConfiguration *)v6 setShelfCollectionViewBackgroundColor:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_shelfCollectionViewBackgroundColor != v5)
  {
    objc_storeStrong(&self->_shelfCollectionViewBackgroundColor, a3);
    [(UICollectionView *)self->_shelfCollectionView setBackgroundColor:v5];
  }
}

- (void)setShelfCollectionViewDataSource:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIShelfPageSectionConfiguration *)v5 setShelfCollectionViewDataSource:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_shelfCollectionViewDataSource != v4)
  {
    self->_shelfCollectionViewDataSource = v4;
    [(UICollectionView *)self->_shelfCollectionView setDataSource:v4];
  }
}

- (void)setShelfCollectionViewDelegate:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIShelfPageSectionConfiguration *)v5 setShelfCollectionViewDelegate:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_shelfCollectionViewDelegate != v4)
  {
    self->_shelfCollectionViewDelegate = v4;
    [(UICollectionView *)self->_shelfCollectionView setDelegate:v4];
  }
}

- (void)setShelfViewElementStyle:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        [(SKUIShelfPageSectionConfiguration *)v6 setShelfViewElementStyle:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_shelfViewElementStyle != v5)
  {
    objc_storeStrong(&self->_shelfViewElementStyle, a3);
    v14 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-zooming-layout-peeking-item-width"];
    [v14 floatValue];
    v16 = v15;

    v17 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-zooming-layout-inter-item-spacing"];
    [v17 floatValue];
    self->_zoomingShelfLayoutInterItemSpacing = v18;

    v19 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-zooming-layout-item-width"];
    [v19 floatValue];
    self->_zoomingShelfLayoutItemWidth = v20;

    v21 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-zooming-layout-zoomed-item-width"];
    [v21 floatValue];
    self->_zoomingShelfLayoutScaledItemWidth = v22;

    self->_zoomingShelfLayoutFocusedItemHorizontalCenterOffset = self->_zoomingShelfLayoutInterItemSpacing + v16 + self->_zoomingShelfLayoutScaledItemWidth * 0.5;
    v23 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-layout"];
    self->_wantsZoomingShelfLayout = [v23 isEqualToString:@"zooming"];

    [(SKUIShelfPageSectionConfiguration *)self _updateShelfLayoutDataContentInset];
    shelfCollectionView = self->_shelfCollectionView;
    if (shelfCollectionView)
    {
      v25 = [(UICollectionView *)shelfCollectionView collectionViewLayout];
      v26 = [(SKUIShelfPageSectionConfiguration *)self _styledShelfCollectionViewLayoutForExistingLayout:v25];
      if (v25 != v26)
      {
        [(UICollectionView *)self->_shelfCollectionView setCollectionViewLayout:v26];
        v27 = self->_shelfCollectionView;
        [objc_opt_class() snapToBoundariesDecelerationRate];
        [(UICollectionView *)v27 setDecelerationRate:?];
        -[UICollectionView setClipsToBounds:](self->_shelfCollectionView, "setClipsToBounds:", [objc_opt_class() collectionViewCanClipToBounds]);
      }
    }
  }
}

- (id)actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:(id)a3 numberOfShelfItems:(unint64_t)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIShelfPageSectionConfiguration *)v7 actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:v8 numberOfShelfItems:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  if ([(SKUIShelfPageSectionConfiguration *)self numberOfIterations]== 1)
  {
    v15 = v6;
  }

  else
  {
    v16 = [v6 item];
    v17 = [(SKUIShelfPageSectionConfiguration *)self shelfCollectionView];
    [v17 indexPathsForVisibleItems];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = v38 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
LABEL_9:
      v22 = 0;
      while (1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * v22);
        if ([v23 item] % a4 == v16)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v20)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      v15 = v23;

      if (v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_15:
    }

    if ([v18 count])
    {
      v24 = [v18 sortedArrayUsingComparator:&__block_literal_global_65];

      v25 = [v24 firstObject];
      v26 = [v24 lastObject];
      v27 = v25;
      if (v25 != v26)
      {
        v28 = [v25 item] % a4;
        v29 = [v26 item] % a4;
        v30 = v28 - v16;
        if ((v28 - v16) < 0)
        {
          v30 = v16 - v28;
        }

        v31 = v29 - v16;
        if (v31 < 0)
        {
          v31 = -v31;
        }

        if (v30 >= v31)
        {
          v27 = v26;
        }

        else
        {
          v27 = v25;
        }
      }

      v32 = v27;
      v33 = [v32 item];
      v15 = [MEMORY[0x277CCAA70] indexPathForItem:v16 + v33 / a4 * a4 inSection:{objc_msgSend(v6, "section")}];

      v18 = v24;
    }

    else
    {
      v15 = v6;
    }

LABEL_28:
  }

  return v15;
}

uint64_t __127__SKUIShelfPageSectionConfiguration_actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath_numberOfShelfItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 item];
  v6 = [v4 item];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (id)backgroundColorForShelfViewElement:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        [(SKUIShelfPageSectionConfiguration *)v4 backgroundColorForShelfViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = [v3 style];
  v13 = [v12 ikBackgroundColor];
  v14 = [v13 color];

  return v14;
}

- (id)cellForShelfViewElement:(id)a3 indexPath:(id)a4
{
  v5 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIShelfPageSectionConfiguration *)v6 cellForShelfViewElement:v7 indexPath:v8, v9, v10, v11, v12, v13];
      }
    }
  }

  v14 = [(SKUIStorePageSectionContext *)self->_pageSectionContext collectionView];
  v15 = [v14 dequeueReusableCellWithReuseIdentifier:0x28280D808 forIndexPath:v5];

  v16 = [(SKUIShelfPageSectionConfiguration *)self shelfCollectionView];
  [v15 setCollectionView:v16];
  if (self->_needsShelfCollectionViewReload)
  {
    [v16 reloadData];
    self->_needsShelfCollectionViewReload = 0;
  }

  if (self->_rendersWithPerspective)
  {
    [(SKUIShelfLayoutData *)self->_shelfLayoutData totalContentSize];
    [(SKUIShelfPageSectionConfiguration *)self _perspectiveHeightForContentSize:v17];
    [v15 setContentInset:?];
    [v15 setRendersWithPerspective:1];
  }

  else
  {
    [v15 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v15 setRendersWithPerspective:0];
    [v15 setRendersWithParallax:0];
  }

  return v15;
}

- (CGSize)cellSizeForShelfViewElement:(id)a3 indexPath:(id)a4 numberOfShelfItems:(int64_t)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIShelfPageSectionConfiguration *)v7 cellSizeForShelfViewElement:v8 indexPath:v9 numberOfShelfItems:v10, v11, v12, v13, v14];
      }
    }
  }

  [(SKUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
  v16 = v15;
  if (self->_needsShelfCollectionViewLayout)
  {
    v17 = [(SKUIShelfPageSectionConfiguration *)self _reloadShelfLayoutDataWithNumberOfShelfItems:a5];
    self->_needsShelfCollectionViewLayout = 0;
  }

  [(SKUIShelfLayoutData *)self->_shelfLayoutData totalContentSize];
  v19 = v18;
  if (self->_rendersWithPerspective)
  {
    [(SKUIShelfPageSectionConfiguration *)self _perspectiveHeightForContentSize:v18];
    v19 = v19 + v20;
  }

  if (self->_wantsZoomingShelfLayout)
  {
    v19 = v19 + self->_zoomingShelfLayoutScaledItemWidth - self->_zoomingShelfLayoutItemWidth;
  }

  v21 = v16;
  v22 = v19;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)cellForShelfItemViewElement:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIShelfPageSectionConfiguration *)v8 cellForShelfItemViewElement:v9 indexPath:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [(SKUIShelfPageSectionConfiguration *)self shelfCollectionView];
  v17 = [(SKUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:v6];
  v18 = [v17 elementType];
  v19 = 0;
  if (v18 <= 48)
  {
    if (v18 == 14)
    {
      if ([v6 cardType] != 3)
      {
        v19 = [v16 dequeueReusableCellWithReuseIdentifier:0x2828091E8 forIndexPath:v7];
        [v19 setArtworkBoundingSize:0];
        goto LABEL_18;
      }

      v20 = 0x28280C5E8;
    }

    else
    {
      if (v18 != 28)
      {
        goto LABEL_18;
      }

      v20 = 0x2828133E8;
    }

    v19 = [v16 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:v7];
    goto LABEL_18;
  }

  if (v18 == 49)
  {
LABEL_9:
    v19 = [v16 dequeueReusableCellWithReuseIdentifier:0x2827FFFC8 forIndexPath:v7];
    [v19 setShowsReflectionImage:0];
    goto LABEL_18;
  }

  if (v18 != 66)
  {
    if (v18 != 152)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v21 = [(SKUIShelfPageSectionConfiguration *)self shelfCollectionView];
  v19 = [(SKUIShelfPageSectionConfiguration *)self _dequeueCellForLockup:v17 collectionView:v21 indexPath:v7];

LABEL_18:
  -[SKUIShelfLayoutData sizeForItemAtIndex:](self->_shelfLayoutData, "sizeForItemAtIndex:", [v7 item]);
  v23 = v22;
  v24 = [v17 style];
  v25 = [v24 visibility];
  v26 = [v25 isEqualToString:@"hidden"];

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v17;
  }

  [v19 reloadWithViewElement:v27 width:self->_cellLayoutContext context:v23];
  if (self->_rendersWithPerspective && [v19 conformsToProtocol:&unk_282916328])
  {
    pageSectionContext = self->_pageSectionContext;
    v29 = v19;
    v30 = [(SKUIStorePageSectionContext *)pageSectionContext parentViewController];
    v31 = [v30 view];

    [v29 setPerspectiveTargetView:v31];
    [v31 bounds];
    [v29 setVanishingPoint:{CGRectGetMidX(v34), -800.0}];
  }

  return v19;
}

- (id)effectiveViewElementForShelfItemViewElement:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        [(SKUIShelfPageSectionConfiguration *)v4 effectiveViewElementForShelfItemViewElement:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  return v3;
}

- (int64_t)lockupTypeForLockup:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIShelfPageSectionConfiguration *)v5 lockupTypeForLockup:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  lockupType = self->_lockupType;
  if (lockupType == -1)
  {
    lockupType = [v4 lockupViewType];
  }

  return lockupType;
}

- (id)normalizedShelfItemIndexPathFromActualIndexPath:(id)a3 numberOfShelfItems:(unint64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIShelfPageSectionConfiguration *)v7 normalizedShelfItemIndexPathFromActualIndexPath:v8 numberOfShelfItems:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  if ([(SKUIShelfPageSectionConfiguration *)self numberOfIterations]== 1)
  {
    v15 = v6;
  }

  else
  {
    v15 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v6 inSection:{"item") % a4, objc_msgSend(v6, "section")}];
  }

  v16 = v15;

  return v16;
}

- (unint64_t)numberOfCellsForNumberOfShelfItems:(unint64_t)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShelfPageSectionConfiguration *)v5 numberOfCellsForNumberOfShelfItems:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  return [(SKUIShelfPageSectionConfiguration *)self numberOfIterations]* a3;
}

- (int64_t)numberOfSectionCells
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIShelfPageSectionConfiguration *)v2 numberOfSectionCells:v3];
      }
    }
  }

  return 1;
}

- (BOOL)prefetchResourcesForShelfItemViewElement:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIShelfPageSectionConfiguration *)v7 prefetchResourcesForShelfItemViewElement:v8 reason:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [(SKUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:v6];
  v16 = [(objc_class *)[(SKUIShelfPageSectionConfiguration *)self _cellClassForEffectiveShelfItemViewElement:v15] prefetchResourcesForViewElement:v15 reason:a4 context:self->_cellLayoutContext];

  return v16;
}

- (void)registerReusableClassesForCollectionView:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v4)
      {
        [(SKUIShelfPageSectionConfiguration *)v4 registerReusableClassesForCollectionView:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280D808];
}

- (void)reloadLockupTypeForShelfViewElement:(id)a3
{
  v4 = [a3 style];
  v7 = [v4 lockupType];

  v5 = v7;
  if (v7)
  {
    v6 = SKUILockupViewTypeForString(v7);
    v5 = v7;
  }

  else
  {
    v6 = -1;
  }

  self->_lockupType = v6;

  MEMORY[0x2821F96F8](v6, v5);
}

- (void)reloadShelfLayoutDataForShelfViewElement:(id)a3 withShelfItemViewElements:(id)a4 requestCellLayouts:(BOOL)a5 numberOfShelfItems:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        [(SKUIShelfPageSectionConfiguration *)v12 reloadShelfLayoutDataForShelfViewElement:v13 withShelfItemViewElements:v14 requestCellLayouts:v15 numberOfShelfItems:v16, v17, v18, v19];
      }
    }
  }

  v20 = [SKUIShelfLayoutData alloc];
  v21 = [v11 numberOfRows];

  [(SKUIShelfPageSectionConfiguration *)self _columnSpacingForShelfItemViewElements:v10];
  v23 = v22;

  v24 = [(SKUIShelfLayoutData *)v20 initWithNumberOfRows:v21 columnSpacing:v23];
  shelfLayoutData = self->_shelfLayoutData;
  self->_shelfLayoutData = v24;

  [(SKUIShelfPageSectionConfiguration *)self _updateShelfLayoutDataContentInset];
  v26 = [(SKUIShelfPageSectionConfiguration *)self _reloadShelfLayoutDataWithNumberOfShelfItems:a6];
  if (v7)
  {
    v27 = [(SKUIShelfPageSectionConfiguration *)self numberOfIterations];
    v28 = [(SKUIShelfLayoutData *)self->_shelfLayoutData numberOfRows];
    v29 = self->_shelfLayoutData;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __142__SKUIShelfPageSectionConfiguration_reloadShelfLayoutDataForShelfViewElement_withShelfItemViewElements_requestCellLayouts_numberOfShelfItems___block_invoke;
    v31[3] = &unk_278200E90;
    v34 = v28;
    v35 = a6;
    v36 = v27;
    v32 = v26;
    v33 = self;
    [(SKUIShelfLayoutData *)v29 enumerateColumnsUsingBlock:v31];
  }

  v30 = [(UICollectionView *)self->_shelfCollectionView collectionViewLayout];
  [v30 setLayoutData:self->_shelfLayoutData];
}

void __142__SKUIShelfPageSectionConfiguration_reloadShelfLayoutDataForShelfViewElement_withShelfItemViewElements_requestCellLayouts_numberOfShelfItems___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v15 = *(a1 + 48);
  if (v15 >= 1)
  {
    v29 = v14;
    v30 = v13;
    v31 = v10;
    v32 = v9;
    v33 = v8;
    v34 = v7;
    v35 = v6;
    v36 = v5;
    v37 = v4;
    v38 = v3;
    v39 = v11;
    v40 = v12;
    v18 = 0;
    v19 = v15 * a2;
    do
    {
      v20 = v19 + v18;
      v21 = *(a1 + 56);
      if (v19 + v18 >= (*(a1 + 64) * v21))
      {
        break;
      }

      v22 = v20 % v21;
      v23 = *(a1 + 32);
      if (v23)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:v20 % v21];
        v25 = [v23 objectForKey:v24];

        if (!v25)
        {
          continue;
        }
      }

      v26 = [*(a1 + 40) _shelfItemViewElementAtIndex:{v22, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40}];
      [*(a1 + 40) requestCellLayoutForViewElement:v26 withColumnWidth:a3];
      v27 = *(a1 + 32);
      if (v27)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
        [v27 removeObjectForKey:v28];
      }

      ++v18;
    }

    while (v18 < *(a1 + 48));
  }
}

- (void)requestCellLayoutForViewElement:(id)a3 withColumnWidth:(double)a4
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIShelfPageSectionConfiguration *)v7 requestCellLayoutForViewElement:v8 withColumnWidth:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [(SKUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:v6];
  [(objc_class *)[(SKUIShelfPageSectionConfiguration *)self _cellClassForEffectiveShelfItemViewElement:v15] requestLayoutForViewElement:v15 width:self->_cellLayoutContext context:a4];
}

- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)a3 forShelfViewElement:(id)a4 withSectionIndex:(int64_t)a5
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v10 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        [(SKUIShelfPageSectionConfiguration *)v11 sectionContentInsetAdjustedFromValue:v12 forShelfViewElement:v13 withSectionIndex:v14, v15, v16, v17, v18];
      }
    }
  }

  v29 = 0;
  v19 = [v10 style];
  v20 = SKUIViewElementPaddingForStyle(v19, &v29);
  v22 = v21;

  if (a5)
  {
    v23 = top;
  }

  else
  {
    v23 = bottom;
  }

  if (v29)
  {
    bottom = v22;
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  v25 = v24;
  v26 = left;
  v27 = bottom;
  v28 = right;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (void)shelfItemsCollectionView:(id)a3 willApplyLayoutAttributes:(id)a4 forViewElement:(id)a5 withItemIndex:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v13)
      {
        [(SKUIShelfPageSectionConfiguration *)v13 shelfItemsCollectionView:v14 willApplyLayoutAttributes:v15 forViewElement:v16 withItemIndex:v17, v18, v19, v20];
      }
    }
  }

  v21 = [(SKUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:v12];
  v22 = [v21 style];
  v23 = [v22 ikBackgroundColor];
  v24 = [v23 color];

  if (v24)
  {
    [v11 setBackgroundColor:v24];
  }

  else
  {
    v25 = [v10 backgroundColor];
    [v11 setBackgroundColor:v25];
  }

  v26 = [(SKUIShelfLayoutData *)self->_shelfLayoutData numberOfRows];
  if (v26 == 1)
  {
    v27 = 40;
  }

  else if (a6 % v26)
  {
    if (a6 % v26 == v26 - 1)
    {
      v27 = 32;
    }

    else
    {
      v27 = 16;
    }
  }

  else
  {
    v27 = 8;
  }

  [v11 setPosition:v27];
}

- (BOOL)supportsDuplicateShelfItems
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIShelfPageSectionConfiguration *)v3 supportsDuplicateShelfItems:v4];
      }
    }
  }

  return [(SKUIShelfPageSectionConfiguration *)self numberOfIterations]> 1;
}

- (Class)_cellClassForEffectiveShelfItemViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  v6 = 0;
  if (v5 <= 48)
  {
    if (v5 == 14)
    {
      [v4 cardType];
      goto LABEL_11;
    }

    if (v5 == 28)
    {
      goto LABEL_11;
    }
  }

  else
  {
    switch(v5)
    {
      case 49:
        goto LABEL_11;
      case 66:
        v7 = [(SKUIShelfPageSectionConfiguration *)self _lockupCellClassWithLockup:v4];
LABEL_12:
        v6 = v7;
        break;
      case 152:
LABEL_11:
        v7 = objc_opt_class();
        goto LABEL_12;
    }
  }

  v8 = v6;

  return v6;
}

- (double)_columnSpacingForShelfItemViewElements:(id)a3
{
  v4 = [(SKUIStorePageSectionContext *)self->_pageSectionContext clientContext];
  v5 = SKUIUserInterfaceIdiom(v4);

  result = 15.0;
  if (v5 == 1)
  {
    [(SKUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
    v8 = v7 < 768.0;
    result = 30.0;
    if (v8)
    {
      return 20.0;
    }
  }

  return result;
}

- (id)_dequeueCellForLockup:(id)a3 collectionView:(id)a4 indexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SKUIShelfPageSectionConfiguration *)self lockupTypeForLockup:a3];
  if (v10 > 8)
  {
    v11 = 0;
  }

  else if (((1 << v10) & 0x1E6) != 0)
  {
    v11 = [v8 dequeueReusableCellWithReuseIdentifier:0x28280D588 forIndexPath:v9];
    [v11 setSeparatorStyle:5];
  }

  else
  {
    if (((1 << v10) & 0x11) != 0)
    {
      v12 = 0x2828040A8;
    }

    else
    {
      v12 = 0x282808388;
    }

    v11 = [v8 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v9];
  }

  return v11;
}

- (Class)_lockupCellClassWithLockup:(id)a3
{
  if ([(SKUIShelfPageSectionConfiguration *)self lockupTypeForLockup:a3]<= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (double)_perspectiveHeightForContentSize:(double)a3
{
  [SKUIStackedImageView maximumPerspectiveHeightForSize:a3, a3];
  v5 = v4;
  v6 = [(SKUIShelfPageSectionConfiguration *)self isTopSection];
  result = v5 + -15.0;
  if (v6)
  {
    return v5;
  }

  return result;
}

- (id)_reloadShelfLayoutDataWithNumberOfShelfItems:(int64_t)a3
{
  v5 = [(SKUIShelfPageSectionConfiguration *)self numberOfIterations];
  if (v5 < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  shelfLayoutData = self->_shelfLayoutData;
  v8 = v5 * a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__SKUIShelfPageSectionConfiguration__reloadShelfLayoutDataWithNumberOfShelfItems___block_invoke;
  v12[3] = &unk_278200EB8;
  v15 = a3;
  v9 = v6;
  v13 = v9;
  v14 = self;
  [(SKUIShelfLayoutData *)shelfLayoutData reloadWithItemCount:v8 sizeBlock:v12];
  v10 = v9;

  return v9;
}

double __82__SKUIShelfPageSectionConfiguration__reloadShelfLayoutDataWithNumberOfShelfItems___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = a2 % v3;
  v5 = *(a1 + 32);
  if (v5 && ([MEMORY[0x277CCABB0] numberWithInteger:a2 % v3], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    [v7 CGSizeValue];
    v9 = v8;
  }

  else
  {
    v7 = [*(a1 + 40) _shelfItemViewElementAtIndex:v4];
    v10 = [*(a1 + 40) effectiveViewElementForShelfItemViewElement:v7];
    [objc_msgSend(*(a1 + 40) _cellClassForEffectiveShelfItemViewElement:{v10), "preferredSizeForViewElement:context:", v10, *(*(a1 + 40) + 32)}];
    v9 = v11;
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = [MEMORY[0x277CCAE60] valueWithCGSize:{v11, v12}];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      [v13 setObject:v14 forKey:v15];
    }
  }

  return v9;
}

- (id)_shelfItemViewElementAtIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained shelfPageSectionConfiguration:self viewElementAtIndex:a3];

  return v6;
}

- (id)_styledShelfCollectionViewLayoutForExistingLayout:(id)a3
{
  v4 = a3;
  if (self->_wantsZoomingShelfLayout)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = objc_alloc_init(SKUIZoomingShelfCollectionViewLayout);
      [(SKUIZoomingShelfCollectionViewLayout *)v5 setLayoutData:self->_shelfLayoutData];
    }

    [(SKUIZoomingShelfCollectionViewLayout *)v5 setFocusedItemHorizontalCenterOffset:self->_zoomingShelfLayoutFocusedItemHorizontalCenterOffset];
    [(SKUIZoomingShelfCollectionViewLayout *)v5 setInterItemSpacing:self->_zoomingShelfLayoutInterItemSpacing];
    [(SKUIZoomingShelfCollectionViewLayout *)v5 setItemWidth:self->_zoomingShelfLayoutItemWidth];
    [(SKUIZoomingShelfCollectionViewLayout *)v5 setScaledItemWidth:self->_zoomingShelfLayoutScaledItemWidth];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = objc_alloc_init(SKUIShelfCollectionViewLayout);
      [(SKUIZoomingShelfCollectionViewLayout *)v5 setLayoutData:self->_shelfLayoutData];
    }
  }

  return v5;
}

- (void)_updateShelfLayoutDataContentInset
{
  if (self->_wantsZoomingShelfLayout)
  {
    shelfLayoutData = self->_shelfLayoutData;
    v4 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v8 = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
    [v8 horizontalPadding];
    v10 = v9;
    v11 = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
    [v11 horizontalPadding];
    v13 = v12;

    v5 = v10 + 100.0;
    if (self->_rendersWithPerspective)
    {
      v7 = v13 + 100.0;
    }

    else
    {
      v5 = v10;
      v7 = v13;
    }

    shelfLayoutData = self->_shelfLayoutData;
    v4 = 0.0;
    v6 = 0.0;
  }

  [(SKUIShelfLayoutData *)shelfLayoutData setContentInset:v4, v5, v6, v7];
}

- (SKUIShelfPageSectionConfigurationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end