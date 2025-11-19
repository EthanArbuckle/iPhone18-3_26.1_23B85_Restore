@interface PKPhysicalCardManualActivationViewController
- (PKPhysicalCardManualActivationViewController)initWithAccountService:(id)a3 account:(id)a4 accountUser:(id)a5 paymentPass:(id)a6 physicalCard:(id)a7 activationCode:(id)a8;
- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)a3;
- (void)_presentDisplayableError:(id)a3;
- (void)_setupForCurrentState;
- (void)_showSpinner:(BOOL)a3;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)physicalCardActionController:(id)a3 didChangeToState:(int64_t)a4 withError:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPhysicalCardManualActivationViewController

- (PKPhysicalCardManualActivationViewController)initWithAccountService:(id)a3 account:(id)a4 accountUser:(id)a5 paymentPass:(id)a6 physicalCard:(id)a7 activationCode:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v27.receiver = self;
  v27.super_class = PKPhysicalCardManualActivationViewController;
  v20 = [(PKExplanationViewController *)&v27 initWithContext:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_physicalCard, a7);
    v22 = [[PKPhysicalCardActionController alloc] initWithAccountService:v14 account:v15 accountUser:v16 delegate:v21];
    actionController = v21->_actionController;
    v21->_actionController = v22;

    v21->_feature = [v15 feature];
    objc_storeStrong(&v21->_paymentPass, a6);
    v24 = [v19 copy];
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
  v3 = [(PKPhysicalCardManualActivationViewController *)self navigationItem];
  [v3 setHidesBackButton:1 animated:0];

  v4 = objc_alloc_init(PKOrderPhysicalCardHeroView);
  hero = self->_hero;
  self->_hero = v4;

  v6 = [(PKOrderPhysicalCardHeroView *)self->_hero artworkView];
  v7 = [(PKPhysicalCard *)self->_physicalCard nameOnCard];
  [v6 setNameOnCard:v7];

  v8 = [(PKExplanationViewController *)self explanationView];
  [v8 setShowPrivacyView:0];
  [v8 setHeroView:self->_hero];
  [v8 setImageIgnoresTopSafeArea:1];
  [(PKPhysicalCardManualActivationViewController *)self _setupForCurrentState];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPhysicalCardManualActivationViewController;
  [(PKPhysicalCardManualActivationViewController *)&v6 viewWillAppear:a3];
  if (!self->_sharingClient)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CDE40]);
    sharingClient = self->_sharingClient;
    self->_sharingClient = v4;

    [(SFClient *)self->_sharingClient activateAssertionWithIdentifier:@"com.apple.sharing.PreventAppleCardActivation"];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKPhysicalCardManualActivationViewController;
  [(PKPhysicalCardManualActivationViewController *)&v8 viewWillDisappear:a3];
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

- (void)explanationViewDidSelectSetupLater:(id)a3
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

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  state = self->_state;
  if (state == 2)
  {
    v12 = v4;
    [(PKPhysicalCardManualActivationViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if (state)
    {
      goto LABEL_10;
    }

    v12 = v4;
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

  v4 = v12;
LABEL_10:
}

- (void)physicalCardActionController:(id)a3 didChangeToState:(int64_t)a4 withError:(id)a5
{
  v7 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPhysicalCardManualActivationViewController_physicalCardActionController_didChangeToState_withError___block_invoke;
  block[3] = &unk_1E8012C50;
  v10 = v7;
  v11 = a4;
  block[4] = self;
  v8 = v7;
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

- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)a3
{
  v3 = [(PKPhysicalCardManualActivationViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
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
  v10 = [(PKExplanationViewController *)self explanationView];
  [v10 setForceShowSetupLaterButton:businessChatSupported];
  [v10 setBodyText:v4];
  [v10 setTitleText:v17];
  v11 = [v10 dockView];
  v12 = [v11 primaryButton];
  [v12 setTitle:v5 forState:0];

  [v11 setButtonExplanationText:v6];
  v13 = [v10 dockView];
  v14 = [v13 footerView];

  if (businessChatSupported || ([(PKExplanationViewController *)self context], PKPaymentSetupContextIsSetupAssistant()))
  {
    v15 = [v14 setUpLaterButton];
    v16 = PKLocalizedFeatureString();
    [v15 setTitle:v16 forState:0];
  }

  [(PKExplanationViewController *)self setShowCancelButton:v9];
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKExplanationViewController *)self explanationView];
  v6 = [v5 dockView];
  [v6 setButtonsEnabled:v3 ^ 1];

  [(PKExplanationViewController *)self showNavigationBarSpinner:v3];
}

- (void)_presentDisplayableError:(id)a3
{
  v4 = PKAlertForDisplayableErrorWithHandlers(a3, 0, 0, 0);
  [(PKPhysicalCardManualActivationViewController *)self presentViewController:v4 animated:1 completion:0];
}

@end