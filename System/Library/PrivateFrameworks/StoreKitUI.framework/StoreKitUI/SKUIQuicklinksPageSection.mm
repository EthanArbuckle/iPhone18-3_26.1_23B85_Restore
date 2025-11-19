@interface SKUIQuicklinksPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIQuicklinksPageSection)initWithPageComponent:(id)a3;
- (id)_quicklinksViewController;
- (id)cellForIndexPath:(id)a3;
- (void)dealloc;
- (void)quicklinksViewController:(id)a3 didSelectLink:(id)a4 atIndex:(int64_t)a5;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIQuicklinksPageSection

- (SKUIQuicklinksPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIQuicklinksPageSection initWithPageComponent:];
  }

  v7.receiver = self;
  v7.super_class = SKUIQuicklinksPageSection;
  v5 = [(SKUIStorePageSection *)&v7 initWithPageComponent:v4];

  return v5;
}

- (void)dealloc
{
  [(SKUIQuicklinksViewController *)self->_quicklinksViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIQuicklinksPageSection;
  [(SKUIStorePageSection *)&v3 dealloc];
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v9 = [v4 collectionView];
  [v9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUIQuicklinksPageSectionReuseIdentifier"];
  v5 = [(SKUIQuicklinksPageSection *)self _quicklinksViewController];
  v6 = [v4 collectionView];

  [v6 bounds];
  [v5 willTransitionToSize:0 withTransitionCoordinator:{v7, v8}];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SKUIQuicklinksPageSectionReuseIdentifier" forIndexPath:v4];

  v8 = [(SKUIQuicklinksPageSection *)self _quicklinksViewController];
  v9 = [v8 view];

  v10 = [v7 contentChildView];

  if (v9 != v10)
  {
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v7 setContentChildView:v9];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SKUIStorePageSection *)self context];
  v5 = [v4 collectionView];
  [v5 bounds];
  v7 = v6;

  v8 = [(SKUIQuicklinksPageSection *)self _quicklinksViewController];
  v9 = [v8 view];
  [v9 bounds];
  v11 = v10;

  v12 = v7;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)quicklinksViewController:(id)a3 didSelectLink:(id)a4 atIndex:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [(SKUIStorePageSection *)self clickEventWithLink:v8 elementName:*MEMORY[0x277D6A4D0] index:a5];
  if (v9)
  {
    [v14 frameForLinkAtIndex:a5];
    SKUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
    v12 = [(SKUIStorePageSection *)self context];
    v13 = [v12 metricsController];
    [v13 recordEvent:v9];
  }

  [(SKUIStorePageSection *)self showPageWithLink:v8];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  quicklinksViewController = self->_quicklinksViewController;
  v8 = a4;
  [(SKUIQuicklinksViewController *)quicklinksViewController willTransitionToSize:v8 withTransitionCoordinator:width, height];
  v9.receiver = self;
  v9.super_class = SKUIQuicklinksPageSection;
  [(SKUIStorePageSection *)&v9 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (id)_quicklinksViewController
{
  quicklinksViewController = self->_quicklinksViewController;
  if (!quicklinksViewController)
  {
    v4 = [(SKUIStorePageSection *)self context];
    v5 = objc_alloc_init(SKUIQuicklinksViewController);
    v6 = self->_quicklinksViewController;
    self->_quicklinksViewController = v5;

    [(SKUIQuicklinksViewController *)self->_quicklinksViewController setDelegate:self];
    v7 = [(SKUIStorePageSection *)self pageComponent];
    v8 = self->_quicklinksViewController;
    v9 = [v4 colorScheme];
    [(SKUIQuicklinksViewController *)v8 setColoringWithColorScheme:v9];

    v10 = self->_quicklinksViewController;
    v11 = [v7 links];
    [(SKUIQuicklinksViewController *)v10 setLinks:v11];

    v12 = self->_quicklinksViewController;
    v13 = [v7 title];
    [(SKUIQuicklinksViewController *)v12 setTitle:v13];

    v14 = [v4 parentViewController];
    [v14 addChildViewController:self->_quicklinksViewController];

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