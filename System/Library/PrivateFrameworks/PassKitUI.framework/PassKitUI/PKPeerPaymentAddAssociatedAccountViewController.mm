@interface PKPeerPaymentAddAssociatedAccountViewController
- (PKPeerPaymentAddAssociatedAccountViewController)initWithFamilyMember:(id)member familyCollection:(id)collection webService:(id)service passLibraryDataProvider:(id)provider delegate:(id)delegate context:(int64_t)context setupType:(int64_t)type;
- (id)_imageForWatchView;
- (void)_invalidateCLInUseAssertion;
- (void)_presentDisplayableError:(id)error;
- (void)_showSpinner:(BOOL)spinner;
- (void)_terminateAddAssociatedAccountFlow;
- (void)dealloc;
- (void)explanationViewDidSelectBodyButton:(id)button;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPeerPaymentAddAssociatedAccountViewController

- (PKPeerPaymentAddAssociatedAccountViewController)initWithFamilyMember:(id)member familyCollection:(id)collection webService:(id)service passLibraryDataProvider:(id)provider delegate:(id)delegate context:(int64_t)context setupType:(int64_t)type
{
  memberCopy = member;
  collectionCopy = collection;
  serviceCopy = service;
  providerCopy = provider;
  delegateCopy = delegate;
  v33.receiver = self;
  v33.super_class = PKPeerPaymentAddAssociatedAccountViewController;
  v20 = [(PKExplanationViewController *)&v33 initWithContext:context];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_familyMember, member);
    objc_storeStrong(&v21->_familyCollection, collection);
    objc_storeStrong(&v21->_webService, service);
    v21->_setupType = type;
    peerPaymentService = [(PKPeerPaymentWebService *)v21->_webService peerPaymentService];
    account = [peerPaymentService account];
    peerPaymentAccount = v21->_peerPaymentAccount;
    v21->_peerPaymentAccount = account;

    v25 = [[PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration alloc] initWithFamilyMember:v21->_familyMember associatedAccountSetupDelegate:delegateCopy setupType:v21->_setupType];
    configuration = v21->_configuration;
    v21->_configuration = v25;

    v27 = [objc_alloc(MEMORY[0x1E69B8F38]) initWithPeerPaymentAccount:v21->_peerPaymentAccount];
    v28 = [[PKPeerPaymentSetupFlowController alloc] initWithPeerPaymentCredential:v27 provisioningController:0 passLibraryDataProvider:providerCopy configuration:v21->_configuration context:context campaignAttributionReferrerIdentifier:0];
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
    explanationView = [(PKExplanationViewController *)self explanationView];
    [explanationView setDelegate:self];
    [explanationView setShowPrivacyView:1];
    if ((IsBridge & 1) == 0)
    {
      v6 = PKPassKitUIBundle();
      v7 = [v6 URLForResource:@"AppleCashIcon" withExtension:@"pdf"];
      v8 = PKUIScreenScale();
      v9 = PKUIImageFromPDF(v7, 80.0, 80.0, v8);

      [explanationView setImage:v9];
      imageView = [explanationView imageView];
      [imageView setClipsToBounds:1];
      [imageView _setContinuousCornerRadius:20.0];
    }

    dockView = [explanationView dockView];
    footerView = [dockView footerView];
    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_5.isa);
    [explanationView setBodyButtonText:v13];

    [explanationView setBodyButtonUsesLearnMoreStyle:1];
    setupType = self->_setupType;
    if (setupType == 1)
    {
      v19 = PKLocalizedFeatureString();
      [explanationView setTitleText:v19];

      firstName = [(PKFamilyMember *)self->_familyMember firstName];
      v21 = PKLocalizedFeatureString();
      [explanationView setBodyText:v21, firstName];

      if (!IsSetupAssistant)
      {
LABEL_13:
        if (IsBridge)
        {
          v23 = objc_alloc_init(PKWatchDeviceImageOverlayView);
          watchDeviceImageView = self->_watchDeviceImageView;
          self->_watchDeviceImageView = v23;

          v25 = self->_watchDeviceImageView;
          _imageForWatchView = [(PKPeerPaymentAddAssociatedAccountViewController *)self _imageForWatchView];
          [(PKWatchDeviceImageOverlayView *)v25 setOverlayImage:_imageForWatchView];

          [explanationView setBodyView:self->_watchDeviceImageView];
        }

        goto LABEL_16;
      }

      setUpLaterButton = [footerView setUpLaterButton];
      v18 = PKLocalizedFeatureString();
    }

    else
    {
      if (setupType)
      {
        goto LABEL_13;
      }

      v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_6.isa);
      [explanationView setTitleText:v15];

      v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_7.isa);
      [explanationView setBodyText:v16];

      if (!IsSetupAssistant)
      {
        goto LABEL_13;
      }

      setUpLaterButton = [footerView setUpLaterButton];
      v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_8.isa);
    }

    v22 = v18;
    [setUpLaterButton setTitle:v18 forState:0];

    goto LABEL_13;
  }

  explanationView = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(explanationView, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, explanationView, OS_LOG_TYPE_DEFAULT, "Peer Payment family sharing feature not supported.", buf, 2u);
  }

LABEL_16:
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentAddAssociatedAccountViewController;
  [(PKPeerPaymentAddAssociatedAccountViewController *)&v13 viewDidAppear:appear];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(PKPeerPaymentAddAssociatedAccountViewController *)self _invalidateCLInUseAssertion];
  v5.receiver = self;
  v5.super_class = PKPeerPaymentAddAssociatedAccountViewController;
  [(PKPeerPaymentAddAssociatedAccountViewController *)&v5 viewWillDisappear:disappearCopy];
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

- (void)explanationViewDidSelectContinue:(id)continue
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

- (void)explanationViewDidSelectSetupLater:(id)later
{
  associatedAccountSetupDelegate = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)self->_configuration associatedAccountSetupDelegate];
  v5 = associatedAccountSetupDelegate;
  if (associatedAccountSetupDelegate)
  {
    [associatedAccountSetupDelegate addPeerPaymentAssociatedAccountDidSkipSetupForFamilyMember:self->_familyMember];
  }

  else
  {
    [(PKPeerPaymentAddAssociatedAccountViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewDidSelectBodyButton:(id)button
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/legal/privacy/en-ww/parent-disclosure/"];
  v4 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:v5];
  [v4 setModalPresentationStyle:2];
  [(PKPeerPaymentAddAssociatedAccountViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_presentDisplayableError:(id)error
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PKPeerPaymentAddAssociatedAccountViewController__presentDisplayableError___block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = PKAlertForDisplayableErrorWithHandlers(error, 0, v6, 0);
  if (v4)
  {
    navigationController = [(PKPeerPaymentAddAssociatedAccountViewController *)self navigationController];
    [navigationController presentViewController:v4 animated:1 completion:0];
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

  associatedAccountSetupDelegate = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)self->_configuration associatedAccountSetupDelegate];
  v5 = associatedAccountSetupDelegate;
  if (associatedAccountSetupDelegate)
  {
    [associatedAccountSetupDelegate addPeerPaymentAssociatedAccountSetupCompletedWithSucess:0 updatedAccount:0 forFamilyMember:self->_familyMember];
  }

  else
  {
    [(PKPeerPaymentAddAssociatedAccountViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];

  primaryButton = [dockView primaryButton];
  [primaryButton setShowSpinner:spinnerCopy];

  [dockView setButtonsEnabled:spinnerCopy ^ 1];
  navigationItem = [(PKPeerPaymentAddAssociatedAccountViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:spinnerCopy ^ 1];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:spinnerCopy ^ 1];
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