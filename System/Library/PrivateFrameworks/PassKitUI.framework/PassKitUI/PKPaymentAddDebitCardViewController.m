@interface PKPaymentAddDebitCardViewController
- (PKPaymentAddDebitCardViewController)initWithPeerPaymentSetupFlowController:(id)a3;
- (void)_handleProvisioningError:(id)a3;
- (void)_presentPaymentSetupController;
- (void)_terminateSetupFlow;
- (void)setBodyText:(id)a3;
- (void)setShowDebitCardHeroView:(BOOL)a3;
- (void)setTitleText:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentAddDebitCardViewController

- (PKPaymentAddDebitCardViewController)initWithPeerPaymentSetupFlowController:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = PKPaymentAddDebitCardViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v24, sel_initWithContext_, [v5 context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerPaymentSetupFlowController, a3);
    [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController setParentViewController:v7];
    v8 = [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController configuration];
    v9 = [v8 peerPaymentSetupConfigurationType];

    if (!v9)
    {
      v10 = [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController configuration];
      v11 = [v10 setupDelegate];
      objc_storeWeak(&v7->_setupDelegate, v11);
    }

    v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd.isa);
    [(PKPaymentAddDebitCardViewController *)v7 setTitleText:v12];

    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_0.isa);
    [(PKPaymentAddDebitCardViewController *)v7 setBodyText:v13];

    v14 = [(PKExplanationViewController *)v7 explanationView];
    [v14 setShowPrivacyView:0];
    [v14 setDelegate:v7];
    v15 = [(PKExplanationViewController *)v7 explanationView];
    v16 = [v15 dockView];

    v17 = [v16 primaryButton];
    v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_1.isa);
    [v17 setTitle:v18 forState:0];

    [v14 setForceShowSetupLaterButton:1];
    [(PKExplanationViewController *)v7 context];
    LODWORD(v17) = PKPaymentSetupContextIsSetupAssistant();
    v19 = [v16 footerView];
    v20 = [v19 setUpLaterButton];
    v21 = PKDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_ADD_CARD_LATER_TITLE", v17);
    v22 = PKLocalizedPeerPaymentString(v21);
    [v20 setTitle:v22 forState:0];

    [(PKPaymentAddDebitCardViewController *)v7 setShowDebitCardHeroView:1];
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPaymentAddDebitCardViewController;
  [(PKExplanationViewController *)&v4 viewDidLoad];
  v3 = [(PKPaymentAddDebitCardViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:0];
  [v3 setRightBarButtonItem:0];
  [v3 setHidesBackButton:1 animated:0];
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  titleText = self->_titleText;
  v11 = v5;
  v7 = titleText;
  if (v7 == v11)
  {

    v9 = v11;
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
    objc_storeStrong(&self->_titleText, a3);
    v10 = [(PKExplanationViewController *)self explanationView];
    [v10 setTitleText:self->_titleText];

    v9 = [(PKPaymentAddDebitCardViewController *)self view];
    [v9 setNeedsLayout];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setBodyText:(id)a3
{
  v5 = a3;
  bodyText = self->_bodyText;
  v11 = v5;
  v7 = bodyText;
  if (v7 == v11)
  {

    v9 = v11;
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
    objc_storeStrong(&self->_bodyText, a3);
    v10 = [(PKExplanationViewController *)self explanationView];
    [v10 setBodyText:self->_bodyText];

    v9 = [(PKPaymentAddDebitCardViewController *)self view];
    [v9 setNeedsLayout];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setShowDebitCardHeroView:(BOOL)a3
{
  if (self->_showDebitCardHeroView != a3)
  {
    self->_showDebitCardHeroView = a3;
    if (a3)
    {
      v5 = [PKAddDebitCardHeroView alloc];
      v6 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController passSnapShot];
      v7 = [(PKAddDebitCardHeroView *)v5 initWithPassSnapShot:v6];

      v8 = [(PKExplanationViewController *)self explanationView];
      [v8 setHeroView:v7];
    }

    else
    {
      v7 = [(PKExplanationViewController *)self explanationView];
      [(PKAddDebitCardHeroView *)v7 setHeroView:0];
    }

    v9 = [(PKPaymentAddDebitCardViewController *)self view];
    [v9 setNeedsLayout];
  }
}

- (void)_presentPaymentSetupController
{
  v3 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController provisioningController];
  v4 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:-[PKExplanationViewController context](self provisioningController:"context") groupsController:{v3, 0}];
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
    [v3 setAllowedCardTypes:&unk_1F3CC8348];
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v3 setAllowedFeatureIdentifiers:v5];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__PKPaymentAddDebitCardViewController__presentPaymentSetupController__block_invoke_84;
    v7[3] = &unk_1E8013B00;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [v3 preflightWithCompletion:v7];

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

- (void)_handleProvisioningError:(id)a3
{
  v4 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:a3];
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
    v4 = [(PKPaymentAddDebitCardViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

@end