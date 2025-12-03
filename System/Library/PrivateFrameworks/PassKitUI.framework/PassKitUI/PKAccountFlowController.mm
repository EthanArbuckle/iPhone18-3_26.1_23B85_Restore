@interface PKAccountFlowController
- (BOOL)_startIngestionFlowIfNecessaryWithOnDisplay:(id)display flowCompletion:(id)completion;
- (PKAccountFlowController)init;
- (PKAccountFlowController)initWithAccountCredential:(id)credential provisioningController:(id)controller setupDelegate:(id)delegate context:(int64_t)context operations:(unint64_t)operations;
- (PKAccountFlowControllerDelegate)delegate;
- (PKAccountProvisioningController)accountProvisioningController;
- (id)firstAccountViewController;
- (unint64_t)_fitleredOperations:(unint64_t)operations account:(id)account context:(int64_t)context;
- (void)_accountProvisioningControllerRequiresNextViewController:(id)controller;
- (void)_acquireAssertion;
- (void)_checkAccountProvisioningControllerState:(id)state;
- (void)_invalidateAssertion;
- (void)_nextPostProvisioningViewControllerWithCompletion:(id)completion;
- (void)_requestPresentationOfActiviationViewControllerShowingMadeDefault:(BOOL)default;
- (void)accountProvisioningController:(id)controller displayableError:(id)error;
- (void)accountProvisioningControllerUpdatedState:(id)state;
- (void)dealloc;
- (void)makeAccountPassDefault:(BOOL)default;
- (void)nextViewControllerWithCompletion:(id)completion;
- (void)performInitalOperations;
@end

@implementation PKAccountFlowController

- (PKAccountFlowController)init
{
  v6.receiver = self;
  v6.super_class = PKAccountFlowController;
  v2 = [(PKAccountFlowController *)&v6 init];
  if (v2)
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v2->_accountService;
    v2->_accountService = mEMORY[0x1E69B8400];
  }

  return v2;
}

- (PKAccountFlowController)initWithAccountCredential:(id)credential provisioningController:(id)controller setupDelegate:(id)delegate context:(int64_t)context operations:(unint64_t)operations
{
  credentialCopy = credential;
  controllerCopy = controller;
  delegateCopy = delegate;
  v16 = [(PKAccountFlowController *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_setupDelegate, delegateCopy);
    objc_storeStrong(&v17->_accountCredential, credential);
    account = [(PKAccountCredential *)v17->_accountCredential account];
    account = v17->_account;
    v17->_account = account;

    objc_storeStrong(&v17->_provisioningController, controller);
    v17->_context = context;
    v17->_isMerchantApp = PKPaymentSetupContextIsMerchantApp();
    v17->_operations = [(PKAccountFlowController *)v17 _fitleredOperations:operations account:v17->_account context:v17->_context];
  }

  return v17;
}

- (void)dealloc
{
  [(PKAccountFlowController *)self _invalidateAssertion];
  v3.receiver = self;
  v3.super_class = PKAccountFlowController;
  [(PKAccountFlowController *)&v3 dealloc];
}

- (unint64_t)_fitleredOperations:(unint64_t)operations account:(id)account context:(int64_t)context
{
  state = [account state];
  if (((state < 6) & (0x3Du >> state)) != 0)
  {
    operations = 1;
  }

  if ((PKPaymentSetupContextIsBridge() & 1) != 0 || !PKIsPairedWithWatch())
  {
    operations &= ~2uLL;
  }

  return operations;
}

- (id)firstAccountViewController
{
  if ((self->_operations | 2) == 3)
  {
    v3 = [PKAccountPassActivationResultViewController alloc];
    context = self->_context;
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    v6 = [(PKAccountPassActivationResultViewController *)v3 initWithAccountFlowController:self context:context setupDelegate:WeakRetained];

    [(PKAccountPassActivationResultViewController *)v6 setShowingLoadingIndicator:1];
    [(PKAccountPassActivationResultViewController *)v6 setDidMakeAccountPassDefault:0];
  }

  else
  {
    v7 = [PKAccountPassMakeDefaultViewContoller alloc];
    v8 = self->_context;
    v9 = objc_loadWeakRetained(&self->_setupDelegate);
    v6 = [(PKAccountPassMakeDefaultViewContoller *)v7 initWithAccountFlowController:self context:v8 setupDelegate:v9];
  }

  objc_storeWeak(&self->_delegate, v6);

  return v6;
}

- (void)nextViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKAccountFlowController_nextViewControllerWithCompletion___block_invoke;
    v6[3] = &unk_1E8011E10;
    v6[4] = self;
    v7 = completionCopy;
    [(PKAccountFlowController *)self _nextPostProvisioningViewControllerWithCompletion:v6];
  }
}

void __60__PKAccountFlowController_nextViewControllerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(a1 + 32);
    if (*(v5 + 112))
    {
      [*(v5 + 104) resetForNewProvisioning];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(v7 + 112);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__PKAccountFlowController_nextViewControllerWithCompletion___block_invoke_2;
      v9[3] = &unk_1E8010CC0;
      v9[4] = v7;
      v10 = v6;
      [v8 nextViewControllerWithCompletion:v9];

      goto LABEL_6;
    }

    [v5 _invalidateAssertion];
    v4 = *(*(a1 + 40) + 16);
  }

  v4();
LABEL_6:
}

void __60__PKAccountFlowController_nextViewControllerWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 _invalidateAssertion];
  (*(*(a1 + 40) + 16))();

  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  *(v8 + 112) = 0;
}

- (void)performInitalOperations
{
  [(PKAccountFlowController *)self _acquireAssertion];
  accountProvisioningController = [(PKAccountFlowController *)self accountProvisioningController];
  if (self->_operations)
  {
    v4 = accountProvisioningController;
    [accountProvisioningController provisionAccountPassToLocalDevice];
    accountProvisioningController = v4;
  }
}

- (void)makeAccountPassDefault:(BOOL)default
{
  defaultCopy = default;
  v5 = 1;
  if (!default)
  {
    v5 = 2;
  }

  self->_madeDefault = v5;
  accountProvisioningController = [(PKAccountFlowController *)self accountProvisioningController];
  if (defaultCopy)
  {
    operations = self->_operations;
    if ((operations & 8) != 0)
    {
      [accountProvisioningController addToIDMS];
      operations = self->_operations;
    }

    if ((operations & 4) != 0)
    {
      [accountProvisioningController makeAccountPassDefaultOnLocalDevice];
    }
  }

  v7 = self->_operations;
  if ((v7 & 2) != 0)
  {
    [accountProvisioningController provisionAccountPassToWatchAsDefault:defaultCopy];
    v7 = self->_operations;
  }

  if ((v7 & 0x10) != 0)
  {
    [accountProvisioningController performAMPEnrollmentShouldEnroll:defaultCopy shouldMakeDefault:defaultCopy];
  }

  [(PKAccountFlowController *)self _requestPresentationOfActiviationViewControllerShowingMadeDefault:defaultCopy];
}

- (void)accountProvisioningControllerUpdatedState:(id)state
{
  accountProvisioningController = self->_accountProvisioningController;
  if (accountProvisioningController)
  {
    v5 = accountProvisioningController == state;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(PKAccountFlowController *)self _checkAccountProvisioningControllerState:?];
  }
}

- (void)accountProvisioningController:(id)controller displayableError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  accountProvisioningController = self->_accountProvisioningController;
  if (accountProvisioningController)
  {
    v8 = accountProvisioningController == controllerCopy;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (errorCopy)
    {
      v9 = errorCopy;
    }

    else
    {
      v9 = [objc_opt_class() displayableErrorForError:0 featureIdentifier:-[PKAccount feature](self->_account genericErrorTitle:"feature") genericErrorMessage:{0, 0}];
    }

    v10 = v9;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 accountFlowController:self requestsPresentationOfDisplayableError:v10];
    }
  }
}

- (void)_checkAccountProvisioningControllerState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if ((self->_operations & 1) != 0 && [stateCopy provisionLocalPassState] != 3)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v8 = "Local device provisioning is still running. Ignoring update";
      v9 = &v15;
      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (self->_isMerchantApp && (self->_operations & 1) != 0 && [v5 localPassActivationState] != 3)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v8 = "Local device pass still activating. Ignoring update";
      v9 = &v14;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  madeDefault = self->_madeDefault;
  if (madeDefault == 1)
  {
    if ((self->_operations & 4) != 0 && [v5 makeAccountPassDefaultOnLocalDeviceState] != 3)
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v8 = "Card has not been made default on local device yet. Ignoring update";
        v9 = &v12;
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (self->_isMerchantApp && (self->_operations & 8) != 0 && [v5 addToIDMSState] != 3)
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Card has not been added to IDMS. Ignoring update";
        v9 = buf;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if (!madeDefault && (self->_operations & 0x1C) != 0)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v8 = "User default choice not made yet. Ignoring update";
      v9 = &v13;
LABEL_29:
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if ((self->_operations & 0x10) != 0 && [v5 addToAMPState] != 3)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "Card has not been added to AMP. Ignoring update";
      v9 = &v10;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  [(PKAccountFlowController *)self _accountProvisioningControllerRequiresNextViewController:v5];
LABEL_31:
}

- (void)_accountProvisioningControllerRequiresNextViewController:(id)controller
{
  [controller setDelegate:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__PKAccountFlowController__accountProvisioningControllerRequiresNextViewController___block_invoke;
    v6[3] = &unk_1E801CDE0;
    v7 = WeakRetained;
    selfCopy = self;
    [(PKAccountFlowController *)self nextViewControllerWithCompletion:v6];
  }
}

uint64_t __84__PKAccountFlowController__accountProvisioningControllerRequiresNextViewController___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    return [v5 accountFlowController:v6 requestsPresentationOfDisplayableError:?];
  }

  else
  {
    return [v5 accountFlowController:v6 requestsPresentationOfViewController:a2];
  }
}

- (void)_requestPresentationOfActiviationViewControllerShowingMadeDefault:(BOOL)default
{
  defaultCopy = default;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v6 = [PKAccountPassActivationResultViewController alloc];
    context = self->_context;
    v8 = objc_loadWeakRetained(&self->_setupDelegate);
    v9 = [(PKAccountPassActivationResultViewController *)v6 initWithAccountFlowController:self context:context setupDelegate:v8];

    accountProvisioningController = [(PKAccountFlowController *)self accountProvisioningController];
    v11 = [accountProvisioningController provisionLocalPassState] != 3 || objc_msgSend(accountProvisioningController, "makeAccountPassDefaultOnLocalDeviceState") != 3 || objc_msgSend(accountProvisioningController, "addToAMPState") != 3 || objc_msgSend(accountProvisioningController, "addToIDMSState") != 3;
    [(PKAccountPassActivationResultViewController *)v9 setShowingLoadingIndicator:v11];
    [(PKAccountPassActivationResultViewController *)v9 setDidMakeAccountPassDefault:defaultCopy];
    -[PKAccountPassActivationResultViewController setDidAddToAmp:](v9, "setDidAddToAmp:", [accountProvisioningController didAddToAMP]);
    objc_storeWeak(&self->_delegate, v9);
    [v12 accountFlowController:self requestsPresentationOfViewController:v9];

    WeakRetained = v12;
  }
}

- (PKAccountProvisioningController)accountProvisioningController
{
  accountProvisioningController = self->_accountProvisioningController;
  if (!accountProvisioningController)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B83D0]) initWithAccountCredential:self->_accountCredential provisioningController:self->_provisioningController usingRemoteLibrary:PKPaymentSetupContextIsBridge()];
    v5 = self->_accountProvisioningController;
    self->_accountProvisioningController = v4;

    [(PKAccountProvisioningController *)self->_accountProvisioningController setDelegate:self];
    v6 = 120.0;
    if (self->_isMerchantApp)
    {
      v6 = 30.0;
    }

    [(PKAccountProvisioningController *)self->_accountProvisioningController setPassActivationTimeout:v6];
    paymentPass = [(PKAccountCredential *)self->_accountCredential paymentPass];
    if ([(PKAccount *)self->_account state]== 1)
    {
      devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];

      if (devicePrimaryPaymentApplication)
      {
        v9 = self->_accountProvisioningController;
        uniqueID = [paymentPass uniqueID];
        [(PKAccountProvisioningController *)v9 setProvisionedPassUniqueID:uniqueID];
      }
    }

    accountProvisioningController = self->_accountProvisioningController;
  }

  return accountProvisioningController;
}

- (BOOL)_startIngestionFlowIfNecessaryWithOnDisplay:(id)display flowCompletion:(id)completion
{
  displayCopy = display;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_startedIngestionFlow)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  v9 = 0;
  self->_startedIngestionFlow = 1;
  if (displayCopy && completionCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:self->_context provisioningController:self->_provisioningController groupsController:0];
      v14 = objc_loadWeakRetained(&self->_delegate);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __86__PKAccountFlowController__startIngestionFlowIfNecessaryWithOnDisplay_flowCompletion___block_invoke;
      v16[3] = &unk_1E801CE08;
      v17 = v13;
      selfCopy = self;
      v19 = displayCopy;
      v20 = v8;
      v15 = v13;
      [v14 accountFlowController:self requestsNavigationControllerWithOnDisplay:v16];

      v9 = 1;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:

  return v9;
}

void __86__PKAccountFlowController__startIngestionFlowIfNecessaryWithOnDisplay_flowCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 96);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PKAccountFlowController__startIngestionFlowIfNecessaryWithOnDisplay_flowCompletion___block_invoke_2;
  v11[3] = &unk_1E8010E20;
  v13 = *(a1 + 48);
  v12 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PKAccountFlowController__startIngestionFlowIfNecessaryWithOnDisplay_flowCompletion___block_invoke_3;
  v8[3] = &unk_1E8010E20;
  v6 = *(a1 + 56);
  v9 = v12;
  v10 = v6;
  v7 = v12;
  [PKProvisioningFlowBridge startIngestionFlowWithUnownedNavController:v7 context:v4 credential:v5 onFirstViewControllerShown:v11 completion:v8];
}

- (void)_nextPostProvisioningViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke;
    aBlock[3] = &unk_1E801CE58;
    objc_copyWeak(&v38, location);
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    provisionedPasses = [(PKPaymentProvisioningController *)self->_provisioningController provisionedPasses];
    if ([provisionedPasses count])
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_3;
      v35[3] = &unk_1E801CE80;
      v36 = v5;
      v7 = [(PKAccountFlowController *)self _startIngestionFlowIfNecessaryWithOnDisplay:completionCopy flowCompletion:v35];

      if (v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    if (self->_endedProvisioningFlow)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        completionCopy[2](completionCopy, 0);
LABEL_35:

        objc_destroyWeak(&v38);
        objc_destroyWeak(location);
        goto LABEL_36;
      }

      LOWORD(buf[0]) = 0;
      v9 = "Skipping account pass post provisioning content as provisoning ended";
LABEL_9:
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_10;
    }

    context = self->_context;
    if (context > 8 || ((1 << context) & 0x109) == 0)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(buf[0]) = 0;
      v9 = "Skipping account pass post provisioning content for the current context";
      goto LABEL_9;
    }

    passDetailsResponse = [(PKAccountCredential *)self->_accountCredential passDetailsResponse];
    postProvisioningContent = [passDetailsResponse postProvisioningContent];

    postProvisoningContentIndex = self->_postProvisoningContentIndex;
    if (postProvisoningContentIndex >= [postProvisioningContent count])
    {
      completionCopy[2](completionCopy, 0);
LABEL_34:

      goto LABEL_35;
    }

    ++self->_postProvisoningContentIndex;
    v14 = [postProvisioningContent objectAtIndex:?];
    v15 = v14;
    if (!v14)
    {
      completionCopy[2](completionCopy, 0);
      goto LABEL_33;
    }

    type = [v14 type];
    if (type >= 2)
    {
      if (type == 2)
      {
        provisionedPasses2 = [(PKPaymentProvisioningController *)self->_provisioningController provisionedPasses];
        lastObject = [provisionedPasses2 lastObject];
        secureElementPass = [lastObject secureElementPass];
        paymentPass = [secureElementPass paymentPass];

        if ([PKEducationViewController shouldPresentForPass:paymentPass inEducationContext:0])
        {
          PKSetHasSeenApplePayEducation();
          v24 = [[PKEducationViewController alloc] initWithPaymentPass:paymentPass setupContext:self->_context educationContext:0];
          [(PKAccount *)self->_account feature];
          v25 = PKLocalizedFeatureString();
          [(PKEducationViewController *)v24 setTitleOverride:v25];

          v26 = PKLocalizedFeatureString();
          [(PKEducationViewController *)v24 setBodyAddition:v26];

          objc_initWeak(buf, v24);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_91;
          v28[3] = &unk_1E801CED0;
          v29 = v5;
          objc_copyWeak(&v30, buf);
          [(PKEducationViewController *)v24 setContinueHandler:v28];
          (completionCopy)[2](completionCopy, v24);
          objc_destroyWeak(&v30);

          objc_destroyWeak(buf);
        }

        else
        {
          [(PKAccountFlowController *)self _nextPostProvisioningViewControllerWithCompletion:completionCopy];
        }

        goto LABEL_33;
      }

      if (type != 3)
      {
LABEL_33:

        goto LABEL_34;
      }

      v17 = self->_context;
      if (v17 <= 8 && ((1 << v17) & 0x109) != 0)
      {
        accountService = self->_accountService;
        accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_78;
        v32[3] = &unk_1E8014A08;
        v32[4] = self;
        v34 = completionCopy;
        v33 = v15;
        [(PKAccountService *)accountService physicalCardsForAccountWithIdentifier:accountIdentifier completion:v32];

        goto LABEL_33;
      }

      v27 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Limiting Physical card ordering from appearing because of current context", buf, 2u);
      }
    }

    [(PKAccountFlowController *)self _nextPostProvisioningViewControllerWithCompletion:completionCopy];
    goto LABEL_33;
  }

LABEL_36:
}

void __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
    }

    else
    {
      v5 = [v3 navigationController];
    }

    v6 = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_2;
    v9[3] = &unk_1E801CE30;
    v7 = *(a1 + 32);
    v10 = v5;
    v11 = v7;
    v12 = WeakRetained;
    v13 = v3;
    v8 = v6;
    [WeakRetained nextViewControllerWithCompletion:v9];
  }
}

void __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);

    [v4 pk_presentPaymentSetupViewController:a2 animated:1 completion:0];
  }

  else
  {
    v5 = PKAlertForDisplayableErrorWithHandlers(a3, 0, 0, 0);
    v8 = v5;
    if (v5)
    {
      [*(a1 + 32) pk_presentPaymentSetupViewController:v5 animated:1 completion:0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained((*(a1 + 48) + 24));
        [v7 viewControllerDidTerminateSetupFlow:*(a1 + 56)];
      }

      else
      {
        [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

void __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_2_79;
  v5[3] = &unk_1E8014760;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_2_79(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) provisionedPasses];
  v3 = [v2 lastObject];
  v4 = [v3 secureElementPass];
  v5 = [v4 paymentPass];

  v6 = [[PKPhysicalCardController alloc] initWithAccountService:*(*(a1 + 32) + 40) paymentPass:v5 account:*(*(a1 + 32) + 16) accountUser:0 physicalCards:*(a1 + 40)];
  if ([(PKPhysicalCardController *)v6 canRequestNewPhysicalCard])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [(PKPhysicalCardController *)v6 setSetupDelegate:WeakRetained];

    [(PKPhysicalCardController *)v6 setParentFlowController:*(a1 + 32)];
    v8 = *(*(a1 + 32) + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_81;
    v12[3] = &unk_1E801CEA8;
    v13 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v16 = v9;
    v14 = v10;
    v15 = v6;
    [(PKPhysicalCardController *)v15 orderFlowViewControllerForReason:0 content:v8 completion:v12];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Skipping physical card order flow - user already has one", buf, 2u);
    }

    [*(a1 + 32) _nextPostProvisioningViewControllerWithCompletion:*(a1 + 56)];
  }
}

void __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) title];
    [v5 setTitleOverride:v7];

    v8 = [*(a1 + 32) body];
    [v5 setBodyOverride:v8];

    v9 = [*(a1 + 32) primaryButtonTitle];
    [v5 setPrimaryButtonTitleOverride:v9];

    v10 = [*(a1 + 32) secondaryButtonTitle];
    [v5 setSecondaryButtonTitleOverride:v10];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Skipping physical card order flow - error: %@", &v12, 0xCu);
    }

    [*(a1 + 40) _nextPostProvisioningViewControllerWithCompletion:*(a1 + 56)];
  }
}

void __77__PKAccountFlowController__nextPostProvisioningViewControllerWithCompletion___block_invoke_91(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

- (void)_acquireAssertion
{
  notificationSupressionAssertion = self->_notificationSupressionAssertion;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (notificationSupressionAssertion)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Notification suppression assertion already acquired", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Acquiring notification suppression assertion", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6 = MEMORY[0x1E69B8650];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__PKAccountFlowController__acquireAssertion__block_invoke;
    v7[3] = &unk_1E801B258;
    objc_copyWeak(&v8, buf);
    [v6 acquireAssertionOfType:4 withReason:@"Account Pass Provisioning" completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __44__PKAccountFlowController__acquireAssertion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = PKLogFacilityTypeGetObject();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (!v6 || v7)
    {
      if (v10)
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Error acquiring notification suppression assertion: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Acquired notification suppression assertion", buf, 2u);
      }

      objc_storeStrong(WeakRetained + 9, a2);
      [WeakRetained[9] setInvalidateWhenBackgrounded:0];
      v11 = WeakRetained[9];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__PKAccountFlowController__acquireAssertion__block_invoke_97;
      v12[3] = &unk_1E8010998;
      objc_copyWeak(&v13, (a1 + 32));
      [v11 setInvalidationHandler:v12];
      objc_destroyWeak(&v13);
    }
  }
}

void __44__PKAccountFlowController__acquireAssertion__block_invoke_97(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Executing notification suppression assertion invalidation handler", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;
  }
}

- (void)_invalidateAssertion
{
  if (self->_notificationSupressionAssertion)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating notification suppression assertion", v4, 2u);
    }

    [(PKAssertion *)self->_notificationSupressionAssertion invalidate];
  }
}

- (PKAccountFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end