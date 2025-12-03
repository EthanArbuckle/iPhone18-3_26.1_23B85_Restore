@interface SKUISimpleContainerViewController
- (void)loadView;
- (void)setContentViewController:(id)controller;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation SKUISimpleContainerViewController

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUISimpleContainerViewController setContentViewController:];
  }

  contentViewController = self->_contentViewController;
  if (contentViewController != controllerCopy)
  {
    if ([(UIViewController *)contentViewController isViewLoaded])
    {
      view = [(UIViewController *)self->_contentViewController view];
      [view removeFromSuperview];
    }

    [(UIViewController *)self->_contentViewController removeFromParentViewController];
    objc_storeStrong(&self->_contentViewController, controller);
    if (self->_contentViewController)
    {
      [(SKUISimpleContainerViewController *)self addChildViewController:?];
      v8 = self->_contentViewController;
      [(SKUISimpleContainerViewController *)self preferredContentSize];
      [(UIViewController *)v8 setPreferredContentSize:?];
      if ([(SKUISimpleContainerViewController *)self isViewLoaded])
      {
        view2 = [(SKUISimpleContainerViewController *)self view];
        view3 = [(UIViewController *)self->_contentViewController view];
        [view3 setAutoresizingMask:18];
        [view2 bounds];
        [view3 setFrame:?];
        [view2 addSubview:view3];
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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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