@interface SUComposeReviewViewController
- (SUComposeReviewViewController)initWithCompositionURL:(id)l;
- (id)copyScriptViewController;
- (void)_showRemoteView;
- (void)dealloc;
- (void)loadView;
- (void)prepareWithCompletionBlock:(id)block;
@end

@implementation SUComposeReviewViewController

- (SUComposeReviewViewController)initWithCompositionURL:(id)l
{
  v6.receiver = self;
  v6.super_class = SUComposeReviewViewController;
  v4 = [(SUViewController *)&v6 init];
  if (v4)
  {
    v4->_compositionURL = [l copy];
    [(SUComposeReviewViewController *)v4 setContainmentSupport:1];
    if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
    {
      [(SUComposeReviewViewController *)v4 setModalPresentationStyle:2];
    }
  }

  return v4;
}

- (void)dealloc
{
  [(SKComposeReviewViewController *)self->_remoteViewController setDelegate:0];

  v3.receiver = self;
  v3.super_class = SUComposeReviewViewController;
  [(SUViewController *)&v3 dealloc];
}

- (id)copyScriptViewController
{
  v3 = objc_alloc_init(SUScriptComposeReviewViewController);
  [(SUScriptViewController *)v3 setNativeViewController:self];
  return v3;
}

- (void)prepareWithCompletionBlock:(id)block
{
  if (!self->_remoteViewController)
  {
    v5 = objc_alloc(ISWeakLinkedClassForString());
    self->_remoteViewController = v5;
    v6 = [(SKComposeReviewViewController *)v5 initWithCompositionURL:self->_compositionURL];
    self->_remoteViewController = v6;
    [(SKComposeReviewViewController *)v6 setDelegate:self];
    [(SUComposeReviewViewController *)self addChildViewController:self->_remoteViewController];
    [(SKComposeReviewViewController *)self->_remoteViewController prepareWithCompletionBlock:block];
    if ([(SUComposeReviewViewController *)self isViewLoaded])
    {

      [(SUComposeReviewViewController *)self _showRemoteView];
    }
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(SUComposeReviewViewController *)self setView:?];
  if (self->_remoteViewController)
  {
    [(SUComposeReviewViewController *)self _showRemoteView];
  }
}

- (void)_showRemoteView
{
  view = [(SUComposeReviewViewController *)self view];
  view2 = [(SKComposeReviewViewController *)self->_remoteViewController view];
  [view2 setAutoresizingMask:18];
  [view frame];
  [view2 setFrame:?];

  [view addSubview:view2];
}

@end