@interface SKUISignInDocumentViewController
- (SKUISignInDocumentViewController)initWithTemplateElement:(id)a3;
- (id)_backgroundColor;
- (id)_layoutContext;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_layoutScrollView;
- (void)_reloadContentSize;
- (void)_reloadPanelViewWithScrollViewSize:(CGSize)a3;
- (void)_signInFailed:(id)a3 error:(id)a4;
- (void)_signInSuccess:(id)a3;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)layoutCacheDidFinishBatch:(id)a3;
- (void)loadView;
- (void)signInEntryComplete:(id)a3 accountName:(id)a4 password:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUISignInDocumentViewController

- (SKUISignInDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISignInDocumentViewController initWithTemplateElement:];
  }

  v10.receiver = self;
  v10.super_class = SKUISignInDocumentViewController;
  v6 = [(SKUISignInDocumentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C48] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  [(SKUILayoutCache *)self->_textLayoutCache setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUISignInDocumentViewController;
  [(SKUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  if (!self->_loginView)
  {
    v3 = objc_alloc_init(SKUISignInTemplateView);
    loginView = self->_loginView;
    self->_loginView = v3;

    [(SKUISignInTemplateView *)self->_loginView setDelegate:self];
    v5 = self->_loginView;
    v6 = [(SKUISignInDocumentViewController *)self _backgroundColor];
    [(SKUIViewReuseView *)v5 setBackgroundColor:v6];

    [(SKUISignInTemplateView *)self->_loginView setPreservesSuperviewLayoutMargins:1];
  }

  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v8 = objc_alloc_init(MEMORY[0x277D759D8]);
    v9 = self->_scrollView;
    self->_scrollView = v8;

    [(UIScrollView *)self->_scrollView setAlwaysBounceHorizontal:0];
    [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:0];
    [(UIScrollView *)self->_scrollView setPreservesSuperviewLayoutMargins:1];
    [(UIScrollView *)self->_scrollView addSubview:self->_loginView];
    scrollView = self->_scrollView;
  }

  [v10 addSubview:scrollView];
  [(SKUISignInDocumentViewController *)self setView:v10];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SKUISignInDocumentViewController *)self _layoutScrollView];
  if (self->_loginView)
  {
    [(UIScrollView *)self->_scrollView bounds];
    [(SKUISignInDocumentViewController *)self _reloadPanelViewWithScrollViewSize:v5, v6];
  }

  v7.receiver = self;
  v7.super_class = SKUISignInDocumentViewController;
  [(SKUIViewController *)&v7 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(SKUISignInTemplateView *)self->_loginView resignFirstResponder];
  v5.receiver = self;
  v5.super_class = SKUISignInDocumentViewController;
  [(SKUISignInDocumentViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  [(SKUISignInDocumentViewController *)self _layoutScrollView];
  if (self->_loginView)
  {
    [(SKUISignInDocumentViewController *)self _reloadContentSize];
  }

  v3.receiver = self;
  v3.super_class = SKUISignInDocumentViewController;
  [(SKUISignInDocumentViewController *)&v3 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(SKUISignInDocumentViewController *)self _reloadPanelViewWithScrollViewSize:width, height];
  v8.receiver = self;
  v8.super_class = SKUISignInDocumentViewController;
  [(SKUISignInDocumentViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  loginView = self->_loginView;
  v7 = a4;
  v8 = a3;
  v9 = [(SKUISignInDocumentViewController *)self _layoutContext];
  [(SKUISignInTemplateView *)loginView setImage:v7 forArtworkRequest:v8 context:v9];
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  loginView = self->_loginView;
  if (loginView)
  {
    v7 = [(SKUISignInDocumentViewController *)self _backgroundColor];
    [(SKUIViewReuseView *)loginView setBackgroundColor:v7];

    [(UIScrollView *)self->_scrollView bounds];

    [(SKUISignInDocumentViewController *)self _reloadPanelViewWithScrollViewSize:v8, v9];
  }
}

- (void)layoutCacheDidFinishBatch:(id)a3
{
  loginView = self->_loginView;
  templateElement = self->_templateElement;
  [(UIScrollView *)self->_scrollView bounds];
  v7 = v6;
  v8 = [(SKUISignInDocumentViewController *)self _layoutContext];
  [(SKUISignInTemplateView *)loginView reloadWithViewElement:templateElement width:v8 context:v7];
}

- (void)signInEntryComplete:(id)a3 accountName:(id)a4 password:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CF0178]);
  v12 = objc_alloc_init(MEMORY[0x277CF0380]);
  [v12 setServiceType:2];
  [v12 setUsername:v9];
  [v12 _setPassword:v10];
  [v12 setIsUsernameEditable:0];
  [v12 setShouldAllowAppleIDCreation:0];
  [v12 setPresentingViewController:self];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke;
  v14[3] = &unk_2781FB090;
  objc_copyWeak(&v16, &location);
  v13 = v9;
  v15 = v13;
  [v11 authenticateWithContext:v12 completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke_5;
    v7[3] = &unk_2781FA0C8;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = *(a1 + 32);
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);

    objc_destroyWeak(&v10);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke_2;
    block[3] = &unk_2781FA368;
    v12 = v5;
    objc_copyWeak(&v14, (a1 + 40));
    v13 = *(a1 + 32);
    dispatch_sync(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v14);
  }
}

void __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke_2(id *a1)
{
  v2 = [MEMORY[0x277D69BC8] contextForSignIn];
  v3 = [a1[4] objectForKey:*MEMORY[0x277CEFFD8]];
  [v2 setAccountName:v3];

  v4 = [a1[4] objectForKey:*MEMORY[0x277CEFFC8]];
  [v2 setInitialPassword:v4];

  v5 = [a1[4] objectForKey:*MEMORY[0x277CEFF78]];
  [v2 setAltDSID:v5];

  [v2 setAllowsRetry:0];
  [v2 setCanSetActiveAccount:1];
  [v2 setPromptStyle:0];
  v6 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke_3;
  v7[3] = &unk_2781FB068;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  [v6 startWithAuthenticateResponseBlock:v7];

  objc_destroyWeak(&v9);
}

void __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke_4;
  v9[3] = &unk_2781FB040;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v12 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _signInFailed:*(a1 + 48) error:*(a1 + 40)];
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) authenticatedAccount];
  [WeakRetained _signInSuccess:v3];

LABEL_6:
}

void __77__SKUISignInDocumentViewController_signInEntryComplete_accountName_password___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _signInFailed:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  if (v10)
  {
    v5 = [(SKUISignInDocumentViewController *)self view];
    [v10 CGRectValue];
    [v5 convertRect:0 fromView:?];
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;

    [(SKUISignInDocumentViewController *)self _layoutScrollView];
    [(SKUISignInDocumentViewController *)self _reloadContentSize];
  }
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  if (v10)
  {
    v5 = [(SKUISignInDocumentViewController *)self view];
    [v10 CGRectValue];
    [v5 convertRect:0 fromView:?];
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;

    [(SKUISignInDocumentViewController *)self _layoutScrollView];
    [(SKUISignInDocumentViewController *)self _reloadContentSize];
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  if (v6)
  {
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
    self->_keyboardFrame.size = v5;
    [(SKUISignInDocumentViewController *)self _layoutScrollView];
    [(SKUISignInDocumentViewController *)self _reloadContentSize];
  }
}

- (id)_backgroundColor
{
  v2 = [(SKUISignInTemplateViewElement *)self->_templateElement style];
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

    [(SKUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SKUISignInTemplateViewElement *)self->_templateElement elementType]];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    v8 = objc_alloc_init(SKUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    [(SKUILayoutCache *)self->_textLayoutCache setDelegate:self];
    v10 = [[SKUIViewElementTextLayoutCache alloc] initWithLayoutCache:self->_textLayoutCache];
    [(SKUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v10];
    v11 = [SKUIResourceLoader alloc];
    v12 = [(SKUIViewController *)self operationQueue];
    v13 = [(SKUIViewController *)self clientContext];
    v14 = [(SKUIResourceLoader *)v11 initWithOperationQueue:v12 clientContext:v13];

    [(SKUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v14];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_signInFailed:(id)a3 error:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(SKUIViewController *)self clientContext];
  v8 = v7;
  v9 = MEMORY[0x277D75110];
  if (v7)
  {
    [v7 localizedStringForKey:@"CANNOT_LOGIN_TITLE"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"CANNOT_LOGIN_TITLE" inBundles:0];
  }
  v10 = ;
  v11 = [v6 localizedDescription];
  v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  if (v8)
  {
    [v8 localizedStringForKey:@"OK"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"OK" inBundles:0];
  }
  v14 = ;
  v15 = [v13 actionWithTitle:v14 style:0 handler:0];
  [v12 addAction:v15];

  [(SKUISignInDocumentViewController *)self presentViewController:v12 animated:1 completion:0];
  if (self->_templateElement)
  {
    v16 = [v6 description];
    v17 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"failed", @"result", v18, @"accountName", v16, @"reason", 0}];
    [(SKUISignInTemplateViewElement *)self->_templateElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v17 completionBlock:0];
  }
}

- (void)_signInSuccess:(id)a3
{
  if (self->_templateElement)
  {
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v5 accountName];

    v8 = [v6 initWithObjectsAndKeys:{@"success", @"result", v7, @"accountName", 0}];
    [(SKUISignInTemplateViewElement *)self->_templateElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v8 completionBlock:0];
  }
}

- (void)_layoutScrollView
{
  v3 = [(SKUISignInDocumentViewController *)self view];
  [v3 frame];
  v21 = CGRectIntersection(v20, self->_keyboardFrame);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;

  v8 = [(SKUISignInDocumentViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v17 = CGRectGetHeight(v22);
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setFrame:v10, v12, v14, v16 - v17];
}

- (void)_reloadContentSize
{
  [(UIScrollView *)self->_scrollView contentInset];
  v4 = v3;
  v6 = v5;
  [(SKUISignInTemplateView *)self->_loginView layoutMargins];
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
  v16 = floorf(v15);
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = objc_opt_class();
  templateElement = self->_templateElement;
  v21 = [(SKUISignInDocumentViewController *)self _layoutContext];
  [v19 sizeThatFitsWidth:templateElement viewElement:v21 context:v16];
  v23 = v22;
  v25 = v24;

  if (v25 < v14)
  {
    v25 = v14;
  }

  if (v23 < v13)
  {
    v23 = v13;
  }

  [(SKUISignInTemplateView *)self->_loginView setFrame:v17, v18, v23, v25];
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentSize:v23, v25];
}

- (void)_reloadPanelViewWithScrollViewSize:(CGSize)a3
{
  width = a3.width;
  if (self->_loginView)
  {
    v4 = a3.width <= 0.00000011920929;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v13 = [(SKUISignInDocumentViewController *)self _layoutContext];
    v6 = [(SKUISignInTemplateView *)self->_loginView tintColor];
    [v13 setTintColor:v6];

    [objc_opt_class() prefetchResourcesForViewElement:self->_templateElement reason:1 context:v13];
    [(SKUISignInTemplateView *)self->_loginView layoutMargins];
    v8 = v7;
    v10 = v9;
    [(SKUISignInTemplateView *)self->_loginView setLayoutMargins:0.0];
    v11 = width - v8 - v10;
    v12 = floorf(v11);
    [objc_opt_class() requestLayoutForViewElement:self->_templateElement width:v13 context:v12];
    [(SKUILayoutCache *)self->_textLayoutCache commitLayoutRequests];
    [(SKUISignInTemplateView *)self->_loginView reloadWithViewElement:self->_templateElement width:v13 context:v12];
    [(SKUISignInDocumentViewController *)self _reloadContentSize];
  }
}

- (void)initWithTemplateElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISignInDocumentViewController initWithTemplateElement:]";
}

@end