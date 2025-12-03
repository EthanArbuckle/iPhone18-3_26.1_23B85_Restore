@interface PKContinuityPaymentViewController
- (BOOL)_updateActiveConstraints;
- (BOOL)paymentAuthorizationStateMachine:(id)machine didTransitionFromState:(unint64_t)state toState:(unint64_t)toState withParam:(id)param;
- (BOOL)paymentPass:(id *)pass paymentApplication:(id *)application fromAID:(id)d selectedPaymentMethodType:(unint64_t)type;
- (CGRect)_physicalButtonRectForCoordinateSpace:(id)space;
- (PKContinuityPaymentViewController)initWithRemotePaymentRequest:(id)request;
- (PKPaymentAuthorizationHostProtocol)delegate;
- (id)_evaluationRequestWithHasInitialAuthenticatorState:(BOOL)state initialAuthenticatorState:(unint64_t)authenticatorState;
- (id)_formattedDateRangeWithStartDate:(id)date endDate:(id)endDate;
- (int64_t)_authenticatorPolicy;
- (int64_t)_progressStateForAuthenticationWithBiometricFailure:(BOOL)failure;
- (void)_cancelPassphrasePressed;
- (void)_didCancel;
- (void)_didFailWithError:(id)error;
- (void)_didFailWithFatalError:(id)error;
- (void)_didSucceedWithAuthorizationStateParam:(id)param;
- (void)_invalidPaymentDataWithParam:(id)param;
- (void)_layoutAnimated;
- (void)_processClientCallback:(id)callback;
- (void)_resetAndScheduleTimeout;
- (void)_resumeAuthenticationWithPreviousError:(id)error;
- (void)_setAuthenticating:(BOOL)authenticating;
- (void)_setPasscodeViewController:(id)controller;
- (void)_setPassphraseViewController:(id)controller;
- (void)_setUserIntentRequired:(BOOL)required;
- (void)_startEvaluationWithHasInitialAuthenticatorState:(BOOL)state initialAuthenticatorState:(unint64_t)authenticatorState;
- (void)_suspendAuthentication;
- (void)_timeoutFired;
- (void)_updateCardView;
- (void)_updateCoachingState;
- (void)_updateFootnoteLabelWithTotalSummaryItem:(id)item;
- (void)_updatePendingTransaction:(id)transaction withAuthorizationStateParam:(id)param;
- (void)_updatePriceLabelWithTotalSummaryItem:(id)item;
- (void)_updateProgressStateIfAuthenticatingWithBiometricFailure:(BOOL)failure;
- (void)_updateUserIntentRequired;
- (void)_updateUserIntentStyle;
- (void)authenticator:(id)authenticator didTransitionToCoachingState:(int64_t)state;
- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event;
- (void)authorizationFooterViewDidChangeConstraints:(id)constraints;
- (void)authorizationFooterViewPasscodeButtonPressed:(id)pressed;
- (void)cancelPressed:(id)pressed;
- (void)dealloc;
- (void)dismissPasscodeViewController;
- (void)dismissPassphraseViewController;
- (void)invalidate;
- (void)loadView;
- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply;
- (void)presentPassphraseViewController:(id)controller completionHandler:(id)handler reply:(id)reply;
- (void)setProgressState:(int64_t)state string:(id)string animated:(BOOL)animated withCompletion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePaymentWithClientUpdate:(id)update;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PKContinuityPaymentViewController

- (PKContinuityPaymentViewController)initWithRemotePaymentRequest:(id)request
{
  requestCopy = request;
  v40.receiver = self;
  v40.super_class = PKContinuityPaymentViewController;
  v6 = [(PKContinuityPaymentViewController *)&v40 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteRequest, request);
    v8 = objc_alloc_init(MEMORY[0x1E69BC740]);
    authenticator = v7->_authenticator;
    v7->_authenticator = v8;

    [(PKAuthenticator *)v7->_authenticator setDelegate:v7];
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    context = [mEMORY[0x1E69B8EF8] context];
    configuration = [context configuration];
    contactFormatConfiguration = [configuration contactFormatConfiguration];

    v14 = [objc_alloc(MEMORY[0x1E69B8730]) initWithConfiguration:contactFormatConfiguration];
    v15 = objc_alloc_init(MEMORY[0x1E69B8B88]);
    stateMachine = v7->_stateMachine;
    v7->_stateMachine = v15;

    [(PKPaymentAuthorizationStateMachine *)v7->_stateMachine setDelegate:v7];
    v17 = objc_alloc_init(MEMORY[0x1E69B8B68]);
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    [v17 setPeerPaymentService:mEMORY[0x1E69B9000]];

    paymentRequest = [(PKRemotePaymentRequest *)v7->_remoteRequest paymentRequest];
    [v17 setPaymentRequest:paymentRequest];

    device = [(PKRemotePaymentRequest *)v7->_remoteRequest device];
    [v17 setRemoteDevice:device];

    [v17 setContactFormatValidator:v14];
    [(PKPaymentAuthorizationStateMachine *)v7->_stateMachine setModel:v17];
    v21 = v7->_stateMachine;
    mEMORY[0x1E69B8EF8]2 = [MEMORY[0x1E69B8EF8] sharedService];
    [(PKPaymentAuthorizationStateMachine *)v21 setPaymentWebService:mEMORY[0x1E69B8EF8]2];

    v23 = v7->_stateMachine;
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    [(PKPaymentAuthorizationStateMachine *)v23 setPaymentService:paymentService];

    v25 = v7->_stateMachine;
    v26 = objc_alloc_init(MEMORY[0x1E69B8538]);
    [(PKPaymentAuthorizationStateMachine *)v25 setAggregateDictionary:v26];

    selectedApplicationIdentifier = [(PKRemotePaymentRequest *)v7->_remoteRequest selectedApplicationIdentifier];
    if (selectedApplicationIdentifier)
    {
      v28 = selectedApplicationIdentifier;
      v38 = 0;
      v39 = 0;
      selectedApplicationIdentifier2 = [(PKRemotePaymentRequest *)v7->_remoteRequest selectedApplicationIdentifier];
      v30 = [(PKContinuityPaymentViewController *)v7 paymentPass:&v39 paymentApplication:&v38 fromAID:selectedApplicationIdentifier2 selectedPaymentMethodType:[(PKRemotePaymentRequest *)v7->_remoteRequest selectedPaymentMethodType]];
      v31 = v39;
      v32 = v38;

      if (v30)
      {
        [v17 setPass:v31];
        [v17 setPaymentApplication:v32];
      }
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    navigationItem = [(PKContinuityPaymentViewController *)v7 navigationItem];
    v34 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v34 configureWithTransparentBackground];
    [navigationItem setStandardAppearance:v34];
    v35 = +[PKPaymentAuthorizationNavigationBar applePayBarButtonItem];
    [navigationItem setLeftBarButtonItem:v35 animated:0];

    [navigationItem setLeftItemsSupplementBackButton:1];
    v36 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v7 action:sel_cancelPressed_];
    [navigationItem setRightBarButtonItem:v36 animated:0];
  }

  return v7;
}

- (void)dealloc
{
  [(PKAuthenticator *)self->_authenticator invalidate];
  [(PKAuthenticator *)self->_authenticator setDelegate:0];
  v3.receiver = self;
  v3.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v3 dealloc];
}

- (void)loadView
{
  v102[4] = *MEMORY[0x1E69E9840];
  v101.receiver = self;
  v101.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v101 loadView];
  [(PKContinuityPaymentViewController *)self _updateUserIntentStyle];
  v3 = objc_alloc(MEMORY[0x1E69DD298]);
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:7];
  v5 = [v3 initWithEffect:v4];
  backdropView = self->_backdropView;
  self->_backdropView = v5;

  [(UIVisualEffectView *)self->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  dimmingBackgroundView = self->_dimmingBackgroundView;
  self->_dimmingBackgroundView = v7;

  v9 = self->_dimmingBackgroundView;
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.06];
  [(UIView *)v9 setBackgroundColor:v10];

  [(UIView *)self->_dimmingBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  compactRegion = self->_compactRegion;
  self->_compactRegion = v11;

  [(UIView *)self->_compactRegion setTranslatesAutoresizingMaskIntoConstraints:0];
  if (PKUserIntentIsAvailable())
  {
    traitCollection = [(PKContinuityPaymentViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = [objc_alloc(MEMORY[0x1E69AD308]) initWithStyle:v15];
    physicalButtonView = self->_physicalButtonView;
    self->_physicalButtonView = v16;

    v18 = PKLocalizedPearlString(&cfstr_InAppPaymentPu_12.isa);
    paymentRequest = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
    confirmationStyle = [paymentRequest confirmationStyle];

    if (confirmationStyle <= 8)
    {
      v21 = PKLocalizedPearlString(&off_1E8012878[confirmationStyle]->isa);

      v18 = v21;
    }

    [(LAUIPhysicalButtonView *)self->_physicalButtonView setInstruction:v18];
  }

  v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  requestingDeviceLabel = self->_requestingDeviceLabel;
  self->_requestingDeviceLabel = v22;

  v24 = self->_requestingDeviceLabel;
  v97 = *MEMORY[0x1E69DDC38];
  v98 = *MEMORY[0x1E69DDD28];
  v25 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC38]);
  [(UILabel *)v24 setFont:v25];

  [(UILabel *)self->_requestingDeviceLabel setTextAlignment:1];
  v26 = self->_requestingDeviceLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v26 setBackgroundColor:clearColor];

  v28 = self->_requestingDeviceLabel;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v28 setTextColor:secondaryLabelColor];

  [(UILabel *)self->_requestingDeviceLabel setAlpha:0.42];
  [(UILabel *)self->_requestingDeviceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  device = [(PKRemotePaymentRequest *)self->_remoteRequest device];
  deviceName = [device deviceName];

  paymentRequest2 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  paymentSummaryItems = [paymentRequest2 paymentSummaryItems];
  lastObject = [paymentSummaryItems lastObject];
  label = [lastObject label];

  v36 = self->_requestingDeviceLabel;
  v37 = PKLocalizedPaymentString(&cfstr_ContinuityPaym.isa, &stru_1F3BD5BF0.isa, deviceName);
  [(UILabel *)v36 setText:v37];

  v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  requestingSiteLabel = self->_requestingSiteLabel;
  self->_requestingSiteLabel = v38;

  v40 = self->_requestingSiteLabel;
  v41 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DDC30]);
  [(UILabel *)v40 setFont:v41];

  [(UILabel *)self->_requestingSiteLabel setTextAlignment:1];
  v42 = self->_requestingSiteLabel;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v42 setBackgroundColor:clearColor2];

  [(UILabel *)self->_requestingSiteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v100 = label;
  [(UILabel *)self->_requestingSiteLabel setText:label];
  v44 = self->_requestingSiteLabel;
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v44 setTextColor:secondaryLabelColor2];

  v46 = objc_alloc_init(MEMORY[0x1E69DD250]);
  priceView = self->_priceView;
  self->_priceView = v46;

  [(UIView *)self->_priceView setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  priceLabel = self->_priceLabel;
  self->_priceLabel = v48;

  v50 = _UISolariumFeatureFlagEnabled();
  v51 = self->_priceLabel;
  if (v50)
  {
    v52 = v97;
    v53 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDD58], v97, 2, 32);
  }

  else
  {
    v53 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:42.0];
    v52 = v97;
  }

  [(UILabel *)v51 setFont:v53];

  [(UILabel *)self->_priceLabel setTextAlignment:1];
  v54 = self->_priceLabel;
  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v54 setBackgroundColor:clearColor3];

  [(UILabel *)self->_priceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_priceView addSubview:self->_priceLabel];
  v56 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  footnoteLabel = self->_footnoteLabel;
  self->_footnoteLabel = v56;

  v58 = self->_footnoteLabel;
  v59 = PKFontForDefaultDesign(v98, v52);
  [(UILabel *)v58 setFont:v59];

  [(UILabel *)self->_footnoteLabel setTextAlignment:1];
  v60 = self->_footnoteLabel;
  clearColor4 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v60 setBackgroundColor:clearColor4];

  v62 = self->_footnoteLabel;
  secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v62 setTextColor:secondaryLabelColor3];

  [(UILabel *)self->_footnoteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_footnoteLabel setAlpha:0.8];
  paymentRequest3 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  paymentSummaryItems2 = [paymentRequest3 paymentSummaryItems];
  lastObject2 = [paymentSummaryItems2 lastObject];

  [(PKContinuityPaymentViewController *)self _updatePriceLabelWithTotalSummaryItem:lastObject2];
  v99 = lastObject2;
  [(PKContinuityPaymentViewController *)self _updateFootnoteLabelWithTotalSummaryItem:lastObject2];
  paymentRequest4 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  thumbnailURLs = [paymentRequest4 thumbnailURLs];
  firstObject = [thumbnailURLs firstObject];

  device2 = [(PKRemotePaymentRequest *)self->_remoteRequest device];
  modelIdentifier = [device2 modelIdentifier];

  v72 = [PKContinuityPaymentFaviconView alloc];
  v73 = *MEMORY[0x1E695F058];
  v74 = *(MEMORY[0x1E695F058] + 8);
  v75 = *(MEMORY[0x1E695F058] + 16);
  v76 = *(MEMORY[0x1E695F058] + 24);
  v77 = [(PKContinuityPaymentFaviconView *)v72 initWithFrame:firstObject imageURL:modelIdentifier modelIdentifier:v100 merchantName:*MEMORY[0x1E695F058], v74, v75, v76];
  faviconImage = self->_faviconImage;
  self->_faviconImage = v77;

  v79 = self->_faviconImage;
  clearColor5 = [MEMORY[0x1E69DC888] clearColor];
  [(PKContinuityPaymentFaviconView *)v79 setBackgroundColor:clearColor5];

  [(PKContinuityPaymentFaviconView *)self->_faviconImage setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = objc_alloc(MEMORY[0x1E69DCF90]);
  v82 = self->_priceView;
  v102[0] = self->_faviconImage;
  v102[1] = v82;
  v83 = self->_footnoteLabel;
  v102[2] = self->_requestingSiteLabel;
  v102[3] = v83;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:4];
  v85 = [v81 initWithArrangedSubviews:v84];
  summaryContainerView = self->_summaryContainerView;
  self->_summaryContainerView = v85;

  [(UIStackView *)self->_summaryContainerView setAlignment:3];
  [(UIStackView *)self->_summaryContainerView setAxis:1];
  [(UIStackView *)self->_summaryContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v87 = [PKPaymentAuthorizationLayout alloc];
  paymentRequest5 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  v89 = [(PKPaymentAuthorizationLayout *)v87 initWithStyle:0 paymentRequest:paymentRequest5];

  v90 = [[PKPaymentAuthorizationFooterView alloc] initWithFrame:v89 layout:v73, v74, v75, v76];
  authorizationView = self->_authorizationView;
  self->_authorizationView = v90;

  [(PKPaymentAuthorizationFooterView *)self->_authorizationView setUserIntentStyle:self->_userIntentStyle];
  [(PKPaymentAuthorizationFooterView *)self->_authorizationView setDelegate:self];
  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKPaymentAuthorizationFooterView *)self->_authorizationView setHidesSeparatorView:1];
  }

  [(PKPaymentAuthorizationFooterView *)self->_authorizationView setTranslatesAutoresizingMaskIntoConstraints:0];
  v92 = [[PKContinuityPaymentCardSummaryView alloc] initWithFrame:v73, v74, v75, v76];
  cardView = self->_cardView;
  self->_cardView = v92;

  [(PKContinuityPaymentViewController *)self _updateCardView];
  view = [(PKContinuityPaymentViewController *)self view];
  clearColor6 = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor6];

  [view addSubview:self->_backdropView];
  [view addSubview:self->_dimmingBackgroundView];
  [view addSubview:self->_compactRegion];
  if (self->_physicalButtonView)
  {
    [view addSubview:?];
  }

  [view addSubview:self->_requestingDeviceLabel];
  [view addSubview:self->_summaryContainerView];
  [view addSubview:self->_authorizationView];
  [view addSubview:self->_cardView];
  if (PKPearlIsAvailable())
  {
    v96 = 3;
  }

  else
  {
    v96 = 0;
  }

  [(PKContinuityPaymentViewController *)self setProgressState:v96 string:0 animated:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v4 viewWillAppear:appear];
  if (!self->_viewAppeared)
  {
    self->_viewAppeared = 1;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v4 viewDidAppear:appear];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD930], self->_authorizationView);
  [(PKContinuityPaymentViewController *)self _resetAndScheduleTimeout];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v4 viewWillDisappear:disappear];
  [(NSTimer *)self->_timeoutTimer invalidate];
}

- (void)viewDidLoad
{
  v67[2] = *MEMORY[0x1E69E9840];
  v65.receiver = self;
  v65.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v65 viewDidLoad];
  view = [(PKContinuityPaymentViewController *)self view];
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_backdropView attribute:1 relatedBy:0 toItem:view attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_backdropView attribute:2 relatedBy:0 toItem:view attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_backdropView attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_backdropView attribute:4 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_dimmingBackgroundView attribute:1 relatedBy:0 toItem:view attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v8];

  v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_dimmingBackgroundView attribute:2 relatedBy:0 toItem:view attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v9];

  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_dimmingBackgroundView attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v10];

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_compactRegion attribute:1 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v11];

  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_compactRegion attribute:2 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v12];

  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_compactRegion attribute:7 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:7 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_compactRegion attribute:4 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:4 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v14];

  if (self->_physicalButtonView)
  {
    coordinateSpace = [(UIView *)view coordinateSpace];
    [(PKContinuityPaymentViewController *)self _physicalButtonRectForCoordinateSpace:coordinateSpace];
    MaxY = CGRectGetMaxY(v68);

    v17 = MEMORY[0x1E696ACD8];
    compactRegion = self->_compactRegion;
    v19 = 1.0;
    dimmingBackgroundView = view;
    v21 = MaxY;
  }

  else
  {
    v17 = MEMORY[0x1E696ACD8];
    compactRegion = self->_compactRegion;
    dimmingBackgroundView = self->_dimmingBackgroundView;
    v19 = 1.0;
    v21 = 0.0;
  }

  v22 = [v17 constraintWithItem:compactRegion attribute:3 relatedBy:0 toItem:dimmingBackgroundView attribute:3 multiplier:v19 constant:v21];
  [(UIView *)view addConstraint:v22];

  v23 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_requestingDeviceLabel attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v23];

  v24 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_requestingDeviceLabel attribute:4 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:4 multiplier:1.0 constant:-16.0];
  [(UIView *)view addConstraint:v24];

  v25 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_requestingDeviceLabel attribute:1 relatedBy:0 toItem:view attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v25];

  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_requestingDeviceLabel attribute:2 relatedBy:0 toItem:view attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v26];

  v27 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_summaryContainerView attribute:7 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:7 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v27];

  v28 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_summaryContainerView attribute:9 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:9 multiplier:1.0 constant:0.0];
  v67[0] = v28;
  v29 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_summaryContainerView attribute:10 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:10 multiplier:1.0 constant:0.0];
  v67[1] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  defaultConstraints = self->_defaultConstraints;
  self->_defaultConstraints = v30;

  v32 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_summaryContainerView attribute:9 relatedBy:0 toItem:self->_compactRegion attribute:9 multiplier:1.0 constant:0.0];
  v66[0] = v32;
  v33 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_summaryContainerView attribute:10 relatedBy:0 toItem:self->_compactRegion attribute:10 multiplier:1.0 constant:0.0];
  v66[1] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  compactConstraints = self->_compactConstraints;
  self->_compactConstraints = v34;

  summaryContainerView = self->_summaryContainerView;
  v37 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_priceView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:59.0];
  [(UIStackView *)summaryContainerView addConstraint:v37];

  v38 = self->_summaryContainerView;
  v39 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_priceLabel attribute:4 relatedBy:0 toItem:self->_priceView attribute:4 multiplier:1.0 constant:0.0];
  [(UIStackView *)v38 addConstraint:v39];

  v40 = self->_summaryContainerView;
  v41 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_priceLabel attribute:9 relatedBy:0 toItem:self->_priceView attribute:9 multiplier:1.0 constant:0.0];
  [(UIStackView *)v40 addConstraint:v41];

  v42 = self->_summaryContainerView;
  v43 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_priceLabel attribute:5 relatedBy:1 toItem:self->_priceView attribute:5 multiplier:1.0 constant:0.0];
  [(UIStackView *)v42 addConstraint:v43];

  v44 = self->_summaryContainerView;
  v45 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_priceLabel attribute:6 relatedBy:-1 toItem:self->_priceView attribute:6 multiplier:1.0 constant:0.0];
  [(UIStackView *)v44 addConstraint:v45];

  footnoteLabel = self->_footnoteLabel;
  v47 = [MEMORY[0x1E696ACD8] constraintWithItem:footnoteLabel attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:25.0];
  [(UILabel *)footnoteLabel addConstraint:v47];

  v48 = self->_summaryContainerView;
  v49 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_faviconImage attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:240.0];
  [(UIStackView *)v48 addConstraint:v49];

  v50 = self->_summaryContainerView;
  v51 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_faviconImage attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:150.0];
  [(UIStackView *)v50 addConstraint:v51];

  v52 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_cardView attribute:1 relatedBy:0 toItem:view attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v52];

  v53 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_cardView attribute:2 relatedBy:0 toItem:view attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v53];

  v54 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_cardView attribute:3 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:4 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v54];

  v55 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_cardView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:56.0];
  [(UIView *)view addConstraint:v55];

  v56 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_authorizationView attribute:7 relatedBy:0 toItem:view attribute:7 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v56];

  v57 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_authorizationView attribute:3 relatedBy:0 toItem:self->_cardView attribute:4 multiplier:1.0 constant:0.0];
  [(UIView *)view addConstraint:v57];

  bottomAnchor = [(PKPaymentAuthorizationFooterView *)self->_authorizationView bottomAnchor];
  safeAreaLayoutGuide = [(UIView *)view safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v61 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(UIView *)view addConstraint:v61];

  IsAvailable = PKPearlIsAvailable();
  v63 = 257.0;
  if (!IsAvailable)
  {
    v63 = 237.0;
  }

  v64 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_authorizationView attribute:4 relatedBy:-1 toItem:self->_cardView attribute:3 multiplier:1.0 constant:v63];
  [(UIView *)view addConstraint:v64];

  [(PKContinuityPaymentViewController *)self _updateActiveConstraints];
  [(PKPaymentAuthorizationStateMachine *)self->_stateMachine start];
}

- (BOOL)_updateActiveConstraints
{
  isOffscreen = [(PKPaymentAuthorizationFooterView *)self->_authorizationView isOffscreen];
  v4 = 18;
  if (isOffscreen)
  {
    v4 = 19;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR___PKContinuityPaymentViewController__remoteRequest[v4]);
  v6 = v5;
  activeConstraints = self->_activeConstraints;
  if (activeConstraints != v6)
  {
    if (activeConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:self->_activeConstraints];
    }

    objc_storeStrong(&self->_activeConstraints, v5);
    if (self->_activeConstraints)
    {
      [MEMORY[0x1E696ACD8] activateConstraints:?];
    }

    [(PKContinuityPaymentViewController *)self _layoutAnimated];
  }

  return activeConstraints != v6;
}

- (void)_layoutAnimated
{
  viewIfLoaded = [(PKContinuityPaymentViewController *)self viewIfLoaded];
  v4 = viewIfLoaded;
  if (viewIfLoaded)
  {
    [viewIfLoaded setNeedsLayout];
    if (self->_viewAppeared)
    {
      v5 = MEMORY[0x1E69DD250];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __52__PKContinuityPaymentViewController__layoutAnimated__block_invoke;
      v6[3] = &unk_1E8010970;
      v7 = v4;
      [v5 _animateUsingDefaultTimingWithOptions:134 animations:v6 completion:0];
    }

    else
    {
      [v4 layoutIfNeeded];
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v4 viewWillLayoutSubviews];
  physicalButtonView = self->_physicalButtonView;
  if (physicalButtonView)
  {
    [(LAUIPhysicalButtonView *)physicalButtonView updateFrame];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts]&& PKUserIntentIsAvailable())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__PKContinuityPaymentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v9[3] = &unk_1E80127E0;
    v9[4] = self;
    [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  }

  v8.receiver = self;
  v8.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v6 traitCollectionDidChange:change];
  traitCollection = [(PKContinuityPaymentViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [(LAUIPhysicalButtonView *)self->_physicalButtonView setStyle:v5];
}

- (void)setProgressState:(int64_t)state string:(id)string animated:(BOOL)animated withCompletion:(id)completion
{
  [(PKPaymentAuthorizationFooterView *)self->_authorizationView setState:state string:string animated:animated withCompletion:completion];

  [(PKContinuityPaymentViewController *)self _updateUserIntentRequired];
}

- (void)_setAuthenticating:(BOOL)authenticating
{
  if (self->_authenticating != authenticating)
  {
    self->_authenticating = authenticating;
    [(PKContinuityPaymentViewController *)self _updateUserIntentRequired];

    [(PKContinuityPaymentViewController *)self _updateCoachingState];
  }
}

- (void)_setPasscodeViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_passcodeViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_passcodeViewController, controller);
    [(PKContinuityPaymentViewController *)self _updateUserIntentRequired];
    [(PKContinuityPaymentViewController *)self _updateCoachingState];
    controllerCopy = v6;
  }
}

- (void)_setPassphraseViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_passphraseViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_passphraseViewController, controller);
    [(PKContinuityPaymentViewController *)self _updateUserIntentRequired];
    [(PKContinuityPaymentViewController *)self _updateCoachingState];
    controllerCopy = v6;
  }
}

- (void)_updateUserIntentStyle
{
  userIntentStyle = [MEMORY[0x1E69BC740] userIntentStyle];
  if (self->_userIntentStyle != userIntentStyle)
  {
    v4 = userIntentStyle;
    self->_userIntentStyle = userIntentStyle;
    authorizationView = self->_authorizationView;

    [(PKPaymentAuthorizationFooterView *)authorizationView setUserIntentStyle:v4];
  }
}

- (void)_updateUserIntentRequired
{
  v3 = PKUserIntentIsAvailable() && self->_authenticating && [(PKPaymentAuthorizationFooterView *)self->_authorizationView state]== 3 && !self->_passcodeViewController && self->_passphraseViewController == 0;

  [(PKContinuityPaymentViewController *)self _setUserIntentRequired:v3];
}

- (void)_updateCoachingState
{
  if (PKPearlIsAvailable() && self->_authenticating && !self->_passcodeViewController && !self->_passphraseViewController)
  {
    internalCoachingState = self->_internalCoachingState;
  }

  else
  {
    internalCoachingState = 0;
  }

  if (self->_coachingState != internalCoachingState)
  {
    self->_coachingState = internalCoachingState;

    [(PKContinuityPaymentViewController *)self _updateProgressStateIfAuthenticatingWithBiometricFailure:0];
  }
}

- (void)_updateProgressStateIfAuthenticatingWithBiometricFailure:(BOOL)failure
{
  if (self->_authenticating)
  {
    failureCopy = failure;
    v5 = [(PKContinuityPaymentViewController *)self _progressStateForAuthenticationWithBiometricFailure:?];
    if ([(PKPaymentAuthorizationFooterView *)self->_authorizationView state]!= v5)
    {
      [(PKContinuityPaymentViewController *)self setProgressState:v5 string:0 animated:1];
    }

    if (failureCopy)
    {

      [(PKContinuityPaymentViewController *)self setProgressState:9 string:0 animated:1];
    }
  }
}

- (void)_setUserIntentRequired:(BOOL)required
{
  if (self->_userIntentRequired != required)
  {
    v8 = v3;
    self->_userIntentRequired = required;
    [(LAUIPhysicalButtonView *)self->_physicalButtonView setAnimating:v4, v8, v5];

    [(PKContinuityPaymentViewController *)self _updateActiveConstraints];
  }
}

- (void)cancelPressed:(id)pressed
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKContinuityPaymentViewController (%{public}p): User cancelled payment", &v5, 0xCu);
  }

  [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didCancel];
}

- (void)_cancelPassphrasePressed
{
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];

  [(PKContinuityPaymentViewController *)self _resumeAuthenticationWithPreviousError:0];
}

- (void)_resetAndScheduleTimeout
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    [(NSTimer *)timeoutTimer invalidate];
  }

  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__timeoutFired selector:0 userInfo:0 repeats:120.0];
  v5 = self->_timeoutTimer;
  self->_timeoutTimer = v4;
}

- (void)_timeoutFired
{
  if (!self->_attemptedTimeout && ([(PKPaymentAuthorizationStateMachine *)self->_stateMachine state]== 10 || [(PKPaymentAuthorizationStateMachine *)self->_stateMachine state]== 11))
  {
    [(PKContinuityPaymentViewController *)self _resetAndScheduleTimeout];
    self->_attemptedTimeout = 1;
  }

  else
  {

    [(PKContinuityPaymentViewController *)self _didFailWithFatalError:0];
  }
}

- (void)_updateCardView
{
  model = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  pass = [model pass];

  PKPassFrontFaceContentSize();
  PKFloatRoundToPixel();
  v6 = v5;
  v7 = +[PKPassSnapshotter sharedInstance];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52__PKContinuityPaymentViewController__updateCardView__block_invoke;
  v32[3] = &unk_1E8010A38;
  v32[4] = self;
  [v7 snapshotWithPass:pass size:v32 completion:{41.0, v6}];

  hasAssociatedPeerPaymentAccount = [pass hasAssociatedPeerPaymentAccount];
  if (!hasAssociatedPeerPaymentAccount)
  {
    localizedDescription = [pass localizedDescription];
    pk_uppercaseStringForPreferredLocale = [localizedDescription pk_uppercaseStringForPreferredLocale];

    model2 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
    peerPaymentBalance = [model2 acceptedPaymentApplicationsForPass:pass];

    model3 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
    v16 = [model3 unavailablePaymentApplicationsForPass:pass];

    model4 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
    paymentApplication = [model4 paymentApplication];

    if (paymentApplication)
    {
      displayName = [paymentApplication displayName];
      if (!displayName || ![peerPaymentBalance count])
      {
        goto LABEL_9;
      }

      v24 = [peerPaymentBalance count];
      v25 = [v16 count] + v24;

      if (v25 >= 2)
      {
        v26 = MEMORY[0x1E696AEC0];
        displayName = [paymentApplication displayName];
        v27 = [v26 stringWithFormat:@"%@ - %@", pk_uppercaseStringForPreferredLocale, displayName];

        pk_uppercaseStringForPreferredLocale = v27;
LABEL_9:
      }
    }

    v28 = PKSanitizedPrimaryAccountRepresentationForPass();
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v28];
    v30 = [v28 length];
    v31 = &stru_1F3BD7330;
    if (v30)
    {
      v31 = v29;
    }

    pk_uppercaseStringForPreferredLocale3 = v31;

    goto LABEL_13;
  }

  peerPaymentBalance = [pass peerPaymentBalance];
  v10 = MEMORY[0x1E696AEC0];
  localizedDescription2 = [pass localizedDescription];
  pk_uppercaseStringForPreferredLocale2 = [localizedDescription2 pk_uppercaseStringForPreferredLocale];
  minimalFormattedStringValue = [peerPaymentBalance minimalFormattedStringValue];
  pk_uppercaseStringForPreferredLocale = [v10 stringWithFormat:@"%@ - %@", pk_uppercaseStringForPreferredLocale2, minimalFormattedStringValue];

  model5 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  v16 = [model5 itemForType:3];

  if ([v16 status] != 5)
  {
    hasAssociatedPeerPaymentAccount = 0;
    pk_uppercaseStringForPreferredLocale3 = 0;
    goto LABEL_15;
  }

  paymentApplication = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa);
  pk_uppercaseStringForPreferredLocale3 = [paymentApplication pk_uppercaseStringForPreferredLocale];
LABEL_13:

LABEL_15:
  [(PKContinuityPaymentCardSummaryView *)self->_cardView setCardDescription:pk_uppercaseStringForPreferredLocale];
  [(PKContinuityPaymentCardSummaryView *)self->_cardView setSubtitle:pk_uppercaseStringForPreferredLocale3];
  [(PKContinuityPaymentCardSummaryView *)self->_cardView setShowsAlert:hasAssociatedPeerPaymentAccount];
  [(PKContinuityPaymentCardSummaryView *)self->_cardView setNeedsLayout];
}

void __52__PKContinuityPaymentViewController__updateCardView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKContinuityPaymentViewController__updateCardView__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __52__PKContinuityPaymentViewController__updateCardView__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1072) thumbnailView];
  [v2 setImage:*(a1 + 40)];
}

- (void)_updatePriceLabelWithTotalSummaryItem:(id)item
{
  itemCopy = item;
  paymentRequest = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  currencyCode = [paymentRequest currencyCode];

  amount = [itemCopy amount];
  v7 = PKFormattedCurrencyStringFromNumber();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = itemCopy;
    [v8 intervalCount];
    [v8 intervalUnit];

    v9 = PKLocalizedIntervalTermStringWithAmount();

    v7 = v9;
  }

  [(UILabel *)self->_priceLabel setText:v7];
}

- (void)_updateFootnoteLabelWithTotalSummaryItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deferredDate = itemCopy;
    startDate = [deferredDate startDate];
    endDate = [deferredDate endDate];
    v7 = [(PKContinuityPaymentViewController *)self _formattedDateRangeWithStartDate:startDate endDate:endDate];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_9;
    }

    PKLocalizedPaymentString(&cfstr_InAppPaymentSt_0.isa, &stru_1F3BD5BF0.isa, v7);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = 0;
      goto LABEL_10;
    }

    deferredDate = [itemCopy deferredDate];
    v7 = PKMediumDateString();
    PKLocalizedPaymentString(&cfstr_InAppPaymentOn.isa, &stru_1F3BD5BF0.isa, v7);
  }
  v8 = ;
LABEL_9:

LABEL_10:
  [(UILabel *)self->_footnoteLabel setText:v8];
  [(UILabel *)self->_footnoteLabel setHidden:v8 == 0];
}

- (id)_formattedDateRangeWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (endDateCopy)
  {
    if (dateCopy)
    {
      v7 = PKDateRangeStringFromDateToDate();
LABEL_6:
      v8 = v7;
      goto LABEL_9;
    }

    date = [MEMORY[0x1E695DF00] date];
    v8 = PKDateRangeStringFromDateToDate();
  }

  else
  {
    if (dateCopy)
    {
      v7 = PKMediumDateString();
      goto LABEL_6;
    }

    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (void)updatePaymentWithClientUpdate:(id)update
{
  updateCopy = update;
  [(PKPaymentAuthorizationStateMachine *)self->_stateMachine state];
  if (PKPaymentAuthorizationStateIsTerminal())
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Received client update but in terminal state", buf, 2u);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__PKContinuityPaymentViewController_updatePaymentWithClientUpdate___block_invoke;
    v6[3] = &unk_1E8010A10;
    v6[4] = self;
    v7 = updateCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __67__PKContinuityPaymentViewController_updatePaymentWithClientUpdate___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1200) model];
  [*(a1 + 32) _resetAndScheduleTimeout];
  v3 = [v2 paymentApplication];
  v4 = [*(a1 + 40) selectedPaymentMethodType];
  v5 = [*(a1 + 40) selectedAID];
  v6 = [v3 applicationIdentifier];
  if ([v5 isEqualToString:v6])
  {
    if (!v4)
    {

LABEL_13:
      v12 = v3;
      goto LABEL_14;
    }

    v7 = [v3 paymentType];

    if (v4 == v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v25 = v3;
  v26 = 0;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) selectedAID];
  v10 = [v8 paymentPass:&v26 paymentApplication:&v25 fromAID:v9 selectedPaymentMethodType:v4];
  v11 = v26;
  v12 = v25;

  if (v10)
  {
    [v2 setPass:v11 withSelectedPaymentApplication:v12];
    [*(*(a1 + 32) + 1200) didSelectPaymentPass:v11 paymentApplication:v12];
    [*(a1 + 32) _updateCardView];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) selectedAID];
      v15 = PKPaymentMethodTypeToString();
      *buf = 138412546;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Payment client update provided AID %@, payment type %@, but a match wasn't found", buf, 0x16u);
    }
  }

LABEL_14:
  v16 = [*(a1 + 40) paymentSummaryItems];
  v17 = [v2 paymentSummaryItems];
  v18 = [v16 isEqualToArray:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [*(a1 + 40) paymentSummaryItems];
    [v2 setPaymentSummaryItems:v19];

    v20 = [*(a1 + 40) paymentSummaryItems];
    v21 = [v20 lastObject];

    [*(a1 + 32) _updatePriceLabelWithTotalSummaryItem:v21];
    [*(a1 + 32) _updateFootnoteLabelWithTotalSummaryItem:v21];
  }

  v22 = [*(a1 + 40) multiTokenContexts];
  [v2 setMultiTokenContexts:v22];

  v23 = [*(a1 + 40) recurringPaymentRequest];
  [v2 setRecurringPaymentRequest:v23];

  v24 = [*(a1 + 40) automaticReloadPaymentRequest];
  [v2 setAutomaticReloadPaymentRequest:v24];
}

- (CGRect)_physicalButtonRectForCoordinateSpace:(id)space
{
  v3 = MEMORY[0x1E69DCEB0];
  spaceCopy = space;
  mainScreen = [v3 mainScreen];
  fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];

  [fixedCoordinateSpace bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LAUIPhysicalButtonNormalizedFrame();
  v16.n128_f64[0] = v8 + v15 * v12;
  v18.n128_f64[0] = v10 + v17 * v14;
  v20.n128_f64[0] = v12 * v19;
  v22.n128_f64[0] = v14 * v21;
  PKRectRoundToPixel(v16, v18, v20, v22, v23);
  [spaceCopy convertRect:fixedCoordinateSpace fromCoordinateSpace:?];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)invalidate
{
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
  authenticator = self->_authenticator;

  [(PKAuthenticator *)authenticator invalidate];
}

- (BOOL)paymentAuthorizationStateMachine:(id)machine didTransitionFromState:(unint64_t)state toState:(unint64_t)toState withParam:(id)param
{
  machineCopy = machine;
  paramCopy = param;
  if (toState <= 8)
  {
    if (toState > 5)
    {
      if (toState == 6)
      {
        [(PKContinuityPaymentViewController *)self _suspendAuthentication];
      }

      else if (toState == 7)
      {
        [(PKContinuityPaymentViewController *)self _processClientCallback:paramCopy];
      }
    }

    else if (toState == 3)
    {
      [(PKContinuityPaymentViewController *)self _invalidPaymentDataWithParam:paramCopy];
    }

    else if (toState == 5)
    {
      [(PKContinuityPaymentViewController *)self _resumeAuthenticationWithPreviousError:paramCopy];
    }
  }

  else if (toState <= 13)
  {
    if (toState == 9)
    {
      [(PKContinuityPaymentViewController *)self setProgressState:11 string:0 animated:1];
    }

    else if (toState == 13)
    {
      [(PKContinuityPaymentViewController *)self _didCancel];
    }
  }

  else
  {
    switch(toState)
    {
      case 0xEuLL:
        [(PKContinuityPaymentViewController *)self _didFailWithError:paramCopy];
        break;
      case 0xFuLL:
        [(PKContinuityPaymentViewController *)self _didFailWithFatalError:paramCopy];
        break;
      case 0x10uLL:
        [(PKContinuityPaymentViewController *)self _didSucceedWithAuthorizationStateParam:paramCopy];
        break;
    }
  }

  return 1;
}

- (void)_processClientCallback:(id)callback
{
  callbackCopy = callback;
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
  kind = [callbackCopy kind];
  if (kind <= 2)
  {
    if (kind == 1)
    {
      v13 = objc_alloc(MEMORY[0x1E69B8D90]);
      model = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
      paymentSummaryItems = [model paymentSummaryItems];
      delegate = [v13 initWithPaymentSummaryItems:paymentSummaryItems];

      model2 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
      paymentRequest = [model2 paymentRequest];
      availableShippingMethods = [paymentRequest availableShippingMethods];
      [delegate setAvailableShippingMethods:availableShippingMethods];

      [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didReceiveShippingContactCompleteWithUpdate:delegate];
    }

    else
    {
      if (kind != 2)
      {
        goto LABEL_13;
      }

      delegate = objc_alloc_init(MEMORY[0x1E69B8D98]);
      [delegate setStatus:0];
      model3 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
      paymentSummaryItems2 = [model3 paymentSummaryItems];
      [delegate setPaymentSummaryItems:paymentSummaryItems2];

      [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didReceiveShippingMethodCompleteWithUpdate:delegate];
    }
  }

  else
  {
    switch(kind)
    {
      case 3:
        delegate = objc_alloc_init(MEMORY[0x1E69B8D88]);
        model4 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
        paymentSummaryItems3 = [model4 paymentSummaryItems];
        [delegate setPaymentSummaryItems:paymentSummaryItems3];

        [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didReceivePaymentMethodCompleteWithUpdate:delegate];
        break;
      case 10:
        delegate = objc_alloc_init(MEMORY[0x1E69B8D78]);
        model5 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
        paymentSummaryItems4 = [model5 paymentSummaryItems];
        [delegate setPaymentSummaryItems:paymentSummaryItems4];

        [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didReceiveCouponCodeCompleteWithUpdate:delegate];
        break;
      case 5:
        delegate = [(PKContinuityPaymentViewController *)self delegate];
        payment = [callbackCopy payment];
        [delegate authorizationDidAuthorizePayment:payment];

        break;
      default:
        goto LABEL_13;
    }
  }

LABEL_13:
}

- (void)_resumeAuthenticationWithPreviousError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  error = [error error];
  v5 = [MEMORY[0x1E69BC740] currentStateForPolicy:{-[PKContinuityPaymentViewController _authenticatorPolicy](self, "_authenticatorPolicy")}];
  v6 = v5;
  if (v5)
  {
    if ((v5 & 6) != 0)
    {
      if (PKPearlIsAvailable())
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }
    }

    else if (PKUserIntentIsAvailable())
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    if (self->_authenticating)
    {
      v8 = [(PKContinuityPaymentViewController *)self _progressStateForAuthenticationWithBiometricFailure:0];
    }

    if (error)
    {
      v9 = PKLocalizedPaymentString(&cfstr_InAppPaymentTr.isa);
    }

    else
    {
      v9 = 0;
    }

    [(PKContinuityPaymentViewController *)self setProgressState:v8 string:v9 animated:1];
    [(PKContinuityPaymentViewController *)self _startEvaluationWithHasInitialAuthenticatorState:1 initialAuthenticatorState:v6];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134349056;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKContinuityPaymentViewController (%{public}p): Unable to evaluate policy; cancelling payment", &v10, 0xCu);
    }

    [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didCancel];
  }
}

- (void)_suspendAuthentication
{
  if (self->_authenticating)
  {
    [(PKAuthenticator *)self->_authenticator cancelEvaluationWithOptions:1];

    [(PKContinuityPaymentViewController *)self _setAuthenticating:0];
  }
}

- (void)_startEvaluationWithHasInitialAuthenticatorState:(BOOL)state initialAuthenticatorState:(unint64_t)authenticatorState
{
  if (!self->_authenticating)
  {
    stateCopy = state;
    [(PKContinuityPaymentViewController *)self _setAuthenticating:1];
    objc_initWeak(&location, self);
    authenticator = self->_authenticator;
    v8 = [(PKContinuityPaymentViewController *)self _evaluationRequestWithHasInitialAuthenticatorState:stateCopy initialAuthenticatorState:authenticatorState];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __112__PKContinuityPaymentViewController__startEvaluationWithHasInitialAuthenticatorState_initialAuthenticatorState___block_invoke;
    v9[3] = &unk_1E8012830;
    v9[4] = self;
    objc_copyWeak(&v10, &location);
    [(PKAuthenticator *)authenticator evaluateRequest:v8 withCompletion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __112__PKContinuityPaymentViewController__startEvaluationWithHasInitialAuthenticatorState_initialAuthenticatorState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKContinuityPaymentViewController__startEvaluationWithHasInitialAuthenticatorState_initialAuthenticatorState___block_invoke_2;
  block[3] = &unk_1E8012808;
  block[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v7);
}

void __112__PKContinuityPaymentViewController__startEvaluationWithHasInitialAuthenticatorState_initialAuthenticatorState___block_invoke_2(id *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  [a1[4] _setAuthenticating:0];
  v2 = [a1[5] result];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v2 <= 3)
  {
    if ((v2 - 2) >= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v4 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Authentication canceled by user.", buf, 2u);
          }

          [*(a1[4] + 150) didResolveError];
        }
      }

      else
      {
        [*(a1[4] + 150) state];
        IsAuthentication = PKPaymentAuthorizationStateIsAuthentication();
        v26 = PKLogFacilityTypeGetObject();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (IsAuthentication)
        {
          if (v27)
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v26, OS_LOG_TYPE_DEFAULT, "Authentication successful.", buf, 2u);
          }

          if ([a1[5] biometricMatch])
          {
            [MEMORY[0x1E69BC758] invokeSuccessFeedback];
            [a1[4] setProgressState:8 string:0 animated:1];
          }

          v28 = a1[5];
          v29 = *(a1[4] + 150);
          v26 = [v28 credential];
          [v29 didAuthenticateWithCredential:v26];
        }

        else if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v26, OS_LOG_TYPE_DEFAULT, "Authentication successful but in wrong state - discarding credential", buf, 2u);
        }
      }

      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (v2 > 5)
  {
    if (v2 != 6)
    {
      if (v2 != 7)
      {
        goto LABEL_24;
      }

      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "Authentication selected fallback - this is not supported.";
LABEL_19:
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      }

LABEL_23:

      goto LABEL_24;
    }

LABEL_17:
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Authentication canceled by app.";
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  if (v2 == 4)
  {
    v13 = [MEMORY[0x1E696AE30] processInfo];
    v15 = [v13 processName];
    v16 = [v13 processIdentifier];
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = v15;
      v36 = 2048;
      v37 = v16;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Authentication by %@[%ld] preempted by another process.", buf, 0x16u);
    }

    v18 = MEMORY[0x1E69B8B70];
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E69BBBC8];
    v32 = @"PKAuthenticatorResult";
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:4];
    v33 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v23 = [v19 errorWithDomain:v20 code:-1 userInfo:v22];
    v24 = [v18 paramWithError:v23];
    [WeakRetained _didFailWithFatalError:v24];

    goto LABEL_23;
  }

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Failed to authenticate for e-commerce: %@", buf, 0xCu);
  }

  v6 = MEMORY[0x1E69B8B70];
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E69BBBC8];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{5, @"PKAuthenticatorResult"}];
  v31 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v11 = [v7 errorWithDomain:v8 code:-1 userInfo:v10];
  v12 = [v6 paramWithError:v11];
  [WeakRetained _didFailWithError:v12];

LABEL_24:
}

- (int64_t)_authenticatorPolicy
{
  model = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  if ([model pinRequired])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)_evaluationRequestWithHasInitialAuthenticatorState:(BOOL)state initialAuthenticatorState:(unint64_t)authenticatorState
{
  stateCopy = state;
  v22 = *MEMORY[0x1E69E9840];
  _authenticatorPolicy = [(PKContinuityPaymentViewController *)self _authenticatorPolicy];
  v8 = [objc_alloc(MEMORY[0x1E69BC748]) initWithPolicy:_authenticatorPolicy];
  v9 = v8;
  if (stateCopy)
  {
    [v8 setInitialAuthenticatorState:authenticatorState];
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (_authenticatorPolicy > 0xA)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E80128C0[_authenticatorPolicy];
    }

    *buf = 138412290;
    v21 = v11;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "New authenticator policy is %@", buf, 0xCu);
  }

  model = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  pinRequired = [model pinRequired];

  if (pinRequired)
  {
    model2 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
    pass = [model2 pass];
    localizedDescription = [pass localizedDescription];
    v17 = PKLocalizedPaymentString(&cfstr_InAppPaymentPi.isa, &stru_1F3BD5BF0.isa, localizedDescription);

    [v9 setPINTitle:v17];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*MEMORY[0x1E69BB820]];
    [v9 setPINLength:v18];
  }

  return v9;
}

- (void)_didSucceedWithAuthorizationStateParam:(id)param
{
  v24 = *MEMORY[0x1E69E9840];
  paramCopy = param;
  model = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  paymentService = [MEMORY[0x1E69B8DB8] paymentService];
  [model pendingTransactions];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        [(PKContinuityPaymentViewController *)self _updatePendingTransaction:v9 withAuthorizationStateParam:paramCopy];
        transaction = [v9 transaction];
        paymentApplication = [v9 paymentApplication];
        pass = [v9 pass];
        uniqueID = [pass uniqueID];

        [paymentService insertOrUpdatePaymentTransaction:transaction forPassUniqueIdentifier:uniqueID paymentApplication:paymentApplication completion:0];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__PKContinuityPaymentViewController__didSucceedWithAuthorizationStateParam___block_invoke;
  v16[3] = &unk_1E8011180;
  objc_copyWeak(&v17, &location);
  [(PKContinuityPaymentViewController *)self setProgressState:12 string:0 animated:1 withCompletion:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __76__PKContinuityPaymentViewController__didSucceedWithAuthorizationStateParam___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKContinuityPaymentViewController__didSucceedWithAuthorizationStateParam___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __76__PKContinuityPaymentViewController__didSucceedWithAuthorizationStateParam___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 153);
    [v2 authorizationDidFinishWithError:0];

    WeakRetained = v3;
  }
}

- (void)_updatePendingTransaction:(id)transaction withAuthorizationStateParam:(id)param
{
  transactionCopy = transaction;
  paramCopy = param;
  paymentApplication = [transactionCopy paymentApplication];
  dpanIdentifier = [paymentApplication dpanIdentifier];

  peerPaymentTransactionMetadata = [paramCopy peerPaymentTransactionMetadata];

  if (peerPaymentTransactionMetadata)
  {
    dpanIdentifier2 = [peerPaymentTransactionMetadata dpanIdentifier];
    v10 = [dpanIdentifier2 isEqual:dpanIdentifier];

    if (v10)
    {
      transaction = [transactionCopy transaction];
      serviceIdentifier = [peerPaymentTransactionMetadata serviceIdentifier];
      [transaction setServiceIdentifier:serviceIdentifier];

      requestDeviceScoreIdentifier = [peerPaymentTransactionMetadata requestDeviceScoreIdentifier];
      [transaction setRequestDeviceScoreIdentifier:requestDeviceScoreIdentifier];

      sendDeviceScoreIdentifier = [peerPaymentTransactionMetadata sendDeviceScoreIdentifier];
      [transaction setSendDeviceScoreIdentifier:sendDeviceScoreIdentifier];
    }
  }
}

- (void)_didFailWithError:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  error = [errorCopy error];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = error;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "In-app payment failed, error: %@", buf, 0xCu);
  }

  domain = [error domain];
  if ([domain isEqualToString:*MEMORY[0x1E69BBBC8]])
  {
    v8 = [error code] == -2007;

    if (v8)
    {
      userInfo = [error userInfo];
      v10 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

      domain2 = [v10 domain];
      code = [v10 code];
      v13 = [domain2 isEqualToString:*MEMORY[0x1E69BC300]];
      if (code == 2)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v14 == 1)
      {
        v15 = PKLocalizedPaymentString(&cfstr_WebPaymentErro.isa);
        v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:0 preferredStyle:1];
        v17 = MEMORY[0x1E69DC648];
        v18 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
        v19 = [v17 actionWithTitle:v18 style:1 handler:0];
        [v16 addAction:v19];

        [(PKContinuityPaymentViewController *)self presentViewController:v16 animated:1 completion:0];
      }

      else
      {
        v24 = [domain2 isEqualToString:*MEMORY[0x1E69BC6F0]];
        if (code == 4)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (v25 == 1)
        {
          v23 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_0.isa);
          goto LABEL_23;
        }
      }

      v23 = 0;
LABEL_23:

      [(PKContinuityPaymentViewController *)self _suspendAuthentication];
      if (v23)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
LABEL_12:
  localizedFailureReason = [error localizedFailureReason];
  v21 = localizedFailureReason;
  if (localizedFailureReason)
  {
    v22 = localizedFailureReason;
  }

  else
  {
    v22 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_0.isa);
  }

  v23 = v22;

LABEL_16:
  objc_initWeak(buf, self);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __55__PKContinuityPaymentViewController__didFailWithError___block_invoke;
  v26[3] = &unk_1E8011180;
  objc_copyWeak(&v27, buf);
  [(PKContinuityPaymentViewController *)self setProgressState:13 string:v23 animated:1 withCompletion:v26];
  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

void __55__PKContinuityPaymentViewController__didFailWithError___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PKContinuityPaymentViewController__didFailWithError___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __55__PKContinuityPaymentViewController__didFailWithError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[150] didResolveError];
    WeakRetained = v2;
  }
}

- (void)_didFailWithFatalError:(id)error
{
  v39 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
  val = self;
  model = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  pass = [model pass];

  if (([pass hasAssociatedPeerPaymentAccount] & 1) != 0 || (objc_msgSend(pass, "associatedAccountServiceAccountIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    model2 = [(PKPaymentAuthorizationStateMachine *)val->_stateMachine model];
    mode = [model2 mode];

    if (mode == 1)
    {
      model3 = [(PKPaymentAuthorizationStateMachine *)val->_stateMachine model];
      paymentService = [MEMORY[0x1E69B8DB8] paymentService];
      pendingTransactions = [model3 pendingTransactions];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [pendingTransactions countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v10)
      {
        v11 = *v29;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(pendingTransactions);
            }

            v13 = *(*(&v28 + 1) + 8 * i);
            transaction = [v13 transaction];
            paymentApplication = [v13 paymentApplication];
            pass2 = [v13 pass];
            uniqueID = [pass2 uniqueID];

            v18 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v33 = transaction;
              v34 = 2112;
              v35 = uniqueID;
              v36 = 2112;
              v37 = paymentApplication;
              _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Inserting transaction: %@ for pass: %@ paymentApplication: %@", buf, 0x20u);
            }

            [paymentService insertOrUpdatePaymentTransaction:transaction forPassUniqueIdentifier:uniqueID paymentApplication:paymentApplication completion:0];
          }

          v10 = [pendingTransactions countByEnumeratingWithState:&v28 objects:v38 count:16];
        }

        while (v10);
      }
    }
  }

  objc_initWeak(buf, val);
  v19 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_0.isa);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __60__PKContinuityPaymentViewController__didFailWithFatalError___block_invoke;
  v25[3] = &unk_1E80113B0;
  objc_copyWeak(&v27, buf);
  v20 = errorCopy;
  v26 = v20;
  [(PKContinuityPaymentViewController *)val setProgressState:13 string:v19 animated:1 withCompletion:v25];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

void __60__PKContinuityPaymentViewController__didFailWithFatalError___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1200000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PKContinuityPaymentViewController__didFailWithFatalError___block_invoke_2;
  v3[3] = &unk_1E80110E0;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);

  objc_destroyWeak(&v5);
}

void __60__PKContinuityPaymentViewController__didFailWithFatalError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 153);
    v4 = [*(a1 + 32) error];
    [v3 authorizationDidFinishWithError:v4];

    WeakRetained = v5;
  }
}

- (void)_didCancel
{
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
  delegate = [(PKContinuityPaymentViewController *)self delegate];
  [delegate authorizationDidFinishWithError:0];
}

- (void)_invalidPaymentDataWithParam:(id)param
{
  paramCopy = param;
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
  v5 = [paramCopy dataType] != 3 || objc_msgSend(paramCopy, "status") != 5;
  objc_initWeak(&location, self);
  error = [paramCopy error];
  localizedFailureReason = [error localizedFailureReason];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PKContinuityPaymentViewController__invalidPaymentDataWithParam___block_invoke;
  v8[3] = &unk_1E8012858;
  v10 = v5;
  objc_copyWeak(&v9, &location);
  [(PKContinuityPaymentViewController *)self setProgressState:13 string:localizedFailureReason animated:1 withCompletion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__PKContinuityPaymentViewController__invalidPaymentDataWithParam___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v6[5] = v1;
    v6[6] = v2;
    v4 = dispatch_time(0, 1200000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PKContinuityPaymentViewController__invalidPaymentDataWithParam___block_invoke_2;
    block[3] = &unk_1E8010998;
    objc_copyWeak(v6, (a1 + 32));
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v6);
  }
}

void __66__PKContinuityPaymentViewController__invalidPaymentDataWithParam___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resumeAuthenticationWithPreviousError:0];
    [v2[150] didResolveError];
    WeakRetained = v2;
  }
}

- (BOOL)paymentPass:(id *)pass paymentApplication:(id *)application fromAID:(id)d selectedPaymentMethodType:(unint64_t)type
{
  v46 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v43 = 0u;
  acceptedPasses = [v35 acceptedPasses];
  v31 = [acceptedPasses countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v31)
  {
    v11 = *v41;
    v34 = acceptedPasses;
    v29 = *v41;
    applicationCopy = application;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(acceptedPasses);
        }

        v32 = v12;
        v13 = *(*(&v40 + 1) + 8 * v12);
        deviceInAppPaymentApplications = [v13 deviceInAppPaymentApplications];
        allObjects = [deviceInAppPaymentApplications allObjects];
        v16 = [v13 sortedPaymentApplications:allObjects ascending:1];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v37;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v37 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v36 + 1) + 8 * i);
              applicationIdentifier = [v22 applicationIdentifier];
              if ([applicationIdentifier isEqualToString:dCopy])
              {
                if (!type)
                {

LABEL_23:
                  v26 = v13;
                  *pass = v13;
                  v27 = v22;
                  *applicationCopy = v22;

                  v25 = 1;
                  acceptedPasses = v34;
                  goto LABEL_24;
                }

                paymentType = [v22 paymentType];

                if (paymentType == type)
                {
                  goto LABEL_23;
                }
              }

              else
              {
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v12 = v32 + 1;
        acceptedPasses = v34;
        v11 = v29;
      }

      while (v32 + 1 != v31);
      v25 = 0;
      v31 = [v34 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v31);
  }

  else
  {
    v25 = 0;
  }

LABEL_24:

  return v25;
}

- (int64_t)_progressStateForAuthenticationWithBiometricFailure:(BOOL)failure
{
  result = PKPaymentProgressStateBaseStateForAuthenticatorEvaluationState(self->_internalAuthenticationEvaluationState, [(PKPaymentAuthorizationFooterView *)self->_authorizationView state], self->_idleStateIsPasscode, failure);
  internalAuthenticationEvaluationState = self->_internalAuthenticationEvaluationState;
  if (internalAuthenticationEvaluationState == 2)
  {
LABEL_4:
    if (self->_coachingState == 3)
    {
      return 4;
    }

    return result;
  }

  if (internalAuthenticationEvaluationState != 1)
  {
    if (internalAuthenticationEvaluationState)
    {
      return result;
    }

    goto LABEL_4;
  }

  coachingState = self->_coachingState;
  v7 = 6;
  if (coachingState != 4)
  {
    v7 = result;
  }

  if (coachingState == 3)
  {
    return 4;
  }

  else
  {
    return v7;
  }
}

- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event
{
  var1 = event.var1;
  var0 = event.var0;
  if (PKPearlIsAvailable())
  {
    v7 = var1 == 1 || (self->_internalAuthenticationEvaluationState - 1) < 2;
    self->_idleStateIsPasscode = v7;
  }

  else
  {
    self->_idleStateIsPasscode = 0;
  }

  self->_internalAuthenticationEvaluationState = var0;

  [(PKContinuityPaymentViewController *)self _updateProgressStateIfAuthenticatingWithBiometricFailure:var1 == 1];
}

- (void)authenticator:(id)authenticator didTransitionToCoachingState:(int64_t)state
{
  if (self->_internalCoachingState != state)
  {
    self->_internalCoachingState = state;
    [(PKContinuityPaymentViewController *)self _updateCoachingState];
  }
}

- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply
{
  controllerCopy = controller;
  handlerCopy = handler;
  replyCopy = reply;
  if (self->_passcodeViewController)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else if ([(PKPaymentAuthorizationStateMachine *)self->_stateMachine state]== 5)
  {
    [(PKContinuityPaymentViewController *)self _setPasscodeViewController:controllerCopy];
    [(UIViewController *)self->_passcodeViewController setModalPresentationStyle:5];
    passcodeViewController = self->_passcodeViewController;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__PKContinuityPaymentViewController_presentPasscodeViewController_completionHandler_reply___block_invoke;
    v12[3] = &unk_1E8010B50;
    v13 = handlerCopy;
    [(PKContinuityPaymentViewController *)self presentViewController:passcodeViewController animated:1 completion:v12];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

uint64_t __91__PKContinuityPaymentViewController_presentPasscodeViewController_completionHandler_reply___block_invoke(uint64_t a1)
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
  passcodeViewController = self->_passcodeViewController;
  if (passcodeViewController)
  {
    presentingViewController = [(UIViewController *)passcodeViewController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    [(PKContinuityPaymentViewController *)self _setPasscodeViewController:0];
  }
}

- (void)presentPassphraseViewController:(id)controller completionHandler:(id)handler reply:(id)reply
{
  controllerCopy = controller;
  handlerCopy = handler;
  replyCopy = reply;
  if (self->_passphraseViewController)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:controllerCopy];
    [v11 setModalPresentationStyle:6];
    view = [v11 view];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [view setBackgroundColor:systemBackgroundColor];

    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPassphrasePressed];
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setRightBarButtonItem:v14];

    [(PKContinuityPaymentViewController *)self _setPassphraseViewController:v11];
    passphraseViewController = self->_passphraseViewController;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__PKContinuityPaymentViewController_presentPassphraseViewController_completionHandler_reply___block_invoke;
    v17[3] = &unk_1E8010B50;
    v18 = handlerCopy;
    [(PKContinuityPaymentViewController *)self presentViewController:passphraseViewController animated:1 completion:v17];
  }
}

uint64_t __93__PKContinuityPaymentViewController_presentPassphraseViewController_completionHandler_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)dismissPassphraseViewController
{
  [(PKPaymentAuthorizationStateMachine *)self->_stateMachine state];
  if ((PKPaymentAuthorizationStateIsTerminal() & 1) == 0)
  {
    passphraseViewController = self->_passphraseViewController;
    if (passphraseViewController)
    {
      presentingViewController = [(UIViewController *)passphraseViewController presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:0];

      [(PKContinuityPaymentViewController *)self _setPassphraseViewController:0];
    }
  }
}

- (void)authorizationFooterViewPasscodeButtonPressed:(id)pressed
{
  if ([(PKPaymentAuthorizationStateMachine *)self->_stateMachine state]== 5)
  {
    if (self->_authenticating)
    {
      authenticator = self->_authenticator;

      [(PKAuthenticator *)authenticator fallbackToSystemPasscodeUI];
    }

    else
    {

      [(PKContinuityPaymentViewController *)self _startEvaluationWithHasInitialAuthenticatorState:0 initialAuthenticatorState:0];
    }
  }
}

- (void)authorizationFooterViewDidChangeConstraints:(id)constraints
{
  if (self->_viewAppeared && ![(PKContinuityPaymentViewController *)self _updateActiveConstraints])
  {

    [(PKContinuityPaymentViewController *)self _layoutAnimated];
  }
}

- (PKPaymentAuthorizationHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end