@interface PKPaymentSetupNavigationController
+ (id)viewControllerForPresentingPaymentError:(id)a3;
- (BOOL)viewController:(id)a3 requestsReturnToPresentationMarker:(unint64_t)a4 reset:(BOOL)a5;
- (PKGroupsController)groupsController;
- (PKPaymentSetupDelegate)setupDelegate;
- (PKPaymentSetupNavigationController)initWithProvisioningController:(id)a3 context:(int64_t)a4;
- (UINavigationController)parentNavigationController;
- (int64_t)_preferredModalPresentationStyle;
- (void)_reconfigureRootViewControllerWithCompletion:(id)a3;
- (void)cancelButtonPressed:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)setAllowsManualEntry:(BOOL)a3;
- (void)setPaymentSetupMode:(int64_t)a3;
- (void)viewController:(id)a3 didShowProvisioningError:(id)a4;
- (void)viewController:(id)a3 requestPresentPassUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)viewControllerDidCancelSetupFlow:(id)a3;
- (void)viewControllerDidShowEligibilityIssue:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPaymentSetupNavigationController

- (PKPaymentSetupNavigationController)initWithProvisioningController:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupNavigationController;
  v8 = [(PKPaymentSetupDismissibleNavigationController *)&v11 initWithContext:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_provisioningController, a3);
    v9->_allowsManualEntry = 1;
    v9->_rootViewControllerNeedsConfiguration = 1;
  }

  return v9;
}

- (int64_t)_preferredModalPresentationStyle
{
  v2 = [(PKPaymentSetupDismissibleNavigationController *)self context];
  if (v2 > 0xA)
  {
    return -2;
  }

  else
  {
    return qword_1BE116D00[v2];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupNavigationController;
  [(PKPaymentSetupDismissibleNavigationController *)&v3 viewDidLoad];
  PKPaymentSetupApplyContextAppearance([(PKPaymentSetupDismissibleNavigationController *)self context], self);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupNavigationController;
  [(PKPaymentSetupDismissibleNavigationController *)&v4 viewWillAppear:a3];
  [(PKPaymentSetupNavigationController *)self _reconfigureRootViewControllerWithCompletion:0];
}

- (void)_reconfigureRootViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 isMainThread];

  if ((v6 & 1) == 0)
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
    v21 = v4;
    v7 = _Block_copy(aBlock);
    v8 = objc_alloc(MEMORY[0x1E69B90E0]);
    v9 = [(PKPaymentSetupDismissibleNavigationController *)self context];
    provisioningController = self->_provisioningController;
    WeakRetained = objc_loadWeakRetained(&self->_groupsController);
    v12 = [v8 initWithEnvironment:v9 provisioningController:provisioningController groupsController:WeakRetained];

    v13 = [(PKPaymentSetupNavigationController *)self parentNavigationController];
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
    [PKProvisioningFlowBridge startPaymentSetupFlowWithNavController:self parentNavController:v13 context:v12 mode:paymentSetupMode preflightCompletion:v18 completion:v16];

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

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PKPaymentSetupNavigationController_preflightWithCompletion___block_invoke;
  v6[3] = &unk_1E8010B50;
  v7 = v4;
  v5 = v4;
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

- (void)setPaymentSetupMode:(int64_t)a3
{
  if (self->_paymentSetupMode != a3)
  {
    self->_paymentSetupMode = a3;
  }
}

- (void)setAllowsManualEntry:(BOOL)a3
{
  if (self->_allowsManualEntry != a3)
  {
    self->_allowsManualEntry = a3;
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

- (void)cancelButtonPressed:(id)a3
{
  v4 = a3;
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
    [(PKPaymentSetupDismissibleNavigationController *)&v12 cancelButtonPressed:v4];
  }

  v10 = [(PKPaymentSetupDismissibleNavigationController *)self onDismiss];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10);
    [(PKPaymentSetupDismissibleNavigationController *)self setOnDismiss:0];
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
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
    v6 = [(PKPaymentSetupNavigationController *)self presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewController:(id)a3 requestPresentPassUniqueIdentifier:(id)a4 completion:(id)a5
{
  v13 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_setupDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_setupDelegate);
      [v12 paymentSetupRequestPresentPassUniqueIdentifier:v13 completion:v7];
    }
  }
}

- (BOOL)viewController:(id)a3 requestsReturnToPresentationMarker:(unint64_t)a4 reset:(BOOL)a5
{
  if (a5)
  {
    [(PKPaymentProvisioningController *)self->_provisioningController reset];
  }

  return [(UINavigationController *)self _pk_popToViewControllerPresentationMarker:a4 animated:1];
}

- (void)viewControllerDidCancelSetupFlow:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_setupDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
      v7 = objc_loadWeakRetained(&self->_setupDelegate);
      [v7 paymentSetupDidFinish:self withError:v8];
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_setupDelegate);
      [v8 paymentSetupDidFinish:self];
    }
  }

  else
  {
    v8 = [(PKPaymentSetupNavigationController *)self presentingViewController];
    [v8 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewController:(id)a3 didShowProvisioningError:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  if (WeakRetained && (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->_setupDelegate), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0) && ([(PKPaymentSetupDismissibleNavigationController *)self context], !PKPaymentSetupContextIsBridge()))
  {
    v11 = objc_loadWeakRetained(&self->_setupDelegate);
    [v11 paymentSetupDidShowError:v6];
  }

  else
  {
    [(PKPaymentSetupNavigationController *)self viewControllerDidTerminateSetupFlow:v12];
  }
}

- (void)viewControllerDidShowEligibilityIssue:(id)a3
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

+ (id)viewControllerForPresentingPaymentError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69BB840]];

  if (v5)
  {
    v6 = v3;
    goto LABEL_15;
  }

  v7 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa);
  v8 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpM.isa);
  v9 = [v3 domain];
  v10 = [v9 isEqualToString:*MEMORY[0x1E696A978]];

  if (v10)
  {
    v11 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);

    v12 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
LABEL_12:
    v17 = v8;
    v7 = v11;
    v8 = v12;
    goto LABEL_13;
  }

  v13 = [v3 domain];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69BC6F0]];

  if (v14)
  {
    v15 = [v3 code];
    if ((v15 - 2) >= 4 && v15)
    {
      if (v15 != 1)
      {
        goto LABEL_14;
      }

      v21 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa);

      v17 = v8;
      v7 = v21;
      v8 = 0;
      goto LABEL_13;
    }

    v16 = [v3 localizedFailureReason];

    if (!v16)
    {
      goto LABEL_14;
    }

LABEL_11:
    v11 = [v3 localizedFailureReason];

    v12 = [v3 localizedRecoverySuggestion];
    goto LABEL_12;
  }

  v17 = [v3 domain];
  if (![v17 isEqualToString:*MEMORY[0x1E69BC300]])
  {
LABEL_13:

    goto LABEL_14;
  }

  v18 = [v3 localizedFailureReason];

  if (v18)
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