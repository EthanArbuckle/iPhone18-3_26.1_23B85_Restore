@interface SKUIShelfPageSectionConfiguration
- (BOOL)prefetchResourcesForShelfItemViewElement:(id)element reason:(int64_t)reason;
- (BOOL)supportsDuplicateShelfItems;
- (CGSize)cellSizeForShelfViewElement:(id)element indexPath:(id)path numberOfShelfItems:(int64_t)items;
- (Class)_cellClassForEffectiveShelfItemViewElement:(id)element;
- (Class)_lockupCellClassWithLockup:(id)lockup;
- (SKUIShelfPageSectionConfigurationDataSource)dataSource;
- (UICollectionView)existingShelfCollectionView;
- (UICollectionView)shelfCollectionView;
- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)value forShelfViewElement:(id)element withSectionIndex:(int64_t)index;
- (double)_columnSpacingForShelfItemViewElements:(id)elements;
- (double)_perspectiveHeightForContentSize:(double)size;
- (id)_dequeueCellForLockup:(id)lockup collectionView:(id)view indexPath:(id)path;
- (id)_reloadShelfLayoutDataWithNumberOfShelfItems:(int64_t)items;
- (id)_shelfItemViewElementAtIndex:(int64_t)index;
- (id)_styledShelfCollectionViewLayoutForExistingLayout:(id)layout;
- (id)actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:(id)path numberOfShelfItems:(unint64_t)items;
- (id)backgroundColorForShelfViewElement:(id)element;
- (id)cellForShelfItemViewElement:(id)element indexPath:(id)path;
- (id)cellForShelfViewElement:(id)element indexPath:(id)path;
- (id)effectiveViewElementForShelfItemViewElement:(id)element;
- (id)normalizedShelfItemIndexPathFromActualIndexPath:(id)path numberOfShelfItems:(unint64_t)items;
- (int64_t)lockupTypeForLockup:(id)lockup;
- (int64_t)numberOfSectionCells;
- (unint64_t)numberOfCellsForNumberOfShelfItems:(unint64_t)items;
- (unint64_t)numberOfIterations;
- (void)_updateShelfLayoutDataContentInset;
- (void)registerReusableClassesForCollectionView:(id)view;
- (void)reloadLockupTypeForShelfViewElement:(id)element;
- (void)reloadShelfLayoutDataForShelfViewElement:(id)element withShelfItemViewElements:(id)elements requestCellLayouts:(BOOL)layouts numberOfShelfItems:(int64_t)items;
- (void)requestCellLayoutForViewElement:(id)element withColumnWidth:(double)width;
- (void)setShelfCollectionViewBackgroundColor:(id)color;
- (void)setShelfCollectionViewDataSource:(id)source;
- (void)setShelfCollectionViewDelegate:(id)delegate;
- (void)setShelfViewElementStyle:(id)style;
- (void)shelfItemsCollectionView:(id)view willApplyLayoutAttributes:(id)attributes forViewElement:(id)element withItemIndex:(int64_t)index;
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

- (void)setShelfCollectionViewBackgroundColor:(id)color
{
  colorCopy = color;
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

  if (self->_shelfCollectionViewBackgroundColor != colorCopy)
  {
    objc_storeStrong(&self->_shelfCollectionViewBackgroundColor, color);
    [(UICollectionView *)self->_shelfCollectionView setBackgroundColor:colorCopy];
  }
}

- (void)setShelfCollectionViewDataSource:(id)source
{
  sourceCopy = source;
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

  if (self->_shelfCollectionViewDataSource != sourceCopy)
  {
    self->_shelfCollectionViewDataSource = sourceCopy;
    [(UICollectionView *)self->_shelfCollectionView setDataSource:sourceCopy];
  }
}

- (void)setShelfCollectionViewDelegate:(id)delegate
{
  delegateCopy = delegate;
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

  if (self->_shelfCollectionViewDelegate != delegateCopy)
  {
    self->_shelfCollectionViewDelegate = delegateCopy;
    [(UICollectionView *)self->_shelfCollectionView setDelegate:delegateCopy];
  }
}

- (void)setShelfViewElementStyle:(id)style
{
  styleCopy = style;
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

  if (self->_shelfViewElementStyle != styleCopy)
  {
    objc_storeStrong(&self->_shelfViewElementStyle, style);
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
      collectionViewLayout = [(UICollectionView *)shelfCollectionView collectionViewLayout];
      v26 = [(SKUIShelfPageSectionConfiguration *)self _styledShelfCollectionViewLayoutForExistingLayout:collectionViewLayout];
      if (collectionViewLayout != v26)
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

- (id)actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:(id)path numberOfShelfItems:(unint64_t)items
{
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
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
    v15 = pathCopy;
  }

  else
  {
    item = [pathCopy item];
    shelfCollectionView = [(SKUIShelfPageSectionConfiguration *)self shelfCollectionView];
    [shelfCollectionView indexPathsForVisibleItems];
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
        if ([v23 item] % items == item)
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

      firstObject = [v24 firstObject];
      lastObject = [v24 lastObject];
      v27 = firstObject;
      if (firstObject != lastObject)
      {
        v28 = [firstObject item] % items;
        v29 = [lastObject item] % items;
        v30 = v28 - item;
        if ((v28 - item) < 0)
        {
          v30 = item - v28;
        }

        v31 = v29 - item;
        if (v31 < 0)
        {
          v31 = -v31;
        }

        if (v30 >= v31)
        {
          v27 = lastObject;
        }

        else
        {
          v27 = firstObject;
        }
      }

      v32 = v27;
      item2 = [v32 item];
      v15 = [MEMORY[0x277CCAA70] indexPathForItem:item + item2 / items * items inSection:{objc_msgSend(pathCopy, "section")}];

      v18 = v24;
    }

    else
    {
      v15 = pathCopy;
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

- (id)backgroundColorForShelfViewElement:(id)element
{
  elementCopy = element;
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

  style = [elementCopy style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  return color;
}

- (id)cellForShelfViewElement:(id)element indexPath:(id)path
{
  pathCopy = path;
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

  collectionView = [(SKUIStorePageSectionContext *)self->_pageSectionContext collectionView];
  v15 = [collectionView dequeueReusableCellWithReuseIdentifier:0x28280D808 forIndexPath:pathCopy];

  shelfCollectionView = [(SKUIShelfPageSectionConfiguration *)self shelfCollectionView];
  [v15 setCollectionView:shelfCollectionView];
  if (self->_needsShelfCollectionViewReload)
  {
    [shelfCollectionView reloadData];
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

- (CGSize)cellSizeForShelfViewElement:(id)element indexPath:(id)path numberOfShelfItems:(int64_t)items
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
    v17 = [(SKUIShelfPageSectionConfiguration *)self _reloadShelfLayoutDataWithNumberOfShelfItems:items];
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

- (id)cellForShelfItemViewElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
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

  shelfCollectionView = [(SKUIShelfPageSectionConfiguration *)self shelfCollectionView];
  v17 = [(SKUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:elementCopy];
  elementType = [v17 elementType];
  v19 = 0;
  if (elementType <= 48)
  {
    if (elementType == 14)
    {
      if ([elementCopy cardType] != 3)
      {
        v19 = [shelfCollectionView dequeueReusableCellWithReuseIdentifier:0x2828091E8 forIndexPath:pathCopy];
        [v19 setArtworkBoundingSize:0];
        goto LABEL_18;
      }

      v20 = 0x28280C5E8;
    }

    else
    {
      if (elementType != 28)
      {
        goto LABEL_18;
      }

      v20 = 0x2828133E8;
    }

    v19 = [shelfCollectionView dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:pathCopy];
    goto LABEL_18;
  }

  if (elementType == 49)
  {
LABEL_9:
    v19 = [shelfCollectionView dequeueReusableCellWithReuseIdentifier:0x2827FFFC8 forIndexPath:pathCopy];
    [v19 setShowsReflectionImage:0];
    goto LABEL_18;
  }

  if (elementType != 66)
  {
    if (elementType != 152)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  shelfCollectionView2 = [(SKUIShelfPageSectionConfiguration *)self shelfCollectionView];
  v19 = [(SKUIShelfPageSectionConfiguration *)self _dequeueCellForLockup:v17 collectionView:shelfCollectionView2 indexPath:pathCopy];

LABEL_18:
  -[SKUIShelfLayoutData sizeForItemAtIndex:](self->_shelfLayoutData, "sizeForItemAtIndex:", [pathCopy item]);
  v23 = v22;
  style = [v17 style];
  visibility = [style visibility];
  v26 = [visibility isEqualToString:@"hidden"];

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
    parentViewController = [(SKUIStorePageSectionContext *)pageSectionContext parentViewController];
    view = [parentViewController view];

    [v29 setPerspectiveTargetView:view];
    [view bounds];
    [v29 setVanishingPoint:{CGRectGetMidX(v34), -800.0}];
  }

  return v19;
}

- (id)effectiveViewElementForShelfItemViewElement:(id)element
{
  elementCopy = element;
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

  return elementCopy;
}

- (int64_t)lockupTypeForLockup:(id)lockup
{
  lockupCopy = lockup;
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
    lockupType = [lockupCopy lockupViewType];
  }

  return lockupType;
}

- (id)normalizedShelfItemIndexPathFromActualIndexPath:(id)path numberOfShelfItems:(unint64_t)items
{
  pathCopy = path;
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
    v15 = pathCopy;
  }

  else
  {
    v15 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") % items, objc_msgSend(pathCopy, "section")}];
  }

  v16 = v15;

  return v16;
}

- (unint64_t)numberOfCellsForNumberOfShelfItems:(unint64_t)items
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

  return [(SKUIShelfPageSectionConfiguration *)self numberOfIterations]* items;
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

- (BOOL)prefetchResourcesForShelfItemViewElement:(id)element reason:(int64_t)reason
{
  elementCopy = element;
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

  v15 = [(SKUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:elementCopy];
  v16 = [(objc_class *)[(SKUIShelfPageSectionConfiguration *)self _cellClassForEffectiveShelfItemViewElement:v15] prefetchResourcesForViewElement:v15 reason:reason context:self->_cellLayoutContext];

  return v16;
}

- (void)registerReusableClassesForCollectionView:(id)view
{
  viewCopy = view;
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

  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280D808];
}

- (void)reloadLockupTypeForShelfViewElement:(id)element
{
  style = [element style];
  lockupType = [style lockupType];

  v5 = lockupType;
  if (lockupType)
  {
    v6 = SKUILockupViewTypeForString(lockupType);
    v5 = lockupType;
  }

  else
  {
    v6 = -1;
  }

  self->_lockupType = v6;

  MEMORY[0x2821F96F8](v6, v5);
}

- (void)reloadShelfLayoutDataForShelfViewElement:(id)element withShelfItemViewElements:(id)elements requestCellLayouts:(BOOL)layouts numberOfShelfItems:(int64_t)items
{
  layoutsCopy = layouts;
  elementsCopy = elements;
  elementCopy = element;
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
  numberOfRows = [elementCopy numberOfRows];

  [(SKUIShelfPageSectionConfiguration *)self _columnSpacingForShelfItemViewElements:elementsCopy];
  v23 = v22;

  v24 = [(SKUIShelfLayoutData *)v20 initWithNumberOfRows:numberOfRows columnSpacing:v23];
  shelfLayoutData = self->_shelfLayoutData;
  self->_shelfLayoutData = v24;

  [(SKUIShelfPageSectionConfiguration *)self _updateShelfLayoutDataContentInset];
  v26 = [(SKUIShelfPageSectionConfiguration *)self _reloadShelfLayoutDataWithNumberOfShelfItems:items];
  if (layoutsCopy)
  {
    numberOfIterations = [(SKUIShelfPageSectionConfiguration *)self numberOfIterations];
    numberOfRows2 = [(SKUIShelfLayoutData *)self->_shelfLayoutData numberOfRows];
    v29 = self->_shelfLayoutData;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __142__SKUIShelfPageSectionConfiguration_reloadShelfLayoutDataForShelfViewElement_withShelfItemViewElements_requestCellLayouts_numberOfShelfItems___block_invoke;
    v31[3] = &unk_278200E90;
    v34 = numberOfRows2;
    itemsCopy = items;
    v36 = numberOfIterations;
    v32 = v26;
    selfCopy = self;
    [(SKUIShelfLayoutData *)v29 enumerateColumnsUsingBlock:v31];
  }

  collectionViewLayout = [(UICollectionView *)self->_shelfCollectionView collectionViewLayout];
  [collectionViewLayout setLayoutData:self->_shelfLayoutData];
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

- (void)requestCellLayoutForViewElement:(id)element withColumnWidth:(double)width
{
  elementCopy = element;
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

  v15 = [(SKUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:elementCopy];
  [(objc_class *)[(SKUIShelfPageSectionConfiguration *)self _cellClassForEffectiveShelfItemViewElement:v15] requestLayoutForViewElement:v15 width:self->_cellLayoutContext context:width];
}

- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)value forShelfViewElement:(id)element withSectionIndex:(int64_t)index
{
  right = value.right;
  bottom = value.bottom;
  left = value.left;
  top = value.top;
  elementCopy = element;
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
  style = [elementCopy style];
  v20 = SKUIViewElementPaddingForStyle(style, &v29);
  v22 = v21;

  if (index)
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

- (void)shelfItemsCollectionView:(id)view willApplyLayoutAttributes:(id)attributes forViewElement:(id)element withItemIndex:(int64_t)index
{
  viewCopy = view;
  attributesCopy = attributes;
  elementCopy = element;
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

  v21 = [(SKUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:elementCopy];
  style = [v21 style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    [attributesCopy setBackgroundColor:color];
  }

  else
  {
    backgroundColor = [viewCopy backgroundColor];
    [attributesCopy setBackgroundColor:backgroundColor];
  }

  numberOfRows = [(SKUIShelfLayoutData *)self->_shelfLayoutData numberOfRows];
  if (numberOfRows == 1)
  {
    v27 = 40;
  }

  else if (index % numberOfRows)
  {
    if (index % numberOfRows == numberOfRows - 1)
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

  [attributesCopy setPosition:v27];
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

- (Class)_cellClassForEffectiveShelfItemViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  v6 = 0;
  if (elementType <= 48)
  {
    if (elementType == 14)
    {
      [elementCopy cardType];
      goto LABEL_11;
    }

    if (elementType == 28)
    {
      goto LABEL_11;
    }
  }

  else
  {
    switch(elementType)
    {
      case 49:
        goto LABEL_11;
      case 66:
        v7 = [(SKUIShelfPageSectionConfiguration *)self _lockupCellClassWithLockup:elementCopy];
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

- (double)_columnSpacingForShelfItemViewElements:(id)elements
{
  clientContext = [(SKUIStorePageSectionContext *)self->_pageSectionContext clientContext];
  v5 = SKUIUserInterfaceIdiom(clientContext);

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

- (id)_dequeueCellForLockup:(id)lockup collectionView:(id)view indexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = [(SKUIShelfPageSectionConfiguration *)self lockupTypeForLockup:lockup];
  if (v10 > 8)
  {
    v11 = 0;
  }

  else if (((1 << v10) & 0x1E6) != 0)
  {
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:0x28280D588 forIndexPath:pathCopy];
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

    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];
  }

  return v11;
}

- (Class)_lockupCellClassWithLockup:(id)lockup
{
  if ([(SKUIShelfPageSectionConfiguration *)self lockupTypeForLockup:lockup]<= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (double)_perspectiveHeightForContentSize:(double)size
{
  [SKUIStackedImageView maximumPerspectiveHeightForSize:size, size];
  v5 = v4;
  isTopSection = [(SKUIShelfPageSectionConfiguration *)self isTopSection];
  result = v5 + -15.0;
  if (isTopSection)
  {
    return v5;
  }

  return result;
}

- (id)_reloadShelfLayoutDataWithNumberOfShelfItems:(int64_t)items
{
  numberOfIterations = [(SKUIShelfPageSectionConfiguration *)self numberOfIterations];
  if (numberOfIterations < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  shelfLayoutData = self->_shelfLayoutData;
  v8 = numberOfIterations * items;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__SKUIShelfPageSectionConfiguration__reloadShelfLayoutDataWithNumberOfShelfItems___block_invoke;
  v12[3] = &unk_278200EB8;
  itemsCopy = items;
  v9 = v6;
  v13 = v9;
  selfCopy = self;
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

- (id)_shelfItemViewElementAtIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained shelfPageSectionConfiguration:self viewElementAtIndex:index];

  return v6;
}

- (id)_styledShelfCollectionViewLayoutForExistingLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_wantsZoomingShelfLayout)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = layoutCopy;
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
      v5 = layoutCopy;
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
    pageSectionContext = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext horizontalPadding];
    v10 = v9;
    pageSectionContext2 = [(SKUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext2 horizontalPadding];
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