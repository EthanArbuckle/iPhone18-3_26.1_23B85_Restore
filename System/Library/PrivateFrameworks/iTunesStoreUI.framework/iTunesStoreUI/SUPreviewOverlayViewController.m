@interface SUPreviewOverlayViewController
+ (id)defaultRequestProperties;
+ (void)_setContentInsetsForScrollView:(id)a3 viewController:(id)a4;
+ (void)offsetScrollView:(id)a3 forViewController:(id)a4;
- (BOOL)isContentLoaded;
- (CGSize)contentSize;
- (id)_previewOverlayContainerForViewController:(id)a3;
- (id)_scrollViewForViewController:(id)a3;
- (id)_storePageViewController;
- (void)dealloc;
- (void)hideInNavigationController:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)hideInViewController:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)invalidateForMemoryPurge;
- (void)loadView;
- (void)loadWithCompletionBlock:(id)a3;
- (void)loadWithRequestProperties:(id)a3 completionBlock:(id)a4;
- (void)setContentSize:(CGSize)a3;
- (void)setUserInfoString:(id)a3;
- (void)showInNavigationController:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)showInViewController:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4;
@end

@implementation SUPreviewOverlayViewController

- (void)dealloc
{
  if (self->_storePageViewController)
  {
    [(SUPreviewOverlayViewController *)self removeChildViewController:?];
    storePageViewController = self->_storePageViewController;
  }

  else
  {
    storePageViewController = 0;
  }

  v4.receiver = self;
  v4.super_class = SUPreviewOverlayViewController;
  [(SUViewController *)&v4 dealloc];
}

+ (id)defaultRequestProperties
{
  v2 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v2 setURLBagKey:@"ix-preview-overlay"];

  return v2;
}

+ (void)offsetScrollView:(id)a3 forViewController:(id)a4
{
  if (![objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
  {
    v6 = SUPreviewOverlayForViewController(a4);

    [SUPreviewOverlayViewController _setContentInsetsForScrollView:a3 viewController:v6];
  }
}

- (void)hideInNavigationController:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  self->_visible = 0;
  if (a5)
  {
    (*(a5 + 2))(a5, a2, a3, a4);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];

  [v6 postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:self];
}

- (void)hideInViewController:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  if (a4)
  {
    v7 = MEMORY[0x1E69DD250];
    [objc_opt_class() defaultAnimationDuration];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __80__SUPreviewOverlayViewController_hideInViewController_animated_completionBlock___block_invoke;
    v10[3] = &unk_1E8164348;
    v10[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__SUPreviewOverlayViewController_hideInViewController_animated_completionBlock___block_invoke_2;
    v9[3] = &unk_1E81672D8;
    v9[4] = self;
    v9[5] = a5;
    [v7 animateWithDuration:v10 animations:v9 completion:?];
  }

  else
  {
    if ([(SUPreviewOverlayViewController *)self isViewLoaded])
    {
      [-[SUPreviewOverlayViewController view](self "view")];
    }

    [(SUPreviewOverlayViewController *)self removeFromParentViewController];
    self->_visible = 0;
    if (a5)
    {
      (*(a5 + 2))(a5);
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];

    [v8 postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:self];
  }
}

uint64_t __80__SUPreviewOverlayViewController_hideInViewController_animated_completionBlock___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];

  return [v1 setAlpha:0.0];
}

uint64_t __80__SUPreviewOverlayViewController_hideInViewController_animated_completionBlock___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isViewLoaded])
  {
    [objc_msgSend(*(a1 + 32) "view")];
  }

  [*(a1 + 32) removeFromParentViewController];
  *(*(a1 + 32) + 1200) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);

  return [v3 postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:v4];
}

- (BOOL)isContentLoaded
{
  if (self->_loaded)
  {
    return ![(SUStorePageViewController *)self->_storePageViewController _isCacheExpired:v2];
  }

  else
  {
    return 0;
  }
}

- (void)loadWithCompletionBlock:(id)a3
{
  storePageViewController = self->_storePageViewController;
  if (storePageViewController)
  {
    v6 = [(SUStorePageViewController *)storePageViewController URLRequestProperties];
  }

  else
  {
    v6 = [objc_opt_class() defaultRequestProperties];
  }

  [(SUPreviewOverlayViewController *)self loadWithRequestProperties:v6 completionBlock:a3];
}

- (void)loadWithRequestProperties:(id)a3 completionBlock:(id)a4
{
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    v8 = self;
    (*(self->_loadBlock + 2))();
    loadBlock = self->_loadBlock;
  }

  self->_loadBlock = [a4 copy];
  [(SUPreviewOverlayViewController *)self view];
  self->_loaded = 0;
  [(SUViewController *)self setSkLoading:1];
  v9 = [(SUPreviewOverlayViewController *)self _storePageViewController];

  [v9 reloadWithURLRequestProperties:a3];
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(SUPreviewOverlayViewController *)self isViewLoaded])
  {
    [-[SUPreviewOverlayViewController view](self "view")];
    [-[SUPreviewOverlayViewController view](self "view")];
  }

  self->_contentSize.width = width;
  self->_contentSize.height = height;
}

- (void)setUserInfoString:(id)a3
{
  userInfoString = self->_userInfoString;
  if (userInfoString != a3)
  {

    self->_userInfoString = [a3 copy];
    [(SUStorePageViewController *)self->_storePageViewController setScriptUserInfo:a3];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];

    [v6 postNotificationName:@"SUPreviewOverlayUserInfoDidChangeNotification" object:self];
  }
}

- (void)showInNavigationController:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v7 = [a3 navigationBar];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(SUPreviewOverlayViewController *)self view];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v21 = (v17 - v13) * 0.5;
  v22 = v9 - floorf(v21);
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  MaxY = CGRectGetMaxY(v27);
  v24 = MaxY - v20;
  [v16 setFrame:{v22, MaxY - v20, v18, v20}];
  [objc_msgSend(v7 "superview")];
  [v16 setFrame:{v22, v20 + v24, v18, v20}];
  self->_visible = 1;
  if (a5)
  {
    (*(a5 + 2))(a5);
  }

  v25 = [MEMORY[0x1E696AD88] defaultCenter];

  [v25 postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:self];
}

- (void)showInViewController:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v9 = [a3 view];
  [v9 bounds];
  v11 = v10;
  v12 = [(SUPreviewOverlayViewController *)self view];
  [v12 setAutoresizingMask:33];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v17 = v11 - v13;
  [(SUPreviewOverlayViewController *)self paddingRight];
  v19 = v17 - v18;
  [(SUPreviewOverlayViewController *)self paddingTop];
  [v12 setFrame:{v19, v20, v14, v16}];
  [v9 addSubview:v12];
  [a3 addChildViewController:self];
  if (a4)
  {
    [v12 setAlpha:0.0];
    v21 = MEMORY[0x1E69DD250];
    [objc_opt_class() defaultAnimationDuration];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __80__SUPreviewOverlayViewController_showInViewController_animated_completionBlock___block_invoke;
    v24[3] = &unk_1E8164348;
    v24[4] = v12;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80__SUPreviewOverlayViewController_showInViewController_animated_completionBlock___block_invoke_2;
    v23[3] = &unk_1E81672D8;
    v23[4] = self;
    v23[5] = a5;
    [v21 animateWithDuration:v24 animations:v23 completion:?];
  }

  else
  {
    self->_visible = 1;
    [v12 setAlpha:1.0];
    v22 = [MEMORY[0x1E696AD88] defaultCenter];

    [v22 postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:self];
  }
}

uint64_t __80__SUPreviewOverlayViewController_showInViewController_animated_completionBlock___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1200) = 1;
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);

  return [v3 postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:v4];
}

- (void)invalidateForMemoryPurge
{
  if (![(SUViewController *)self isVisible])
  {
    self->_loaded = 0;
  }

  v3.receiver = self;
  v3.super_class = SUPreviewOverlayViewController;
  [(SUViewController *)&v3 invalidateForMemoryPurge];
}

- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4
{
  self->_loaded = a4;
  [(SUViewController *)self setSkLoading:0];
  if (self->_loadBlock)
  {
    v5 = self;
    (*(self->_loadBlock + 2))();

    self->_loadBlock = 0;
  }
}

- (void)loadView
{
  v3 = [SUPreviewOverlayView alloc];
  if (self->_contentSize.height >= 1.0)
  {
    height = self->_contentSize.height;
  }

  else
  {
    height = 1.0;
  }

  v5 = [(SUPreviewOverlayView *)v3 initWithFrame:0.0, 0.0, self->_contentSize.width, height];
  -[SUPreviewOverlayView setStorePageView:](v5, "setStorePageView:", [-[SUPreviewOverlayViewController _storePageViewController](self "_storePageViewController")]);
  [(SUPreviewOverlayViewController *)self setView:v5];
}

- (id)_previewOverlayContainerForViewController:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a3, 0}];
  v4 = [v3 count];
  if (v4 < 1)
  {
LABEL_7:
    v7 = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [v3 objectAtIndex:v6];
      if ([v7 conformsToProtocol:&unk_1F420D8A8])
      {
        break;
      }

      v8 = [v7 childViewControllers];
      if ([v8 count])
      {
        [v3 addObjectsFromArray:v8];
        v5 = [v3 count];
      }

      if (++v6 >= v5)
      {
        goto LABEL_7;
      }
    }
  }

  return v7;
}

- (id)_scrollViewForViewController:(id)a3
{
  v3 = [a3 view];

  return SUViewFirstUIScrollView(v3);
}

- (id)_storePageViewController
{
  result = self->_storePageViewController;
  if (!result)
  {
    v4 = objc_alloc_init(SUPreviewOverlayStorePageViewController);
    self->_storePageViewController = v4;
    [(SUViewController *)v4 setClientInterface:[(SUViewController *)self clientInterface]];
    [(SUStorePageViewController *)self->_storePageViewController setLoadsWhenHidden:1];
    [(SUStorePageViewController *)self->_storePageViewController _setReloadsWhenCacheExpired:0];
    [(SUStorePageViewController *)self->_storePageViewController setScriptUserInfo:self->_userInfoString];
    -[SUStorePageViewController setURLRequestProperties:](self->_storePageViewController, "setURLRequestProperties:", [objc_opt_class() defaultRequestProperties]);
    [(SUPreviewOverlayViewController *)self addChildViewController:self->_storePageViewController];
    v5 = [(SUStorePageViewController *)self->_storePageViewController copyDefaultScriptProperties];
    [v5 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
    [v5 setScrollingDisabled:1];
    [v5 setShouldLoadProgressively:0];
    [(SUStorePageViewController *)self->_storePageViewController setScriptProperties:v5];

    return self->_storePageViewController;
  }

  return result;
}

+ (void)_setContentInsetsForScrollView:(id)a3 viewController:(id)a4
{
  if (a3)
  {
    v6 = SUPreviewOverlayScrollViewIsPreviewAdjusted(a3);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [a3 contentInset];
    v34 = v6;
    v14 = v13 - v6;
    v16 = v15 - v10;
    v18 = v17 - v12;
    v20 = v19 - v8;
    if (a4)
    {
      if (*(a4 + 1200) == 1)
      {
        [objc_msgSend(a4 "view")];
        v22 = v21;
      }

      else
      {
        v22 = *(MEMORY[0x1E695F058] + 24);
      }

      v14 = v14 + v22;
      v24 = 0.0;
      v25 = 0.0;
      v23 = 0.0;
    }

    else
    {
      v22 = *MEMORY[0x1E69DDCE0];
      v23 = *(MEMORY[0x1E69DDCE0] + 8);
      v25 = *(MEMORY[0x1E69DDCE0] + 16);
      v24 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    [a3 setContentInset:{v14, v20, v16, v18}];
    [a3 setScrollIndicatorInsets:{v14, v20, v16, v18}];
    SUPreviewOverlayScrollViewSetPreviewAdjusted(a3, v22, v23, v25, v24);
    if (v22 != v34)
    {
      [a3 contentOffset];
      v27 = v26;
      v29 = v28 - (v22 - v34);
      if (v29 < 0.0 && v14 <= -v29)
      {
        [a3 contentSize];
        v32 = v31;
        [a3 frame];
        if (v32 >= v33)
        {

          [a3 setContentOffset:{v27, v29}];
        }
      }
    }
  }
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end