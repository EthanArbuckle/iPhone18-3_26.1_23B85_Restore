@interface PKAuthorizationCoverSheetViewController
- (PKAuthorizationCoverSheetViewController)initWithDelegate:(id)delegate authenticator:(id)authenticator passUniqueIdentifier:(id)identifier source:(int64_t)source;
- (id)_genericBiometricFailureLabelAccessibilityLabel:(BOOL)label;
- (id)_genericBiometricLabelAccessibilityLabel:(BOOL)label;
- (id)_genericBiometricUnavailableLabelAccessibilityLabel:(BOOL)label;
- (id)_passcodeLabelAccessibilityLabel:(BOOL)label;
- (void)_animateInPasscodeViewController;
- (void)_fallbackToPasscode;
- (void)_presentPasscodeToExitLockout;
- (void)_transitionToState:(unint64_t)state animated:(BOOL)animated;
- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event;
- (void)dealloc;
- (void)dismissPasscodeViewController;
- (void)fadeInUIAnimated:(BOOL)animated performSynchronizedAnimation:(id)animation;
- (void)fadeOutUIWithCompletion:(id)completion;
- (void)invalidate;
- (void)loadView;
- (void)presentPasscodeViewController:(id)controller completionHandler:(id)handler reply:(id)reply;
- (void)startEvaluation;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAuthorizationCoverSheetViewController

- (PKAuthorizationCoverSheetViewController)initWithDelegate:(id)delegate authenticator:(id)authenticator passUniqueIdentifier:(id)identifier source:(int64_t)source
{
  delegateCopy = delegate;
  authenticatorCopy = authenticator;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = PKAuthorizationCoverSheetViewController;
  v13 = [(PKAuthorizationCoverSheetViewController *)&v17 init];
  if (v13)
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    passLibrary = v13->_passLibrary;
    v13->_passLibrary = mEMORY[0x1E69B8A58];

    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_authenticator, authenticator);
    [(PKAuthenticator *)v13->_authenticator setDelegate:v13];
    objc_storeStrong(&v13->_passUniqueIdentifier, identifier);
    v13->_presentationSource = source;
  }

  return v13;
}

- (void)dealloc
{
  [(PKAuthorizationCoverSheetViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKAuthorizationCoverSheetViewController;
  [(PKAuthorizationCoverSheetViewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKAuthorizationCoverSheetViewController;
  [(PKAuthorizationCoverSheetViewController *)&v4 viewDidAppear:appear];
  if (self->_isErrorRecovery)
  {
    AudioServicesPlaySystemSound(0x573u);
  }
}

- (void)loadView
{
  v39[2] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = PKAuthorizationCoverSheetViewController;
  [(PKAuthorizationCoverSheetViewController *)&v38 loadView];
  view = [(PKAuthorizationCoverSheetViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  IsAvailable = PKSystemApertureIsAvailable();
  self->_shouldDrawGlyph = IsAvailable ^ 1;
  if ((IsAvailable & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x1E69BC758]) initWithStyle:6];
    glyphView = self->_glyphView;
    self->_glyphView = v6;

    [view addSubview:self->_glyphView];
  }

  v34 = PKLocalizedPaymentString(&cfstr_GenericPasscod.isa);
  v33 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], *MEMORY[0x1E69DDC38]);
  [v33 lineHeight];
  PKFloatRoundToPixel();
  v35 = v8;
  v36 = xmmword_1BE0B69E0;
  v37 = vdupq_n_s64(2uLL);
  v9 = [[PKContinuousButton alloc] initWithConfiguration:&v35];
  enterPasscodeButton = self->_enterPasscodeButton;
  self->_enterPasscodeButton = &v9->super;

  v11 = [MEMORY[0x1E69DC740] pkui_plainConfigurationWithTitle:v34 font:v33 lineBreakMode:4 textAlignment:1];
  [v11 setContentInsets:{8.0, 25.0, 8.0, 25.0}];
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v11 setBaseForegroundColor:systemWhiteColor];

  [v11 setTitleAlignment:2];
  [(UIButton *)self->_enterPasscodeButton setConfiguration:v11];
  [(UIButton *)self->_enterPasscodeButton addTarget:self action:sel__fallbackToPasscode forControlEvents:64];
  [(UIButton *)self->_enterPasscodeButton sizeToFit];
  [(UIButton *)self->_enterPasscodeButton setAlpha:0.0];
  [view addSubview:self->_enterPasscodeButton];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabelView = self->_titleLabelView;
  self->_titleLabelView = v13;

  [(UILabel *)self->_titleLabelView setAlpha:0.0];
  [(UILabel *)self->_titleLabelView setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_titleLabelView setTextAlignment:1];
  v15 = self->_titleLabelView;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v15 setTextColor:secondaryLabelColor];

  [(UILabel *)self->_titleLabelView setNumberOfLines:2];
  v17 = self->_titleLabelView;
  v18 = *MEMORY[0x1E69DDDC8];
  v19 = *MEMORY[0x1E69DDC28];
  v20 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DDC28]);
  [(UILabel *)v17 setFont:v20];

  [(UILabel *)self->_titleLabelView setLineBreakMode:4];
  [(UILabel *)self->_titleLabelView setIsAccessibilityElement:0];
  [view addSubview:self->_titleLabelView];
  v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabelView = self->_subtitleLabelView;
  self->_subtitleLabelView = v21;

  [(UILabel *)self->_subtitleLabelView setAlpha:0.0];
  [(UILabel *)self->_subtitleLabelView setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_subtitleLabelView setTextAlignment:1];
  v23 = self->_subtitleLabelView;
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UILabel *)v23 setTextColor:tertiaryLabelColor];

  [(UILabel *)self->_subtitleLabelView setNumberOfLines:2];
  v25 = self->_subtitleLabelView;
  v26 = PKFontForDefaultDesign(v18, v19);
  [(UILabel *)v25 setFont:v26];

  [(UILabel *)self->_subtitleLabelView setLineBreakMode:4];
  [(UILabel *)self->_subtitleLabelView setIsAccessibilityElement:0];
  [view addSubview:self->_subtitleLabelView];
  v27 = [objc_alloc(MEMORY[0x1E69DC608]) initWithAccessibilityContainer:view];
  textAccessibilityElement = self->_textAccessibilityElement;
  self->_textAccessibilityElement = v27;

  [(UIAccessibilityElement *)self->_textAccessibilityElement setAccessibilityTraits:*MEMORY[0x1E69DD9F0] | *MEMORY[0x1E69DDA38]];
  v29 = [objc_alloc(MEMORY[0x1E69DC608]) initWithAccessibilityContainer:view];
  passcodeAccessibilityElement = self->_passcodeAccessibilityElement;
  self->_passcodeAccessibilityElement = v29;

  [(UIAccessibilityElement *)self->_passcodeAccessibilityElement setAccessibilityLabel:v34];
  [(UIAccessibilityElement *)self->_passcodeAccessibilityElement setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
  v31 = self->_passcodeAccessibilityElement;
  v39[0] = self->_textAccessibilityElement;
  v39[1] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [view setAccessibilityElements:v32];

  [(PKAuthorizationCoverSheetViewController *)self _transitionToState:1 animated:0];
}

- (void)viewWillLayoutSubviews
{
  v53.receiver = self;
  v53.super_class = PKAuthorizationCoverSheetViewController;
  [(PKAuthorizationCoverSheetViewController *)&v53 viewWillLayoutSubviews];
  view = [(PKAuthorizationCoverSheetViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v49 = v12;
  readableContentGuide = [view readableContentGuide];
  [readableContentGuide layoutFrame];
  v15 = v14;

  v16 = fmin(v9, v15);
  traitCollection = [(PKAuthorizationCoverSheetViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v19 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC30]);

  [(UILabel *)self->_titleLabelView sizeThatFits:v16, 1.79769313e308];
  v21 = v20;
  [(UILabel *)self->_subtitleLabelView sizeThatFits:v16, 1.79769313e308];
  v23 = v22;
  [(UIButton *)self->_enterPasscodeButton sizeThatFits:v16, 1.79769313e308];
  v25 = v24;
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v5;
  remainder.origin.y = v7;
  remainder.size.width = v9;
  remainder.size.height = v11;
  rect = v11;
  if (self->_shouldDrawGlyph)
  {
    v54.origin.x = v5;
    v54.origin.y = v7;
    v54.size.width = v9;
    v54.size.height = v11;
    CGRectDivide(v54, &slice, &remainder, v49 + 5.0, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 32.0, CGRectMinYEdge);
    glyphView = self->_glyphView;
    PKSizeAlignedInRect();
    [(PKGlyphView *)glyphView setFrame:?];
  }

  remainder.origin.x = v5;
  remainder.origin.y = v7;
  remainder.size.width = v9;
  remainder.size.height = v11;
  v27 = v25 + 15.0;
  if (v19 == NSOrderedAscending)
  {
    v27 = 0.0;
  }

  v28 = (v11 - (v21 + v23 + v27)) * 0.5;
  v55.origin.x = v5;
  v55.origin.y = v7;
  v55.size.width = v9;
  v55.size.height = v11;
  CGRectDivide(v55, &slice, &remainder, v28, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, v21, CGRectMinYEdge);
  titleLabelView = self->_titleLabelView;
  PKSizeAlignedInRect();
  [(UILabel *)titleLabelView setFrame:?];
  CGRectDivide(remainder, &slice, &remainder, v23, CGRectMinYEdge);
  subtitleLabelView = self->_subtitleLabelView;
  PKSizeAlignedInRect();
  [(UILabel *)subtitleLabelView setFrame:?];
  CGRectDivide(remainder, &slice, &remainder, 15.0, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, v25, CGRectMinYEdge);
  enterPasscodeButton = self->_enterPasscodeButton;
  PKSizeAlignedInRect();
  [(UIButton *)enterPasscodeButton setFrame:?];
  textAccessibilityElement = self->_textAccessibilityElement;
  [(UILabel *)self->_titleLabelView frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  [(UILabel *)self->_subtitleLabelView frame];
  v58.origin.x = v41;
  v58.origin.y = v42;
  v58.size.width = v43;
  v58.size.height = v44;
  v56.origin.x = v34;
  v56.origin.y = v36;
  v56.size.width = v38;
  v56.size.height = v40;
  v57 = CGRectUnion(v56, v58);
  [(UIAccessibilityElement *)textAccessibilityElement setAccessibilityFrameInContainerSpace:v57.origin.x, v57.origin.y, v57.size.width, v57.size.height];
  passcodeAccessibilityElement = self->_passcodeAccessibilityElement;
  [(UIButton *)self->_enterPasscodeButton frame];
  [(UIAccessibilityElement *)passcodeAccessibilityElement setAccessibilityFrameInContainerSpace:?];
  passcodeViewController = self->_passcodeViewController;
  if (passcodeViewController)
  {
    parentViewController = [(UIViewController *)passcodeViewController parentViewController];

    if (parentViewController)
    {
      view2 = [(UIViewController *)self->_passcodeViewController view];
      [view2 setFrame:{v5, v7, v9, rect}];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = PKAuthorizationCoverSheetViewController;
  [(PKAuthorizationCoverSheetViewController *)&v5 traitCollectionDidChange:change];
  view = [(PKAuthorizationCoverSheetViewController *)self view];
  [view layoutIfNeeded];
}

- (void)startEvaluation
{
  if (self->_authenticating)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Skipping Evaluation, because already authenticating.", buf, 2u);
    }
  }

  else
  {
    isInvalid = self->_isInvalid;
    v5 = PKLogFacilityTypeGetObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (isInvalid)
    {
      if (v6)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Skipping Evaluation, because already invalidated.", buf, 2u);
      }
    }

    else
    {
      if (v6)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Starting Evaluation", buf, 2u);
      }

      self->_authenticating = 1;
      self->_hasAttemptedBiometricAuth = 0;
      objc_initWeak(buf, self);
      if (self->_presentationSource == 6)
      {
        v7 = [(PKPassLibrary *)self->_passLibrary passWithUniqueID:self->_passUniqueIdentifier];
        secureElementPass = [v7 secureElementPass];

        v9 = PKLocalizedCredentialString(&cfstr_UwbBiolockoutP.isa);
        if ([secureElementPass isCarKeyPass])
        {
          PKLocalizedCredentialString(&cfstr_CarKeyUwbBiolo.isa);
        }

        else
        {
          PKLocalizedHomeKitUWBString(&cfstr_HomeKeyUwbBiol.isa);
        }
        v10 = ;
      }

      else
      {
        v9 = PKLocalizedPaymentString(&cfstr_InAppPaymentPa.isa);
        v10 = PKLocalizedPaymentString(&cfstr_PrivacyCoverSh.isa);
      }

      v11 = [objc_alloc(MEMORY[0x1E69BC748]) initWithPolicy:10];
      [v11 setPasscodeTitle:v9];
      [v11 setReason:v10];
      authenticator = self->_authenticator;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __58__PKAuthorizationCoverSheetViewController_startEvaluation__block_invoke;
      v16 = &unk_1E8012A70;
      objc_copyWeak(&v18, buf);
      selfCopy = self;
      [(PKAuthenticator *)authenticator evaluateRequest:v11 withCompletion:&v13];
      if (([MEMORY[0x1E69BC740] currentStateForPolicy:{10, v13, v14, v15, v16}] & 6) == 0)
      {
        [(PKAuthorizationCoverSheetViewController *)self _transitionToState:6 animated:0];
      }

      objc_destroyWeak(&v18);

      objc_destroyWeak(buf);
    }
  }
}

void __58__PKAuthorizationCoverSheetViewController_startEvaluation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKAuthorizationCoverSheetViewController_startEvaluation__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __58__PKAuthorizationCoverSheetViewController_startEvaluation__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  *(WeakRetained + 1025) = 0;
  v4 = [*(a1 + 32) result];
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        v9 = [MEMORY[0x1E696AE30] processInfo];
        v10 = [v9 processName];
        v11 = [v9 processIdentifier];
        v12 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          v18 = v10;
          v19 = 2048;
          v20 = v11;
          _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Authentication by %@[%ld] preempted by another process.", &v17, 0x16u);
        }

        v13 = objc_loadWeakRetained(v3 + 142);
        [v13 authorizationCoverSheetViewControllerDidCompleteWithSuccess:0];

        goto LABEL_22;
      }

      v7 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      LOWORD(v17) = 0;
      v8 = "PKAuthorizationCoverSheetViewController: Failed to authenticate";
      goto LABEL_19;
    }

    if (v4 == 6)
    {
      [v3 _transitionToState:5 animated:1];
      [v3 _presentPasscodeToExitLockout];
      goto LABEL_23;
    }

    if (v4 != 7)
    {
      goto LABEL_23;
    }

    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v8 = "PKAuthorizationCoverSheetViewController: Authentication selected fallback - this is not supported";
LABEL_19:
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, v8, &v17, 2u);
    }

LABEL_20:

    v6 = v3 + 142;
LABEL_21:
    v9 = objc_loadWeakRetained(v6);
    [v9 authorizationCoverSheetViewControllerDidCompleteWithSuccess:0];
LABEL_22:

    goto LABEL_23;
  }

  if ((v4 - 2) < 2)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v8 = "PKAuthorizationCoverSheetViewController: Authentication canceled by app.";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Authentication canceled by user.", &v17, 2u);
      }

      v6 = (*(a1 + 40) + 1136);
      goto LABEL_21;
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Authentication successful.", &v17, 2u);
    }

    if ([*(a1 + 32) biometricMatch])
    {
      v15 = v3;
      v16 = 7;
    }

    else
    {
      v15 = v3;
      v16 = 8;
    }

    [v15 _transitionToState:v16 animated:1];
  }

LABEL_23:
}

- (void)fadeOutUIWithCompletion:(id)completion
{
  completionCopy = completion;
  viewIfLoaded = [(PKAuthorizationCoverSheetViewController *)self viewIfLoaded];
  v6 = viewIfLoaded;
  if (viewIfLoaded)
  {
    layer = [viewIfLoaded layer];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__PKAuthorizationCoverSheetViewController_fadeOutUIWithCompletion___block_invoke;
    v8[3] = &unk_1E8010AD8;
    v9 = completionCopy;
    [layer pkui_animateToOpacity:v8 withCompletion:0.0];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __67__PKAuthorizationCoverSheetViewController_fadeOutUIWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fadeInUIAnimated:(BOOL)animated performSynchronizedAnimation:(id)animation
{
  animatedCopy = animated;
  animationCopy = animation;
  if (!self->_shouldUIBeShown)
  {
    self->_shouldUIBeShown = 1;
    aBlock = animationCopy;
    if (self->_currentState == 6)
    {
      self->_isWaitingForPasscodeUI = 1;
      v7 = _Block_copy(animationCopy);
      performSynchronizedFadeInAnimationBlock = self->_performSynchronizedFadeInAnimationBlock;
      self->_performSynchronizedFadeInAnimationBlock = v7;

      animationCopy = aBlock;
      if (!self->_passcodeViewController)
      {
        goto LABEL_11;
      }

      [(PKAuthorizationCoverSheetViewController *)self _animateInPasscodeViewController];
    }

    else
    {
      if (animatedCopy)
      {
        [PKAuthorizationCoverSheetViewController _transitionToState:"_transitionToState:animated:" animated:?];
        animationCopy = aBlock;
      }

      if (animationCopy)
      {
        (*(aBlock + 2))();
      }

      [(PKAuthorizationCoverSheetViewController *)self _transitionToState:self->_currentState animated:animatedCopy];
    }

    animationCopy = aBlock;
  }

LABEL_11:
}

- (void)invalidate
{
  if (!self->_isInvalid)
  {
    self->_isInvalid = 1;
    [(PKAuthenticator *)self->_authenticator setDelegate:0];
    authenticator = self->_authenticator;
    self->_authenticator = 0;

    self->_authenticating = 0;
  }
}

- (void)_presentPasscodeToExitLockout
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Prompting user to exit bio lockout", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [objc_alloc(MEMORY[0x1E69BC748]) initWithPolicy:0];
  [v4 setPasscodeOnly:1];
  v5 = PKLocalizedPaymentString(&cfstr_PresentmentFoo.isa);
  [v4 setPasscodeTitle:v5];

  v6 = PKLocalizedPaymentString(&cfstr_PrivacyCoverSh.isa);
  [v4 setReason:v6];

  authenticator = self->_authenticator;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PKAuthorizationCoverSheetViewController__presentPasscodeToExitLockout__block_invoke;
  v8[3] = &unk_1E8012A70;
  objc_copyWeak(&v9, buf);
  v8[4] = self;
  [(PKAuthenticator *)authenticator evaluateRequest:v4 withCompletion:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(buf);
}

void __72__PKAuthorizationCoverSheetViewController__presentPasscodeToExitLockout__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKAuthorizationCoverSheetViewController__presentPasscodeToExitLockout__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __72__PKAuthorizationCoverSheetViewController__presentPasscodeToExitLockout__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 32) result])
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Failed to exit lockout", v5, 2u);
      }

      v4 = objc_loadWeakRetained((*(a1 + 40) + 1136));
      [v4 authorizationCoverSheetViewControllerDidCompleteWithSuccess:0];
    }

    else
    {
      [WeakRetained startEvaluation];
    }
  }
}

- (void)_fallbackToPasscode
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Falling back to passcode", v4, 2u);
  }

  self->_hasPresentedPasscodePrompt = 1;
  if (self->_authenticating)
  {
    [(PKAuthenticator *)self->_authenticator fallbackToSystemPasscodeUI];
  }

  else
  {
    [(PKAuthorizationCoverSheetViewController *)self _presentPasscodeToExitLockout];
  }
}

- (void)_transitionToState:(unint64_t)state animated:(BOOL)animated
{
  if (self->_isInvalid)
  {
    return;
  }

  animatedCopy = animated;
  v7 = 0;
  v8 = 0;
  shouldDrawGlyph = self->_shouldDrawGlyph;
  v10 = 6;
  if (state > 4)
  {
    if (state <= 7)
    {
      if (state != 5)
      {
        if (state != 6)
        {
          IsAvailable = PKPearlIsAvailable();
          v12 = 0;
          v13 = 0;
          v60 = 0;
          v8 = 0;
          v14 = 0;
          v59 = 0;
          v15 = 0;
          v16 = 0;
          v57 = 0;
          v17 = 5;
          if (!IsAvailable)
          {
            v17 = 1;
          }

          v56 = v17;
          v62 = 1;
LABEL_27:
          v20 = animatedCopy;
          if (!shouldDrawGlyph)
          {
            goto LABEL_69;
          }

          goto LABEL_55;
        }

        v59 = 1;
        LOBYTE(v14) = 0;
        v62 = 0;
        v16 = 0;
        v15 = 0;
        v57 = 0;
        v60 = 0;
        v12 = 0;
        v56 = 6;
LABEL_68:
        v20 = animatedCopy;
        goto LABEL_69;
      }

      v12 = [(PKAuthorizationCoverSheetViewController *)self _passcodeLabelAccessibilityLabel:0];
      v8 = 1;
      v60 = [(PKAuthorizationCoverSheetViewController *)self _passcodeLabelAccessibilityLabel:1];
      v14 = 0;
      if (shouldDrawGlyph)
      {
        v56 = 0;
        v13 = 0;
        v59 = 1;
        goto LABEL_53;
      }

      v56 = 0;
      v62 = 0;
      v16 = 0;
      v15 = 1;
      v59 = 1;
LABEL_67:
      v57 = 0;
      goto LABEL_68;
    }

    if (state == 8)
    {
      LOBYTE(v14) = 0;
      v16 = 0;
      v15 = 0;
      v57 = 0;
      v8 = 0;
      v60 = 0;
      v12 = 0;
      v62 = 1;
      v56 = 6;
      v59 = 1;
      goto LABEL_68;
    }

    if (state == 9)
    {
      if (PKPearlIsAvailable())
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }

      v12 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricFailureLabelAccessibilityLabel:0];
      v8 = 1;
      v7 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricFailureLabelAccessibilityLabel:1];
      v13 = PKLocalizedPaymentString(&cfstr_PrivacyCoverSh_0.isa);
      currentState = self->_currentState;
      if (currentState == 4 || currentState == 1)
      {
        v56 = v10;
        v60 = v7;
        v59 = 0;
        v62 = 0;
        v25 = 0;
        v14 = 1;
        v15 = 1;
        v16 = 1;
        v57 = 1;
        v20 = animatedCopy;
        if (!shouldDrawGlyph)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
      if (state == 10)
      {
        v12 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricUnavailableLabelAccessibilityLabel:0];
        v8 = 1;
        v60 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricUnavailableLabelAccessibilityLabel:1];
        v14 = 0;
        if (shouldDrawGlyph)
        {
          v56 = 0;
          v13 = 0;
          v59 = 0;
LABEL_53:
          v15 = 1;
          goto LABEL_54;
        }

        v56 = 0;
        v62 = 0;
        v16 = 0;
        v15 = 1;
        goto LABEL_65;
      }
    }

LABEL_45:
    v56 = v10;
    v60 = v7;
    v14 = 0;
    v59 = 0;
    v62 = 0;
    v57 = 0;
    v25 = 0;
    v15 = 1;
    v16 = v8;
    v20 = animatedCopy;
    if (!shouldDrawGlyph)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (state <= 1)
  {
    if (!state)
    {
      v12 = 0;
      v13 = 0;
      v60 = 0;
      v8 = 0;
      v14 = 0;
      v59 = 0;
      v16 = 0;
      v62 = 0;
      v57 = 0;
      v15 = 1;
      v56 = 2;
      goto LABEL_27;
    }

    v13 = 0;
    v12 = 0;
    if (state != 1)
    {
      goto LABEL_45;
    }

LABEL_48:
    v12 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricLabelAccessibilityLabel:0];
    v15 = 1;
    v60 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricLabelAccessibilityLabel:1];
    v14 = 0;
    if (shouldDrawGlyph)
    {
      v56 = 0;
      v13 = 0;
      v59 = 0;
LABEL_54:
      v16 = 0;
      v62 = 0;
      v20 = animatedCopy;
      goto LABEL_55;
    }

    v56 = 0;
    v62 = 0;
    v16 = 0;
LABEL_65:
    v59 = 0;
    goto LABEL_67;
  }

  if (state == 2)
  {
    v8 = 1;
    goto LABEL_48;
  }

  if (state == 3)
  {
    v21 = PKPearlIsAvailable();
    v22 = 4;
    if (!v21)
    {
      v22 = 0;
    }

    v56 = v22;
    selfCopy2 = self;
  }

  else
  {
    if (PKPearlIsAvailable())
    {
      v18 = 5;
    }

    else
    {
      v18 = 1;
    }

    v56 = v18;
    selfCopy2 = self;
    if (self->_currentState == 9)
    {
      v12 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricFailureLabelAccessibilityLabel:0];
      v8 = 1;
      v60 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricFailureLabelAccessibilityLabel:1];
      v14 = 0;
      v20 = animatedCopy;
      if (!shouldDrawGlyph)
      {
        v62 = 0;
        v16 = 0;
        v15 = 1;
        v59 = 0;
        v57 = 0;
        goto LABEL_69;
      }

      v13 = 0;
      v59 = 0;
      v15 = 1;
      v16 = 0;
      v62 = 0;
      goto LABEL_55;
    }
  }

  v12 = [(PKAuthorizationCoverSheetViewController *)selfCopy2 _genericBiometricLabelAccessibilityLabel:0, v56];
  v15 = 1;
  v60 = [(PKAuthorizationCoverSheetViewController *)self _genericBiometricLabelAccessibilityLabel:1];
  v8 = 0;
  v20 = animatedCopy;
  if (!shouldDrawGlyph)
  {
    LOBYTE(v14) = 0;
    v62 = 0;
    v16 = 0;
    v59 = 0;
    v57 = 0;
    goto LABEL_69;
  }

  v13 = 0;
  v14 = 0;
  v59 = 0;
  v16 = 0;
  v62 = 0;
LABEL_55:
  v25 = ([MEMORY[0x1E69BC740] currentStateForPolicy:{10, v56}] & 6) != 0;
  v57 = v14;
LABEL_56:
  if (v13)
  {
    if (v25)
    {
      goto LABEL_73;
    }

    goto LABEL_58;
  }

  LOBYTE(v14) = v25;
LABEL_69:
  if (PKPearlIsAvailable())
  {
    PKLocalizedPearlString(&cfstr_PrivacyCoverSh_1.isa);
  }

  else
  {
    PKLocalizedPaymentString(&cfstr_PrivacyCoverSh_2.isa);
  }
  v13 = ;
  if (v14)
  {
LABEL_73:
    LOBYTE(v4) = self->_shouldUIBeShown;
    v26 = *&v4;
    v27 = 0.0;
    v61 = 1;
    v4 = *&v4;
    if ((v8 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_58:
  if (!v8)
  {
    v61 = 0;
    v26 = 0.0;
    v27 = 0.0;
    goto LABEL_75;
  }

  v61 = 0;
  LOBYTE(v4) = self->_shouldUIBeShown;
  v26 = *&v4;
  v4 = 0.0;
LABEL_74:
  v27 = v26;
  v26 = v4;
LABEL_75:
  v28 = 0.0;
  v29 = 0.0;
  if (v12)
  {
    LOBYTE(v4) = self->_shouldUIBeShown;
    v29 = *&v4;
  }

  if (v15)
  {
    LOBYTE(v4) = self->_shouldUIBeShown;
    v28 = *&v4;
  }

  v30 = MEMORY[0x1E69DDCF8];
  if (!v16)
  {
    v30 = MEMORY[0x1E69DDDC8];
  }

  v31 = PKFontForDefaultDesign(*v30, *MEMORY[0x1E69DDC28]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKAuthorizationCoverSheetViewController__transitionToState_animated___block_invoke;
  aBlock[3] = &unk_1E8011C98;
  v32 = v12;
  v68 = v32;
  selfCopy3 = self;
  v33 = v13;
  v70 = v33;
  v34 = v31;
  v71 = v34;
  v35 = _Block_copy(aBlock);
  v36 = v35;
  if (v20 && self->_shouldUIBeShown)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v35 animations:0.25];
    layer = [(PKGlyphView *)self->_glyphView layer];
    [layer pkui_animateToOpacity:0 withCompletion:v26];

    v38 = 1088;
    layer2 = [(UIButton *)self->_enterPasscodeButton layer];
    [layer2 pkui_animateToOpacity:0 withCompletion:v27];

    layer3 = [(UILabel *)self->_titleLabelView layer];
    [layer3 pkui_animateToOpacity:0 withCompletion:v29];

    layer4 = [(UILabel *)self->_subtitleLabelView layer];
    [layer4 pkui_animateToOpacity:0 withCompletion:v28];
    v42 = 1;
  }

  else
  {
    (*(v35 + 2))(v35);
    layer5 = [(PKGlyphView *)self->_glyphView layer];
    *&v44 = v26;
    [layer5 setOpacity:v44];

    v38 = 1088;
    layer6 = [(UIButton *)self->_enterPasscodeButton layer];
    *&v46 = v27;
    [layer6 setOpacity:v46];

    layer7 = [(UILabel *)self->_titleLabelView layer];
    *&v48 = v29;
    [layer7 setOpacity:v48];

    layer4 = [(UILabel *)self->_subtitleLabelView layer];
    *&v49 = v28;
    [layer4 setOpacity:v49];
    v42 = 0;
  }

  if (!v61)
  {
    v51 = v60;
    if (v62)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained authorizationCoverSheetViewControllerDidCompleteWithSuccess:1];
    }

    goto LABEL_97;
  }

  if (v62)
  {
    [MEMORY[0x1E69BC758] invokeSuccessFeedback];
  }

  objc_initWeak(&location, self);
  glyphView = self->_glyphView;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __71__PKAuthorizationCoverSheetViewController__transitionToState_animated___block_invoke_2;
  v63[3] = &unk_1E8012858;
  objc_copyWeak(&v64, &location);
  v65 = v62;
  [(PKGlyphView *)glyphView setState:v56 animated:v42 completionHandler:v63];
  v51 = v60;
  if (v57)
  {
    if (PKPearlIsAvailable())
    {
      if ((v42 & 1) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    AudioServicesPlaySystemSound(0x573u);
    v38 = 1096;
    if (v42)
    {
LABEL_95:
      layer8 = [*(&self->super.super.super.isa + v38) layer];
      pkui_shakeAnimation = [MEMORY[0x1E6979300] pkui_shakeAnimation];
      v55 = [layer8 pkui_addAdditiveAnimation:pkui_shakeAnimation];
    }
  }

LABEL_96:
  objc_destroyWeak(&v64);
  objc_destroyWeak(&location);
LABEL_97:
  [(UIAccessibilityElement *)self->_textAccessibilityElement setAccessibilityLabel:v51, v56];
  if (v59)
  {
    if (!self->_hasPresentedPasscodePrompt)
    {
      [(PKAuthorizationCoverSheetViewController *)self _fallbackToPasscode];
    }
  }

  self->_currentState = state;
}

void __71__PKAuthorizationCoverSheetViewController__transitionToState_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 1096) setText:?];
    [*(*(a1 + 40) + 1104) setText:*(a1 + 48)];
    [*(*(a1 + 40) + 1104) setFont:*(a1 + 56)];
    v2 = [*(a1 + 40) view];
    [v2 setNeedsLayout];
  }
}

void __71__PKAuthorizationCoverSheetViewController__transitionToState_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 142);
    [v3 authorizationCoverSheetViewControllerDidCompleteWithSuccess:1];

    WeakRetained = v4;
  }
}

- (id)_genericBiometricLabelAccessibilityLabel:(BOOL)label
{
  labelCopy = label;
  IsAvailable = PKPearlIsAvailable();
  if (labelCopy)
  {
    if (IsAvailable)
    {
      v5 = @"PRIVACY_COVER_SHEET_PEARL_ACCESSIBILITY_TEXT";
LABEL_6:
      v6 = PKLocalizedPearlString(&v5->isa);
      goto LABEL_10;
    }

    v7 = @"PRIVACY_COVER_SHEET_TOUCH_ID_ACCESSIBILITY_TEXT";
  }

  else
  {
    if (IsAvailable)
    {
      v5 = @"GENERIC_PEARL";
      goto LABEL_6;
    }

    v7 = @"GENERIC_TOUCH_ID";
  }

  v6 = PKLocalizedPaymentString(&v7->isa);
LABEL_10:

  return v6;
}

- (id)_passcodeLabelAccessibilityLabel:(BOOL)label
{
  if (label)
  {
    v3 = @"PRIVACY_COVER_SHEET_PASSCODE_ACCESSIBILITY_TEXT";
  }

  else
  {
    v3 = @"PAYMENT_ERROR_NO_TOUCH_ID_OR_PASSCODE";
  }

  v4 = PKLocalizedPaymentString(&v3->isa);

  return v4;
}

- (id)_genericBiometricFailureLabelAccessibilityLabel:(BOOL)label
{
  labelCopy = label;
  IsAvailable = PKPearlIsAvailable();
  if (labelCopy)
  {
    if (IsAvailable)
    {
      v5 = @"PRIVACY_COVER_SHEET_PEARL_FAILURE_ACCESSIBILITY_TEXT";
LABEL_6:
      v6 = PKLocalizedPearlString(&v5->isa);
      goto LABEL_10;
    }

    v7 = @"PRIVACY_COVER_SHEET_TOUCH_ID_FAILURE_ACCESSIBILITY_TEXT";
  }

  else
  {
    if (IsAvailable)
    {
      v5 = @"GENERIC_PEARL_FAILURE";
      goto LABEL_6;
    }

    v7 = @"GENERIC_TOUCH_ID_FAILURE";
  }

  v6 = PKLocalizedPaymentString(&v7->isa);
LABEL_10:

  return v6;
}

- (id)_genericBiometricUnavailableLabelAccessibilityLabel:(BOOL)label
{
  labelCopy = label;
  IsAvailable = PKPearlIsAvailable();
  if (labelCopy)
  {
    if (IsAvailable)
    {
      v5 = @"PRIVACY_COVER_SHEET_PEARL_UNAVAILABLE_ACCESSIBILITY_TEXT";
LABEL_6:
      v6 = PKLocalizedPearlString(&v5->isa);
      goto LABEL_10;
    }

    v7 = @"PRIVACY_COVER_SHEET_TOUCH_ID_UNAVAILABLE_ACCESSIBILITY_TEXT";
  }

  else
  {
    if (IsAvailable)
    {
      v5 = @"GENERIC_PEARL_UNAVAILABLE";
      goto LABEL_6;
    }

    v7 = @"GENERIC_TOUCH_ID_UNAVAILABLE";
  }

  v6 = PKLocalizedPaymentString(&v7->isa);
LABEL_10:

  return v6;
}

- (void)_animateInPasscodeViewController
{
  v20 = *MEMORY[0x1E69E9840];
  isWaitingForPasscodeUI = self->_isWaitingForPasscodeUI;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PKAuthorizationCoverSheetViewController__animateInPasscodeViewController__block_invoke;
  aBlock[3] = &unk_1E80111A8;
  objc_copyWeak(&v15, &location);
  v16 = isWaitingForPasscodeUI;
  v4 = _Block_copy(aBlock);
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"No";
    if (isWaitingForPasscodeUI)
    {
      v6 = @"Yes";
    }

    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Presenting passcode VC fadeIn: %@", buf, 0xCu);
  }

  if (isWaitingForPasscodeUI)
  {
    view = [(UIViewController *)self->_passcodeViewController view];
    layer = [view layer];
    [layer setOpacity:0.0];
    [(PKAuthorizationCoverSheetViewController *)self addChildViewController:self->_passcodeViewController];
    view2 = [(PKAuthorizationCoverSheetViewController *)self view];
    [view2 addSubview:view];

    [(UIViewController *)self->_passcodeViewController didMoveToParentViewController:self];
    [view setNeedsLayout];
    [view layoutIfNeeded];
    performSynchronizedFadeInAnimationBlock = self->_performSynchronizedFadeInAnimationBlock;
    if (performSynchronizedFadeInAnimationBlock)
    {
      performSynchronizedFadeInAnimationBlock[2]();
      v11 = self->_performSynchronizedFadeInAnimationBlock;
      self->_performSynchronizedFadeInAnimationBlock = 0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__PKAuthorizationCoverSheetViewController__animateInPasscodeViewController__block_invoke_136;
    v12[3] = &unk_1E8010AD8;
    v13 = v4;
    [layer pkui_animateToOpacity:v12 withCompletion:1.0];
  }

  else
  {
    [(PKAuthorizationCoverSheetViewController *)self presentViewController:self->_passcodeViewController animated:1 completion:v4];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __75__PKAuthorizationCoverSheetViewController__animateInPasscodeViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 133);
    v6 = v3;
    if (v4)
    {
      (*(v4 + 16))(v4, 1);
      v5 = *(v6 + 133);
      *(v6 + 133) = 0;

      v3 = v6;
    }

    if (*(a1 + 40) == 1)
    {
      v3[1056] = 0;
    }

    [v3 _transitionToState:6 animated:1];
    v3 = v6;
  }
}

- (void)authenticator:(id)authenticator didTransitionToEvaluationStateWithEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_authenticating)
  {
    return;
  }

  var1 = event.var1;
  var0 = event.var0;
  if (PKPearlIsAvailable())
  {
    v7 = (self->_coachingState - 3) < 2;
  }

  else
  {
    v7 = 0;
  }

  currentState = 0;
  if (var0 > 2)
  {
    if (var0 != 3)
    {
      if (var0 != 4)
      {
        if (var0 == 5)
        {
          if (self->_currentState == 6)
          {
            currentState = 8;
          }

          else
          {
            currentState = 7;
          }
        }

        goto LABEL_31;
      }

      if (self->_currentState == 6)
      {
        currentState = 6;
        goto LABEL_31;
      }

      currentState = 5;
LABEL_30:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained authorizationCoverSheetViewControllerDidGetBiometricUnavailableOrFailure];

      goto LABEL_31;
    }

    if (self->_currentState == 9)
    {
LABEL_20:
      currentState = 9;
      goto LABEL_30;
    }

LABEL_28:
    currentState = 1;
    goto LABEL_31;
  }

  if (var0)
  {
    if (var0 == 1)
    {
      currentState = 3;
    }

    else if (var0 == 2)
    {
      self->_hasAttemptedBiometricAuth = 1;
      currentState = 4;
    }

    goto LABEL_31;
  }

  if (var1 != 3 && !v7)
  {
    currentState = 9;
    if (self->_hasAttemptedBiometricAuth || (var1 - 1) < 2)
    {
      goto LABEL_30;
    }

    currentState = self->_currentState;
    if (currentState == 3)
    {
      currentState = 2;
      goto LABEL_30;
    }

    if (currentState == 6)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (var1 != 3)
  {
    goto LABEL_20;
  }

  currentState = 10;
LABEL_31:
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218496;
    v12 = var0;
    v13 = 2048;
    v14 = var1;
    v15 = 2048;
    v16 = currentState;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Evaluating authenticator state %lu - %lu and  transitioning to state %lu", &v11, 0x20u);
  }

  [(PKAuthorizationCoverSheetViewController *)self _transitionToState:currentState animated:1];
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

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: requested passcode presentation", v15, 2u);
    }

    objc_storeStrong(&self->_passcodeViewController, controller);
    [(UIViewController *)self->_passcodeViewController setModalPresentationStyle:5];
    v13 = _Block_copy(handlerCopy);
    showPasscodeUICompletion = self->_showPasscodeUICompletion;
    self->_showPasscodeUICompletion = v13;

    if (self->_shouldUIBeShown)
    {
      [(PKAuthorizationCoverSheetViewController *)self _animateInPasscodeViewController];
    }
  }
}

- (void)dismissPasscodeViewController
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKAuthorizationCoverSheetViewController: Dismissing passcode view controller", v9, 2u);
  }

  parentViewController = [(UIViewController *)self->_passcodeViewController parentViewController];

  passcodeViewController = self->_passcodeViewController;
  if (parentViewController)
  {
    view = [(UIViewController *)passcodeViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_passcodeViewController removeFromParentViewController];
    [(UIViewController *)self->_passcodeViewController didMoveToParentViewController:0];
  }

  else
  {
    presentingViewController = [(UIViewController *)passcodeViewController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  v8 = self->_passcodeViewController;
  self->_passcodeViewController = 0;
}

@end