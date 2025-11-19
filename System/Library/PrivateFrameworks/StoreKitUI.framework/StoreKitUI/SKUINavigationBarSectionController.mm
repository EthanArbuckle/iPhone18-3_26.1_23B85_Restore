@interface SKUINavigationBarSectionController
- (SKUIViewElementLayoutContext)viewLayoutContext;
- (UIView)view;
- (id)barButtonItemForElementIdentifier:(id)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)a3;
- (void)viewLayoutContext;
@end

@implementation SKUINavigationBarSectionController

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUINavigationBarSectionController;
  [(SKUINavigationBarSectionController *)&v3 dealloc];
}

- (id)barButtonItemForElementIdentifier:(id)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUINavigationBarSectionController *)v3 barButtonItemForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v3)
    {
      [(SKUINavigationBarSectionController *)v3 reloadAfterDocumentUpdateWithNavigationItem:v4, v5, v6, v7, v8, v9, v10];
    }
  }
}

- (UIView)view
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUINavigationBarSectionController *)v2 view:v3];
      }
    }
  }

  return 0;
}

- (id)viewForElementIdentifier:(id)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUINavigationBarSectionController *)v3 viewForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (SKUIViewElementLayoutContext)viewLayoutContext
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUINavigationBarSectionController viewLayoutContext];
  }

  viewLayoutContext = self->_viewLayoutContext;
  if (!viewLayoutContext)
  {
    v4 = objc_alloc_init(SKUIViewElementLayoutContext);
    v5 = self->_viewLayoutContext;
    self->_viewLayoutContext = v4;

    [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setArtworkRequestDelegate:self];
    v6 = self->_viewLayoutContext;
    v7 = [(SKUINavigationBarContext *)self->_navigationBarContext clientContext];
    [(SKUIViewElementLayoutContext *)v6 setClientContext:v7];

    v8 = self->_viewLayoutContext;
    v9 = [(SKUINavigationBarContext *)self->_navigationBarContext parentViewController];
    [(SKUIViewElementLayoutContext *)v8 setParentViewController:v9];

    v10 = self->_viewLayoutContext;
    v11 = [(SKUINavigationBarContext *)self->_navigationBarContext resourceLoader];
    [(SKUIViewElementLayoutContext *)v10 setResourceLoader:v11];

    v12 = [SKUIViewElementTextLayoutCache alloc];
    v13 = [(SKUINavigationBarContext *)self->_navigationBarContext textLayoutCache];
    v14 = [(SKUIViewElementTextLayoutCache *)v12 initWithLayoutCache:v13];

    [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setLabelLayoutCache:v14];
    viewLayoutContext = self->_viewLayoutContext;
  }

  return viewLayoutContext;
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(SKUINavigationBarSectionController *)v4 artworkRequest:v5 didLoadImage:v6, v7, v8, v9, v10, v11];
    }
  }
}

- (void)viewLayoutContext
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationBarSectionController viewLayoutContext]";
}

@end