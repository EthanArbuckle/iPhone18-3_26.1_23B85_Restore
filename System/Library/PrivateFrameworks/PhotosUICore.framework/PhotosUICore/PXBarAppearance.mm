@interface PXBarAppearance
+ (id)_sharedDefaultImplementationDelegate;
- (BOOL)adjustedPrefersStatusBarHidden:(BOOL)hidden;
- (PXBarAppearance)init;
- (PXBarAppearance)initWithViewController:(id)controller;
- (PXBarAppearanceImplementationDelegate)_implementationDelegate;
- (PXBarAppearanceImplementationDelegate)implementationDelegate;
- (UIViewController)viewController;
- (int64_t)adjustedPreferredStatusBarUpdateAnimation:(int64_t)animation;
- (void)_performBarsTransition:(id)transition;
- (void)_setImplementationDelegate:(id)delegate;
- (void)_setNavigationBarVisible:(BOOL)visible withAnimationOptions:(id)options;
- (void)_setTabBarVisible:(BOOL)visible withAnimationOptions:(id)options;
- (void)_setToolbarVisible:(BOOL)visible withAnimationOptions:(id)options;
- (void)_update;
- (void)_updateImplementationDelegate;
- (void)_updateOnViewAppearance:(BOOL)appearance;
- (void)_updateOnViewWillAppear:(BOOL)appear;
- (void)_updateStatusBarStyleAndVisibilityWithAnimationOptions:(id)options;
- (void)_updateWithAnimationOptions:(id)options isStatusBarHidden:(BOOL)hidden;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChangesWithAnimationOptions:(id)options changes:(id)changes;
- (void)setPrefersNavigationBarVisible:(BOOL)visible;
- (void)setPrefersStatusBarVisible:(BOOL)visible;
- (void)setPrefersTabBarVisible:(BOOL)visible;
- (void)setPrefersToolbarVisible:(BOOL)visible;
- (void)viewControllerViewIsAppearing:(BOOL)appearing;
- (void)viewControllerViewWillAppear:(BOOL)appear;
@end

@implementation PXBarAppearance

- (void)_update
{
  _animationOptions = [(PXBarAppearance *)self _animationOptions];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isStatusBarHidden = [mEMORY[0x1E69DC668] isStatusBarHidden];

  [(PXBarAppearance *)self _updateWithAnimationOptions:_animationOptions isStatusBarHidden:isStatusBarHidden];
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)_updateImplementationDelegate
{
  viewController = [(PXBarAppearance *)self viewController];
  px_barAppearance = [viewController px_barAppearance];
  implementationDelegate = [px_barAppearance implementationDelegate];

  v5 = implementationDelegate;
  if (!implementationDelegate)
  {
    do
    {
      parentViewController = [viewController parentViewController];
      if (!parentViewController)
      {
        v5 = +[PXBarAppearance _sharedDefaultImplementationDelegate];
        goto LABEL_7;
      }

      v6 = parentViewController;

      px_barAppearance2 = [v6 px_barAppearance];
      implementationDelegate2 = [px_barAppearance2 implementationDelegate];

      v5 = implementationDelegate2;
      viewController = v6;
    }

    while (!implementationDelegate2);
    viewController = v6;
  }

LABEL_7:
  v11 = v5;
  [(PXBarAppearance *)self _setImplementationDelegate:v5];
}

- (PXBarAppearanceImplementationDelegate)implementationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_implementationDelegate);

  return WeakRetained;
}

+ (id)_sharedDefaultImplementationDelegate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PXBarAppearance__sharedDefaultImplementationDelegate__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sharedDefaultImplementationDelegate_onceToken != -1)
  {
    dispatch_once(&_sharedDefaultImplementationDelegate_onceToken, block);
  }

  v2 = _sharedDefaultImplementationDelegate_defaultImplementationDelegate;

  return v2;
}

void __55__PXBarAppearance__sharedDefaultImplementationDelegate__block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) defaultImplementationDelegate];
    v3 = _sharedDefaultImplementationDelegate_defaultImplementationDelegate;
    _sharedDefaultImplementationDelegate_defaultImplementationDelegate = v2;
  }
}

- (PXBarAppearanceImplementationDelegate)_implementationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__implementationDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXBarAppearanceObservationContext == context)
  {
    [(PXBarAppearance *)self _update:observable];
  }
}

- (void)_performBarsTransition:(id)transition
{
  transitionCopy = transition;
  transitionsCounter = self->_transitionsCounter;
  self->_transitionsCounter = transitionsCounter + 1;
  if (!transitionsCounter)
  {
    viewController = [(PXBarAppearance *)self viewController];
    [viewController px_willTransitionBars];
  }

  transitionCopy[2](transitionCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PXBarAppearance__performBarsTransition___block_invoke;
  aBlock[3] = &unk_1E774C648;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  viewController2 = [(PXBarAppearance *)self viewController];
  transitionCoordinator = [viewController2 transitionCoordinator];

  if (transitionCoordinator)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__PXBarAppearance__performBarsTransition___block_invoke_2;
    v10[3] = &unk_1E773A210;
    v11 = v7;
    [transitionCoordinator animateAlongsideTransition:0 completion:v10];
  }

  else
  {
    v7[2](v7);
  }
}

void __42__PXBarAppearance__performBarsTransition___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 104);
  v2 = *(a1 + 32);
  if (!v2[13])
  {
    v3 = [v2 viewController];
    [v3 px_didTransitionBars];
  }
}

- (void)_setTabBarVisible:(BOOL)visible withAnimationOptions:(id)options
{
  optionsCopy = options;
  type = [optionsCopy type];
  if (type == 1)
  {
    v8 = 6;
  }

  else
  {
    v8 = 0;
  }

  if (type == 2)
  {
    v9 = 7;
  }

  else
  {
    v9 = v8;
  }

  viewController = [(PXBarAppearance *)self viewController];
  tabBarController = [viewController tabBarController];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__PXBarAppearance__setTabBarVisible_withAnimationOptions___block_invoke;
  v14[3] = &unk_1E7741058;
  visibleCopy = visible;
  v17 = v9;
  v15 = tabBarController;
  v16 = optionsCopy;
  v12 = optionsCopy;
  v13 = tabBarController;
  [(PXBarAppearance *)self _performBarsTransition:v14];
}

uint64_t __58__PXBarAppearance__setTabBarVisible_withAnimationOptions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 52);
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  [*(a1 + 40) duration];
  if (v1 == 1)
  {

    return [v3 showBarWithTransition:v2 duration:?];
  }

  else
  {

    return [v3 hideBarWithTransition:v2 duration:?];
  }
}

- (void)_setToolbarVisible:(BOOL)visible withAnimationOptions:(id)options
{
  visibleCopy = visible;
  optionsCopy = options;
  viewController = [(PXBarAppearance *)self viewController];
  navigationController = [viewController navigationController];

  if ([navigationController isToolbarHidden] == visibleCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__PXBarAppearance__setToolbarVisible_withAnimationOptions___block_invoke;
    v9[3] = &unk_1E774B368;
    v10 = optionsCopy;
    v11 = navigationController;
    v12 = visibleCopy;
    [(PXBarAppearance *)self _performBarsTransition:v9];
  }
}

uint64_t __59__PXBarAppearance__setToolbarVisible_withAnimationOptions___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) type];
  switch(result)
  {
    case 2:
      v10 = *(a1 + 48);
      v11 = *(a1 + 40);
      [*(a1 + 32) duration];
      v7 = (v10 & 1) == 0;
      v8 = v11;
      v9 = 4;
      break;
    case 1:
      v5 = *(a1 + 48);
      v6 = *(a1 + 40);
      [*(a1 + 32) duration];
      v7 = (v5 & 1) == 0;
      v8 = v6;
      v9 = 15;
      break;
    case 0:
      v3 = *(a1 + 40);
      v4 = (*(a1 + 48) & 1) == 0;

      return [v3 setToolbarHidden:v4 animated:0];
    default:
      return result;
  }

  return [v8 _setToolbarHidden:v7 edge:v9 duration:?];
}

- (void)_setNavigationBarVisible:(BOOL)visible withAnimationOptions:(id)options
{
  visibleCopy = visible;
  optionsCopy = options;
  viewController = [(PXBarAppearance *)self viewController];
  navigationController = [viewController navigationController];

  if ([navigationController isNavigationBarHidden] == visibleCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__PXBarAppearance__setNavigationBarVisible_withAnimationOptions___block_invoke;
    v9[3] = &unk_1E774B368;
    v10 = optionsCopy;
    v11 = navigationController;
    v12 = visibleCopy;
    [(PXBarAppearance *)self _performBarsTransition:v9];
  }
}

uint64_t __65__PXBarAppearance__setNavigationBarVisible_withAnimationOptions___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) type];
  switch(result)
  {
    case 2:
      v10 = *(a1 + 48);
      v11 = *(a1 + 40);
      [*(a1 + 32) duration];
      v7 = (v10 & 1) == 0;
      v8 = v11;
      v9 = 1;
      break;
    case 1:
      v5 = *(a1 + 48);
      v6 = *(a1 + 40);
      [*(a1 + 32) duration];
      v7 = (v5 & 1) == 0;
      v8 = v6;
      v9 = 15;
      break;
    case 0:
      v3 = *(a1 + 40);
      v4 = (*(a1 + 48) & 1) == 0;

      return [v3 setNavigationBarHidden:v4 animated:0];
    default:
      return result;
  }

  return [v8 _setNavigationBarHidden:v7 edge:v9 duration:?];
}

- (void)_updateStatusBarStyleAndVisibilityWithAnimationOptions:(id)options
{
  optionsCopy = options;
  type = [optionsCopy type];
  v6 = 1;
  if (type == 2)
  {
    v6 = 2;
  }

  if (type)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(PXBarAppearance *)self _setPreferredStatusBarUpdateAnimation:v7];
  v8 = MEMORY[0x1E69DD250];
  [optionsCopy duration];
  v10 = v9;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PXBarAppearance__updateStatusBarStyleAndVisibilityWithAnimationOptions___block_invoke;
  v11[3] = &unk_1E774C648;
  v11[4] = self;
  [v8 animateWithDuration:v11 animations:v10];
}

void __74__PXBarAppearance__updateStatusBarStyleAndVisibilityWithAnimationOptions___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 setNeedsStatusBarAppearanceUpdate];
}

- (void)_updateWithAnimationOptions:(id)options isStatusBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  optionsCopy = options;
  viewController = [(PXBarAppearance *)self viewController];
  if ([viewController _appearState] - 1 <= 2)
  {
    prefersStatusBarVisible = [(PXBarAppearance *)self prefersStatusBarVisible];
    prefersNavigationBarVisible = [(PXBarAppearance *)self prefersNavigationBarVisible];
    prefersToolbarVisible = [(PXBarAppearance *)self prefersToolbarVisible];
    prefersTabBarVisible = [(PXBarAppearance *)self prefersTabBarVisible];
    v12 = prefersTabBarVisible;
    v16 = prefersToolbarVisible;
    if (prefersToolbarVisible && prefersTabBarVisible && (MEMORY[0x1A590D320]() & 1) == 0)
    {
      PXAssertGetLog();
    }

    navigationController = [viewController navigationController];
    isNavigationBarHidden = [navigationController isNavigationBarHidden];
    _useStandardStatusBarHeight = [navigationController _useStandardStatusBarHeight];
    if (prefersStatusBarVisible == hiddenCopy && prefersNavigationBarVisible == isNavigationBarHidden && prefersStatusBarVisible == prefersNavigationBarVisible)
    {
      [navigationController _setUseStandardStatusBarHeight:1];
    }

    if (prefersStatusBarVisible)
    {
      [(PXBarAppearance *)self _setNavigationBarVisible:prefersNavigationBarVisible withAnimationOptions:optionsCopy];
      [(PXBarAppearance *)self _setTabBarVisible:v12 withAnimationOptions:optionsCopy];
      [(PXBarAppearance *)self _setToolbarVisible:v16 withAnimationOptions:optionsCopy];
      [(PXBarAppearance *)self _updateStatusBarStyleAndVisibilityWithAnimationOptions:optionsCopy];
    }

    else
    {
      [(PXBarAppearance *)self _updateStatusBarStyleAndVisibilityWithAnimationOptions:optionsCopy];
      [(PXBarAppearance *)self _setNavigationBarVisible:prefersNavigationBarVisible withAnimationOptions:optionsCopy];
      [(PXBarAppearance *)self _setTabBarVisible:v12 withAnimationOptions:optionsCopy];
      [(PXBarAppearance *)self _setToolbarVisible:v16 withAnimationOptions:optionsCopy];
    }

    [navigationController _setUseStandardStatusBarHeight:_useStandardStatusBarHeight];
  }
}

- (void)_updateOnViewAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  viewController = [(PXBarAppearance *)self viewController];
  [(PXBarAppearance *)self _updateImplementationDelegate];
  _implementationDelegate = [(PXBarAppearance *)self _implementationDelegate];
  transitionCoordinator = [viewController transitionCoordinator];
  if (appearanceCopy)
  {
    v7 = [PXBarAnimationOptions alloc];
    [transitionCoordinator transitionDuration];
    v8 = [(PXBarAnimationOptions *)v7 initWithType:1 duration:?];
  }

  else
  {
    v8 = 0;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isStatusBarHidden = [mEMORY[0x1E69DC668] isStatusBarHidden];

  if (self->_implementationDelegateFlags.respondsToIsStatusBarVisible)
  {
    isStatusBarHidden = [_implementationDelegate barAppearanceIsStatusBarVisible:self] ^ 1;
  }

  [(PXBarAppearance *)self _updateWithAnimationOptions:v8 isStatusBarHidden:isStatusBarHidden];
}

- (void)_updateOnViewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(PXBarAppearance *)self _updateImplementationDelegate];
  _implementationDelegate = [(PXBarAppearance *)self _implementationDelegate];
  if (self->_implementationDelegateFlags.respondsToWillUpdateBarAppearanceOnViewWillAppear)
  {
    v6 = _implementationDelegate;
    [_implementationDelegate barAppearance:self willUpdateBarAppearanceOnViewWillAppear:appearCopy];
    _implementationDelegate = v6;
  }
}

- (void)_setImplementationDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->__implementationDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__implementationDelegate, obj);
    self->_implementationDelegateFlags.respondsToWillUpdateBarAppearanceOnViewWillAppear = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToIsStatusBarVisible = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToIsStatusBarVisible = objc_opt_respondsToSelector() & 1;
  }
}

- (int64_t)adjustedPreferredStatusBarUpdateAnimation:(int64_t)animation
{
  if (![(PXBarAppearance *)self isEnabled])
  {
    return animation;
  }

  return [(PXBarAppearance *)self _preferredStatusBarUpdateAnimation];
}

- (BOOL)adjustedPrefersStatusBarHidden:(BOOL)hidden
{
  LOBYTE(v3) = hidden;
  if ([(PXBarAppearance *)self isEnabled])
  {
    return ![(PXBarAppearance *)self prefersStatusBarVisible];
  }

  return v3;
}

- (void)viewControllerViewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  if ([(PXBarAppearance *)self isEnabled]&& [(PXBarAppearance *)self prefersViewIsAppearingForAppearanceUpdates])
  {

    [(PXBarAppearance *)self _updateOnViewAppearance:appearingCopy];
  }
}

- (void)viewControllerViewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(PXBarAppearance *)self isEnabled])
  {
    [(PXBarAppearance *)self _updateOnViewWillAppear:appearCopy];
    if (![(PXBarAppearance *)self prefersViewIsAppearingForAppearanceUpdates])
    {

      [(PXBarAppearance *)self _updateOnViewAppearance:appearCopy];
    }
  }
}

- (void)setPrefersTabBarVisible:(BOOL)visible
{
  if (self->_prefersTabBarVisible != visible)
  {
    [(PXBarAppearance *)self signalChange:8];
    self->_prefersTabBarVisible = visible;
  }
}

- (void)setPrefersToolbarVisible:(BOOL)visible
{
  if (self->_prefersToolbarVisible != visible)
  {
    [(PXBarAppearance *)self signalChange:4];
    self->_prefersToolbarVisible = visible;
  }
}

- (void)setPrefersNavigationBarVisible:(BOOL)visible
{
  if (self->_prefersNavigationBarVisible != visible)
  {
    [(PXBarAppearance *)self signalChange:2];
    self->_prefersNavigationBarVisible = visible;
  }
}

- (void)setPrefersStatusBarVisible:(BOOL)visible
{
  if (self->_prefersStatusBarVisible != visible)
  {
    [(PXBarAppearance *)self signalChange:1];
    self->_prefersStatusBarVisible = visible;
  }
}

- (void)performChangesWithAnimationOptions:(id)options changes:(id)changes
{
  v16 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  changesCopy = changes;
  _animationOptions = [(PXBarAppearance *)self _animationOptions];
  v9 = _animationOptions;
  if (optionsCopy)
  {
    if (_animationOptions)
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = optionsCopy;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "bar appearance animation options specified multiple times (existing:%@, specified:%@)", buf, 0x16u);
      }
    }

    else
    {
      [(PXBarAppearance *)self _setAnimationOptions:optionsCopy];
    }
  }

  v11.receiver = self;
  v11.super_class = PXBarAppearance;
  [(PXBarAppearance *)&v11 performChanges:changesCopy];
  [(PXBarAppearance *)self _setAnimationOptions:v9];
}

- (PXBarAppearance)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PXBarAppearance;
  v5 = [(PXBarAppearance *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_prefersStatusBarVisible = 1;
    v5->_prefersNavigationBarVisible = 1;
    v5->_prefersToolbarVisible = 0;
    v5->_prefersTabBarVisible = 0;
    objc_storeWeak(&v5->_viewController, controllerCopy);
    [(PXBarAppearance *)v6 registerChangeObserver:v6 context:PXBarAppearanceObservationContext];
  }

  return v6;
}

- (PXBarAppearance)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBarAppearance.m" lineNumber:57 description:@"unavailable initializer"];

  return 0;
}

@end