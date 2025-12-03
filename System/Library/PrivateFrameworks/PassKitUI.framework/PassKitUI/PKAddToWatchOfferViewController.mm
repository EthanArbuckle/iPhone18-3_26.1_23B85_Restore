@interface PKAddToWatchOfferViewController
- (PKAddToWatchOfferViewController)initWithPass:(id)pass context:(int64_t)context;
- (void)_clearInteractionDisabledView;
- (void)_configureNavigationItem;
- (void)_setIdleTimerDisabled:(BOOL)disabled;
- (void)dealloc;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)showSpinner:(BOOL)spinner;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddToWatchOfferViewController

- (PKAddToWatchOfferViewController)initWithPass:(id)pass context:(int64_t)context
{
  passCopy = pass;
  v8 = [(PKExplanationViewController *)self initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pass, pass);
    v10 = objc_alloc_init(PKHeroCardWatchExplainationHeaderView);
    heroView = v9->_heroView;
    v9->_heroView = v10;

    v12 = objc_alloc_init(PKPassSnapshotter);
    pass = v9->_pass;
    [(PKHeroCardWatchExplainationHeaderView *)v9->_heroView recommendedCardImageSize];
    v15 = v14;
    v17 = v16;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__PKAddToWatchOfferViewController_initWithPass_context___block_invoke;
    v20[3] = &unk_1E8010A38;
    v18 = v9;
    v21 = v18;
    [(PKPassSnapshotter *)v12 snapshotWithPass:pass size:v20 completion:v15, v17];
    [(PKAddToWatchOfferViewController *)v18 _configureNavigationItem];
  }

  return v9;
}

void __56__PKAddToWatchOfferViewController_initWithPass_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKAddToWatchOfferViewController_initWithPass_context___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)dealloc
{
  [(PKAddToWatchOfferViewController *)self _clearInteractionDisabledView];
  v3.receiver = self;
  v3.super_class = PKAddToWatchOfferViewController;
  [(PKAddToWatchOfferViewController *)&v3 dealloc];
}

- (void)_configureNavigationItem
{
  navigationItem = [(PKAddToWatchOfferViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  navigationItem2 = [(PKAddToWatchOfferViewController *)self navigationItem];
  [navigationItem2 setTitle:&stru_1F3BD7330];
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = PKAddToWatchOfferViewController;
  [(PKExplanationViewController *)&v16 loadView];
  view = [(PKAddToWatchOfferViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];

  explanationView = [(PKExplanationViewController *)self explanationView];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [explanationView setHeroView:self->_heroView];
  [explanationView setTopBackgroundColor:0];
  [(PKExplanationViewController *)self setPrivacyLinkController:0];
  v6 = PKLocalizedPaymentString(&cfstr_AddToAppleWatc.isa);
  [explanationView setTitleText:v6];

  paymentPass = [(PKSecureElementPass *)self->_pass paymentPass];
  localizedDescription = [paymentPass localizedDescription];
  v9 = PKLocalizedPaymentString(&cfstr_AddToAppleWatc_0.isa, &stru_1F3BD5BF0.isa, localizedDescription);
  [explanationView setBodyText:v9];

  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  v12 = PKLocalizedPaymentString(&cfstr_AddCard.isa);
  [primaryButton setTitle:v12 forState:0];

  [primaryButton addTarget:self action:sel__addToWatch forControlEvents:64];
  footerView = [dockView footerView];
  secondaryActionButton = [footerView secondaryActionButton];

  v15 = PKLocalizedPaymentString(&cfstr_DoNotAddNow.isa);
  [secondaryActionButton setTitle:v15 forState:0];

  [secondaryActionButton addTarget:self action:sel__addLater forControlEvents:64];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = PKAddToWatchOfferViewController;
  [(PKExplanationViewController *)&v2 viewWillLayoutSubviews];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKAddToWatchOfferViewController;
  [(PKAddToWatchOfferViewController *)&v4 viewWillDisappear:disappear];
  [(PKAddToWatchOfferViewController *)self _clearInteractionDisabledView];
}

- (void)showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];

  v7 = !spinnerCopy;
  [primaryButton setEnabled:v7];
  if (v7)
  {
    [primaryButton setShowSpinner:0];
    navigationItem = [(PKAddToWatchOfferViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];

    [(PKAddToWatchOfferViewController *)self _clearInteractionDisabledView];
  }

  else
  {
    [primaryButton setShowSpinner:1];
    navigationItem2 = [(PKAddToWatchOfferViewController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:0];

    if (!self->_interactionDisabledView)
    {
      selfCopy = [(PKAddToWatchOfferViewController *)self navigationController];
      v11 = selfCopy;
      if (!selfCopy)
      {
        selfCopy = self;
      }

      view = [selfCopy view];
      interactionDisabledView = self->_interactionDisabledView;
      self->_interactionDisabledView = view;

      v14 = self->_interactionDisabledView;
      if (v14)
      {
        [(UIView *)v14 setUserInteractionEnabled:0];
        [(PKAddToWatchOfferViewController *)self _setIdleTimerDisabled:1];
      }
    }
  }
}

- (void)_clearInteractionDisabledView
{
  interactionDisabledView = self->_interactionDisabledView;
  if (interactionDisabledView)
  {
    [(UIView *)interactionDisabledView setUserInteractionEnabled:1];
    v4 = self->_interactionDisabledView;
    self->_interactionDisabledView = 0;

    [(PKAddToWatchOfferViewController *)self _setIdleTimerDisabled:0];
  }
}

- (void)_setIdleTimerDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v11 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"enabled";
    if (disabledCopy)
    {
      v5 = @"disabled";
    }

    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = @"PKAddToWatchOfferViewController";
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Payment Setup has %@ the Idle Timer. (For: %@)", &v7, 0x16u);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _setIdleTimerDisabled:disabledCopy forReason:@"PKAddToWatchOfferViewController"];
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKAddToWatchOfferViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  [(PKAddToWatchOfferViewController *)self showSpinner:iCopy];
}

@end