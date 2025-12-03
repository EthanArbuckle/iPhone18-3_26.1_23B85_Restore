@interface VideosExtrasStackCollectionCell
- (void)setViewController:(id)controller;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation VideosExtrasStackCollectionCell

- (void)willMoveToSuperview:(id)superview
{
  v4.receiver = self;
  v4.super_class = VideosExtrasStackCollectionCell;
  [(VideosExtrasStackCollectionCell *)&v4 willMoveToSuperview:superview];
  if (self->_needsViewWillAppear)
  {
    [(VideosExtrasGridElementViewController *)self->_viewController viewWillAppear:0];
    self->_needsViewWillAppear = 0;
  }
}

- (void)setViewController:(id)controller
{
  controllerCopy = controller;
  viewController = self->_viewController;
  v17 = controllerCopy;
  if (viewController != controllerCopy)
  {
    if (self->_fitConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      viewController = self->_viewController;
    }

    view = [(VideosExtrasGridElementViewController *)viewController view];
    superview = [view superview];

    if (superview == self)
    {
      [(VideosExtrasGridElementViewController *)self->_viewController willMoveToParentViewController:0];
      view2 = [(VideosExtrasGridElementViewController *)self->_viewController view];
      [view2 removeFromSuperview];

      [(VideosExtrasGridElementViewController *)self->_viewController removeFromParentViewController];
    }

    if (v17)
    {
      superview2 = [(VideosExtrasStackCollectionCell *)self superview];

      if (!superview2)
      {
        self->_needsViewWillAppear = 1;
      }

      parentViewController = [(VideosExtrasStackCollectionCell *)self parentViewController];
      [parentViewController addChildViewController:v17];

      view3 = [(VideosExtrasGridElementViewController *)v17 view];
      contentView = [(VideosExtrasStackCollectionCell *)self contentView];
      [contentView addSubview:view3];
      v14 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:view3 toView:contentView alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      fitConstraints = self->_fitConstraints;
      self->_fitConstraints = v14;

      [MEMORY[0x1E696ACD8] activateConstraints:self->_fitConstraints];
      parentViewController2 = [(VideosExtrasStackCollectionCell *)self parentViewController];
      [(VideosExtrasGridElementViewController *)v17 didMoveToParentViewController:parentViewController2];
    }

    else
    {
      view3 = self->_fitConstraints;
      self->_fitConstraints = 0;
    }

    objc_storeStrong(&self->_viewController, controller);
  }
}

@end