@interface SKUIStorePageSectionContext
- (SKUIClientContext)clientContext;
- (SKUIItemOfferButtonAppearance)itemOfferButtonAppearance;
- (SKUIStorePageSectionContext)init;
- (SKUIStorePageSectionsViewController)parentViewController;
- (UIColor)placeholderColor;
- (double)horizontalPadding;
- (void)_setActivePageWidth:(double)a3;
- (void)_setCollectionView:(id)a3;
- (void)_setColorScheme:(id)a3;
- (void)_setMetricsController:(id)a3;
- (void)_setParentViewController:(id)a3;
- (void)_setResourceLoader:(id)a3;
- (void)_setTextLayoutCache:(id)a3;
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
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
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
  v3 = [WeakRetained clientContext];

  return v3;
}

- (double)horizontalPadding
{
  v3 = [MEMORY[0x277D75DA0] keyWindow];
  [v3 bounds];
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
    v4 = [(UICollectionView *)self->_collectionView backgroundColor];
    v5 = v4;
    if (!v4)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
LABEL_13:
      v9 = self->_placeholderColor;
      self->_placeholderColor = v7;

      goto LABEL_14;
    }

    v6 = SKUIColorSchemeStyleForColor(v4);
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

- (void)_setActivePageWidth:(double)a3
{
  if (self->_activePageWidth != a3)
  {
    self->_portraitPageWidth = a3;
    self->_activePageWidth = a3;
  }
}

- (void)_setCollectionView:(id)a3
{
  v5 = a3;
  p_collectionView = &self->_collectionView;
  if (self->_collectionView != v5)
  {
    v8 = v5;
    objc_storeStrong(p_collectionView, a3);
    placeholderColor = self->_placeholderColor;
    self->_placeholderColor = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_collectionView, v5);
}

- (void)_setColorScheme:(id)a3
{
  v5 = a3;
  p_colorScheme = &self->_colorScheme;
  if (self->_colorScheme != v5)
  {
    v8 = v5;
    objc_storeStrong(p_colorScheme, a3);
    placeholderColor = self->_placeholderColor;
    self->_placeholderColor = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_colorScheme, v5);
}

- (void)_setMetricsController:(id)a3
{
  v5 = a3;
  metricsController = self->_metricsController;
  p_metricsController = &self->_metricsController;
  if (metricsController != v5)
  {
    v8 = v5;
    objc_storeStrong(p_metricsController, a3);
    v5 = v8;
  }
}

- (void)_setParentViewController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_parentViewController, v4);
}

- (void)_setResourceLoader:(id)a3
{
  v5 = a3;
  resourceLoader = self->_resourceLoader;
  p_resourceLoader = &self->_resourceLoader;
  if (resourceLoader != v5)
  {
    v8 = v5;
    objc_storeStrong(p_resourceLoader, a3);
    v5 = v8;
  }
}

- (void)_setTextLayoutCache:(id)a3
{
  v5 = a3;
  textLayoutCache = self->_textLayoutCache;
  p_textLayoutCache = &self->_textLayoutCache;
  if (textLayoutCache != v5)
  {
    v8 = v5;
    objc_storeStrong(p_textLayoutCache, a3);
    v5 = v8;
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