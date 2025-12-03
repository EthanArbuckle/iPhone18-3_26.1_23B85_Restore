@interface PKPaymentAddDebitCardViewController
- (PKPaymentAddDebitCardViewController)initWithPeerPaymentSetupFlowController:(id)controller;
- (void)_handleProvisioningError:(id)error;
- (void)_presentPaymentSetupController;
- (void)_terminateSetupFlow;
- (void)setBodyText:(id)text;
- (void)setShowDebitCardHeroView:(BOOL)view;
- (void)setTitleText:(id)text;
- (void)viewDidLoad;
@end

@implementation PKPaymentAddDebitCardViewController

- (PKPaymentAddDebitCardViewController)initWithPeerPaymentSetupFlowController:(id)controller
{
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = PKPaymentAddDebitCardViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v24, sel_initWithContext_, [controllerCopy context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerPaymentSetupFlowController, controller);
    [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController setParentViewController:v7];
    configuration = [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController configuration];
    peerPaymentSetupConfigurationType = [configuration peerPaymentSetupConfigurationType];

    if (!peerPaymentSetupConfigurationType)
    {
      configuration2 = [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController configuration];
      setupDelegate = [configuration2 setupDelegate];
      objc_storeWeak(&v7->_setupDelegate, setupDelegate);
    }

    v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd.isa);
    [(PKPaymentAddDebitCardViewController *)v7 setTitleText:v12];

    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_0.isa);
    [(PKPaymentAddDebitCardViewController *)v7 setBodyText:v13];

    explanationView = [(PKExplanationViewController *)v7 explanationView];
    [explanationView setShowPrivacyView:0];
    [explanationView setDelegate:v7];
    explanationView2 = [(PKExplanationViewController *)v7 explanationView];
    dockView = [explanationView2 dockView];

    primaryButton = [dockView primaryButton];
    v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_1.isa);
    [primaryButton setTitle:v18 forState:0];

    [explanationView setForceShowSetupLaterButton:1];
    [(PKExplanationViewController *)v7 context];
    LODWORD(primaryButton) = PKPaymentSetupContextIsSetupAssistant();
    footerView = [dockView footerView];
    setUpLaterButton = [footerView setUpLaterButton];
    v21 = PKDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_ADD_CARD_LATER_TITLE", primaryButton);
    v22 = PKLocalizedPeerPaymentString(v21);
    [setUpLaterButton setTitle:v22 forState:0];

    [(PKPaymentAddDebitCardViewController *)v7 setShowDebitCardHeroView:1];
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPaymentAddDebitCardViewController;
  [(PKExplanationViewController *)&v4 viewDidLoad];
  navigationItem = [(PKPaymentAddDebitCardViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setRightBarButtonItem:0];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleText = self->_titleText;
  v11 = textCopy;
  v7 = titleText;
  if (v7 == v11)
  {

    view = v11;
LABEL_9:

    goto LABEL_10;
  }

  if (!v11 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v11 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_titleText, text);
    explanationView = [(PKExplanationViewController *)self explanationView];
    [explanationView setTitleText:self->_titleText];

    view = [(PKPaymentAddDebitCardViewController *)self view];
    [view setNeedsLayout];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setBodyText:(id)text
{
  textCopy = text;
  bodyText = self->_bodyText;
  v11 = textCopy;
  v7 = bodyText;
  if (v7 == v11)
  {

    view = v11;
LABEL_9:

    goto LABEL_10;
  }

  if (!v11 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v11 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_bodyText, text);
    explanationView = [(PKExplanationViewController *)self explanationView];
    [explanationView setBodyText:self->_bodyText];

    view = [(PKPaymentAddDebitCardViewController *)self view];
    [view setNeedsLayout];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setShowDebitCardHeroView:(BOOL)view
{
  if (self->_showDebitCardHeroView != view)
  {
    self->_showDebitCardHeroView = view;
    if (view)
    {
      v5 = [PKAddDebitCardHeroView alloc];
      passSnapShot = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController passSnapShot];
      explanationView2 = [(PKAddDebitCardHeroView *)v5 initWithPassSnapShot:passSnapShot];

      explanationView = [(PKExplanationViewController *)self explanationView];
      [explanationView setHeroView:explanationView2];
    }

    else
    {
      explanationView2 = [(PKExplanationViewController *)self explanationView];
      [(PKAddDebitCardHeroView *)explanationView2 setHeroView:0];
    }

    view = [(PKPaymentAddDebitCardViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_presentPaymentSetupController
{
  provisioningController = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController provisioningController];
  v4 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:-[PKExplanationViewController context](self provisioningController:"context") groupsController:{provisioningController, 0}];
  [(PKExplanationViewController *)self context];
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    v5 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:[(PKExplanationViewController *)self context]];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, &location);
    [PKProvisioningFlowBridge startManualEntryFlowWithNavController:v5 context:v4 completion:v10];
    [(PKPaymentAddDebitCardViewController *)self presentViewController:v5 animated:1 completion:0];
    v6 = &v11;
  }

  else
  {
    [(PKExplanationViewController *)self showNavigationBarSpinner:1];
    [provisioningController setAllowedCardTypes:&unk_1F3CC8348];
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [provisioningController setAllowedFeatureIdentifiers:v5];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_84;
    v7[3] = &unk_1E8013B00;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [provisioningController preflightWithCompletion:v7];

    v6 = &v9;
  }

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _terminateSetupFlow];
}

void __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_84(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_2;
  v7[3] = &unk_1E8013AD8;
  objc_copyWeak(&v10, (a1 + 40));
  v11 = a2;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
}

void __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1)
    {
      v4 = -[PKPaymentSetupDismissibleNavigationController initWithContext:]([PKPaymentSetupDismissibleNavigationController alloc], "initWithContext:", [WeakRetained context]);
      [(PKNavigationController *)v4 setCustomFormSheetPresentationStyleForiPad];
      v5 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_3;
      v13[3] = &unk_1E8010A10;
      v13[4] = v3;
      v14 = v4;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_4;
      v10[3] = &unk_1E8010A10;
      v11 = v14;
      v12 = v3;
      v6 = v14;
      [PKProvisioningFlowBridge startProvisionToPurchaseFlowWithNavController:v6 context:v5 onFirstViewControllerShown:v13 completion:v10];
    }

    else
    {
      [WeakRetained showNavigationBarSpinner:0];
      v7 = *(a1 + 40);
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = PKDisplayableErrorForCommonType();
      }

      v9 = v8;
      [v3 _handleProvisioningError:v8];
    }
  }
}

uint64_t __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) showNavigationBarSpinner:0];
  if ([*(a1 + 32) pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [*(a1 + 40) setModalPresentationStyle:3];
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v2 presentViewController:v3 withTransition:1 completion:0];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 40);

  return [v2 _terminateSetupFlow];
}

- (void)_handleProvisioningError:(id)error
{
  v4 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:error];
  [(PKPaymentAddDebitCardViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_terminateSetupFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKPaymentAddDebitCardViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

@end