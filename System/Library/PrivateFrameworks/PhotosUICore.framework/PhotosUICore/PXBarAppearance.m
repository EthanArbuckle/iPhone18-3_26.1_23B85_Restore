@interface PXBarAppearance
+ (id)_sharedDefaultImplementationDelegate;
- (BOOL)adjustedPrefersStatusBarHidden:(BOOL)a3;
- (PXBarAppearance)init;
- (PXBarAppearance)initWithViewController:(id)a3;
- (PXBarAppearanceImplementationDelegate)_implementationDelegate;
- (PXBarAppearanceImplementationDelegate)implementationDelegate;
- (UIViewController)viewController;
- (int64_t)adjustedPreferredStatusBarUpdateAnimation:(int64_t)a3;
- (void)_performBarsTransition:(id)a3;
- (void)_setImplementationDelegate:(id)a3;
- (void)_setNavigationBarVisible:(BOOL)a3 withAnimationOptions:(id)a4;
- (void)_setTabBarVisible:(BOOL)a3 withAnimationOptions:(id)a4;
- (void)_setToolbarVisible:(BOOL)a3 withAnimationOptions:(id)a4;
- (void)_update;
- (void)_updateImplementationDelegate;
- (void)_updateOnViewAppearance:(BOOL)a3;
- (void)_updateOnViewWillAppear:(BOOL)a3;
- (void)_updateStatusBarStyleAndVisibilityWithAnimationOptions:(id)a3;
- (void)_updateWithAnimationOptions:(id)a3 isStatusBarHidden:(BOOL)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChangesWithAnimationOptions:(id)a3 changes:(id)a4;
- (void)setPrefersNavigationBarVisible:(BOOL)a3;
- (void)setPrefersStatusBarVisible:(BOOL)a3;
- (void)setPrefersTabBarVisible:(BOOL)a3;
- (void)setPrefersToolbarVisible:(BOOL)a3;
- (void)viewControllerViewIsAppearing:(BOOL)a3;
- (void)viewControllerViewWillAppear:(BOOL)a3;
@end

@implementation PXBarAppearance

- (void)_update
{
  v5 = [(PXBarAppearance *)self _animationOptions];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 isStatusBarHidden];

  [(PXBarAppearance *)self _updateWithAnimationOptions:v5 isStatusBarHidden:v4];
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)_updateImplementationDelegate
{
  v3 = [(PXBarAppearance *)self viewController];
  v4 = [v3 px_barAppearance];
  v9 = [v4 implementationDelegate];

  v5 = v9;
  if (!v9)
  {
    do
    {
      v8 = [v3 parentViewController];
      if (!v8)
      {
        v5 = +[PXBarAppearance _sharedDefaultImplementationDelegate];
        goto LABEL_7;
      }

      v6 = v8;

      v7 = [v6 px_barAppearance];
      v10 = [v7 implementationDelegate];

      v5 = v10;
      v3 = v6;
    }

    while (!v10);
    v3 = v6;
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
  block[4] = a1;
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXBarAppearanceObservationContext == a5)
  {
    [(PXBarAppearance *)self _update:a3];
  }
}

- (void)_performBarsTransition:(id)a3
{
  v4 = a3;
  transitionsCounter = self->_transitionsCounter;
  self->_transitionsCounter = transitionsCounter + 1;
  if (!transitionsCounter)
  {
    v6 = [(PXBarAppearance *)self viewController];
    [v6 px_willTransitionBars];
  }

  v4[2](v4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PXBarAppearance__performBarsTransition___block_invoke;
  aBlock[3] = &unk_1E774C648;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = [(PXBarAppearance *)self viewController];
  v9 = [v8 transitionCoordinator];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__PXBarAppearance__performBarsTransition___block_invoke_2;
    v10[3] = &unk_1E773A210;
    v11 = v7;
    [v9 animateAlongsideTransition:0 completion:v10];
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

- (void)_setTabBarVisible:(BOOL)a3 withAnimationOptions:(id)a4
{
  v6 = a4;
  v7 = [v6 type];
  if (v7 == 1)
  {
    v8 = 6;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == 2)
  {
    v9 = 7;
  }

  else
  {
    v9 = v8;
  }

  v10 = [(PXBarAppearance *)self viewController];
  v11 = [v10 tabBarController];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__PXBarAppearance__setTabBarVisible_withAnimationOptions___block_invoke;
  v14[3] = &unk_1E7741058;
  v18 = a3;
  v17 = v9;
  v15 = v11;
  v16 = v6;
  v12 = v6;
  v13 = v11;
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

- (void)_setToolbarVisible:(BOOL)a3 withAnimationOptions:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXBarAppearance *)self viewController];
  v8 = [v7 navigationController];

  if ([v8 isToolbarHidden] == v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__PXBarAppearance__setToolbarVisible_withAnimationOptions___block_invoke;
    v9[3] = &unk_1E774B368;
    v10 = v6;
    v11 = v8;
    v12 = v4;
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

- (void)_setNavigationBarVisible:(BOOL)a3 withAnimationOptions:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXBarAppearance *)self viewController];
  v8 = [v7 navigationController];

  if ([v8 isNavigationBarHidden] == v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__PXBarAppearance__setNavigationBarVisible_withAnimationOptions___block_invoke;
    v9[3] = &unk_1E774B368;
    v10 = v6;
    v11 = v8;
    v12 = v4;
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

- (void)_updateStatusBarStyleAndVisibilityWithAnimationOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = 1;
  if (v5 == 2)
  {
    v6 = 2;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(PXBarAppearance *)self _setPreferredStatusBarUpdateAnimation:v7];
  v8 = MEMORY[0x1E69DD250];
  [v4 duration];
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

- (void)_updateWithAnimationOptions:(id)a3 isStatusBarHidden:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXBarAppearance *)self viewController];
  if ([v7 _appearState] - 1 <= 2)
  {
    v8 = [(PXBarAppearance *)self prefersStatusBarVisible];
    v9 = [(PXBarAppearance *)self prefersNavigationBarVisible];
    v10 = [(PXBarAppearance *)self prefersToolbarVisible];
    v11 = [(PXBarAppearance *)self prefersTabBarVisible];
    v12 = v11;
    v16 = v10;
    if (v10 && v11 && (MEMORY[0x1A590D320]() & 1) == 0)
    {
      PXAssertGetLog();
    }

    v13 = [v7 navigationController];
    v14 = [v13 isNavigationBarHidden];
    v15 = [v13 _useStandardStatusBarHeight];
    if (v8 == v4 && v9 == v14 && v8 == v9)
    {
      [v13 _setUseStandardStatusBarHeight:1];
    }

    if (v8)
    {
      [(PXBarAppearance *)self _setNavigationBarVisible:v9 withAnimationOptions:v6];
      [(PXBarAppearance *)self _setTabBarVisible:v12 withAnimationOptions:v6];
      [(PXBarAppearance *)self _setToolbarVisible:v16 withAnimationOptions:v6];
      [(PXBarAppearance *)self _updateStatusBarStyleAndVisibilityWithAnimationOptions:v6];
    }

    else
    {
      [(PXBarAppearance *)self _updateStatusBarStyleAndVisibilityWithAnimationOptions:v6];
      [(PXBarAppearance *)self _setNavigationBarVisible:v9 withAnimationOptions:v6];
      [(PXBarAppearance *)self _setTabBarVisible:v12 withAnimationOptions:v6];
      [(PXBarAppearance *)self _setToolbarVisible:v16 withAnimationOptions:v6];
    }

    [v13 _setUseStandardStatusBarHeight:v15];
  }
}

- (void)_updateOnViewAppearance:(BOOL)a3
{
  v3 = a3;
  v11 = [(PXBarAppearance *)self viewController];
  [(PXBarAppearance *)self _updateImplementationDelegate];
  v5 = [(PXBarAppearance *)self _implementationDelegate];
  v6 = [v11 transitionCoordinator];
  if (v3)
  {
    v7 = [PXBarAnimationOptions alloc];
    [v6 transitionDuration];
    v8 = [(PXBarAnimationOptions *)v7 initWithType:1 duration:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [v9 isStatusBarHidden];

  if (self->_implementationDelegateFlags.respondsToIsStatusBarVisible)
  {
    v10 = [v5 barAppearanceIsStatusBarVisible:self] ^ 1;
  }

  [(PXBarAppearance *)self _updateWithAnimationOptions:v8 isStatusBarHidden:v10];
}

- (void)_updateOnViewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(PXBarAppearance *)self _updateImplementationDelegate];
  v5 = [(PXBarAppearance *)self _implementationDelegate];
  if (self->_implementationDelegateFlags.respondsToWillUpdateBarAppearanceOnViewWillAppear)
  {
    v6 = v5;
    [v5 barAppearance:self willUpdateBarAppearanceOnViewWillAppear:v3];
    v5 = v6;
  }
}

- (void)_setImplementationDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->__implementationDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__implementationDelegate, obj);
    self->_implementationDelegateFlags.respondsToWillUpdateBarAppearanceOnViewWillAppear = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToIsStatusBarVisible = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToIsStatusBarVisible = objc_opt_respondsToSelector() & 1;
  }
}

- (int64_t)adjustedPreferredStatusBarUpdateAnimation:(int64_t)a3
{
  if (![(PXBarAppearance *)self isEnabled])
  {
    return a3;
  }

  return [(PXBarAppearance *)self _preferredStatusBarUpdateAnimation];
}

- (BOOL)adjustedPrefersStatusBarHidden:(BOOL)a3
{
  LOBYTE(v3) = a3;
  if ([(PXBarAppearance *)self isEnabled])
  {
    return ![(PXBarAppearance *)self prefersStatusBarVisible];
  }

  return v3;
}

- (void)viewControllerViewIsAppearing:(BOOL)a3
{
  v3 = a3;
  if ([(PXBarAppearance *)self isEnabled]&& [(PXBarAppearance *)self prefersViewIsAppearingForAppearanceUpdates])
  {

    [(PXBarAppearance *)self _updateOnViewAppearance:v3];
  }
}

- (void)viewControllerViewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(PXBarAppearance *)self isEnabled])
  {
    [(PXBarAppearance *)self _updateOnViewWillAppear:v3];
    if (![(PXBarAppearance *)self prefersViewIsAppearingForAppearanceUpdates])
    {

      [(PXBarAppearance *)self _updateOnViewAppearance:v3];
    }
  }
}

- (void)setPrefersTabBarVisible:(BOOL)a3
{
  if (self->_prefersTabBarVisible != a3)
  {
    [(PXBarAppearance *)self signalChange:8];
    self->_prefersTabBarVisible = a3;
  }
}

- (void)setPrefersToolbarVisible:(BOOL)a3
{
  if (self->_prefersToolbarVisible != a3)
  {
    [(PXBarAppearance *)self signalChange:4];
    self->_prefersToolbarVisible = a3;
  }
}

- (void)setPrefersNavigationBarVisible:(BOOL)a3
{
  if (self->_prefersNavigationBarVisible != a3)
  {
    [(PXBarAppearance *)self signalChange:2];
    self->_prefersNavigationBarVisible = a3;
  }
}

- (void)setPrefersStatusBarVisible:(BOOL)a3
{
  if (self->_prefersStatusBarVisible != a3)
  {
    [(PXBarAppearance *)self signalChange:1];
    self->_prefersStatusBarVisible = a3;
  }
}

- (void)performChangesWithAnimationOptions:(id)a3 changes:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXBarAppearance *)self _animationOptions];
  v9 = v8;
  if (v6)
  {
    if (v8)
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "bar appearance animation options specified multiple times (existing:%@, specified:%@)", buf, 0x16u);
      }
    }

    else
    {
      [(PXBarAppearance *)self _setAnimationOptions:v6];
    }
  }

  v11.receiver = self;
  v11.super_class = PXBarAppearance;
  [(PXBarAppearance *)&v11 performChanges:v7];
  [(PXBarAppearance *)self _setAnimationOptions:v9];
}

- (PXBarAppearance)initWithViewController:(id)a3
{
  v4 = a3;
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
    objc_storeWeak(&v5->_viewController, v4);
    [(PXBarAppearance *)v6 registerChangeObserver:v6 context:PXBarAppearanceObservationContext];
  }

  return v6;
}

- (PXBarAppearance)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXBarAppearance.m" lineNumber:57 description:@"unavailable initializer"];

  return 0;
}

@end