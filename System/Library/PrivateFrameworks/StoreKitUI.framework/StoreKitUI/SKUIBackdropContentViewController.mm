@interface SKUIBackdropContentViewController
- (SKUIBackdropContentViewController)initWithContentViewController:(id)controller;
- (void)loadView;
- (void)setBackdropViewPrivateStyle:(int64_t)style;
- (void)setContentViewController:(id)controller;
@end

@implementation SKUIBackdropContentViewController

- (SKUIBackdropContentViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
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
    [(SKUIBackdropContentViewController *)v6 setContentViewController:controllerCopy];
  }

  return v6;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SKUIBackdropContentViewController;
  [(SKUIBackdropContentViewController *)&v6 loadView];
  view = [(SKUIBackdropContentViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75DE8]);
  [view bounds];
  v5 = [v4 initWithFrame:self->_backdropViewPrivateStyle privateStyle:?];
  [v5 setAutoresizingMask:18];
  [view addSubview:v5];
}

- (void)setBackdropViewPrivateStyle:(int64_t)style
{
  if (self->_backdropViewPrivateStyle != style)
  {
    self->_backdropViewPrivateStyle = style;
    if ([(SKUIBackdropContentViewController *)self isViewLoaded])
    {
      view = [(SKUIBackdropContentViewController *)self view];
      [view transitionToPrivateStyle:style];
    }
  }
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_contentViewController != controllerCopy)
  {
    v10 = controllerCopy;
    parentViewController = [(UIViewController *)controllerCopy parentViewController];

    if (parentViewController == self)
    {
      [(UIViewController *)v10 willMoveToParentViewController:0];
      view = [(UIViewController *)v10 view];
      [view removeFromSuperview];

      [(UIViewController *)v10 removeFromParentViewController];
    }

    objc_storeStrong(&self->_contentViewController, controller);
    controllerCopy = v10;
    if (self->_contentViewController)
    {
      [(SKUIBackdropContentViewController *)self addChildViewController:?];
      view2 = [(SKUIBackdropContentViewController *)self view];
      view3 = [(UIViewController *)self->_contentViewController view];
      [view2 bounds];
      [view3 setFrame:?];
      [view3 setAutoresizingMask:18];
      [view2 addSubview:view3];
      [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];

      controllerCopy = v10;
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