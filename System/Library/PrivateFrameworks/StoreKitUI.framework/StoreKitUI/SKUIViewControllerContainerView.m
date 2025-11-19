@interface SKUIViewControllerContainerView
- (SKUIViewControllerContainerView)initWithFrame:(CGRect)a3;
- (void)_updateLayoutOfViewControllerView;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setViewController:(id)a3;
@end

@implementation SKUIViewControllerContainerView

- (SKUIViewControllerContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIViewControllerContainerView initWithFrame:];
  }

  v11.receiver = self;
  v11.super_class = SKUIViewControllerContainerView;
  v8 = [(SKUIViewControllerContainerView *)&v11 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUIViewControllerContainerView *)v8 setPreservesSuperviewLayoutMargins:1];
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

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SKUIViewControllerContainerView;
  [(SKUIViewControllerContainerView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SKUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SKUIViewControllerContainerView;
  [(SKUIViewControllerContainerView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SKUIViewControllerContainerView *)self _updateLayoutOfViewControllerView];
}

- (void)setViewController:(id)a3
{
  v5 = a3;
  viewController = self->_viewController;
  v10 = v5;
  if (viewController != v5)
  {
    if (viewController)
    {
      v7 = [(UIViewController *)viewController view];
      if ([v7 isDescendantOfView:self])
      {
        [v7 removeFromSuperview];
      }
    }

    objc_storeStrong(&self->_viewController, a3);
    viewController = self->_viewController;
  }

  if (viewController)
  {
    v8 = [(UIViewController *)viewController view];
    v9 = v8;
    if (v8 && ([v8 isDescendantOfView:self] & 1) == 0)
    {
      [v9 removeFromSuperview];
      [(SKUIViewControllerContainerView *)self addSubview:v9];
      [(SKUIViewControllerContainerView *)self setNeedsLayout];
    }
  }
}

- (void)_updateLayoutOfViewControllerView
{
  v3 = [(UIViewController *)self->_viewController view];
  [(SKUIViewControllerContainerView *)self bounds];
  [v3 setFrame:?];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIViewControllerContainerView initWithFrame:]";
}

@end