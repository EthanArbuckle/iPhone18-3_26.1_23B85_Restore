@interface PKContinuityPaymentViewController
- (BOOL)_updateActiveConstraints;
- (BOOL)paymentAuthorizationStateMachine:(id)a3 didTransitionFromState:(unint64_t)a4 toState:(unint64_t)a5 withParam:(id)a6;
- (BOOL)paymentPass:(id *)a3 paymentApplication:(id *)a4 fromAID:(id)a5 selectedPaymentMethodType:(unint64_t)a6;
- (CGRect)_physicalButtonRectForCoordinateSpace:(id)a3;
- (PKContinuityPaymentViewController)initWithRemotePaymentRequest:(id)a3;
- (PKPaymentAuthorizationHostProtocol)delegate;
- (id)_evaluationRequestWithHasInitialAuthenticatorState:(BOOL)a3 initialAuthenticatorState:(unint64_t)a4;
- (id)_formattedDateRangeWithStartDate:(id)a3 endDate:(id)a4;
- (int64_t)_authenticatorPolicy;
- (int64_t)_progressStateForAuthenticationWithBiometricFailure:(BOOL)a3;
- (void)_cancelPassphrasePressed;
- (void)_didCancel;
- (void)_didFailWithError:(id)a3;
- (void)_didFailWithFatalError:(id)a3;
- (void)_didSucceedWithAuthorizationStateParam:(id)a3;
- (void)_invalidPaymentDataWithParam:(id)a3;
- (void)_layoutAnimated;
- (void)_processClientCallback:(id)a3;
- (void)_resetAndScheduleTimeout;
- (void)_resumeAuthenticationWithPreviousError:(id)a3;
- (void)_setAuthenticating:(BOOL)a3;
- (void)_setPasscodeViewController:(id)a3;
- (void)_setPassphraseViewController:(id)a3;
- (void)_setUserIntentRequired:(BOOL)a3;
- (void)_startEvaluationWithHasInitialAuthenticatorState:(BOOL)a3 initialAuthenticatorState:(unint64_t)a4;
- (void)_suspendAuthentication;
- (void)_timeoutFired;
- (void)_updateCardView;
- (void)_updateCoachingState;
- (void)_updateFootnoteLabelWithTotalSummaryItem:(id)a3;
- (void)_updatePendingTransaction:(id)a3 withAuthorizationStateParam:(id)a4;
- (void)_updatePriceLabelWithTotalSummaryItem:(id)a3;
- (void)_updateProgressStateIfAuthenticatingWithBiometricFailure:(BOOL)a3;
- (void)_updateUserIntentRequired;
- (void)_updateUserIntentStyle;
- (void)authenticator:(id)a3 didTransitionToCoachingState:(int64_t)a4;
- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4;
- (void)authorizationFooterViewDidChangeConstraints:(id)a3;
- (void)authorizationFooterViewPasscodeButtonPressed:(id)a3;
- (void)cancelPressed:(id)a3;
- (void)dealloc;
- (void)dismissPasscodeViewController;
- (void)dismissPassphraseViewController;
- (void)invalidate;
- (void)loadView;
- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5;
- (void)presentPassphraseViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5;
- (void)setProgressState:(int64_t)a3 string:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePaymentWithClientUpdate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PKContinuityPaymentViewController

- (PKContinuityPaymentViewController)initWithRemotePaymentRequest:(id)a3
{
  v5 = a3;
  v40.receiver = self;
  v40.super_class = PKContinuityPaymentViewController;
  v6 = [(PKContinuityPaymentViewController *)&v40 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteRequest, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69BC740]);
    authenticator = v7->_authenticator;
    v7->_authenticator = v8;

    [(PKAuthenticator *)v7->_authenticator setDelegate:v7];
    v10 = [MEMORY[0x1E69B8EF8] sharedService];
    v11 = [v10 context];
    v12 = [v11 configuration];
    v13 = [v12 contactFormatConfiguration];

    v14 = [objc_alloc(MEMORY[0x1E69B8730]) initWithConfiguration:v13];
    v15 = objc_alloc_init(MEMORY[0x1E69B8B88]);
    stateMachine = v7->_stateMachine;
    v7->_stateMachine = v15;

    [(PKPaymentAuthorizationStateMachine *)v7->_stateMachine setDelegate:v7];
    v17 = objc_alloc_init(MEMORY[0x1E69B8B68]);
    v18 = [MEMORY[0x1E69B9000] sharedInstance];
    [v17 setPeerPaymentService:v18];

    v19 = [(PKRemotePaymentRequest *)v7->_remoteRequest paymentRequest];
    [v17 setPaymentRequest:v19];

    v20 = [(PKRemotePaymentRequest *)v7->_remoteRequest device];
    [v17 setRemoteDevice:v20];

    [v17 setContactFormatValidator:v14];
    [(PKPaymentAuthorizationStateMachine *)v7->_stateMachine setModel:v17];
    v21 = v7->_stateMachine;
    v22 = [MEMORY[0x1E69B8EF8] sharedService];
    [(PKPaymentAuthorizationStateMachine *)v21 setPaymentWebService:v22];

    v23 = v7->_stateMachine;
    v24 = [MEMORY[0x1E69B8DB8] paymentService];
    [(PKPaymentAuthorizationStateMachine *)v23 setPaymentService:v24];

    v25 = v7->_stateMachine;
    v26 = objc_alloc_init(MEMORY[0x1E69B8538]);
    [(PKPaymentAuthorizationStateMachine *)v25 setAggregateDictionary:v26];

    v27 = [(PKRemotePaymentRequest *)v7->_remoteRequest selectedApplicationIdentifier];
    if (v27)
    {
      v28 = v27;
      v38 = 0;
      v39 = 0;
      v29 = [(PKRemotePaymentRequest *)v7->_remoteRequest selectedApplicationIdentifier];
      v30 = [(PKContinuityPaymentViewController *)v7 paymentPass:&v39 paymentApplication:&v38 fromAID:v29 selectedPaymentMethodType:[(PKRemotePaymentRequest *)v7->_remoteRequest selectedPaymentMethodType]];
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

    v33 = [(PKContinuityPaymentViewController *)v7 navigationItem];
    v34 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v34 configureWithTransparentBackground];
    [v33 setStandardAppearance:v34];
    v35 = +[PKPaymentAuthorizationNavigationBar applePayBarButtonItem];
    [v33 setLeftBarButtonItem:v35 animated:0];

    [v33 setLeftItemsSupplementBackButton:1];
    v36 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v7 action:sel_cancelPressed_];
    [v33 setRightBarButtonItem:v36 animated:0];
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
    v13 = [(PKContinuityPaymentViewController *)self traitCollection];
    v14 = [v13 userInterfaceStyle];

    if (v14 == 2)
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
    v19 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
    v20 = [v19 confirmationStyle];

    if (v20 <= 8)
    {
      v21 = PKLocalizedPearlString(&off_1E8012878[v20]->isa);

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
  v27 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v26 setBackgroundColor:v27];

  v28 = self->_requestingDeviceLabel;
  v29 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v28 setTextColor:v29];

  [(UILabel *)self->_requestingDeviceLabel setAlpha:0.42];
  [(UILabel *)self->_requestingDeviceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [(PKRemotePaymentRequest *)self->_remoteRequest device];
  v31 = [v30 deviceName];

  v32 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  v33 = [v32 paymentSummaryItems];
  v34 = [v33 lastObject];
  v35 = [v34 label];

  v36 = self->_requestingDeviceLabel;
  v37 = PKLocalizedPaymentString(&cfstr_ContinuityPaym.isa, &stru_1F3BD5BF0.isa, v31);
  [(UILabel *)v36 setText:v37];

  v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  requestingSiteLabel = self->_requestingSiteLabel;
  self->_requestingSiteLabel = v38;

  v40 = self->_requestingSiteLabel;
  v41 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DDC30]);
  [(UILabel *)v40 setFont:v41];

  [(UILabel *)self->_requestingSiteLabel setTextAlignment:1];
  v42 = self->_requestingSiteLabel;
  v43 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v42 setBackgroundColor:v43];

  [(UILabel *)self->_requestingSiteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v100 = v35;
  [(UILabel *)self->_requestingSiteLabel setText:v35];
  v44 = self->_requestingSiteLabel;
  v45 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v44 setTextColor:v45];

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
  v55 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v54 setBackgroundColor:v55];

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
  v61 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v60 setBackgroundColor:v61];

  v62 = self->_footnoteLabel;
  v63 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v62 setTextColor:v63];

  [(UILabel *)self->_footnoteLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_footnoteLabel setAlpha:0.8];
  v64 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  v65 = [v64 paymentSummaryItems];
  v66 = [v65 lastObject];

  [(PKContinuityPaymentViewController *)self _updatePriceLabelWithTotalSummaryItem:v66];
  v99 = v66;
  [(PKContinuityPaymentViewController *)self _updateFootnoteLabelWithTotalSummaryItem:v66];
  v67 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  v68 = [v67 thumbnailURLs];
  v69 = [v68 firstObject];

  v70 = [(PKRemotePaymentRequest *)self->_remoteRequest device];
  v71 = [v70 modelIdentifier];

  v72 = [PKContinuityPaymentFaviconView alloc];
  v73 = *MEMORY[0x1E695F058];
  v74 = *(MEMORY[0x1E695F058] + 8);
  v75 = *(MEMORY[0x1E695F058] + 16);
  v76 = *(MEMORY[0x1E695F058] + 24);
  v77 = [(PKContinuityPaymentFaviconView *)v72 initWithFrame:v69 imageURL:v71 modelIdentifier:v100 merchantName:*MEMORY[0x1E695F058], v74, v75, v76];
  faviconImage = self->_faviconImage;
  self->_faviconImage = v77;

  v79 = self->_faviconImage;
  v80 = [MEMORY[0x1E69DC888] clearColor];
  [(PKContinuityPaymentFaviconView *)v79 setBackgroundColor:v80];

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
  v88 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  v89 = [(PKPaymentAuthorizationLayout *)v87 initWithStyle:0 paymentRequest:v88];

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
  v94 = [(PKContinuityPaymentViewController *)self view];
  v95 = [MEMORY[0x1E69DC888] clearColor];
  [v94 setBackgroundColor:v95];

  [v94 addSubview:self->_backdropView];
  [v94 addSubview:self->_dimmingBackgroundView];
  [v94 addSubview:self->_compactRegion];
  if (self->_physicalButtonView)
  {
    [v94 addSubview:?];
  }

  [v94 addSubview:self->_requestingDeviceLabel];
  [v94 addSubview:self->_summaryContainerView];
  [v94 addSubview:self->_authorizationView];
  [v94 addSubview:self->_cardView];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v4 viewWillAppear:a3];
  if (!self->_viewAppeared)
  {
    self->_viewAppeared = 1;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v4 viewDidAppear:a3];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD930], self->_authorizationView);
  [(PKContinuityPaymentViewController *)self _resetAndScheduleTimeout];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v4 viewWillDisappear:a3];
  [(NSTimer *)self->_timeoutTimer invalidate];
}

- (void)viewDidLoad
{
  v67[2] = *MEMORY[0x1E69E9840];
  v65.receiver = self;
  v65.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v65 viewDidLoad];
  v3 = [(PKContinuityPaymentViewController *)self view];
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_backdropView attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v4];

  v5 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_backdropView attribute:2 relatedBy:0 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v5];

  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_backdropView attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v6];

  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_backdropView attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v7];

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_dimmingBackgroundView attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v8];

  v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_dimmingBackgroundView attribute:2 relatedBy:0 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v9];

  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_dimmingBackgroundView attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v10];

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_compactRegion attribute:1 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v11];

  v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_compactRegion attribute:2 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v12];

  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_compactRegion attribute:7 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:7 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v13];

  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_compactRegion attribute:4 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:4 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v14];

  if (self->_physicalButtonView)
  {
    v15 = [(UIView *)v3 coordinateSpace];
    [(PKContinuityPaymentViewController *)self _physicalButtonRectForCoordinateSpace:v15];
    MaxY = CGRectGetMaxY(v68);

    v17 = MEMORY[0x1E696ACD8];
    compactRegion = self->_compactRegion;
    v19 = 1.0;
    dimmingBackgroundView = v3;
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
  [(UIView *)v3 addConstraint:v22];

  v23 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_requestingDeviceLabel attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v23];

  v24 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_requestingDeviceLabel attribute:4 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:4 multiplier:1.0 constant:-16.0];
  [(UIView *)v3 addConstraint:v24];

  v25 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_requestingDeviceLabel attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v25];

  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_requestingDeviceLabel attribute:2 relatedBy:0 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v26];

  v27 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_summaryContainerView attribute:7 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:7 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v27];

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

  v52 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_cardView attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v52];

  v53 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_cardView attribute:2 relatedBy:0 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v53];

  v54 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_cardView attribute:3 relatedBy:0 toItem:self->_dimmingBackgroundView attribute:4 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v54];

  v55 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_cardView attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:56.0];
  [(UIView *)v3 addConstraint:v55];

  v56 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_authorizationView attribute:7 relatedBy:0 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v56];

  v57 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_authorizationView attribute:3 relatedBy:0 toItem:self->_cardView attribute:4 multiplier:1.0 constant:0.0];
  [(UIView *)v3 addConstraint:v57];

  v58 = [(PKPaymentAuthorizationFooterView *)self->_authorizationView bottomAnchor];
  v59 = [(UIView *)v3 safeAreaLayoutGuide];
  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
  [(UIView *)v3 addConstraint:v61];

  IsAvailable = PKPearlIsAvailable();
  v63 = 257.0;
  if (!IsAvailable)
  {
    v63 = 237.0;
  }

  v64 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_authorizationView attribute:4 relatedBy:-1 toItem:self->_cardView attribute:3 multiplier:1.0 constant:v63];
  [(UIView *)v3 addConstraint:v64];

  [(PKContinuityPaymentViewController *)self _updateActiveConstraints];
  [(PKPaymentAuthorizationStateMachine *)self->_stateMachine start];
}

- (BOOL)_updateActiveConstraints
{
  v3 = [(PKPaymentAuthorizationFooterView *)self->_authorizationView isOffscreen];
  v4 = 18;
  if (v3)
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
  v3 = [(PKContinuityPaymentViewController *)self viewIfLoaded];
  v4 = v3;
  if (v3)
  {
    [v3 setNeedsLayout];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts]&& PKUserIntentIsAvailable())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__PKContinuityPaymentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v9[3] = &unk_1E80127E0;
    v9[4] = self;
    [v7 animateAlongsideTransition:v9 completion:0];
  }

  v8.receiver = self;
  v8.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKContinuityPaymentViewController;
  [(PKContinuityPaymentViewController *)&v6 traitCollectionDidChange:a3];
  v4 = [(PKContinuityPaymentViewController *)self traitCollection];
  if ([v4 userInterfaceStyle] == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [(LAUIPhysicalButtonView *)self->_physicalButtonView setStyle:v5];
}

- (void)setProgressState:(int64_t)a3 string:(id)a4 animated:(BOOL)a5 withCompletion:(id)a6
{
  [(PKPaymentAuthorizationFooterView *)self->_authorizationView setState:a3 string:a4 animated:a5 withCompletion:a6];

  [(PKContinuityPaymentViewController *)self _updateUserIntentRequired];
}

- (void)_setAuthenticating:(BOOL)a3
{
  if (self->_authenticating != a3)
  {
    self->_authenticating = a3;
    [(PKContinuityPaymentViewController *)self _updateUserIntentRequired];

    [(PKContinuityPaymentViewController *)self _updateCoachingState];
  }
}

- (void)_setPasscodeViewController:(id)a3
{
  v5 = a3;
  if (self->_passcodeViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_passcodeViewController, a3);
    [(PKContinuityPaymentViewController *)self _updateUserIntentRequired];
    [(PKContinuityPaymentViewController *)self _updateCoachingState];
    v5 = v6;
  }
}

- (void)_setPassphraseViewController:(id)a3
{
  v5 = a3;
  if (self->_passphraseViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_passphraseViewController, a3);
    [(PKContinuityPaymentViewController *)self _updateUserIntentRequired];
    [(PKContinuityPaymentViewController *)self _updateCoachingState];
    v5 = v6;
  }
}

- (void)_updateUserIntentStyle
{
  v3 = [MEMORY[0x1E69BC740] userIntentStyle];
  if (self->_userIntentStyle != v3)
  {
    v4 = v3;
    self->_userIntentStyle = v3;
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

- (void)_updateProgressStateIfAuthenticatingWithBiometricFailure:(BOOL)a3
{
  if (self->_authenticating)
  {
    v3 = a3;
    v5 = [(PKContinuityPaymentViewController *)self _progressStateForAuthenticationWithBiometricFailure:?];
    if ([(PKPaymentAuthorizationFooterView *)self->_authorizationView state]!= v5)
    {
      [(PKContinuityPaymentViewController *)self setProgressState:v5 string:0 animated:1];
    }

    if (v3)
    {

      [(PKContinuityPaymentViewController *)self setProgressState:9 string:0 animated:1];
    }
  }
}

- (void)_setUserIntentRequired:(BOOL)a3
{
  if (self->_userIntentRequired != a3)
  {
    v8 = v3;
    self->_userIntentRequired = a3;
    [(LAUIPhysicalButtonView *)self->_physicalButtonView setAnimating:v4, v8, v5];

    [(PKContinuityPaymentViewController *)self _updateActiveConstraints];
  }
}

- (void)cancelPressed:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134349056;
    v6 = self;
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
  v3 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  v4 = [v3 pass];

  PKPassFrontFaceContentSize();
  PKFloatRoundToPixel();
  v6 = v5;
  v7 = +[PKPassSnapshotter sharedInstance];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __52__PKContinuityPaymentViewController__updateCardView__block_invoke;
  v32[3] = &unk_1E8010A38;
  v32[4] = self;
  [v7 snapshotWithPass:v4 size:v32 completion:{41.0, v6}];

  v8 = [v4 hasAssociatedPeerPaymentAccount];
  if (!v8)
  {
    v19 = [v4 localizedDescription];
    v14 = [v19 pk_uppercaseStringForPreferredLocale];

    v20 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
    v9 = [v20 acceptedPaymentApplicationsForPass:v4];

    v21 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
    v16 = [v21 unavailablePaymentApplicationsForPass:v4];

    v22 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
    v17 = [v22 paymentApplication];

    if (v17)
    {
      v23 = [v17 displayName];
      if (!v23 || ![v9 count])
      {
        goto LABEL_9;
      }

      v24 = [v9 count];
      v25 = [v16 count] + v24;

      if (v25 >= 2)
      {
        v26 = MEMORY[0x1E696AEC0];
        v23 = [v17 displayName];
        v27 = [v26 stringWithFormat:@"%@ - %@", v14, v23];

        v14 = v27;
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

    v18 = v31;

    goto LABEL_13;
  }

  v9 = [v4 peerPaymentBalance];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [v4 localizedDescription];
  v12 = [v11 pk_uppercaseStringForPreferredLocale];
  v13 = [v9 minimalFormattedStringValue];
  v14 = [v10 stringWithFormat:@"%@ - %@", v12, v13];

  v15 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  v16 = [v15 itemForType:3];

  if ([v16 status] != 5)
  {
    v8 = 0;
    v18 = 0;
    goto LABEL_15;
  }

  v17 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr.isa);
  v18 = [v17 pk_uppercaseStringForPreferredLocale];
LABEL_13:

LABEL_15:
  [(PKContinuityPaymentCardSummaryView *)self->_cardView setCardDescription:v14];
  [(PKContinuityPaymentCardSummaryView *)self->_cardView setSubtitle:v18];
  [(PKContinuityPaymentCardSummaryView *)self->_cardView setShowsAlert:v8];
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

- (void)_updatePriceLabelWithTotalSummaryItem:(id)a3
{
  v10 = a3;
  v4 = [(PKRemotePaymentRequest *)self->_remoteRequest paymentRequest];
  v5 = [v4 currencyCode];

  v6 = [v10 amount];
  v7 = PKFormattedCurrencyStringFromNumber();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v10;
    [v8 intervalCount];
    [v8 intervalUnit];

    v9 = PKLocalizedIntervalTermStringWithAmount();

    v7 = v9;
  }

  [(UILabel *)self->_priceLabel setText:v7];
}

- (void)_updateFootnoteLabelWithTotalSummaryItem:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v9;
    v5 = [v4 startDate];
    v6 = [v4 endDate];
    v7 = [(PKContinuityPaymentViewController *)self _formattedDateRangeWithStartDate:v5 endDate:v6];

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

    v4 = [v9 deferredDate];
    v7 = PKMediumDateString();
    PKLocalizedPaymentString(&cfstr_InAppPaymentOn.isa, &stru_1F3BD5BF0.isa, v7);
  }
  v8 = ;
LABEL_9:

LABEL_10:
  [(UILabel *)self->_footnoteLabel setText:v8];
  [(UILabel *)self->_footnoteLabel setHidden:v8 == 0];
}

- (id)_formattedDateRangeWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (v5)
    {
      v7 = PKDateRangeStringFromDateToDate();
LABEL_6:
      v8 = v7;
      goto LABEL_9;
    }

    v9 = [MEMORY[0x1E695DF00] date];
    v8 = PKDateRangeStringFromDateToDate();
  }

  else
  {
    if (v5)
    {
      v7 = PKMediumDateString();
      goto LABEL_6;
    }

    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (void)updatePaymentWithClientUpdate:(id)a3
{
  v4 = a3;
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
    v7 = v4;
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

- (CGRect)_physicalButtonRectForCoordinateSpace:(id)a3
{
  v3 = MEMORY[0x1E69DCEB0];
  v4 = a3;
  v5 = [v3 mainScreen];
  v6 = [v5 fixedCoordinateSpace];

  [v6 bounds];
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
  [v4 convertRect:v6 fromCoordinateSpace:?];
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

- (BOOL)paymentAuthorizationStateMachine:(id)a3 didTransitionFromState:(unint64_t)a4 toState:(unint64_t)a5 withParam:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (a5 <= 8)
  {
    if (a5 > 5)
    {
      if (a5 == 6)
      {
        [(PKContinuityPaymentViewController *)self _suspendAuthentication];
      }

      else if (a5 == 7)
      {
        [(PKContinuityPaymentViewController *)self _processClientCallback:v10];
      }
    }

    else if (a5 == 3)
    {
      [(PKContinuityPaymentViewController *)self _invalidPaymentDataWithParam:v10];
    }

    else if (a5 == 5)
    {
      [(PKContinuityPaymentViewController *)self _resumeAuthenticationWithPreviousError:v10];
    }
  }

  else if (a5 <= 13)
  {
    if (a5 == 9)
    {
      [(PKContinuityPaymentViewController *)self setProgressState:11 string:0 animated:1];
    }

    else if (a5 == 13)
    {
      [(PKContinuityPaymentViewController *)self _didCancel];
    }
  }

  else
  {
    switch(a5)
    {
      case 0xEuLL:
        [(PKContinuityPaymentViewController *)self _didFailWithError:v10];
        break;
      case 0xFuLL:
        [(PKContinuityPaymentViewController *)self _didFailWithFatalError:v10];
        break;
      case 0x10uLL:
        [(PKContinuityPaymentViewController *)self _didSucceedWithAuthorizationStateParam:v10];
        break;
    }
  }

  return 1;
}

- (void)_processClientCallback:(id)a3
{
  v19 = a3;
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
  v4 = [v19 kind];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v13 = objc_alloc(MEMORY[0x1E69B8D90]);
      v14 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
      v15 = [v14 paymentSummaryItems];
      v5 = [v13 initWithPaymentSummaryItems:v15];

      v16 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
      v17 = [v16 paymentRequest];
      v18 = [v17 availableShippingMethods];
      [v5 setAvailableShippingMethods:v18];

      [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didReceiveShippingContactCompleteWithUpdate:v5];
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_13;
      }

      v5 = objc_alloc_init(MEMORY[0x1E69B8D98]);
      [v5 setStatus:0];
      v7 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
      v8 = [v7 paymentSummaryItems];
      [v5 setPaymentSummaryItems:v8];

      [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didReceiveShippingMethodCompleteWithUpdate:v5];
    }
  }

  else
  {
    switch(v4)
    {
      case 3:
        v5 = objc_alloc_init(MEMORY[0x1E69B8D88]);
        v9 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
        v10 = [v9 paymentSummaryItems];
        [v5 setPaymentSummaryItems:v10];

        [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didReceivePaymentMethodCompleteWithUpdate:v5];
        break;
      case 10:
        v5 = objc_alloc_init(MEMORY[0x1E69B8D78]);
        v11 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
        v12 = [v11 paymentSummaryItems];
        [v5 setPaymentSummaryItems:v12];

        [(PKPaymentAuthorizationStateMachine *)self->_stateMachine didReceiveCouponCodeCompleteWithUpdate:v5];
        break;
      case 5:
        v5 = [(PKContinuityPaymentViewController *)self delegate];
        v6 = [v19 payment];
        [v5 authorizationDidAuthorizePayment:v6];

        break;
      default:
        goto LABEL_13;
    }
  }

LABEL_13:
}

- (void)_resumeAuthenticationWithPreviousError:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 error];
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

    if (v4)
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
      v11 = self;
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

- (void)_startEvaluationWithHasInitialAuthenticatorState:(BOOL)a3 initialAuthenticatorState:(unint64_t)a4
{
  if (!self->_authenticating)
  {
    v5 = a3;
    [(PKContinuityPaymentViewController *)self _setAuthenticating:1];
    objc_initWeak(&location, self);
    authenticator = self->_authenticator;
    v8 = [(PKContinuityPaymentViewController *)self _evaluationRequestWithHasInitialAuthenticatorState:v5 initialAuthenticatorState:a4];
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
  v2 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  if ([v2 pinRequired])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (id)_evaluationRequestWithHasInitialAuthenticatorState:(BOOL)a3 initialAuthenticatorState:(unint64_t)a4
{
  v5 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v7 = [(PKContinuityPaymentViewController *)self _authenticatorPolicy];
  v8 = [objc_alloc(MEMORY[0x1E69BC748]) initWithPolicy:v7];
  v9 = v8;
  if (v5)
  {
    [v8 setInitialAuthenticatorState:a4];
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 > 0xA)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E80128C0[v7];
    }

    *buf = 138412290;
    v21 = v11;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "New authenticator policy is %@", buf, 0xCu);
  }

  v12 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  v13 = [v12 pinRequired];

  if (v13)
  {
    v14 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
    v15 = [v14 pass];
    v16 = [v15 localizedDescription];
    v17 = PKLocalizedPaymentString(&cfstr_InAppPaymentPi.isa, &stru_1F3BD5BF0.isa, v16);

    [v9 setPINTitle:v17];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*MEMORY[0x1E69BB820]];
    [v9 setPINLength:v18];
  }

  return v9;
}

- (void)_didSucceedWithAuthorizationStateParam:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  v5 = [MEMORY[0x1E69B8DB8] paymentService];
  [v14 pendingTransactions];
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
        [(PKContinuityPaymentViewController *)self _updatePendingTransaction:v9 withAuthorizationStateParam:v4];
        v10 = [v9 transaction];
        v11 = [v9 paymentApplication];
        v12 = [v9 pass];
        v13 = [v12 uniqueID];

        [v5 insertOrUpdatePaymentTransaction:v10 forPassUniqueIdentifier:v13 paymentApplication:v11 completion:0];
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

- (void)_updatePendingTransaction:(id)a3 withAuthorizationStateParam:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v15 paymentApplication];
  v7 = [v6 dpanIdentifier];

  v8 = [v5 peerPaymentTransactionMetadata];

  if (v8)
  {
    v9 = [v8 dpanIdentifier];
    v10 = [v9 isEqual:v7];

    if (v10)
    {
      v11 = [v15 transaction];
      v12 = [v8 serviceIdentifier];
      [v11 setServiceIdentifier:v12];

      v13 = [v8 requestDeviceScoreIdentifier];
      [v11 setRequestDeviceScoreIdentifier:v13];

      v14 = [v8 sendDeviceScoreIdentifier];
      [v11 setSendDeviceScoreIdentifier:v14];
    }
  }
}

- (void)_didFailWithError:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 error];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "In-app payment failed, error: %@", buf, 0xCu);
  }

  v7 = [v5 domain];
  if ([v7 isEqualToString:*MEMORY[0x1E69BBBC8]])
  {
    v8 = [v5 code] == -2007;

    if (v8)
    {
      v9 = [v5 userInfo];
      v10 = [v9 objectForKey:*MEMORY[0x1E696AA08]];

      v11 = [v10 domain];
      v12 = [v10 code];
      v13 = [v11 isEqualToString:*MEMORY[0x1E69BC300]];
      if (v12 == 2)
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
        v24 = [v11 isEqualToString:*MEMORY[0x1E69BC6F0]];
        if (v12 == 4)
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
  v20 = [v5 localizedFailureReason];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
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

- (void)_didFailWithFatalError:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v22 = a3;
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
  val = self;
  v4 = [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  v23 = [v4 pass];

  if (([v23 hasAssociatedPeerPaymentAccount] & 1) != 0 || (objc_msgSend(v23, "associatedAccountServiceAccountIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(PKPaymentAuthorizationStateMachine *)val->_stateMachine model];
    v7 = [v6 mode];

    if (v7 == 1)
    {
      v21 = [(PKPaymentAuthorizationStateMachine *)val->_stateMachine model];
      v8 = [MEMORY[0x1E69B8DB8] paymentService];
      v9 = [v21 pendingTransactions];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v10)
      {
        v11 = *v29;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v28 + 1) + 8 * i);
            v14 = [v13 transaction];
            v15 = [v13 paymentApplication];
            v16 = [v13 pass];
            v17 = [v16 uniqueID];

            v18 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v33 = v14;
              v34 = 2112;
              v35 = v17;
              v36 = 2112;
              v37 = v15;
              _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Inserting transaction: %@ for pass: %@ paymentApplication: %@", buf, 0x20u);
            }

            [v8 insertOrUpdatePaymentTransaction:v14 forPassUniqueIdentifier:v17 paymentApplication:v15 completion:0];
          }

          v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
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
  v20 = v22;
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
  v3 = [(PKContinuityPaymentViewController *)self delegate];
  [v3 authorizationDidFinishWithError:0];
}

- (void)_invalidPaymentDataWithParam:(id)a3
{
  v4 = a3;
  [(PKContinuityPaymentViewController *)self _suspendAuthentication];
  v5 = [v4 dataType] != 3 || objc_msgSend(v4, "status") != 5;
  objc_initWeak(&location, self);
  v6 = [v4 error];
  v7 = [v6 localizedFailureReason];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PKContinuityPaymentViewController__invalidPaymentDataWithParam___block_invoke;
  v8[3] = &unk_1E8012858;
  v10 = v5;
  objc_copyWeak(&v9, &location);
  [(PKContinuityPaymentViewController *)self setProgressState:13 string:v7 animated:1 withCompletion:v8];

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

- (BOOL)paymentPass:(id *)a3 paymentApplication:(id *)a4 fromAID:(id)a5 selectedPaymentMethodType:(unint64_t)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a5;
  [(PKPaymentAuthorizationStateMachine *)self->_stateMachine model];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v43 = 0u;
  v10 = [v35 acceptedPasses];
  v31 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v31)
  {
    v11 = *v41;
    v34 = v10;
    v29 = *v41;
    v30 = a4;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v32 = v12;
        v13 = *(*(&v40 + 1) + 8 * v12);
        v14 = [v13 deviceInAppPaymentApplications];
        v15 = [v14 allObjects];
        v16 = [v13 sortedPaymentApplications:v15 ascending:1];

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
              v23 = [v22 applicationIdentifier];
              if ([v23 isEqualToString:v9])
              {
                if (!a6)
                {

LABEL_23:
                  v26 = v13;
                  *a3 = v13;
                  v27 = v22;
                  *v30 = v22;

                  v25 = 1;
                  v10 = v34;
                  goto LABEL_24;
                }

                v24 = [v22 paymentType];

                if (v24 == a6)
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
        v10 = v34;
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

- (int64_t)_progressStateForAuthenticationWithBiometricFailure:(BOOL)a3
{
  result = PKPaymentProgressStateBaseStateForAuthenticatorEvaluationState(self->_internalAuthenticationEvaluationState, [(PKPaymentAuthorizationFooterView *)self->_authorizationView state], self->_idleStateIsPasscode, a3);
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

- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
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

- (void)authenticator:(id)a3 didTransitionToCoachingState:(int64_t)a4
{
  if (self->_internalCoachingState != a4)
  {
    self->_internalCoachingState = a4;
    [(PKContinuityPaymentViewController *)self _updateCoachingState];
  }
}

- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_passcodeViewController)
  {
    if (v9)
    {
      v9[2](v9, 1);
    }
  }

  else if ([(PKPaymentAuthorizationStateMachine *)self->_stateMachine state]== 5)
  {
    [(PKContinuityPaymentViewController *)self _setPasscodeViewController:v8];
    [(UIViewController *)self->_passcodeViewController setModalPresentationStyle:5];
    passcodeViewController = self->_passcodeViewController;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __91__PKContinuityPaymentViewController_presentPasscodeViewController_completionHandler_reply___block_invoke;
    v12[3] = &unk_1E8010B50;
    v13 = v9;
    [(PKContinuityPaymentViewController *)self presentViewController:passcodeViewController animated:1 completion:v12];
  }

  else if (v9)
  {
    v9[2](v9, 0);
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
    v4 = [(UIViewController *)passcodeViewController presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    [(PKContinuityPaymentViewController *)self _setPasscodeViewController:0];
  }
}

- (void)presentPassphraseViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_passphraseViewController)
  {
    if (v9)
    {
      v9[2](v9, 1);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
    [v11 setModalPresentationStyle:6];
    v12 = [v11 view];
    v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v12 setBackgroundColor:v13];

    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPassphrasePressed];
    v15 = [v8 navigationItem];
    [v15 setRightBarButtonItem:v14];

    [(PKContinuityPaymentViewController *)self _setPassphraseViewController:v11];
    passphraseViewController = self->_passphraseViewController;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__PKContinuityPaymentViewController_presentPassphraseViewController_completionHandler_reply___block_invoke;
    v17[3] = &unk_1E8010B50;
    v18 = v9;
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
      v4 = [(UIViewController *)passphraseViewController presentingViewController];
      [v4 dismissViewControllerAnimated:1 completion:0];

      [(PKContinuityPaymentViewController *)self _setPassphraseViewController:0];
    }
  }
}

- (void)authorizationFooterViewPasscodeButtonPressed:(id)a3
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

- (void)authorizationFooterViewDidChangeConstraints:(id)a3
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