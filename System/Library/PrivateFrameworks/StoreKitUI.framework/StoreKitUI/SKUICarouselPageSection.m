@interface SKUICarouselPageSection
- (BOOL)_isItemEnabledAtIndexPath:(id)a3;
- (CGSize)_legacyItemSize;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (Class)_cellClassForLockup:(id)a3;
- (Class)_cellClassForViewElement:(id)a3;
- (SKUICarouselPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (double)_actualContentWidth;
- (double)_legacyItemSpacing;
- (id)_carouselCollectionView;
- (id)_dequeueCellForLockup:(id)a3 collectionView:(id)a4 indexPath:(id)a5;
- (id)_dequeueCellForViewElement:(id)a3 collectionView:(id)a4 indexPath:(id)a5;
- (id)_missingItemLoader;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)_currentPageIndex;
- (int64_t)applyUpdateType:(int64_t)a3;
- (int64_t)defaultItemPinningStyle;
- (int64_t)numberOfCells;
- (void)_addImpressionForIndex:(int64_t)a3 toSession:(id)a4;
- (void)_cancelCycleTimer;
- (void)_fireCycleTimer;
- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4;
- (void)_reloadLegacySizing;
- (void)_reloadViewElementProperties;
- (void)_scrollToItemAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)_startCycleTimerIfNecessary;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionView:(id)a3 carouselLayout:(id)a4 willApplyLayoutAttributes:(id)a5;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)invalidateCachedLayoutInformation;
- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUICarouselPageSection

- (SKUICarouselPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICarouselPageSection initWithPageComponent:];
  }

  v8.receiver = self;
  v8.super_class = SKUICarouselPageSection;
  v5 = [(SKUIStorePageSection *)&v8 initWithPageComponent:v4];
  v6 = v5;
  if (v5)
  {
    [(SKUICarouselPageSection *)v5 _reloadViewElementProperties];
  }

  return v6;
}

- (void)dealloc
{
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    dispatch_source_cancel(cycleTimer);
  }

  [(UICollectionView *)self->_carouselCollectionView setDataSource:0];
  [(UICollectionView *)self->_carouselCollectionView setDelegate:0];
  [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  v4.receiver = self;
  v4.super_class = SKUICarouselPageSection;
  [(SKUIStorePageSection *)&v4 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (![(SKUICarouselPageSection *)self _indexPathIsProgressIndicator:a3])
  {
    v7 = [(SKUIStorePageSection *)self pageComponent];
    v8 = [v7 viewElement];
    [v6 addItemViewElement:v8];

    v9 = [(UICollectionView *)self->_carouselCollectionView indexPathsForVisibleItems];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = -[NSArray objectAtIndex:](self->_modelObjects, "objectAtIndex:", [*(*(&v15 + 1) + 8 * v13) item] % -[NSArray count](self->_modelObjects, "count"));
          [v6 addItemViewElement:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (int64_t)applyUpdateType:(int64_t)a3
{
  [(SKUICarouselPageSection *)self _reloadViewElementProperties];
  v5 = a3 != 2 || self->_needsReload;
  self->_needsReload = v5;
  if (v5)
  {
    v6 = [(SKUIStorePageSection *)self pageComponent];
    v7 = [v6 viewElement];
    v8 = [v7 updateType];

    if ((v8 - 3) < 2)
    {
      v9 = 0;
LABEL_6:
      reloadIndexPath = self->_reloadIndexPath;
      self->_reloadIndexPath = v9;

      goto LABEL_7;
    }

    carouselCollectionView = self->_carouselCollectionView;
    if (carouselCollectionView)
    {
      [(UICollectionView *)carouselCollectionView bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v9 = [(UICollectionView *)self->_carouselCollectionView indexPathForItemAtPoint:MidX, CGRectGetMidY(v20)];
      goto LABEL_6;
    }
  }

LABEL_7:
  v18.receiver = self;
  v18.super_class = SKUICarouselPageSection;
  return [(SKUIStorePageSection *)&v18 applyUpdateType:a3];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 style];

  v8 = [v7 ikBackgroundColor];
  v9 = [v8 color];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUICarouselPageSection;
    v10 = [(SKUIStorePageSection *)&v13 backgroundColorForIndexPath:v4];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [(SKUICarouselPageSection *)self _indexPathIsProgressIndicator:v4];
  v7 = [v5 collectionView];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 dequeueReusableCellWithReuseIdentifier:0x2827FFD08 forIndexPath:v4];

    progressIndicatorElement = self->_progressIndicatorElement;
    [v5 activePageWidth];
    [v9 reloadWithViewElement:progressIndicatorElement width:self->_cellLayoutContext context:?];
    [v9 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v9 setCurrentPage:{-[SKUICarouselPageSection _currentPageIndex](self, "_currentPageIndex")}];
    [v9 setNumberOfPages:{-[NSArray count](self->_modelObjects, "count")}];
  }

  else
  {
    v9 = [v7 dequeueReusableCellWithReuseIdentifier:0x28280D808 forIndexPath:v4];

    v11 = [(SKUICarouselPageSection *)self _carouselCollectionView];
    v12 = v11;
    if (self->_needsReload)
    {
      [v11 reloadData];
      self->_needsReload = 0;
      reloadIndexPath = self->_reloadIndexPath;
      if (reloadIndexPath)
      {
        [(SKUICarouselPageSection *)self _scrollToItemAtIndexPath:reloadIndexPath animated:0];
        v14 = self->_reloadIndexPath;
        self->_reloadIndexPath = 0;
      }
    }

    [v9 setCollectionView:v12];
    [v9 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v9 setRendersWithPerspective:0];
    [v9 setRendersWithParallax:0];
    v15 = [(SKUIStorePageSection *)self context];
    [v15 activePageWidth];
    v17 = v16;

    [(SKUICarouselPageSection *)self _actualContentWidth];
    v19 = v18;
    v20 = [(SKUIStorePageSection *)self context];
    [v20 activePageWidth];
    v22 = v21 + v21;

    if (v19 <= v22)
    {
      [v12 contentInset];
      v24 = v23;
      v26 = v25;
      v27 = [(NSArray *)self->_modelObjects count];
      v28 = (v17 - v19) * 0.5;
      v29 = fmaxf(floorf(v28), 0.0);
      [v12 setAlwaysBounceHorizontal:v27 > 1];
      [v12 setContentInset:{v24, v29, v26, v29}];
    }

    [(SKUICarouselPageSection *)self _startCycleTimerIfNecessary];
  }

  return v9;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  [v5 activePageWidth];
  v7 = v6;

  if ([(SKUICarouselPageSection *)self _indexPathIsProgressIndicator:v4])
  {
    [SKUIPageControlCollectionViewCell sizeThatFitsWidth:self->_progressIndicatorElement viewElement:self->_cellLayoutContext context:v7];
    height = v8;
  }

  else
  {
    if (self->_needsHeightCalculation)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = self->_modelObjects;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        v14 = 0.0;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(objc_class *)[(SKUICarouselPageSection *)self _cellClassForViewElement:*(*(&v21 + 1) + 8 * i) sizeThatFitsWidth:"sizeThatFitsWidth:viewElement:context:" viewElement:*(*(&v21 + 1) + 8 * i) context:self->_cellLayoutContext, self->_itemSize.width];
            if (v14 < v16)
            {
              v14 = v16;
            }
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      else
      {
        v14 = 0.0;
      }

      self->_itemSize.height = v14;
      self->_needsHeightCalculation = 0;
      v17 = [(SKUICarouselPageSection *)self _carouselCollectionView];
      v18 = [v17 collectionViewLayout];

      [v18 setItemSize:{self->_itemSize.width, self->_itemSize.height}];
    }

    height = self->_itemSize.height;
  }

  v19 = v7;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (![(SKUICarouselPageSection *)self _indexPathIsProgressIndicator:v4])
  {
    v5 = [(SKUIStorePageSection *)self pageComponent];
    v6 = [v5 viewElement];

    v7 = [(SKUIStorePageSection *)self context];
    v8 = [v7 activeMetricsImpressionSession];
    [v8 beginActiveImpressionForViewElement:v6];
  }

  v9.receiver = self;
  v9.super_class = SKUICarouselPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (![(SKUICarouselPageSection *)self _indexPathIsProgressIndicator:v4])
  {
    [(SKUICarouselPageSection *)self _cancelCycleTimer];
    v5 = [(SKUIStorePageSection *)self pageComponent];
    v6 = [v5 viewElement];

    v7 = [(SKUIStorePageSection *)self context];
    v8 = [v7 activeMetricsImpressionSession];
    [v8 endActiveImpressionForViewElement:v6];
  }

  v9.receiver = self;
  v9.super_class = SKUICarouselPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (int64_t)defaultItemPinningStyle
{
  if ([(SKUIStorePageSection *)self isTopSection])
  {
    return 3;
  }

  v4.receiver = self;
  v4.super_class = SKUICarouselPageSection;
  return [(SKUIStorePageSection *)&v4 defaultItemPinningStyle];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_modelObjects;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(objc_class *)[(SKUICarouselPageSection *)self _cellClassForViewElement:*(*(&v14 + 1) + 8 * v12)] requestLayoutForViewElement:*(*(&v14 + 1) + 8 * v12) width:self->_cellLayoutContext context:self->_itemSize.width];
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13.receiver = self;
  v13.super_class = SKUICarouselPageSection;
  [(SKUIStorePageSection *)&v13 entityProvider:v6 didInvalidateWithContext:v7];
}

- (void)invalidateCachedLayoutInformation
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];

  if (v4)
  {
    self->_needsHeightCalculation = 1;
  }

  v5.receiver = self;
  v5.super_class = SKUICarouselPageSection;
  [(SKUIStorePageSection *)&v5 invalidateCachedLayoutInformation];
}

- (int64_t)numberOfCells
{
  v3 = [(NSArray *)self->_modelObjects count];
  progressIndicatorElement = self->_progressIndicatorElement;
  if (v3)
  {
    if (progressIndicatorElement)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (progressIndicatorElement)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_modelObjects;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (v6)
        {
          [(objc_class *)[(SKUICarouselPageSection *)self _cellClassForViewElement:*(*(&v14 + 1) + 8 * i)] prefetchResourcesForViewElement:*(*(&v14 + 1) + 8 * i) reason:a3 context:self->_cellLayoutContext];
        }

        else
        {
          v12 = [*(*(&v14 + 1) + 8 * i) artworkForSize:{self->_itemSize.width, self->_itemSize.height}];
          [(SKUIViewElementLayoutContext *)self->_cellLayoutContext loadImageForArtwork:v12 reason:a3];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (!v6)
  {
    [(SKUICarouselPageSection *)self _loadMissingItemsFromIndex:0 withReason:a3];
  }

  v13.receiver = self;
  v13.super_class = SKUICarouselPageSection;
  [(SKUIStorePageSection *)&v13 prefetchResourcesWithReason:a3];
}

- (UIEdgeInsets)sectionContentInset
{
  if (!self->_progressIndicatorElement || self->_progressIndicatorCellIndex != 1)
  {
    v7 = [(SKUIStorePageSection *)self pageComponent];
    v8 = [v7 viewElement];
    v9 = [v8 style];

    v10 = [v9 valueForStyle:*MEMORY[0x277D1AFF0]];
    if (v10)
    {
    }

    else
    {
      v11 = [v9 valueForStyle:@"itml-padding"];

      if (!v11)
      {
        v20.receiver = self;
        v20.super_class = SKUICarouselPageSection;
        [(SKUIStorePageSection *)&v20 sectionContentInset];
        goto LABEL_8;
      }
    }

    [v9 elementPadding];
LABEL_8:
    v3 = v12;
    v4 = v13;
    v5 = v14;
    v6 = v15;

    goto LABEL_9;
  }

  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
LABEL_9:
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)willAppearInContext:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2827FFD08];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280D808];
  v6 = self->_cellLayoutContext;
  v7 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  v9 = [(SKUIStorePageSection *)self pageComponent];
  v10 = [v9 viewElement];

  -[SKUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [v10 elementType]);
  v11 = &OBJC_IVAR___SKUIStackDocumentViewController__indexBarControlController;
  v12 = &OBJC_IVAR___SKUIStackDocumentViewController__indexBarControlController;
  v53 = v10;
  v54 = v6;
  if (v10)
  {
    v52 = v5;
    self->_itemSize = *MEMORY[0x277CBF3A8];
    itemWidth = self->_itemWidth;
    if (itemWidth > 0.0)
    {
      self->_itemSize.width = itemWidth;
    }

    self->_needsHeightCalculation = 1;
    v14 = [v10 style];
    [v14 elementPadding];
    v16 = v15;
    v18 = v17;

    if (v16 >= v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    self->_itemSpacing = v19;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v20 = self->_modelObjects;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v61;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [(objc_class *)[(SKUICarouselPageSection *)self _cellClassForViewElement:*(*(&v60 + 1) + 8 * i)] preferredSizeForViewElement:*(*(&v60 + 1) + 8 * i) context:self->_cellLayoutContext];
          v26.f64[1] = v25;
          self->_itemSize = vbslq_s8(vcgtq_f64(v26, self->_itemSize), v26, self->_itemSize);
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v22);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v27 = self->_modelObjects;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v56 objects:v64 count:16];
    v5 = v52;
    if (v28)
    {
      v29 = v28;
      v30 = *v57;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v57 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [(objc_class *)[(SKUICarouselPageSection *)self _cellClassForViewElement:*(*(&v56 + 1) + 8 * j)] requestLayoutForViewElement:*(*(&v56 + 1) + 8 * j) width:self->_cellLayoutContext context:self->_itemSize.width];
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v29);
    }

    v12 = &OBJC_IVAR___SKUIStackDocumentViewController__indexBarControlController;
    v11 = &OBJC_IVAR___SKUIStackDocumentViewController__indexBarControlController;
  }

  else
  {
    [(SKUICarouselPageSection *)self _reloadLegacySizing];
  }

  [v4 activePageWidth];
  v33 = v32;
  v34 = [(SKUICarouselPageSection *)self _carouselCollectionView];
  [v34 setSemanticContentAttribute:storeSemanticContentAttribute()];
  v35 = (self + v11[466]);
  [v34 setFrame:{0.0, 0.0, v33, v35[1]}];
  v36 = [v34 collectionViewLayout];
  [v36 setItemSize:{*v35, v35[1]}];
  v37 = v12[460];
  v38 = [*(&self->super.super.isa + v37) count];
  if (v38)
  {
    v39 = v38;
    [v34 contentInset];
    v41 = v40;
    v43 = v42;
    [(SKUICarouselPageSection *)self _actualContentWidth];
    v45 = v44;
    if (v44 <= v33 + v33)
    {
      v46 = 0;
      self->_cellCount = [*(&self->super.super.isa + v37) count];
      v51 = (v33 - v45) * 0.5;
      v47 = fmaxf(floorf(v51), 15.0);
      v48 = v39 > 1;
    }

    else
    {
      self->_cellCount = 100000;
      v46 = [MEMORY[0x277CCAA70] indexPathForItem:20000 / v39 * v39 inSection:0];
      v47 = 0.0;
      v48 = 1;
    }

    v49 = v54;
    [v34 setAlwaysBounceHorizontal:v48];
    [v34 setContentInset:{v41, v47, v43, v47}];
    v50 = v53;
    if (v46)
    {
      if (self->_needsReload)
      {
        if (!self->_reloadIndexPath)
        {
          objc_storeStrong(&self->_reloadIndexPath, v46);
        }
      }

      else
      {
        [(SKUICarouselPageSection *)self _scrollToItemAtIndexPath:v46 animated:0];
      }
    }
  }

  else
  {
    self->_cellCount = 0;
    *v35 = v33;
    v35[1] = 20.0;
    v50 = v53;
    v49 = v54;
  }

  v55.receiver = self;
  v55.super_class = SKUICarouselPageSection;
  [(SKUIStorePageSection *)&v55 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(NSArray *)self->_modelObjects count];
  if (v8 >= 1)
  {
    v9 = v8;
    v35 = height;
    v10 = [(SKUICarouselPageSection *)self _carouselCollectionView];
    [v10 contentInset];
    v12 = v11;
    v14 = v13;
    [v10 bounds];
    x = v43.origin.x;
    y = v43.origin.y;
    v17 = v43.size.width;
    v18 = v43.size.height;
    MidX = CGRectGetMidX(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = v17;
    v44.size.height = v18;
    v20 = [v10 indexPathForItemAtPoint:{MidX, CGRectGetMidY(v44)}];
    v21 = [v20 item];

    v22 = [(SKUIStorePageSection *)self pageComponent];
    v23 = [v22 viewElement];

    if (!v23)
    {
      [(SKUICarouselPageSection *)self _reloadLegacySizing];
      [(SKUICarouselPageSection *)self prefetchResourcesWithReason:0];
    }

    v24 = v21 % v9;
    v25 = [(SKUIStorePageSection *)self context];
    [v25 activePageWidth];
    v27 = v26;

    [(SKUICarouselPageSection *)self _actualContentWidth];
    v29 = v28;
    if (v28 <= v27 + v27)
    {
      self->_cellCount = [(NSArray *)self->_modelObjects count];
      v32 = (v27 - v29) * 0.5;
      v30 = fmaxf(floorf(v32), 0.0);
      v31 = v9 != 1;
    }

    else
    {
      self->_cellCount = 100000;
      v24 += 0x4E20uLL / v9 * v9;
      v30 = 0.0;
      v31 = 1;
    }

    [v10 setAlwaysBounceHorizontal:v31];
    [v10 setContentInset:{v12, v30, v14, v30}];
    v33 = MEMORY[0x277D75D18];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __74__SKUICarouselPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke;
    v38[3] = &unk_2781FB698;
    v41 = v27;
    v39 = v10;
    v40 = self;
    v42 = v24;
    v34 = v10;
    [v33 performWithoutAnimation:v38];
    [(SKUICarouselPageSection *)self _cancelCycleTimer];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __74__SKUICarouselPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v37[3] = &unk_2781F8348;
    v37[4] = self;
    [v7 animateAlongsideTransition:0 completion:v37];

    height = v35;
  }

  v36.receiver = self;
  v36.super_class = SKUICarouselPageSection;
  [(SKUIStorePageSection *)&v36 willTransitionToSize:v7 withTransitionCoordinator:width, height];
}

void __74__SKUICarouselPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:?];
  v2 = [*(a1 + 32) collectionViewLayout];
  [v2 setItemSize:{*(*(a1 + 40) + 120), *(*(a1 + 40) + 128)}];
  [v2 setMinimumInteritemSpacing:*(*(a1 + 40) + 136)];
  [v2 setMinimumLineSpacing:*(*(a1 + 40) + 136)];
  [v2 invalidateLayout];
  [*(a1 + 32) reloadData];
  [*(a1 + 32) layoutIfNeeded];
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 56) inSection:0];
  [*(a1 + 40) _scrollToItemAtIndexPath:v3 animated:0];
  v4 = *(a1 + 32);
  v6[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v4 reloadItemsAtIndexPaths:v5];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(UICollectionView *)self->_carouselCollectionView indexPathsForVisibleItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [(UICollectionView *)self->_carouselCollectionView cellForItemAtIndexPath:*(*(&v15 + 1) + 8 * v12), v15];
      v14 = [v13 setImage:v7 forArtworkRequest:v6 context:self->_cellLayoutContext];

      if (v14)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5
{
  v7 = a4;
  if ([v7 count])
  {
    v6 = [(SKUIStorePageSection *)self pageComponent];
    [v6 updateWithMissingItems:v7];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 item];
  v9 = v8 % [(NSArray *)self->_modelObjects count];
  v10 = [(NSArray *)self->_modelObjects objectAtIndex:v9];
  v11 = [(SKUIStorePageSection *)self pageComponent];
  v12 = [v11 viewElement];

  if (v12)
  {
    v13 = [(SKUICarouselPageSection *)self _dequeueCellForViewElement:v10 collectionView:v7 indexPath:v6];

    [v13 reloadWithViewElement:v10 width:self->_cellLayoutContext context:self->_itemSize.width];
  }

  else
  {
    v13 = [v7 dequeueReusableCellWithReuseIdentifier:0x2827FFFC8 forIndexPath:v6];

    [v13 reloadWithCarouselItem:v10 size:self->_cellLayoutContext context:{self->_itemSize.width, self->_itemSize.height}];
    v14 = [(SKUIStorePageSection *)self context];
    v15 = [v14 metricsController];
    v16 = [v15 activeImpressionsSession];

    if (v16)
    {
      [(SKUICarouselPageSection *)self _addImpressionForIndex:v9 toSession:v16];
    }

    [(SKUICarouselPageSection *)self _loadMissingItemsFromIndex:v9 withReason:1];
  }

  return v13;
}

- (void)collectionView:(id)a3 carouselLayout:(id)a4 willApplyLayoutAttributes:(id)a5
{
  v16 = a3;
  v7 = a5;
  v8 = [(SKUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];

  if (!v9 || (modelObjects = self->_modelObjects, [v7 indexPath], v11 = objc_claimAutoreleasedReturnValue(), -[NSArray objectAtIndex:](modelObjects, "objectAtIndex:", objc_msgSend(v11, "item") % -[NSArray count](self->_modelObjects, "count")), v12 = objc_claimAutoreleasedReturnValue(), v11, objc_msgSend(v12, "style"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "ikBackgroundColor"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "color"), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !v15))
  {
    v15 = [v16 backgroundColor];
  }

  [v7 setBackgroundColor:v15];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 item];
  v9 = v8 % [(NSArray *)self->_modelObjects count];
  v10 = [(SKUIStorePageSection *)self pageComponent];
  v16 = [v10 viewElement];

  v11 = [(NSArray *)self->_modelObjects objectAtIndex:v9];
  if (v16)
  {
    [v11 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  else
  {
    v12 = [v11 link];
    v13 = [(SKUIStorePageSection *)self clickEventWithLink:v12 elementName:*MEMORY[0x277D6A4D8] index:v9];
    if (v13)
    {
      v14 = [(SKUIStorePageSection *)self context];
      v15 = [v14 metricsController];
      [v15 recordEvent:v13];
    }

    [(SKUIStorePageSection *)self showPageWithLink:v12];
  }

  [v7 deselectItemAtIndexPath:v6 animated:1];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = -[NSArray objectAtIndex:](self->_modelObjects, "objectAtIndex:", [a5 item] % -[NSArray count](self->_modelObjects, "count"));
  v6 = [(SKUIStorePageSection *)self context];
  v7 = [v6 activeMetricsImpressionSession];
  [v7 beginActiveImpressionForViewElement:v8];

  [v8 dispatchEventOfType:9 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9 = a5;
  if ([(NSArray *)self->_modelObjects count])
  {
    v6 = -[NSArray objectAtIndex:](self->_modelObjects, "objectAtIndex:", [v9 item] % -[NSArray count](self->_modelObjects, "count"));
    v7 = [(SKUIStorePageSection *)self context];
    v8 = [v7 activeMetricsImpressionSession];
    [v8 endActiveImpressionForViewElement:v6];

    [v6 dispatchEventOfType:10 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (self->_progressIndicatorElement)
  {
    v4 = [(SKUIStorePageSection *)self context];
    v5 = [v4 collectionView];
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:self->_progressIndicatorCellIndex inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v7 = [v5 cellForItemAtIndexPath:v6];

    [v7 setCurrentPage:{-[SKUICarouselPageSection _currentPageIndex](self, "_currentPageIndex")}];
  }

  [(SKUICarouselPageSection *)self _startCycleTimerIfNecessary];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  if (self->_progressIndicatorElement)
  {
    v4 = [(SKUIStorePageSection *)self context];
    v5 = [v4 collectionView];
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:self->_progressIndicatorCellIndex inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v7 = [v5 cellForItemAtIndexPath:v6];

    [v7 setCurrentPage:{-[SKUICarouselPageSection _currentPageIndex](self, "_currentPageIndex")}];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    dispatch_source_cancel(cycleTimer);
    v5 = self->_cycleTimer;
    self->_cycleTimer = 0;
  }
}

- (double)_actualContentWidth
{
  v3 = [(NSArray *)self->_modelObjects count];
  result = self->_itemSize.width * v3;
  if (v3 >= 2)
  {
    return result + (v3 - 1) * self->_itemSpacing;
  }

  return result;
}

- (void)_addImpressionForIndex:(int64_t)a3 toSession:(id)a4
{
  modelObjects = self->_modelObjects;
  v6 = a4;
  v7 = [(NSArray *)modelObjects objectAtIndex:a3];
  [v6 addItemIdentifier:{objc_msgSend(v7, "carouselItemIdentifier")}];
}

- (void)_cancelCycleTimer
{
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    dispatch_source_cancel(cycleTimer);
    v4 = self->_cycleTimer;
    self->_cycleTimer = 0;
  }
}

- (id)_carouselCollectionView
{
  carouselCollectionView = self->_carouselCollectionView;
  if (!carouselCollectionView)
  {
    v4 = objc_alloc_init(SKUICarouselCollectionViewLayout);
    [(UICollectionViewFlowLayout *)v4 setMinimumInteritemSpacing:self->_itemSpacing];
    [(UICollectionViewFlowLayout *)v4 setMinimumLineSpacing:self->_itemSpacing];
    [(UICollectionViewFlowLayout *)v4 setScrollDirection:1];
    v5 = objc_alloc(MEMORY[0x277D752A0]);
    v6 = [v5 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_carouselCollectionView;
    self->_carouselCollectionView = v6;

    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828091E8];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828133E8];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280D588];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2827FFFC8];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282808388];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x2828040A8];
    [(UICollectionView *)self->_carouselCollectionView setDataSource:self];
    [(UICollectionView *)self->_carouselCollectionView setDecelerationRate:0.7];
    [(UICollectionView *)self->_carouselCollectionView setDelegate:self];
    [(UICollectionView *)self->_carouselCollectionView setScrollsToTop:0];
    [(UICollectionView *)self->_carouselCollectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_carouselCollectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)self->_carouselCollectionView setSemanticContentAttribute:storeSemanticContentAttribute()];
    [(UICollectionView *)self->_carouselCollectionView setPrefetchingEnabled:0];
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = self->_carouselCollectionView;
    v10 = [(SKUICarouselPageSection *)self backgroundColorForIndexPath:v8];
    [(UICollectionView *)v9 setBackgroundColor:v10];

    carouselCollectionView = self->_carouselCollectionView;
  }

  return carouselCollectionView;
}

- (Class)_cellClassForLockup:(id)a3
{
  if ([a3 lockupViewType] <= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (Class)_cellClassForViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  v6 = 0;
  if (v5 > 65)
  {
    if (v5 == 66)
    {
      v7 = [(SKUICarouselPageSection *)self _cellClassForLockup:v4];
      goto LABEL_9;
    }

    if (v5 != 152)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = objc_opt_class();
LABEL_9:
    v6 = v7;
    goto LABEL_10;
  }

  if (v5 == 14 || v5 == 49)
  {
    goto LABEL_7;
  }

LABEL_10:

  return v6;
}

- (int64_t)_currentPageIndex
{
  v3 = [(SKUICarouselPageSection *)self _carouselCollectionView];
  [v3 bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = [v3 indexPathForItemAtPoint:{MidX, CGRectGetMidY(v14)}];
  v10 = [v9 item];
  v11 = v10 % [(NSArray *)self->_modelObjects count];

  return v11;
}

- (id)_dequeueCellForLockup:(id)a3 collectionView:(id)a4 indexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 lockupViewType];
  if (v9 > 8)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 dequeueReusableCellWithReuseIdentifier:*off_2781FBB58[v9] forIndexPath:v8];
  }

  return v10;
}

- (id)_dequeueCellForViewElement:(id)a3 collectionView:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 elementType];
  v12 = 0;
  if (v11 > 48)
  {
    if (v11 != 49)
    {
      if (v11 == 66)
      {
        v14 = [(SKUICarouselPageSection *)self _dequeueCellForLockup:v8 collectionView:v9 indexPath:v10];
        goto LABEL_11;
      }

      if (v11 != 152)
      {
        goto LABEL_12;
      }
    }

    v13 = 0x2827FFFC8;
LABEL_9:
    v14 = [v9 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v10];
LABEL_11:
    v12 = v14;
    goto LABEL_12;
  }

  if (v11 != 14)
  {
    if (v11 != 28)
    {
      goto LABEL_12;
    }

    v13 = 0x2828133E8;
    goto LABEL_9;
  }

  v12 = [v9 dequeueReusableCellWithReuseIdentifier:0x2828091E8 forIndexPath:v10];
  [v12 setArtworkBoundingSize:0];
  [v12 setContentInset:{0.0, 15.0, 0.0, 15.0}];
LABEL_12:

  return v12;
}

- (void)_fireCycleTimer
{
  v11 = [(SKUICarouselPageSection *)self _carouselCollectionView];
  [v11 bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = [v11 indexPathForItemAtPoint:{MidX, CGRectGetMidY(v14)}];
  v9 = [v8 item];

  v10 = [MEMORY[0x277CCAA70] indexPathForItem:v9 + 1 inSection:0];
  [(SKUICarouselPageSection *)self _scrollToItemAtIndexPath:v10 animated:1];
}

- (BOOL)_isItemEnabledAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  if (v6)
  {
    v7 = -[NSArray objectAtIndex:](self->_modelObjects, "objectAtIndex:", [v4 item] % -[NSArray count](self->_modelObjects, "count"));
    v8 = [v7 isEnabled];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (CGSize)_legacyItemSize
{
  v2 = [(SKUIStorePageSection *)self context];
  [v2 activePageWidth];
  v4 = v3;
  v5 = [v2 clientContext];
  v6 = SKUIUserInterfaceIdiom(v5);

  if (v6 == 1)
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    v9 = v8;

    if (v4 >= v9)
    {
      *&v10 = 260.0;
      *&v11 = 530.0;
      goto LABEL_12;
    }

    if (v4 >= v9 * 0.666666687)
    {
      *&v10 = 195.0;
      *&v11 = 398.0;
      goto LABEL_12;
    }

    *&v10 = 130.0;
  }

  else
  {
    *&v10 = 130.0;
    if (v4 >= 736.0)
    {
      *&v11 = 265.0;
      goto LABEL_12;
    }

    *&v11 = 375.0;
    if (v4 >= 375.0)
    {
      *&v10 = 152.0;
      goto LABEL_12;
    }
  }

  *&v11 = 320.0;
LABEL_12:

  v12 = *&v11;
  v13 = *&v10;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)_legacyItemSpacing
{
  v2 = [(SKUIStorePageSection *)self context];
  [v2 activePageWidth];
  v4 = v3;
  v5 = [v2 clientContext];
  v6 = SKUIUserInterfaceIdiom(v5);

  if (v6 == 1)
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    v9 = v8;

    v10 = v9 * 0.5;
    v11 = 5.0;
  }

  else
  {
    v11 = 3.0;
    v10 = 736.0;
  }

  if (v4 >= v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4
{
  v8 = [(SKUIStorePageSection *)self pageComponent];
  if ([v8 isMissingItemData])
  {
    v7 = [(SKUICarouselPageSection *)self _missingItemLoader];
    [v7 loadItemsForPageComponent:v8 startIndex:a3 reason:a4];
  }
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SKUIMissingItemLoader alloc];
    v5 = [(SKUIStorePageSection *)self context];
    v6 = [v5 resourceLoader];
    v7 = [(SKUIMissingItemLoader *)v4 initWithResourceLoader:v6];
    v8 = self->_missingItemLoader;
    self->_missingItemLoader = v7;

    [(SKUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (void)_reloadLegacySizing
{
  p_itemSize = &self->_itemSize;
  [(SKUICarouselPageSection *)self _legacyItemSize];
  p_itemSize->width = v4;
  p_itemSize->height = v5;
  [(SKUICarouselPageSection *)self _legacyItemSpacing];
  self->_itemSpacing = v6;
  v7 = 1.0;
  if (v6 <= 0.00000011920929)
  {
    v7 = 0.0;
  }

  cellLayoutContext = self->_cellLayoutContext;
  v9 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{0.0, v7, 1.0, v7}];
  [(SKUIViewElementLayoutContext *)cellLayoutContext setAggregateValue:v9 forKey:0x2827FFFA8];
}

- (void)_reloadViewElementProperties
{
  v16 = [(SKUIStorePageSection *)self pageComponent];
  v3 = [v16 viewElement];
  v4 = [v3 style];
  v5 = [v4 itemWidth];

  if (v5)
  {
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  self->_itemWidth = v7;
  if (v3)
  {
    v8 = [v3 flattenedChildren];
    modelObjects = self->_modelObjects;
    self->_modelObjects = v8;

    v10 = [v3 progressIndicatorElement];
  }

  else
  {
    v11 = [v16 carouselItems];
    v12 = self->_modelObjects;
    self->_modelObjects = v11;

    v10 = 0;
  }

  progressIndicatorElement = self->_progressIndicatorElement;
  self->_progressIndicatorElement = v10;

  v14 = [(SKUIProgressIndicatorViewElement *)self->_progressIndicatorElement style];
  v15 = [v14 elementPosition] != 2;

  self->_progressIndicatorCellIndex = v15;
}

- (void)_startCycleTimerIfNecessary
{
  if (!self->_cycleTimer)
  {
    v3 = [(SKUIStorePageSection *)self pageComponent];
    [v3 cycleInterval];
    v5 = v4;

    if (v5 > 2.22044605e-16)
    {
      [(SKUICarouselPageSection *)self _actualContentWidth];
      v7 = v6;
      v8 = [(SKUIStorePageSection *)self context];
      [v8 activePageWidth];
      v10 = v9 + v9;

      if (v7 > v10)
      {
        v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        cycleTimer = self->_cycleTimer;
        self->_cycleTimer = v11;

        v13 = v5 * 1000000000.0;
        v14 = self->_cycleTimer;
        v15 = dispatch_time(0, v13);
        dispatch_source_set_timer(v14, v15, v13, 0);
        objc_initWeak(&location, self);
        v16 = self->_cycleTimer;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __54__SKUICarouselPageSection__startCycleTimerIfNecessary__block_invoke;
        v17[3] = &unk_2781F8320;
        objc_copyWeak(&v18, &location);
        dispatch_source_set_event_handler(v16, v17);
        dispatch_resume(self->_cycleTimer);
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __54__SKUICarouselPageSection__startCycleTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fireCycleTimer];
}

- (void)_scrollToItemAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(SKUICarouselPageSection *)self _carouselCollectionView];
  v7 = [v6 numberOfItemsInSection:0];

  if ([v9 row] < v7)
  {
    v8 = [(SKUICarouselPageSection *)self _carouselCollectionView];
    [v8 scrollToItemAtIndexPath:v9 atScrollPosition:16 animated:v4];
  }
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICarouselPageSection initWithPageComponent:]";
}

@end