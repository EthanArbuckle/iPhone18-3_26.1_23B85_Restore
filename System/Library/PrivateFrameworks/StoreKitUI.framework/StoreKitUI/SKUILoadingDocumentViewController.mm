@interface SKUILoadingDocumentViewController
- (CGRect)_computedFrameForActivityIndicatorView;
- (SKUILoadingDocumentViewController)initWithActivityIndicatorElement:(id)a3;
- (SKUILoadingDocumentViewController)initWithTemplateElement:(id)a3;
- (id)_activityIndicator;
- (id)_layoutCache;
- (id)_viewLayoutContext;
- (void)_reloadViewStyling;
- (void)_showActivityIndicator;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SKUILoadingDocumentViewController

- (SKUILoadingDocumentViewController)initWithActivityIndicatorElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILoadingDocumentViewController initWithActivityIndicatorElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUILoadingDocumentViewController;
  v6 = [(SKUILoadingDocumentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityIndicatorElement, a3);
  }

  return v7;
}

- (SKUILoadingDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUILoadingDocumentViewController initWithTemplateElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUILoadingDocumentViewController;
  v6 = [(SKUILoadingDocumentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, a3);
  }

  return v7;
}

- (void)dealloc
{
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    dispatch_source_cancel(delayTimer);
  }

  [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setParentViewController:0];
  v4.receiver = self;
  v4.super_class = SKUILoadingDocumentViewController;
  [(SKUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SKUILoadingDocumentViewController *)self setView:?];
  activityIndicatorView = self->_activityIndicatorView;
  if (activityIndicatorView)
  {
    [(SKUIActivityIndicatorView *)activityIndicatorView frame];
    [v5 setFrame:?];
    v4 = self->_activityIndicatorView;
    [v5 bounds];
    [(SKUIActivityIndicatorView *)v4 setFrame:?];
    [v5 addSubview:self->_activityIndicatorView];
  }

  [(SKUILoadingDocumentViewController *)self _reloadViewStyling];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (!self->_activityIndicatorView && !self->_delayTimer)
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    delayTimer = self->_delayTimer;
    self->_delayTimer = v5;

    v7 = self->_delayTimer;
    v8 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v9 = self->_delayTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __51__SKUILoadingDocumentViewController_viewDidAppear___block_invoke;
    handler[3] = &unk_2781F8320;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_delayTimer);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v10.receiver = self;
  v10.super_class = SKUILoadingDocumentViewController;
  [(SKUILoadingDocumentViewController *)&v10 viewDidAppear:v3];
}

void __51__SKUILoadingDocumentViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showActivityIndicator];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    dispatch_source_cancel(delayTimer);
    v6 = self->_delayTimer;
    self->_delayTimer = 0;
  }

  v7.receiver = self;
  v7.super_class = SKUILoadingDocumentViewController;
  [(SKUILoadingDocumentViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  activityIndicatorView = self->_activityIndicatorView;
  if (activityIndicatorView)
  {
    [(SKUILoadingDocumentViewController *)self _computedFrameForActivityIndicatorView];
    [(SKUIActivityIndicatorView *)activityIndicatorView setFrame:?];
  }

  v4.receiver = self;
  v4.super_class = SKUILoadingDocumentViewController;
  [(SKUILoadingDocumentViewController *)&v4 viewWillLayoutSubviews];
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  [(SKUILoadingDocumentViewController *)self _reloadViewStyling];
}

- (id)_activityIndicator
{
  if (self->_templateElement)
  {
    v2 = [(SKUILoadingTemplateViewElement *)self->_templateElement activityIndicator];
  }

  else
  {
    v2 = self->_activityIndicatorElement;
  }

  return v2;
}

- (id)_layoutCache
{
  layoutCache = self->_layoutCache;
  if (!layoutCache)
  {
    v4 = objc_alloc_init(SKUILayoutCache);
    v5 = self->_layoutCache;
    self->_layoutCache = v4;

    layoutCache = self->_layoutCache;
  }

  return layoutCache;
}

- (void)_reloadViewStyling
{
  v7 = [(SKUILoadingDocumentViewController *)self view];
  v3 = [(SKUILoadingTemplateViewElement *)self->_templateElement style];
  v4 = [v3 ikBackgroundColor];
  v5 = [v4 color];

  if (v5)
  {
    [v7 setBackgroundColor:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    [v7 setBackgroundColor:v6];
  }

  if (self->_activityIndicatorView)
  {
    [(SKUILoadingDocumentViewController *)self _showActivityIndicator];
  }
}

- (void)_showActivityIndicator
{
  delayTimer = self->_delayTimer;
  if (delayTimer)
  {
    dispatch_source_cancel(delayTimer);
    v4 = self->_delayTimer;
    self->_delayTimer = 0;
  }

  v16 = [(SKUILoadingDocumentViewController *)self view];
  if (!self->_activityIndicatorView)
  {
    v5 = objc_alloc_init(SKUIActivityIndicatorView);
    activityIndicatorView = self->_activityIndicatorView;
    self->_activityIndicatorView = v5;
  }

  v7 = [(SKUILoadingDocumentViewController *)self _activityIndicator];
  v8 = [(SKUILoadingDocumentViewController *)self _viewLayoutContext];
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 bounds];
  v11 = v10;

  [objc_opt_class() requestLayoutForViewElement:v7 width:v8 context:v11];
  v12 = [(SKUILoadingDocumentViewController *)self _layoutCache];
  [v12 commitLayoutRequests];

  [(SKUIActivityIndicatorView *)self->_activityIndicatorView reloadWithViewElement:v7 width:v8 context:v11];
  v13 = self->_activityIndicatorView;
  [(SKUILoadingDocumentViewController *)self _computedFrameForActivityIndicatorView];
  [(SKUIActivityIndicatorView *)v13 setFrame:?];
  [(SKUIActivityIndicatorView *)self->_activityIndicatorView setAutoresizingMask:45];
  v14 = self->_activityIndicatorView;
  v15 = [v16 backgroundColor];
  [(SKUIViewReuseView *)v14 setBackgroundColor:v15];

  [v16 addSubview:self->_activityIndicatorView];
}

- (CGRect)_computedFrameForActivityIndicatorView
{
  v3 = [(SKUILoadingDocumentViewController *)self view];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v6 = v5;

  [(SKUIActivityIndicatorView *)self->_activityIndicatorView frame];
  [(SKUIActivityIndicatorView *)self->_activityIndicatorView sizeThatFits:1.79769313e308, v6];
  v8 = v7;
  v10 = v9;
  [v3 frame];
  v12 = (v11 - v8) * 0.5;
  v13 = floorf(v12);
  v14 = v6 * 0.5 - v10;
  v15 = floorf(v14);

  v16 = v13;
  v17 = v15;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_viewLayoutContext
{
  viewLayoutContext = self->_viewLayoutContext;
  if (!viewLayoutContext)
  {
    v4 = objc_alloc_init(SKUIViewElementLayoutContext);
    v5 = self->_viewLayoutContext;
    self->_viewLayoutContext = v4;

    [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setParentViewController:self];
    v6 = [(SKUIViewController *)self clientContext];
    [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setClientContext:v6];
    v7 = [SKUIViewElementTextLayoutCache alloc];
    v8 = [(SKUILoadingDocumentViewController *)self _layoutCache];
    v9 = [(SKUIViewElementTextLayoutCache *)v7 initWithLayoutCache:v8];

    [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setLabelLayoutCache:v9];
    v10 = [SKUIResourceLoader alloc];
    v11 = [(SKUIViewController *)self operationQueue];
    v12 = [(SKUIResourceLoader *)v10 initWithOperationQueue:v11 clientContext:v6];

    [(SKUIViewElementLayoutContext *)self->_viewLayoutContext setResourceLoader:v12];
    viewLayoutContext = self->_viewLayoutContext;
  }

  return viewLayoutContext;
}

- (void)initWithActivityIndicatorElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadingDocumentViewController initWithActivityIndicatorElement:]";
}

- (void)initWithTemplateElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadingDocumentViewController initWithTemplateElement:]";
}

@end