@interface SKUIBackdropContentViewController
- (SKUIBackdropContentViewController)initWithContentViewController:(id)a3;
- (void)loadView;
- (void)setBackdropViewPrivateStyle:(int64_t)a3;
- (void)setContentViewController:(id)a3;
@end

@implementation SKUIBackdropContentViewController

- (SKUIBackdropContentViewController)initWithContentViewController:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBackdropContentViewController initWithContentViewController:];
  }

  v8.receiver = self;
  v8.super_class = SKUIBackdropContentViewController;
  v5 = [(SKUIBackdropContentViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_backdropViewPrivateStyle = 10060;
    [(SKUIBackdropContentViewController *)v5 setModalPresentationStyle:17];
    [(SKUIBackdropContentViewController *)v6 setContentViewController:v4];
  }

  return v6;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SKUIBackdropContentViewController;
  [(SKUIBackdropContentViewController *)&v6 loadView];
  v3 = [(SKUIBackdropContentViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75DE8]);
  [v3 bounds];
  v5 = [v4 initWithFrame:self->_backdropViewPrivateStyle privateStyle:?];
  [v5 setAutoresizingMask:18];
  [v3 addSubview:v5];
}

- (void)setBackdropViewPrivateStyle:(int64_t)a3
{
  if (self->_backdropViewPrivateStyle != a3)
  {
    self->_backdropViewPrivateStyle = a3;
    if ([(SKUIBackdropContentViewController *)self isViewLoaded])
    {
      v5 = [(SKUIBackdropContentViewController *)self view];
      [v5 transitionToPrivateStyle:a3];
    }
  }
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (self->_contentViewController != v5)
  {
    v10 = v5;
    v6 = [(UIViewController *)v5 parentViewController];

    if (v6 == self)
    {
      [(UIViewController *)v10 willMoveToParentViewController:0];
      v7 = [(UIViewController *)v10 view];
      [v7 removeFromSuperview];

      [(UIViewController *)v10 removeFromParentViewController];
    }

    objc_storeStrong(&self->_contentViewController, a3);
    v5 = v10;
    if (self->_contentViewController)
    {
      [(SKUIBackdropContentViewController *)self addChildViewController:?];
      v8 = [(SKUIBackdropContentViewController *)self view];
      v9 = [(UIViewController *)self->_contentViewController view];
      [v8 bounds];
      [v9 setFrame:?];
      [v9 setAutoresizingMask:18];
      [v8 addSubview:v9];
      [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];

      v5 = v10;
    }
  }
}

- (void)initWithContentViewController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBackdropContentViewController initWithContentViewController:]";
}

@end