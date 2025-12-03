@interface SKUIContentUnavailableDocumentViewController
- (SKUIContentUnavailableDocumentViewController)initWithTemplateElement:(id)element;
- (UIEdgeInsets)_contentInsets;
- (id)_layoutContext;
- (void)_reloadContentUnavailableView:(id)view width:(double)width;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)layoutCacheDidFinishBatch:(id)batch;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIContentUnavailableDocumentViewController

- (SKUIContentUnavailableDocumentViewController)initWithTemplateElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContentUnavailableDocumentViewController initWithTemplateElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUIContentUnavailableDocumentViewController;
  v6 = [(SKUIContentUnavailableDocumentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, element);
  }

  return v7;
}

- (void)dealloc
{
  [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  [(SKUILayoutCache *)self->_textLayoutCache setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIContentUnavailableDocumentViewController;
  [(SKUIViewController *)&v3 dealloc];
}

- (void)documentDidUpdate:(id)update
{
  templateElement = [update templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

  if (self->_contentUnavailableView)
  {
    style = [(SKUIContentUnavailableTemplateElement *)self->_templateElement style];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];

    contentUnavailableView = self->_contentUnavailableView;
    if (color)
    {
      [(SKUIViewReuseView *)self->_contentUnavailableView setBackgroundColor:color];
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [(SKUIViewReuseView *)contentUnavailableView setBackgroundColor:systemBackgroundColor];
    }

    v10 = self->_contentUnavailableView;
    [(SKUIContentUnavailableView *)v10 bounds];
    [(SKUIContentUnavailableDocumentViewController *)self _reloadContentUnavailableView:v10 width:v11];
  }
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SKUIContentUnavailableDocumentViewController;
  [(SKUIContentUnavailableDocumentViewController *)&v14 viewDidLoad];
  contentUnavailableView = self->_contentUnavailableView;
  if (!contentUnavailableView)
  {
    style = [(SKUIContentUnavailableTemplateElement *)self->_templateElement style];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];

    v7 = [SKUIContentUnavailableView alloc];
    view = [(SKUIContentUnavailableDocumentViewController *)self view];
    [view bounds];
    v9 = [(SKUIViewReuseView *)v7 initWithFrame:?];
    v10 = self->_contentUnavailableView;
    self->_contentUnavailableView = v9;

    v11 = self->_contentUnavailableView;
    if (color)
    {
      [(SKUIViewReuseView *)self->_contentUnavailableView setBackgroundColor:color];
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [(SKUIViewReuseView *)v11 setBackgroundColor:systemBackgroundColor];
    }

    contentUnavailableView = self->_contentUnavailableView;
  }

  [(SKUIContentUnavailableView *)contentUnavailableView setAutoresizingMask:18];
  view2 = [(SKUIContentUnavailableDocumentViewController *)self view];
  [view2 addSubview:self->_contentUnavailableView];
}

- (void)viewWillLayoutSubviews
{
  contentUnavailableView = self->_contentUnavailableView;
  [(SKUIContentUnavailableDocumentViewController *)self _contentInsets];
  [(SKUIContentUnavailableView *)contentUnavailableView setContentInset:?];
  v4 = self->_contentUnavailableView;
  if (v4)
  {
    [(SKUIContentUnavailableView *)self->_contentUnavailableView bounds];
    [(SKUIContentUnavailableDocumentViewController *)self _reloadContentUnavailableView:v4 width:v5];
  }

  v6.receiver = self;
  v6.super_class = SKUIContentUnavailableDocumentViewController;
  [(SKUIContentUnavailableDocumentViewController *)&v6 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  contentUnavailableView = self->_contentUnavailableView;
  coordinatorCopy = coordinator;
  [(SKUIContentUnavailableDocumentViewController *)self _reloadContentUnavailableView:contentUnavailableView width:width];
  v9.receiver = self;
  v9.super_class = SKUIContentUnavailableDocumentViewController;
  [(SKUIContentUnavailableDocumentViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  contentUnavailableView = self->_contentUnavailableView;
  imageCopy = image;
  requestCopy = request;
  _layoutContext = [(SKUIContentUnavailableDocumentViewController *)self _layoutContext];
  [(SKUIContentUnavailableView *)contentUnavailableView setImage:imageCopy forArtworkRequest:requestCopy context:_layoutContext];
}

- (void)layoutCacheDidFinishBatch:(id)batch
{
  contentUnavailableView = self->_contentUnavailableView;
  templateElement = self->_templateElement;
  [(SKUIContentUnavailableView *)contentUnavailableView bounds];
  v7 = v6;
  _layoutContext = [(SKUIContentUnavailableDocumentViewController *)self _layoutContext];
  [(SKUIContentUnavailableView *)contentUnavailableView reloadWithViewElement:templateElement width:_layoutContext context:v7];
}

- (UIEdgeInsets)_contentInsets
{
  topLayoutGuide = [(SKUIContentUnavailableDocumentViewController *)self topLayoutGuide];
  [topLayoutGuide length];
  v5 = v4;
  bottomLayoutGuide = [(SKUIContentUnavailableDocumentViewController *)self bottomLayoutGuide];
  [bottomLayoutGuide length];
  v8 = v7;

  v9 = 15.0;
  v10 = 15.0;
  v11 = v5;
  v12 = v8;
  result.right = v10;
  result.bottom = v12;
  result.left = v9;
  result.top = v11;
  return result;
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
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUIViewElementLayoutContext *)v6 setClientContext:clientContext];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SKUIContentUnavailableTemplateElement *)self->_templateElement elementType]];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    v8 = objc_alloc_init(SKUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    [(SKUILayoutCache *)self->_textLayoutCache setDelegate:self];
    v10 = [[SKUIViewElementTextLayoutCache alloc] initWithLayoutCache:self->_textLayoutCache];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v10];
    v11 = [SKUIResourceLoader alloc];
    operationQueue = [(SKUIViewController *)self operationQueue];
    clientContext2 = [(SKUIViewController *)self clientContext];
    v14 = [(SKUIResourceLoader *)v11 initWithOperationQueue:operationQueue clientContext:clientContext2];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v14];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_reloadContentUnavailableView:(id)view width:(double)width
{
  if (width > 0.00000011920929)
  {
    viewCopy = view;
    _layoutContext = [(SKUIContentUnavailableDocumentViewController *)self _layoutContext];
    tintColor = [viewCopy tintColor];
    [_layoutContext setTintColor:tintColor];

    [objc_opt_class() prefetchResourcesForViewElement:self->_templateElement reason:1 context:_layoutContext];
    v8 = width + -30.0;
    v9 = floorf(v8);
    [objc_opt_class() requestLayoutForViewElement:self->_templateElement width:_layoutContext context:v9];
    [(SKUILayoutCache *)self->_textLayoutCache commitLayoutRequests];
    [viewCopy reloadWithViewElement:self->_templateElement width:_layoutContext context:v9];
    [(SKUIContentUnavailableDocumentViewController *)self _contentInsets];
    [viewCopy setContentInset:?];
  }
}

- (void)initWithTemplateElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContentUnavailableDocumentViewController initWithTemplateElement:]";
}

@end