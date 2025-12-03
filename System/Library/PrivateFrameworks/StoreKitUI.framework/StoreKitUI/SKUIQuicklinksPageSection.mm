@interface SKUIQuicklinksPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUIQuicklinksPageSection)initWithPageComponent:(id)component;
- (id)_quicklinksViewController;
- (id)cellForIndexPath:(id)path;
- (void)dealloc;
- (void)quicklinksViewController:(id)controller didSelectLink:(id)link atIndex:(int64_t)index;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIQuicklinksPageSection

- (SKUIQuicklinksPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIQuicklinksPageSection initWithPageComponent:];
  }

  v7.receiver = self;
  v7.super_class = SKUIQuicklinksPageSection;
  v5 = [(SKUIStorePageSection *)&v7 initWithPageComponent:componentCopy];

  return v5;
}

- (void)dealloc
{
  [(SKUIQuicklinksViewController *)self->_quicklinksViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIQuicklinksPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUIQuicklinksPageSectionReuseIdentifier"];
  _quicklinksViewController = [(SKUIQuicklinksPageSection *)self _quicklinksViewController];
  collectionView2 = [contextCopy collectionView];

  [collectionView2 bounds];
  [_quicklinksViewController willTransitionToSize:0 withTransitionCoordinator:{v7, v8}];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SKUIQuicklinksPageSectionReuseIdentifier" forIndexPath:pathCopy];

  _quicklinksViewController = [(SKUIQuicklinksPageSection *)self _quicklinksViewController];
  view = [_quicklinksViewController view];

  contentChildView = [v7 contentChildView];

  if (view != contentChildView)
  {
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v7 setContentChildView:view];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [collectionView bounds];
  v7 = v6;

  _quicklinksViewController = [(SKUIQuicklinksPageSection *)self _quicklinksViewController];
  view = [_quicklinksViewController view];
  [view bounds];
  v11 = v10;

  v12 = v7;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)quicklinksViewController:(id)controller didSelectLink:(id)link atIndex:(int64_t)index
{
  controllerCopy = controller;
  linkCopy = link;
  v9 = [(SKUIStorePageSection *)self clickEventWithLink:linkCopy elementName:*MEMORY[0x277D6A4D0] index:index];
  if (v9)
  {
    [controllerCopy frameForLinkAtIndex:index];
    SKUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
    context = [(SKUIStorePageSection *)self context];
    metricsController = [context metricsController];
    [metricsController recordEvent:v9];
  }

  [(SKUIStorePageSection *)self showPageWithLink:linkCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  quicklinksViewController = self->_quicklinksViewController;
  coordinatorCopy = coordinator;
  [(SKUIQuicklinksViewController *)quicklinksViewController willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v9.receiver = self;
  v9.super_class = SKUIQuicklinksPageSection;
  [(SKUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (id)_quicklinksViewController
{
  quicklinksViewController = self->_quicklinksViewController;
  if (!quicklinksViewController)
  {
    context = [(SKUIStorePageSection *)self context];
    v5 = objc_alloc_init(SKUIQuicklinksViewController);
    v6 = self->_quicklinksViewController;
    self->_quicklinksViewController = v5;

    [(SKUIQuicklinksViewController *)self->_quicklinksViewController setDelegate:self];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    v8 = self->_quicklinksViewController;
    colorScheme = [context colorScheme];
    [(SKUIQuicklinksViewController *)v8 setColoringWithColorScheme:colorScheme];

    v10 = self->_quicklinksViewController;
    links = [pageComponent links];
    [(SKUIQuicklinksViewController *)v10 setLinks:links];

    v12 = self->_quicklinksViewController;
    title = [pageComponent title];
    [(SKUIQuicklinksViewController *)v12 setTitle:title];

    parentViewController = [context parentViewController];
    [parentViewController addChildViewController:self->_quicklinksViewController];

    quicklinksViewController = self->_quicklinksViewController;
  }

  return quicklinksViewController;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIQuicklinksPageSection initWithPageComponent:]";
}

@end