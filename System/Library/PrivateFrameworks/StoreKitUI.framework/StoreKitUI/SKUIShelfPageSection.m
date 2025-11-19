@interface SKUIShelfPageSection
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIScrollViewDelegateObserver)scrollViewDelegateObserver;
- (SKUIShelfPageSection)initWithPageComponent:(id)a3;
- (SKUIShelfPageSection)initWithPageComponent:(id)a3 configuration:(id)a4;
- (UIEdgeInsets)sectionContentInset;
- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)a3;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (int64_t)applyUpdateType:(int64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_performDefaultSelectActionForEffectiveViewElement:(id)a3;
- (void)_reloadViewElementProperties;
- (void)_setContext:(id)a3;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionView:(id)a3 didConfirmButtonElement:(id)a4 withClickInfo:(id)a5 forItemAtIndexPath:(id)a6;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 layout:(id)a4 willApplyLayoutAttributes:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)deselectItemsAnimated:(BOOL)a3;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)getModalSourceViewForViewElement:(id)a3 completionBlock:(id)a4;
- (void)invalidateCachedLayoutInformation;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setTopSection:(BOOL)a3;
- (void)viewElementSlideshowWillDismiss:(id)a3;
- (void)willAppearInContext:(id)a3;
- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5;
@end

@implementation SKUIShelfPageSection

- (SKUIShelfPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIShelfPageSection initWithPageComponent:];
  }

  v5 = [(SKUIShelfPageSection *)self initWithPageComponent:v4 configuration:0];

  return v5;
}

- (SKUIShelfPageSection)initWithPageComponent:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIShelfPageSection initWithPageComponent:configuration:];
  }

  v12.receiver = self;
  v12.super_class = SKUIShelfPageSection;
  v8 = [(SKUIStorePageSection *)&v12 initWithPageComponent:v6];
  if (v8)
  {
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(SKUIShelfPageSectionConfiguration);
    }

    configuration = v8->_configuration;
    v8->_configuration = v9;

    [(SKUIShelfPageSectionConfiguration *)v8->_configuration setDataSource:v8];
    [(SKUIShelfPageSectionConfiguration *)v8->_configuration setShelfCollectionViewDataSource:v8];
    [(SKUIShelfPageSectionConfiguration *)v8->_configuration setShelfCollectionViewDelegate:v8];
    [(SKUIShelfPageSection *)v8 _reloadViewElementProperties];
  }

  return v8;
}

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setShelfCollectionViewDataSource:0];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setShelfCollectionViewDelegate:0];
  [(SKUIViewElementSlideshowController *)self->_slideshowController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SKUIStorePageSection *)self pageComponent];
  v7 = [v6 viewElement];
  [v5 addItemViewElement:v7];

  v8 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  v9 = [v8 indexPathsForVisibleItems];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [*(*(&v16 + 1) + 8 * v14) item]);
        [v5 addItemViewElement:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (int64_t)applyUpdateType:(int64_t)a3
{
  [(SKUIShelfPageSection *)self _reloadViewElementProperties];
  if (![(SKUIShelfPageSectionConfiguration *)self->_configuration needsShelfCollectionViewReload])
  {
    [(SKUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewReload:[(SKUIShelfViewElement *)self->_shelfViewElement updateType]!= 0];
  }

  v6.receiver = self;
  v6.super_class = SKUIShelfPageSection;
  return [(SKUIStorePageSection *)&v6 applyUpdateType:a3];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIShelfPageSectionConfiguration *)self->_configuration backgroundColorForShelfViewElement:self->_shelfViewElement];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = SKUIShelfPageSection;
    v5 = [(SKUIStorePageSection *)&v7 backgroundColorForIndexPath:v4];
  }

  return v5;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  configuration = self->_configuration;
  shelfViewElement = self->_shelfViewElement;
  viewElements = self->_viewElements;
  v6 = a3;
  [(SKUIShelfPageSectionConfiguration *)configuration cellSizeForShelfViewElement:shelfViewElement indexPath:v6 numberOfShelfItems:[(NSArray *)viewElements count]];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIShelfPageSection;
  v4 = a3;
  [(SKUIStorePageSection *)&v5 collectionViewWillApplyLayoutAttributes:v4];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration collectionViewWillApplyLayoutAttributes:v4, v5.receiver, v5.super_class];
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 beginActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 endActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)deselectItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v10++) animated:v3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v11 deselectItemsAnimated:v3];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  configuration = self->_configuration;
  shelfViewElement = self->_shelfViewElement;
  viewElements = self->_viewElements;
  v9 = a4;
  v10 = a3;
  [(SKUIShelfPageSectionConfiguration *)configuration reloadShelfLayoutDataForShelfViewElement:shelfViewElement withShelfItemViewElements:viewElements requestCellLayouts:1 numberOfShelfItems:[(NSArray *)viewElements count]];
  v11.receiver = self;
  v11.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v11 entityProvider:v10 didInvalidateWithContext:v9];
}

- (void)getModalSourceViewForViewElement:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__21;
  v24 = __Block_byref_object_dispose__21;
  v25 = 0;
  viewElements = self->_viewElements;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__SKUIShelfPageSection_getModalSourceViewForViewElement_completionBlock___block_invoke;
  v17[3] = &unk_2781FB2C0;
  v17[4] = self;
  v9 = v6;
  v18 = v9;
  v19 = &v20;
  [(NSArray *)viewElements enumerateObjectsUsingBlock:v17];
  v10 = v21[5];
  if (v10)
  {
    v11 = [(SKUIShelfPageSectionConfiguration *)self->_configuration actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:v10 numberOfShelfItems:[(NSArray *)self->_viewElements count]];
    v12 = v21[5];
    v21[5] = v11;

    v10 = objc_alloc_init(SKUIModalSourceViewProvider);
    [(SKUIModalSourceViewProvider *)v10 setUserInfo:v9];
    v13 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    v14 = [v13 cellForItemAtIndexPath:v21[5]];

    v15 = [v9 itmlID];
    v16 = [v14 viewForElementIdentifier:v15];

    if (v16)
    {
      [(SKUIModalSourceViewProvider *)v10 setOriginalSourceView:v16];
    }

    else
    {
      [(SKUIModalSourceViewProvider *)v10 setOriginalSourceView:v14];
    }
  }

  v7[2](v7, v10);

  _Block_object_dispose(&v20, 8);
}

void __73__SKUIShelfPageSection_getModalSourceViewForViewElement_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v10 = [*(*(a1 + 32) + 96) effectiveViewElementForShelfItemViewElement:a2];
  if ([*(a1 + 40) isDescendentFromViewElement:?])
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

- (void)invalidateCachedLayoutInformation
{
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  v3 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  [v3 reloadData];

  v4.receiver = self;
  v4.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v4 invalidateCachedLayoutInformation];
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  viewElements = self->_viewElements;
  v8[3] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SKUIShelfPageSection_prefetchResourcesWithReason___block_invoke;
  v7[3] = &unk_2781FB2E8;
  v7[5] = v8;
  v7[6] = a3;
  v7[4] = self;
  [(NSArray *)viewElements enumerateObjectsUsingBlock:v7];
  v6.receiver = self;
  v6.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v6 prefetchResourcesWithReason:a3];
  _Block_object_dispose(v8, 8);
}

uint64_t __52__SKUIShelfPageSection_prefetchResourcesWithReason___block_invoke(void *a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = [*(a1[4] + 96) prefetchResourcesForShelfItemViewElement:a2 reason:a1[6]];
  if (result)
  {
    *a4 = ++*(*(a1[5] + 8) + 24) > 9;
  }

  return result;
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  configuration = self->_configuration;
  v8 = a3;
  v9 = [(SKUIShelfPageSectionConfiguration *)configuration existingShelfCollectionView];
  v10 = [v8 sourceView];

  [v9 convertPoint:v10 fromView:{x, y}];
  v11 = [v9 indexPathForItemAtPoint:?];
  v12 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v11 item]);
  v13 = [(SKUIStorePageSection *)self context];
  v14 = [v13 clientContext];
  v15 = [v14 previewViewControllerForViewElement:v12];

  return v15;
}

- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5
{
  y = a4.y;
  x = a4.x;
  configuration = self->_configuration;
  v9 = a5;
  v10 = a3;
  v18 = [(SKUIShelfPageSectionConfiguration *)configuration existingShelfCollectionView];
  [v18 convertPoint:v9 fromView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [v18 indexPathForItemAtPoint:{v12, v14}];
  v16 = [v18 cellForItemAtIndexPath:v15];
  v17 = [v10 presentationController];

  [v17 setSourceView:v16];
  [v16 bounds];
  [v17 setSourceRect:?];
}

- (UIEdgeInsets)sectionContentInset
{
  configuration = self->_configuration;
  v12.receiver = self;
  v12.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v12 sectionContentInset];
  [(SKUIShelfPageSectionConfiguration *)configuration sectionContentInsetAdjustedFromValue:self->_shelfViewElement forShelfViewElement:[(SKUIStorePageSection *)self sectionIndex] withSectionIndex:v4, v5, v6, v7];
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)setTopSection:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v5 setTopSection:?];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setTopSection:v3];
}

- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v22 = a4;
  v7 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  [v7 indexPathsForVisibleItems];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v7 cellForItemAtIndexPath:v12];
        if ([v13 updateWithItemState:v22 context:self->_cellLayoutContext animated:v5])
        {
          v15 = [v12 item];
          v16 = [(NSArray *)self->_viewElements objectAtIndex:v15];
          v17 = [(SKUIShelfPageSectionConfiguration *)self->_configuration shelfLayoutData];
          [v17 sizeForItemAtIndex:v15];
          v19 = v18;

          [objc_opt_class() requestLayoutForViewElement:v16 width:self->_cellLayoutContext context:v19];
          v14 = 1;
          goto LABEL_11;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration registerReusableClassesForCollectionView:v5];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280D808];
  v6 = self->_cellLayoutContext;
  v7 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x28280B748];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setContainerViewElementType:[(SKUIShelfViewElement *)self->_shelfViewElement elementType]];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setCellLayoutContext:self->_cellLayoutContext];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration reloadShelfLayoutDataForShelfViewElement:self->_shelfViewElement withShelfItemViewElements:self->_viewElements requestCellLayouts:1 numberOfShelfItems:[(NSArray *)self->_viewElements count]];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  if (![(NSArray *)self->_viewElements count])
  {
    [(SKUIShelfViewElement *)self->_shelfViewElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  v9.receiver = self;
  v9.super_class = SKUIShelfPageSection;
  [(SKUIStorePageSection *)&v9 willAppearInContext:v4];
}

- (void)_setContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIShelfPageSection;
  v4 = a3;
  [(SKUIStorePageSection *)&v5 _setContext:v4];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setPageSectionContext:v4, v5.receiver, v5.super_class];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  v9 = [v8 indexPathsForVisibleItems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
        v16 = [v15 cellForItemAtIndexPath:v14];

        [v16 setImage:v7 forArtworkRequest:v6 context:self->_cellLayoutContext];
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)viewElementSlideshowWillDismiss:(id)a3
{
  slideshowController = self->_slideshowController;
  if (slideshowController == a3)
  {
    [(SKUIViewElementSlideshowController *)slideshowController setDelegate:0];
    [(SKUIViewElementSlideshowController *)self->_slideshowController setLayoutContext:0];
    v5 = self->_slideshowController;
    self->_slideshowController = 0;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SKUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:v5];
  v7 = [v6 item];
  v8 = [(NSArray *)self->_viewElements objectAtIndex:v7];
  v9 = [(SKUIShelfPageSectionConfiguration *)self->_configuration cellForShelfItemViewElement:v8 indexPath:v5];

  v10 = [(NSArray *)self->_viewElements count];
  if (self->_lastNeedsMoreCount < v10 && v7 + 10 > v10)
  {
    self->_lastNeedsMoreCount = v10;
    [(SKUIShelfViewElement *)self->_shelfViewElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  configuration = self->_configuration;
  v5 = [(NSArray *)self->_viewElements count:a3];

  return [(SKUIShelfPageSectionConfiguration *)configuration numberOfCellsForNumberOfShelfItems:v5];
}

- (void)collectionView:(id)a3 didConfirmButtonElement:(id)a4 withClickInfo:(id)a5 forItemAtIndexPath:(id)a6
{
  v9 = a5;
  v10 = a4;
  v12 = [(SKUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:a6];
  v11 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v12 inSection:{"item"), -[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [(SKUIStorePageSection *)self collectionViewDidConfirmButtonElement:v10 withClickInfo:v9 forItemAtIndexPath:v11];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SKUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:v7];
  v9 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v8 item]);
  v10 = [(SKUIShelfPageSectionConfiguration *)self->_configuration effectiveViewElementForShelfItemViewElement:v9];
  v11 = v10;
  if (v10)
  {
    if ([v10 isEnabled])
    {
      objc_initWeak(&location, self);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __64__SKUIShelfPageSection_collectionView_didSelectItemAtIndexPath___block_invoke;
      v14[3] = &unk_2781FB338;
      objc_copyWeak(&v16, &location);
      v12 = v11;
      v15 = v12;
      [v12 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v14];
      if ([v12 elementType] == 66)
      {
        v13 = [(SKUIShelfPageSectionConfiguration *)self->_configuration lockupTypeForLockup:v12]- 3;

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
        if (v13 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_9;
        }
      }

      else
      {

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [v11 dispatchEvent:0x28280CC48 eventAttribute:0x28280CC68 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
    }
  }

  [v6 deselectItemAtIndexPath:v7 animated:1];
LABEL_9:
}

void __64__SKUIShelfPageSection_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, int a2, char a3)
{
  if (!a2 || (a3 & 1) == 0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __64__SKUIShelfPageSection_collectionView_didSelectItemAtIndexPath___block_invoke_2;
    v4[3] = &unk_2781FB310;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __64__SKUIShelfPageSection_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performDefaultSelectActionForEffectiveViewElement:*(a1 + 32)];
}

- (void)collectionView:(id)a3 layout:(id)a4 willApplyLayoutAttributes:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 indexPath];
  v12 = [(SKUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:v9];

  v10 = [v12 item];
  v11 = [(NSArray *)self->_viewElements objectAtIndex:v10];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration shelfItemsCollectionView:v8 willApplyLayoutAttributes:v7 forViewElement:v11 withItemIndex:v10];
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = [(SKUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:a4];
  v6 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v5 item]);
  v7 = [(SKUIShelfPageSectionConfiguration *)self->_configuration effectiveViewElementForShelfItemViewElement:v6];
  v8 = [v7 isEnabled];

  return v8;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [a5 item]);
  v6 = [(SKUIStorePageSection *)self context];
  v7 = [v6 activeMetricsImpressionSession];
  [v7 beginActiveImpressionForViewElement:v8];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = [a5 item];
  if (v6 < [(NSArray *)self->_viewElements count])
  {
    v9 = [(NSArray *)self->_viewElements objectAtIndex:v6];
    v7 = [(SKUIStorePageSection *)self context];
    v8 = [v7 activeMetricsImpressionSession];
    [v8 endActiveImpressionForViewElement:v9];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewDidEndDecelerating:v5];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v6 = a3;
  if ([(SKUIShelfPageSectionConfiguration *)self->_configuration rendersWithParallax])
  {
    v4 = [(SKUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    SKUICollectionViewUpdatePerspectiveCells(v4, 0);
  }

  [(SKUIShelfPageSectionConfiguration *)self->_configuration scrollViewDidScroll:v6];
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewDidScroll:v6];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillBeginDecelerating:v5];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillBeginDragging:v5];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillEndDragging:v10 withVelocity:x targetContentOffset:{y, a5->x, a5->y}];
  }
}

- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)a3
{
  configuration = self->_configuration;
  viewElements = self->_viewElements;
  v5 = a3;
  v6 = [(SKUIShelfPageSectionConfiguration *)configuration normalizedShelfItemIndexPathFromActualIndexPath:v5 numberOfShelfItems:[(NSArray *)viewElements count]];

  return v6;
}

- (void)_performDefaultSelectActionForEffectiveViewElement:(id)a3
{
  v11 = a3;
  if (!-[SKUIStorePageSection performDefaultActionForViewElement:](self, "performDefaultActionForViewElement:") && [v11 elementType] == 66)
  {
    v4 = [SKUIViewElementSlideshowController alloc];
    v5 = [(SKUIStorePageSection *)self pageComponent];
    v6 = [v5 viewElement];
    v7 = [(SKUIViewElementSlideshowController *)v4 initWithShelf:v6 selectedLockup:v11];

    if ([(SKUIViewElementSlideshowController *)v7 numberOfSlideshowItems]>= 1)
    {
      objc_storeStrong(&self->_slideshowController, v7);
      [(SKUIViewElementSlideshowController *)self->_slideshowController setDelegate:self];
      [(SKUIViewElementSlideshowController *)self->_slideshowController setLayoutContext:self->_cellLayoutContext];
      slideshowController = self->_slideshowController;
      v9 = [(SKUIStorePageSection *)self context];
      v10 = [v9 parentViewController];
      [(SKUIViewElementSlideshowController *)slideshowController presentFromParentViewController:v10];
    }
  }
}

- (void)_reloadViewElementProperties
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  shelfViewElement = self->_shelfViewElement;
  self->_shelfViewElement = v4;

  v6 = [(SKUIViewElement *)self->_shelfViewElement flattenedChildren];
  viewElements = self->_viewElements;
  self->_viewElements = v6;

  [(SKUIShelfPageSectionConfiguration *)self->_configuration setRendersWithPerspective:[(SKUIViewElement *)self->_shelfViewElement rendersWithPerspective]];
  [(SKUIShelfPageSectionConfiguration *)self->_configuration setRendersWithParallax:[(SKUIViewElement *)self->_shelfViewElement rendersWithParallax]];
  configuration = self->_configuration;
  v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v10 = [(SKUIShelfPageSection *)self backgroundColorForIndexPath:v9];
  [(SKUIShelfPageSectionConfiguration *)configuration setShelfCollectionViewBackgroundColor:v10];

  v11 = self->_configuration;
  v12 = [(SKUIShelfViewElement *)self->_shelfViewElement style];
  [(SKUIShelfPageSectionConfiguration *)v11 setShelfViewElementStyle:v12];

  v13 = self->_configuration;
  v14 = self->_shelfViewElement;

  [(SKUIShelfPageSectionConfiguration *)v13 reloadLockupTypeForShelfViewElement:v14];
}

- (SKUIScrollViewDelegateObserver)scrollViewDelegateObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);

  return WeakRetained;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShelfPageSection initWithPageComponent:]";
}

- (void)initWithPageComponent:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShelfPageSection initWithPageComponent:configuration:]";
}

@end