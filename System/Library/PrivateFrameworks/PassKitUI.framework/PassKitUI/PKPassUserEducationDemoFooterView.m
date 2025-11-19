@interface PKPassUserEducationDemoFooterView
- (BOOL)_showGlyphForState:(unint64_t)a3;
- (PKPassUserEducationDemoFooterView)initWithPass:(id)a3 userEducationDemoController:(id)a4 context:(id)a5 contactlessSession:(id)a6;
- (id)_buttonForType:(unint64_t)a3 failureReason:(unint64_t)a4;
- (id)_filledButtonWithTitle:(id)a3 action:(id)a4;
- (void)_cancelAuthentication;
- (void)_consumeAuthenticatorEvaluationResponse:(id)a3 completion:(id)a4;
- (void)_endContactlessPaymentSession;
- (void)_endPaymentAuthorization;
- (void)_performAuthentication;
- (void)_transitionToState:(unint64_t)a3 failureReason:(unint64_t)a4 animated:(BOOL)a5;
- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4;
- (void)dealloc;
- (void)dismissPasscodeViewController;
- (void)layoutIfNeededAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5;
- (void)willBecomeHiddenAnimated:(BOOL)a3;
- (void)willBecomeVisibleAnimated:(BOOL)a3;
@end

@implementation PKPassUserEducationDemoFooterView

- (PKPassUserEducationDemoFooterView)initWithPass:(id)a3 userEducationDemoController:(id)a4 context:(id)a5 contactlessSession:(id)a6
{
  v37[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v36.receiver = self;
  v36.super_class = PKPassUserEducationDemoFooterView;
  v13 = [(PKPassFooterContentView *)&v36 initWithPass:v10 presentationContext:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_userEducationDemoController, a4);
    objc_storeStrong(&v14->_contactlessInterfaceSession, a6);
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(v15, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v17 = dispatch_queue_create("com.apple.passkit.demoAuthorization", v16);
    authorizationQueue = v14->_authorizationQueue;
    v14->_authorizationQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x1E69BC740]);
    authenticator = v14->_authenticator;
    v14->_authenticator = v19;

    [(PKAuthenticator *)v14->_authenticator setDelegate:v14];
    v14->_authenticatorState = [MEMORY[0x1E69BC740] currentStateForPolicy:0];
    v14->_userIntentStyle = [MEMORY[0x1E69BC740] userIntentStyle];
    v14->_currentState = 1;
    v21 = [[PKPassPaymentPayStateView alloc] initWithStyle:[(PKPassFooterContentView *)v14 style]];
    payStateView = v14->_payStateView;
    v14->_payStateView = v21;

    [(PKPassPaymentPayStateView *)v14->_payStateView setDelegate:v14];
    [(PKPassPaymentPayStateView *)v14->_payStateView setAlpha:0.0];
    [(PKPassPaymentPayStateView *)v14->_payStateView setLabelAlpha:1.0];
    v23 = [(PKPassPaymentPayStateView *)v14->_payStateView glyph];
    [v23 setState:6 animated:0 completionHandler:0];

    [(PKPassUserEducationDemoFooterView *)v14 addSubview:v14->_payStateView];
    v24 = [objc_alloc(MEMORY[0x1E69AD308]) initWithStyle:0];
    physicalButtonView = v14->_physicalButtonView;
    v14->_physicalButtonView = v24;

    [(LAUIPhysicalButtonView *)v14->_physicalButtonView setAlpha:0.0];
    v26 = v14->_physicalButtonView;
    v27 = PKLocalizedPearlString(&cfstr_PaymentPushBut.isa);
    [(LAUIPhysicalButtonView *)v26 setInstruction:v27];

    [(PKPassUserEducationDemoFooterView *)v14 addSubview:v14->_physicalButtonView];
    v28 = [(PKPassFooterContentView *)v14 bottomRule];
    [v28 setAlpha:0.0];

    [(PKPassFooterContentView *)v14 setInfoButtonAlpha:0.0];
    v29 = [v10 paymentPass];
    v30 = [v29 devicePrimaryContactlessPaymentApplication];
    v37[0] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v32 = [v12 activatePaymentApplications:v31 forPaymentPass:v29];

    if ((v32 & 1) == 0)
    {
      v33 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_1BD026000, v33, OS_LOG_TYPE_DEFAULT, "Failed to activate demo payment application for user education pass", v35, 2u);
      }
    }
  }

  return v14;
}

- (void)dealloc
{
  [(PKPassUserEducationDemoFooterView *)self _endContactlessPaymentSession];
  v3.receiver = self;
  v3.super_class = PKPassUserEducationDemoFooterView;
  [(PKPassFooterContentView *)&v3 dealloc];
}

- (BOOL)_showGlyphForState:(unint64_t)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  if (((1 << a3) & 0x9E) != 0)
  {
    return PKSystemApertureIsAvailable() ^ 1;
  }

  return ((1 << a3) & 0x60) != 0;
}

- (void)_transitionToState:(unint64_t)a3 failureReason:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v45 = *MEMORY[0x1E69E9840];
  if ([(PKPassFooterContentView *)self isInvalidated]|| self->_currentState == a3)
  {
    return;
  }

  currentActionButtonType = self->_currentActionButtonType;
  if (PKPearlIsAvailable())
  {
    v10 = [(PKPassFooterContentView *)self coachingState]!= 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = 6;
  v32 = a4;
  v33 = v5;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      v15 = 3;
      if (v10)
      {
        v15 = 1;
      }

      v16 = 3;
      if (v10)
      {
        v16 = 1;
      }

      v17 = 5;
      if (a3 == 3)
      {
        v18 = 0;
      }

      else
      {
        v18 = currentActionButtonType;
      }

      if (a3 != 3)
      {
        v16 = 0;
        v17 = 6;
      }

      if (a3 != 2)
      {
        currentActionButtonType = v18;
      }

      v12 = 0;
      if (a3 != 2)
      {
        v15 = v16;
      }

      v31 = v15;
      if (a3 == 2)
      {
        v11 = 4;
      }

      else
      {
        v11 = v17;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        if (self->_currentState == 2)
        {
          [(PKApplePayUserEducationDemoController *)self->_userEducationDemoController reportBiometricUnsuccessful];
          currentActionButtonType = 1;
        }

        v12 = 0;
        v11 = 0;
        v13 = 3;
        if (v10)
        {
          v13 = 0;
        }

        v31 = v13;
      }

      else
      {
        v12 = 0;
        v31 = 0;
      }
    }

    else
    {
      [(PKApplePayUserEducationDemoController *)self->_userEducationDemoController reportRequestedUserIntent];
      v12 = 0;
      v31 = 2;
      v11 = 2;
    }

    goto LABEL_51;
  }

  if (a3 > 5)
  {
    if (a3 == 6)
    {
      v12 = 0;
      v11 = 11;
      v31 = 8;
      currentActionButtonType = 3;
      goto LABEL_51;
    }

    if (a3 != 7)
    {
      v12 = 0;
      v31 = 0;
      goto LABEL_51;
    }

    v12 = 0;
    if (a4 != 1)
    {
      if (a4 == 3)
      {
        v12 = 0;
        v11 = 0;
        v31 = 10;
        currentActionButtonType = 2;
        goto LABEL_51;
      }

      if (a4 != 2)
      {
        v31 = 0;
        v11 = 0;
        goto LABEL_51;
      }

      if ((self->_currentState | 2) == 3)
      {
        [(PKApplePayUserEducationDemoController *)self->_userEducationDemoController reportBiometricUnsuccessful];
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }
    }

    v31 = 0;
    v11 = 3;
LABEL_50:
    currentActionButtonType = 1;
    goto LABEL_51;
  }

  v12 = 0;
  if (a3 == 4)
  {
    v31 = 0;
    v11 = 0;
    goto LABEL_50;
  }

  objc_initWeak(location, self);
  userEducationDemoController = self->_userEducationDemoController;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __79__PKPassUserEducationDemoFooterView__transitionToState_failureReason_animated___block_invoke;
  v36[3] = &unk_1E8011180;
  objc_copyWeak(&v37, location);
  [(PKApplePayUserEducationDemoController *)userEducationDemoController runContactlessSimulationWithCompletion:v36];
  objc_destroyWeak(&v37);
  objc_destroyWeak(location);
  currentActionButtonType = 0;
  v12 = 0;
  v11 = 9;
  v31 = 5;
LABEL_51:
  v30 = v12;
  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    currentState = self->_currentState;
    *location = 138413058;
    *&location[4] = v20;
    v39 = 2048;
    v40 = currentState;
    v41 = 2048;
    v42 = a3;
    v43 = 2048;
    v44 = a4;
    v22 = v20;
    _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "%@: Transitioning footer state %lu to %lu(%lu)", location, 0x2Au);
  }

  if (v11 <= 5 && v11 != 2 && ![(PKPassUserEducationDemoFooterView *)self _canAuthenticateWithBiometrics])
  {
    v11 = 6;
  }

  v23 = [(PKPassUserEducationDemoFooterView *)self _buttonForType:currentActionButtonType failureReason:a4];
  [(UIButton *)self->_actionButton alpha];
  [v23 setAlpha:?];
  if (v23)
  {
    self->_currentActionButtonType = currentActionButtonType;
    [(UIButton *)self->_actionButton removeFromSuperview];
    [(PKPassUserEducationDemoFooterView *)self addSubview:v23];
    objc_storeStrong(&self->_actionButton, v23);
    [(PKPassUserEducationDemoFooterView *)self setNeedsLayout];
    [(PKPassUserEducationDemoFooterView *)self layoutIfNeeded];
  }

  else
  {
    self->_currentActionButtonType = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPassUserEducationDemoFooterView__transitionToState_failureReason_animated___block_invoke_23;
  aBlock[3] = &__block_descriptor_33_e28_v28__0__UIView_8B16___v___20l;
  v35 = v33;
  v24 = _Block_copy(aBlock);
  v24[2](v24, self->_payStateView, [(PKPassUserEducationDemoFooterView *)self _showGlyphForState:a3], 0);
  v24[2](v24, self->_actionButton, v23 != 0, 0);
  if (self->_userIntentStyle == 1)
  {
    v25 = v31 == 2;
    v24[2](v24, self->_physicalButtonView, v25, 0);
    [(LAUIPhysicalButtonView *)self->_physicalButtonView setAnimating:v25];
    [(PKPassFooterContentView *)self _setPhysicalButtonRequired:v25];
  }

  [(PKPassPaymentPayStateView *)self->_payStateView setRecognizingHint:self->_authenticationEvaluationState == 2];
  [(PKPassPaymentPayStateView *)self->_payStateView setState:v31 animated:v33 withCompletionHandler:0];
  v26 = [(PKPassPaymentPayStateView *)self->_payStateView glyph];
  [v26 setState:v11 animated:v33 completionHandler:0];

  if (v30)
  {
    AudioServicesPlaySystemSound(0x573u);
    [(PKPassPaymentPayStateView *)self->_payStateView emphasizeStateIfPossible:v31 withOverrideText:0];
    v27 = [(UIButton *)self->_actionButton layer];
    v28 = [MEMORY[0x1E6979300] pkui_shakeAnimation];
    v29 = [v27 pkui_addAdditiveAnimation:v28];
  }

  self->_currentState = a3;
  self->_currentFailureReason = v32;
}

void __79__PKPassUserEducationDemoFooterView__transitionToState_failureReason_animated___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v4 = WeakRetained;
    [WeakRetained _transitionToState:6 animated:1];
    WeakRetained = v4;
  }
}

void __79__PKPassUserEducationDemoFooterView__transitionToState_failureReason_animated___block_invoke_23(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [v7 alpha];
  if (v9 != v10)
  {
    if (*(a1 + 32) == 1)
    {
      v11 = MEMORY[0x1E69DD250];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79__PKPassUserEducationDemoFooterView__transitionToState_failureReason_animated___block_invoke_2;
      v14[3] = &unk_1E80119C8;
      v15 = v7;
      v16 = v9;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __79__PKPassUserEducationDemoFooterView__transitionToState_failureReason_animated___block_invoke_3;
      v12[3] = &unk_1E8010AD8;
      v13 = v8;
      [v11 animateWithDuration:v14 animations:v12 completion:0.3];

      goto LABEL_10;
    }

    [v7 setAlpha:v9];
  }

  if (v8)
  {
    v8[2](v8);
  }

LABEL_10:
}

uint64_t __79__PKPassUserEducationDemoFooterView__transitionToState_failureReason_animated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_performAuthentication
{
  if (!self->_authenticating)
  {
    self->_authenticating = 1;
    if ([(PKPassUserEducationDemoFooterView *)self _canAuthenticateWithBiometrics]|| [(PKPassUserEducationDemoFooterView *)self _canAuthenticateWithPasscode])
    {
      v3 = [(PKPassFooterContentView *)self pass];
      v4 = [MEMORY[0x1E69B8750] _copyDevicePrimaryContactlessAccessControlForSecureElementPass:v3];
      v5 = [objc_alloc(MEMORY[0x1E69BC748]) initWithPolicy:0];
      [v5 setInitialAuthenticatorState:self->_authenticatorState];
      [v5 setAssumeUserIntentAvailable:1];
      if (v4)
      {
        [v5 setAccessControlRef:v4];
        CFRelease(v4);
      }

      objc_initWeak(&location, self);
      authenticator = self->_authenticator;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke;
      v18[3] = &unk_1E80122B0;
      objc_copyWeak(&v19, &location);
      [(PKAuthenticator *)authenticator evaluateRequest:v5 withCompletion:v18];
      if (self->_userIntentStyle == -1)
      {
        v7 = [(UIView *)self pkui_viewControllerFromResponderChain];
        if (v7)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke_4;
          aBlock[3] = &unk_1E8010998;
          objc_copyWeak(&v17, &location);
          v8 = _Block_copy(aBlock);
          v11 = MEMORY[0x1E69E9820];
          v12 = 3221225472;
          v13 = __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke_5;
          v14 = &unk_1E80122D8;
          objc_copyWeak(&v15, &location);
          v9 = _Block_copy(&v11);
          AccesibilityIntentUnavailable = PKAlertCreateAccesibilityIntentUnavailable(v8, v9);
          [v7 presentViewController:AccesibilityIntentUnavailable animated:1 completion:{0, v11, v12, v13, v14}];

          objc_destroyWeak(&v15);
          objc_destroyWeak(&v17);
        }
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {

      [(PKPassUserEducationDemoFooterView *)self _transitionToState:7 failureReason:3 animated:1];
    }
  }
}

void __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 537) = 0;
    IsAvailable = PKUserIntentIsAvailable();
    v7 = 3;
    if (!IsAvailable)
    {
      v7 = 0;
    }

    v5[76] = v7;
    v8 = [v3 result];
    if (v8 <= 7)
    {
      if (((1 << v8) & 0xC8) != 0)
      {
        goto LABEL_9;
      }

      if (((1 << v8) & 0x30) != 0)
      {
        [v5 _transitionToState:7 failureReason:1 animated:1];
        goto LABEL_17;
      }

      if (v8 == 2)
      {
LABEL_9:
        [v5 _transitionToState:1 animated:1];
        goto LABEL_17;
      }
    }

    if (v8 == 1)
    {
      [v5 _performAuthentication];
    }

    else if (!v8)
    {
      if ([v5 _authenticationAllowed] && objc_msgSend(v3, "biometricMatch"))
      {
        [MEMORY[0x1E69BC758] invokeSuccessFeedback];
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke_2;
      v9[3] = &unk_1E8011180;
      objc_copyWeak(&v10, (a1 + 32));
      [v5 _consumeAuthenticatorEvaluationResponse:v3 completion:v9];
      objc_destroyWeak(&v10);
    }
  }

LABEL_17:
}

void __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke_2(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke_3;
  v3[3] = &unk_1E80111A8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 pkui_consumeSharedRootAuthenticationContext];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      [WeakRetained _transitionToState:5 animated:1];
    }

    else
    {
      [WeakRetained _transitionToState:7 failureReason:1 animated:1];
    }

    WeakRetained = v4;
  }
}

void __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[537] == 1)
  {
    v2 = WeakRetained;
    [WeakRetained _transitionToState:7 failureReason:3 animated:1];
    WeakRetained = v2;
  }
}

void __59__PKPassUserEducationDemoFooterView__performAuthentication__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v4 openSensitiveURL:v5 withOptions:0];
  }
}

- (void)_consumeAuthenticatorEvaluationResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_contactlessInterfaceSession;
  authorizationQueue = self->_authorizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKPassUserEducationDemoFooterView__consumeAuthenticatorEvaluationResponse_completion___block_invoke;
  block[3] = &unk_1E8012300;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(authorizationQueue, block);
}

uint64_t __88__PKPassUserEducationDemoFooterView__consumeAuthenticatorEvaluationResponse_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) credential];
  v4 = [v2 authorizeAndStartCardEmulationWithCredential:v3] ^ 1;

  if ((v4 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "User education demo footer view failed to consume evaluation response", v7, 2u);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v4);
  }

  return result;
}

- (id)_buttonForType:(unint64_t)a3 failureReason:(unint64_t)a4
{
  if (!a3)
  {
    v13 = 0;
    goto LABEL_17;
  }

  v6 = MEMORY[0x1E69BA330];
  if (a4)
  {
    v6 = MEMORY[0x1E69BA2F8];
  }

  v7 = *v6;
  objc_initWeak(&location, self);
  switch(a3)
  {
    case 3uLL:
      v15 = MEMORY[0x1E69DC628];
      v9 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__PKPassUserEducationDemoFooterView__buttonForType_failureReason___block_invoke_3;
      v17[3] = &unk_1E8012328;
      v10 = &v18;
      objc_copyWeak(&v18, &location);
      v17[4] = v7;
      v11 = [v15 actionWithHandler:v17];
      v12 = PKLocalizedPaymentString(&cfstr_UserEducationR.isa);
      goto LABEL_11;
    case 2uLL:
      v11 = [MEMORY[0x1E69DC628] actionWithHandler:&__block_literal_global_14];
      v14 = PKLocalizedPaymentString(&cfstr_GenericNoPassc.isa);
LABEL_12:
      v13 = 0;
      if (v11 && v14)
      {
        v13 = [(PKPassUserEducationDemoFooterView *)self _filledButtonWithTitle:v14 action:v11];
        [v13 setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
      }

      goto LABEL_16;
    case 1uLL:
      v8 = MEMORY[0x1E69DC628];
      v9 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __66__PKPassUserEducationDemoFooterView__buttonForType_failureReason___block_invoke;
      v19[3] = &unk_1E8012328;
      v10 = &v20;
      objc_copyWeak(&v20, &location);
      v19[4] = v7;
      v11 = [v8 actionWithHandler:v19];
      v12 = PKLocalizedPaymentString(&cfstr_PaymentPasscod.isa);
LABEL_11:
      v14 = v12;

      objc_destroyWeak(v10);
      goto LABEL_12;
  }

  v11 = 0;
  v14 = 0;
  v13 = 0;
LABEL_16:
  objc_destroyWeak(&location);

LABEL_17:

  return v13;
}

void __66__PKPassUserEducationDemoFooterView__buttonForType_failureReason___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[61] fallbackToSystemPasscodeUI];
  }

  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB6B0];
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x1E69BA680];
  v10[0] = *MEMORY[0x1E69BABE8];
  v10[1] = v7;
  v8 = *MEMORY[0x1E69BA6F0];
  v11[0] = v6;
  v11[1] = v8;
  v10[2] = *MEMORY[0x1E69BA440];
  v11[2] = *MEMORY[0x1E69BA320];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 subject:v5 sendEvent:v9];
}

void __66__PKPassUserEducationDemoFooterView__buttonForType_failureReason___block_invoke_2()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Pearl"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

void __66__PKPassUserEducationDemoFooterView__buttonForType_failureReason___block_invoke_3(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[60] requestPracticeAgain];
  }

  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BB6B0];
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x1E69BA680];
  v10[0] = *MEMORY[0x1E69BABE8];
  v10[1] = v7;
  v8 = *MEMORY[0x1E69BA6F0];
  v11[0] = v6;
  v11[1] = v8;
  v10[2] = *MEMORY[0x1E69BA440];
  v11[2] = *MEMORY[0x1E69BA328];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v4 subject:v5 sendEvent:v9];
}

- (id)_filledButtonWithTitle:(id)a3 action:(id)a4
{
  v5 = a4;
  v6 = a3;
  PKFloatRoundToPixel();
  v8 = v7;
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], *MEMORY[0x1E69DDC40]);
  [v9 lineHeight];
  PKFloatRoundToPixel();
  v14 = v10;
  v15 = xmmword_1BE0B69E0;
  v16 = vdupq_n_s64(2uLL);
  v11 = [[PKContinuousButton alloc] initWithConfiguration:&v14];
  [(PKContinuousButton *)v11 setContentEdgeInsets:v8, 25.0, 16.0 - v8, 25.0];
  v12 = [(PKContinuousButton *)v11 titleLabel];
  [v12 setFont:v9];
  [v12 setMinimumScaleFactor:0.5];
  [v12 setTextAlignment:1];
  [v12 setLineBreakMode:4];
  [(PKContinuousButton *)v11 setTitle:v6 forState:0];

  [(PKContinuousButton *)v11 _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
  [(PKContinuousButton *)v11 setExclusiveTouch:1];
  [(PKContinuousButton *)v11 sizeToFit];
  [(PKContinuousButton *)v11 addAction:v5 forControlEvents:64];

  return v11;
}

- (void)_endContactlessPaymentSession
{
  if (self->_contactlessInterfaceSession)
  {
    [MEMORY[0x1E69B8758] attachDefaultBehaviorToSession:?];
    v3 = self->_contactlessInterfaceSession;
    v4 = v3;
    if (v3)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v10 = ___ZL17InvalidateSessionP29PKContactlessInterfaceSession_block_invoke;
      v11 = &unk_1E8012370;
      v12 = v3;
      v5 = v9;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v6 = [MEMORY[0x1E69DC668] sharedApplication];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __PeformBackgroundTask_block_invoke;
      v14[3] = &unk_1E8011A18;
      v14[4] = &v15;
      v7 = [v6 beginBackgroundTaskWithExpirationHandler:v14];
      v16[3] = v7;

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __PeformBackgroundTask_block_invoke_2;
      v13[3] = &unk_1E8011A18;
      v13[4] = &v15;
      v10(v5, v13);
      _Block_object_dispose(&v15, 8);
    }

    contactlessInterfaceSession = self->_contactlessInterfaceSession;
    self->_contactlessInterfaceSession = 0;
  }
}

- (void)_endPaymentAuthorization
{
  [(PKApplePayUserEducationDemoController *)self->_userEducationDemoController endContactlessSimulation];

  [(PKPassUserEducationDemoFooterView *)self _cancelAuthentication];
}

- (void)_cancelAuthentication
{
  if (self->_authenticating)
  {
    self->_authenticating = 0;
    [(PKAuthenticator *)self->_authenticator cancelEvaluationWithOptions:1];
  }
}

- (void)layoutIfNeededAnimated:(BOOL)a3
{
  self->_animated = a3;
  [(PKPassUserEducationDemoFooterView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PKPassUserEducationDemoFooterView;
  [(PKPassFooterContentView *)&v18 layoutSubviews];
  [(PKPassUserEducationDemoFooterView *)self bounds];
  memset(&remainder, 0, sizeof(remainder));
  memset(&v16, 0, sizeof(v16));
  CGRectDivide(v19, &v16, &remainder, 10.0, CGRectMinYEdge);
  [(UIView *)self->_payStateView pkui_setFrame:self->_animated animated:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
  [(UIButton *)self->_actionButton frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKPassPaymentPayStateView *)self->_payStateView bounds];
  [(PKPassUserEducationDemoFooterView *)self convertRect:self->_payStateView fromView:?];
  CGRectGetMaxY(v20);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  CGRectGetHeight(v21);
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  [(PKPassPaymentPayStateView *)self->_payStateView setLabelStateBottomInset:CGRectGetHeight(v22) + 12.0];
  if (![(PKPassPaymentPayStateView *)self->_payStateView layoutState])
  {
    v11 = [(PKPassPaymentPayStateView *)self->_payStateView label];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(PKPassPaymentPayStateView *)self->_payStateView glyph];
    }

    v14 = v13;

    [v14 bounds];
    [(PKPassUserEducationDemoFooterView *)self convertRect:v14 fromView:?];
    CGRectGetMaxY(v23);
  }

  UIRectCenteredXInRect();
  [(UIButton *)self->_actionButton setFrame:?];
  physicalButtonView = self->_physicalButtonView;
  if (physicalButtonView)
  {
    [(LAUIPhysicalButtonView *)physicalButtonView updateFrame];
  }
}

- (void)authenticator:(id)a3 didTransitionToEvaluationStateWithEvent:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_authenticating)
  {
    return;
  }

  var1 = a4.var1;
  var0 = a4.var0;
  self->_authenticationEvaluationState = a4.var0;
  if (PKPearlIsAvailable())
  {
    v7 = (self->_coachingState - 3) < 2;
  }

  else
  {
    v7 = 0;
  }

  currentFailureReason = 0;
  if (var0 > 2)
  {
    if (var0 != 3)
    {
      if (var0 == 4)
      {
        currentFailureReason = 0;
        v9 = 4;
      }

      else
      {
        v9 = 0;
        if (var0 == 5)
        {
          currentFailureReason = 0;
          v9 = 6;
        }
      }

      goto LABEL_30;
    }

    if (self->_currentState != 7)
    {
      currentFailureReason = 0;
      v9 = 0;
      goto LABEL_30;
    }

    currentFailureReason = self->_currentFailureReason;
  }

  else
  {
    if (var0)
    {
      if (var0 == 1)
      {
        currentFailureReason = 0;
        v9 = 2;
      }

      else
      {
        v9 = 0;
        if (var0 == 2)
        {
          currentFailureReason = 0;
          self->_hasAttemptedBiometricAuth = 1;
          v9 = 3;
        }
      }

      goto LABEL_30;
    }

    v10 = var1 == 3 || v7;
    if (var1 == 3)
    {
      currentFailureReason = 4;
    }

    else
    {
      currentFailureReason = 2;
    }

    if (!v10)
    {
      if (self->_hasAttemptedBiometricAuth || (var1 - 1) < 2)
      {
        currentFailureReason = 2;
      }

      else
      {
        currentFailureReason = 0;
      }

      if (self->_hasAttemptedBiometricAuth || (var1 - 1) < 2)
      {
        v9 = 7;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_30;
    }
  }

  v9 = 7;
LABEL_30:
  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = var0;
    v17 = 2048;
    v18 = var1;
    v19 = 2048;
    v20 = v9;
    v12 = v14;
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "%@: Evaluating authenticator state %lu - %lu and transitioning to state %lu", &v13, 0x2Au);
  }

  [(PKPassUserEducationDemoFooterView *)self _transitionToState:v9 failureReason:currentFailureReason animated:1];
}

- (void)presentPasscodeViewController:(id)a3 completionHandler:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);

  if (WeakRetained)
  {
    if (v9)
    {
      v9[2](v9, 1);
    }
  }

  else
  {
    v12 = objc_storeWeak(&self->_passcodeVC, v8);
    [v8 setModalPresentationStyle:5];

    v13 = [(UIView *)self pkui_viewControllerFromResponderChain];
    objc_initWeak(&location, self);
    v14 = objc_loadWeakRetained(&self->_passcodeVC);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__PKPassUserEducationDemoFooterView_presentPasscodeViewController_completionHandler_reply___block_invoke;
    v15[3] = &unk_1E80111D0;
    objc_copyWeak(&v17, &location);
    v16 = v9;
    [v13 presentViewController:v14 animated:1 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __91__PKPassUserEducationDemoFooterView_presentPasscodeViewController_completionHandler_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = objc_loadWeakRetained(WeakRetained + 70);
      (*(v3 + 16))(v3, v4 != 0);

      WeakRetained = v5;
    }
  }
}

- (void)dismissPasscodeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeVC);
  objc_storeWeak(&self->_passcodeVC, 0);
  v3 = [WeakRetained presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)willBecomeVisibleAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassUserEducationDemoFooterView;
  [(PKPassFooterContentView *)&v4 willBecomeVisibleAnimated:a3];
  self->_isVisible = 1;
  if (self->_currentState == 1)
  {
    [(PKPassUserEducationDemoFooterView *)self _performAuthentication];
  }
}

- (void)willBecomeHiddenAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassUserEducationDemoFooterView;
  [(PKPassFooterContentView *)&v4 willBecomeHiddenAnimated:a3];
  self->_isVisible = 0;
  [(PKPassUserEducationDemoFooterView *)self _endPaymentAuthorization];
}

@end