@interface SKUIDividerPageSection
- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated;
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUIDividerPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)sectionContentInset;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (void)_enumerateVisibleCellsUsingBlock:(id)block;
- (void)_requestCellLayout;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIDividerPageSection

- (SKUIDividerPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDividerPageSection initWithPageComponent:];
  }

  v7.receiver = self;
  v7.super_class = SKUIDividerPageSection;
  v5 = [(SKUIStorePageSection *)&v7 initWithPageComponent:componentCopy];

  return v5;
}

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIDividerPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  style = [viewElement style];

  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v10 = color;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUIDividerPageSection;
    v10 = [(SKUIStorePageSection *)&v13 backgroundColorForIndexPath:pathCopy];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  dividerTitle = [pageComponent dividerTitle];
  viewElement = [pageComponent viewElement];
  [context activePageWidth];
  v10 = v9;
  text = [viewElement text];

  if (text)
  {
    collectionView = [context collectionView];
    v13 = [collectionView dequeueReusableCellWithReuseIdentifier:0x282802548 forIndexPath:pathCopy];

    [v13 reloadWithViewElement:viewElement width:self->_layoutContext context:v10];
    v14 = 0.0;
LABEL_5:
    [v13 setTopEdgeInset:v14];
    goto LABEL_6;
  }

  collectionView2 = [context collectionView];
  v16 = collectionView2;
  if (dividerTitle)
  {
    v13 = [collectionView2 dequeueReusableCellWithReuseIdentifier:0x282802548 forIndexPath:pathCopy];

    [v13 reloadWithViewElement:0 width:self->_layoutContext context:v10];
    [v13 setDividerTitle:dividerTitle];
    colorScheme = [context colorScheme];
    [v13 setColoringWithColorScheme:colorScheme];

    v14 = 15.0;
    goto LABEL_5;
  }

  v13 = [collectionView2 dequeueReusableCellWithReuseIdentifier:0x282812808 forIndexPath:pathCopy];

  [v13 reloadWithViewElement:viewElement width:self->_layoutContext context:v10];
  if (viewElement)
  {
    if ([viewElement dividerType] == 2)
    {
      [v13 setDividerType:2];
      [SKUIPageTitledDividerCollectionViewCell viewElementInsetDividerHeight:viewElement];
      [v13 setDividerHeight:?];
      style = [viewElement style];
      ikColor = [style ikColor];

      color = [ikColor color];
      [v13 setInsetColor:color];
    }

    else
    {
      if ([viewElement dividerType] != 1)
      {
        [v13 setDividerType:0];
        v23 = 15.0;
        goto LABEL_17;
      }

      [v13 setDividerType:1];
    }

    v23 = 0.0;
LABEL_17:
    style2 = [viewElement style];
    [v13 setColoringWithStyle:style2];
    goto LABEL_18;
  }

  style2 = [context colorScheme];
  [v13 setColoringWithColorScheme:style2];
  v23 = 15.0;
LABEL_18:

  [v13 setLeftEdgeInset:v23];
  [v13 setRightEdgeInset:0.0];
  [v13 setVerticalAlignment:0];
LABEL_6:

  return v13;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5;

  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  if (viewElement)
  {
    [SKUIPageTitledDividerCollectionViewCell sizeThatFitsWidth:viewElement viewElement:self->_layoutContext context:v6];
    v10 = v9;
  }

  else
  {
    dividerTitle = [pageComponent dividerTitle];
    layoutContext = self->_layoutContext;
    if (dividerTitle)
    {
      [SKUIPageTitledDividerCollectionViewCell sizeThatFitsWidth:dividerTitle dividerTitle:layoutContext context:v6];
      if (v13 >= 47.0)
      {
        v10 = v13;
      }

      else
      {
        v10 = 47.0;
      }
    }

    else
    {
      [SKUIPageDividerCollectionViewCell sizeThatFitsWidth:0 viewElement:layoutContext context:v6];
      v10 = v14;
    }
  }

  v15 = v6;
  v16 = ceil(v10);
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SKUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SKUIDividerPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SKUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SKUIDividerPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (UIEdgeInsets)sectionContentInset
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated
{
  pathCopy = path;
  stateCopy = state;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __69__SKUIDividerPageSection_updateCellWithIndexPath_itemState_animated___block_invoke;
  v16 = &unk_2781FCCC0;
  v10 = stateCopy;
  v17 = v10;
  selfCopy = self;
  animatedCopy = animated;
  v19 = &v21;
  [(SKUIDividerPageSection *)self _enumerateVisibleCellsUsingBlock:&v13];
  if (*(v22 + 24) == 1)
  {
    [(SKUIDividerPageSection *)self _requestCellLayout:v13];
    v11 = *(v22 + 24);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v11 & 1;
}

void __69__SKUIDividerPageSection_updateCellWithIndexPath_itemState_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2828E62D0])
  {
    *(*(*(a1 + 48) + 8) + 24) = (*(*(*(a1 + 48) + 8) + 24) | [v3 updateWithItemState:*(a1 + 32) context:*(*(a1 + 40) + 88) animated:*(a1 + 56)]) & 1;
  }
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282812808];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282802548];
  v6 = self->_layoutContext;
  [(SKUIViewElementLayoutContext *)v6 setArtworkRequestDelegate:0];
  v7 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  layoutContext = self->_layoutContext;
  self->_layoutContext = v7;

  [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
  [(SKUIDividerPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SKUIDividerPageSection;
  [(SKUIStorePageSection *)&v9 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  layoutContext = self->_layoutContext;
  coordinatorCopy = coordinator;
  [(SKUIViewElementLayoutContext *)layoutContext invalidateAllEditorialLayouts];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setActivePageWidth:width];
  [(SKUIDividerPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SKUIDividerPageSection;
  [(SKUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__SKUIDividerPageSection_artworkRequest_didLoadImage___block_invoke;
  v10[3] = &unk_2781FCCE8;
  v11 = imageCopy;
  v12 = requestCopy;
  selfCopy = self;
  v8 = requestCopy;
  v9 = imageCopy;
  [(SKUIDividerPageSection *)self _enumerateVisibleCellsUsingBlock:v10];
}

void __54__SKUIDividerPageSection_artworkRequest_didLoadImage___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2828E62D0])
  {
    [v3 setImage:a1[4] forArtworkRequest:a1[5] context:*(a1[6] + 88)];
  }
}

- (void)_enumerateVisibleCellsUsingBlock:(id)block
{
  blockCopy = block;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  visibleCells = [collectionView visibleCells];
  sectionIndex = [(SKUIStorePageSection *)self sectionIndex];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SKUIDividerPageSection__enumerateVisibleCellsUsingBlock___block_invoke;
  v11[3] = &unk_2781FCD10;
  v13 = blockCopy;
  v14 = sectionIndex;
  v12 = collectionView;
  v9 = blockCopy;
  v10 = collectionView;
  [visibleCells enumerateObjectsUsingBlock:v11];
}

void __59__SKUIDividerPageSection__enumerateVisibleCellsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) indexPathForCell:?];
  v4 = v3;
  if (v3 && [v3 section] == *(a1 + 48))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_requestCellLayout
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5;

  v7 = viewElement;
  if (viewElement)
  {
    [SKUIPageTitledDividerCollectionViewCell requestLayoutForViewElement:viewElement width:self->_layoutContext context:v6];
    v7 = viewElement;
  }
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDividerPageSection initWithPageComponent:]";
}

@end