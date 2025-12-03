@interface VSIdentityProviderViewController
- (BOOL)currentAuthenticationViewControllerSupportsPreAuth;
- (BOOL)identityProviderRequestManager:(id)manager requestsAlert:(id)alert;
- (VSIdentityProviderViewController)init;
- (VSIdentityProviderViewController)initWithCoder:(id)coder;
- (VSIdentityProviderViewController)initWithIdentityProvider:(id)provider;
- (VSIdentityProviderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VSIdentityProviderViewControllerDelegate)delegate;
- (id)_logoLoadOperationForPreferredImageSize:(CGSize)size;
- (void)_didCancel;
- (void)_dismiss;
- (void)_hideNavigationBarButtons;
- (void)_showNavigationBarButtons;
- (void)_showValidationAlertForError:(id)error;
- (void)_showViewController:(id)controller;
- (void)_signInButtonPressed:(id)pressed;
- (void)_startValidation;
- (void)_stopValidationAndShowButtons:(BOOL)buttons;
- (void)dealloc;
- (void)enqueueRequest:(id)request;
- (void)identityProviderRequestManager:(id)manager didAuthenticateAccount:(id)account forRequest:(id)request;
- (void)identityProviderRequestManager:(id)manager didUpdateLogoViewModel:(id)model;
- (void)identityProviderRequestManager:(id)manager finishedRequest:(id)request withResult:(id)result;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sendErrorMessage:(id)message;
- (void)setViewModel:(id)model;
- (void)viewDidLayoutSubviews;
@end

@implementation VSIdentityProviderViewController

- (VSIdentityProviderViewController)initWithIdentityProvider:(id)provider
{
  providerCopy = provider;
  VSRequireMainThread();
  if (!providerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProvider parameter must not be nil."];
  }

  v19.receiver = self;
  v19.super_class = VSIdentityProviderViewController;
  v6 = [(VSIdentityProviderViewController *)&v19 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityProvider, provider);
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v7->_privateQueue;
    v7->_privateQueue = v8;

    [(NSOperationQueue *)v7->_privateQueue setName:@"VSIdentityProviderViewController"];
    v10 = [[VSIdentityProviderRequestManager alloc] initWithIdentityProvider:providerCopy];
    requestManager = v7->_requestManager;
    v7->_requestManager = v10;

    [(VSIdentityProviderRequestManager *)v7->_requestManager setDelegate:v7];
    v12 = v7->_requestManager;
    v13 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderViewController *)v7 vs_bind:@"viewModel" toObject:v12 withKeyPath:@"viewModel" options:v13];

    v14 = v7->_requestManager;
    v15 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderRequestManager *)v14 vs_bind:@"auditToken" toObject:v7 withKeyPath:@"auditToken" options:v15];

    v16 = v7->_requestManager;
    v17 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderRequestManager *)v16 vs_bind:@"canIssuePrivacyVouchers" toObject:v7 withKeyPath:@"canIssuePrivacyVouchers" options:v17];
  }

  return v7;
}

- (VSIdentityProviderViewController)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSIdentityProviderViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VSIdentityProviderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The %@ initializer is not available.", v7}];

  return 0;
}

- (void)dealloc
{
  VSRequireMainThread();
  v3 = self->_viewModel;
  if (v3)
  {
    [(VSIdentityProviderViewController *)self _stopObservingViewModel:v3];
  }

  privateQueue = [(VSIdentityProviderViewController *)self privateQueue];
  [privateQueue cancelAllOperations];

  v5.receiver = self;
  v5.super_class = VSIdentityProviderViewController;
  [(VSIdentityProviderViewController *)&v5 dealloc];
}

- (void)_signInButtonPressed:(id)pressed
{
  viewModel = [(VSIdentityProviderViewController *)self viewModel];
  [viewModel setValidationState:1];
}

- (void)_showValidationAlertForError:(id)error
{
  errorCopy = error;
  v5 = VSErrorLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(VSIdentityProviderViewController *)errorCopy _showValidationAlertForError:v5];
  }

  v6 = VSAlertForError(errorCopy, 0);
  [(VSIdentityProviderViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_startValidation
{
  [(VSIdentityProviderViewController *)self _hideNavigationBarButtons];
  v3 = [VSSpinnerTitleView alloc];
  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v5 = [vs_frameworkBundle localizedStringForKey:@"CREDENTIAL_ENTRY_VERIFYING" value:0 table:0];
  v7 = [(VSSpinnerTitleView *)v3 initWithTitle:v5];

  navigationItem = [(VSIdentityProviderViewController *)self navigationItem];
  [navigationItem setTitleView:v7];

  [(UIViewController *)self vs_beginIgnoringInteraction];
}

- (void)_stopValidationAndShowButtons:(BOOL)buttons
{
  buttonsCopy = buttons;
  navigationItem = [(VSIdentityProviderViewController *)self navigationItem];
  [navigationItem setTitleView:0];

  [(UIViewController *)self vs_endIgnoringInteraction];
  if (buttonsCopy)
  {

    [(VSIdentityProviderViewController *)self _showNavigationBarButtons];
  }
}

- (void)_showNavigationBarButtons
{
  navigationItem = [(VSIdentityProviderViewController *)self navigationItem];
  signInButtonItem = [(VSIdentityProviderViewController *)self signInButtonItem];
  [navigationItem setRightBarButtonItem:signInButtonItem];

  if ([(VSIdentityProviderViewController *)self isCancellationAllowed])
  {
    viewModel = [(VSIdentityProviderViewController *)self viewModel];
    isInAuthenticationShareFlow = [viewModel isInAuthenticationShareFlow];

    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v7 = vs_frameworkBundle;
    if (isInAuthenticationShareFlow)
    {
      v8 = @"NOT_NOW_BUTTON_TITLE";
    }

    else
    {
      v8 = @"CANCEL_TITLE";
    }

    v9 = [vs_frameworkBundle localizedStringForKey:v8 value:0 table:0];

    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v9 style:0 target:self action:sel__cancelButtonPressed_];
    [navigationItem setLeftBarButtonItem:v10];
    [navigationItem setHidesBackButton:1];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:0];
    [navigationItem setHidesBackButton:0];
  }
}

- (void)_hideNavigationBarButtons
{
  navigationItem = [(VSIdentityProviderViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setRightBarButtonItem:0];
}

- (id)_logoLoadOperationForPreferredImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewModel = [(VSIdentityProviderViewController *)self viewModel];
  if ([viewModel conformsToProtocol:&unk_2880E88E0])
  {
    v7 = viewModel;
    logoProvider = [v7 logoProvider];
    v9 = logoProvider;
    if (logoProvider)
    {
      v10 = logoProvider;
      objc_initWeak(&location, self);
      height = [[VSImageLoadOperation alloc] initWithItemProvider:v10 preferredImageSize:width, height];
      [(VSImageLoadOperation *)height setNonAppInitiated:1];
      auditToken = [(VSIdentityProviderViewController *)self auditToken];
      [(VSImageLoadOperation *)height setAuditToken:auditToken];

      [(VSIdentityProviderViewController *)self setLogoLoadOperation:height];
      v16 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v19, &location);
      v17 = height;
      v18 = v7;
      v13 = VSMainThreadOperationWithBlock();
      [v13 addDependency:{v17, v16, 3221225472, __76__VSIdentityProviderViewController__logoLoadOperationForPreferredImageSize___block_invoke, &unk_279E196C0}];
      VSEnqueueCompletionOperation();
      v14 = [objc_alloc(MEMORY[0x277CE2308]) initWithOperation:v17 timeout:0.3];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __76__VSIdentityProviderViewController__logoLoadOperationForPreferredImageSize___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [a1[4] result];
    v4 = [v3 forceUnwrapObject];
    v5 = [v4 object];

    [a1[5] setLogo:v5];
    [a1[5] setLogoFinishedLoading:1];

    WeakRetained = v6;
  }
}

- (void)_showViewController:(id)controller
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  [(VSIdentityProviderViewController *)self _stopValidationAndShowButtons:1];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  childViewControllers = [(VSIdentityProviderViewController *)self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(childViewControllers);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v10 willMoveToParentViewController:0];
        view = [v10 view];
        [view removeFromSuperview];

        [v10 removeFromParentViewController];
      }

      v7 = [childViewControllers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(VSIdentityProviderViewController *)self addChildViewController:controllerCopy];
  view2 = [controllerCopy view];
  [view2 setAutoresizingMask:18];
  view3 = [(VSIdentityProviderViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];
  [view3 addSubview:view2];
  [controllerCopy didMoveToParentViewController:self];
  [(UIViewController *)self vs_updateNavigationItemAndForceViewReloadWithSearchController:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_dismiss
{
  delegate = [(VSIdentityProviderViewController *)self delegate];
  [delegate dismissIdentityProviderViewController:self];
}

- (void)_didCancel
{
  delegate = [(VSIdentityProviderViewController *)self delegate];
  [delegate identityProviderViewControllerDidCancel:self];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel)
  {
    [(VSIdentityProviderViewController *)self _stopObservingViewModel:self->_viewModel];
  }

  objc_storeStrong(&self->_viewModel, model);
  v7 = +[VSViewControllerFactory sharedFactory];
  if (modelCopy)
  {
    v8 = modelCopy;
    v9 = VSMainConcurrencyBindingOptions();
    [(VSIdentityProviderViewController *)self vs_bind:@"title" toObject:v8 withKeyPath:@"title" options:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = MEMORY[0x277CBEAD8];
        v11 = *MEMORY[0x277CBE660];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        [v10 raise:v11 format:{@"Unexpectedly, viewModel was %@, instead of VSCuratedViewModel.", v13}];
      }

      v14 = v8;
      beginValidationButtonTitle = [v14 beginValidationButtonTitle];
      v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:beginValidationButtonTitle style:0 target:self action:sel__signInButtonPressed_];
      v17 = VSMainConcurrencyBindingOptions();
      [v16 vs_bind:@"enabled" toObject:v14 withKeyPath:@"beginValidationButtonEnabled" options:v17];
    }

    else
    {
      v16 = 0;
    }

    [(VSIdentityProviderViewController *)self setSignInButtonItem:v16];
    [(VSIdentityProviderViewController *)self _startObservingViewModel:v8];
    v18 = [v7 authenticationViewControllerForViewModel:v8];
    forceUnwrapObject = [v18 forceUnwrapObject];

    [forceUnwrapObject setDelegate:self];
    v20 = VSMainConcurrencyBindingOptions();
    [forceUnwrapObject vs_bind:@"cancellationAllowed" toObject:self withKeyPath:@"cancellationAllowed" options:v20];

    objc_initWeak(&location, self);
    objc_copyWeak(&v30, &location);
    v21 = forceUnwrapObject;
    v22 = VSMainThreadOperationWithBlock();
    if (objc_opt_respondsToSelector())
    {
      [v21 preferredLogoSize];
      v23 = [(VSIdentityProviderViewController *)self _logoLoadOperationForPreferredImageSize:?];
      v24 = v23;
      if (v23)
      {
        v29 = v7;
        v25 = v23;
        privateQueue = [(VSIdentityProviderViewController *)self privateQueue];
        [privateQueue addOperation:v25];

        [v22 addDependency:v25];
        v7 = v29;
      }
    }

    VSEnqueueCompletionOperation();

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    [(VSIdentityProviderViewController *)self vs_unbind:@"title"];
    if (viewModel)
    {
      [(VSIdentityProviderViewController *)self _dismiss];
    }

    else
    {
      loadingViewController = [v7 loadingViewController];
      forceUnwrapObject2 = [loadingViewController forceUnwrapObject];

      [(VSIdentityProviderViewController *)self _showViewController:forceUnwrapObject2];
    }
  }

  [(VSIdentityProviderViewController *)self _showNavigationBarButtons];
}

void __49__VSIdentityProviderViewController_setViewModel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _showViewController:*(a1 + 32)];
    v3 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 identityProviderViewControllerDidFinishLoading:*(a1 + 40)];
    }

    WeakRetained = v4;
  }
}

- (void)enqueueRequest:(id)request
{
  requestCopy = request;
  requestManager = [(VSIdentityProviderViewController *)self requestManager];
  [requestManager enqueueRequest:requestCopy];
}

- (void)sendErrorMessage:(id)message
{
  messageCopy = message;
  requestManager = [(VSIdentityProviderViewController *)self requestManager];
  [requestManager sendErrorMessage:messageCopy];
}

- (BOOL)currentAuthenticationViewControllerSupportsPreAuth
{
  childViewControllers = [(VSIdentityProviderViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  if (firstObject)
  {
    v4 = [firstObject conformsToProtocol:&unk_2881197D0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kVSKeyValueObservingContext_ViewModelValidationState != context)
  {
    v26.receiver = self;
    v26.super_class = VSIdentityProviderViewController;
    changeCopy = change;
    [(VSIdentityProviderViewController *)&v26 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];

    return;
  }

  v11 = *MEMORY[0x277CCA300];
  changeCopy2 = change;
  v13 = [changeCopy2 objectForKey:v11];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  v15 = [changeCopy2 objectForKey:*MEMORY[0x277CCA2F0]];

  unsignedIntegerValue2 = [v15 unsignedIntegerValue];
  if (unsignedIntegerValue2 <= 1)
  {
    if (!unsignedIntegerValue2)
    {
      if (unsignedIntegerValue != 4 && unsignedIntegerValue != 1)
      {
        return;
      }

      selfCopy2 = self;
      v23 = 1;
LABEL_30:

      [(VSIdentityProviderViewController *)selfCopy2 _stopValidationAndShowButtons:v23];
      return;
    }

    if (unsignedIntegerValue2 != 1)
    {
      return;
    }
  }

  else
  {
    if (unsignedIntegerValue2 != 2)
    {
      if (unsignedIntegerValue2 != 3)
      {
        if (unsignedIntegerValue2 == 4 && unsignedIntegerValue == 2)
        {
          [(VSIdentityProviderViewController *)self _stopValidationAndShowButtons:1];
          v18 = MEMORY[0x277CE2298];
          viewModel = [(VSIdentityProviderViewController *)self viewModel];
          error = [viewModel error];
          v25 = [v18 optionalWithObject:error];

          forceUnwrapObject = [v25 forceUnwrapObject];
          [(VSIdentityProviderViewController *)self _showValidationAlertForError:forceUnwrapObject];
        }

        return;
      }

      if (unsignedIntegerValue != 2)
      {
        return;
      }

      selfCopy2 = self;
      v23 = 0;
      goto LABEL_30;
    }

    if (unsignedIntegerValue)
    {
      return;
    }
  }

  [(VSIdentityProviderViewController *)self _startValidation];
}

- (void)identityProviderRequestManager:(id)manager finishedRequest:(id)request withResult:(id)result
{
  resultCopy = result;
  requestCopy = request;
  delegate = [(VSIdentityProviderViewController *)self delegate];
  [delegate identityProviderViewController:self didFinishRequest:requestCopy withResult:resultCopy];
}

- (void)identityProviderRequestManager:(id)manager didAuthenticateAccount:(id)account forRequest:(id)request
{
  accountCopy = account;
  requestCopy = request;
  delegate = [(VSIdentityProviderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate identityProviderViewController:self didAuthenticateAccount:accountCopy forRequest:requestCopy];
  }
}

- (BOOL)identityProviderRequestManager:(id)manager requestsAlert:(id)alert
{
  v45[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  selfCopy = self;
  alertCopy = alert;
  currentlyPresentedIdentityProviderAlert = [(VSIdentityProviderViewController *)self currentlyPresentedIdentityProviderAlert];
  v28 = currentlyPresentedIdentityProviderAlert;
  if (currentlyPresentedIdentityProviderAlert)
  {
    [currentlyPresentedIdentityProviderAlert dismissViewControllerAnimated:1 completion:0];
    [(VSIdentityProviderViewController *)self setCurrentlyPresentedIdentityProviderAlert:0];
  }

  v7 = MEMORY[0x277D75110];
  title = [alertCopy title];
  message = [alertCopy message];
  val = [v7 alertControllerWithTitle:title message:message preferredStyle:1];

  objc_initWeak(&location, val);
  objc_initWeak(&from, self);
  actions = [alertCopy actions];
  if (![actions count])
  {
    v11 = objc_alloc_init(VSIdentityProviderAlertAction);
    vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v13 = [vs_frameworkBundle localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];
    [(VSIdentityProviderAlertAction *)v11 setTitle:v13];

    [(VSIdentityProviderAlertAction *)v11 setStyle:0];
    v45[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];

    actions = v14;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = actions;
  v15 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v15)
  {
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        style = [v18 style];
        v20 = MEMORY[0x277D750F8];
        title2 = [v18 title];
        if (style == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2 * (style == 2);
        }

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __81__VSIdentityProviderViewController_identityProviderRequestManager_requestsAlert___block_invoke;
        v33[3] = &unk_279E196E8;
        objc_copyWeak(&v34, &from);
        objc_copyWeak(&v35, &location);
        v33[4] = v18;
        v23 = [v20 actionWithTitle:title2 style:v22 handler:v33];

        [val addAction:v23];
        objc_destroyWeak(&v35);
        objc_destroyWeak(&v34);
      }

      v15 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v15);
  }

  v24 = VSDefaultLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = alertCopy;
    _os_log_impl(&dword_270DD4000, v24, OS_LOG_TYPE_DEFAULT, "Presenting identity provider alert %@", buf, 0xCu);
  }

  [(VSIdentityProviderViewController *)selfCopy setCurrentlyPresentedIdentityProviderAlert:val];
  [(VSIdentityProviderViewController *)selfCopy presentViewController:val animated:1 completion:0];

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

void __81__VSIdentityProviderViewController_identityProviderRequestManager_requestsAlert___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained(a1 + 6);
    [v2 dismissViewControllerAnimated:1 completion:0];

    [WeakRetained setCurrentlyPresentedIdentityProviderAlert:0];
    v3 = [a1[4] callback];

    if (v3)
    {
      v4 = [a1[4] callback];
      v4[2]();
    }
  }
}

- (void)identityProviderRequestManager:(id)manager didUpdateLogoViewModel:(id)model
{
  modelCopy = model;
  if ([modelCopy conformsToProtocol:&unk_2880E88E0])
  {
    [modelCopy preferredLogoSize];
    v5 = [(VSIdentityProviderViewController *)self _logoLoadOperationForPreferredImageSize:?];
    if (v5)
    {
      privateQueue = [(VSIdentityProviderViewController *)self privateQueue];
      [privateQueue addOperation:v5];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VSIdentityProviderViewController;
  [(VSIdentityProviderViewController *)&v3 viewDidLayoutSubviews];
  [(UIViewController *)self vs_adjustContentScrollViewInsets];
}

- (VSIdentityProviderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_showValidationAlertForError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Will show validation alert for error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end