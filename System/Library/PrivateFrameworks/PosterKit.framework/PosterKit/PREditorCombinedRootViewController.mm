@interface PREditorCombinedRootViewController
- (int64_t)_windowInterfaceOrientation;
- (void)_updateCounterRotationLayout;
- (void)_updateScrollViewClipping:(BOOL)clipping;
- (void)loadView;
- (void)setOverlayHostViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PREditorCombinedRootViewController

- (void)loadView
{
  v26.receiver = self;
  v26.super_class = PREditorCombinedRootViewController;
  [(PREditorRootViewController *)&v26 loadView];
  view = [(PREditorCombinedRootViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_alloc_init(PREditorLookViews);
  [(PREditorCombinedRootViewController *)self setViews:v12];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __46__PREditorCombinedRootViewController_loadView__block_invoke;
  v25[3] = &__block_descriptor_64_e39_v32__0__UIView_8__UIView_16__UIColor_24l;
  v25[4] = v5;
  v25[5] = v7;
  v25[6] = v9;
  v25[7] = v11;
  v13 = MEMORY[0x1AC574C60](v25);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __46__PREditorCombinedRootViewController_loadView__block_invoke_2;
  v22 = &unk_1E78443F0;
  selfCopy = self;
  v24 = v13;
  v14 = v13;
  [(PREditorLookViews *)v12 enumerateViewsUsingBlock:&v19];
  v15 = [(PREditorRootViewController *)self contentOverlayView:v19];
  [v15 removeFromSuperview];

  contentOverlayView = [(PREditorRootViewController *)self contentOverlayView];
  contentOverlayContainerView = [(PREditorRootViewController *)self contentOverlayContainerView];
  systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];
  v14[2](v14, contentOverlayView, contentOverlayContainerView, systemBlackColor);

  [(PREditorCombinedRootViewController *)self _updateCounterRotationLayout];
}

void __46__PREditorCombinedRootViewController_loadView__block_invoke(double *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E698E800];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFrame:{a1[4], a1[5], a1[6], a1[7]}];
  [v8 setCounterTransformView:1];
  [v8 addContentView:v7];

  [v6 addSubview:v8];
}

void __46__PREditorCombinedRootViewController_loadView__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  switch(a3)
  {
    case 2:
      v5 = [*(a1 + 32) floatingContainerView];
      v6 = [MEMORY[0x1E69DC888] systemTealColor];
      goto LABEL_7;
    case 1:
      v5 = [*(a1 + 32) foregroundContainerView];
      v6 = [MEMORY[0x1E69DC888] systemPurpleColor];
      goto LABEL_7;
    case 0:
      v5 = [*(a1 + 32) backgroundContainerView];
      v6 = [MEMORY[0x1E69DC888] systemPinkColor];
LABEL_7:
      v7 = v6;
      goto LABEL_9;
  }

  v5 = 0;
  v7 = 0;
LABEL_9:
  (*(*(a1 + 40) + 16))();
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PREditorCombinedRootViewController;
  [(PREditorCombinedRootViewController *)&v4 viewWillAppear:appear];
  [(PREditorCombinedRootViewController *)self _updateCounterRotationLayout];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PREditorCombinedRootViewController;
  [(PREditorRootViewController *)&v4 viewDidAppear:appear];
  [(PREditorRootViewController *)self updateReticleViewFrames];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(PREditorCombinedRootViewController *)self _updateScrollViewClipping:0];
  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__PREditorCombinedRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_1E78442B8;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PREditorCombinedRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v9[3] = &unk_1E78442B8;
  [coordinatorCopy animateAlongsideTransition:v10 completion:v9];
  v8.receiver = self;
  v8.super_class = PREditorCombinedRootViewController;
  [(PREditorRootViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

uint64_t __89__PREditorCombinedRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateReticleViewFrames];
  v2 = *(a1 + 32);

  return [v2 _updateCounterRotationLayout];
}

uint64_t __89__PREditorCombinedRootViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateScrollViewClipping:1];
  v2 = *(a1 + 32);

  return [v2 lookPropertiesDidChange];
}

- (void)_updateCounterRotationLayout
{
  editor = [(PREditorRootViewController *)self editor];
  if ([editor _editorDynamicRotationIsActive])
  {
    _windowInterfaceOrientation = [(PREditorCombinedRootViewController *)self _windowInterfaceOrientation];
  }

  else
  {
    _windowInterfaceOrientation = 1;
  }

  view = [(PREditorCombinedRootViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__PREditorCombinedRootViewController__updateCounterRotationLayout__block_invoke;
  v20[3] = &__block_descriptor_72_e16_v16__0__UIView_8l;
  v20[4] = v7;
  v20[5] = v9;
  v20[6] = v11;
  v20[7] = v13;
  v20[8] = _windowInterfaceOrientation;
  v14 = MEMORY[0x1AC574C60](v20);
  views = [(PREditorCombinedRootViewController *)self views];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__PREditorCombinedRootViewController__updateCounterRotationLayout__block_invoke_2;
  v18[3] = &unk_1E78443F0;
  v18[4] = self;
  v19 = v14;
  v16 = v14;
  [views enumerateViewsUsingBlock:v18];

  contentOverlayContainerView = [(PREditorRootViewController *)self contentOverlayContainerView];
  v16[2](v16, contentOverlayContainerView);
}

void __66__PREditorCombinedRootViewController__updateCounterRotationLayout__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 subviews];
  v4 = [v3 firstObject];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setFrame:{*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
  [v8 setContentOrientation:1];
  [v8 setContainerOrientation:*(a1 + 64)];
}

void __66__PREditorCombinedRootViewController__updateCounterRotationLayout__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  switch(a3)
  {
    case 2:
      v5 = [*(a1 + 32) floatingContainerView];
      goto LABEL_7;
    case 1:
      v5 = [*(a1 + 32) foregroundContainerView];
      goto LABEL_7;
    case 0:
      v5 = [*(a1 + 32) backgroundContainerView];
LABEL_7:
      v6 = v5;
      goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  (*(*(a1 + 40) + 16))();
}

- (void)_updateScrollViewClipping:(BOOL)clipping
{
  clippingCopy = clipping;
  scrollView = [(PREditorRootViewController *)self scrollView];
  [scrollView setClipsToBounds:clippingCopy];
}

- (int64_t)_windowInterfaceOrientation
{
  view = [(PREditorCombinedRootViewController *)self view];
  window = [view window];
  v5 = window;
  if (!window)
  {
    window = [(PREditorCombinedRootViewController *)self performSelector:sel__window];
  }

  v6 = window;

  _windowInterfaceOrientation = [v6 _windowInterfaceOrientation];
  return _windowInterfaceOrientation;
}

- (void)setOverlayHostViewController:(id)controller
{
  controllerCopy = controller;
  portaledFloatingContainerView = [(PREditorRootViewController *)self portaledFloatingContainerView];
  [(PREditorRootViewController *)self _setOverlayHostViewController:controllerCopy insertingAboveSubview:portaledFloatingContainerView];
}

@end