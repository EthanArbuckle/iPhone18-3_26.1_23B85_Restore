@interface PSViewController
+ (void)registerDefaultNavigationCoordinatorClass:(Class)a3;
- (BOOL)_isUndoSupportedInCurrentEnvironment;
- (PSViewController)init;
- (PSViewControllerNavigationCoordinator)navigationCoordinator;
- (id)parentController;
- (id)rootController;
- (void)_ensureNavigationCoordinator;
- (void)addChildViewController:(id)a3;
- (void)handleCanBeShownFromSuspendedState:(id)a3;
- (void)handlePendingShowControllerIfNeeded;
- (void)handleURL:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)handleURLForPendingViewControllerContainmentIfNeeded;
- (void)rootController;
- (void)setNavigationCoordinator:(id)a3;
- (void)setSpecifier:(id)a3;
- (void)showController:(id)a3 animate:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v4 = [(PSViewController *)v3 navigationItemLargeTitleDisplayMode];
    v5 = [(PSViewController *)v3 navigationItem];
    [v5 setLargeTitleDisplayMode:v4];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v3 selector:sel_handleCanBeShownFromSuspendedState_ name:*MEMORY[0x1E69DDAC8] object:0];
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
    v8 = [(PSViewController *)self viewIfLoaded];
    v9 = [v8 window];
    v10 = [(PSViewController *)self navigationController];
    v11 = [(PSViewController *)self parentViewController];
    v12 = [(PSViewController *)self parentController];
    *buf = 138545666;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2112;
    v26 = v9;
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2112;
    v30 = v10;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = v11;
    v35 = 2160;
    v36 = 1752392040;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x66u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_rootController);
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v15 = [(PSViewController *)self rootController];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(PSViewController *)self rootController];
      [v17 logSettingsPath];
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
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.Preferences"];

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (void)handleURLForPendingViewControllerContainmentIfNeeded
{
  if ([(PSViewController *)self isURLHandlingDeferredForViewControllerContainment])
  {
    v3 = [(PSViewController *)self urlResourceDictionaryPendingViewControllerContainment];

    if (v3)
    {
      v7 = [(PSViewController *)self urlCompletionHandlerPendingViewControllerContainment];
      [(PSViewController *)self setUrlCompletionHandlerPendingViewControllerContainment:0];
      v4 = [(PSViewController *)self urlResourceDictionaryPendingViewControllerContainment];
      [(PSViewController *)self setUrlResourceDictionaryPendingViewControllerContainment:0];
      v5 = v7;
      if (v7 || (NSClassFromString(&cfstr_Pslistcontroll_7.isa), isKindOfClass = objc_opt_isKindOfClass(), v5 = 0, (isKindOfClass & 1) != 0))
      {
        [(PSViewController *)self handleURL:v4 withCompletion:v5];
      }

      else
      {
        [(PSViewController *)self handleURL:v4];
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

    v6 = [(_PSPendingShowControllerPayload *)v4 viewControllerToPresent];
    v5 = [(_PSPendingShowControllerPayload *)v4 animate];

    [(PSViewController *)self showController:v6 animate:v5];
  }
}

- (void)handleCanBeShownFromSuspendedState:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(PSViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 containsObject:self];

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

    v10 = [(PSViewController *)self navigationController];
    v11 = [v10 popToViewController:self animated:0];

    v12 = [(PSViewController *)self navigationController];
    v13 = [v12 popViewControllerAnimated:0];

    [(PSViewController *)self dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)setSpecifier:(id)a3
{
  v10 = a3;
  if (self->_specifier != v10)
  {
    objc_storeStrong(&self->_specifier, a3);
    v5 = [(PSSpecifier *)v10 parentController];
    if (v5)
    {
      v6 = v5;
      v7 = [(PSSpecifier *)v10 parentController];
      WeakRetained = objc_loadWeakRetained(&self->_parentController);

      if (v7 != WeakRetained)
      {
        v9 = [(PSSpecifier *)v10 parentController];
        [(PSViewController *)self setParentController:v9];
      }
    }
  }
}

- (void)showController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PSViewController *)self navigationController];
  v9 = [v8 childViewControllers];

  if ([v9 containsObject:v7])
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

  v13 = [(PSViewController *)self navigationController];

  v14 = PKLogForCategory(3);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
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
      v30 = v7;
      v31 = 1024;
      v32 = v4;
      _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ called with %{mask.hash}@, %{BOOL}d", &v23, 0x30u);
    }

    [(PSViewController *)self _showController:v7 animate:v4];
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
      v30 = v7;
      v31 = 1024;
      v32 = v4;
      _os_log_impl(&dword_18B008000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ called with %{mask.hash}@, %{BOOL}d but navigationController is nil, stashing.", &v23, 0x30u);
    }

    v22 = [[_PSPendingShowControllerPayload alloc] initWithViewControllerToPresent:v7 animate:v4];
    [(PSViewController *)self setPendingShowControllerPayload:v22];
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (-[PSViewController isURLHandlingDeferredForViewControllerContainment](self, "isURLHandlingDeferredForViewControllerContainment") && (-[PSViewController viewIfLoaded](self, "viewIfLoaded"), v7 = objc_claimAutoreleasedReturnValue(), [v7 window], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    [(PSViewController *)self setUrlResourceDictionaryPendingViewControllerContainment:v9];
    [(PSViewController *)self setUrlCompletionHandlerPendingViewControllerContainment:v6];
  }

  else
  {
    [(PSViewController *)self setCallingHandleURLFromHandleURLWithCompletion:1];
    [(PSViewController *)self handleURL:v9];
    [(PSViewController *)self setCallingHandleURLFromHandleURLWithCompletion:0];
    if (v6)
    {
      v6[2](v6);
    }
  }
}

- (void)handleURL:(id)a3
{
  v6 = a3;
  if (![(PSViewController *)self isCallingHandleURLFromHandleURLWithCompletion])
  {
    if ([(PSViewController *)self isURLHandlingDeferredForViewControllerContainment])
    {
      v4 = [(PSViewController *)self viewIfLoaded];
      v5 = [v4 window];

      if (!v5)
      {
        [(PSViewController *)self setUrlResourceDictionaryPendingViewControllerContainment:v6];
      }
    }
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
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
    v10 = [(PSViewController *)self viewIfLoaded];
    v11 = [v10 window];
    v12 = [(PSViewController *)self navigationController];
    v13 = [(PSViewController *)self parentViewController];
    v14 = [(PSViewController *)self parentController];
    *buf = 138545922;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = v3;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = v11;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v12;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v13;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
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
    v10 = [(PSViewController *)self viewIfLoaded];
    v11 = [v10 window];
    v12 = [(PSViewController *)self navigationController];
    v13 = [(PSViewController *)self parentViewController];
    v14 = [(PSViewController *)self parentController];
    *buf = 138545922;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = v3;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = v11;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v12;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v13;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
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
    v10 = [(PSViewController *)self viewIfLoaded];
    v11 = [v10 window];
    v12 = [(PSViewController *)self navigationController];
    v13 = [(PSViewController *)self parentViewController];
    v14 = [(PSViewController *)self parentController];
    *buf = 138545922;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 1024;
    v22 = v3;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2112;
    v26 = v11;
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2112;
    v30 = v12;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = v13;
    v35 = 2160;
    v36 = 1752392040;
    v37 = 2112;
    v38 = v14;
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
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
    v10 = [(PSViewController *)self viewIfLoaded];
    v11 = [v10 window];
    v12 = [(PSViewController *)self navigationController];
    v13 = [(PSViewController *)self parentViewController];
    v14 = [(PSViewController *)self parentController];
    *buf = 138545922;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = v3;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = v11;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v12;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v13;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }

  if ([(PSViewController *)self _isUndoSupportedInCurrentEnvironment])
  {
    [(PSViewController *)self resignFirstResponder];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
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
    v10 = [(PSViewController *)self viewIfLoaded];
    v11 = [v10 window];
    v12 = [(PSViewController *)self navigationController];
    v13 = [(PSViewController *)self parentViewController];
    v14 = [(PSViewController *)self parentController];
    *buf = 138545922;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = v3;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2112;
    v25 = v11;
    v26 = 2160;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v12;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v13;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Was called with { animated: %{BOOL}d, window of viewIfLoaded: %{mask.hash}@, navigationController: %{mask.hash}@, parentViewController: %{mask.hash}@, parentPreferencesController: %{mask.hash}@ }.", buf, 0x6Cu);
  }
}

- (void)addChildViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PSViewController;
  [(PSViewController *)&v8 addChildViewController:v4];
  objc_opt_class();
  v5 = v4;
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

+ (void)registerDefaultNavigationCoordinatorClass:(Class)a3
{
  if (ensureDefaultPSViewControllerNavigationCoordinatorRegistration_onceToken != -1)
  {
    [PSViewController _ensureNavigationCoordinator];
  }

  defaultPSViewControllerNavigationCoordinatorClass = a3;
}

- (void)setNavigationCoordinator:(id)a3
{
  v4 = a3;
  if (ensureDefaultPSViewControllerNavigationCoordinatorRegistration_onceToken != -1)
  {
    [PSViewController _ensureNavigationCoordinator];
  }

  navigationCoordinator = self->_navigationCoordinator;
  self->_navigationCoordinator = v4;
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