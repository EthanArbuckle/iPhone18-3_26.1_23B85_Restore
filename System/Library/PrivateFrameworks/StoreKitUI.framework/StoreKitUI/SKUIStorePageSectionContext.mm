@interface SKUIStorePageSectionContext
- (SKUIClientContext)clientContext;
- (SKUIItemOfferButtonAppearance)itemOfferButtonAppearance;
- (SKUIStorePageSectionContext)init;
- (SKUIStorePageSectionsViewController)parentViewController;
- (UIColor)placeholderColor;
- (double)horizontalPadding;
- (void)_setActivePageWidth:(double)width;
- (void)_setCollectionView:(id)view;
- (void)_setColorScheme:(id)scheme;
- (void)_setMetricsController:(id)controller;
- (void)_setParentViewController:(id)controller;
- (void)_setResourceLoader:(id)loader;
- (void)_setTextLayoutCache:(id)cache;
- (void)init;
@end

@implementation SKUIStorePageSectionContext

- (SKUIStorePageSectionContext)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStorePageSectionContext init];
  }

  v10.receiver = self;
  v10.super_class = SKUIStorePageSectionContext;
  v3 = [(SKUIStorePageSectionContext *)&v10 init];
  if (v3)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v6 = v5;
    v8 = v7;

    v3->_portraitPageWidth = v6;
    v3->_activePageWidth = v6;
    v3->_landscapePageWidth = v8;
  }

  return v3;
}

- (SKUIClientContext)clientContext
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  clientContext = [WeakRetained clientContext];

  return clientContext;
}

- (double)horizontalPadding
{
  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  [keyWindow bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SKUIStorePageSectionContext *)self activePageWidth];
  v13 = v12;
  if (v12 < 1024.0 || (v16.origin.x = v5, v16.origin.y = v7, v16.size.width = v9, v16.size.height = v11, Height = CGRectGetHeight(v16), result = 20.0, Height <= 768.0))
  {
    if ([(SKUIStorePageSectionContext *)self layoutStyle]!= 1)
    {
      return 15.0;
    }

    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    if (CGRectGetHeight(v17) >= 1024.0)
    {
      v18.origin.x = v5;
      v18.origin.y = v7;
      v18.size.width = v9;
      v18.size.height = v11;
      if (CGRectGetWidth(v18) >= 1024.0)
      {
        return 35.0;
      }
    }

    result = 20.0;
    if (v13 != 414.0)
    {
      return 15.0;
    }
  }

  return result;
}

- (SKUIItemOfferButtonAppearance)itemOfferButtonAppearance
{
  itemOfferButtonAppearance = self->_itemOfferButtonAppearance;
  if (!itemOfferButtonAppearance)
  {
    v4 = [[SKUIItemOfferButtonAppearance alloc] initWithColorScheme:self->_colorScheme];
    v5 = self->_itemOfferButtonAppearance;
    self->_itemOfferButtonAppearance = v4;

    itemOfferButtonAppearance = self->_itemOfferButtonAppearance;
  }

  return itemOfferButtonAppearance;
}

- (UIColor)placeholderColor
{
  placeholderColor = self->_placeholderColor;
  if (!placeholderColor)
  {
    backgroundColor = [(UICollectionView *)self->_collectionView backgroundColor];
    v5 = backgroundColor;
    if (!backgroundColor)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
LABEL_13:
      v9 = self->_placeholderColor;
      self->_placeholderColor = v7;

      goto LABEL_14;
    }

    v6 = SKUIColorSchemeStyleForColor(backgroundColor);
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        if (v6 != 3)
        {
LABEL_14:

          placeholderColor = self->_placeholderColor;
          goto LABEL_15;
        }

        goto LABEL_10;
      }
    }

    else if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_14;
      }

LABEL_10:
      v8 = 0.25;
LABEL_12:
      v7 = SKUIColorByAdjustingBrightness(v5, v8);
      goto LABEL_13;
    }

    v8 = -0.15;
    goto LABEL_12;
  }

LABEL_15:

  return placeholderColor;
}

- (void)_setActivePageWidth:(double)width
{
  if (self->_activePageWidth != width)
  {
    self->_portraitPageWidth = width;
    self->_activePageWidth = width;
  }
}

- (void)_setCollectionView:(id)view
{
  viewCopy = view;
  p_collectionView = &self->_collectionView;
  if (self->_collectionView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(p_collectionView, view);
    placeholderColor = self->_placeholderColor;
    self->_placeholderColor = 0;

    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](p_collectionView, viewCopy);
}

- (void)_setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  p_colorScheme = &self->_colorScheme;
  if (self->_colorScheme != schemeCopy)
  {
    v8 = schemeCopy;
    objc_storeStrong(p_colorScheme, scheme);
    placeholderColor = self->_placeholderColor;
    self->_placeholderColor = 0;

    schemeCopy = v8;
  }

  MEMORY[0x2821F96F8](p_colorScheme, schemeCopy);
}

- (void)_setMetricsController:(id)controller
{
  controllerCopy = controller;
  metricsController = self->_metricsController;
  p_metricsController = &self->_metricsController;
  if (metricsController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(p_metricsController, controller);
    controllerCopy = v8;
  }
}

- (void)_setParentViewController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_parentViewController, controllerCopy);
}

- (void)_setResourceLoader:(id)loader
{
  loaderCopy = loader;
  resourceLoader = self->_resourceLoader;
  p_resourceLoader = &self->_resourceLoader;
  if (resourceLoader != loaderCopy)
  {
    v8 = loaderCopy;
    objc_storeStrong(p_resourceLoader, loader);
    loaderCopy = v8;
  }
}

- (void)_setTextLayoutCache:(id)cache
{
  cacheCopy = cache;
  textLayoutCache = self->_textLayoutCache;
  p_textLayoutCache = &self->_textLayoutCache;
  if (textLayoutCache != cacheCopy)
  {
    v8 = cacheCopy;
    objc_storeStrong(p_textLayoutCache, cache);
    cacheCopy = v8;
  }
}

- (SKUIStorePageSectionsViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStorePageSectionContext init]";
}

@end