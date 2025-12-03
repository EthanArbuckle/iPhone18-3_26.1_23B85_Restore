@interface SKUIProductPagePlaceholderViewController
- (SKUIProductPageChildViewControllerDelegate)delegate;
- (SKUIProductPagePlaceholderViewController)initWithStyle:(int64_t)style;
- (UIScrollView)scrollView;
- (void)_addHeaderView;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setDelegate:(id)delegate;
- (void)setHeaderViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SKUIProductPagePlaceholderViewController

- (SKUIProductPagePlaceholderViewController)initWithStyle:(int64_t)style
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPagePlaceholderViewController initWithStyle:];
  }

  v6.receiver = self;
  v6.super_class = SKUIProductPagePlaceholderViewController;
  result = [(SKUIProductPagePlaceholderViewController *)&v6 init];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (void)loadView
{
  scrollView = [(SKUIProductPagePlaceholderViewController *)self scrollView];
  [(SKUIProductPagePlaceholderViewController *)self setView:scrollView];

  [(SKUIProductPagePlaceholderViewController *)self _addHeaderView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKUIProductPagePlaceholderViewController;
  [(SKUIProductPagePlaceholderViewController *)&v4 viewDidAppear:appear];
  [(UIActivityIndicatorView *)self->_indicator startAnimating];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SKUIProductPagePlaceholderViewController;
  [(SKUIProductPagePlaceholderViewController *)&v4 viewDidDisappear:disappear];
  [(UIActivityIndicatorView *)self->_indicator stopAnimating];
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained productPageChildViewControllerDidScroll:self];
}

- (UIScrollView)scrollView
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    if (self->_style)
    {
      v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
      indicator = self->_indicator;
      self->_indicator = v4;

      [(UIActivityIndicatorView *)self->_indicator startAnimating];
      v6 = self->_indicator;
      v7 = 40.0;
    }

    else
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_NO_RELATED_CONTENT" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_NO_RELATED_CONTENT" inBundles:0 inTable:@"ProductPage"];
      }
      v9 = ;
      v6 = [[SKUIProductPagePlaceholderView alloc] initWithPlaceholderString:v9 isPad:SKUIUserInterfaceIdiom(self->_clientContext) == 1];
      secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
      [(UIActivityIndicatorView *)v6 setTextColor:secondaryTextColor];

      backgroundColor = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
      if (backgroundColor)
      {
        [(UIActivityIndicatorView *)v6 setBackgroundColor:backgroundColor];
      }

      else
      {
        v12 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
        [(UIActivityIndicatorView *)v6 setBackgroundColor:v12];
      }

      v7 = 0.0;
    }

    v13 = objc_alloc_init(SKUIProductPagePlaceholderScrollView);
    v14 = self->_scrollView;
    self->_scrollView = v13;

    [(SKUIProductPagePlaceholderScrollView *)self->_scrollView setIsPad:SKUIUserInterfaceIdiom(self->_clientContext) == 1];
    [(SKUIProductPagePlaceholderScrollView *)self->_scrollView setAlwaysBounceVertical:1];
    v15 = self->_scrollView;
    backgroundColor2 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    if (backgroundColor2)
    {
      [(SKUIProductPagePlaceholderScrollView *)v15 setBackgroundColor:backgroundColor2];
    }

    else
    {
      v17 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SKUIProductPagePlaceholderScrollView *)v15 setBackgroundColor:v17];
    }

    [(SKUIProductPagePlaceholderScrollView *)self->_scrollView setDelegate:self];
    [(SKUIProductPagePlaceholderScrollView *)self->_scrollView setOffset:v7];
    [(SKUIProductPagePlaceholderScrollView *)self->_scrollView setPlaceholderView:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained productPageChildViewControllerDidLoadScrollView:self];

    scrollView = self->_scrollView;
  }

  return scrollView;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (self->_scrollView)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 productPageChildViewControllerDidLoadScrollView:self];

      v5 = obj;
    }
  }
}

- (void)setHeaderViewController:(id)controller
{
  controllerCopy = controller;
  headerViewController = self->_headerViewController;
  v9 = controllerCopy;
  if (headerViewController != controllerCopy)
  {
    view = [(SKUIProductPageHeaderViewController *)headerViewController view];
    [view removeFromSuperview];

    floatingView = [(SKUIProductPageHeaderViewController *)self->_headerViewController floatingView];
    [floatingView removeFromSuperview];

    [(SKUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, controller);
    if (self->_headerViewController)
    {
      [(SKUIProductPagePlaceholderViewController *)self addChildViewController:?];
      if ([(SKUIProductPagePlaceholderViewController *)self isViewLoaded])
      {
        [(SKUIProductPagePlaceholderViewController *)self _addHeaderView];
      }
    }
  }
}

- (void)_addHeaderView
{
  view = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [view setAutoresizingMask:2];
  [view frame];
  v4 = v3;
  [(SKUIProductPagePlaceholderScrollView *)self->_scrollView bounds];
  [view setFrame:{0.0, v4}];
  [(SKUIProductPagePlaceholderScrollView *)self->_scrollView addSubview:view];
  floatingView = [(SKUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [floatingView setAutoresizingMask:2];
  [floatingView frame];
  v7 = v6;
  [(SKUIProductPagePlaceholderScrollView *)self->_scrollView bounds];
  [floatingView setFrame:{0.0, v7}];
  [(SKUIProductPagePlaceholderScrollView *)self->_scrollView addSubview:floatingView];
}

- (SKUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPagePlaceholderViewController initWithStyle:]";
}

@end