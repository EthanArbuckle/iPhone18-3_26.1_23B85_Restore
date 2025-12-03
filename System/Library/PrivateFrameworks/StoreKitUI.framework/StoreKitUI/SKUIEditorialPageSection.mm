@interface SKUIEditorialPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUIEditorialPageSection)initWithPageComponent:(id)component;
- (id)_colorScheme;
- (id)_editorialLayout;
- (id)cellForIndexPath:(id)path;
- (int64_t)applyUpdateType:(int64_t)type;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIEditorialPageSection

- (SKUIEditorialPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIEditorialPageSection initWithPageComponent:];
  }

  v7.receiver = self;
  v7.super_class = SKUIEditorialPageSection;
  v5 = [(SKUIStorePageSection *)&v7 initWithPageComponent:componentCopy];

  return v5;
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (int64_t)applyUpdateType:(int64_t)type
{
  editorialLayout = self->_editorialLayout;
  self->_editorialLayout = 0;

  colorScheme = self->_colorScheme;
  self->_colorScheme = 0;

  self->_hasValidColorScheme = 0;
  v8.receiver = self;
  v8.super_class = SKUIEditorialPageSection;
  return [(SKUIStorePageSection *)&v8 applyUpdateType:type];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:0x282808E48 forIndexPath:pathCopy];

  layout = [v7 layout];
  _colorScheme = [(SKUIEditorialPageSection *)self _colorScheme];
  [layout setColoringWithColorScheme:_colorScheme];

  [layout resetContentInset];
  if (![(SKUIStorePageSection *)self isTopSection])
  {
    [layout contentInset];
    context2 = [(SKUIStorePageSection *)self context];
    [context2 horizontalPadding];
    v12 = v11;

    context3 = [(SKUIStorePageSection *)self context];
    [context3 horizontalPadding];
    v15 = v14;

    [layout setContentInset:{0.0, v15, 0.0, v12}];
  }

  _editorialLayout = [(SKUIEditorialPageSection *)self _editorialLayout];
  [layout applyEditorialLayout:_editorialLayout withOrientation:0 expanded:self->_isExpanded];

  textBoxView = [layout textBoxView];
  parentViewController = [context parentViewController];
  clientContext = [parentViewController clientContext];
  v20 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"MORE_BUTTON"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
  }
  v21 = ;
  [textBoxView setMoreButtonTitle:v21];

  if (self->_isExpanded)
  {
    maximumBodyLines = 0;
  }

  else
  {
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    maximumBodyLines = [pageComponent maximumBodyLines];
  }

  [textBoxView setNumberOfVisibleLines:maximumBodyLines];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5;

  _editorialLayout = [(SKUIEditorialPageSection *)self _editorialLayout];
  [_editorialLayout layoutHeightForOrientation:0 expanded:self->_isExpanded];
  v9 = v8;
  v10 = [_editorialLayout bodyTextLayoutForOrientation:0];
  v11 = [_editorialLayout titleTextLayoutForOrientation:0];
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v9 = v9 + 17.0;
  }

  v13 = v6;
  v14 = v9;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  v10[1] = *MEMORY[0x277D85DE8];
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];

  _editorialLayout = [(SKUIEditorialPageSection *)self _editorialLayout];
  v7 = [_editorialLayout bodyTextLayoutForOrientation:0];

  if (!self->_isExpanded && [v7 requiresTruncation])
  {
    self->_isExpanded = 1;
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v10[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [collectionView reloadItemsAtIndexPaths:v9];
  }
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
  v9.super_class = SKUIEditorialPageSection;
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
  v9.super_class = SKUIEditorialPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v11 = [collectionView cellForItemAtIndexPath:pathCopy];

  v8 = v11;
  if (v11)
  {
    layout = [v11 layout];
    _editorialLayout = [(SKUIEditorialPageSection *)self _editorialLayout];
    [layout applyEditorialLayout:_editorialLayout withOrientation:0 expanded:self->_isExpanded];

    v8 = v11;
  }
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  colorScheme = self->_colorScheme;
  self->_colorScheme = 0;

  self->_hasValidColorScheme = 0;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282808E48];

  textLayoutCache = [contextCopy textLayoutCache];
  layoutCache = [(SKUIEditorialLayout *)self->_editorialLayout layoutCache];

  if (layoutCache != textLayoutCache)
  {
    editorialLayout = self->_editorialLayout;
    self->_editorialLayout = 0;
  }

  _editorialLayout = [(SKUIEditorialPageSection *)self _editorialLayout];
  [_editorialLayout enqueueLayoutRequests];

  v11 = self->_layoutContext;
  v12 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v11];
  layoutContext = self->_layoutContext;
  self->_layoutContext = v12;

  v14.receiver = self;
  v14.super_class = SKUIEditorialPageSection;
  [(SKUIStorePageSection *)&v14 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  editorialLayout = self->_editorialLayout;
  self->_editorialLayout = 0;
  coordinatorCopy = coordinator;

  _editorialLayout = [(SKUIEditorialPageSection *)self _editorialLayout];
  [_editorialLayout enqueueLayoutRequests];

  v10.receiver = self;
  v10.super_class = SKUIEditorialPageSection;
  [(SKUIStorePageSection *)&v10 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (id)_colorScheme
{
  if (!self->_hasValidColorScheme)
  {
    self->_hasValidColorScheme = 1;
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    style = [viewElement style];

    tintColor = [(SKUIViewElementLayoutContext *)self->_layoutContext tintColor];
    v7 = SKUIViewElementPlainColorWithStyle(style, tintColor);

    if (v7)
    {
      v8 = objc_alloc_init(SKUIColorScheme);
      colorScheme = self->_colorScheme;
      self->_colorScheme = v8;

      [(SKUIColorScheme *)self->_colorScheme setPrimaryTextColor:v7];
    }

    else
    {
      context = [(SKUIStorePageSection *)self context];
      colorScheme = [context colorScheme];
      v12 = self->_colorScheme;
      self->_colorScheme = colorScheme;
    }
  }

  v13 = self->_colorScheme;

  return v13;
}

- (id)_editorialLayout
{
  editorialLayout = self->_editorialLayout;
  if (!editorialLayout)
  {
    context = [(SKUIStorePageSection *)self context];
    v5 = [SKUIEditorialLayout alloc];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    context2 = [(SKUIStorePageSection *)self context];
    textLayoutCache = [context2 textLayoutCache];
    v9 = [(SKUIEditorialLayout *)v5 initWithEditorial:pageComponent layoutCache:textLayoutCache];
    v10 = self->_editorialLayout;
    self->_editorialLayout = v9;

    v11 = self->_editorialLayout;
    [context activePageWidth];
    v13 = v12;
    context3 = [(SKUIStorePageSection *)self context];
    [context3 horizontalPadding];
    [(SKUIEditorialLayout *)v11 setLayoutWidth:0 forOrientation:v13 + v15 * -2.0];

    editorialLayout = self->_editorialLayout;
  }

  return editorialLayout;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIEditorialPageSection initWithPageComponent:]";
}

@end