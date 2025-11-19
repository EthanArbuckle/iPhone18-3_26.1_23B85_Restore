@interface PKAddToWatchOfferViewController
- (PKAddToWatchOfferViewController)initWithPass:(id)a3 context:(int64_t)a4;
- (void)_clearInteractionDisabledView;
- (void)_configureNavigationItem;
- (void)_setIdleTimerDisabled:(BOOL)a3;
- (void)dealloc;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)showSpinner:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddToWatchOfferViewController

- (PKAddToWatchOfferViewController)initWithPass:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v8 = [(PKExplanationViewController *)self initWithContext:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pass, a3);
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
  v3 = [(PKAddToWatchOfferViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(PKAddToWatchOfferViewController *)self navigationItem];
  [v4 setTitle:&stru_1F3BD7330];
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = PKAddToWatchOfferViewController;
  [(PKExplanationViewController *)&v16 loadView];
  v3 = [(PKAddToWatchOfferViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];

  v5 = [(PKExplanationViewController *)self explanationView];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [v5 setHeroView:self->_heroView];
  [v5 setTopBackgroundColor:0];
  [(PKExplanationViewController *)self setPrivacyLinkController:0];
  v6 = PKLocalizedPaymentString(&cfstr_AddToAppleWatc.isa);
  [v5 setTitleText:v6];

  v7 = [(PKSecureElementPass *)self->_pass paymentPass];
  v8 = [v7 localizedDescription];
  v9 = PKLocalizedPaymentString(&cfstr_AddToAppleWatc_0.isa, &stru_1F3BD5BF0.isa, v8);
  [v5 setBodyText:v9];

  v10 = [v5 dockView];
  v11 = [v10 primaryButton];
  v12 = PKLocalizedPaymentString(&cfstr_AddCard.isa);
  [v11 setTitle:v12 forState:0];

  [v11 addTarget:self action:sel__addToWatch forControlEvents:64];
  v13 = [v10 footerView];
  v14 = [v13 secondaryActionButton];

  v15 = PKLocalizedPaymentString(&cfstr_DoNotAddNow.isa);
  [v14 setTitle:v15 forState:0];

  [v14 addTarget:self action:sel__addLater forControlEvents:64];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = PKAddToWatchOfferViewController;
  [(PKExplanationViewController *)&v2 viewWillLayoutSubviews];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKAddToWatchOfferViewController;
  [(PKAddToWatchOfferViewController *)&v4 viewWillDisappear:a3];
  [(PKAddToWatchOfferViewController *)self _clearInteractionDisabledView];
}

- (void)showSpinner:(BOOL)a3
{
  v3 = a3;
  v17 = [(PKExplanationViewController *)self explanationView];
  v5 = [v17 dockView];
  v6 = [v5 primaryButton];

  v7 = !v3;
  [v6 setEnabled:v7];
  if (v7)
  {
    [v6 setShowSpinner:0];
    v15 = [(PKAddToWatchOfferViewController *)self navigationItem];
    v16 = [v15 rightBarButtonItem];
    [v16 setEnabled:1];

    [(PKAddToWatchOfferViewController *)self _clearInteractionDisabledView];
  }

  else
  {
    [v6 setShowSpinner:1];
    v8 = [(PKAddToWatchOfferViewController *)self navigationItem];
    v9 = [v8 rightBarButtonItem];
    [v9 setEnabled:0];

    if (!self->_interactionDisabledView)
    {
      v10 = [(PKAddToWatchOfferViewController *)self navigationController];
      v11 = v10;
      if (!v10)
      {
        v10 = self;
      }

      v12 = [v10 view];
      interactionDisabledView = self->_interactionDisabledView;
      self->_interactionDisabledView = v12;

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

- (void)_setIdleTimerDisabled:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"enabled";
    if (v3)
    {
      v5 = @"disabled";
    }

    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = @"PKAddToWatchOfferViewController";
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Payment Setup has %@ the Idle Timer. (For: %@)", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  [v6 _setIdleTimerDisabled:v3 forReason:@"PKAddToWatchOfferViewController"];
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(PKAddToWatchOfferViewController *)self view:a3];
  [v6 setUserInteractionEnabled:v4 ^ 1];

  [(PKAddToWatchOfferViewController *)self showSpinner:v4];
}

@end