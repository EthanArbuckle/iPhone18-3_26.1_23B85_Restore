@interface SKUIReviewListPageSection
- (BOOL)collectionViewShouldHighlightItemAtIndexPath:(id)path;
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUIReviewListPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)_contentInsetForReviewIndex:(int64_t)index;
- (id)_contextActionRegistrationKeyWithCell:(id)cell indexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (int64_t)numberOfCells;
- (void)_requestCellLayout;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)registerContextActionsForCell:(id)cell indexPath:(id)path viewController:(id)controller;
- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason;
- (void)unregisterContextActionsForCell:(id)cell indexPath:(id)path viewController:(id)controller;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIReviewListPageSection

- (SKUIReviewListPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewListPageSection initWithPageComponent:];
  }

  v9.receiver = self;
  v9.super_class = SKUIReviewListPageSection;
  v5 = [(SKUIStorePageSection *)&v9 initWithPageComponent:componentCopy];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    contextActionsRegistration = v5->_contextActionsRegistration;
    v5->_contextActionsRegistration = dictionary;
  }

  return v5;
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pathCopy = path;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  pageComponent2 = [(SKUIStorePageSection *)self pageComponent];
  viewElement2 = [pageComponent2 viewElement];
  items = [viewElement2 items];
  item = [pathCopy item];

  v14 = [items objectAtIndex:item];

  [sessionCopy addItemViewElement:v14];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  context = [(SKUIStorePageSection *)self context];
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  items = [viewElement items];
  v10 = [items objectAtIndex:item];

  collectionView = [context collectionView];
  v12 = [collectionView dequeueReusableCellWithReuseIdentifier:0x28280AAC8 forIndexPath:pathCopy];

  [v12 setSeparatorStyle:5];
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [v12 setSeparatorColor:v13];

  [context activePageWidth];
  v15 = v14 + -30.0;
  [(SKUIReviewListPageSection *)self _contentInsetForReviewIndex:item];
  [v12 setContentInset:?];
  [v12 reloadWithViewElement:v10 width:self->_cellLayoutContext context:v15];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__SKUIReviewListPageSection_cellForIndexPath___block_invoke;
  v29[3] = &unk_2781FE390;
  v16 = v10;
  v34 = v15;
  v30 = v16;
  selfCopy = self;
  v17 = context;
  v32 = v17;
  v18 = pathCopy;
  v33 = v18;
  [v12 setDescriptionTapAction:v29];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__SKUIReviewListPageSection_cellForIndexPath___block_invoke_2;
  v23[3] = &unk_2781FE390;
  v28 = v15;
  v24 = v16;
  selfCopy2 = self;
  v26 = v17;
  v27 = v18;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  [v12 setResponseDescriptionTapAction:v23];

  return v12;
}

void __46__SKUIReviewListPageSection_cellForIndexPath___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) expandableLabelElementForWidth:*(*(a1 + 40) + 88) context:*(a1 + 64)];
  if (v2)
  {
    [*(*(a1 + 40) + 88) expandEditorialForLabelElement:v2];
    v3 = [*(a1 + 48) collectionView];
    v5[0] = *(a1 + 56);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [v3 reloadItemsAtIndexPaths:v4];
  }
}

void __46__SKUIReviewListPageSection_cellForIndexPath___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__60;
  v10 = __Block_byref_object_dispose__60;
  v11 = 0;
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SKUIReviewListPageSection_cellForIndexPath___block_invoke_6;
  v5[3] = &unk_2781FC1F0;
  v5[6] = *(a1 + 64);
  v5[4] = *(a1 + 40);
  v5[5] = &v6;
  [v2 enumerateChildrenUsingBlock:v5];
  if (v7[5])
  {
    [*(*(a1 + 40) + 88) expandEditorialForLabelElement:?];
    v3 = [*(a1 + 48) collectionView];
    v12[0] = *(a1 + 56);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v3 reloadItemsAtIndexPaths:v4];
  }

  _Block_object_dispose(&v6, 8);
}

void __46__SKUIReviewListPageSection_cellForIndexPath___block_invoke_6(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ([v8 elementType] == 102)
  {
    v5 = [v8 expandableLabelElementForWidth:*(*(a1 + 32) + 88) context:*(a1 + 48)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  v7 = v6;

  item = [pathCopy item];
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  items = [viewElement items];
  v12 = [items objectAtIndex:item];

  [SKUIReviewCollectionViewCell sizeThatFitsWidth:v12 viewElement:self->_cellLayoutContext context:v7 + -30.0];
  v14 = v13 + 15.0;

  v15 = v7;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  items = [viewElement items];
  item = [pathCopy item];

  v9 = [items objectAtIndex:item];

  [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (BOOL)collectionViewShouldHighlightItemAtIndexPath:(id)path
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  attributes = [viewElement attributes];
  v6 = [attributes valueForKey:@"highlight"];

  if ([v6 length])
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  items = [viewElement items];
  v8 = [items count];

  indexPath = [attributesCopy indexPath];
  item = [indexPath item];

  v11 = v8 - 1;
  if (item < 1 || item >= v11)
  {
    v13 = 5;
    if (!item)
    {
      v13 = 13;
    }

    if (item == v11)
    {
      v12 = v13 | 0x20;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = 21;
  }

  [attributesCopy setPosition:v12];
  v14.receiver = self;
  v14.super_class = SKUIReviewListPageSection;
  [(SKUIStorePageSection *)&v14 collectionViewWillApplyLayoutAttributes:attributesCopy];
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];
  pageComponent2 = [(SKUIStorePageSection *)self pageComponent];
  viewElement2 = [pageComponent2 viewElement];
  items = [viewElement2 items];
  v12 = [items objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  [activeMetricsImpressionSession beginActiveImpressionForViewElement:v12];
  v13.receiver = self;
  v13.super_class = SKUIReviewListPageSection;
  [(SKUIStorePageSection *)&v13 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)registerContextActionsForCell:(id)cell indexPath:(id)path viewController:(id)controller
{
  cellCopy = cell;
  pathCopy = path;
  controllerCopy = controller;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  items = [viewElement items];
  v14 = [items objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dialogTemplate = [v14 dialogTemplate];

    if (dialogTemplate)
    {
      v16 = [(SKUIReviewListPageSection *)self _contextActionRegistrationKeyWithCell:cellCopy indexPath:pathCopy];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __84__SKUIReviewListPageSection_registerContextActionsForCell_indexPath_viewController___block_invoke;
      v19[3] = &unk_2781FE3B8;
      v20 = v14;
      v17 = [controllerCopy registerForPreviewingFromSourceView:cellCopy handler:v19];
      contextActionsRegistration = [(SKUIReviewListPageSection *)self contextActionsRegistration];
      [contextActionsRegistration setObject:v17 forKeyedSubscript:v16];
    }
  }
}

SKUIContextActionsConfiguration *__84__SKUIReviewListPageSection_registerContextActionsForCell_indexPath_viewController___block_invoke(uint64_t a1)
{
  v2 = [SKUIContextActionsConfiguration alloc];
  v3 = [*(a1 + 32) dialogTemplate];
  v4 = [(SKUIContextActionsConfiguration *)v2 initWithDialogTemplate:v3];

  return v4;
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
  items = [viewElement items];
  if (item < [items count])
  {
    v11 = [items objectAtIndex:item];

    [activeMetricsImpressionSession endActiveImpressionForViewElement:v11];
    viewElement = v11;
  }

  v12.receiver = self;
  v12.super_class = SKUIReviewListPageSection;
  [(SKUIStorePageSection *)&v12 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)unregisterContextActionsForCell:(id)cell indexPath:(id)path viewController:(id)controller
{
  controllerCopy = controller;
  v8 = [(SKUIReviewListPageSection *)self _contextActionRegistrationKeyWithCell:cell indexPath:path];
  contextActionsRegistration = [(SKUIReviewListPageSection *)self contextActionsRegistration];
  v10 = [contextActionsRegistration objectForKeyedSubscript:v8];

  if (v10)
  {
    [controllerCopy unregisterForPreviewing:v10];
    contextActionsRegistration2 = [(SKUIReviewListPageSection *)self contextActionsRegistration];
    [contextActionsRegistration2 removeObjectForKey:v8];
  }
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  contextCopy = context;
  providerCopy = provider;
  [(SKUIReviewListPageSection *)self _requestCellLayout];
  v8.receiver = self;
  v8.super_class = SKUIReviewListPageSection;
  [(SKUIStorePageSection *)&v8 entityProvider:providerCopy didInvalidateWithContext:contextCopy];
}

- (int64_t)numberOfCells
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  items = [viewElement items];
  v5 = [items count];

  return v5;
}

- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v7)
  {
    item = [pathCopy item];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    items = [viewElement items];

    [context activePageWidth];
    v13 = v12 + -30.0;
    [(SKUIReviewListPageSection *)self _contentInsetForReviewIndex:item];
    [v7 setContentInset:?];
    v14 = [items objectAtIndex:item];
    [v7 reloadWithViewElement:v14 width:self->_cellLayoutContext context:v13];
  }
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x28280AAC8];
  v6 = self->_cellLayoutContext;
  v7 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  -[SKUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [viewElement elementType]);
  [(SKUIReviewListPageSection *)self _requestCellLayout];
  v11.receiver = self;
  v11.super_class = SKUIReviewListPageSection;
  [(SKUIStorePageSection *)&v11 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  cellLayoutContext = self->_cellLayoutContext;
  coordinatorCopy = coordinator;
  [(SKUIViewElementLayoutContext *)cellLayoutContext invalidateAllEditorialLayouts];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setActivePageWidth:width];
  [(SKUIReviewListPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SKUIReviewListPageSection;
  [(SKUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (id)_contextActionRegistrationKeyWithCell:(id)cell indexPath:(id)path
{
  v5 = MEMORY[0x277CCABB0];
  pathCopy = path;
  v7 = [cell hash];
  v8 = [pathCopy hash];

  v9 = [v5 numberWithUnsignedInteger:v8 + v7];
  stringValue = [v9 stringValue];

  return stringValue;
}

- (UIEdgeInsets)_contentInsetForReviewIndex:(int64_t)index
{
  v3 = 15.0;
  if (!index)
  {
    v3 = 0.0;
  }

  v4 = 15.0;
  v5 = 15.0;
  v6 = 15.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_requestCellLayout
{
  v20 = *MEMORY[0x277D85DE8];
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  items = [viewElement items];
  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  v8 = v7;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = items;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = v8 + -30.0;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v9);
        }

        [SKUIReviewCollectionViewCell requestLayoutForViewElement:*(*(&v15 + 1) + 8 * v14++) width:self->_cellLayoutContext context:v12, v15];
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewListPageSection initWithPageComponent:]";
}

@end