@interface _UISceneHostingViewController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersPointerLocked;
- (NSString)debugDescription;
- (_UIRemoteSheet)_remoteSheet;
- (id)_multitaskingDragExclusionRects;
- (id)initWithSceneHostingController:(void *)controller;
- (id)succinctDescription;
- (int)_preferredStatusBarVisibility;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredWhitePointAdaptivityStyle;
- (unint64_t)preferredScreenEdgesDeferringSystemGestures;
- (void)_childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:(id)presenter;
- (void)appendDescriptionToStream:(id)stream;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _UISceneHostingViewController

- (id)initWithSceneHostingController:(void *)controller
{
  if (!controller)
  {
    return 0;
  }

  v6.receiver = controller;
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
  sceneView = [WeakRetained sceneView];
  [(UIViewController *)self setView:sceneView];

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
  _viewControllerAppearanceComponent = [v8 _viewControllerAppearanceComponent];
  objc_storeWeak(&self->_vcPreferenceComponent, _viewControllerAppearanceComponent);

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
  ui_zoomTransitionComponent = [v12 ui_zoomTransitionComponent];
  [(_UISceneZoomTransitionHostComponent *)ui_zoomTransitionComponent setViewController:?];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = _UISceneHostingViewController;
  [(UIViewController *)&v14 viewWillAppear:appear];
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
    _remoteSheetProvider = [v12 _remoteSheetProvider];

    if (_remoteSheetProvider)
    {
      if (v11)
      {
        [v11 _tryToConnectToRemoteSheet:_remoteSheetProvider];
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = _UISceneHostingViewController;
  [(UIViewController *)&v7 viewWillDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v5 = objc_opt_self();
  v6 = [(_UISceneHostingViewAppearanceActionHostToClient *)v5 _actionForActionType:?];
  [WeakRetained sendAction:v6];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = _UISceneHostingViewController;
  [(UIViewController *)&v7 viewDidDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v5 = objc_opt_self();
  v6 = [(_UISceneHostingViewAppearanceActionHostToClient *)v5 _actionForActionType:?];
  [WeakRetained sendAction:v6];
}

- (void)_childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:(id)presenter
{
  v16.receiver = self;
  v16.super_class = _UISceneHostingViewController;
  [(UIViewController *)&v16 _childViewControllerWillBePresentedFromViewControllerDelayingPresentationWithPresenter:?];
  presenterCopy = presenter;
  if (presenterCopy)
  {
    do
    {
      _existingView = [presenterCopy _existingView];
      window = [_existingView window];

      if (window)
      {
        break;
      }

      parentViewController = [presenterCopy parentViewController];

      presenterCopy = parentViewController;
    }

    while (parentViewController);
  }

  _existingView2 = [presenterCopy _existingView];
  window2 = [_existingView2 window];

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
  _relationshipManagementHostComponent = [v14 _relationshipManagementHostComponent];
  [_relationshipManagementHostComponent _willMoveToWindowWithDelayedPresentation:window2];
}

- (_UIRemoteSheet)_remoteSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  _remoteSheetProvider = [WeakRetained _remoteSheetProvider];

  return _remoteSheetProvider;
}

- (int64_t)preferredStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  statusBarStyle = [WeakRetained statusBarStyle];

  return statusBarStyle;
}

- (int)_preferredStatusBarVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  statusBarVisibility = [WeakRetained statusBarVisibility];

  return statusBarVisibility;
}

- (int64_t)preferredWhitePointAdaptivityStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  whitePointAdaptivityStyle = [WeakRetained whitePointAdaptivityStyle];

  return whitePointAdaptivityStyle;
}

- (id)_multitaskingDragExclusionRects
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  multitaskingDragExclusionRects = [WeakRetained multitaskingDragExclusionRects];

  return multitaskingDragExclusionRects;
}

- (unint64_t)preferredScreenEdgesDeferringSystemGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_vcPreferenceComponent);
  screenEdgesDeferringSystemGestures = [WeakRetained screenEdgesDeferringSystemGestures];

  return screenEdgesDeferringSystemGestures;
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
  homeIndicatorAutoHidden = [WeakRetained homeIndicatorAutoHidden];

  return homeIndicatorAutoHidden;
}

- (void)appendDescriptionToStream:(id)stream
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59___UISceneHostingViewController_appendDescriptionToStream___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v9[4] = stream;
  v9[5] = self;
  [stream appendProem:self block:v9];
  style = [stream style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59___UISceneHostingViewController_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v8[4] = stream;
    v8[5] = self;
    [stream overlayStyle:succinctStyle block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end