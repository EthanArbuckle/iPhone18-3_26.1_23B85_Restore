@interface PSViewController
+ (void)registerDefaultNavigationCoordinatorClass:(Class)class;
- (BOOL)_isUndoSupportedInCurrentEnvironment;
- (PSViewController)init;
- (PSViewControllerNavigationCoordinator)navigationCoordinator;
- (id)parentController;
- (id)rootController;
- (void)_ensureNavigationCoordinator;
- (void)addChildViewController:(id)controller;
- (void)handleCanBeShownFromSuspendedState:(id)state;
- (void)handlePendingShowControllerIfNeeded;
- (void)handleURL:(id)l;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)handleURLForPendingViewControllerContainmentIfNeeded;
- (void)rootController;
- (void)setNavigationCoordinator:(id)coordinator;
- (void)setSpecifier:(id)specifier;
- (void)showController:(id)controller animate:(BOOL)animate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PSViewController

- (PSViewController)init
{
  v8.receiver = self;
  v8.super_class = PSViewController;
  v2 = [(PSViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(PSViewController *)v2 _ensureNavigationCoordinator];
    navigationItemLargeTitleDisplayMode = [(PSViewController *)v3 navigationItemLargeTitleDisplayMode];
    navigationItem = [(PSViewController *)v3 navigationItem];
    [navigationItem setLargeTitleDisplayMode:navigationItemLargeTitleDisplayMode];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_handleCanBeShownFromSuspendedState_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v3;
}

- (void)_ensureNavigationCoordinator
{
  if (ensureDefaultPSViewControllerNavigationCoordinatorRegistration_onceToken != -1)
  {
    [PSViewController _ensureNavigationCoordinator];
  }

  if (!self->_navigationCoordinator)
  {
    v3 = objc_alloc_init(defaultPSViewControllerNavigationCoordinatorClass);
    navigationCoordinator = self->_navigationCoordinator;
    self->_navigationCoordinator = v3;
  }
}

- (void)viewDidLoad
{
  v39 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PSViewController;
  [(PSViewController *)&v18 viewDidLoad];
  [(PSViewController *)self _ensureNavigationCoordinator];
  v4 = PKLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    viewIfLoaded = [(PSViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    navigationController = [(PSViewController *)self navigationController];
    parentViewController = [(PSViewController *)self parentViewController];
    parentController = [(PSViewController *)self parentController];
    *buf = 138545666;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2112;
    v26 = window;
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2112;
    v30 = navigationController;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = parentViewController;
    v35 = 2160;
    v36 = 1752392040;
    v37 = 2112;
    v38 = parentController;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x66u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_rootController);
  if (WeakRetained)
  {
    v14 = WeakRetained;
    rootController = [(PSViewController *)self rootController];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      rootController2 = [(PSViewController *)self rootController];
      [rootController2 logSettingsPath];
    }
  }
}

- (id)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (id)rootController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootController);

  if (!WeakRetained)
  {
    v4 = _PSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [PSViewController rootController];
    }
  }

  v5 = objc_loadWeakRetained(&self->_rootController);

  return v5;
}

- (BOOL)_isUndoSupportedInCurrentEnvironment
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (void)handleURLForPendingViewControllerContainmentIfNeeded
{
  if ([(PSViewController *)self isURLHandlingDeferredForViewControllerContainment])
  {
    urlResourceDictionaryPendingViewControllerContainment = [(PSViewController *)self urlResourceDictionaryPendingViewControllerContainment];

    if (urlResourceDictionaryPendingViewControllerContainment)
    {
      urlCompletionHandlerPendingViewControllerContainment = [(PSViewController *)self urlCompletionHandlerPendingViewControllerContainment];
      [(PSViewController *)self setUrlCompletionHandlerPendingViewControllerContainment:0];
      urlResourceDictionaryPendingViewControllerContainment2 = [(PSViewController *)self urlResourceDictionaryPendingViewControllerContainment];
      [(PSViewController *)self setUrlResourceDictionaryPendingViewControllerContainment:0];
      v5 = urlCompletionHandlerPendingViewControllerContainment;
      if (urlCompletionHandlerPendingViewControllerContainment || (NSClassFromString(&cfstr_Pslistcontroll_7.isa), isKindOfClass = objc_opt_isKindOfClass(), v5 = 0, (isKindOfClass & 1) != 0))
      {
        [(PSViewController *)self handleURL:urlResourceDictionaryPendingViewControllerContainment2 withCompletion:v5];
      }

      else
      {
        [(PSViewController *)self handleURL:urlResourceDictionaryPendingViewControllerContainment2];
      }
    }
  }
}

- (void)handlePendingShowControllerIfNeeded
{
  pendingShowControllerPayload = self->_pendingShowControllerPayload;
  if (pendingShowControllerPayload)
  {
    self->_pendingShowControllerPayload = 0;
    v4 = pendingShowControllerPayload;

    viewControllerToPresent = [(_PSPendingShowControllerPayload *)v4 viewControllerToPresent];
    animate = [(_PSPendingShowControllerPayload *)v4 animate];

    [(PSViewController *)self showController:viewControllerToPresent animate:animate];
  }
}

- (void)handleCanBeShownFromSuspendedState:(id)state
{
  v18 = *MEMORY[0x1E69E9840];
  navigationController = [(PSViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v6 = [viewControllers containsObject:self];

  if (v6 && ![(PSViewController *)self canBeShownFromSuspendedState])
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v14 = 136315394;
      v15 = "[PSViewController handleCanBeShownFromSuspendedState:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@ canBeShownFromSuspendedState is NO, popping/dismissing controller.", &v14, 0x16u);
    }

    navigationController2 = [(PSViewController *)self navigationController];
    v11 = [navigationController2 popToViewController:self animated:0];

    navigationController3 = [(PSViewController *)self navigationController];
    v13 = [navigationController3 popViewControllerAnimated:0];

    [(PSViewController *)self dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_specifier != specifierCopy)
  {
    objc_storeStrong(&self->_specifier, specifier);
    parentController = [(PSSpecifier *)specifierCopy parentController];
    if (parentController)
    {
      v6 = parentController;
      parentController2 = [(PSSpecifier *)specifierCopy parentController];
      WeakRetained = objc_loadWeakRetained(&self->_parentController);

      if (parentController2 != WeakRetained)
      {
        parentController3 = [(PSSpecifier *)specifierCopy parentController];
        [(PSViewController *)self setParentController:parentController3];
      }
    }
  }
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  v33 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  navigationController = [(PSViewController *)self navigationController];
  childViewControllers = [navigationController childViewControllers];

  if ([childViewControllers containsObject:controllerCopy])
  {
    v10 = _PSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PSViewController showController:v10 animate:?];
    }

    v11 = _PSLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PSListController showController:animate:];
    }

    v12 = _PSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PSListController showController:animate:];
    }
  }

  navigationController2 = [(PSViewController *)self navigationController];

  v14 = PKLogForCategory(3);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (navigationController2)
  {
    if (v15)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v23 = 138544386;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      v27 = 2160;
      v28 = 1752392040;
      v29 = 2112;
      v30 = controllerCopy;
      v31 = 1024;
      v32 = animateCopy;
      _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ called with %{mask.hash}@, %{BOOL}d", &v23, 0x30u);
    }

    [(PSViewController *)self _showController:controllerCopy animate:animateCopy];
  }

  else
  {
    if (v15)
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      v23 = 138544386;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      v27 = 2160;
      v28 = 1752392040;
      v29 = 2112;
      v30 = controllerCopy;
      v31 = 1024;
      v32 = animateCopy;
      _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ called with %{mask.hash}@, %{BOOL}d but navigationController is nil, stashing.", &v23, 0x30u);
    }

    v22 = [[_PSPendingShowControllerPayload alloc] initWithViewControllerToPresent:controllerCopy animate:animateCopy];
    [(PSViewController *)self setPendingShowControllerPayload:v22];
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (-[PSViewController isURLHandlingDeferredForViewControllerContainment](self, "isURLHandlingDeferredForViewControllerContainment") && (-[PSViewController viewIfLoaded](self, "viewIfLoaded"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    [(PSViewController *)self setUrlResourceDictionaryPendingViewControllerContainment:lCopy];
    [(PSViewController *)self setUrlCompletionHandlerPendingViewControllerContainment:completionCopy];
  }

  else
  {
    [(PSViewController *)self setCallingHandleURLFromHandleURLWithCompletion:1];
    [(PSViewController *)self handleURL:lCopy];
    [(PSViewController *)self setCallingHandleURLFromHandleURLWithCompletion:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)handleURL:(id)l
{
  lCopy = l;
  if (![(PSViewController *)self isCallingHandleURLFromHandleURLWithCompletion])
  {
    if ([(PSViewController *)self isURLHandlingDeferredForViewControllerContainment])
    {
      viewIfLoaded = [(PSViewController *)self viewIfLoaded];
      window = [viewIfLoaded window];

      if (!window)
      {
        [(PSViewController *)self setUrlResourceDictionaryPendingViewControllerContainment:lCopy];
      }
    }
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v38 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PSViewController;
  [(PSViewController *)&v15 viewIsAppearing:?];
  v6 = PKLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    viewIfLoaded = [(PSViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    navigationController = [(PSViewController *)self navigationController];
    parentViewController = [(PSViewController *)self parentViewController];
    parentController = [(PSViewController *)self parentController];
    *buf = 138545922;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = appearingCopy;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = window;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = navigationController;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = parentViewController;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = parentController;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v38 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PSViewController;
  [(PSViewController *)&v15 viewWillAppear:?];
  v6 = PKLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    viewIfLoaded = [(PSViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    navigationController = [(PSViewController *)self navigationController];
    parentViewController = [(PSViewController *)self parentViewController];
    parentController = [(PSViewController *)self parentController];
    *buf = 138545922;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = appearCopy;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = window;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = navigationController;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = parentViewController;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = parentController;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v39 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PSViewController;
  [(PSViewController *)&v16 viewDidAppear:?];
  v6 = PKLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    viewIfLoaded = [(PSViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    navigationController = [(PSViewController *)self navigationController];
    parentViewController = [(PSViewController *)self parentViewController];
    parentController = [(PSViewController *)self parentController];
    *buf = 138545922;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 1024;
    v22 = appearCopy;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2112;
    v26 = window;
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2112;
    v30 = navigationController;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = parentViewController;
    v35 = 2160;
    v36 = 1752392040;
    v37 = 2112;
    v38 = parentController;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }

  if ([(PSViewController *)self _isUndoSupportedInCurrentEnvironment])
  {
    [(PSViewController *)self becomeFirstResponder];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PSViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __34__PSViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) handleURLForPendingViewControllerContainmentIfNeeded];
  v2 = *(a1 + 32);

  return [v2 handlePendingShowControllerIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v38 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PSViewController;
  [(PSViewController *)&v15 viewWillDisappear:?];
  v6 = PKLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    viewIfLoaded = [(PSViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    navigationController = [(PSViewController *)self navigationController];
    parentViewController = [(PSViewController *)self parentViewController];
    parentController = [(PSViewController *)self parentController];
    *buf = 138545922;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = disappearCopy;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = window;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = navigationController;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = parentViewController;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = parentController;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }

  if ([(PSViewController *)self _isUndoSupportedInCurrentEnvironment])
  {
    [(PSViewController *)self resignFirstResponder];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v38 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PSViewController;
  [(PSViewController *)&v15 viewDidDisappear:?];
  v6 = PKLogForCategory(3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    viewIfLoaded = [(PSViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    navigationController = [(PSViewController *)self navigationController];
    parentViewController = [(PSViewController *)self parentViewController];
    parentController = [(PSViewController *)self parentController];
    *buf = 138545922;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = disappearCopy;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = window;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = navigationController;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = parentViewController;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = parentController;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }
}

- (void)addChildViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PSViewController;
  [(PSViewController *)&v8 addChildViewController:controllerCopy];
  objc_opt_class();
  v5 = controllerCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if ([(PSViewController *)self isURLHandlingDeferredForViewControllerContainment]&& v7)
  {
    [v7 setUrlHandlingDeferredForViewControllerContainment:{-[PSViewController isURLHandlingDeferredForViewControllerContainment](self, "isURLHandlingDeferredForViewControllerContainment")}];
  }
}

+ (void)registerDefaultNavigationCoordinatorClass:(Class)class
{
  if (ensureDefaultPSViewControllerNavigationCoordinatorRegistration_onceToken != -1)
  {
    [PSViewController _ensureNavigationCoordinator];
  }

  defaultPSViewControllerNavigationCoordinatorClass = class;
}

- (void)setNavigationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (ensureDefaultPSViewControllerNavigationCoordinatorRegistration_onceToken != -1)
  {
    [PSViewController _ensureNavigationCoordinator];
  }

  navigationCoordinator = self->_navigationCoordinator;
  self->_navigationCoordinator = coordinatorCopy;
}

- (PSViewControllerNavigationCoordinator)navigationCoordinator
{
  if (ensureDefaultPSViewControllerNavigationCoordinatorRegistration_onceToken != -1)
  {
    [PSViewController _ensureNavigationCoordinator];
  }

  navigationCoordinator = self->_navigationCoordinator;

  return navigationCoordinator;
}

- (void)rootController
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)showController:(os_log_t)log animate:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[PSViewController showController:animate:]";
  _os_log_error_impl(&dword_18B008000, log, OS_LOG_TYPE_ERROR, "%s: pushing a view controller that's already in the stack.", &v1, 0xCu);
}

@end