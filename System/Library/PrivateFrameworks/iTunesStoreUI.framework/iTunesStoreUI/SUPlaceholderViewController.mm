@interface SUPlaceholderViewController
- (SULoadingView)loadingView;
- (SUPlaceholderViewController)init;
- (id)_copyActiveGradient;
- (id)_newURLBagBackgroundGradient;
- (void)_reloadBackgroundGradient;
- (void)_reloadLoadingView;
- (void)dealloc;
- (void)loadView;
- (void)parentViewControllerHierarchyDidChange;
- (void)setBackgroundGradient:(id)gradient;
- (void)setDefaultBackgroundGradient:(id)gradient;
- (void)setScriptProperties:(id)properties;
- (void)setShouldShowLoadingView:(BOOL)view;
- (void)setSkLoading:(BOOL)loading;
@end

@implementation SUPlaceholderViewController

- (SUPlaceholderViewController)init
{
  v5.receiver = self;
  v5.super_class = SUPlaceholderViewController;
  v2 = [(SUViewController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__bagDidLoadNotification_ name:*MEMORY[0x1E69E4718] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4718] object:0];

  v4.receiver = self;
  v4.super_class = SUPlaceholderViewController;
  [(SUViewController *)&v4 dealloc];
}

- (SULoadingView)loadingView
{
  result = self->_loadingView;
  if (!result)
  {
    v4 = objc_alloc_init(SULoadingView);
    self->_loadingView = v4;
    [(SULoadingView *)v4 setAutoresizingMask:45];
    [(SULoadingView *)self->_loadingView setHidden:self->_hideLoadingView];
    return self->_loadingView;
  }

  return result;
}

- (void)setBackgroundGradient:(id)gradient
{
  backgroundGradient = self->_backgroundGradient;
  if (backgroundGradient != gradient)
  {

    self->_backgroundGradient = [gradient copy];

    [(SUPlaceholderViewController *)self _reloadBackgroundGradient];
  }
}

- (void)setDefaultBackgroundGradient:(id)gradient
{
  defaultBackgroundGradient = self->_defaultBackgroundGradient;
  if (defaultBackgroundGradient != gradient)
  {

    self->_defaultBackgroundGradient = [gradient copy];

    [(SUPlaceholderViewController *)self _reloadBackgroundGradient];
  }
}

- (void)setShouldShowLoadingView:(BOOL)view
{
  if (self->_hideLoadingView == view)
  {
    self->_hideLoadingView = !view;
    [(SULoadingView *)self->_loadingView setHidden:?];
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DCEF8]);
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v6 = [v3 initWithFrame:?];
  [v6 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
  [v6 setScrollEnabled:0];
  [v6 _setContentInsetAdjustmentBehavior:2];
  gradientView = self->_gradientView;
  if (!gradientView)
  {
    v5 = objc_alloc_init(SUGradientView);
    self->_gradientView = v5;
    [(SUGradientView *)v5 setAutoresizingMask:18];
    gradientView = self->_gradientView;
  }

  [v6 bounds];
  [(SUGradientView *)gradientView setFrame:?];
  [v6 addSubview:self->_gradientView];
  [(SUPlaceholderViewController *)self setView:v6];
  [(SUPlaceholderViewController *)self _reloadBackgroundGradient];
}

- (void)parentViewControllerHierarchyDidChange
{
  [(SUPlaceholderViewController *)self _reloadBackgroundGradient];
  v3.receiver = self;
  v3.super_class = SUPlaceholderViewController;
  [(UIViewController *)&v3 parentViewControllerHierarchyDidChange];
}

- (void)setSkLoading:(BOOL)loading
{
  v8.receiver = self;
  v8.super_class = SUPlaceholderViewController;
  [(SUViewController *)&v8 setSkLoading:?];
  if (loading)
  {
    v5 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    v6 = dispatch_time(0, 1500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SUPlaceholderViewController_setSkLoading___block_invoke;
    block[3] = &unk_1E8164348;
    block[4] = v5;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(SUPlaceholderViewController *)self _reloadLoadingView];
  }
}

uint64_t __44__SUPlaceholderViewController_setSkLoading___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];

  return [v1 _reloadLoadingView];
}

- (void)setScriptProperties:(id)properties
{
  v4.receiver = self;
  v4.super_class = SUPlaceholderViewController;
  [(SUViewController *)&v4 setScriptProperties:properties];
  [(SUPlaceholderViewController *)self _reloadBackgroundGradient];
}

- (id)_copyActiveGradient
{
  result = self->_backgroundGradient;
  if (!result)
  {
    result = [(SUPlaceholderViewController *)self _newURLBagBackgroundGradient];
    if (!result)
    {
      defaultBackgroundGradient = self->_defaultBackgroundGradient;

      return defaultBackgroundGradient;
    }
  }

  return result;
}

- (id)_newURLBagBackgroundGradient
{
  clientIdentifier = [(SUClientInterface *)[(SUViewController *)self clientInterface] clientIdentifier];
  if (!clientIdentifier)
  {
    return 0;
  }

  v4 = clientIdentifier;
  v5 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  v7 = 0;
  if (!v6)
  {
    v7 = +[SUGradient gradientWithColor:](SUGradient, "gradientWithColor:", [MEMORY[0x1E69DC888] systemBackgroundColor]);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v7;
  }

  v8 = [(UIViewController *)self overlayViewController]? @"overlay" : @"page";
  v9 = [v6 objectForKey:v8];
  if (!v9)
  {
    return v7;
  }

  v10 = v9;
  v11 = [SUGradient alloc];

  return [(SUGradient *)v11 initWithPropertyList:v10];
}

- (void)_reloadBackgroundGradient
{
  if ([(SUPlaceholderViewController *)self isViewLoaded])
  {
    copyScriptProperties = [(SUViewController *)self copyScriptProperties];
    if ([copyScriptProperties usesBlurredBackground])
    {
      [(SUGradientView *)self->_gradientView setGradient:0];
      -[SUGradientView setBackgroundColor:](self->_gradientView, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
    }

    else
    {
      _copyActiveGradient = [(SUPlaceholderViewController *)self _copyActiveGradient];
      [(SUGradientView *)self->_gradientView setGradient:_copyActiveGradient];
    }
  }
}

- (void)_reloadLoadingView
{
  if ([(UIViewController *)self isSkLoaded])
  {
    loadingView = [(SUPlaceholderViewController *)self loadingView];
    [(SULoadingView *)loadingView sizeToFit];
    view = [(SUPlaceholderViewController *)self view];
    [view addSubview:loadingView];
    [view bounds];
    v6 = v5;
    v8 = v7;
    [view contentInset];
    v10 = v9;
    v12 = v11;
    [(SULoadingView *)loadingView frame];
    v14 = (v6 - v13) * 0.5;
    v15 = floorf(v14);
    v17 = (v8 - v16) * 0.5 - (v10 + v12) * 0.5;
    v18 = floorf(v17);

    [(SULoadingView *)loadingView setFrame:v15, v18];
  }

  else
  {
    loadingView = self->_loadingView;

    [(SULoadingView *)loadingView removeFromSuperview];
  }
}

@end