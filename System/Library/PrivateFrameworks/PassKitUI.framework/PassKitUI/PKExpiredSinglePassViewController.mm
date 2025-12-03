@interface PKExpiredSinglePassViewController
- (BOOL)handleDeletePassRequestWithPass:(id)pass forViewController:(id)controller;
- (PKExpiredSinglePassViewController)initWithPass:(id)pass;
- (id)_barcodePassDetailsViewControllerForBarcodePass:(id)pass;
- (id)_infoButton;
- (id)_paymentPassDetailsViewControllerForPaymentPass:(id)pass;
- (void)_deletePressed;
- (void)_didPresentDetailViewController;
- (void)_expiredPassRemovalConfirmedAsDeletion:(BOOL)deletion;
- (void)_moreButtonPressed;
- (void)_sharePass;
- (void)_unhidePressed;
- (void)disableButtons;
- (void)enableButtons;
- (void)passViewSetup;
- (void)passWasUpdated:(id)updated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKExpiredSinglePassViewController

- (PKExpiredSinglePassViewController)initWithPass:(id)pass
{
  v35[2] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v32.receiver = self;
  v32.super_class = PKExpiredSinglePassViewController;
  v6 = [(PKExpiredSinglePassViewController *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:v7 action:sel__deletePressed];
    deleteButton = v7->_deleteButton;
    v7->_deleteButton = v8;

    [(UIBarButtonItem *)v7->_deleteButton setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];
    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.slash"];
    v12 = [v10 initWithImage:v11 style:0 target:v7 action:sel__unhidePressed];
    unhideButton = v7->_unhideButton;
    v7->_unhideButton = v12;

    [(UIBarButtonItem *)v7->_unhideButton setAccessibilityIdentifier:*MEMORY[0x1E69B9848]];
    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    flexibleSpace = v7->_flexibleSpace;
    v7->_flexibleSpace = v14;

    v16 = objc_alloc(MEMORY[0x1E69DC708]);
    _infoButton = [(PKExpiredSinglePassViewController *)v7 _infoButton];
    v18 = [v16 initWithCustomView:_infoButton];
    infoButton = v7->_infoButton;
    v7->_infoButton = v18;

    [(UIBarButtonItem *)v7->_infoButton setAccessibilityIdentifier:*MEMORY[0x1E69B9880]];
    if (-[PKPass supportsSharing](v7->_pass, "supportsSharing") && [passCopy sharingMethod] != -1)
    {
      v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v7 action:sel__sharePass];
      shareButton = v7->_shareButton;
      v7->_shareButton = v20;

      [(UIBarButtonItem *)v7->_shareButton setAccessibilityIdentifier:*MEMORY[0x1E69B9C48]];
    }

    navigationItem = [(PKExpiredSinglePassViewController *)v7 navigationItem];
    v23 = v7->_shareButton;
    if (v23)
    {
      v35[0] = v7->_infoButton;
      v35[1] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v35;
      v26 = 2;
    }

    else
    {
      v34 = v7->_infoButton;
      v24 = MEMORY[0x1E695DEC8];
      v25 = &v34;
      v26 = 1;
    }

    v27 = [v24 arrayWithObjects:v25 count:v26];
    [navigationItem setRightBarButtonItems:v27];

    v28 = [[PKLinkedApplication alloc] initWithPass:v7->_pass];
    linkedApplication = v7->_linkedApplication;
    v7->_linkedApplication = v28;

    v33[0] = v7->_deleteButton;
    v33[1] = v7->_flexibleSpace;
    v33[2] = v7->_unhideButton;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
    [(PKExpiredSinglePassViewController *)v7 setToolbarItems:v30];
  }

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKExpiredSinglePassViewController;
  [(PKExpiredSinglePassViewController *)&v6 viewDidLoad];
  view = [(PKExpiredSinglePassViewController *)self view];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [view setBackgroundColor:secondarySystemBackgroundColor];

  view2 = [(PKExpiredSinglePassViewController *)self view];
  [view2 setAccessibilityIdentifier:*MEMORY[0x1E69B9798]];

  [(PKExpiredSinglePassViewController *)self passViewSetup];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKExpiredSinglePassViewController;
  [(PKExpiredSinglePassViewController *)&v5 viewWillAppear:appear];
  [(PKExpiredSinglePassViewController *)self enableButtons];
  navigationController = [(PKExpiredSinglePassViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:1];
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKExpiredSinglePassViewController;
  [(PKExpiredSinglePassViewController *)&v28 viewWillLayoutSubviews];
  view = [(PKExpiredSinglePassViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v12;
  v15 = v14;
  v17 = v5 + v16;
  v18 = v7 + v12;
  v20 = v9 - (v16 + v19);
  [(PKPassView *)self->_passView sizeOfFront];
  passView = self->_passView;
  if (v21 >= v20)
  {
    PKFloatRoundToPixel();
    v25 = v27;
    v26 = -16.0;
  }

  else
  {
    v23 = v21;
    PKFloatRoundToPixel();
    v17 = v24;
    v25 = v18 + 16.0;
    v26 = -32.0;
    v20 = v23;
  }

  [(PKPassView *)passView setFrame:v17, v25, v20, v11 - (v13 + v15) + v26];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKExpiredSinglePassViewController;
  [(PKExpiredSinglePassViewController *)&v5 viewWillDisappear:disappear];
  navigationController = [(PKExpiredSinglePassViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:1];
}

- (void)passViewSetup
{
  viewIfLoaded = [(PKExpiredSinglePassViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v7 = viewIfLoaded;
    v4 = self->_passView;
    v5 = [[PKPassView alloc] initWithPass:self->_pass content:5];
    passView = self->_passView;
    self->_passView = v5;

    [(PKPassView *)self->_passView setModallyPresented:1];
    [v7 addSubview:self->_passView];
    [v7 setNeedsLayout];
    if (v4)
    {
      [(PKPassView *)v4 removeFromSuperview];
    }

    viewIfLoaded = v7;
  }
}

- (void)passWasUpdated:(id)updated
{
  objc_storeStrong(&self->_pass, updated);

  [(PKExpiredSinglePassViewController *)self passViewSetup];
}

- (BOOL)handleDeletePassRequestWithPass:(id)pass forViewController:(id)controller
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__PKExpiredSinglePassViewController_handleDeletePassRequestWithPass_forViewController___block_invoke;
  v5[3] = &unk_1E8010970;
  v5[4] = self;
  [(PKExpiredSinglePassViewController *)self dismissViewControllerAnimated:1 completion:v5];
  return 1;
}

- (id)_infoButton
{
  v3 = PKUIBigInfoButtonImageWithDefaultConfiguration();
  v4 = MEMORY[0x1E69DC740];
  configuration = [v3 configuration];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v7 = [v4 pkui_plainConfigurationWithImage:v3 imageConfiguration:configuration foregroundColor:systemBlueColor];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC628];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __48__PKExpiredSinglePassViewController__infoButton__block_invoke;
  v16 = &unk_1E8010A60;
  objc_copyWeak(&v17, &location);
  v9 = [v8 actionWithHandler:&v13];
  v10 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v7 primaryAction:{v9, v13, v14, v15, v16}];
  [v10 setConfigurationUpdateHandler:&__block_literal_global_17];
  [v10 sizeToFit];
  [v10 setShowsLargeContentViewer:1];
  v11 = PKLocalizedString(&cfstr_More.isa);
  [v10 setLargeContentTitle:v11];

  [v10 setLargeContentImage:v3];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v10;
}

void __48__PKExpiredSinglePassViewController__infoButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _moreButtonPressed];
}

- (void)_deletePressed
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedString(&cfstr_ExpiredPassesD.isa);
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:0];

  popoverPresentationController = [v5 popoverPresentationController];
  [popoverPresentationController setSourceItem:self->_deleteButton];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedString(&cfstr_ExpiredPassesC.isa);
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v5 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedString(&cfstr_ExpiredPassesD_0.isa);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__PKExpiredSinglePassViewController__deletePressed__block_invoke;
  v13[3] = &unk_1E80112E8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:2 handler:v13];
  [v5 addAction:v12];

  [(PKExpiredSinglePassViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_unhidePressed
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedString(&cfstr_ExpiredPassesU.isa);
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:0];

  popoverPresentationController = [v5 popoverPresentationController];
  [popoverPresentationController setSourceItem:self->_unhideButton];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedString(&cfstr_ExpiredPassesC.isa);
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v5 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedString(&cfstr_ExpiredPassesU_0.isa);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__PKExpiredSinglePassViewController__unhidePressed__block_invoke;
  v13[3] = &unk_1E80112E8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v13];
  [v5 addAction:v12];

  [(PKExpiredSinglePassViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_expiredPassRemovalConfirmedAsDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  [(PKExpiredSinglePassViewController *)self disableButtons];
  parentViewController = [(PKExpiredSinglePassViewController *)self parentViewController];
  v5 = objc_opt_respondsToSelector();
  v6 = parentViewController;
  if (v5)
  {
    expiredPassesViewController = [parentViewController expiredPassesViewController];
    if (objc_opt_respondsToSelector())
    {
      uniqueID = [(PKPass *)self->_pass uniqueID];
      [expiredPassesViewController removeExpiredSectionPassWithUniqueID:uniqueID isDeletion:deletionCopy];

      navigationController = [(PKExpiredSinglePassViewController *)self navigationController];
      if ([navigationController pk_settings_useStateDrivenNavigation])
      {
        [navigationController pk_settings_popToRootViewController];
      }

      else
      {
        v10 = [navigationController popToRootViewControllerAnimated:1];
      }
    }

    v6 = parentViewController;
  }
}

- (void)_moreButtonPressed
{
  passType = [(PKPass *)self->_pass passType];
  if (passType == PKPassTypeSecureElement)
  {
    v4 = [(PKExpiredSinglePassViewController *)self _paymentPassDetailsViewControllerForPaymentPass:self->_pass];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else if (passType == PKPassTypeBarcode)
  {
    v4 = [(PKExpiredSinglePassViewController *)self _barcodePassDetailsViewControllerForBarcodePass:self->_pass];
    if (v4)
    {
LABEL_4:
      v6 = v4;
      v5 = [[PKNavigationController alloc] initWithRootViewController:v4];
      [(PKExpiredSinglePassViewController *)self presentViewController:v5 animated:1 completion:0];

      return;
    }
  }

  [(PKExpiredSinglePassViewController *)self _didPresentDetailViewController];
}

- (void)_sharePass
{
  v3 = [MEMORY[0x1E69CD9F8] pkui_activityControllerForPass:self->_pass passView:self->_passView passLinkedApplication:self->_linkedApplication];
  if (v3)
  {
    v4 = self->_pass;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__PKExpiredSinglePassViewController__sharePass__block_invoke;
    v6[3] = &unk_1E8012528;
    v7 = v4;
    v5 = v4;
    [v3 setCompletionWithItemsHandler:v6];
    [(PKExpiredSinglePassViewController *)self presentViewController:v3 animated:1 completion:0];
  }
}

void __47__PKExpiredSinglePassViewController__sharePass__block_invoke(uint64_t a1, void *a2, int a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) noteShared];
    v6 = *MEMORY[0x1E69B9EE0];
    v8 = @"activity";
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    MEMORY[0x1BFB41980](v6, v7);
  }

  else
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EE8], 0);
  }
}

- (id)_barcodePassDetailsViewControllerForBarcodePass:(id)pass
{
  if (pass)
  {
    passCopy = pass;
    v5 = [[PKBarcodePassDetailViewController alloc] initWithPass:passCopy];

    [(PKBarcodePassDetailViewController *)v5 setDeleteOverrider:self];
    [(PKBarcodePassDetailViewController *)v5 setShowCloseButton:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_paymentPassDetailsViewControllerForPaymentPass:(id)pass
{
  if (pass)
  {
    v4 = MEMORY[0x1E69B8BD8];
    passCopy = pass;
    defaultDataProvider = [v4 defaultDataProvider];
    v7 = [PKPaymentPassDetailViewController alloc];
    paymentPass = [passCopy paymentPass];

    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    v11 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v12 = [(PKPaymentPassDetailViewController *)v7 initWithPass:paymentPass group:0 groupsController:0 webService:mEMORY[0x1E69B8EF8] peerPaymentWebService:mEMORY[0x1E69B9020] style:0 passLibraryDataProvider:v11 paymentServiceDataProvider:defaultDataProvider];

    [(PKPaymentPassDetailViewController *)v12 setDeleteOverrider:self];
    [(PKPaymentPassDetailViewController *)v12 setShowDoneButton:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)enableButtons
{
  [(UIBarButtonItem *)self->_deleteButton setEnabled:1];
  [(UIBarButtonItem *)self->_unhideButton setEnabled:1];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    deleteButton = self->_deleteButton;
    redColor = [MEMORY[0x1E69DC888] redColor];
    [(UIBarButtonItem *)deleteButton setTintColor:redColor];

    unhideButton = self->_unhideButton;
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIBarButtonItem *)unhideButton setTintColor:systemBlueColor];
  }

  navigationController = [(PKExpiredSinglePassViewController *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar setNeedsLayout];
}

- (void)disableButtons
{
  [(UIBarButtonItem *)self->_deleteButton setEnabled:0];
  [(UIBarButtonItem *)self->_unhideButton setEnabled:0];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    deleteButton = self->_deleteButton;
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIBarButtonItem *)deleteButton setTintColor:tertiaryLabelColor];

    unhideButton = self->_unhideButton;
    tertiaryLabelColor2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIBarButtonItem *)unhideButton setTintColor:tertiaryLabelColor2];
  }

  navigationController = [(PKExpiredSinglePassViewController *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar setNeedsLayout];
}

- (void)_didPresentDetailViewController
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__PKExpiredSinglePassViewController__didPresentDetailViewController__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [(PKExpiredSinglePassViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __68__PKExpiredSinglePassViewController__didPresentDetailViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  if ([v2 pk_settings_useStateDrivenNavigation])
  {
    [v2 pk_settings_popToRootViewController];
  }

  else
  {
    v1 = [v2 popToRootViewControllerAnimated:1];
  }
}

@end