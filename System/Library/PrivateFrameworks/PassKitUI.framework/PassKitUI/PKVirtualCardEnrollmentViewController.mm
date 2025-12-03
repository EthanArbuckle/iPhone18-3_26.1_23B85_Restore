@interface PKVirtualCardEnrollmentViewController
- (PKVirtualCardEnrollmentViewController)initWithPaymentPass:(id)pass context:(int64_t)context delegate:(id)delegate;
- (PKVirtualCardEnrollmentViewControllerDelegate)delegate;
- (void)_beginReportingIfNecessary;
- (void)_endReportingIfNecessary;
- (void)dealloc;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)passDidNotUpdateInTime;
- (void)passDidUpdate;
- (void)paymentAuthorizationViewController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationViewControllerDidFinish:(id)finish;
- (void)receivedPassUpdatedNotification:(id)notification;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)waitForPassToUpdate;
@end

@implementation PKVirtualCardEnrollmentViewController

- (PKVirtualCardEnrollmentViewController)initWithPaymentPass:(id)pass context:(int64_t)context delegate:(id)delegate
{
  passCopy = pass;
  delegateCopy = delegate;
  v11 = [(PKExplanationViewController *)self initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_paymentPass, pass);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13 = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
    heroCardView = v12->_heroCardView;
    v12->_heroCardView = v13;

    v12->_state = 0;
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self];
  v4.receiver = self;
  v4.super_class = PKVirtualCardEnrollmentViewController;
  [(PKVirtualCardEnrollmentViewController *)&v4 dealloc];
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = PKVirtualCardEnrollmentViewController;
  [(PKExplanationViewController *)&v11 loadView];
  [(PKExplanationViewController *)self setExplanationViewControllerDelegate:self];
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  v4 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet_0.isa);
  [explanationView setTitleText:v4];

  if (PKFPANAutoFillEnabled())
  {
    v5 = @"VIRTUAL_CARD_SET_UP_EXPLANATION_FPAN";
  }

  else
  {
    v5 = @"VIRTUAL_CARD_SET_UP_EXPLANATION";
  }

  v6 = PKLocalizedVirtualCardString(&v5->isa);
  [explanationView setBodyText:v6];

  [explanationView setForceShowSetupLaterButton:1];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  setUpLaterButton = [footerView setUpLaterButton];
  v10 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet_3.isa);
  [setUpLaterButton setTitle:v10 forState:0];
}

- (void)viewDidLoad
{
  v25[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PKVirtualCardEnrollmentViewController;
  [(PKExplanationViewController *)&v23 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_receivedPassUpdatedNotification_ name:*MEMORY[0x1E69BBBE0] object:0];

  explanationView = [(PKExplanationViewController *)self explanationView];
  backgroundColor = [(PKHeroCardExplanationHeaderView *)self->_heroCardView backgroundColor];
  [explanationView setTopBackgroundColor:backgroundColor];

  +[PKHeroCardExplanationHeaderView recommendedCardImageSize];
  v7 = v6;
  v9 = v8;
  v10 = +[PKPassSnapshotter sharedInstance];
  paymentPass = self->_paymentPass;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__PKVirtualCardEnrollmentViewController_viewDidLoad__block_invoke;
  v21[3] = &unk_1E8010AB0;
  v21[4] = self;
  v12 = explanationView;
  v22 = v12;
  [v10 snapshotWithPass:paymentPass size:v21 completion:{v7, v9}];

  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowCloseButton:1];
  v13 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v13 configureWithTransparentBackground];
  navigationItem = [(PKVirtualCardEnrollmentViewController *)self navigationItem];
  [navigationItem setStandardAppearance:v13];
  [navigationItem setCompactAppearance:v13];
  [navigationItem setScrollEdgeAppearance:v13];
  [(PKVirtualCardEnrollmentViewController *)self _beginReportingIfNecessary];
  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v16 = *MEMORY[0x1E69BABE8];
  v24[0] = *MEMORY[0x1E69BA680];
  v24[1] = v16;
  v17 = *MEMORY[0x1E69BB668];
  v25[0] = *MEMORY[0x1E69BA818];
  v25[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v19 = [v15 initWithDictionary:v18];

  v20 = PKDefaultPaymentNetworkNameForPaymentPass();
  if (v20)
  {
    [v19 setValue:v20 forKey:*MEMORY[0x1E69BAD48]];
  }

  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6F8] sendEvent:v19];
}

void __52__PKVirtualCardEnrollmentViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKVirtualCardEnrollmentViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __52__PKVirtualCardEnrollmentViewController_viewDidLoad__block_invoke_2(void *a1)
{
  [*(a1[4] + 1080) setCardImage:a1[5]];
  v2 = a1[6];
  v3 = *(a1[4] + 1080);

  return [v2 setHeroView:v3];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKVirtualCardEnrollmentViewController;
  [(PKVirtualCardEnrollmentViewController *)&v4 viewWillDisappear:disappear];
  [(PKVirtualCardEnrollmentViewController *)self _endReportingIfNecessary];
}

- (void)_beginReportingIfNecessary
{
  v3 = *MEMORY[0x1E69BB6F8];
  v4 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6F8]];

  if (!v4)
  {
    self->_didBeginPassManagementSubject = 1;
    v5 = MEMORY[0x1E69B8540];

    [v5 beginSubjectReporting:v3];
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginPassManagementSubject)
  {
    self->_didBeginPassManagementSubject = 0;
    [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6F8]];
  }
}

- (void)waitForPassToUpdate
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Waiting for pass to update with virtual card info…", v8, 2u);
  }

  [(PKVirtualCardEnrollmentViewController *)self setModalInPresentation:1];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v5 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet_4.isa);
  [explanationView setTitleText:v5];

  v6 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet_5.isa);
  [explanationView setBodyText:v6];

  [explanationView setShowSpinner:1];
  dockView = [explanationView dockView];
  [dockView setHidden:1];

  [(PKVirtualCardEnrollmentViewController *)self performSelector:sel_passDidNotUpdateInTime withObject:0 afterDelay:10.0];
}

- (void)receivedPassUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (self->_state == 1)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BBC18]];
    uniqueID = [(PKPaymentPass *)self->_paymentPass uniqueID];
    v9 = [v7 isEqualToString:uniqueID];

    v10 = PKLogFacilityTypeGetObject();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Got pass update notification, for pass being enrolled to virtual card", buf, 2u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__PKVirtualCardEnrollmentViewController_receivedPassUpdatedNotification___block_invoke;
      block[3] = &unk_1E8010970;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Got pass update notification, but not for the pass being enrolled", buf, 2u);
      }
    }
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Got pass update notification, but not in the virtual card enrolling state. Ignoring.", buf, 2u);
    }
  }
}

- (void)passDidNotUpdateInTime
{
  if (self->_state != 2)
  {
    v7 = v2;
    v8 = v3;
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Successfully enrolled virtual card, but didn't receive pass update notification in time. Treating as successful", v6, 2u);
    }

    [(PKVirtualCardEnrollmentViewController *)self passDidUpdate];
  }
}

- (void)passDidUpdate
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (self->_state != 2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Updating virtual card enrollment UI to success", buf, 2u);
    }

    self->_state = 2;
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self];
    explanationView = [(PKExplanationViewController *)self explanationView];
    v5 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet_6.isa);
    [explanationView setTitleText:v5];

    LODWORD(v5) = PKFPANAutoFillEnabled();
    localizedDescription = [(PKPaymentPass *)self->_paymentPass localizedDescription];
    if (v5)
    {
      v7 = @"VIRTUAL_CARD_SET_UP_COMPLETE_BODY_FPAN";
    }

    else
    {
      v7 = @"VIRTUAL_CARD_SET_UP_COMPLETE_BODY";
    }

    v8 = PKLocalizedVirtualCardString(&v7->isa, &stru_1F3BD5BF0.isa, localizedDescription);
    [explanationView setBodyText:v8];

    explanationView2 = [(PKExplanationViewController *)self explanationView];
    [explanationView2 setShowSpinner:0];

    explanationView3 = [(PKExplanationViewController *)self explanationView];
    [explanationView3 setShowCheckmark:1];

    dockView = [explanationView dockView];
    primaryButton = [dockView primaryButton];
    v13 = PKLocalizedVirtualCardString(&cfstr_VirtualCardSet_9.isa);
    [primaryButton setTitle:v13 forState:0];

    [explanationView setForceShowSetupLaterButton:0];
    dockView2 = [explanationView dockView];
    [dockView2 setHidden:0];

    v15 = MEMORY[0x1E69B8540];
    v16 = *MEMORY[0x1E69BB6F8];
    v17 = *MEMORY[0x1E69BABE8];
    v21[0] = *MEMORY[0x1E69BA680];
    v21[1] = v17;
    v18 = *MEMORY[0x1E69BB660];
    v22[0] = *MEMORY[0x1E69BA818];
    v22[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v15 subject:v16 sendEvent:v19];
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v24[3] = *MEMORY[0x1E69E9840];
  continueCopy = continue;
  if (self->_state == 2)
  {
    delegate = [(PKVirtualCardEnrollmentViewController *)self delegate];
    [delegate virtualCardEnrollmentViewController:self didCompleteWithSuccess:1];

    v6 = MEMORY[0x1E69B8540];
    v7 = *MEMORY[0x1E69BB6F8];
    v8 = *MEMORY[0x1E69BA6F0];
    v9 = *MEMORY[0x1E69BABE8];
    v23[0] = *MEMORY[0x1E69BA680];
    v23[1] = v9;
    v10 = *MEMORY[0x1E69BB660];
    v24[0] = v8;
    v24[1] = v10;
    v23[2] = *MEMORY[0x1E69BA440];
    v24[2] = *MEMORY[0x1E69BA640];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    [v6 subject:v7 sendEvent:v11];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Presenting virtual card enrollment Oslo sheet", v20, 2u);
    }

    v11 = [objc_alloc(MEMORY[0x1E69B9348]) initWithPaymentPass:self->_paymentPass];
    v13 = [[PKPaymentAuthorizationViewController alloc] initWithPaymentRequest:v11];
    [(PKPaymentAuthorizationViewController *)v13 setDelegate:self];
    [(PKVirtualCardEnrollmentViewController *)self presentViewController:v13 animated:1 completion:0];
    v14 = MEMORY[0x1E69B8540];
    v15 = *MEMORY[0x1E69BB6F8];
    v16 = *MEMORY[0x1E69BA6F0];
    v17 = *MEMORY[0x1E69BABE8];
    v21[0] = *MEMORY[0x1E69BA680];
    v21[1] = v17;
    v18 = *MEMORY[0x1E69BB668];
    v22[0] = v16;
    v22[1] = v18;
    v21[2] = *MEMORY[0x1E69BA440];
    v22[2] = *MEMORY[0x1E69BA500];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    [v14 subject:v15 sendEvent:v19];
  }
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v12[3] = *MEMORY[0x1E69E9840];
  delegate = [(PKVirtualCardEnrollmentViewController *)self delegate];
  [delegate virtualCardEnrollmentViewController:self didCompleteWithSuccess:0];

  v5 = MEMORY[0x1E69B8540];
  v6 = *MEMORY[0x1E69BB6F8];
  v7 = *MEMORY[0x1E69BA6F0];
  v8 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v8;
  v9 = *MEMORY[0x1E69BB668];
  v12[0] = v7;
  v12[1] = v9;
  v11[2] = *MEMORY[0x1E69BA440];
  v12[2] = *MEMORY[0x1E69BAB20];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v5 subject:v6 sendEvent:v10];
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  v12[3] = *MEMORY[0x1E69E9840];
  delegate = [(PKVirtualCardEnrollmentViewController *)self delegate];
  [delegate virtualCardEnrollmentViewController:self didCompleteWithSuccess:0];

  v5 = MEMORY[0x1E69B8540];
  v6 = *MEMORY[0x1E69BB6F8];
  v7 = *MEMORY[0x1E69BA6F0];
  v8 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v8;
  v9 = *MEMORY[0x1E69BB668];
  v12[0] = v7;
  v12[1] = v9;
  v11[2] = *MEMORY[0x1E69BA440];
  v12[2] = *MEMORY[0x1E69BA638];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v5 subject:v6 sendEvent:v10];
}

- (void)paymentAuthorizationViewController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  handlerCopy = handler;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Finished virtual card enrollment", v10, 2u);
  }

  self->_state = 1;
  [(PKExplanationViewController *)self setShowCloseButton:0];
  v8 = objc_alloc(MEMORY[0x1E69B8B80]);
  v9 = [v8 initWithStatus:0 errors:MEMORY[0x1E695E0F0]];
  handlerCopy[2](handlerCopy, v9);
}

- (void)paymentAuthorizationViewControllerDidFinish:(id)finish
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__PKVirtualCardEnrollmentViewController_paymentAuthorizationViewControllerDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [(PKVirtualCardEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

void *__85__PKVirtualCardEnrollmentViewController_paymentAuthorizationViewControllerDidFinish___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[139] == 1)
  {
    return [result waitForPassToUpdate];
  }

  return result;
}

- (PKVirtualCardEnrollmentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end