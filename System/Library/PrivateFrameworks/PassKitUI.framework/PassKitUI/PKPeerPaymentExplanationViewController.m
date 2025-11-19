@interface PKPeerPaymentExplanationViewController
- (PKPeerPaymentExplanationViewController)initWithProvisoningController:(id)a3 setupDelegate:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6 credential:(id)a7 campaignAttributionReferrerIdentifier:(id)a8;
- (id)_bodyText;
- (id)_titleText;
- (void)_addDifferentCard;
- (void)_presentDisplayableError:(id)a3;
- (void)_showSpinner:(BOOL)a3;
- (void)_terminateSetupFlow;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentExplanationViewController

- (PKPeerPaymentExplanationViewController)initWithProvisoningController:(id)a3 setupDelegate:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6 credential:(id)a7 campaignAttributionReferrerIdentifier:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v34.receiver = self;
  v34.super_class = PKPeerPaymentExplanationViewController;
  v19 = [(PKExplanationViewController *)&v34 initWithContext:a6];
  if (v19)
  {
    v20 = [[PKPeerPaymentSetupFlowProvisionConfiguration alloc] initWithSetupDelegate:v15];
    configuration = v19->_configuration;
    v19->_configuration = v20;

    v22 = [v17 account];
    peerPaymentAccount = v19->_peerPaymentAccount;
    v19->_peerPaymentAccount = v22;

    v24 = [[PKPeerPaymentSetupFlowController alloc] initWithPeerPaymentCredential:v17 provisioningController:v14 passLibraryDataProvider:v16 configuration:v19->_configuration context:a6 campaignAttributionReferrerIdentifier:v18];
    peerPaymentSetupFlowController = v19->_peerPaymentSetupFlowController;
    v19->_peerPaymentSetupFlowController = v24;

    [(PKPeerPaymentSetupFlowController *)v19->_peerPaymentSetupFlowController setParentViewController:v19];
    v19->_operations = 31;
    v26 = [(PKExplanationViewController *)v19 explanationView];
    v27 = [PKPeerPaymentSetupFlowHeroView alloc];
    v28 = [(PKPeerPaymentSetupFlowController *)v19->_peerPaymentSetupFlowController passSnapShot];
    v29 = [(PKPeerPaymentSetupFlowHeroView *)v27 initWithPeerPaymentPassSnapShot:v28 peerPaymentCredential:v17];

    [v26 setHeroView:v29];
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
    if (IsSetupAssistant)
    {
      v31 = [(PKPeerPaymentExplanationViewController *)v19 navigationItem];
      [v31 setHidesBackButton:0 animated:0];
    }

    [(PKExplanationViewController *)v19 setShowCancelButton:IsSetupAssistant ^ 1u];
    v32 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:2];
    [(PKExplanationViewController *)v19 setPrivacyLinkController:v32];
  }

  return v19;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = PKPeerPaymentExplanationViewController;
  [(PKExplanationViewController *)&v20 viewDidLoad];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [(PKPeerPaymentExplanationViewController *)self _titleText];
  [v3 setTitleText:v4];

  v5 = [(PKPeerPaymentExplanationViewController *)self _bodyText];
  [v3 setBodyText:v5];

  if (PKPeerPaymentFDICSignageEnabled() && PKPeerPaymentAccountIsFDICInsured())
  {
    v6 = [[PKFDICSignageView alloc] initWithFeature:1 displayingBankName:0];
    [v3 setBodyViewPadding:20.0];
    [v3 setBodyView:v6];
  }

  [v3 setShowPrivacyView:1];
  [v3 setDelegate:self];
  [v3 setTopMargin:12.0];
  [v3 setBodyDataDetectorTypes:0];
  v7 = [v3 dockView];
  v8 = [v7 footerView];
  v9 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController provisioningController];
  v10 = [v9 credentialProvisioningQueue];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v8 skipCardButton];
    [v12 addTarget:self action:sel__terminateSetupFlow forControlEvents:0x2000];
  }

  if (self->_hidesSetupLater)
  {
    [v8 setSetUpLaterButton:0];
    goto LABEL_12;
  }

  v13 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController peerPaymentCredential];
  if ([v13 paymentMode] == 2)
  {
    [(PKExplanationViewController *)self context];
    IsSystemOverlay = PKPaymentSetupContextIsSystemOverlay();

    if (!IsSystemOverlay)
    {
      goto LABEL_12;
    }

    v13 = [v8 secondaryActionButton];
    v15 = PKLocalizedPeerPaymentString(&cfstr_NearbyPaymentR.isa);
    [v13 setTitle:v15 forState:0];

    v16 = [v13 titleLabel];
    v17 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 2, 0);
    [v16 setFont:v17];

    [v13 addTarget:self action:sel__terminateSetupFlow forControlEvents:0x2000];
    [(PKExplanationViewController *)self setShowCancelButton:0];
  }

LABEL_12:
  if (self->_allowsManualEntry)
  {
    v18 = [v8 manualEntryButton];
    v19 = PKLocalizedPaymentString(&cfstr_AddADifferentC.isa);
    [v18 setTitle:v19 forState:0];

    [v18 addTarget:self action:sel__addDifferentCard forControlEvents:0x2000];
  }

  else
  {
    [v8 setManualEntryButton:0];
  }
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  [(PKPeerPaymentExplanationViewController *)self _showSpinner:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v16[0] = &unk_1F3CC6E48;
  v6 = PKLocalizedShareableCredentialString(&cfstr_LocalAuthentic.isa);
  v17[0] = v6;
  v16[1] = &unk_1F3CC6E60;
  v7 = PKLocalizedString(&cfstr_Wallet_1.isa);
  v16[2] = &unk_1F3CC6E78;
  v17[1] = v7;
  v17[2] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke_96;
  v11[3] = &unk_1E80137C8;
  v13 = self;
  v14 = v4;
  v12 = v5;
  v9 = v4;
  v10 = v5;
  [v10 evaluatePolicy:1025 options:v8 reply:v11];
}

uint64_t __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1088);
  v3 = *(v1 + 1080);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke_2;
  v5[3] = &unk_1E80129B0;
  v5[4] = v1;
  return [v2 nextViewControllerAfterPerfomingOperations:v3 completion:v5];
}

void __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 32) _presentDisplayableError:v8];
LABEL_4:
    [*(a1 + 32) _showSpinner:0];
    goto LABEL_5;
  }

  if (a3)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 32);
  if (v7)
  {
    v10 = [v9 navigationController];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke_3;
    v11[3] = &unk_1E8011D28;
    v11[4] = *(a1 + 32);
    [v10 pk_presentPaymentSetupViewController:v7 animated:1 completion:v11];
  }

  else
  {
    [v9 _terminateSetupFlow];
  }

LABEL_5:
}

void __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke_2_97;
  block[3] = &unk_1E80137A0;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v7 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75__PKPeerPaymentExplanationViewController_explanationViewDidSelectContinue___block_invoke_2_97(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v2 = [*(a1 + 48) externalizedContext];
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 48) invalidate];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Y";
    if (!v2)
    {
      v4 = @"N";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentExplanationViewController requested local auth and returning %@.", &v5, 0xCu);
  }

  if (v2)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 56) _showSpinner:0];
  }
}

- (void)_presentDisplayableError:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PKPeerPaymentExplanationViewController__presentDisplayableError___block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = PKAlertForDisplayableErrorWithHandlers(a3, 0, v6, 0);
  if (v4)
  {
    v5 = [(PKPeerPaymentExplanationViewController *)self navigationController];
    [v5 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    [(PKPeerPaymentExplanationViewController *)self _terminateSetupFlow];
  }
}

- (void)_addDifferentCard
{
  v3 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController provisioningController];
  v4 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:-[PKExplanationViewController context](self provisioningController:"context") groupsController:{v3, 0}];
  v5 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:[(PKExplanationViewController *)self context]];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __59__PKPeerPaymentExplanationViewController__addDifferentCard__block_invoke;
  v9 = &unk_1E8010998;
  objc_copyWeak(&v10, &location);
  [PKProvisioningFlowBridge startManualEntryFlowWithNavController:v5 context:v4 completion:&v6];
  [(PKPeerPaymentExplanationViewController *)self presentViewController:v5 animated:1 completion:0, v6, v7, v8, v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__PKPeerPaymentExplanationViewController__addDifferentCard__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _terminateSetupFlow];
}

- (id)_titleText
{
  v2 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController peerPaymentCredential];
  if ([v2 paymentMode] == 2)
  {
    v3 = @"NEARBY_PAYMENT_RECEIVED_SETUP_TITLE";
  }

  else
  {
    v3 = @"PEER_PAYMENT_SETUP_TITLE";
  }

  v4 = PKLocalizedPeerPaymentString(&v3->isa);

  return v4;
}

- (id)_bodyText
{
  v3 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController peerPaymentCredential];
  v4 = [v3 flowState];
  switch(v4)
  {
    case 6:
      v5 = @"PEER_PAYMENT_SETUP_DAILY_CASH_MESSAGE";
      goto LABEL_9;
    case 2:
      v6 = [v3 pendingPaymentSenderName];
      if (v6)
      {
        if ([v3 paymentMode] == 2)
        {
          PKLocalizedPeerPaymentString(&cfstr_NearbyPaymentR_1.isa, &stru_1F3BD5BF0.isa, v6);
        }

        else
        {
          PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_7.isa, &stru_1F3BD5BF0.isa, v6);
        }
        v9 = ;
      }

      else
      {
        v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_6.isa);
      }

      break;
    case 1:
      v5 = @"PEER_PAYMENT_SETUP_INCOMING_PAYMENT_MESSAGE";
LABEL_9:
      v7 = PKLocalizedPeerPaymentString(&v5->isa);
      goto LABEL_15;
    default:
      [(PKExplanationViewController *)self context];
      IsBridge = PKPaymentSetupContextIsBridge();
      v6 = PKDeviceSpecificLocalizedStringKeyForKey(@"PEER_PAYMENT_SETUP_DEFAULT_MESSAGE", IsBridge);
      v9 = PKLocalizedPeerPaymentRecurringString(v6);
      break;
  }

  v7 = v9;

LABEL_15:
  if (PKPeerPaymentFDICSignageEnabled())
  {
    if (PKPeerPaymentAccountIsFDICInsured())
    {
      v10 = @"FDIC_BANK_ATTRIBUTION_INSURED";
    }

    else
    {
      v10 = @"FDIC_BANK_ATTRIBUTION_ELIGIBLE";
    }

    v11 = PKLocalizedPeerPaymentString(&v10->isa);
    v12 = v11;
    if (v7)
    {
      v13 = [v7 stringByAppendingFormat:@"\n\n%@", v11];

      v7 = v13;
    }

    else
    {
      v7 = v11;
    }
  }

  return v7;
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating peer payment setup flow", v6, 2u);
  }

  v4 = [(PKPeerPaymentSetupFlowProvisionConfiguration *)self->_configuration setupDelegate];
  v5 = v4;
  if (v4)
  {
    [v4 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    [(PKPeerPaymentExplanationViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKExplanationViewController *)self explanationView];
  v10 = [v5 dockView];

  v6 = [v10 primaryButton];
  [v6 setShowSpinner:v3];

  [v10 setButtonsEnabled:v3 ^ 1];
  v7 = [(PKPeerPaymentExplanationViewController *)self navigationItem];
  v8 = [v7 leftBarButtonItem];
  [v8 setEnabled:v3 ^ 1];

  v9 = [v7 rightBarButtonItem];
  [v9 setEnabled:v3 ^ 1];
}

@end