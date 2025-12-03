@interface PKPaymentSetupNavigationController
+ (id)viewControllerForPresentingPaymentError:(id)error;
- (BOOL)viewController:(id)controller requestsReturnToPresentationMarker:(unint64_t)marker reset:(BOOL)reset;
- (PKGroupsController)groupsController;
- (PKPaymentSetupDelegate)setupDelegate;
- (PKPaymentSetupNavigationController)initWithProvisioningController:(id)controller context:(int64_t)context;
- (UINavigationController)parentNavigationController;
- (int64_t)_preferredModalPresentationStyle;
- (void)_reconfigureRootViewControllerWithCompletion:(id)completion;
- (void)cancelButtonPressed:(id)pressed;
- (void)preflightWithCompletion:(id)completion;
- (void)setAllowsManualEntry:(BOOL)entry;
- (void)setPaymentSetupMode:(int64_t)mode;
- (void)viewController:(id)controller didShowProvisioningError:(id)error;
- (void)viewController:(id)controller requestPresentPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)viewControllerDidCancelSetupFlow:(id)flow;
- (void)viewControllerDidShowEligibilityIssue:(id)issue;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPaymentSetupNavigationController

- (PKPaymentSetupNavigationController)initWithProvisioningController:(id)controller context:(int64_t)context
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupNavigationController;
  v8 = [(PKPaymentSetupDismissibleNavigationController *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_provisioningController, controller);
    v9->_allowsManualEntry = 1;
    v9->_rootViewControllerNeedsConfiguration = 1;
  }

  return v9;
}

- (int64_t)_preferredModalPresentationStyle
{
  context = [(PKPaymentSetupDismissibleNavigationController *)self context];
  if (context > 0xA)
  {
    return -2;
  }

  else
  {
    return qword_1BE116D00[context];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupNavigationController;
  [(PKPaymentSetupDismissibleNavigationController *)&v3 viewDidLoad];
  PKPaymentSetupApplyContextAppearance([(PKPaymentSetupDismissibleNavigationController *)self context], self);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupNavigationController;
  [(PKPaymentSetupDismissibleNavigationController *)&v4 viewWillAppear:appear];
  [(PKPaymentSetupNavigationController *)self _reconfigureRootViewControllerWithCompletion:0];
}

- (void)_reconfigureRootViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  isMainThread = [currentThread isMainThread];

  if ((isMainThread & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"PKPaymentSetupNavigationControllerException called off main queue"];
  }

  if (self->_rootViewControllerNeedsConfiguration)
  {
    self->_rootViewControllerNeedsConfiguration = 0;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PKPaymentSetupNavigationController__reconfigureRootViewControllerWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8010B50;
    v21 = completionCopy;
    v7 = _Block_copy(aBlock);
    v8 = objc_alloc(MEMORY[0x1E69B90E0]);
    context = [(PKPaymentSetupDismissibleNavigationController *)self context];
    provisioningController = self->_provisioningController;
    WeakRetained = objc_loadWeakRetained(&self->_groupsController);
    v12 = [v8 initWithEnvironment:context provisioningController:provisioningController groupsController:WeakRetained];

    parentNavigationController = [(PKPaymentSetupNavigationController *)self parentNavigationController];
    paymentSetupMode = self->_paymentSetupMode;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__PKPaymentSetupNavigationController__reconfigureRootViewControllerWithCompletion___block_invoke_2;
    v18[3] = &unk_1E8010B50;
    v15 = v7;
    v19 = v15;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__PKPaymentSetupNavigationController__reconfigureRootViewControllerWithCompletion___block_invoke_3;
    v16[3] = &unk_1E8010998;
    objc_copyWeak(&v17, &location);
    [PKProvisioningFlowBridge startPaymentSetupFlowWithNavController:self parentNavController:parentNavigationController context:v12 mode:paymentSetupMode preflightCompletion:v18 completion:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

uint64_t __83__PKPaymentSetupNavigationController__reconfigureRootViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __83__PKPaymentSetupNavigationController__reconfigureRootViewControllerWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained viewControllerDidTerminateSetupFlow:WeakRetained];
    WeakRetained = v2;
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PKPaymentSetupNavigationController_preflightWithCompletion___block_invoke;
  v6[3] = &unk_1E8010B50;
  v7 = completionCopy;
  v5 = completionCopy;
  [(PKPaymentSetupNavigationController *)self _reconfigureRootViewControllerWithCompletion:v6];
}

uint64_t __62__PKPaymentSetupNavigationController_preflightWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)setPaymentSetupMode:(int64_t)mode
{
  if (self->_paymentSetupMode != mode)
  {
    self->_paymentSetupMode = mode;
  }
}

- (void)setAllowsManualEntry:(BOOL)entry
{
  if (self->_allowsManualEntry != entry)
  {
    self->_allowsManualEntry = entry;
    if (!self->_rootViewControllerNeedsConfiguration)
    {
      v7 = v3;
      v8 = v4;
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupNavigationController: WARNING: setAllowsManualEntry called after view configured", v6, 2u);
      }
    }
  }
}

- (void)cancelButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_setupDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
      v9 = objc_loadWeakRetained(&self->_setupDelegate);
      [v9 paymentSetupDidFinish:self withError:v8];
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_setupDelegate);
      [v8 paymentSetupDidFinish:self];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PKPaymentSetupNavigationController;
    [(PKPaymentSetupDismissibleNavigationController *)&v12 cancelButtonPressed:pressedCopy];
  }

  onDismiss = [(PKPaymentSetupDismissibleNavigationController *)self onDismiss];
  v11 = onDismiss;
  if (onDismiss)
  {
    (*(onDismiss + 16))(onDismiss);
    [(PKPaymentSetupDismissibleNavigationController *)self setOnDismiss:0];
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_setupDelegate);
    [v5 paymentSetupDidFinish:self];

    objc_storeWeak(&self->_setupDelegate, 0);
  }

  else
  {
    presentingViewController = [(PKPaymentSetupNavigationController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewController:(id)controller requestPresentPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_setupDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_setupDelegate);
      [v12 paymentSetupRequestPresentPassUniqueIdentifier:identifierCopy completion:completionCopy];
    }
  }
}

- (BOOL)viewController:(id)controller requestsReturnToPresentationMarker:(unint64_t)marker reset:(BOOL)reset
{
  if (reset)
  {
    [(PKPaymentProvisioningController *)self->_provisioningController reset];
  }

  return [(UINavigationController *)self _pk_popToViewControllerPresentationMarker:marker animated:1];
}

- (void)viewControllerDidCancelSetupFlow:(id)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_setupDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      presentingViewController = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
      v7 = objc_loadWeakRetained(&self->_setupDelegate);
      [v7 paymentSetupDidFinish:self withError:presentingViewController];
    }

    else
    {
      presentingViewController = objc_loadWeakRetained(&self->_setupDelegate);
      [presentingViewController paymentSetupDidFinish:self];
    }
  }

  else
  {
    presentingViewController = [(PKPaymentSetupNavigationController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewController:(id)controller didShowProvisioningError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  if (WeakRetained && (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->_setupDelegate), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0) && ([(PKPaymentSetupDismissibleNavigationController *)self context], !PKPaymentSetupContextIsBridge()))
  {
    v11 = objc_loadWeakRetained(&self->_setupDelegate);
    [v11 paymentSetupDidShowError:errorCopy];
  }

  else
  {
    [(PKPaymentSetupNavigationController *)self viewControllerDidTerminateSetupFlow:controllerCopy];
  }
}

- (void)viewControllerDidShowEligibilityIssue:(id)issue
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_setupDelegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_setupDelegate);
      [v8 paymentSetupDidShowEligibilityIssue];
    }
  }
}

+ (id)viewControllerForPresentingPaymentError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E69BB840]];

  if (v5)
  {
    v6 = errorCopy;
    goto LABEL_15;
  }

  v7 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa);
  v8 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpM.isa);
  domain2 = [errorCopy domain];
  v10 = [domain2 isEqualToString:*MEMORY[0x1E696A978]];

  if (v10)
  {
    localizedFailureReason2 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);

    localizedRecoverySuggestion = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
LABEL_12:
    domain4 = v8;
    v7 = localizedFailureReason2;
    v8 = localizedRecoverySuggestion;
    goto LABEL_13;
  }

  domain3 = [errorCopy domain];
  v14 = [domain3 isEqualToString:*MEMORY[0x1E69BC6F0]];

  if (v14)
  {
    code = [errorCopy code];
    if ((code - 2) >= 4 && code)
    {
      if (code != 1)
      {
        goto LABEL_14;
      }

      v21 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa);

      domain4 = v8;
      v7 = v21;
      v8 = 0;
      goto LABEL_13;
    }

    localizedFailureReason = [errorCopy localizedFailureReason];

    if (!localizedFailureReason)
    {
      goto LABEL_14;
    }

LABEL_11:
    localizedFailureReason2 = [errorCopy localizedFailureReason];

    localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
    goto LABEL_12;
  }

  domain4 = [errorCopy domain];
  if (![domain4 isEqualToString:*MEMORY[0x1E69BC300]])
  {
LABEL_13:

    goto LABEL_14;
  }

  localizedFailureReason3 = [errorCopy localizedFailureReason];

  if (localizedFailureReason3)
  {
    goto LABEL_11;
  }

LABEL_14:
  v6 = PKDisplayableErrorCustom();

LABEL_15:
  v19 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);

  return v19;
}

- (PKGroupsController)groupsController
{
  WeakRetained = objc_loadWeakRetained(&self->_groupsController);

  return WeakRetained;
}

- (PKPaymentSetupDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

- (UINavigationController)parentNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNavigationController);

  return WeakRetained;
}

@end