@interface VSIdentityProviderViewController
- (BOOL)currentAuthenticationViewControllerSupportsPreAuth;
- (BOOL)identityProviderRequestManager:(id)a3 requestsAlert:(id)a4;
- (VSIdentityProviderViewController)init;
- (VSIdentityProviderViewController)initWithCoder:(id)a3;
- (VSIdentityProviderViewController)initWithIdentityProvider:(id)a3;
- (VSIdentityProviderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (VSIdentityProviderViewControllerDelegate)delegate;
- (id)_logoLoadOperationForPreferredImageSize:(CGSize)a3;
- (void)_didCancel;
- (void)_dismiss;
- (void)_hideNavigationBarButtons;
- (void)_showNavigationBarButtons;
- (void)_showValidationAlertForError:(id)a3;
- (void)_showViewController:(id)a3;
- (void)_signInButtonPressed:(id)a3;
- (void)_startValidation;
- (void)_stopValidationAndShowButtons:(BOOL)a3;
- (void)dealloc;
- (void)enqueueRequest:(id)a3;
- (void)identityProviderRequestManager:(id)a3 didAuthenticateAccount:(id)a4 forRequest:(id)a5;
- (void)identityProviderRequestManager:(id)a3 didUpdateLogoViewModel:(id)a4;
- (void)identityProviderRequestManager:(id)a3 finishedRequest:(id)a4 withResult:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendErrorMessage:(id)a3;
- (void)setViewModel:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation VSIdentityProviderViewController

- (VSIdentityProviderViewController)initWithIdentityProvider:(id)a3
{
  v5 = a3;
  VSRequireMainThread();
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProvider parameter must not be nil."];
  }

  v19.receiver = self;
  v19.super_class = VSIdentityProviderViewController;
  v6 = [(VSIdentityProviderViewController *)&v19 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityProvider, a3);
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v7->_privateQueue;
    v7->_privateQueue = v8;

    [(NSOperationQueue *)v7->_privateQueue setName:@"VSIdentityProviderViewController"];
    v10 = [[VSIdentityProviderRequestManager alloc] initWithIdentityProvider:v5];
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

- (VSIdentityProviderViewController)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VSIdentityProviderViewController)initWithNibName:(id)a3 bundle:(id)a4
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

  v4 = [(VSIdentityProviderViewController *)self privateQueue];
  [v4 cancelAllOperations];

  v5.receiver = self;
  v5.super_class = VSIdentityProviderViewController;
  [(VSIdentityProviderViewController *)&v5 dealloc];
}

- (void)_signInButtonPressed:(id)a3
{
  v3 = [(VSIdentityProviderViewController *)self viewModel];
  [v3 setValidationState:1];
}

- (void)_showValidationAlertForError:(id)a3
{
  v4 = a3;
  v5 = VSErrorLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(VSIdentityProviderViewController *)v4 _showValidationAlertForError:v5];
  }

  v6 = VSAlertForError(v4, 0);
  [(VSIdentityProviderViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_startValidation
{
  [(VSIdentityProviderViewController *)self _hideNavigationBarButtons];
  v3 = [VSSpinnerTitleView alloc];
  v4 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v5 = [v4 localizedStringForKey:@"CREDENTIAL_ENTRY_VERIFYING" value:0 table:0];
  v7 = [(VSSpinnerTitleView *)v3 initWithTitle:v5];

  v6 = [(VSIdentityProviderViewController *)self navigationItem];
  [v6 setTitleView:v7];

  [(UIViewController *)self vs_beginIgnoringInteraction];
}

- (void)_stopValidationAndShowButtons:(BOOL)a3
{
  v3 = a3;
  v5 = [(VSIdentityProviderViewController *)self navigationItem];
  [v5 setTitleView:0];

  [(UIViewController *)self vs_endIgnoringInteraction];
  if (v3)
  {

    [(VSIdentityProviderViewController *)self _showNavigationBarButtons];
  }
}

- (void)_showNavigationBarButtons
{
  v11 = [(VSIdentityProviderViewController *)self navigationItem];
  v3 = [(VSIdentityProviderViewController *)self signInButtonItem];
  [v11 setRightBarButtonItem:v3];

  if ([(VSIdentityProviderViewController *)self isCancellationAllowed])
  {
    v4 = [(VSIdentityProviderViewController *)self viewModel];
    v5 = [v4 isInAuthenticationShareFlow];

    v6 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"NOT_NOW_BUTTON_TITLE";
    }

    else
    {
      v8 = @"CANCEL_TITLE";
    }

    v9 = [v6 localizedStringForKey:v8 value:0 table:0];

    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v9 style:0 target:self action:sel__cancelButtonPressed_];
    [v11 setLeftBarButtonItem:v10];
    [v11 setHidesBackButton:1];
  }

  else
  {
    [v11 setLeftBarButtonItem:0];
    [v11 setHidesBackButton:0];
  }
}

- (void)_hideNavigationBarButtons
{
  v2 = [(VSIdentityProviderViewController *)self navigationItem];
  [v2 setHidesBackButton:1];
  [v2 setLeftBarButtonItem:0];
  [v2 setRightBarButtonItem:0];
}

- (id)_logoLoadOperationForPreferredImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(VSIdentityProviderViewController *)self viewModel];
  if ([v6 conformsToProtocol:&unk_2880E88E0])
  {
    v7 = v6;
    v8 = [v7 logoProvider];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      objc_initWeak(&location, self);
      v11 = [[VSImageLoadOperation alloc] initWithItemProvider:v10 preferredImageSize:width, height];
      [(VSImageLoadOperation *)v11 setNonAppInitiated:1];
      v12 = [(VSIdentityProviderViewController *)self auditToken];
      [(VSImageLoadOperation *)v11 setAuditToken:v12];

      [(VSIdentityProviderViewController *)self setLogoLoadOperation:v11];
      v16 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v19, &location);
      v17 = v11;
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

- (void)_showViewController:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(VSIdentityProviderViewController *)self _stopValidationAndShowButtons:1];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VSIdentityProviderViewController *)self childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v10 willMoveToParentViewController:0];
        v11 = [v10 view];
        [v11 removeFromSuperview];

        [v10 removeFromParentViewController];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(VSIdentityProviderViewController *)self addChildViewController:v4];
  v12 = [v4 view];
  [v12 setAutoresizingMask:18];
  v13 = [(VSIdentityProviderViewController *)self view];
  [v13 bounds];
  [v12 setFrame:?];
  [v13 addSubview:v12];
  [v4 didMoveToParentViewController:self];
  [(UIViewController *)self vs_updateNavigationItemAndForceViewReloadWithSearchController:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_dismiss
{
  v3 = [(VSIdentityProviderViewController *)self delegate];
  [v3 dismissIdentityProviderViewController:self];
}

- (void)_didCancel
{
  v3 = [(VSIdentityProviderViewController *)self delegate];
  [v3 identityProviderViewControllerDidCancel:self];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel)
  {
    [(VSIdentityProviderViewController *)self _stopObservingViewModel:self->_viewModel];
  }

  objc_storeStrong(&self->_viewModel, a3);
  v7 = +[VSViewControllerFactory sharedFactory];
  if (v5)
  {
    v8 = v5;
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
      v15 = [v14 beginValidationButtonTitle];
      v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v15 style:0 target:self action:sel__signInButtonPressed_];
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
    v19 = [v18 forceUnwrapObject];

    [v19 setDelegate:self];
    v20 = VSMainConcurrencyBindingOptions();
    [v19 vs_bind:@"cancellationAllowed" toObject:self withKeyPath:@"cancellationAllowed" options:v20];

    objc_initWeak(&location, self);
    objc_copyWeak(&v30, &location);
    v21 = v19;
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
        v26 = [(VSIdentityProviderViewController *)self privateQueue];
        [v26 addOperation:v25];

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
      v27 = [v7 loadingViewController];
      v28 = [v27 forceUnwrapObject];

      [(VSIdentityProviderViewController *)self _showViewController:v28];
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

- (void)enqueueRequest:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderViewController *)self requestManager];
  [v5 enqueueRequest:v4];
}

- (void)sendErrorMessage:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderViewController *)self requestManager];
  [v5 sendErrorMessage:v4];
}

- (BOOL)currentAuthenticationViewControllerSupportsPreAuth
{
  v2 = [(VSIdentityProviderViewController *)self childViewControllers];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 conformsToProtocol:&unk_2881197D0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kVSKeyValueObservingContext_ViewModelValidationState != a6)
  {
    v26.receiver = self;
    v26.super_class = VSIdentityProviderViewController;
    v10 = a5;
    [(VSIdentityProviderViewController *)&v26 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];

    return;
  }

  v11 = *MEMORY[0x277CCA300];
  v12 = a5;
  v13 = [v12 objectForKey:v11];
  v14 = [v13 unsignedIntegerValue];

  v15 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];

  v16 = [v15 unsignedIntegerValue];
  if (v16 <= 1)
  {
    if (!v16)
    {
      if (v14 != 4 && v14 != 1)
      {
        return;
      }

      v22 = self;
      v23 = 1;
LABEL_30:

      [(VSIdentityProviderViewController *)v22 _stopValidationAndShowButtons:v23];
      return;
    }

    if (v16 != 1)
    {
      return;
    }
  }

  else
  {
    if (v16 != 2)
    {
      if (v16 != 3)
      {
        if (v16 == 4 && v14 == 2)
        {
          [(VSIdentityProviderViewController *)self _stopValidationAndShowButtons:1];
          v18 = MEMORY[0x277CE2298];
          v19 = [(VSIdentityProviderViewController *)self viewModel];
          v20 = [v19 error];
          v25 = [v18 optionalWithObject:v20];

          v21 = [v25 forceUnwrapObject];
          [(VSIdentityProviderViewController *)self _showValidationAlertForError:v21];
        }

        return;
      }

      if (v14 != 2)
      {
        return;
      }

      v22 = self;
      v23 = 0;
      goto LABEL_30;
    }

    if (v14)
    {
      return;
    }
  }

  [(VSIdentityProviderViewController *)self _startValidation];
}

- (void)identityProviderRequestManager:(id)a3 finishedRequest:(id)a4 withResult:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(VSIdentityProviderViewController *)self delegate];
  [v9 identityProviderViewController:self didFinishRequest:v8 withResult:v7];
}

- (void)identityProviderRequestManager:(id)a3 didAuthenticateAccount:(id)a4 forRequest:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(VSIdentityProviderViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 identityProviderViewController:self didAuthenticateAccount:v9 forRequest:v7];
  }
}

- (BOOL)identityProviderRequestManager:(id)a3 requestsAlert:(id)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  v27 = a3;
  v29 = self;
  v30 = a4;
  v6 = [(VSIdentityProviderViewController *)self currentlyPresentedIdentityProviderAlert];
  v28 = v6;
  if (v6)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
    [(VSIdentityProviderViewController *)self setCurrentlyPresentedIdentityProviderAlert:0];
  }

  v7 = MEMORY[0x277D75110];
  v8 = [v30 title];
  v9 = [v30 message];
  val = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  objc_initWeak(&location, val);
  objc_initWeak(&from, self);
  v10 = [v30 actions];
  if (![v10 count])
  {
    v11 = objc_alloc_init(VSIdentityProviderAlertAction);
    v12 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v13 = [v12 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];
    [(VSIdentityProviderAlertAction *)v11 setTitle:v13];

    [(VSIdentityProviderAlertAction *)v11 setStyle:0];
    v45[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];

    v10 = v14;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v10;
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
        v19 = [v18 style];
        v20 = MEMORY[0x277D750F8];
        v21 = [v18 title];
        if (v19 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2 * (v19 == 2);
        }

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __81__VSIdentityProviderViewController_identityProviderRequestManager_requestsAlert___block_invoke;
        v33[3] = &unk_279E196E8;
        objc_copyWeak(&v34, &from);
        objc_copyWeak(&v35, &location);
        v33[4] = v18;
        v23 = [v20 actionWithTitle:v21 style:v22 handler:v33];

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
    v43 = v30;
    _os_log_impl(&dword_270DD4000, v24, OS_LOG_TYPE_DEFAULT, "Presenting identity provider alert %@", buf, 0xCu);
  }

  [(VSIdentityProviderViewController *)v29 setCurrentlyPresentedIdentityProviderAlert:val];
  [(VSIdentityProviderViewController *)v29 presentViewController:val animated:1 completion:0];

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

- (void)identityProviderRequestManager:(id)a3 didUpdateLogoViewModel:(id)a4
{
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_2880E88E0])
  {
    [v7 preferredLogoSize];
    v5 = [(VSIdentityProviderViewController *)self _logoLoadOperationForPreferredImageSize:?];
    if (v5)
    {
      v6 = [(VSIdentityProviderViewController *)self privateQueue];
      [v6 addOperation:v5];
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