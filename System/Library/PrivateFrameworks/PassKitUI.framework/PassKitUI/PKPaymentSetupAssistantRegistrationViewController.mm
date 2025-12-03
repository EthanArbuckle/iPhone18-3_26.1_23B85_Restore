@interface PKPaymentSetupAssistantRegistrationViewController
+ (id)defaultWebServiceForContext:(int64_t)context;
- (PKPaymentSetupAssistantRegistrationViewController)initWithPaymentWebService:(id)service context:(int64_t)context delegate:(id)delegate;
- (void)_setUserInteractionEnabled:(BOOL)enabled;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupAssistantRegistrationViewController

+ (id)defaultWebServiceForContext:(int64_t)context
{
  if (PKPaymentSetupContextIsBridge())
  {
    v3 = objc_alloc_init(getNPKCompanionAgentConnectionClass[0]());
    watchPaymentWebService = [v3 watchPaymentWebService];
  }

  else
  {
    watchPaymentWebService = [MEMORY[0x1E69B8EF8] sharedService];
  }

  return watchPaymentWebService;
}

- (PKPaymentSetupAssistantRegistrationViewController)initWithPaymentWebService:(id)service context:(int64_t)context delegate:(id)delegate
{
  v8 = MEMORY[0x1E69B8D48];
  delegateCopy = delegate;
  serviceCopy = service;
  v11 = [[v8 alloc] initWithWebService:serviceCopy];

  v12 = [[PKPaymentSetupAssistantDelegateProxy alloc] initWithDelegate:delegateCopy provisioningController:v11];
  v17.receiver = self;
  v17.super_class = PKPaymentSetupAssistantRegistrationViewController;
  v13 = [(PKPaymentSetupHeroViewController *)&v17 initWithProvisioningController:v11 context:context delegate:v12 product:0 selectedMethod:0 allowsManualEntry:0];
  v14 = v13;
  if (v13)
  {
    navigationItem = [(PKPaymentSetupAssistantRegistrationViewController *)v13 navigationItem];
    [navigationItem setLeftBarButtonItem:0];

    objc_storeStrong(&v14->_delegateProxy, v12);
  }

  return v14;
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (completionCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupAssistantRegistrationViewController starting preflight", buf, 2u);
    }

    [(PKExplanationViewController *)self context];
    IsBridge = PKPaymentSetupContextIsBridge();
    setupAssistantCoreController = self->_setupAssistantCoreController;
    if (!setupAssistantCoreController)
    {
      if (IsBridge)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v10 = objc_alloc(MEMORY[0x1E69B8DC8]);
      v11 = [[PKSetupAssistantContext alloc] initWithSetupAssistant:v9];
      v12 = [v10 initWithSetupAssistantContext:v11];
      v13 = self->_setupAssistantCoreController;
      self->_setupAssistantCoreController = v12;

      setupAssistantCoreController = self->_setupAssistantCoreController;
    }

    provisioningController = [(PKPaymentSetupHeroViewController *)self provisioningController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PKPaymentSetupAssistantRegistrationViewController_preflightWithCompletion___block_invoke;
    v15[3] = &unk_1E80120F0;
    v16 = completionCopy;
    [(PKPaymentSetupAssistantCoreController *)setupAssistantCoreController _preflightPaymentSetupProvisioningController:provisioningController completion:v15];

    v5 = v16;
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupAssistantRegistrationViewController exiting no completion for preflight", buf, 2u);
  }
}

void __77__PKPaymentSetupAssistantRegistrationViewController_preflightWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__PKPaymentSetupAssistantRegistrationViewController_preflightWithCompletion___block_invoke_2;
  v3[3] = &unk_1E8010FA8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PKPaymentSetupAssistantRegistrationViewController;
  [(PKPaymentSetupHeroViewController *)&v2 viewDidLoad];
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA020], 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupAssistantRegistrationViewController;
  [(PKPaymentSetupHeroViewController *)&v5 viewDidAppear:appear];
  delegate = [(PKPaymentSetupHeroViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate viewControllerDidBeginSetupFlow:self];
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  [(PKPaymentSetupAssistantRegistrationViewController *)self _setUserInteractionEnabled:0];
  v5 = objc_alloc(MEMORY[0x1E69B90E0]);
  context = [(PKExplanationViewController *)self context];
  provisioningController = [(PKPaymentSetupHeroViewController *)self provisioningController];
  v8 = [v5 initWithEnvironment:context provisioningController:provisioningController groupsController:0];

  [v8 setIsFollowupSetupAssistant:1];
  objc_initWeak(&location, self);
  navigationController = [(PKPaymentSetupAssistantRegistrationViewController *)self navigationController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__PKPaymentSetupAssistantRegistrationViewController_explanationViewDidSelectContinue___block_invoke;
  v12[3] = &unk_1E8010998;
  objc_copyWeak(&v13, &location);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__PKPaymentSetupAssistantRegistrationViewController_explanationViewDidSelectContinue___block_invoke_2;
  v10[3] = &unk_1E8010998;
  objc_copyWeak(&v11, &location);
  [PKProvisioningFlowBridge startSetupAssistantFollowupFlowWithUnownedNavController:navigationController context:v8 preflightCompletion:v12 completion:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __86__PKPaymentSetupAssistantRegistrationViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setUserInteractionEnabled:0];
}

void __86__PKPaymentSetupAssistantRegistrationViewController_explanationViewDidSelectContinue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 viewControllerDidTerminateSetupFlow:v3];

    WeakRetained = v3;
  }
}

- (void)_setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  view = [(PKPaymentSetupAssistantRegistrationViewController *)self view];
  [view setUserInteractionEnabled:enabledCopy];

  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];

  [dockView setButtonsEnabled:enabledCopy];
  primaryButton = [dockView primaryButton];
  [primaryButton setShowSpinner:enabledCopy ^ 1];
}

@end