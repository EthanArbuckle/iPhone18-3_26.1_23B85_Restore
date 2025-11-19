@interface _UISceneHostingViewController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersPointerLocked;
- (NSString)debugDescription;
- (_UIRemoteSheet)_remoteSheet;
- (id)_multitaskingDragExclusionRects;
- (id)initWithSceneHostingController:(void *)a1;
- (id)succinctDescription;
- (int)_preferredStatusBarVisibility;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredWhitePointAdaptivityStyle;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (void)_childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _UISceneHostingViewController

- (id)initWithSceneHostingController:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = _UISceneHostingViewController;
  v3 = objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(v3 + 124, a2);
  }

  return v4;
}

- (void)loadView
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v4 = [WeakRetained sceneView];
  [(UIViewController *)self setView:v4];

  v5 = objc_loadWeakRetained(&self->_sceneHostingController);
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 5);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 _viewControllerAppearanceComponent];
  objc_storeWeak(&self->_vcPreferenceComponent, v9);

  v10 = objc_loadWeakRetained(&self->_sceneHostingController);
  v14 = v10;
  if (v10)
  {
    v11 = *(v10 + 5);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 ui_zoomTransitionComponent];
  [(_UISceneZoomTransitionHostComponent *)v13 setViewController:?];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = _UISceneHostingViewController;
  [(UIViewController *)&v14 viewWillAppear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v5 = objc_opt_self();
  v6 = [(_UISceneHostingViewAppearanceActionHostToClient *)v5 _actionForActionType:?];
  [WeakRetained sendAction:v6];

  if (self)
  {
    v7 = [(UIViewController *)self _existingPresentationControllerImmediate:0 effective:1];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = objc_loadWeakRetained(&self->_sceneHostingController);
    v13 = [v12 _remoteSheetProvider];

    if (v13)
    {
      if (v11)
      {
        [v11 _tryToConnectToRemoteSheet:v13];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _UISceneHostingViewController;
  [(UIViewController *)&v7 viewWillDisappear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v5 = objc_opt_self();
  v6 = [(_UISceneHostingViewAppearanceActionHostToClient *)v5 _actionForActionType:?];
  [WeakRetained sendAction:v6];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _UISceneHostingViewController;
  [(UIViewController *)&v7 viewDidDisappear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v5 = objc_opt_self();
  v6 = [(_UISceneHostingViewAppearanceActionHostToClient *)v5 _actionForActionType:?];
  [WeakRetained sendAction:v6];
}

- (void)_childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:(id)a3
{
  v16.receiver = self;
  v16.super_class = _UISceneHostingViewController;
  [(UIViewController *)&v16 _childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:?];
  v5 = a3;
  if (v5)
  {
    do
    {
      v6 = [v5 _existingView];
      v7 = [v6 window];

      if (v7)
      {
        break;
      }

      v8 = [v5 parentViewController];

      v5 = v8;
    }

    while (v8);
  }

  v9 = [v5 _existingView];
  v10 = [v9 window];

  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = *(WeakRetained + 5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v14 _relationshipManagementHostComponent];
  [v15 _willMoveToWindowWithDelayedPresentation:v10];
}

- (_UIRemoteSheet)_remoteSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v3 = [WeakRetained _remoteSheetProvider];

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  v3 = [WeakRetained statusBarStyle];

  return v3;
}

- (int)_preferredStatusBarVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  v3 = [WeakRetained statusBarVisibility];

  return v3;
}

- (int64_t)preferredWhitePointAdaptivityStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  v3 = [WeakRetained whitePointAdaptivityStyle];

  return v3;
}

- (id)_multitaskingDragExclusionRects
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  v3 = [WeakRetained multitaskingDragExclusionRects];

  return v3;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  v3 = [WeakRetained screenEdgesDeferringSystemGestures];

  return v3;
}

- (BOOL)prefersPointerLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  v3 = [WeakRetained preferredPointerLockStatus] == 1;

  return v3;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  v3 = [WeakRetained homeIndicatorAutoHidden];

  return v3;
}

- (void)appendDescriptionToStream:(id)a3
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59___UISceneHostingViewController_appendDescriptionToStream___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v9[4] = a3;
  v9[5] = self;
  [a3 appendProem:self block:v9];
  v5 = [a3 style];
  v6 = [v5 verbosity];

  if (v6 != 2)
  {
    v7 = [MEMORY[0x1E698E690] succinctStyle];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59___UISceneHostingViewController_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v8[4] = a3;
    v8[5] = self;
    [a3 overlayStyle:v7 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end