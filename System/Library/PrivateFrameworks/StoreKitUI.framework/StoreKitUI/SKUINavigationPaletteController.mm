@interface SKUINavigationPaletteController
- (SKUINavigationPaletteController)initWithPaletteViewElement:(id)element;
- (id)view;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)reloadSectionViews;
- (void)willAppearInNavigationBar;
@end

@implementation SKUINavigationPaletteController

- (SKUINavigationPaletteController)initWithPaletteViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUINavigationPaletteController initWithPaletteViewElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUINavigationPaletteController;
  v6 = [(SKUINavigationPaletteController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, element);
  }

  return v7;
}

- (void)reloadSectionViews
{
  context = [(SKUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v5 = v4;

  paletteView = self->_paletteView;
  viewElement = self->_viewElement;
  viewLayoutContext = [(SKUINavigationBarSectionController *)self viewLayoutContext];
  [(SKUINavigationPaletteView *)paletteView reloadWithViewElement:viewElement width:viewLayoutContext context:v5];

  v9.receiver = self;
  v9.super_class = SKUINavigationPaletteController;
  [(SKUINavigationBarSectionController *)&v9 reloadSectionViews];
}

- (id)view
{
  paletteView = self->_paletteView;
  if (!paletteView)
  {
    context = [(SKUINavigationBarSectionController *)self context];
    clientContext = [context clientContext];
    v6 = SKUIUserInterfaceIdiom(clientContext);

    [context maximumNavigationBarWidth];
    v8 = v7;
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    viewElement = self->_viewElement;
    viewLayoutContext = [(SKUINavigationBarSectionController *)self viewLayoutContext];
    [SKUINavigationPaletteView sizeThatFitsWidth:viewElement viewElement:viewLayoutContext context:v8];
    v14 = v13;
    v16 = v15;

    v17 = v16 + 14.0;
    if (v16 + 14.0 < 36.0)
    {
      v17 = 36.0;
    }

    if (v6 == 1)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16 + 9.0;
    }

    v19 = [[SKUINavigationPaletteView alloc] initWithFrame:v9, v10, v14, v18];
    v20 = self->_paletteView;
    self->_paletteView = v19;

    [(SKUINavigationPaletteView *)self->_paletteView setAutoresizingMask:2];
    v21 = self->_paletteView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIViewReuseView *)v21 setBackgroundColor:clearColor];

    [(SKUINavigationPaletteView *)self->_paletteView setContentInset:0.0, 15.0, 0.0, 15.0];
    if (v6 == 1)
    {
      [(SKUINavigationPaletteView *)self->_paletteView setVerticalAlignment:1];
    }

    v23 = self->_paletteView;
    v24 = self->_viewElement;
    viewLayoutContext2 = [(SKUINavigationBarSectionController *)self viewLayoutContext];
    [(SKUINavigationPaletteView *)v23 reloadWithViewElement:v24 width:viewLayoutContext2 context:v8];

    paletteView = self->_paletteView;
  }

  return paletteView;
}

- (void)willAppearInNavigationBar
{
  viewLayoutContext = [(SKUINavigationBarSectionController *)self viewLayoutContext];
  context = [(SKUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v6 = v5;

  [SKUINavigationPaletteView requestLayoutForViewElement:self->_viewElement width:viewLayoutContext context:v6];
  [SKUINavigationPaletteView prefetchResourcesForViewElement:self->_viewElement reason:0 context:viewLayoutContext];
  v7.receiver = self;
  v7.super_class = SKUINavigationPaletteController;
  [(SKUINavigationBarSectionController *)&v7 willAppearInNavigationBar];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  paletteView = self->_paletteView;
  imageCopy = image;
  requestCopy = request;
  viewLayoutContext = [(SKUINavigationBarSectionController *)self viewLayoutContext];
  [(SKUINavigationPaletteView *)paletteView setImage:imageCopy forArtworkRequest:requestCopy context:viewLayoutContext];
}

- (void)initWithPaletteViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationPaletteController initWithPaletteViewElement:]";
}

@end