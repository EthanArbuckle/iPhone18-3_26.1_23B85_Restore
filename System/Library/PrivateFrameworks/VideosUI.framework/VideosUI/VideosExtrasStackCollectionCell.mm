@interface VideosExtrasStackCollectionCell
- (void)setViewController:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation VideosExtrasStackCollectionCell

- (void)willMoveToSuperview:(id)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasStackCollectionCell;
  [(VideosExtrasStackCollectionCell *)&v4 willMoveToSuperview:a3];
  if (self->_needsViewWillAppear)
  {
    [(VideosExtrasGridElementViewController *)self->_viewController viewWillAppear:0];
    self->_needsViewWillAppear = 0;
  }
}

- (void)setViewController:(id)a3
{
  v5 = a3;
  viewController = self->_viewController;
  v17 = v5;
  if (viewController != v5)
  {
    if (self->_fitConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      viewController = self->_viewController;
    }

    v7 = [(VideosExtrasGridElementViewController *)viewController view];
    v8 = [v7 superview];

    if (v8 == self)
    {
      [(VideosExtrasGridElementViewController *)self->_viewController willMoveToParentViewController:0];
      v9 = [(VideosExtrasGridElementViewController *)self->_viewController view];
      [v9 removeFromSuperview];

      [(VideosExtrasGridElementViewController *)self->_viewController removeFromParentViewController];
    }

    if (v17)
    {
      v10 = [(VideosExtrasStackCollectionCell *)self superview];

      if (!v10)
      {
        self->_needsViewWillAppear = 1;
      }

      v11 = [(VideosExtrasStackCollectionCell *)self parentViewController];
      [v11 addChildViewController:v17];

      v12 = [(VideosExtrasGridElementViewController *)v17 view];
      v13 = [(VideosExtrasStackCollectionCell *)self contentView];
      [v13 addSubview:v12];
      v14 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v12 toView:v13 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      fitConstraints = self->_fitConstraints;
      self->_fitConstraints = v14;

      [MEMORY[0x1E696ACD8] activateConstraints:self->_fitConstraints];
      v16 = [(VideosExtrasStackCollectionCell *)self parentViewController];
      [(VideosExtrasGridElementViewController *)v17 didMoveToParentViewController:v16];
    }

    else
    {
      v12 = self->_fitConstraints;
      self->_fitConstraints = 0;
    }

    objc_storeStrong(&self->_viewController, a3);
  }
}

@end