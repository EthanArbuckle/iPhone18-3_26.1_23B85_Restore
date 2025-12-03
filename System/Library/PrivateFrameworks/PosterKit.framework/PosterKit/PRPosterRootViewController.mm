@interface PRPosterRootViewController
- (PRPosterRootViewController)initWithDynamicRotationEnabled:(BOOL)enabled;
- (void)_updateCounterRotationLayout;
- (void)didMoveToParentViewController:(id)controller;
- (void)setRenderingView:(id)view;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PRPosterRootViewController

- (PRPosterRootViewController)initWithDynamicRotationEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = PRPosterRootViewController;
  result = [(PRPosterRootViewController *)&v5 init];
  if (result)
  {
    result->_dynamicRotationEnabled = enabled;
  }

  return result;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PRPosterRootViewController;
  [(PRPosterRootViewController *)&v4 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
}

- (void)didMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = PRPosterRootViewController;
  [(PRPosterRootViewController *)&v3 didMoveToParentViewController:controller];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PRPosterRootViewController;
  [(PRPosterRootViewController *)&v5 viewWillAppear:appear];
  transformView = [(PRRenderingView *)self->_renderingView transformView];

  if (transformView)
  {
    [(PRPosterRootViewController *)self _updateCounterRotationLayout];
  }
}

- (void)viewWillLayoutSubviews
{
  transformView = [(PRRenderingView *)self->_renderingView transformView];

  if (transformView)
  {
    [(PRPosterRootViewController *)self _updateCounterRotationLayout];
    v4.receiver = self;
    v4.super_class = PRPosterRootViewController;
    [(PRPosterRootViewController *)&v4 viewWillLayoutSubviews];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  transformView = [(PRRenderingView *)self->_renderingView transformView];

  if (transformView)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PRPosterRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_1E78442B8;
    v10[4] = self;
    [coordinatorCopy animateAlongsideTransition:v10 completion:&__block_literal_global_55];
    v9.receiver = self;
    v9.super_class = PRPosterRootViewController;
    [(PRPosterRootViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  }
}

- (void)setRenderingView:(id)view
{
  viewCopy = view;
  if (self->_renderingView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_renderingView, view);
    [(PRPosterRootViewController *)self setView:v6];
    viewCopy = v6;
  }
}

- (void)_updateCounterRotationLayout
{
  transformView = [(PRRenderingView *)self->_renderingView transformView];
  if (transformView)
  {
    v17 = transformView;
    view = [(PRPosterRootViewController *)self view];
    window = [view window];

    if (window)
    {
      _windowInterfaceOrientation = [window _windowInterfaceOrientation];
    }

    else
    {
      _windowInterfaceOrientation = 1;
    }

    if (self->_dynamicRotationEnabled)
    {
      v7 = _windowInterfaceOrientation;
    }

    else
    {
      v7 = 1;
    }

    view2 = [(PRPosterRootViewController *)self view];
    [view2 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v17 setFrame:{v10, v12, v14, v16}];
    [v17 setContentOrientation:1];
    [v17 setContainerOrientation:v7];

    transformView = v17;
  }
}

@end