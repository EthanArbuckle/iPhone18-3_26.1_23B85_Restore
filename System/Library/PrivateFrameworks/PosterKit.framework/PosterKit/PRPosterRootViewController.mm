@interface PRPosterRootViewController
- (PRPosterRootViewController)initWithDynamicRotationEnabled:(BOOL)a3;
- (void)_updateCounterRotationLayout;
- (void)didMoveToParentViewController:(id)a3;
- (void)setRenderingView:(id)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PRPosterRootViewController

- (PRPosterRootViewController)initWithDynamicRotationEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PRPosterRootViewController;
  result = [(PRPosterRootViewController *)&v5 init];
  if (result)
  {
    result->_dynamicRotationEnabled = a3;
  }

  return result;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = PRPosterRootViewController;
  [(PRPosterRootViewController *)&v4 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
}

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = PRPosterRootViewController;
  [(PRPosterRootViewController *)&v3 didMoveToParentViewController:a3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PRPosterRootViewController;
  [(PRPosterRootViewController *)&v5 viewWillAppear:a3];
  v4 = [(PRRenderingView *)self->_renderingView transformView];

  if (v4)
  {
    [(PRPosterRootViewController *)self _updateCounterRotationLayout];
  }
}

- (void)viewWillLayoutSubviews
{
  v3 = [(PRRenderingView *)self->_renderingView transformView];

  if (v3)
  {
    [(PRPosterRootViewController *)self _updateCounterRotationLayout];
    v4.receiver = self;
    v4.super_class = PRPosterRootViewController;
    [(PRPosterRootViewController *)&v4 viewWillLayoutSubviews];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(PRRenderingView *)self->_renderingView transformView];

  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PRPosterRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_1E78442B8;
    v10[4] = self;
    [v7 animateAlongsideTransition:v10 completion:&__block_literal_global_55];
    v9.receiver = self;
    v9.super_class = PRPosterRootViewController;
    [(PRPosterRootViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  }
}

- (void)setRenderingView:(id)a3
{
  v5 = a3;
  if (self->_renderingView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_renderingView, a3);
    [(PRPosterRootViewController *)self setView:v6];
    v5 = v6;
  }
}

- (void)_updateCounterRotationLayout
{
  v3 = [(PRRenderingView *)self->_renderingView transformView];
  if (v3)
  {
    v17 = v3;
    v4 = [(PRPosterRootViewController *)self view];
    v5 = [v4 window];

    if (v5)
    {
      v6 = [v5 _windowInterfaceOrientation];
    }

    else
    {
      v6 = 1;
    }

    if (self->_dynamicRotationEnabled)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    v8 = [(PRPosterRootViewController *)self view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v17 setFrame:{v10, v12, v14, v16}];
    [v17 setContentOrientation:1];
    [v17 setContainerOrientation:v7];

    v3 = v17;
  }
}

@end