@interface SUPreviewOverlayViewController
+ (id)defaultRequestProperties;
+ (void)_setContentInsetsForScrollView:(id)view viewController:(id)controller;
+ (void)offsetScrollView:(id)view forViewController:(id)controller;
- (BOOL)isContentLoaded;
- (CGSize)contentSize;
- (id)_previewOverlayContainerForViewController:(id)controller;
- (id)_scrollViewForViewController:(id)controller;
- (id)_storePageViewController;
- (void)dealloc;
- (void)hideInNavigationController:(id)controller animated:(BOOL)animated completionBlock:(id)block;
- (void)hideInViewController:(id)controller animated:(BOOL)animated completionBlock:(id)block;
- (void)invalidateForMemoryPurge;
- (void)loadView;
- (void)loadWithCompletionBlock:(id)block;
- (void)loadWithRequestProperties:(id)properties completionBlock:(id)block;
- (void)setContentSize:(CGSize)size;
- (void)setUserInfoString:(id)string;
- (void)showInNavigationController:(id)controller animated:(BOOL)animated completionBlock:(id)block;
- (void)showInViewController:(id)controller animated:(BOOL)animated completionBlock:(id)block;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
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

+ (void)offsetScrollView:(id)view forViewController:(id)controller
{
  if (![objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
  {
    v6 = SUPreviewOverlayForViewController(controller);

    [SUPreviewOverlayViewController _setContentInsetsForScrollView:view viewController:v6];
  }
}

- (void)hideInNavigationController:(id)controller animated:(BOOL)animated completionBlock:(id)block
{
  self->_visible = 0;
  if (block)
  {
    (*(block + 2))(block, a2, controller, animated);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:self];
}

- (void)hideInViewController:(id)controller animated:(BOOL)animated completionBlock:(id)block
{
  if (animated)
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
    v9[5] = block;
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
    if (block)
    {
      (*(block + 2))(block);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:self];
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

- (void)loadWithCompletionBlock:(id)block
{
  storePageViewController = self->_storePageViewController;
  if (storePageViewController)
  {
    uRLRequestProperties = [(SUStorePageViewController *)storePageViewController URLRequestProperties];
  }

  else
  {
    uRLRequestProperties = [objc_opt_class() defaultRequestProperties];
  }

  [(SUPreviewOverlayViewController *)self loadWithRequestProperties:uRLRequestProperties completionBlock:block];
}

- (void)loadWithRequestProperties:(id)properties completionBlock:(id)block
{
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    selfCopy = self;
    (*(self->_loadBlock + 2))();
    loadBlock = self->_loadBlock;
  }

  self->_loadBlock = [block copy];
  [(SUPreviewOverlayViewController *)self view];
  self->_loaded = 0;
  [(SUViewController *)self setSkLoading:1];
  _storePageViewController = [(SUPreviewOverlayViewController *)self _storePageViewController];

  [_storePageViewController reloadWithURLRequestProperties:properties];
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(SUPreviewOverlayViewController *)self isViewLoaded])
  {
    [-[SUPreviewOverlayViewController view](self "view")];
    [-[SUPreviewOverlayViewController view](self "view")];
  }

  self->_contentSize.width = width;
  self->_contentSize.height = height;
}

- (void)setUserInfoString:(id)string
{
  userInfoString = self->_userInfoString;
  if (userInfoString != string)
  {

    self->_userInfoString = [string copy];
    [(SUStorePageViewController *)self->_storePageViewController setScriptUserInfo:string];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUPreviewOverlayUserInfoDidChangeNotification" object:self];
  }
}

- (void)showInNavigationController:(id)controller animated:(BOOL)animated completionBlock:(id)block
{
  navigationBar = [controller navigationBar];
  [navigationBar frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view = [(SUPreviewOverlayViewController *)self view];
  [view frame];
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
  [view setFrame:{v22, MaxY - v20, v18, v20}];
  [objc_msgSend(navigationBar "superview")];
  [view setFrame:{v22, v20 + v24, v18, v20}];
  self->_visible = 1;
  if (block)
  {
    (*(block + 2))(block);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:self];
}

- (void)showInViewController:(id)controller animated:(BOOL)animated completionBlock:(id)block
{
  view = [controller view];
  [view bounds];
  v11 = v10;
  view2 = [(SUPreviewOverlayViewController *)self view];
  [view2 setAutoresizingMask:33];
  [view2 frame];
  v14 = v13;
  v16 = v15;
  v17 = v11 - v13;
  [(SUPreviewOverlayViewController *)self paddingRight];
  v19 = v17 - v18;
  [(SUPreviewOverlayViewController *)self paddingTop];
  [view2 setFrame:{v19, v20, v14, v16}];
  [view addSubview:view2];
  [controller addChildViewController:self];
  if (animated)
  {
    [view2 setAlpha:0.0];
    v21 = MEMORY[0x1E69DD250];
    [objc_opt_class() defaultAnimationDuration];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __80__SUPreviewOverlayViewController_showInViewController_animated_completionBlock___block_invoke;
    v24[3] = &unk_1E8164348;
    v24[4] = view2;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80__SUPreviewOverlayViewController_showInViewController_animated_completionBlock___block_invoke_2;
    v23[3] = &unk_1E81672D8;
    v23[4] = self;
    v23[5] = block;
    [v21 animateWithDuration:v24 animations:v23 completion:?];
  }

  else
  {
    self->_visible = 1;
    [view2 setAlpha:1.0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUPreviewOverlayVisibilityDidChangeNotification" object:self];
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

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  self->_loaded = success;
  [(SUViewController *)self setSkLoading:0];
  if (self->_loadBlock)
  {
    selfCopy = self;
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

  height = [(SUPreviewOverlayView *)v3 initWithFrame:0.0, 0.0, self->_contentSize.width, height];
  -[SUPreviewOverlayView setStorePageView:](height, "setStorePageView:", [-[SUPreviewOverlayViewController _storePageViewController](self "_storePageViewController")]);
  [(SUPreviewOverlayViewController *)self setView:height];
}

- (id)_previewOverlayContainerForViewController:(id)controller
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{controller, 0}];
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

      childViewControllers = [v7 childViewControllers];
      if ([childViewControllers count])
      {
        [v3 addObjectsFromArray:childViewControllers];
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

- (id)_scrollViewForViewController:(id)controller
{
  view = [controller view];

  return SUViewFirstUIScrollView(view);
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
    copyDefaultScriptProperties = [(SUStorePageViewController *)self->_storePageViewController copyDefaultScriptProperties];
    [copyDefaultScriptProperties setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
    [copyDefaultScriptProperties setScrollingDisabled:1];
    [copyDefaultScriptProperties setShouldLoadProgressively:0];
    [(SUStorePageViewController *)self->_storePageViewController setScriptProperties:copyDefaultScriptProperties];

    return self->_storePageViewController;
  }

  return result;
}

+ (void)_setContentInsetsForScrollView:(id)view viewController:(id)controller
{
  if (view)
  {
    v6 = SUPreviewOverlayScrollViewIsPreviewAdjusted(view);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [view contentInset];
    v34 = v6;
    v14 = v13 - v6;
    v16 = v15 - v10;
    v18 = v17 - v12;
    v20 = v19 - v8;
    if (controller)
    {
      if (*(controller + 1200) == 1)
      {
        [objc_msgSend(controller "view")];
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

    [view setContentInset:{v14, v20, v16, v18}];
    [view setScrollIndicatorInsets:{v14, v20, v16, v18}];
    SUPreviewOverlayScrollViewSetPreviewAdjusted(view, v22, v23, v25, v24);
    if (v22 != v34)
    {
      [view contentOffset];
      v27 = v26;
      v29 = v28 - (v22 - v34);
      if (v29 < 0.0 && v14 <= -v29)
      {
        [view contentSize];
        v32 = v31;
        [view frame];
        if (v32 >= v33)
        {

          [view setContentOffset:{v27, v29}];
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