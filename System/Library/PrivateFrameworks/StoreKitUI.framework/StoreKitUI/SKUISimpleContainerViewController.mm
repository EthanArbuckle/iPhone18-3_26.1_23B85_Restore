@interface SKUISimpleContainerViewController
- (void)loadView;
- (void)setContentViewController:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation SKUISimpleContainerViewController

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUISimpleContainerViewController setContentViewController:];
  }

  contentViewController = self->_contentViewController;
  if (contentViewController != v5)
  {
    if ([(UIViewController *)contentViewController isViewLoaded])
    {
      v7 = [(UIViewController *)self->_contentViewController view];
      [v7 removeFromSuperview];
    }

    [(UIViewController *)self->_contentViewController removeFromParentViewController];
    objc_storeStrong(&self->_contentViewController, a3);
    if (self->_contentViewController)
    {
      [(SKUISimpleContainerViewController *)self addChildViewController:?];
      v8 = self->_contentViewController;
      [(SKUISimpleContainerViewController *)self preferredContentSize];
      [(UIViewController *)v8 setPreferredContentSize:?];
      if ([(SKUISimpleContainerViewController *)self isViewLoaded])
      {
        v9 = [(SKUISimpleContainerViewController *)self view];
        v10 = [(UIViewController *)self->_contentViewController view];
        [v10 setAutoresizingMask:18];
        [v9 bounds];
        [v10 setFrame:?];
        [v9 addSubview:v10];
      }
    }
  }
}

- (void)loadView
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISimpleContainerViewController loadView]";
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = SKUISimpleContainerViewController;
  [(SKUISimpleContainerViewController *)&v6 setPreferredContentSize:?];
  [(UIViewController *)self->_contentViewController setPreferredContentSize:width, height];
}

- (void)setContentViewController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISimpleContainerViewController setContentViewController:]";
}

@end