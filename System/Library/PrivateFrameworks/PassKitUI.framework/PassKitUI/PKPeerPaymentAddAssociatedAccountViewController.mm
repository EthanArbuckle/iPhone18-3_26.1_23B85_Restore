@interface PKPeerPaymentAddAssociatedAccountViewController
- (PKPeerPaymentAddAssociatedAccountViewController)initWithFamilyMember:(id)a3 familyCollection:(id)a4 webService:(id)a5 passLibraryDataProvider:(id)a6 delegate:(id)a7 context:(int64_t)a8 setupType:(int64_t)a9;
- (id)_imageForWatchView;
- (void)_invalidateCLInUseAssertion;
- (void)_presentDisplayableError:(id)a3;
- (void)_showSpinner:(BOOL)a3;
- (void)_terminateAddAssociatedAccountFlow;
- (void)dealloc;
- (void)explanationViewDidSelectBodyButton:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPeerPaymentAddAssociatedAccountViewController

- (PKPeerPaymentAddAssociatedAccountViewController)initWithFamilyMember:(id)a3 familyCollection:(id)a4 webService:(id)a5 passLibraryDataProvider:(id)a6 delegate:(id)a7 context:(int64_t)a8 setupType:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v32 = a5;
  v18 = a6;
  v19 = a7;
  v33.receiver = self;
  v33.super_class = PKPeerPaymentAddAssociatedAccountViewController;
  v20 = [(PKExplanationViewController *)&v33 initWithContext:a8];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_familyMember, a3);
    objc_storeStrong(&v21->_familyCollection, a4);
    objc_storeStrong(&v21->_webService, a5);
    v21->_setupType = a9;
    v22 = [(PKPeerPaymentWebService *)v21->_webService peerPaymentService];
    v23 = [v22 account];
    peerPaymentAccount = v21->_peerPaymentAccount;
    v21->_peerPaymentAccount = v23;

    v25 = [[PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration alloc] initWithFamilyMember:v21->_familyMember associatedAccountSetupDelegate:v19 setupType:v21->_setupType];
    configuration = v21->_configuration;
    v21->_configuration = v25;

    v27 = [objc_alloc(MEMORY[0x1E69B8F38]) initWithPeerPaymentAccount:v21->_peerPaymentAccount];
    v28 = [[PKPeerPaymentSetupFlowController alloc] initWithPeerPaymentCredential:v27 provisioningController:0 passLibraryDataProvider:v18 configuration:v21->_configuration context:a8 campaignAttributionReferrerIdentifier:0];
    peerPaymentSetupFlowController = v21->_peerPaymentSetupFlowController;
    v21->_peerPaymentSetupFlowController = v28;

    [(PKPeerPaymentSetupFlowController *)v21->_peerPaymentSetupFlowController setParentViewController:v21];
    [(PKExplanationViewController *)v21 setShowCancelButton:PKPaymentSetupContextIsSetupAssistant() ^ 1];
    v21->_operations = 127;
    v30 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:16];
    [(PKExplanationViewController *)v21 setPrivacyLinkController:v30];
  }

  return v21;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PKPeerPaymentAddAssociatedAccountViewController;
  [(PKExplanationViewController *)&v28 viewDidLoad];
  if (([(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsFamilySharing]& 1) != 0)
  {
    [(PKExplanationViewController *)self context];
    IsBridge = PKPaymentSetupContextIsBridge();
    [(PKExplanationViewController *)self context];
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
    v5 = [(PKExplanationViewController *)self explanationView];
    [v5 setDelegate:self];
    [v5 setShowPrivacyView:1];
    if ((IsBridge & 1) == 0)
    {
      v6 = PKPassKitUIBundle();
      v7 = [v6 URLForResource:@"AppleCashIcon" withExtension:@"pdf"];
      v8 = PKUIScreenScale();
      v9 = PKUIImageFromPDF(v7, 80.0, 80.0, v8);

      [v5 setImage:v9];
      v10 = [v5 imageView];
      [v10 setClipsToBounds:1];
      [v10 _setContinuousCornerRadius:20.0];
    }

    v11 = [v5 dockView];
    v12 = [v11 footerView];
    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_5.isa);
    [v5 setBodyButtonText:v13];

    [v5 setBodyButtonUsesLearnMoreStyle:1];
    setupType = self->_setupType;
    if (setupType == 1)
    {
      v19 = PKLocalizedFeatureString();
      [v5 setTitleText:v19];

      v20 = [(PKFamilyMember *)self->_familyMember firstName];
      v21 = PKLocalizedFeatureString();
      [v5 setBodyText:v21, v20];

      if (!IsSetupAssistant)
      {
LABEL_13:
        if (IsBridge)
        {
          v23 = objc_alloc_init(PKWatchDeviceImageOverlayView);
          watchDeviceImageView = self->_watchDeviceImageView;
          self->_watchDeviceImageView = v23;

          v25 = self->_watchDeviceImageView;
          v26 = [(PKPeerPaymentAddAssociatedAccountViewController *)self _imageForWatchView];
          [(PKWatchDeviceImageOverlayView *)v25 setOverlayImage:v26];

          [v5 setBodyView:self->_watchDeviceImageView];
        }

        goto LABEL_16;
      }

      v17 = [v12 setUpLaterButton];
      v18 = PKLocalizedFeatureString();
    }

    else
    {
      if (setupType)
      {
        goto LABEL_13;
      }

      v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_6.isa);
      [v5 setTitleText:v15];

      v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_7.isa);
      [v5 setBodyText:v16];

      if (!IsSetupAssistant)
      {
        goto LABEL_13;
      }

      v17 = [v12 setUpLaterButton];
      v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_8.isa);
    }

    v22 = v18;
    [v17 setTitle:v18 forState:0];

    goto LABEL_13;
  }

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment family sharing feature not supported.", buf, 2u);
  }

LABEL_16:
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentAddAssociatedAccountViewController;
  [(PKPeerPaymentAddAssociatedAccountViewController *)&v13 viewDidAppear:a3];
  if (([(PKPeerPaymentAccount *)self->_peerPaymentAccount supportsFamilySharing]& 1) == 0)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Peer Payment family sharing feature not supported.", v12, 2u);
    }

    v5 = MEMORY[0x1E69DC650];
    v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea.isa);
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea_0.isa);
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedString(&cfstr_Ok.isa);
    v11 = [v9 actionWithTitle:v10 style:0 handler:0];

    [v8 addAction:v11];
    [(PKPeerPaymentAddAssociatedAccountViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(PKPeerPaymentAddAssociatedAccountViewController *)self _invalidateCLInUseAssertion];
  v5.receiver = self;
  v5.super_class = PKPeerPaymentAddAssociatedAccountViewController;
  [(PKPeerPaymentAddAssociatedAccountViewController *)&v5 viewWillDisappear:v3];
}

- (void)dealloc
{
  [(PKPeerPaymentAddAssociatedAccountViewController *)self _invalidateCLInUseAssertion];
  v3.receiver = self;
  v3.super_class = PKPeerPaymentAddAssociatedAccountViewController;
  [(PKPeerPaymentAddAssociatedAccountViewController *)&v3 dealloc];
}

- (void)_invalidateCLInUseAssertion
{
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v4 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  [(PKPeerPaymentAddAssociatedAccountViewController *)self _showSpinner:1];
  if (!self->_inUseAssertion)
  {
    v4 = MEMORY[0x1E695FBE0];
    v5 = PKPassKitCoreBundle();
    v6 = [v4 newAssertionForBundle:v5 withReason:@"Peer Payment Associated Account registration"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v6;
  }

  peerPaymentSetupFlowController = self->_peerPaymentSetupFlowController;
  operations = self->_operations;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PKPeerPaymentAddAssociatedAccountViewController_explanationViewDidSelectContinue___block_invoke;
  v10[3] = &unk_1E80129B0;
  v10[4] = self;
  [(PKPeerPaymentSetupFlowController *)peerPaymentSetupFlowController nextViewControllerAfterPerfomingOperations:operations completion:v10];
}

void __84__PKPeerPaymentAddAssociatedAccountViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  [*(a1 + 32) _invalidateCLInUseAssertion];
  if (v8)
  {
    [*(a1 + 32) _presentDisplayableError:v8];
LABEL_6:
    [*(a1 + 32) _showSpinner:0];
    goto LABEL_7;
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (v7)
  {
    v9 = [*(a1 + 32) navigationController];
    [v9 pushViewController:v7 animated:1];

    goto LABEL_6;
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "There was no error, cancelation, or next view controller to show for the add peer payment associated account flow. Terminating flow.", v11, 2u);
  }

  [*(a1 + 32) _terminateAddAssociatedAccountFlow];
LABEL_7:
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v4 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)self->_configuration associatedAccountSetupDelegate];
  v5 = v4;
  if (v4)
  {
    [v4 addPeerPaymentAssociatedAccountDidSkipSetupForFamilyMember:self->_familyMember];
  }

  else
  {
    [(PKPeerPaymentAddAssociatedAccountViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewDidSelectBodyButton:(id)a3
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/legal/privacy/en-ww/parent-disclosure/"];
  v4 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v5];
  [v4 setModalPresentationStyle:2];
  [(PKPeerPaymentAddAssociatedAccountViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_presentDisplayableError:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PKPeerPaymentAddAssociatedAccountViewController__presentDisplayableError___block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = PKAlertForDisplayableErrorWithHandlers(a3, 0, v6, 0);
  if (v4)
  {
    v5 = [(PKPeerPaymentAddAssociatedAccountViewController *)self navigationController];
    [v5 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    [(PKPeerPaymentAddAssociatedAccountViewController *)self _terminateAddAssociatedAccountFlow];
  }
}

- (void)_terminateAddAssociatedAccountFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating peer payment add associated account", v6, 2u);
  }

  v4 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)self->_configuration associatedAccountSetupDelegate];
  v5 = v4;
  if (v4)
  {
    [v4 addPeerPaymentAssociatedAccountSetupCompletedWithSucess:0 updatedAccount:0 forFamilyMember:self->_familyMember];
  }

  else
  {
    [(PKPeerPaymentAddAssociatedAccountViewController *)self dismissViewControllerAnimated:1 completion:0];
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
  v7 = [(PKPeerPaymentAddAssociatedAccountViewController *)self navigationItem];
  v8 = [v7 leftBarButtonItem];
  [v8 setEnabled:v3 ^ 1];

  v9 = [v7 rightBarButtonItem];
  [v9 setEnabled:v3 ^ 1];
}

- (id)_imageForWatchView
{
  v2 = +[PKBridgeWatchAttributeController heroWatchSize];
  if (v2 <= 4)
  {
    v3 = PKUIImageNamed(off_1E801D5C0[v2]);
  }

  return v3;
}

@end