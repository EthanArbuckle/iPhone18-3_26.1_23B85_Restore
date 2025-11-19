@interface SKUIPreviewOverlayViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (SKUIPreviewOverlayViewController)initWithDocument:(id)a3;
- (double)_overlayWidth;
- (id)_layoutCache;
- (void)_tapAction:(id)a3;
- (void)dealloc;
- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4;
- (void)loadView;
- (void)prepareOverlayView;
- (void)reloadOverlayView;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)showPreviewProgressWithStatus:(id)a3 animated:(BOOL)a4;
@end

@implementation SKUIPreviewOverlayViewController

- (SKUIPreviewOverlayViewController)initWithDocument:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPreviewOverlayViewController initWithDocument:];
  }

  v10.receiver = self;
  v10.super_class = SKUIPreviewOverlayViewController;
  v6 = [(SKUIPreviewOverlayViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_document, a3);
    v8 = +[SKUIItemStateCenter defaultCenter];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(SKUILayoutCache *)self->_layoutCache setDelegate:0];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeTarget:self action:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:0];
  v3 = [(UITapGestureRecognizer *)self->_tapGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_tapGestureRecognizer];

  v4 = +[SKUIItemStateCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SKUIPreviewOverlayViewController;
  [(SKUIViewController *)&v5 dealloc];
}

- (void)prepareOverlayView
{
  if (!self->_layoutContext)
  {
    v3 = objc_alloc_init(SKUIViewElementLayoutContext);
    layoutContext = self->_layoutContext;
    self->_layoutContext = v3;

    v5 = self->_layoutContext;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_backgroundStyle];
    [(SKUIViewElementLayoutContext *)v5 setAggregateValue:v6 forKey:0x28280A748];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
    v7 = [(SKUIViewController *)self clientContext];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setClientContext:v7];
    v8 = [SKUIResourceLoader alloc];
    v9 = [(SKUIViewController *)self operationQueue];
    v10 = [(SKUIResourceLoader *)v8 initWithOperationQueue:v9 clientContext:v7];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v10];
    v11 = [SKUIViewElementTextLayoutCache alloc];
    v12 = [(SKUIPreviewOverlayViewController *)self _layoutCache];
    v13 = [(SKUIViewElementTextLayoutCache *)v11 initWithLayoutCache:v12];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v13];
  }

  v16 = [(IKAppDocument *)self->_document templateElement];
  v14 = [v16 previewLockup];
  [(SKUIPreviewOverlayViewController *)self _overlayWidth];
  [SKUIHorizontalLockupView requestLayoutForViewElement:v14 width:self->_layoutContext context:?];
  [SKUIHorizontalLockupView prefetchResourcesForViewElement:v14 reason:0 context:self->_layoutContext];
  v15 = [(SKUIPreviewOverlayViewController *)self _layoutCache];
  [v15 commitLayoutRequests];
}

- (void)reloadOverlayView
{
  v3 = [(IKAppDocument *)self->_document templateElement];
  v5 = [v3 previewLockup];

  lockupView = self->_lockupView;
  [(SKUIPreviewOverlayViewController *)self _overlayWidth];
  [(SKUIHorizontalLockupView *)lockupView reloadWithViewElement:v5 width:self->_layoutContext context:?];
}

- (void)setBackgroundStyle:(int64_t)a3
{
  self->_backgroundStyle = a3;
  layoutContext = self->_layoutContext;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(SKUIViewElementLayoutContext *)layoutContext setAggregateValue:v4 forKey:0x28280A748];
}

- (void)showPreviewProgressWithStatus:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_previewStatus, a3);
  v7 = a3;
  [(SKUIHorizontalLockupView *)self->_lockupView showPreviewProgressWithStatus:v7 animated:v4];
}

- (void)loadView
{
  [(SKUIPreviewOverlayViewController *)self _overlayWidth];
  v4 = v3;
  v5 = [(IKAppDocument *)self->_document templateElement];
  v17 = [v5 previewLockup];

  if (!self->_lockupView)
  {
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    [SKUIHorizontalLockupView sizeThatFitsWidth:v17 viewElement:self->_layoutContext context:v4];
    if (v9 >= 44.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 44.0;
    }

    v11 = [[SKUIHorizontalLockupView alloc] initWithFrame:v6, v7, v8, v10];
    lockupView = self->_lockupView;
    self->_lockupView = v11;

    v13 = self->_lockupView;
    v14 = [MEMORY[0x277D75348] clearColor];
    [(SKUIHorizontalLockupView *)v13 setBackgroundColor:v14];

    [(SKUIHorizontalLockupView *)self->_lockupView setContentInset:0.0, 15.0, 0.0, 15.0];
    [(SKUIHorizontalLockupView *)self->_lockupView reloadWithViewElement:v17 width:self->_layoutContext context:v4];
    [(SKUIHorizontalLockupView *)self->_lockupView showPreviewProgressWithStatus:self->_previewStatus animated:0];
    [(SKUIHorizontalLockupView *)self->_lockupView setUpdateLayoutOnButtonConfirmation:1];
  }

  if (!self->_tapGestureRecognizer)
  {
    v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapAction_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v15;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
    [(SKUIHorizontalLockupView *)self->_lockupView addGestureRecognizer:self->_tapGestureRecognizer];
  }

  [(SKUIPreviewOverlayViewController *)self setView:self->_lockupView];
}

- (void)itemStateCenter:(id)a3 itemStatesChanged:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_lockupView)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__SKUIPreviewOverlayViewController_itemStateCenter_itemStatesChanged___block_invoke;
    v7[3] = &unk_2781F80C8;
    v8 = v5;
    v9 = self;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __70__SKUIPreviewOverlayViewController_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 1096) updateWithItemState:*(*(&v7 + 1) + 8 * v6++) context:*(*(a1 + 40) + 1088) animated:{1, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_tapAction:(id)a3
{
  if ([a3 state] == 3)
  {
    v8 = [(IKAppDocument *)self->_document templateElement];
    v4 = [v8 previewURLString];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
      v6 = [MEMORY[0x277D7FDA8] sessionManager];
      v7 = [v6 endSessionForURL:v5];

      [v7 stop];
    }
  }
}

- (id)_layoutCache
{
  layoutCache = self->_layoutCache;
  if (!layoutCache)
  {
    v4 = objc_alloc_init(SKUILayoutCache);
    v5 = self->_layoutCache;
    self->_layoutCache = v4;

    [(SKUILayoutCache *)self->_layoutCache setDelegate:self];
    layoutCache = self->_layoutCache;
  }

  return layoutCache;
}

- (double)_overlayWidth
{
  v2 = [(SKUIViewController *)self clientContext];
  v3 = SKUIUserInterfaceIdiom(v2);

  if (v3 == 1)
  {
    return 290.0;
  }

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v7 = v6;

  return v7 + -30.0;
}

- (void)initWithDocument:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPreviewOverlayViewController initWithDocument:]";
}

@end