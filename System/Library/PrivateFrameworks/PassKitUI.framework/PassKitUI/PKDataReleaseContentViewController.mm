@interface PKDataReleaseContentViewController
- (BOOL)_showMerchant;
- (BOOL)shouldShowPhysicalButton;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (PKDataReleaseContentViewController)initWithRequest:(id)request;
- (PKDataReleaseContentViewControllerDelegate)delegate;
- (id)_layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (id)_merchantName;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)_configureFooterViewConfirmationTitle;
- (void)_finishedRemovingDoublePressCredentialWithError:(id)error;
- (void)_reloadMerchantHeader;
- (void)_startEvaluationWithExternalizedContext:(id)context;
- (void)_startInitialEvaluation;
- (void)_updatePhysicalButtonState;
- (void)_updatePreferredContentSize;
- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event;
- (void)authorizationFooterViewPasscodeButtonPressed:(id)pressed;
- (void)dataReleaseCompletedWithError:(id)error;
- (void)dealloc;
- (void)dismissPasscodeViewController;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)presentPasscodeToExitLockout;
- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply;
- (void)setIdleTimerDisabled:(BOOL)disabled;
- (void)userDidTapClose;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKDataReleaseContentViewController

- (PKDataReleaseContentViewController)initWithRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3042000000;
    v39 = __Block_byref_object_copy__51;
    v40 = __Block_byref_object_dispose__51;
    v41 = 0;
    v6 = objc_alloc(MEMORY[0x1E69DC808]);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __54__PKDataReleaseContentViewController_initWithRequest___block_invoke;
    v35[3] = &unk_1E80139C0;
    v35[4] = &v36;
    v7 = [v6 initWithSectionProvider:v35];
    v34.receiver = self;
    v34.super_class = PKDataReleaseContentViewController;
    self = [(PKDataReleaseContentViewController *)&v34 initWithCollectionViewLayout:v7];
    if (self)
    {
      objc_storeWeak(v37 + 5, self);
      objc_storeStrong(&self->_request, request);
      v8 = objc_alloc_init(MEMORY[0x1E69BC740]);
      authenticator = self->_authenticator;
      self->_authenticator = v8;

      [(PKAuthenticator *)self->_authenticator setDelegate:self];
      v10 = [PKISO180135RecognizedElements alloc];
      releasedData = [requestCopy releasedData];
      documentType = [releasedData documentType];
      releasedData2 = [requestCopy releasedData];
      elements = [releasedData2 elements];
      v15 = [(PKISO180135RecognizedElements *)v10 initWithDocumentType:documentType documentElements:elements];
      recognizedElements = self->_recognizedElements;
      self->_recognizedElements = v15;

      if (!self->_recognizedElements)
      {
        selfCopy = 0;
        goto LABEL_10;
      }

      releasedData3 = [requestCopy releasedData];
      dataToRelease = self->_dataToRelease;
      self->_dataToRelease = releasedData3;

      v19 = self->_dataToRelease;
      dataElements = [(PKISO180135RecognizedElements *)self->_recognizedElements dataElements];
      [(PKTransactionReleasedData *)v19 setElements:dataElements];

      v21 = [[PKPaymentTransactionIconGenerator alloc] initWithCache:1 scale:PKUIScreenScale()];
      iconGenerator = self->_iconGenerator;
      self->_iconGenerator = v21;

      iconData = [requestCopy iconData];

      if (iconData)
      {
        v24 = objc_alloc(MEMORY[0x1E69DCAB8]);
        iconData = [requestCopy iconData];
        v25 = [v24 initWithData:iconData];
        merchantIcon = self->_merchantIcon;
        self->_merchantIcon = v25;

        LOBYTE(iconData) = self->_merchantIcon != 0;
      }

      v27 = objc_alloc_init(PKDataReleaseEntityResolver);
      entityResolver = self->_entityResolver;
      self->_entityResolver = v27;

      v29 = self->_entityResolver;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __54__PKDataReleaseContentViewController_initWithRequest___block_invoke_2;
      v32[3] = &unk_1E80204D0;
      v32[4] = &v36;
      v33 = iconData;
      [(PKDataReleaseEntityResolver *)v29 resolveEntityForRequest:requestCopy completion:v32];
    }

    selfCopy = self;
LABEL_10:

    _Block_object_dispose(&v36, 8);
    objc_destroyWeak(&v41);
    goto LABEL_11;
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

id __54__PKDataReleaseContentViewController_initWithRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 40));
  v7 = [WeakRetained _layoutSectionAtIndex:a2 layoutEnvironment:v5];

  return v7;
}

void __54__PKDataReleaseContentViewController_initWithRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKDataReleaseContentViewController_initWithRequest___block_invoke_3;
  block[3] = &unk_1E801B538;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__PKDataReleaseContentViewController_initWithRequest___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v4 = WeakRetained[140];
    if (v4)
    {
      v5 = [*(a1 + 32) displayName];
      v6 = [v4 displayName];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = 1;
        if (v7 && v8)
        {
          v10 = [v7 isEqualToString:v8] ^ 1;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong(v3 + 140, *(a1 + 32));
    if ([*(a1 + 32) isValid])
    {
      v11 = objc_loadWeakRetained(v3 + 147);
      [v11 dataReleaseContentViewController:v3 didResolveToMerchant:*(a1 + 32)];
    }

    if (*(a1 + 48))
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = v3[139];
      v13 = v3[137];
      v14 = *(a1 + 32);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __54__PKDataReleaseContentViewController_initWithRequest___block_invoke_4;
      v21 = &unk_1E80204A8;
      v22 = v3;
      v23 = *(a1 + 32);
      v15 = [v13 iconForMerchant:v14 size:0 ignoreLogoURL:0 requestType:&v18 iconHandler:{54.0, 54.0}];
      v16 = v3[139];
      v3[139] = v15;

      if (v10)
      {
      }

      else
      {
        v17 = v3[139];

        if (v12 == v17)
        {
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    [v3 _reloadMerchantHeader];
    goto LABEL_20;
  }

LABEL_21:
}

void __54__PKDataReleaseContentViewController_initWithRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKDataReleaseContentViewController_initWithRequest___block_invoke_5;
    block[3] = &unk_1E8010A88;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __54__PKDataReleaseContentViewController_initWithRequest___block_invoke_5(uint64_t a1)
{
  result = [*(*(a1 + 32) + 1120) isEqual:*(a1 + 40)];
  if (result)
  {
    objc_storeStrong((*(a1 + 32) + 1112), *(a1 + 48));
    v3 = *(a1 + 32);

    return [v3 _reloadMerchantHeader];
  }

  return result;
}

- (void)dealloc
{
  [(PKAuthenticator *)self->_authenticator invalidate];
  [(PKAuthenticator *)self->_authenticator setDelegate:0];
  [(PKDataReleaseContentViewController *)self setIdleTimerDisabled:0];
  accessControl = self->_accessControl;
  if (accessControl)
  {
    CFRelease(accessControl);
  }

  [(LAContext *)self->_localAuthenticationContext invalidate];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] pkui_resetSharedRootAuthenticationContext];

  v5.receiver = self;
  v5.super_class = PKDataReleaseContentViewController;
  [(PKDataReleaseContentViewController *)&v5 dealloc];
}

- (void)setIdleTimerDisabled:(BOOL)disabled
{
  idleTimerAssertion = self->_idleTimerAssertion;
  if (disabled)
  {
    if (!idleTimerAssertion)
    {
      v5 = [[PKIdleTimerAssertion alloc] initWithReason:@"ID Presentment"];
      v6 = self->_idleTimerAssertion;
      self->_idleTimerAssertion = v5;
    }

    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    idleTimer = self->_idleTimer;
    self->_idleTimer = v7;

    v9 = self->_idleTimer;
    v10 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v11 = self->_idleTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __59__PKDataReleaseContentViewController_setIdleTimerDisabled___block_invoke;
    handler[3] = &unk_1E8010970;
    handler[4] = self;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(self->_idleTimer);
  }

  else
  {
    [(PKIdleTimerAssertion *)idleTimerAssertion invalidate];
    v12 = self->_idleTimerAssertion;
    self->_idleTimerAssertion = 0;

    v13 = self->_idleTimer;
    if (v13)
    {
      dispatch_source_cancel(v13);
      v14 = self->_idleTimer;
      self->_idleTimer = 0;
    }
  }
}

- (void)viewDidLoad
{
  v28[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKDataReleaseContentViewController;
  [(PKDataReleaseContentViewController *)&v26 viewDidLoad];
  view = [(PKDataReleaseContentViewController *)self view];
  navigationItem = [(PKDataReleaseContentViewController *)self navigationItem];
  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = PKLocalizedString(&cfstr_Wallet_1.isa);
  v27 = *MEMORY[0x1E69DB648];
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB970]);
  v28[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v9 = [v5 initWithString:v6 attributes:v8];
  [navigationItem setAttributedTitle:v9];

  [navigationItem setStyle:2];
  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel_userDidTapClose];
  [navigationItem setRightBarButtonItem:v10];

  collectionView = [(PKDataReleaseContentViewController *)self collectionView];
  [collectionView setAlwaysBounceVertical:0];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"dataReleaseElementsCellIdentifier"];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"dataReleaseRelyingPartyCellIdentifier"];
  v12 = [[PKPaymentAuthorizationLayout alloc] initWithStyle:1 paymentRequest:0];
  v13 = [PKPaymentAuthorizationFooterView alloc];
  v14 = [(PKPaymentAuthorizationFooterView *)v13 initWithFrame:v12 layout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  footerView = self->_footerView;
  self->_footerView = v14;

  [(PKPaymentAuthorizationFooterView *)self->_footerView setCompletionStyle:1];
  -[PKPaymentAuthorizationFooterView setUserIntentStyle:](self->_footerView, "setUserIntentStyle:", [MEMORY[0x1E69BC740] userIntentStyle]);
  [(PKPaymentAuthorizationFooterView *)self->_footerView setDelegate:self];
  v16 = self->_footerView;
  if (PKPearlIsAvailable())
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  [(PKPaymentAuthorizationFooterView *)v16 setState:v17 string:0 animated:0];
  v18 = self->_footerView;
  v19 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_0.isa);
  [(PKPaymentAuthorizationFooterView *)v18 setBiometricConfirmationTitle:v19];

  v20 = self->_footerView;
  v21 = PKLocalizedIdentityString(&cfstr_PresentmentFoo.isa);
  [(PKPaymentAuthorizationFooterView *)v20 setConfirmationTitle:v21];

  v22 = self->_footerView;
  v23 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_1.isa);
  [(PKPaymentAuthorizationFooterView *)v22 setAuthorizingTitle:v23];

  [(PKDataReleaseContentViewController *)self _configureFooterViewConfirmationTitle];
  [(PKPaymentAuthorizationFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:1];
  [(PKPaymentAuthorizationFooterView *)self->_footerView setHidesSeparatorView:1];
  [(PKPaymentAuthorizationFooterView *)self->_footerView setPreventPasscodeFallbackForBiometricFailure:1];
  v24 = self->_footerView;
  v25 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:collectionView edge:4 style:0];
  [(PKPaymentAuthorizationFooterView *)v24 addInteraction:v25];

  [view addSubview:self->_footerView];
  [(PKDataReleaseContentViewController *)self _startInitialEvaluation];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKDataReleaseContentViewController;
  [(PKDataReleaseContentViewController *)&v4 viewWillAppear:appear];
  [(PKDataReleaseContentViewController *)self _updatePreferredContentSize];
}

- (void)viewDidAppear:(BOOL)appear
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PKDataReleaseContentViewController;
  [(PKDataReleaseContentViewController *)&v22 viewDidAppear:appear];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:*MEMORY[0x1E69BA818] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v4 setObject:*MEMORY[0x1E69BA4F0] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  isTrustedRelyingParty = [(PKISO18013DataReleaseRequest *)self->_request isTrustedRelyingParty];
  v6 = isTrustedRelyingParty;
  if (isTrustedRelyingParty)
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  [v4 setObject:v7 forKeyedSubscript:@"authenticatedTerminal"];
  if (PKLocationServicesEnabled())
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  [v4 setObject:v8 forKeyedSubscript:@"locationSet"];
  if ((v6 & 1) == 0)
  {
    analyticsIdentifier = [(PKISO18013DataReleaseRequest *)self->_request analyticsIdentifier];
    [v4 setObject:analyticsIdentifier forKeyedSubscript:@"relyingPartyID"];

    analyticsOrganizationName = [(PKISO18013DataReleaseRequest *)self->_request analyticsOrganizationName];
    [v4 setObject:analyticsOrganizationName forKeyedSubscript:@"relyingPartyName"];
  }

  releasedData = [(PKISO18013DataReleaseRequest *)self->_request releasedData];
  certificateData = [releasedData certificateData];
  v13 = [certificateData length];

  v14 = @"presentmentReaderType";
  if (v13)
  {
    [v4 setObject:@"tapToVerify" forKeyedSubscript:@"presentmentReaderType"];
    isDisplayOnly = [(PKISO180135RecognizedElements *)self->_recognizedElements isDisplayOnly];
    v16 = PKAnalyticsReportDataTransferTypeDisplayOnly;
    if (!isDisplayOnly)
    {
      v16 = PKAnalyticsReportDataTransferTypeDataTransfer;
    }

    v17 = *v16;
    v14 = @"dataTransferType";
  }

  else
  {
    v17 = @"other";
  }

  [v4 setObject:v17 forKeyedSubscript:v14];
  v18 = MEMORY[0x1E69B8540];
  v19 = *MEMORY[0x1E69BB718];
  v23[0] = *MEMORY[0x1E69BB6C0];
  v23[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v18 subjects:v20 sendEvent:v4];

  [(PKDataReleaseContentViewController *)self _updatePreferredContentSize];
  collectionView = [(PKDataReleaseContentViewController *)self collectionView];
  [collectionView flashScrollIndicators];

  [(PKDataReleaseContentViewController *)self setIdleTimerDisabled:1];
  if (!self->_hasPlayedHaptics)
  {
    AudioServicesPlaySystemSound(0x487u);
    self->_hasPlayedHaptics = 1;
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKDataReleaseContentViewController;
  [(PKDataReleaseContentViewController *)&v8 viewWillDisappear:disappear];
  [(PKDataReleaseContentViewController *)self setIdleTimerDisabled:0];
  if ([(PKPaymentAuthorizationFooterView *)self->_footerView state]!= 12 && [(PKPaymentAuthorizationFooterView *)self->_footerView state]!= 13)
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB718];
    v11[0] = *MEMORY[0x1E69BB6C0];
    v11[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v9 = *MEMORY[0x1E69BA678];
    v10 = @"userCancelled";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v4 subjects:v6 sendEvent:v7];
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKDataReleaseContentViewController;
  [(PKDataReleaseContentViewController *)&v4 viewWillLayoutSubviews];
  ++self->_layoutRecursionCounter;
  view = [(PKDataReleaseContentViewController *)self view];
  [view bounds];
  [(PKDataReleaseContentViewController *)self _layoutWithBounds:?];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKDataReleaseContentViewController;
  [(PKDataReleaseContentViewController *)&v4 viewDidLayoutSubviews];
  v3 = self->_layoutRecursionCounter - 1;
  self->_layoutRecursionCounter = v3;
  if (!v3)
  {
    [(PKDataReleaseContentViewController *)self _updatePreferredContentSize];
  }
}

- (void)viewLayoutMarginsDidChange
{
  v7.receiver = self;
  v7.super_class = PKDataReleaseContentViewController;
  [(PKDataReleaseContentViewController *)&v7 viewLayoutMarginsDidChange];
  view = [(PKDataReleaseContentViewController *)self view];
  [view directionalLayoutMargins];
  v5 = v4;

  navigationItem = [(PKDataReleaseContentViewController *)self navigationItem];
  [navigationItem _setMinimumContentMargins:{0.0, v5 + 4.0, 0.0, 0.0}];
}

- (void)_startInitialEvaluation
{
  externalizedAuthenticationContext = [(PKISO18013DataReleaseRequest *)self->_request externalizedAuthenticationContext];
  if (externalizedAuthenticationContext && (v4 = externalizedAuthenticationContext, IsAvailable = PKUserIntentIsAvailable(), v4, IsAvailable))
  {
    v6 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697ABE8], 0x40000000uLL, 0);
    SecAccessControlSetConstraints();
    self->_accessControl = v6;
    v7 = objc_alloc_init(MEMORY[0x1E696EE50]);
    localAuthenticationContext = self->_localAuthenticationContext;
    self->_localAuthenticationContext = v7;

    [(LAContext *)self->_localAuthenticationContext setUiDelegate:self];
    objc_initWeak(&location, self);
    v9 = self->_localAuthenticationContext;
    accessControl = self->_accessControl;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PKDataReleaseContentViewController__startInitialEvaluation__block_invoke;
    v11[3] = &unk_1E801AAE8;
    objc_copyWeak(&v12, &location);
    [(LAContext *)v9 evaluateAccessControl:accessControl operation:3 options:0 reply:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {

    [(PKDataReleaseContentViewController *)self _startEvaluationWithExternalizedContext:0];
  }
}

void __61__PKDataReleaseContentViewController__startInitialEvaluation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishedRemovingDoublePressCredentialWithError:v4];
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  replyCopy = reply;
  if (event == 5)
  {
    [(PKDataReleaseContentViewController *)self _finishedRemovingDoublePressCredentialWithError:0];
  }

  (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E0F8], 0);
}

- (void)_finishedRemovingDoublePressCredentialWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__PKDataReleaseContentViewController__finishedRemovingDoublePressCredentialWithError___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __86__PKDataReleaseContentViewController__finishedRemovingDoublePressCredentialWithError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 1160);
  if (!v2)
  {
    return;
  }

  [v2 invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1160);
  *(v3 + 1160) = 0;

  v5 = *(*(a1 + 32) + 1168);
  if (v5)
  {
    CFRelease(v5);
    *(*(a1 + 32) + 1168) = 0;
  }

  v6 = *(a1 + 40);
  v7 = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *v13 = 138412290;
      *&v13[4] = v6;
      v9 = "Finished cleaning double press with error: %@";
      v10 = v7;
      v11 = 12;
LABEL_9:
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, v9, v13, v11);
    }
  }

  else if (v8)
  {
    *v13 = 0;
    v9 = "Successfully finished cleaning double press";
    v10 = v7;
    v11 = 2;
    goto LABEL_9;
  }

  if (*(a1 + 40))
  {
    v12 = 0;
  }

  else
  {
    v12 = [*(*(a1 + 32) + 1032) externalizedAuthenticationContext];
  }

  [*(*(a1 + 32) + 1032) setExternalizedAuthenticationContext:{0, *v13}];
  [*(a1 + 32) _startEvaluationWithExternalizedContext:v12];
}

- (void)_startEvaluationWithExternalizedContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  self->_authenticating = 1;
  self->_isInBioLockout = 0;
  v5 = [objc_alloc(MEMORY[0x1E69BC748]) initWithPolicy:9];
  [v5 setExternalizedContext:contextCopy];
  v6 = PKLocalizedIdentityString(&cfstr_PresentmentFoo.isa);
  [v5 setPasscodeTitle:v6];

  authenticationACL = [(PKISO18013DataReleaseRequest *)self->_request authenticationACL];
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!authenticationACL)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "No custom ACL provided for data release", buf, 2u);
    }

    goto LABEL_12;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Using custom ACL for data release", buf, 2u);
  }

  v15 = 0;
  v10 = SecAccessControlCreateFromData();
  v11 = v10;
  if (!v10)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v15;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Could not create access control ref from provided data with error %@", buf, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  [v5 setAccessControlRef:v10];
  CFRelease(v11);
  if (([MEMORY[0x1E69BC740] currentStateForAccessControl:v11] & 6) == 0)
  {
    [(PKPaymentAuthorizationFooterView *)self->_footerView setPreventBiometricStateFallbacks:1];
  }

LABEL_13:
  objc_initWeak(buf, self);
  authenticator = self->_authenticator;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PKDataReleaseContentViewController__startEvaluationWithExternalizedContext___block_invoke;
  v13[3] = &unk_1E80122B0;
  objc_copyWeak(&v14, buf);
  [(PKAuthenticator *)authenticator evaluateRequest:v5 withCompletion:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __78__PKDataReleaseContentViewController__startEvaluationWithExternalizedContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__PKDataReleaseContentViewController__startEvaluationWithExternalizedContext___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __78__PKDataReleaseContentViewController__startEvaluationWithExternalizedContext___block_invoke_2(uint64_t a1)
{
  v61[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_24;
  }

  *(WeakRetained + 1128) = 0;
  v4 = [*(a1 + 32) result];
  if (v4 <= 3)
  {
    if ((v4 - 2) >= 2)
    {
      if (v4)
      {
        if (v4 == 1)
        {
          v5 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Authentication canceled by user.", buf, 2u);
          }

          v6 = MEMORY[0x1E69B8540];
          v7 = *MEMORY[0x1E69BB718];
          v58[0] = *MEMORY[0x1E69BB6C0];
          v58[1] = v7;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
          v56 = *MEMORY[0x1E69BA680];
          v57 = *MEMORY[0x1E69BA6B8];
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          [v6 subjects:v8 sendEvent:v9];

          [v3 _startEvaluationWithExternalizedContext:0];
        }
      }

      else
      {
        v32 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v32, OS_LOG_TYPE_DEFAULT, "Authentication successful.", buf, 2u);
        }

        v33 = MEMORY[0x1E69B8540];
        v34 = *MEMORY[0x1E69BB718];
        v61[0] = *MEMORY[0x1E69BB6C0];
        v61[1] = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
        v59 = *MEMORY[0x1E69BA680];
        v60 = *MEMORY[0x1E69BA6D0];
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        [v33 subjects:v35 sendEvent:v36];

        if ([*(a1 + 32) biometricMatch])
        {
          [MEMORY[0x1E69BC758] invokeSuccessFeedback];
          if (PKSystemApertureIsAvailable())
          {
            v37 = 10;
          }

          else
          {
            v37 = 8;
          }

          [v3[130] setState:v37];
        }

        [v3[130] setState:11];
        v38 = objc_loadWeakRetained(v3 + 147);
        v39 = [*(a1 + 32) credential];
        [v38 dataReleaseContentViewController:v3 didAuthorizeWithExternalAuthorizationData:v39 dataToRelease:v3[135]];
      }

      goto LABEL_24;
    }

    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Authentication canceled by app.", buf, 2u);
    }

    v11 = MEMORY[0x1E69B8540];
    v20 = *MEMORY[0x1E69BB718];
    v55[0] = *MEMORY[0x1E69BB6C0];
    v55[1] = v20;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v53 = *MEMORY[0x1E69BA680];
    v54 = *MEMORY[0x1E69BA6B0];
    v14 = MEMORY[0x1E695DF20];
    v15 = &v54;
    v16 = &v53;
    goto LABEL_22;
  }

  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      v22 = [MEMORY[0x1E696AE30] processInfo];
      v23 = [v22 processName];
      v24 = [v22 processIdentifier];
      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v47 = v23;
        v48 = 2048;
        v49 = v24;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Authentication by %@[%ld] preempted by another process.", buf, 0x16u);
      }

      v26 = MEMORY[0x1E69B8540];
      v27 = *MEMORY[0x1E69BB718];
      v45[0] = *MEMORY[0x1E69BB6C0];
      v45[1] = v27;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
      v43 = *MEMORY[0x1E69BA680];
      v44 = *MEMORY[0x1E69BA6C8];
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      [v26 subjects:v28 sendEvent:v29];

      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PassKitUI.PKDataReleaseError" code:1 userInfo:0];
      [v3 dataReleaseCompletedWithError:v30];

      goto LABEL_23;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Failed to authenticate", buf, 2u);
    }

    v11 = MEMORY[0x1E69B8540];
    v12 = *MEMORY[0x1E69BB718];
    v42[0] = *MEMORY[0x1E69BB6C0];
    v42[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v40 = *MEMORY[0x1E69BA680];
    v41 = *MEMORY[0x1E69BA6C0];
    v14 = MEMORY[0x1E695DF20];
    v15 = &v41;
    v16 = &v40;
LABEL_22:
    v21 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{1, v40, v41}];
    [v11 subjects:v13 sendEvent:v21];

    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PassKitUI.PKDataReleaseError" code:1 userInfo:0];
    [v3 dataReleaseCompletedWithError:v22];
LABEL_23:

    goto LABEL_24;
  }

  if (v4 != 6)
  {
    if (v4 != 7)
    {
      goto LABEL_24;
    }

    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Authentication selected fallback - this is not supported", buf, 2u);
    }

    v11 = MEMORY[0x1E69B8540];
    v18 = *MEMORY[0x1E69BB718];
    v52[0] = *MEMORY[0x1E69BB6C0];
    v52[1] = v18;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v50 = *MEMORY[0x1E69BA680];
    v51 = *MEMORY[0x1E69BA6B0];
    v14 = MEMORY[0x1E695DF20];
    v15 = &v51;
    v16 = &v50;
    goto LABEL_22;
  }

  v31 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v31, OS_LOG_TYPE_DEFAULT, "Authentication biolockout occured, prompting for passcode", buf, 2u);
  }

  [v3[130] setState:4];
  *(v3 + 1130) = 1;
  [v3 _updatePhysicalButtonState];
  if (*(v3 + 1129) == 1)
  {
    *(v3 + 1129) = 0;
    [v3 presentPasscodeToExitLockout];
  }

LABEL_24:
}

- (BOOL)shouldShowPhysicalButton
{
  if (self->_isInBioLockout)
  {
    return 0;
  }

  if ([MEMORY[0x1E69BC740] userIntentStyle] != 1)
  {
    return 0;
  }

  if ([(PKAuthenticator *)self->_authenticator evaluationState]== 3)
  {
    return 1;
  }

  return [(PKPaymentAuthorizationFooterView *)self->_footerView state]== 3;
}

- (void)_updatePhysicalButtonState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained dataReleaseContentViewControllerDidChangePhysicalButtonState:self];
    WeakRetained = v4;
  }
}

- (void)_updatePreferredContentSize
{
  if (!self->_layoutRecursionCounter)
  {
    self->_isTemplateLayout = 1;
    view = [(PKDataReleaseContentViewController *)self view];
    [view bounds];
    [(PKDataReleaseContentViewController *)self _layoutWithBounds:?];
    v6 = v5;
    v8 = v7;

    self->_isTemplateLayout = 0;

    [(PKDataReleaseContentViewController *)self setPreferredContentSize:v6, v8];
  }
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  collectionView = [(PKDataReleaseContentViewController *)self collectionView];
  [collectionView adjustedContentInset];
  v21 = v9;
  [collectionView contentSize];
  v11 = v10;
  [(PKPaymentAuthorizationFooterView *)self->_footerView systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
  v13 = v12;
  navigationController = [(PKDataReleaseContentViewController *)self navigationController];
  view = [navigationController view];
  [view safeAreaInsets];
  v17 = v16;

  if (v13 - v17 >= 0.0)
  {
    v18 = v13 - v17;
  }

  else
  {
    v18 = 0.0;
  }

  [(PKDataReleaseContentViewController *)self setAdditionalSafeAreaInsets:0.0, 0.0, v18, 0.0];
  if (!self->_isTemplateLayout)
  {
    memset(&slice, 0, sizeof(slice));
    remainder.origin.x = x;
    remainder.origin.y = y;
    remainder.size.width = width;
    remainder.size.height = height;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectDivide(v25, &slice, &remainder, v13, CGRectMaxYEdge);
    [(PKPaymentAuthorizationFooterView *)self->_footerView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  v19 = width;
  v20 = v21 + 0.0 + v11 + v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)dataReleaseCompletedWithError:(id)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  objc_initWeak(&location, self);
  if (errorCopy)
  {
    v5 = 13;
  }

  else
  {
    v5 = 12;
  }

  domain = [errorCopy domain];
  if (domain != @"PassKitUI.PKDataReleaseError")
  {
    v7 = domain;
    if (domain)
    {
      v8 = [(__CFString *)domain isEqualToString:@"PassKitUI.PKDataReleaseError"];

      if (v8)
      {
        goto LABEL_7;
      }

      v7 = 0;
    }

    v10 = @"other";
    goto LABEL_18;
  }

LABEL_7:
  code = [errorCopy code];
  v7 = 0;
  v10 = @"other";
  if (code > 2)
  {
    if (code == 3)
    {
      v7 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_2.isa);
      v10 = @"transactionFailed";
    }

    else if (code == 4)
    {
      v7 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_2.isa);
      v10 = @"sessionFailed";
    }
  }

  else if (code == 1)
  {
    v7 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_3.isa);
    v10 = @"authenticationFailed";
  }

  else if (code == 2)
  {
    v7 = 0;
    v10 = @"userCancelled";
  }

LABEL_18:
  v11 = MEMORY[0x1E69B8540];
  v12 = *MEMORY[0x1E69BB718];
  v27[0] = *MEMORY[0x1E69BB6C0];
  v27[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v14 = @"failure";
  if (!errorCopy)
  {
    v14 = @"success";
  }

  v15 = *MEMORY[0x1E69BA790];
  v16 = *MEMORY[0x1E69BAD20];
  v25[0] = *MEMORY[0x1E69BA680];
  v25[1] = v16;
  v26[0] = v15;
  v26[1] = v14;
  v17 = *MEMORY[0x1E69BA678];
  v25[2] = *MEMORY[0x1E69BABE8];
  v25[3] = v17;
  v26[2] = v16;
  v26[3] = v10;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  [v11 subjects:v13 sendEvent:v18];

  footerView = self->_footerView;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__PKDataReleaseContentViewController_dataReleaseCompletedWithError___block_invoke;
  v21[3] = &unk_1E80113B0;
  objc_copyWeak(&v23, &location);
  v20 = errorCopy;
  v22 = v20;
  [(PKPaymentAuthorizationFooterView *)footerView setState:v5 string:v7 animated:1 withCompletion:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __68__PKDataReleaseContentViewController_dataReleaseCompletedWithError___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PKDataReleaseContentViewController_dataReleaseCompletedWithError___block_invoke_2;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);

  objc_destroyWeak(&v5);
}

void __68__PKDataReleaseContentViewController_dataReleaseCompletedWithError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 147);
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v3 dataReleaseContentViewController:v4 didFinishWithError:*(a1 + 32)];
    }

    else
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }

    WeakRetained = v4;
  }
}

- (void)_configureFooterViewConfirmationTitle
{
  if (self->_footerView)
  {
    v3 = PKLocalizedIdentityString(&cfstr_PresentmentFoo.isa);
    authenticationACL = [(PKISO18013DataReleaseRequest *)self->_request authenticationACL];
    if (authenticationACL)
    {
      v5 = SecAccessControlCreateFromData();
      if (v5)
      {
        v6 = v5;
        if (([MEMORY[0x1E69BC740] currentStateForAccessControl:v5] & 8) != 0)
        {
          v7 = PKLocalizedIdentityString(&cfstr_PresentmentFoo_4.isa);

          v3 = v7;
        }

        CFRelease(v6);
      }
    }

    [(PKPaymentAuthorizationFooterView *)self->_footerView setConfirmationTitle:v3];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithReuseIdentifier:@"dataReleaseElementsCellIdentifier" forIndexPath:path];
  v6 = [_TtC9PassKitUI34PKIdentityDataReleaseConfiguration alloc];
  recognizedElements = self->_recognizedElements;
  _merchantName = [(PKDataReleaseContentViewController *)self _merchantName];
  v9 = [(PKIdentityDataReleaseConfiguration *)v6 initWithRecognizedElements:recognizedElements relyingPartyName:_merchantName];

  [v5 setDataReleaseConfiguration:v9];

  return v5;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v6 = [view dequeueReusableSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"dataReleaseRelyingPartyCellIdentifier" forIndexPath:path];
  v7 = [_TtC9PassKitUI42PKDataReleaseRelyingPartyCellConfiguration alloc];
  _merchantName = [(PKDataReleaseContentViewController *)self _merchantName];
  v9 = [(PKDataReleaseRelyingPartyCellConfiguration *)v7 initWithName:_merchantName icon:self->_merchantIcon];

  [v6 setConfiguration:v9];

  return v6;
}

- (id)_layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  v6 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  if ([(PKDataReleaseContentViewController *)self _showMerchant])
  {
    [v6 setHeaderMode:1];
  }

  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:environmentCopy];
  [v8 contentInsets];
  [v8 setContentInsets:0.0];

  return v8;
}

- (BOOL)_showMerchant
{
  rpIdentifier = [(PKISO18013DataReleaseRequest *)self->_request rpIdentifier];
  if ([rpIdentifier length])
  {
    _merchantName = [(PKDataReleaseContentViewController *)self _merchantName];
    v5 = _merchantName != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_merchantName
{
  displayName = [(PKMerchant *)self->_merchant displayName];
  v4 = [displayName length];

  if (v4)
  {
    displayName2 = [(PKMerchant *)self->_merchant displayName];
  }

  else
  {
    organizationName = [(PKISO18013DataReleaseRequest *)self->_request organizationName];
    v7 = [organizationName length];

    if (v7)
    {
      displayName2 = [(PKISO18013DataReleaseRequest *)self->_request organizationName];
    }

    else
    {
      displayName2 = 0;
    }
  }

  return displayName2;
}

- (void)_reloadMerchantHeader
{
  collectionView = [(PKDataReleaseContentViewController *)self collectionView];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [collectionView reloadSections:v2];
}

- (void)presentPasscodeToExitLockout
{
  objc_initWeak(&location, self);
  v3 = [objc_alloc(MEMORY[0x1E69BC748]) initWithPolicy:1];
  [v3 setPasscodeOnly:1];
  v4 = PKLocalizedIdentityString(&cfstr_PresentmentFoo.isa);
  [v3 setPasscodeTitle:v4];

  authenticator = self->_authenticator;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PKDataReleaseContentViewController_presentPasscodeToExitLockout__block_invoke;
  v6[3] = &unk_1E80122B0;
  objc_copyWeak(&v7, &location);
  [(PKAuthenticator *)authenticator evaluateRequest:v3 withCompletion:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

void __66__PKDataReleaseContentViewController_presentPasscodeToExitLockout__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PKDataReleaseContentViewController_presentPasscodeToExitLockout__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __66__PKDataReleaseContentViewController_presentPasscodeToExitLockout__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([*(a1 + 32) result])
    {
      v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PassKitUI.PKDataReleaseError" code:1 userInfo:0];
      [v4 dataReleaseCompletedWithError:v3];
    }

    else
    {
      [v4 _startEvaluationWithExternalizedContext:0];
    }

    WeakRetained = v4;
  }
}

- (void)userDidTapClose
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB718];
  v14[0] = *MEMORY[0x1E69BB6C0];
  v14[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v6 = *MEMORY[0x1E69BA6F0];
  v7 = *MEMORY[0x1E69BA440];
  v12[0] = *MEMORY[0x1E69BA680];
  v12[1] = v7;
  v8 = *MEMORY[0x1E69BA638];
  v13[0] = v6;
  v13[1] = v8;
  v12[2] = *MEMORY[0x1E69BABE8];
  v13[2] = *MEMORY[0x1E69BA4F0];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v3 subjects:v5 sendEvent:v9];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PassKitUI.PKDataReleaseError" code:2 userInfo:0];
    [WeakRetained dataReleaseContentViewController:self didFinishWithError:v11];
  }
}

- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event
{
  var1 = event.var1;
  var0 = event.var0;
  authenticatorCopy = authenticator;
  p_lastFailureWasUnboundBiometric = &self->_lastFailureWasUnboundBiometric;
  lastFailureWasUnboundBiometric = self->_lastFailureWasUnboundBiometric;
  v10 = self->_lastFailureWasUnboundBiometric;
  if (var0 == 2)
  {
    v10 = 0;
    *p_lastFailureWasUnboundBiometric = 0;
  }

  p_hasFailedBiometrics = &self->_lastFailureWasUnboundBiometric;
  if (var1 == 2)
  {
    goto LABEL_14;
  }

  if (var1 == 1 && !v10)
  {
    p_hasFailedBiometrics = &self->_hasFailedBiometrics;
LABEL_14:
    *p_hasFailedBiometrics = 1;
    if (PKPearlIsAvailable())
    {
      v15 = PKLocalizedPearlString(&cfstr_GenericPearlFa.isa);
      AudioServicesPlaySystemSound(0x573u);
      v12 = 13;
    }

    else
    {
      v15 = 0;
      v12 = 9;
    }

    goto LABEL_17;
  }

  v12 = PKPaymentProgressStateBaseStateForAuthenticatorEvaluationState(var0, [(PKPaymentAuthorizationFooterView *)self->_footerView state], 0, 0);
  IsAvailable = PKSystemApertureIsAvailable();
  v14 = 10;
  if (((0x1E5u >> v12) & 1) == 0)
  {
    v14 = v12;
  }

  if (v12 > 8)
  {
    v14 = v12;
  }

  v15 = 0;
  if (IsAvailable)
  {
    v12 = v14;
  }

LABEL_17:
  if ((PKPearlIsAvailable() & 1) == 0 && *p_lastFailureWasUnboundBiometric)
  {
    if (lastFailureWasUnboundBiometric)
    {
      v16 = @"PRESENTMENT_FOOTER_CONFIRM_TOUCHID_IDENTITY_FINGERPRINT";
    }

    else
    {
      v16 = @"PRESENTMENT_FOOTER_TOUCHID_WRONG_FINGERPRINT";
    }

    v17 = PKLocalizedIdentityString(&v16->isa);

    v15 = v17;
  }

  objc_initWeak(&location, self);
  footerView = self->_footerView;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__PKDataReleaseContentViewController_authenticator_didTransitionToEvaluationStateWithEvent___block_invoke;
  v19[3] = &unk_1E80204F8;
  objc_copyWeak(v20, &location);
  v20[1] = v12;
  [(PKPaymentAuthorizationFooterView *)footerView setState:v12 string:v15 animated:1 withCompletion:v19];
  [(PKDataReleaseContentViewController *)self _updatePhysicalButtonState];
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __92__PKDataReleaseContentViewController_authenticator_didTransitionToEvaluationStateWithEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 13)
  {
    v3 = WeakRetained;
    [WeakRetained[130] setState:3 string:0 animated:1];
    [v3 _updatePhysicalButtonState];
    WeakRetained = v3;
  }
}

- (void)authorizationFooterViewPasscodeButtonPressed:(id)pressed
{
  if (self->_authenticating)
  {
    [(PKAuthenticator *)self->_authenticator fallbackToSystemPasscodeUI];
  }

  else
  {
    [(PKDataReleaseContentViewController *)self presentPasscodeToExitLockout];
  }
}

- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply
{
  controllerCopy = controller;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeViewController);

  if (WeakRetained)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    objc_storeWeak(&self->_passcodeViewController, controllerCopy);
    [controllerCopy setModalPresentationStyle:5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __92__PKDataReleaseContentViewController_presentPasscodeViewController_completionHandler_reply___block_invoke;
    v10[3] = &unk_1E8010B50;
    v11 = handlerCopy;
    [(PKDataReleaseContentViewController *)self presentViewController:controllerCopy animated:1 completion:v10];
  }
}

uint64_t __92__PKDataReleaseContentViewController_presentPasscodeViewController_completionHandler_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)dismissPasscodeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeViewController);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    presentingViewController = [WeakRetained presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (PKDataReleaseContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end