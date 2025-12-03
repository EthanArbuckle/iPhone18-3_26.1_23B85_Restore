@interface PKPhysicalCardManualActivationViewController
- (PKPhysicalCardManualActivationViewController)initWithAccountService:(id)service account:(id)account accountUser:(id)user paymentPass:(id)pass physicalCard:(id)card activationCode:(id)code;
- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)controller;
- (void)_presentDisplayableError:(id)error;
- (void)_setupForCurrentState;
- (void)_showSpinner:(BOOL)spinner;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)physicalCardActionController:(id)controller didChangeToState:(int64_t)state withError:(id)error;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPhysicalCardManualActivationViewController

- (PKPhysicalCardManualActivationViewController)initWithAccountService:(id)service account:(id)account accountUser:(id)user paymentPass:(id)pass physicalCard:(id)card activationCode:(id)code
{
  serviceCopy = service;
  accountCopy = account;
  userCopy = user;
  passCopy = pass;
  cardCopy = card;
  codeCopy = code;
  v27.receiver = self;
  v27.super_class = PKPhysicalCardManualActivationViewController;
  v20 = [(PKExplanationViewController *)&v27 initWithContext:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_physicalCard, card);
    v22 = [[PKPhysicalCardActionController alloc] initWithAccountService:serviceCopy account:accountCopy accountUser:userCopy delegate:v21];
    actionController = v21->_actionController;
    v21->_actionController = v22;

    v21->_feature = [accountCopy feature];
    objc_storeStrong(&v21->_paymentPass, pass);
    v24 = [codeCopy copy];
    activationCode = v21->_activationCode;
    v21->_activationCode = v24;

    v21->_businessChatSupported = +[PKBusinessChatController deviceSupportsBusinessChat];
    [(PKExplanationViewController *)v21 setShowCancelButton:1];
    [(PKExplanationViewController *)v21 setShowDoneButton:0];
  }

  return v21;
}

- (void)dealloc
{
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v4 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = PKPhysicalCardManualActivationViewController;
  [(PKPhysicalCardManualActivationViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKPhysicalCardManualActivationViewController;
  [(PKExplanationViewController *)&v9 viewDidLoad];
  navigationItem = [(PKPhysicalCardManualActivationViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  v4 = objc_alloc_init(PKOrderPhysicalCardHeroView);
  hero = self->_hero;
  self->_hero = v4;

  artworkView = [(PKOrderPhysicalCardHeroView *)self->_hero artworkView];
  nameOnCard = [(PKPhysicalCard *)self->_physicalCard nameOnCard];
  [artworkView setNameOnCard:nameOnCard];

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowPrivacyView:0];
  [explanationView setHeroView:self->_hero];
  [explanationView setImageIgnoresTopSafeArea:1];
  [(PKPhysicalCardManualActivationViewController *)self _setupForCurrentState];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKPhysicalCardManualActivationViewController;
  [(PKPhysicalCardManualActivationViewController *)&v6 viewWillAppear:appear];
  if (!self->_sharingClient)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CDE40]);
    sharingClient = self->_sharingClient;
    self->_sharingClient = v4;

    [(SFClient *)self->_sharingClient activateAssertionWithIdentifier:@"com.apple.sharing.PreventAppleCardActivation"];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = PKPhysicalCardManualActivationViewController;
  [(PKPhysicalCardManualActivationViewController *)&v8 viewWillDisappear:disappear];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  sharingClient = self->_sharingClient;
  if (sharingClient)
  {
    [(SFClient *)sharingClient invalidate];
    v7 = self->_sharingClient;
    self->_sharingClient = 0;
  }
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  if (PKDeviceSupportsReaderMode())
  {
    v4 = 4;
  }

  else
  {
    v4 = 6;
  }

  v5 = [[PKBusinessChatPhysicalCardContext alloc] initWithPaymentPass:self->_paymentPass intent:v4];
  if (!self->_businessChatController)
  {
    v6 = objc_alloc_init(PKBusinessChatController);
    businessChatController = self->_businessChatController;
    self->_businessChatController = v6;
  }

  [(PKPhysicalCardManualActivationViewController *)self _showSpinner:1];
  v8 = self->_businessChatController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PKPhysicalCardManualActivationViewController_explanationViewDidSelectSetupLater___block_invoke;
  v9[3] = &unk_1E8013908;
  v9[4] = self;
  [(PKBusinessChatController *)v8 openBusinessChatWithContext:v5 completion:v9];
}

void __83__PKPhysicalCardManualActivationViewController_explanationViewDidSelectSetupLater___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__PKPhysicalCardManualActivationViewController_explanationViewDidSelectSetupLater___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __83__PKPhysicalCardManualActivationViewController_explanationViewDidSelectSetupLater___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showSpinner:0];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {

    return [v2 _presentDisplayableError:?];
  }

  else
  {

    return [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  state = self->_state;
  if (state == 2)
  {
    v12 = continueCopy;
    [(PKPhysicalCardManualActivationViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if (state)
    {
      goto LABEL_10;
    }

    v12 = continueCopy;
    if (!self->_inUseAssertion)
    {
      v6 = MEMORY[0x1E695FBE0];
      v7 = PKPassKitCoreBundle();
      v8 = [v6 newAssertionForBundle:v7 withReason:@"Activating physical card"];
      inUseAssertion = self->_inUseAssertion;
      self->_inUseAssertion = v8;
    }

    actionController = self->_actionController;
    physicalCard = self->_physicalCard;
    if (self->_activationCode)
    {
      [(PKPhysicalCardActionController *)actionController activatePhysicalCard:physicalCard withActivationCode:?];
    }

    else
    {
      [(PKPhysicalCardActionController *)actionController activatePhysicalCardWithoutActivationCode:physicalCard];
    }
  }

  continueCopy = v12;
LABEL_10:
}

- (void)physicalCardActionController:(id)controller didChangeToState:(int64_t)state withError:(id)error
{
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPhysicalCardManualActivationViewController_physicalCardActionController_didChangeToState_withError___block_invoke;
  block[3] = &unk_1E8012C50;
  v10 = errorCopy;
  stateCopy = state;
  block[4] = self;
  v8 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__PKPhysicalCardManualActivationViewController_physicalCardActionController_didChangeToState_withError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 <= 1)
  {
    if (!v2)
    {
      *(*(a1 + 32) + 1128) = 0;
LABEL_15:
      v6 = *(a1 + 32);

      [v6 _setupForCurrentState];
      return;
    }

    if (v2 != 1)
    {
      return;
    }

    v3 = *(a1 + 32);
    v4 = 1;
LABEL_14:
    *(v3 + 1128) = v4;
    goto LABEL_15;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 32);
    v4 = 2;
    goto LABEL_14;
  }

  if (v2 == 3)
  {
    *(*(a1 + 32) + 1128) = 0;
    [*(a1 + 32) _setupForCurrentState];
    v5 = *(a1 + 40);
    if (v5)
    {
      v7 = [PKAccountFlowController displayableErrorForError:v5 featureIdentifier:*(*(a1 + 32) + 1104) genericErrorTitle:0 genericErrorMessage:0];
      [*(a1 + 32) _presentDisplayableError:v7];
    }
  }
}

- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)controller
{
  view = [(PKPhysicalCardManualActivationViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)_setupForCurrentState
{
  state = self->_state;
  if (state == 2)
  {
    v17 = PKLocalizedFeatureString();
    v4 = PKLocalizedFeatureString();
    v5 = PKLocalizedFeatureString();
    v6 = PKLocalizedFeatureString();
    v7 = 0;
    v9 = 0;
LABEL_9:
    businessChatSupported = 0;
    goto LABEL_10;
  }

  if (state == 1)
  {
    v17 = PKLocalizedFeatureString();
    v4 = PKLocalizedFeatureString();
    v5 = PKLocalizedFeatureString();
    v6 = 0;
    businessChatSupported = self->_businessChatSupported;
    v7 = 1;
    goto LABEL_6;
  }

  if (state)
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v5 = 0;
    v17 = 0;
    goto LABEL_9;
  }

  v17 = PKLocalizedFeatureString();
  v4 = PKLocalizedFeatureString();
  v5 = PKLocalizedFeatureString();
  v6 = 0;
  v7 = 0;
  businessChatSupported = self->_businessChatSupported;
LABEL_6:
  v9 = 1;
LABEL_10:
  [(PKPhysicalCardManualActivationViewController *)self _showSpinner:v7];
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setForceShowSetupLaterButton:businessChatSupported];
  [explanationView setBodyText:v4];
  [explanationView setTitleText:v17];
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  [primaryButton setTitle:v5 forState:0];

  [dockView setButtonExplanationText:v6];
  dockView2 = [explanationView dockView];
  footerView = [dockView2 footerView];

  if (businessChatSupported || ([(PKExplanationViewController *)self context], PKPaymentSetupContextIsSetupAssistant()))
  {
    setUpLaterButton = [footerView setUpLaterButton];
    v16 = PKLocalizedFeatureString();
    [setUpLaterButton setTitle:v16 forState:0];
  }

  [(PKExplanationViewController *)self setShowCancelButton:v9];
}

- (void)_showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:spinnerCopy ^ 1];

  [(PKExplanationViewController *)self showNavigationBarSpinner:spinnerCopy];
}

- (void)_presentDisplayableError:(id)error
{
  v4 = PKAlertForDisplayableErrorWithHandlers(error, 0, 0, 0);
  [(PKPhysicalCardManualActivationViewController *)self presentViewController:v4 animated:1 completion:0];
}

@end