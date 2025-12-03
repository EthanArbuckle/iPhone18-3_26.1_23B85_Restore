@interface SKUITracklistPageSection
- (BOOL)requestLayoutWithReloadReason:(int64_t)reason;
- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated;
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUITracklistPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)sectionContentInset;
- (double)_widthForButtonElements:(id)elements;
- (id)_columnData;
- (id)_representativeStringForViewElement:(id)element;
- (id)_viewElementForIndex:(int64_t)index;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (id)firstAppearanceIndexPath;
- (id)relevantEntityProviders;
- (int64_t)applyUpdateType:(int64_t)type;
- (int64_t)numberOfCells;
- (void)_enumerateVisibleViewElementsUsingBlock:(id)block;
- (void)_reloadEntityProvider;
- (void)_requestCellLayoutWithColumnData:(id)data;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillScrollToOffset:(CGPoint)offset visibleRange:(SKUIIndexPathRange *)range;
- (void)dealloc;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)getModalSourceViewForViewElement:(id)element completionBlock:(id)block;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUITracklistPageSection

- (SKUITracklistPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITracklistPageSection initWithPageComponent:];
  }

  v8.receiver = self;
  v8.super_class = SKUITracklistPageSection;
  v5 = [(SKUIStorePageSection *)&v8 initWithPageComponent:componentCopy];
  v6 = v5;
  if (v5)
  {
    [(SKUITracklistPageSection *)v5 _reloadEntityProvider];
  }

  return v6;
}

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUITracklistPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pathCopy = path;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  item = [pathCopy item];
  v11 = [(SKUITracklistPageSection *)self _viewElementForIndex:item];
  [sessionCopy addItemViewElement:v11];
}

- (int64_t)applyUpdateType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = SKUITracklistPageSection;
  v4 = [(SKUIStorePageSection *)&v6 applyUpdateType:type];
  if (v4 != 2)
  {
    [(SKUITracklistPageSection *)self _reloadEntityProvider];
  }

  return v4;
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[SKUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [pathCopy item]);
  style = [v5 style];

  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v9 = color;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SKUITracklistPageSection;
    v9 = [(SKUIStorePageSection *)&v12 backgroundColorForIndexPath:pathCopy];
  }

  v10 = v9;

  return v10;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  v6 = -[SKUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [pathCopy item]);
  v7 = v6;
  if (v6)
  {
    if ([v6 elementType] == 146)
    {
      collectionView = [context collectionView];
      v9 = &SKUITracklistLockupCollectionViewCellReuseIdentifier;
    }

    else
    {
      pageComponent = [(SKUIStorePageSection *)self pageComponent];
      viewElement = [pageComponent viewElement];
      header = [viewElement header];

      collectionView = [context collectionView];
      v9 = &SKUITracklistSectionHeaderReuseIdentifier;
      if (v7 == header)
      {
        v9 = &SKUITracklistHeaderReuseIdentifier;
      }
    }

    v11 = [collectionView dequeueReusableCellWithReuseIdentifier:*v9 forIndexPath:pathCopy];

    [context activePageWidth];
    [v11 reloadWithViewElement:v7 width:self->_cellLayoutContext context:v18 + -30.0];
  }

  else
  {
    collectionView2 = [context collectionView];
    v11 = [collectionView2 dequeueReusableCellWithReuseIdentifier:0x282812808 forIndexPath:pathCopy];

    pageComponent2 = [(SKUIStorePageSection *)self pageComponent];
    viewElement2 = [pageComponent2 viewElement];
    style = [viewElement2 style];
    [v11 setColoringWithStyle:style];

    [v11 setLeftEdgeInset:0.0];
    [v11 setRightEdgeInset:0.0];
    [v11 setVerticalAlignment:1];
  }

  return v11;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  v7 = v6;

  item = [pathCopy item];
  v9 = [(SKUITracklistPageSection *)self _viewElementForIndex:item];
  v10 = v9;
  if (v9)
  {
    if ([v9 elementType] == 146)
    {
      v11 = SKUITracklistLockupCollectionViewCell;
      cellLayoutContext = self->_cellLayoutContext;
    }

    else
    {
      pageComponent = [(SKUIStorePageSection *)self pageComponent];
      viewElement = [pageComponent viewElement];
      header = [viewElement header];

      cellLayoutContext = self->_cellLayoutContext;
      if (v10 == header)
      {
        v11 = SKUITracklistHeaderCollectionViewCell;
      }

      else
      {
        v11 = SKUITracklistSectionHeaderCollectionViewCell;
      }
    }

    [(__objc2_class *)v11 sizeThatFitsWidth:v10 viewElement:cellLayoutContext context:v7 + -30.0];
    v13 = v17;
  }

  else
  {
    v13 = 15.0;
  }

  v18 = v7;
  v19 = v13;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[SKUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [pathCopy item]);
  if ([v5 isEnabled])
  {
    context = [(SKUIStorePageSection *)self context];
    collectionView = [context collectionView];
    v8 = [collectionView cellForItemAtIndexPath:pathCopy];

    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __67__SKUITracklistPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke;
    v15 = &unk_2781FFC30;
    selfCopy = self;
    v17 = v8;
    v18 = pathCopy;
    v19 = v5;
    v9 = v8;
    [v19 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:&v12];
  }

  else
  {
    [v5 dispatchEvent:0x28280CC48 eventAttribute:0x28280CC68 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }

  v10 = [(SKUIStorePageSection *)self context:v12];
  collectionView2 = [v10 collectionView];
  [collectionView2 deselectItemAtIndexPath:pathCopy animated:0];
}

void __67__SKUITracklistPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke(uint64_t a1, char a2, char a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SKUITracklistPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2;
  block[3] = &unk_2781FFC08;
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 48);
  v14 = a2;
  v15 = a3;
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__SKUITracklistPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];
  v4 = [v3 indexPathForCell:*(a1 + 40)];

  if ([v4 isEqual:*(a1 + 48)] && (*(a1 + 64) != 1 || (*(a1 + 65) & 1) == 0) && objc_msgSend(*(a1 + 56), "elementType") == 146)
  {
    [*(a1 + 40) togglePreviewPlaybackAnimated:1];
  }
}

- (void)collectionViewWillScrollToOffset:(CGPoint)offset visibleRange:(SKUIIndexPathRange *)range
{
  y = offset.y;
  x = offset.x;
  numberOfCells = [(SKUITracklistPageSection *)self numberOfCells];
  if (self->_lastNeedsMoreCount < numberOfCells)
  {
    v9 = numberOfCells;
    v10 = *&range->var2;
    v17 = *&range->var0;
    v18 = v10;
    v11 = [(SKUIStorePageSection *)self itemRangeForIndexPathRange:&v17];
    if (v12 + v11 + 30 >= v9)
    {
      self->_lastNeedsMoreCount = v9;
      pageComponent = [(SKUIStorePageSection *)self pageComponent];
      viewElement = [pageComponent viewElement];
      [viewElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }
  }

  v16.receiver = self;
  v16.super_class = SKUITracklistPageSection;
  v15 = *&range->var2;
  v17 = *&range->var0;
  v18 = v15;
  [(SKUIStorePageSection *)&v16 collectionViewWillScrollToOffset:&v17 visibleRange:x, y];
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];
  v9 = -[SKUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [pathCopy item]);

  [activeMetricsImpressionSession beginActiveImpressionForViewElement:v9];
  v10.receiver = self;
  v10.super_class = SKUITracklistPageSection;
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
  v9 = -[SKUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [pathCopy item]);

  [activeMetricsImpressionSession endActiveImpressionForViewElement:v9];
  v10.receiver = self;
  v10.super_class = SKUITracklistPageSection;
  [(SKUIStorePageSection *)&v10 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  columnData = self->_columnData;
  contextCopy = context;
  providerCopy = provider;
  [(SKUITracklistPageSection *)self _requestCellLayoutWithColumnData:columnData];
  v9.receiver = self;
  v9.super_class = SKUITracklistPageSection;
  [(SKUIStorePageSection *)&v9 entityProvider:providerCopy didInvalidateWithContext:contextCopy];
}

- (id)firstAppearanceIndexPath
{
  numberOfCells = [(SKUITracklistPageSection *)self numberOfCells];
  if (numberOfCells < 1)
  {
    v7 = 0;
  }

  else
  {
    v4 = numberOfCells;
    v5 = 1;
    do
    {
      v6 = [(SKUITracklistPageSection *)self _viewElementForIndex:v5 - 1];
      if ([v6 elementType] == 146 && objc_msgSend(v6, "isSelected"))
      {
        v7 = [MEMORY[0x277CCAA70] indexPathForItem:v5 - 1 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        break;
      }
    }

    while (v5++ < v4);
  }

  return v7;
}

- (void)getModalSourceViewForViewElement:(id)element completionBlock:(id)block
{
  elementCopy = element;
  blockCopy = block;
  numberOfCells = [(SKUITracklistPageSection *)self numberOfCells];
  if (numberOfCells < 1)
  {
LABEL_5:
    v12 = 0;
  }

  else
  {
    v8 = numberOfCells;
    v9 = 0;
    while (1)
    {
      v10 = [(SKUITracklistPageSection *)self _viewElementForIndex:v9];
      v11 = [elementCopy isDescendentFromViewElement:v10];

      if (v11)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    v12 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    if (v12)
    {
      v13 = objc_alloc_init(SKUIModalSourceViewProvider);
      [(SKUIModalSourceViewProvider *)v13 setUserInfo:elementCopy];
      context = [(SKUIStorePageSection *)self context];
      collectionView = [context collectionView];
      v16 = [collectionView cellForItemAtIndexPath:v12];

      itmlID = [elementCopy itmlID];
      v18 = [v16 viewForElementIdentifier:itmlID];

      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v16;
      }

      [(SKUIModalSourceViewProvider *)v13 setOriginalSourceView:v19];

      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:
  blockCopy[2](blockCopy, v13);
}

- (int64_t)numberOfCells
{
  v20 = *MEMORY[0x277D85DE8];
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  header = [viewElement header];

  v5 = header != 0;
  tracks = [viewElement tracks];
  v7 = tracks;
  if (tracks)
  {
    v5 += [tracks count];
  }

  else
  {
    sections = [viewElement sections];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [sections countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(sections);
          }

          flattenedChildren = [*(*(&v15 + 1) + 8 * i) flattenedChildren];
          v5 += [flattenedChildren count];
        }

        v10 = [sections countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    if ([sections count] >= 2)
    {
      v5 = v5 + [sections count] - 1;
    }
  }

  return v5;
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  numberOfCells = [(SKUITracklistPageSection *)self numberOfCells];
  if (numberOfCells <= 29 && self->_lastNeedsMoreCount < numberOfCells)
  {
    self->_lastNeedsMoreCount = numberOfCells;
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    [viewElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  v8.receiver = self;
  v8.super_class = SKUITracklistPageSection;
  [(SKUIStorePageSection *)&v8 prefetchResourcesWithReason:reason];
}

- (id)relevantEntityProviders
{
  v7.receiver = self;
  v7.super_class = SKUITracklistPageSection;
  relevantEntityProviders = [(SKUIStorePageSection *)&v7 relevantEntityProviders];
  v4 = relevantEntityProviders;
  if (self->_entityProvider)
  {
    if (relevantEntityProviders)
    {
      v5 = [relevantEntityProviders setByAddingObject:?];

      v4 = v5;
    }

    else
    {
      v4 = [MEMORY[0x277CBEB98] setWithObject:?];
    }
  }

  return v4;
}

- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v7)
  {
    [context activePageWidth];
    v9 = v8;
    v10 = -[SKUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [pathCopy item]);
    [v7 reloadWithViewElement:v10 width:self->_cellLayoutContext context:v9 + -30.0];
  }
}

- (BOOL)requestLayoutWithReloadReason:(int64_t)reason
{
  if (reason != 2)
  {
    return 0;
  }

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __58__SKUITracklistPageSection_requestLayoutWithReloadReason___block_invoke;
  v19 = &unk_2781FFC80;
  selfCopy = self;
  v7 = v6;
  v21 = v7;
  [viewElement enumerateTracksUsingBlock:&v16];
  [(SKUITracklistPageSection *)self _widthForButtonElements:v7, v16, v17, v18, v19, selfCopy];
  v9 = v8;
  v10 = [(SKUITracklistColumnData *)self->_columnData columnForIdentifier:1];
  [v10 preferredWidth];
  v12 = v9 != v11;
  if (v9 != v11)
  {
    [v10 setPreferredWidth:v9];
    columnData = self->_columnData;
    context = [(SKUIStorePageSection *)self context];
    [context activePageWidth];
    [(SKUITracklistColumnData *)columnData adjustColumnsToFitWidth:?];

    [(SKUITracklistPageSection *)self _requestCellLayoutWithColumnData:self->_columnData];
  }

  return v12;
}

void __58__SKUITracklistPageSection_requestLayoutWithReloadReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 96);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SKUITracklistPageSection_requestLayoutWithReloadReason___block_invoke_2;
  v4[3] = &unk_2781FFC58;
  v5 = *(a1 + 40);
  [v3 enumerateColumnsForTrack:a2 usingBlock:v4];
}

void __58__SKUITracklistPageSection_requestLayoutWithReloadReason___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5 && [v6 columnIdentifier] == 1)
  {
    [*(a1 + 32) addObjectsFromArray:v5];
  }
}

- (UIEdgeInsets)sectionContentInset
{
  v22.receiver = self;
  v22.super_class = SKUITracklistPageSection;
  [(SKUIStorePageSection *)&v22 sectionContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v21 = 0;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  style = [viewElement style];
  v14 = SKUIViewElementPaddingForStyle(style, &v21);
  v16 = v15;

  if (v21)
  {
    v17 = v14;
  }

  else
  {
    v17 = v4;
  }

  if (v21)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  v19 = v6;
  v20 = v10;
  result.right = v20;
  result.bottom = v18;
  result.left = v19;
  result.top = v17;
  return result;
}

- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v12 = [collectionView cellForItemAtIndexPath:pathCopy];

  LOBYTE(animatedCopy) = [v12 updateWithItemState:stateCopy context:self->_cellLayoutContext animated:animatedCopy];
  return animatedCopy;
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282812808];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282813368];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUITracklistLockupCollectionViewCellReuseIdentifier"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282807848];
  columnData = self->_columnData;
  self->_columnData = 0;

  v7 = self->_cellLayoutContext;
  v8 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v7];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v8;

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  _columnData = [(SKUITracklistPageSection *)self _columnData];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:_columnData forKey:0x282806108];
  [contextCopy activePageWidth];
  [_columnData adjustColumnsToFitWidth:?];
  [(SKUITracklistPageSection *)self _requestCellLayoutWithColumnData:_columnData];
  v11.receiver = self;
  v11.super_class = SKUITracklistPageSection;
  [(SKUIStorePageSection *)&v11 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  columnData = self->_columnData;
  coordinatorCopy = coordinator;
  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  [(SKUITracklistColumnData *)columnData adjustColumnsToFitWidth:?];

  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setActivePageWidth:width];
  [(SKUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:self->_columnData forKey:0x282806108];
  [(SKUITracklistPageSection *)self _requestCellLayoutWithColumnData:self->_columnData];
  v10.receiver = self;
  v10.super_class = SKUITracklistPageSection;
  [(SKUIStorePageSection *)&v10 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SKUITracklistPageSection_artworkRequest_didLoadImage___block_invoke;
  v13[3] = &unk_2781FF9B0;
  v14 = collectionView;
  v15 = imageCopy;
  v16 = requestCopy;
  selfCopy = self;
  v10 = requestCopy;
  v11 = imageCopy;
  v12 = collectionView;
  [(SKUITracklistPageSection *)self _enumerateVisibleViewElementsUsingBlock:v13];
}

void __56__SKUITracklistPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForItemAtIndexPath:a2];
  [v3 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 56) + 88)];
}

- (id)_columnData
{
  columnData = self->_columnData;
  if (!columnData)
  {
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __39__SKUITracklistPageSection__columnData__block_invoke;
    v29[3] = &unk_2781FFCD0;
    v29[4] = self;
    v32 = v33;
    v8 = v6;
    v30 = v8;
    v9 = v7;
    v31 = v9;
    [viewElement enumerateTracksUsingBlock:v29];
    v10 = SKUIFontLimitedPreferredFontForTextStyle(20, 5);
    v11 = SKUIFontPreferredFontForTextStyle(5);
    columns = [(SKUITracklistColumnData *)self->_columnData columns];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __39__SKUITracklistPageSection__columnData__block_invoke_3;
    v22 = &unk_2781FFCF8;
    v13 = v9;
    v28 = v33;
    v23 = v13;
    selfCopy = self;
    v14 = v8;
    v25 = v14;
    v15 = v11;
    v26 = v15;
    v16 = v10;
    v27 = v16;
    [columns enumerateObjectsUsingBlock:&v19];

    header = [viewElement header];
    if (header)
    {
      [(SKUITracklistColumnData *)self->_columnData enumerateColumnsForHeader:header usingBlock:&__block_literal_global_51];
    }

    _Block_object_dispose(v33, 8);
    columnData = self->_columnData;
  }

  return columnData;
}

void __39__SKUITracklistPageSection__columnData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (!v5)
  {
    v6 = [[SKUITracklistColumnData alloc] initWithRepresentativeTrack:v3];
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;

    [*(*(a1 + 32) + 96) setInterColumnSpacing:15.0];
    [*(*(a1 + 32) + 96) setLeftEdgeInset:15.0];
    [*(*(a1 + 32) + 96) setRightEdgeInset:15.0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__SKUITracklistPageSection__columnData__block_invoke_2;
  v10[3] = &unk_2781FFCA8;
  v9 = *(a1 + 56);
  v10[4] = v4;
  v13 = v9;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  [v5 enumerateColumnsForTrack:v3 usingBlock:v10];
}

void __39__SKUITracklistPageSection__columnData__block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [a2 columnIdentifier];
  if (v8 == 1)
  {
    if (v7)
    {
      [*(a1 + 40) addObjectsFromArray:v7];
    }
  }

  else
  {
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a4];
      v16 = [*(a1 + 48) objectForKey:v9];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v17 = v7;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [*(a1 + 32) _representativeStringForViewElement:{*(*(&v25 + 1) + 8 * i), v25}];
            v23 = v22;
            if (v22)
            {
              if (!v16 || (v24 = [v22 length], v24 > objc_msgSend(v16, "length")))
              {
                [*(a1 + 48) setObject:v23 forKey:v9];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(a1 + 32) + 88) sizeForBadgeElement:*(*(&v29 + 1) + 8 * j)];
            v15 = *(*(a1 + 56) + 8);
            if (*(v15 + 24) >= v14)
            {
              v14 = *(v15 + 24);
            }

            *(v15 + 24) = v14;
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v11);
      }
    }
  }
}

void __39__SKUITracklistPageSection__columnData__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  v6 = [*(a1 + 32) objectForKey:v5];
  v7 = [v17 columnIdentifier];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_17;
      }

      [v17 setMaximumWidthFraction:0.3];
      [*(a1 + 40) _widthForButtonElements:*(a1 + 48)];
    }

    else
    {
      v13 = *(*(*(a1 + 72) + 8) + 24);
    }

    [v17 setPreferredWidth:v13];
  }

  else
  {
    if (v7 == 2)
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v14 = objc_alloc(MEMORY[0x277CBEAC0]);
      v9 = [v14 initWithObjectsAndKeys:{*(a1 + 56), *MEMORY[0x277D740A8], 0}];
      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v9];
      [v10 size];
      *&v15 = v15;
      v12 = ceilf(*&v15);
      goto LABEL_12;
    }

    if (v7 == 3)
    {
      v9 = objc_alloc_init(SKUIBarRatingView);
      [(SKUIBarRatingView *)v9 sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
      *&v16 = v16;
      [v17 setPreferredWidth:ceilf(*&v16)];
      goto LABEL_14;
    }

    if (v7 == 5 && v6)
    {
      v8 = objc_alloc(MEMORY[0x277CBEAC0]);
      v9 = [v8 initWithObjectsAndKeys:{*(a1 + 64), *MEMORY[0x277D740A8], 0}];
      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v9];
      [v10 size];
      v12 = ceil(v11);
LABEL_12:
      [v17 setPreferredWidth:v12];

LABEL_14:
    }
  }

LABEL_17:
}

void __39__SKUITracklistPageSection__columnData__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v4 = a3;
  if (([v10 sizesToFit] & 1) == 0)
  {
    [SKUITracklistHeaderCollectionViewCell sizeForHeaderTitleLabel:v4];
    v6 = v5;
    [v10 preferredWidth];
    v8 = v6;
    v9 = ceilf(v8);
    if (v7 < v9)
    {
      v7 = v9;
    }

    [v10 setPreferredWidth:v7];
  }
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
  v10[2] = __68__SKUITracklistPageSection__enumerateVisibleViewElementsUsingBlock___block_invoke;
  v10[3] = &unk_2781FFD40;
  v11 = blockCopy;
  v12 = sectionIndex;
  v10[4] = self;
  v9 = blockCopy;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v10];
}

void __68__SKUITracklistPageSection__enumerateVisibleViewElementsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 section] == *(a1 + 48))
  {
    v3 = [*(a1 + 32) _viewElementForIndex:{objc_msgSend(v4, "item")}];
    if (v3)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_reloadEntityProvider
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  explicitEntityProvider = [viewElement explicitEntityProvider];
  entityProvider = self->_entityProvider;
  if (entityProvider != explicitEntityProvider && ([(SKUIEntityProviding *)entityProvider isEqual:explicitEntityProvider]& 1) == 0)
  {
    objc_storeStrong(&self->_entityProvider, explicitEntityProvider);
  }
}

- (id)_representativeStringForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  string = 0;
  if (elementType > 89)
  {
    if (elementType == 90)
    {
      flattenedChildren = [elementCopy flattenedChildren];
      firstObject = [flattenedChildren firstObject];
      string = [(SKUITracklistPageSection *)self _representativeStringForViewElement:firstObject];

      goto LABEL_10;
    }

    if (elementType == 138)
    {
      flattenedChildren = elementCopy;
      labelViewStyle = [flattenedChildren labelViewStyle];
      string = 0;
      if (labelViewStyle <= 3 && labelViewStyle != 2)
      {
        text = [flattenedChildren text];
        string = [text string];
      }

      goto LABEL_10;
    }

    if (elementType != 141)
    {
      goto LABEL_11;
    }
  }

  else if ((elementType - 12) >= 2)
  {
    if (elementType != 80)
    {
      goto LABEL_11;
    }

    text2 = [elementCopy text];
    goto LABEL_9;
  }

  text2 = [elementCopy buttonText];
LABEL_9:
  flattenedChildren = text2;
  string = [text2 string];
LABEL_10:

LABEL_11:

  return string;
}

- (void)_requestCellLayoutWithColumnData:(id)data
{
  dataCopy = data;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  header = [viewElement header];
  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  v9 = v8;
  [dataCopy leftEdgeInset];
  v11 = v10;
  [dataCopy rightEdgeInset];
  v13 = v12;

  numberOfCells = [(SKUITracklistPageSection *)self numberOfCells];
  if (numberOfCells >= 1)
  {
    v15 = numberOfCells;
    v16 = 0;
    v17 = v9 - v11 - v13;
    v18 = vcvtps_s32_f32(v17);
    do
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [(SKUITracklistPageSection *)self _viewElementForIndex:v16];
      elementType = [v20 elementType];
      if (elementType == 146 || elementType == 48)
      {
        v22 = objc_opt_class();
        if (v22)
        {
          [v22 requestLayoutForViewElement:v20 width:self->_cellLayoutContext context:v18];
        }
      }

      objc_autoreleasePoolPop(v19);
      ++v16;
    }

    while (v15 != v16);
  }
}

- (id)_viewElementForIndex:(int64_t)index
{
  v21 = *MEMORY[0x277D85DE8];
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  header = [viewElement header];
  v7 = header;
  if (index >= 1 && header)
  {

    --index;
  }

  else if (header)
  {
    goto LABEL_24;
  }

  tracks = [viewElement tracks];
  v9 = tracks;
  if (tracks)
  {
    if (index >= [tracks count])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v9 objectAtIndex:index];
    }
  }

  else
  {
    [viewElement sections];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v19 = 0u;
    v7 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v10);
          }

          flattenedChildren = [*(*(&v16 + 1) + 8 * i) flattenedChildren];
          v14 = [flattenedChildren count];
          if (index <= v14)
          {
            if (index == v14)
            {
              v7 = 0;
            }

            else
            {
              v7 = [flattenedChildren objectAtIndex:index];
            }

            goto LABEL_22;
          }

          index += ~v14;
        }

        v7 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

LABEL_24:

  return v7;
}

- (double)_widthForButtonElements:(id)elements
{
  v54 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = elements;
  v3 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v3)
  {
    v33 = 0;
    v36 = 0;
    v32 = 0.0;
    v6 = 0.0;
    v31 = 0.0;
    goto LABEL_46;
  }

  v4 = v3;
  v5 = 0;
  v45 = 0;
  v46 = 0;
  v48 = *v50;
  v6 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v50 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v49 + 1) + 8 * i);
      itemIdentifier = [v8 itemIdentifier];
      if (itemIdentifier)
      {
        v10 = itemIdentifier;
        v11 = +[SKUIItemStateCenter defaultCenter];
        v12 = [v11 stateForItemWithIdentifier:v10];

        buyButtonDescriptor = [v8 buyButtonDescriptor];
        LODWORD(v11) = [buyButtonDescriptor canPersonalizeUsingItemState:v12];

        if (v11)
        {
          context = [(SKUIStorePageSection *)self context];
          clientContext = [context clientContext];
          v16 = [SKUIItemOfferButton localizedTitleForItemState:v12 clientContext:clientContext];

          goto LABEL_11;
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = 0;
LABEL_11:
      elementType = [v8 elementType];
      switch(elementType)
      {
        case 141:
          if ([SKUIStyledButton usesItemOfferAppearanceForButtonType:1 itemState:v12])
          {
            string2 = v16;
          }

          else
          {
            string2 = 0;
          }

          if (!v45)
          {
            buttonTitleStyle = [v8 buttonTitleStyle];
            whiteColor = buttonTitleStyle;
            if (!buttonTitleStyle)
            {
              buttonTitleStyle = [v8 style];
              v43 = buttonTitleStyle;
            }

            v45 = SKUIViewElementFontWithStyle(buttonTitleStyle);
            whiteColor2 = v43;
            if (!whiteColor)
            {
LABEL_28:
            }
          }

          break;
        case 50:
          buttonImage = [v8 buttonImage];
          [buttonImage size];
          v6 = v20;

LABEL_33:
          buttonText = [v8 buttonText];
          string = [buttonText string];

          v30 = [string length];
          if (v30 <= [v5 length])
          {
            string2 = 0;
          }

          else
          {
            string = string;

            string2 = 0;
            v5 = string;
          }

          goto LABEL_36;
        case 13:
          if (v16)
          {
            string2 = v16;
          }

          else
          {
            buttonText2 = [v8 buttonText];
            string2 = [buttonText2 string];
          }

          if ([v8 buttonViewType] == 3)
          {
            whiteColor = [MEMORY[0x277D75348] whiteColor];
            whiteColor2 = [MEMORY[0x277D75348] whiteColor];
            v25 = [SKUIItemOfferButton cloudImageWithTintColor:whiteColor arrowTintColor:whiteColor2];
            [v25 size];
            v6 = v26;

            goto LABEL_28;
          }

          break;
        default:
          goto LABEL_33;
      }

      if (!string2)
      {
        goto LABEL_33;
      }

      v27 = [string2 length];
      string = v46;
      if (v27 <= [v46 length])
      {
        goto LABEL_37;
      }

      string2 = string2;
      v46 = string2;
LABEL_36:

LABEL_37:
    }

    v4 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  }

  while (v4);
  v31 = 0.0;
  v32 = 0.0;
  v33 = v46;
  if (v46)
  {
    v34 = objc_alloc_init(SKUIItemOfferButton);
    [(SKUIItemOfferButton *)v34 setTitle:v46];
    [(SKUIItemOfferButton *)v34 sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    *&v35 = v35;
    v32 = ceilf(*&v35);
  }

  v36 = v45;
  if (v5)
  {
    if (!v45)
    {
      v36 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
    }

    v37 = objc_alloc(MEMORY[0x277CBEAC0]);
    v38 = [v37 initWithObjectsAndKeys:{v36, *MEMORY[0x277D740A8], 0}];
    v39 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v38];
    [v39 size];
    *&v40 = v40;
    v31 = ceilf(*&v40);
  }

LABEL_46:
  if (v32 >= v31)
  {
    v41 = v32;
  }

  else
  {
    v41 = v31;
  }

  if (v41 >= v6)
  {
    v6 = v41;
  }

  return v6;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITracklistPageSection initWithPageComponent:]";
}

@end