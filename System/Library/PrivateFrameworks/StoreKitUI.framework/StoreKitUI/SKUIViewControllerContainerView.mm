@interface SKUIViewControllerContainerView
- (SKUIViewControllerContainerView)initWithFrame:(CGRect)frame;
- (void)_updateLayoutOfViewControllerView;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setViewController:(id)controller;
@end

@implementation SKUIViewControllerContainerView

- (SKUIViewControllerContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIViewControllerContainerView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIViewControllerContainerView;
  height = [(SKUIViewControllerContainerView *)&v11 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    [(SKUIViewControllerContainerView *)height setPreservesSuperviewLayoutMargins:1];
  }

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SKUIViewControllerContainerView;
  [(SKUIViewControllerContainerView *)&v3 layoutSubviews];
  [(SKUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = SKUIViewControllerContainerView;
  [(SKUIViewControllerContainerView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(SKUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SKUIViewControllerContainerView;
  [(SKUIViewControllerContainerView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SKUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  viewController = self->_viewController;
  v10 = controllerCopy;
  if (viewController != controllerCopy)
  {
    if (viewController)
    {
      view = [(UIViewController *)viewController view];
      if ([view isDescendantOfView:self])
      {
        [view removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_viewController, controller);
    viewController = self->_viewController;
  }

  if (viewController)
  {
    view2 = [(UIViewController *)viewController view];
    v9 = view2;
    if (view2 && ([view2 isDescendantOfView:self] & 1) == 0)
    {
      [v9 removeFromSuperview];
      [(SKUIViewControllerContainerView *)self addSubview:v9];
      [(SKUIViewControllerContainerView *)self setNeedsLayout];
    }
  }
}

- (void)_updateLayoutOfViewControllerView
{
  view = [(UIViewController *)self->_viewController view];
  [(SKUIViewControllerContainerView *)self bounds];
  [view setFrame:?];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewControllerContainerView initWithFrame:]";
}

@end