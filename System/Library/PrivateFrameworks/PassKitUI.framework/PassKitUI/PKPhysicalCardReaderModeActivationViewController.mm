@interface PKPhysicalCardReaderModeActivationViewController
- (PKPhysicalCardReaderModeActivationViewController)initWithAccountService:(id)service account:(id)account accountUser:(id)user paymentPass:(id)pass physicalCard:(id)card;
- (void)_dismiss;
- (void)_invalidate;
- (void)_presentActivationWithActivationCode:(id)code;
- (void)_startTagReaderSession;
- (void)_stopTagReaderSession;
- (void)dealloc;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)nfcTagReaderSession:(id)session didDetectTags:(id)tags;
- (void)nfcTagReaderSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)nfcTagReaderSessionDidTimeout:(id)timeout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPhysicalCardReaderModeActivationViewController

- (PKPhysicalCardReaderModeActivationViewController)initWithAccountService:(id)service account:(id)account accountUser:(id)user paymentPass:(id)pass physicalCard:(id)card
{
  serviceCopy = service;
  accountCopy = account;
  userCopy = user;
  passCopy = pass;
  cardCopy = card;
  v21.receiver = self;
  v21.super_class = PKPhysicalCardReaderModeActivationViewController;
  v17 = [(PKExplanationViewController *)&v21 initWithContext:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountService, service);
    objc_storeStrong(&v18->_account, account);
    objc_storeStrong(&v18->_accountUser, user);
    objc_storeStrong(&v18->_physicalCard, card);
    objc_storeStrong(&v18->_paymentPass, pass);
    v18->_feature = [accountCopy feature];
    v18->_deviceSupportsReaderMode = +[PKPhysicalCardController deviceSupportsContactlessActivation];
    [(PKExplanationViewController *)v18 setShowCancelButton:1];
    [(PKExplanationViewController *)v18 setShowDoneButton:0];
  }

  return v18;
}

- (void)dealloc
{
  [(PKPhysicalCardReaderModeActivationViewController *)self _invalidate];
  v3.receiver = self;
  v3.super_class = PKPhysicalCardReaderModeActivationViewController;
  [(PKPhysicalCardReaderModeActivationViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PKPhysicalCardReaderModeActivationViewController;
  [(PKExplanationViewController *)&v15 viewDidLoad];
  v3 = objc_alloc_init(PKPhysicalCardActivationAnimationView);
  animationView = self->_animationView;
  self->_animationView = v3;

  v5 = self->_animationView;
  nameOnCard = [(PKPhysicalCard *)self->_physicalCard nameOnCard];
  [(PKPhysicalCardActivationAnimationView *)v5 setNameOnCard:nameOnCard];

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setDelegate:self];
  [explanationView setShowPrivacyView:0];
  [explanationView setForceShowSetupLaterButton:1];
  [explanationView setHeroView:self->_animationView];
  v8 = PKLocalizedFeatureString();
  [explanationView setTitleText:v8];

  v9 = PKLocalizedFeatureString();
  [explanationView setBodyText:v9];

  dockView = [explanationView dockView];
  [dockView setPrimaryButton:0];
  dockView2 = [explanationView dockView];
  footerView = [dockView2 footerView];

  setUpLaterButton = [footerView setUpLaterButton];
  v14 = PKLocalizedFeatureString();
  [setUpLaterButton setTitle:v14 forState:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPhysicalCardReaderModeActivationViewController;
  [(PKPhysicalCardReaderModeActivationViewController *)&v4 viewDidAppear:appear];
  [(PKPhysicalCardReaderModeActivationViewController *)self _startTagReaderSession];
  [(PKPhysicalCardActivationAnimationView *)self->_animationView startAnimation];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPhysicalCardReaderModeActivationViewController;
  [(PKPhysicalCardReaderModeActivationViewController *)&v4 viewWillDisappear:disappear];
  [(PKPhysicalCardReaderModeActivationViewController *)self _stopTagReaderSession];
}

- (void)nfcTagReaderSession:(id)session didDetectTags:(id)tags
{
  sessionCopy = session;
  tagsCopy = tags;
  firstObject = [tagsCopy firstObject];
  if (firstObject)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__PKPhysicalCardReaderModeActivationViewController_nfcTagReaderSession_didDetectTags___block_invoke;
    v9[3] = &unk_1E801BC98;
    objc_copyWeak(&v11, &location);
    v10 = firstObject;
    [sessionCopy readNDEFMessageFromTag:v10 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __86__PKPhysicalCardReaderModeActivationViewController_nfcTagReaderSession_didDetectTags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v6 = [(__CFString *)v3 stringByTrimmingCharactersInSet:v5];

  v7 = v6;
  v3 = v7;
  if (v7 == @"wallet://activate/nfc")
  {

LABEL_11:
    [WeakRetained _stopTagReaderSession];
    v10 = [*(a1 + 32) tagIdentifier];
    v11 = [v10 hexEncoding];

    if (v11)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86__PKPhysicalCardReaderModeActivationViewController_nfcTagReaderSession_didDetectTags___block_invoke_2;
      v12[3] = &unk_1E8010A10;
      v12[4] = WeakRetained;
      v13 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v8 = @"wallet://activate/nfc" == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {

    goto LABEL_14;
  }

  v9 = [(__CFString *)v7 isEqualToString:@"wallet://activate/nfc"];

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_14:
}

- (void)nfcTagReaderSessionDidEndUnexpectedly:(id)unexpectedly
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Error in physical card activation reader session. Dismissing...", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPhysicalCardReaderModeActivationViewController_nfcTagReaderSessionDidEndUnexpectedly___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__PKPhysicalCardReaderModeActivationViewController_nfcTagReaderSessionDidEndUnexpectedly___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopTagReaderSession];
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)nfcTagReaderSessionDidTimeout:(id)timeout
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Error in physical card activation reader session due to timeout. Dismissing...", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKPhysicalCardReaderModeActivationViewController_nfcTagReaderSessionDidTimeout___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__PKPhysicalCardReaderModeActivationViewController_nfcTagReaderSessionDidTimeout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopTagReaderSession];
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v5 = [[PKPhysicalCardSupportViewController alloc] initWithAccountService:self->_accountService account:self->_account accountUser:self->_accountUser paymentPass:self->_paymentPass physicalCard:self->_physicalCard];
  navigationController = [(PKPhysicalCardReaderModeActivationViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)_dismiss
{
  [(PKPhysicalCardReaderModeActivationViewController *)self _stopTagReaderSession];
  presentingViewController = [(PKPhysicalCardReaderModeActivationViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_startTagReaderSession
{
  if (!self->_invalidated && self->_deviceSupportsReaderMode)
  {
    if (self->_sessionHandle)
    {
      readerSession = self->_readerSession;
      if (readerSession)
      {

        [(PKNFCTagReaderSession *)readerSession startPolling];
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v4 = MEMORY[0x1E69B89D8];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __74__PKPhysicalCardReaderModeActivationViewController__startTagReaderSession__block_invoke;
      v7[3] = &unk_1E801BCC0;
      objc_copyWeak(&v8, &location);
      v5 = [v4 startReaderSessionWithCompletion:v7];
      sessionHandle = self->_sessionHandle;
      self->_sessionHandle = v5;

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __74__PKPhysicalCardReaderModeActivationViewController__startTagReaderSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKPhysicalCardReaderModeActivationViewController__startTagReaderSession__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __74__PKPhysicalCardReaderModeActivationViewController__startTagReaderSession__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && (WeakRetained[142] & 1) == 0)
  {
    v3 = a1[4];
    v9 = WeakRetained;
    if (v3)
    {
      objc_storeStrong(WeakRetained + 144, v3);
      [a1[4] setDelegate:v9];
      [a1[4] startPolling];
LABEL_5:
      WeakRetained = v9;
      goto LABEL_10;
    }

    v4 = [a1[5] domain];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nfcd"];
    v6 = [v4 isEqualToString:v5];

    WeakRetained = v9;
    if (v6)
    {
      v7 = [a1[5] code] == 50;
      WeakRetained = v9;
      if (v7)
      {
        v8 = PKCreateAlertControllerForNFCRadioDisabled();
        [v9 presentViewController:v8 animated:1 completion:0];

        goto LABEL_5;
      }
    }
  }

LABEL_10:
}

- (void)_stopTagReaderSession
{
  if (!self->_invalidated)
  {
    [(PKPaymentSessionHandle *)self->_sessionHandle invalidateSession];
    readerSession = self->_readerSession;
    self->_readerSession = 0;

    sessionHandle = self->_sessionHandle;
    self->_sessionHandle = 0;
  }
}

- (void)_presentActivationWithActivationCode:(id)code
{
  codeCopy = code;
  v6 = [[PKPhysicalCardManualActivationViewController alloc] initWithAccountService:self->_accountService account:self->_account accountUser:self->_accountUser paymentPass:self->_paymentPass physicalCard:self->_physicalCard activationCode:codeCopy];

  navigationController = [(PKPhysicalCardReaderModeActivationViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (void)_invalidate
{
  if (!self->_invalidated)
  {
    [(PKPhysicalCardReaderModeActivationViewController *)self _stopTagReaderSession];
    self->_invalidated = 1;
  }
}

@end