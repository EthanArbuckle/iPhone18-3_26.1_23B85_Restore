@interface SKUIAccountButtonsSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SKUIAccountButtonsSection)initWithPageComponent:(id)component;
- (id)_accountButtonsViewController;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (void)accountButtonsViewControllerDidSignIn:(id)in;
- (void)accountButtonsViewControllerDidSignOut:(id)out;
- (void)accountButtonsViewControllerDidTapECommerceLink:(id)link;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)willAppearInContext:(id)context;
@end

@implementation SKUIAccountButtonsSection

- (SKUIAccountButtonsSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAccountButtonsSection initWithPageComponent:];
  }

  v7.receiver = self;
  v7.super_class = SKUIAccountButtonsSection;
  v5 = [(SKUIStorePageSection *)&v7 initWithPageComponent:componentCopy];

  return v5;
}

- (void)dealloc
{
  [(SKUIAccountButtonsViewController *)self->_accountButtonsViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIAccountButtonsSection;
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
    v13.super_class = SKUIAccountButtonsSection;
    v10 = [(SKUIStorePageSection *)&v13 backgroundColorForIndexPath:pathCopy];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SKUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SKUIAccountButtonsSectionReuseIdentifier" forIndexPath:pathCopy];

  _accountButtonsViewController = [(SKUIAccountButtonsSection *)self _accountButtonsViewController];
  view = [_accountButtonsViewController view];

  contentChildView = [v7 contentChildView];

  if (view != contentChildView)
  {
    v11 = [(SKUIAccountButtonsSection *)self backgroundColorForIndexPath:pathCopy];
    [view setBackgroundColor:v11];

    [v7 setContentChildView:view];
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SKUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5;

  _accountButtonsViewController = [(SKUIAccountButtonsSection *)self _accountButtonsViewController];
  view = [_accountButtonsViewController view];
  [view sizeThatFits:{v6, 0.0}];
  v10 = v9;

  v11 = v6;
  v12 = v10;
  result.height = v12;
  result.width = v11;
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
  v9.super_class = SKUIAccountButtonsSection;
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
  v9.super_class = SKUIAccountButtonsSection;
  [(SKUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUIAccountButtonsSectionReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SKUIAccountButtonsSection;
  [(SKUIStorePageSection *)&v6 willAppearInContext:contextCopy];
}

- (void)accountButtonsViewControllerDidSignIn:(id)in
{
  v6 = objc_alloc_init(MEMORY[0x277D69B60]);
  [v6 setAccountEventTypeWithEventIdentifier:0];
  context = [(SKUIStorePageSection *)self context];
  metricsController = [context metricsController];
  [metricsController recordEvent:v6];
}

- (void)accountButtonsViewControllerDidSignOut:(id)out
{
  v6 = objc_alloc_init(MEMORY[0x277D69B60]);
  [v6 setAccountEventTypeWithEventIdentifier:1];
  context = [(SKUIStorePageSection *)self context];
  metricsController = [context metricsController];
  [metricsController recordEvent:v6];
}

- (void)accountButtonsViewControllerDidTapECommerceLink:(id)link
{
  pageComponent = [(SKUIStorePageSection *)self pageComponent];
  eCommerceLink = [pageComponent ECommerceLink];
  v4 = [eCommerceLink URL];

  viewElement = [pageComponent viewElement];
  v6 = viewElement;
  if (v4)
  {
    SKUIMetricsOpenURL(v4);
  }

  else if (viewElement)
  {
    v7 = [viewElement firstChildForElementType:12];
    [v7 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (id)_accountButtonsViewController
{
  accountButtonsViewController = self->_accountButtonsViewController;
  if (!accountButtonsViewController)
  {
    context = [(SKUIStorePageSection *)self context];
    pageComponent = [(SKUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    parentViewController = [context parentViewController];
    clientContext = [parentViewController clientContext];
    v9 = objc_alloc_init(SKUIAccountButtonsViewController);
    v10 = self->_accountButtonsViewController;
    self->_accountButtonsViewController = v9;

    [(SKUIAccountButtonsViewController *)self->_accountButtonsViewController setClientContext:clientContext];
    [(SKUIAccountButtonsViewController *)self->_accountButtonsViewController setDelegate:self];
    pageComponent2 = [(SKUIStorePageSection *)self pageComponent];
    -[SKUIAccountButtonsViewController setTermsAndConditionsHidden:](self->_accountButtonsViewController, "setTermsAndConditionsHidden:", [pageComponent2 hidesTermsAndConditions]);
    v12 = [viewElement firstChildForElementType:12];
    eCommerceLink = [pageComponent2 ECommerceLink];
    v25 = v12;
    if (!eCommerceLink && v12)
    {
      buttonText = [v12 buttonText];
      string = [buttonText string];

      if ([string length])
      {
        eCommerceLink = [[SKUILink alloc] initWithURL:0 title:string targetString:0];
      }

      else
      {
        eCommerceLink = 0;
      }
    }

    [(SKUIAccountButtonsViewController *)self->_accountButtonsViewController setECommerceLink:eCommerceLink];
    v16 = [clientContext valueForConfigurationKey:@"mgift"];
    v17 = v16;
    if (v16 && ([v16 BOOLValue] & 1) == 0)
    {
      [(SKUIAccountButtonsViewController *)self->_accountButtonsViewController setGiftingHidden:1];
    }

    v26 = clientContext;
    [parentViewController addChildViewController:self->_accountButtonsViewController];
    v27 = viewElement;
    if (viewElement)
    {
      style = [viewElement style];
      [style ikColor];
      v19 = parentViewController;
      v21 = v20 = context;
      color = [v21 color];

      context = v20;
      parentViewController = v19;
    }

    else
    {
      style = [context colorScheme];
      color = [style primaryTextColor];
    }

    if (!color)
    {
      color = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
    }

    view = [(SKUIAccountButtonsViewController *)self->_accountButtonsViewController view];
    [view setTintColor:color];

    accountButtonsViewController = self->_accountButtonsViewController;
  }

  return accountButtonsViewController;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAccountButtonsSection initWithPageComponent:]";
}

@end