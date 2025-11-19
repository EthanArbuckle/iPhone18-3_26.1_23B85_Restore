@interface SKUIPanelDocumentViewController
- (SKUIPanelDocumentViewController)initWithTemplateElement:(id)a3;
- (id)_activeBackgroundColor;
- (id)_imageForBackgroundImageElement:(id)a3;
- (id)_layoutContext;
- (id)_templateBackgroundColor;
- (void)_keyboardHideNotification:(id)a3;
- (void)_keyboardWillChangeNotification:(id)a3;
- (void)_layoutBackgroundImageView;
- (void)_layoutScrollView;
- (void)_reloadBackgroundImageView;
- (void)_reloadContentSize;
- (void)_reloadPanelViewWithScrollViewSize:(CGSize)a3;
- (void)_requestPanelViewLayoutWithContentWidth:(int64_t)a3 forced:(BOOL)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)layoutCacheDidFinishBatch:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIPanelDocumentViewController

- (SKUIPanelDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPanelDocumentViewController initWithTemplateElement:];
  }

  v10.receiver = self;
  v10.super_class = SKUIPanelDocumentViewController;
  v6 = [(SKUIPanelDocumentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_lastContentWidth = -1;
    objc_storeStrong(&v6->_templateElement, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__keyboardHideNotification_ name:*MEMORY[0x277D76BA0] object:0];
    [v8 addObserver:v7 selector:sel__keyboardHideNotification_ name:*MEMORY[0x277D76C50] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillChangeNotification_ name:*MEMORY[0x277D76C48] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillChangeNotification_ name:*MEMORY[0x277D76C60] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C48] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  [(SKUILayoutCache *)self->_textLayoutCache setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIPanelDocumentViewController;
  [(SKUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v13 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(SKUIPanelDocumentViewController *)self _templateBackgroundColor];
  [v13 setBackgroundColor:v3];

  [v13 setPreservesSuperviewLayoutMargins:1];
  if (!self->_panelView)
  {
    v4 = objc_alloc_init(SKUIPanelView);
    panelView = self->_panelView;
    self->_panelView = v4;

    v6 = self->_panelView;
    v7 = [(SKUIPanelDocumentViewController *)self _activeBackgroundColor];
    [(SKUIViewReuseView *)v6 setBackgroundColor:v7];

    [(SKUIPanelView *)self->_panelView setPreservesSuperviewLayoutMargins:1];
  }

  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v9 = objc_alloc_init(MEMORY[0x277D759D8]);
    v10 = self->_scrollView;
    self->_scrollView = v9;

    [(UIScrollView *)self->_scrollView setAlwaysBounceHorizontal:0];
    [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:0];
    v11 = self->_scrollView;
    v12 = [(SKUIPanelDocumentViewController *)self _activeBackgroundColor];
    [(UIScrollView *)v11 setBackgroundColor:v12];

    [(UIScrollView *)self->_scrollView setPreservesSuperviewLayoutMargins:1];
    [(UIScrollView *)self->_scrollView addSubview:self->_panelView];
    scrollView = self->_scrollView;
  }

  [v13 addSubview:scrollView];
  [(SKUIPanelDocumentViewController *)self setView:v13];
  [(SKUIPanelDocumentViewController *)self _reloadBackgroundImageView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(SKUIMetricsImpressionSession);
  metricsImpressionSession = self->_metricsImpressionSession;
  self->_metricsImpressionSession = v5;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(SKUIPanelTemplateViewElement *)self->_templateElement children];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SKUIMetricsImpressionSession *)self->_metricsImpressionSession beginActiveImpressionForViewElement:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = SKUIPanelDocumentViewController;
  [(SKUIPanelDocumentViewController *)&v12 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SKUIPanelTemplateViewElement *)self->_templateElement children];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SKUIMetricsImpressionSession *)self->_metricsImpressionSession endActiveImpressionForViewElement:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  metricsImpressionSession = self->_metricsImpressionSession;
  self->_metricsImpressionSession = 0;

  self->_didAttemptBecomeFirstResponder = 0;
  v11.receiver = self;
  v11.super_class = SKUIPanelDocumentViewController;
  [(SKUIPanelDocumentViewController *)&v11 viewDidDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  if (!self->_didAttemptBecomeFirstResponder)
  {
    if ([(SKUIPanelView *)self->_panelView canBecomeFirstResponder])
    {
      UIKeyboardOrderInAutomatic();
      [(SKUIPanelView *)self->_panelView becomeFirstResponder];
    }

    self->_didAttemptBecomeFirstResponder = 1;
  }

  v3.receiver = self;
  v3.super_class = SKUIPanelDocumentViewController;
  [(SKUIPanelDocumentViewController *)&v3 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SKUIPanelDocumentViewController *)self _layoutScrollView];
  if (self->_panelView)
  {
    [(UIScrollView *)self->_scrollView bounds];
    [(SKUIPanelDocumentViewController *)self _reloadPanelViewWithScrollViewSize:v5, v6];
  }

  v7.receiver = self;
  v7.super_class = SKUIPanelDocumentViewController;
  [(SKUIViewController *)&v7 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  self->_didAttemptBecomeFirstResponder = 0;
  [(SKUIPanelView *)self->_panelView resignFirstResponder];
  v5.receiver = self;
  v5.super_class = SKUIPanelDocumentViewController;
  [(SKUIPanelDocumentViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  [(SKUIPanelDocumentViewController *)self _layoutBackgroundImageView];
  [(SKUIPanelDocumentViewController *)self _layoutScrollView];
  if (self->_panelView)
  {
    [(SKUIPanelDocumentViewController *)self _reloadContentSize];
  }

  v3.receiver = self;
  v3.super_class = SKUIPanelDocumentViewController;
  [(SKUIPanelDocumentViewController *)&v3 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(SKUIPanelDocumentViewController *)self _reloadPanelViewWithScrollViewSize:width, height];
  v8.receiver = self;
  v8.super_class = SKUIPanelDocumentViewController;
  [(SKUIPanelDocumentViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(SKUIPanelTemplateViewElement *)self->_templateElement backgroundImageElement];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 resourceCacheKey];
    v10 = [v14 cacheKey];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      [(UIImageView *)self->_backgroundImageView setImage:v6];
      [(SKUIPanelDocumentViewController *)self _layoutBackgroundImageView];
    }
  }

  panelView = self->_panelView;
  v13 = [(SKUIPanelDocumentViewController *)self _layoutContext];
  [(SKUIPanelView *)panelView setImage:v6 forArtworkRequest:v14 context:v13];
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  v11 = [(SKUIPanelDocumentViewController *)self _activeBackgroundColor];
  [(UIScrollView *)self->_scrollView setBackgroundColor:?];
  panelView = self->_panelView;
  if (panelView)
  {
    [(SKUIViewReuseView *)panelView setBackgroundColor:v11];
    [(UIScrollView *)self->_scrollView bounds];
    [(SKUIPanelDocumentViewController *)self _reloadPanelViewWithScrollViewSize:v7, v8];
  }

  if ([(SKUIPanelDocumentViewController *)self isViewLoaded])
  {
    [(SKUIPanelDocumentViewController *)self _reloadBackgroundImageView];
    v9 = [(SKUIPanelDocumentViewController *)self view];
    v10 = [(SKUIPanelDocumentViewController *)self _templateBackgroundColor];
    [v9 setBackgroundColor:v10];
  }
}

- (void)layoutCacheDidFinishBatch:(id)a3
{
  panelView = self->_panelView;
  templateElement = self->_templateElement;
  [(UIScrollView *)self->_scrollView bounds];
  v7 = v6;
  v8 = [(SKUIPanelDocumentViewController *)self _layoutContext];
  [(SKUIPanelView *)panelView reloadWithViewElement:templateElement width:v8 context:v7];
}

- (void)_keyboardHideNotification:(id)a3
{
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
  self->_keyboardFrame.size = v4;
  [(SKUIPanelDocumentViewController *)self _layoutScrollView];

  [(SKUIPanelDocumentViewController *)self _reloadContentSize];
}

- (void)_keyboardWillChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  v5 = v10;
  if (v10)
  {
    [v10 CGRectValue];
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;
    [(SKUIPanelDocumentViewController *)self _layoutScrollView];
    [(SKUIPanelDocumentViewController *)self _reloadContentSize];
    v5 = v10;
  }
}

- (id)_activeBackgroundColor
{
  v3 = [(SKUIPanelTemplateViewElement *)self->_templateElement backgroundImageElement];
  if (v3)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(SKUIPanelDocumentViewController *)self _templateBackgroundColor];
  }
  v4 = ;

  return v4;
}

- (id)_imageForBackgroundImageElement:(id)a3
{
  v4 = a3;
  v5 = [(SKUIPanelDocumentViewController *)self _layoutContext];
  v6 = [v5 resourceLoader];

  v7 = [v4 resourceName];
  if ([v7 length])
  {
    v8 = SKUIImageWithResourceName(v7);
  }

  else
  {
    v9 = [v4 resourceCacheKey];
    v10 = [v6 requestIdentifierForCacheKey:v9];
    v11 = v10;
    if (v10)
    {
      v8 = [v6 cachedResourceForRequestIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}];
      if ([v6 trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v11, "unsignedIntegerValue")}])
      {

        v12 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIResourceRequest *)v13 setCacheKey:v9];
    v14 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    [(SKUIArtworkRequest *)v13 setDataConsumer:v14];

    [(SKUIArtworkRequest *)v13 setDelegate:self];
    v15 = [v4 URL];
    [(SKUIArtworkRequest *)v13 setURL:v15];

    [v6 loadResourceWithRequest:v13 reason:1];
  }

  v8 = v8;
  v12 = v8;
LABEL_9:

  return v12;
}

- (void)_layoutBackgroundImageView
{
  if (!self->_backgroundImageView)
  {
    return;
  }

  v3 = [(SKUIPanelDocumentViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19 = [(UIImageView *)self->_backgroundImageView image];
  if ([(UIImageView *)self->_backgroundImageView contentMode]!= 2 && v19)
  {
    [v19 size];
    *&v12 = v13 * (v9 / v12);
    v14 = floorf(*&v12);
    v15 = [(SKUIPanelTemplateViewElement *)self->_templateElement backgroundImageElement];
    v16 = [v15 style];
    v17 = [v16 elementPosition];

    v18 = 0.0;
    if (v17 <= 9)
    {
      if (((1 << v17) & 0x33) != 0)
      {
        v7 = floor((v11 - v14) * 0.5);
LABEL_12:
        v11 = v14;
        goto LABEL_13;
      }

      if (((1 << v17) & 0x308) != 0)
      {
        v21.origin.x = v5;
        v21.origin.y = v7;
        v21.size.width = v9;
        v21.size.height = v11;
        v7 = CGRectGetMaxY(v21) - v14;
        goto LABEL_12;
      }
    }

    v7 = 0.0;
    goto LABEL_12;
  }

  v18 = v5;
LABEL_13:
  [(UIImageView *)self->_backgroundImageView setFrame:v18, v7, v9, v11];
}

- (id)_layoutContext
{
  layoutContext = self->_layoutContext;
  if (!layoutContext)
  {
    v4 = objc_alloc_init(SKUIViewElementLayoutContext);
    v5 = self->_layoutContext;
    self->_layoutContext = v4;

    [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
    v6 = self->_layoutContext;
    v7 = [(SKUIViewController *)self clientContext];
    [(SKUIViewElementLayoutContext *)v6 setClientContext:v7];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SKUIPanelTemplateViewElement *)self->_templateElement elementType]];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    v8 = objc_alloc_init(SKUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    [(SKUILayoutCache *)self->_textLayoutCache setDelegate:self];
    v10 = [[SKUIViewElementTextLayoutCache alloc] initWithLayoutCache:self->_textLayoutCache];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v10];
    v11 = [SKUIResourceLoader alloc];
    v12 = [(SKUIViewController *)self clientContext];
    v13 = [(SKUIResourceLoader *)v11 initWithClientContext:v12];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v13];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_layoutScrollView
{
  v3 = [(SKUIPanelDocumentViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  scrollView = self->_scrollView;
  v13 = v11 - self->_keyboardFrame.size.height;

  [(UIScrollView *)scrollView setFrame:v5, v7, v9, v13];
}

- (void)_reloadBackgroundImageView
{
  v3 = [(SKUIPanelTemplateViewElement *)self->_templateElement backgroundImageElement];
  backgroundImageView = self->_backgroundImageView;
  v16 = v3;
  if (v3)
  {
    if (!backgroundImageView)
    {
      v5 = objc_alloc_init(MEMORY[0x277D755E8]);
      v6 = self->_backgroundImageView;
      self->_backgroundImageView = v5;

      [(UIImageView *)self->_backgroundImageView setClipsToBounds:1];
      v7 = [(SKUIPanelDocumentViewController *)self view];
      [v7 insertSubview:self->_backgroundImageView atIndex:0];

      v3 = v16;
    }

    v8 = [v3 style];
    v9 = [v8 fillImage];

    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    [(UIImageView *)self->_backgroundImageView setContentMode:v10];
    v11 = self->_backgroundImageView;
    v12 = [(SKUIPanelDocumentViewController *)self _templateBackgroundColor];
    [(UIImageView *)v11 setBackgroundColor:v12];

    v13 = self->_backgroundImageView;
    v14 = [(SKUIPanelDocumentViewController *)self _imageForBackgroundImageElement:v16];
    [(UIImageView *)v13 setImage:v14];

    [(SKUIPanelDocumentViewController *)self _layoutBackgroundImageView];
  }

  else
  {
    [(UIImageView *)backgroundImageView removeFromSuperview];
    v15 = self->_backgroundImageView;
    self->_backgroundImageView = 0;
  }
}

- (void)_reloadContentSize
{
  [(UIScrollView *)self->_scrollView contentInset];
  v4 = v3;
  v6 = v5;
  [(SKUIPanelView *)self->_panelView layoutMargins];
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_scrollView bounds];
  v13 = v11;
  if (self->_keyboardFrame.size.height >= 0.00000011920929)
  {
    v14 = v12 - v4;
  }

  else
  {
    v14 = v12 - v4 - v6;
  }

  v15 = v11 - v8 - v10;
  v16 = vcvtms_s32_f32(v15);
  [(SKUIPanelDocumentViewController *)self _requestPanelViewLayoutWithContentWidth:v16 forced:0];
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = objc_opt_class();
  v20 = v16;
  templateElement = self->_templateElement;
  v22 = [(SKUIPanelDocumentViewController *)self _layoutContext];
  [v19 sizeThatFitsWidth:templateElement viewElement:v22 context:v20];
  v24 = v23;
  v26 = v25;

  if (v26 < v14)
  {
    v26 = v14;
  }

  if (v24 < v13)
  {
    v24 = v13;
  }

  [(SKUIPanelView *)self->_panelView setFrame:v17, v18, v24, v26];
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentSize:v24, v26];
}

- (void)_reloadPanelViewWithScrollViewSize:(CGSize)a3
{
  width = a3.width;
  if (self->_panelView)
  {
    v4 = a3.width <= 0.00000011920929;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v12 = [(SKUIPanelDocumentViewController *)self _layoutContext];
    v6 = [(SKUIPanelView *)self->_panelView tintColor];
    [v12 setTintColor:v6];

    [objc_opt_class() prefetchResourcesForViewElement:self->_templateElement reason:1 context:v12];
    [(SKUIPanelView *)self->_panelView layoutMargins];
    v8 = v7;
    v10 = v9;
    [(SKUIPanelView *)self->_panelView setLayoutMargins:0.0];
    v11 = width - v8 - v10;
    [(SKUIPanelDocumentViewController *)self _requestPanelViewLayoutWithContentWidth:vcvtms_s32_f32(v11) forced:1];
    [(SKUIPanelDocumentViewController *)self _reloadContentSize];
  }
}

- (void)_requestPanelViewLayoutWithContentWidth:(int64_t)a3 forced:(BOOL)a4
{
  if (a4 || self->_lastContentWidth != a3)
  {
    v6 = [(SKUIPanelDocumentViewController *)self _layoutContext];
    [objc_opt_class() requestLayoutForViewElement:self->_templateElement width:v6 context:a3];
    [(SKUILayoutCache *)self->_textLayoutCache commitLayoutRequests];
    [(SKUIPanelView *)self->_panelView reloadWithViewElement:self->_templateElement width:v6 context:a3];
    self->_lastContentWidth = a3;
  }
}

- (id)_templateBackgroundColor
{
  v2 = [(SKUIPanelTemplateViewElement *)self->_templateElement style];
  v3 = [v2 ikBackgroundColor];
  v4 = [v3 color];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = v5;

  return v6;
}

- (void)initWithTemplateElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPanelDocumentViewController initWithTemplateElement:]";
}

@end