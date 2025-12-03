@interface SKUIGridViewElementPageSection
- (BOOL)_containsOnlyShelfElements;
- (BOOL)requestLayoutWithReloadReason:(int64_t)reason;
- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated;
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUIGridViewElementPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)sectionContentInset;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (id)gridViewElementPageSectionConfiguration:(id)configuration viewElementForIndexPath:(id)path;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)d relativeSectionIndex:(int64_t)index;
- (int64_t)applyUpdateType:(int64_t)type;
- (void)_enumerateVisibleViewElementsUsingBlock:(id)block;
- (void)_reloadViewElementProperties;
- (void)_requestLayoutForCells;
- (void)_resetLayoutProperties;
- (void)_setContext:(id)context;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidLongPressItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillScrollToOffset:(CGPoint)offset visibleRange:(SKUIIndexPathRange *)range;
- (void)dealloc;
- (void)deselectItemsAnimated:(BOOL)animated;
- (void)expandEditorialForLabelElement:(id)element indexPath:(id)path;
- (void)getModalSourceViewForViewElement:(id)element completionBlock:(id)block;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason;
- (void)reloadVisibleCellsWithReason:(int64_t)reason;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIGridViewElementPageSection

- (SKUIGridViewElementPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGridViewElementPageSection initWithPageComponent:];
  }

  v9.receiver = self;
  v9.super_class = SKUIGridViewElementPageSection;
  v5 = [(SKUIStorePageSection *)&v9 initWithPageComponent:componentCopy];
  if (v5)
  {
    v6 = objc_alloc_init(SKUIGridViewElementPageSectionConfiguration);
    configuration = v5->_configuration;
    v5->_configuration = v6;

    [(SKUIGridViewElementPageSectionConfiguration *)v5->_configuration setDataSource:v5];
    [(SKUIGridViewElementPageSection *)v5 _reloadViewElementProperties];
  }

  return v5;
}

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pathCopy = path;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  viewElements = self->_viewElements;
  item = [pathCopy item];

  v12 = [(NSArray *)viewElements objectAtIndex:item];
  [sessionCopy addItemViewElement:v12];
}

- (int64_t)applyUpdateType:(int64_t)type
{
  if (type == 2)
  {
    return [(SKUIStorePageSection *)&v9 applyUpdateType:2, v8.receiver, v8.super_class, self, SKUIGridViewElementPageSection];
  }

  showsEditMode = [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration showsEditMode];
  v7 = [(NSArray *)self->_viewElements count];
  [(SKUIGridViewElementPageSection *)self _reloadViewElementProperties];
  if (showsEditMode == [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration showsEditMode]|| v7 != [(NSArray *)self->_viewElements count])
  {
    return [(SKUIStorePageSection *)&v8 applyUpdateType:type, self, SKUIGridViewElementPageSection, v9.receiver, v9.super_class];
  }

  [(SKUIGridViewElementPageSection *)self _resetLayoutProperties];
  [(SKUIGridViewElementPageSection *)self _requestLayoutForCells];
  return 1;
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [pathCopy item]);
  v6 = [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration backgroundColorForViewElement:v5];
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  style = [viewElement style];
  ikBackgroundColor = [style ikBackgroundColor];

  if (ikBackgroundColor || [0 colorType] == 3)
  {
    style2 = [v5 style];
    ikBackgroundColor2 = [style2 ikBackgroundColor];

    if (ikBackgroundColor2 && ([ikBackgroundColor2 color], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      color = [ikBackgroundColor2 color];
    }

    else
    {
      color = [MEMORY[0x277D75348] clearColor];
    }

    v15 = color;
  }

  else if ([v5 handlesBackgroundColorDirectly])
  {
    v15 = 0;
  }

  else
  {
    if (!v6)
    {
      v17.receiver = self;
      v17.super_class = SKUIGridViewElementPageSection;
      v6 = [(SKUIStorePageSection *)&v17 backgroundColorForIndexPath:pathCopy];
    }

    v6 = v6;
    v15 = v6;
  }

  return v15;
}

- (id)cellForIndexPath:(id)path
{
  viewElements = self->_viewElements;
  pathCopy = path;
  v6 = -[NSArray objectAtIndex:](viewElements, "objectAtIndex:", [pathCopy item]);
  v7 = [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration cellForViewElement:v6 indexPath:pathCopy];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  viewElements = self->_viewElements;
  pathCopy = path;
  v6 = -[NSArray objectAtIndex:](viewElements, "objectAtIndex:", [pathCopy item]);
  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration cellSizeForViewElement:v6 indexPath:pathCopy];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewDidLongPressItemAtIndexPath:(id)path
{
  v3 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [path item]);
  if ([v3 isEnabled])
  {
    [v3 dispatchEventOfType:3 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v5 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [pathCopy item]);
  v6 = v5;
  if (v5)
  {
    if ([v5 isEnabled])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __73__SKUIGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke;
      v7[3] = &unk_2781FF988;
      objc_copyWeak(&v10, &location);
      v8 = v6;
      selfCopy = self;
      [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v7];

      objc_destroyWeak(&v10);
    }

    else
    {
      [v6 dispatchEvent:0x28280CC48 eventAttribute:0x28280CC68 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
    }
  }

  objc_destroyWeak(&location);
}

void __73__SKUIGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke(uint64_t a1, char a2, char a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SKUIGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2;
  v6[3] = &unk_2781FF960;
  v10 = a2;
  v11 = a3;
  objc_copyWeak(&v9, (a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v9);
}

void __73__SKUIGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) != 1 || (*(a1 + 57) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained performDefaultActionForViewElement:*(a1 + 32)];
  }

  v3 = [*(a1 + 40) context];
  v5 = [v3 parentViewController];

  if (SKUIViewControllerIsVisible(v5))
  {
    v4 = [v5 transitionCoordinator];

    if (!v4)
    {
      [*(a1 + 40) deselectItemsAnimated:1];
    }
  }
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];
  v9 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [pathCopy item]);

  [activeMetricsImpressionSession beginActiveImpressionForViewElement:v9];
  v10.receiver = self;
  v10.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v10 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];
  item = [pathCopy item];
  if (item < [(NSArray *)self->_viewElements count])
  {
    v10 = [(NSArray *)self->_viewElements objectAtIndex:item];

    [activeMetricsImpressionSession endActiveImpressionForViewElement:v10];
    viewElement = v10;
  }

  v11.receiver = self;
  v11.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v11 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  configuration = self->_configuration;
  attributesCopy = attributes;
  [(SKUIGridViewElementPageSectionConfiguration *)configuration collectionViewWillApplyLayoutAttributes:attributesCopy];
  v6.receiver = self;
  v6.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v6 collectionViewWillApplyLayoutAttributes:attributesCopy];
}

- (void)collectionViewWillScrollToOffset:(CGPoint)offset visibleRange:(SKUIIndexPathRange *)range
{
  y = offset.y;
  x = offset.x;
  numberOfCells = [(SKUIGridViewElementPageSection *)self numberOfCells];
  if (self->_lastNeedsMoreCount < numberOfCells)
  {
    v9 = numberOfCells;
    v10 = *&range->var2;
    v17 = *&range->var0;
    v18 = v10;
    v11 = [(SKUIStorePageSection *)self itemRangeForIndexPathRange:&v17];
    if (v12 + v11 + 20 >= v9)
    {
      self->_lastNeedsMoreCount = v9;
      pageComponent = [(SKUIStorePageSection *)self pageComponent];
      viewElement = [pageComponent viewElement];
      [viewElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIGridViewElementPageSection;
  v15 = *&range->var2;
  v17 = *&range->var0;
  v18 = v15;
  [(SKUIStorePageSection *)&v16 collectionViewWillScrollToOffset:&v17 visibleRange:x, y];
}

- (void)deselectItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x277D85DE8];
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  sectionIndex = [(SKUIStorePageSection *)self sectionIndex];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = indexPathsForSelectedItems;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 section] == sectionIndex)
        {
          [collectionView deselectItemAtIndexPath:v14 animated:animatedCopy];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15.receiver = self;
  v15.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v15 deselectItemsAnimated:animatedCopy];
}

- (void)expandEditorialForLabelElement:(id)element indexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  cellLayoutContext = self->_cellLayoutContext;
  pathCopy = path;
  [(SKUIViewElementLayoutContext *)cellLayoutContext expandEditorialForLabelElement:element];
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v11[0] = pathCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [collectionView reloadItemsAtIndexPaths:v10];
}

- (void)getModalSourceViewForViewElement:(id)element completionBlock:(id)block
{
  elementCopy = element;
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__84;
  v24 = __Block_byref_object_dispose__84;
  v25 = 0;
  viewElements = self->_viewElements;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__SKUIGridViewElementPageSection_getModalSourceViewForViewElement_completionBlock___block_invoke;
  v16[3] = &unk_2781FC428;
  v9 = elementCopy;
  selfCopy = self;
  v19 = &v20;
  v17 = v9;
  [(NSArray *)viewElements enumerateObjectsUsingBlock:v16];
  if (v21[5])
  {
    v10 = objc_alloc_init(SKUIModalSourceViewProvider);
    [(SKUIModalSourceViewProvider *)v10 setUserInfo:v9];
    context = [(SKUIStorePageSection *)self context];
    collectionView = [context collectionView];
    v13 = [collectionView cellForItemAtIndexPath:v21[5]];

    itmlID = [v9 itmlID];
    v15 = [v13 viewForElementIdentifier:itmlID];

    if (v15)
    {
      [(SKUIModalSourceViewProvider *)v10 setOriginalSourceView:v15];
    }

    else
    {
      [(SKUIModalSourceViewProvider *)v10 setOriginalSourceView:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  blockCopy[2](blockCopy, v10);

  _Block_object_dispose(&v20, 8);
}

void __83__SKUIGridViewElementPageSection_getModalSourceViewForViewElement_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) isDescendentFromViewElement:a2])
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:{objc_msgSend(*(a1 + 40), "sectionIndex")}];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  sectionIndex = [(SKUIStorePageSection *)self sectionIndex];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = indexPathsForVisibleItems;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if ([v14 section] == sectionIndex)
        {
          item = [v14 item];
          if (v11 <= item)
          {
            v11 = item;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  v17 = [(NSArray *)self->_viewElements count];
  if (v11 < v17)
  {
    v18 = 0;
    do
    {
      v19 = [(NSArray *)self->_viewElements objectAtIndex:v11, viewElement];
      if ([(objc_class *)[(SKUIGridViewElementPageSectionConfiguration *)self->_configuration cellClassForViewElement:v19] prefetchResourcesForViewElement:v19 reason:reason context:self->_cellLayoutContext])
      {
        if ([(SKUIGridViewElementPageSectionConfiguration *)self->_configuration viewElementIsStandardCard:v19])
        {
          v20 = 10 / [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration numberOfColumns];
          if (v20 <= 1)
          {
            v20 = 1;
          }
        }

        else
        {
          v20 = 1;
        }

        v18 += v20;
      }

      if (v18 > 19)
      {
        break;
      }

      ++v11;
    }

    while (v11 < v17);
  }

  v21 = viewElement;
  if (v17 <= 19 && self->_lastNeedsMoreCount < v17)
  {
    self->_lastNeedsMoreCount = v17;
    [viewElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  v24.receiver = self;
  v24.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v24 prefetchResourcesWithReason:reason, viewElement];
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  contextCopy = context;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  sourceView = [contextCopy sourceView];

  [collectionView convertPoint:sourceView fromView:{x, y}];
  v11 = [collectionView indexPathForItemAtPoint:?];
  v12 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v11 item]);
  context2 = [(SKUIStorePageSection *)self context];
  clientContext = [context2 clientContext];
  v15 = [clientContext previewViewControllerForViewElement:v12];

  return v15;
}

- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason
{
  viewElements = self->_viewElements;
  pathCopy = path;
  v8 = -[NSArray objectAtIndex:](viewElements, "objectAtIndex:", [pathCopy item]);
  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration reloadCellWithIndexPath:pathCopy forViewElement:v8 reason:reason];
}

- (void)reloadVisibleCellsWithReason:(int64_t)reason
{
  v6.receiver = self;
  v6.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v6 reloadVisibleCellsWithReason:reason];
  cellLayoutContext = self->_cellLayoutContext;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKUIGridViewElementPageSectionConfiguration showsEditMode](self->_configuration, "showsEditMode")}];
  [(SKUIViewElementLayoutContext *)cellLayoutContext setAggregateValue:v5 forKey:0x28280D5A8];
}

- (BOOL)requestLayoutWithReloadReason:(int64_t)reason
{
  if (reason == 2)
  {
    [(SKUIGridViewElementPageSection *)self _requestLayoutForCells];
  }

  return reason == 2;
}

- (UIEdgeInsets)sectionContentInset
{
  configuration = self->_configuration;
  v26.receiver = self;
  v26.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v26 sectionContentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [(SKUIGridViewElementPageSectionConfiguration *)configuration sectionContentInsetAdjustedFromValue:viewElement forGridViewElement:v5, v7, v9, v11];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)d relativeSectionIndex:(int64_t)index
{
  dCopy = d;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  v8 = [viewElement firstDescendentWithIndexBarEntryID:dCopy];
  v9 = v8;
  if (v8)
  {
    parent = v8;
    do
    {
      v11 = parent;
      v12 = [(NSArray *)self->_viewElements indexOfObject:parent];
      parent = [parent parent];
    }

    while (parent && v12 == 0x7FFFFFFFFFFFFFFFLL);
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCAA70] indexPathForItem:v12 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  stateCopy = state;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v12 = [collectionView cellForItemAtIndexPath:pathCopy];

  v13 = [v12 updateWithItemState:stateCopy context:self->_cellLayoutContext animated:animatedCopy];
  if (v13)
  {
    v14 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [pathCopy item]);
    [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v14];
  }

  return v13;
}

- (void)willAppearInContext:(id)context
{
  v25[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration registerReusableClassesForCollectionView:collectionView];
  v6 = self->_cellLayoutContext;
  v7 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  v9 = self->_cellLayoutContext;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKUIGridViewElementPageSectionConfiguration showsEditMode](self->_configuration, "showsEditMode")}];
  [(SKUIViewElementLayoutContext *)v9 setAggregateValue:v10 forKey:0x28280D5A8];

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x28280A728];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:&unk_2828D2DE0 forKey:0x282804A28];
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  -[SKUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [viewElement elementType]);
  if ([(SKUIGridViewElementPageSection *)self _containsOnlyShelfElements])
  {
    [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x28280B748];
  }

  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration setCellLayoutContext:self->_cellLayoutContext];
  [(SKUIGridViewElementPageSection *)self _resetLayoutProperties];
  [(SKUIGridViewElementPageSection *)self _requestLayoutForCells];
  pageComponent2 = [(SKUIStorePageSection *)self pageComponent];
  viewElement2 = [pageComponent2 viewElement];
  style = [viewElement2 style];
  ikBackgroundColor = [style ikBackgroundColor];

  if (ikBackgroundColor && [ikBackgroundColor colorType] == 3)
  {
    v17 = [ikBackgroundColor copy];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v17;

    v19 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v25[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    indexPathsForBackgroundItems = self->_indexPathsForBackgroundItems;
    self->_indexPathsForBackgroundItems = v20;
  }

  else
  {
    v22 = self->_backgroundColor;
    self->_backgroundColor = 0;

    v23 = self->_indexPathsForBackgroundItems;
    self->_indexPathsForBackgroundItems = 0;
  }

  v24.receiver = self;
  v24.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v24 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  cellLayoutContext = self->_cellLayoutContext;
  coordinatorCopy = coordinator;
  [(SKUIViewElementLayoutContext *)cellLayoutContext invalidateAllEditorialLayouts];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setActivePageWidth:width];
  [(SKUIGridViewElementPageSection *)self _resetLayoutProperties];
  [(SKUIGridViewElementPageSection *)self _requestLayoutForCells];
  v9.receiver = self;
  v9.super_class = SKUIGridViewElementPageSection;
  [(SKUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)_setContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SKUIGridViewElementPageSection;
  contextCopy = context;
  [(SKUIStorePageSection *)&v5 _setContext:contextCopy];
  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration setPageSectionContext:contextCopy, v5.receiver, v5.super_class];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
  }
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SKUIGridViewElementPageSection_artworkRequest_didLoadImage___block_invoke;
  v13[3] = &unk_2781FF9B0;
  v14 = collectionView;
  v15 = imageCopy;
  v16 = requestCopy;
  selfCopy = self;
  v10 = requestCopy;
  v11 = imageCopy;
  v12 = collectionView;
  [(SKUIGridViewElementPageSection *)self _enumerateVisibleViewElementsUsingBlock:v13];
}

void __62__SKUIGridViewElementPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 elementType];
  v6 = (v5 - 14) > 0x34 || ((1 << (v5 - 14)) & 0x10003C00000001) == 0;
  if (!v6 || v5 == 154 || v5 == 152)
  {
    v7 = [*(a1 + 32) cellForItemAtIndexPath:v8];
    [v7 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 56) + 96)];
  }
}

- (id)gridViewElementPageSectionConfiguration:(id)configuration viewElementForIndexPath:(id)path
{
  item = [path item];
  if (item >= [(NSArray *)self->_viewElements count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_viewElements objectAtIndex:item];
  }

  return v6;
}

- (BOOL)_containsOnlyShelfElements
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_viewElements;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v10 + 1) + 8 * v6);
      if ([v7 elementType] != 66 || objc_msgSend(v7, "lockupViewType") != 4)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v8 = 1;
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)_enumerateVisibleViewElementsUsingBlock:(id)block
{
  blockCopy = block;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  sectionIndex = [(SKUIStorePageSection *)self sectionIndex];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__SKUIGridViewElementPageSection__enumerateVisibleViewElementsUsingBlock___block_invoke;
  v10[3] = &unk_2781FF9D8;
  v11 = blockCopy;
  v12 = sectionIndex;
  v10[4] = self;
  v9 = blockCopy;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v10];
}

void __74__SKUIGridViewElementPageSection__enumerateVisibleViewElementsUsingBlock___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if ([v8 section] == a1[6])
  {
    v6 = a1[5];
    v7 = [*(a1[4] + 160) objectAtIndex:{objc_msgSend(v8, "item")}];
    (*(v6 + 16))(v6, v8, v7, a4);
  }
}

- (void)_reloadViewElementProperties
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  -[SKUIGridViewElementPageSectionConfiguration setRendersWithPerspective:](self->_configuration, "setRendersWithPerspective:", [viewElement rendersWithPerspective]);
  flattenedChildren = [viewElement flattenedChildren];
  viewElements = self->_viewElements;
  self->_viewElements = flattenedChildren;

  [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration updateStylePropertiesForGridViewElement:viewElement gridItemViewElements:self->_viewElements numberOfGridItems:[(NSArray *)self->_viewElements count]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionFeature = [viewElement collectionFeature];
    [collectionFeature setCollectionTarget:self];
  }
}

- (void)_requestLayoutForCells
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_viewElements;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SKUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_resetLayoutProperties
{
  configuration = self->_configuration;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [(SKUIGridViewElementPageSectionConfiguration *)configuration updateLayoutPropertiesForGridViewElement:viewElement];
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGridViewElementPageSection initWithPageComponent:]";
}

@end