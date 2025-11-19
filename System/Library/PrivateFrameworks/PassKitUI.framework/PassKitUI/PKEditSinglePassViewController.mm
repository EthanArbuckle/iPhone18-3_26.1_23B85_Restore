@interface PKEditSinglePassViewController
- (BOOL)handleDeletePassRequestWithPass:(id)a3 forViewController:(id)a4;
- (PKEditSinglePassViewController)initWithGroup:(id)a3 pass:(id)a4;
- (id)_barcodePassDetailsViewControllerForBarcodePass:(id)a3;
- (id)_paymentPassDetailsViewControllerForPaymentPass:(id)a3;
- (void)_deletePassConfirmed;
- (void)_deletePassPressed;
- (void)_didPresentDetailViewController;
- (void)_moreButtonPressed;
- (void)disableDeleteButton;
- (void)enableDeleteButton;
- (void)passViewSetup;
- (void)passWasUpdated:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKEditSinglePassViewController

- (PKEditSinglePassViewController)initWithGroup:(id)a3 pass:(id)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = PKEditSinglePassViewController;
  v9 = [(PKEditSinglePassViewController *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_group, a3);
    objc_storeStrong(&v10->_pass, a4);
    v10->_performanceTest = 0;
    v11 = _UISolariumFeatureFlagEnabled();
    v12 = objc_alloc(MEMORY[0x1E69DC708]);
    v13 = v12;
    if (v11)
    {
      v14 = [v12 initWithBarButtonSystemItem:16 target:v10 action:sel__deletePassPressed];
      deleteBarButton = v10->_deleteBarButton;
      v10->_deleteBarButton = v14;
    }

    else
    {
      deleteBarButton = PKLocalizedString(&cfstr_PassEditingDel.isa);
      v16 = [v13 initWithTitle:deleteBarButton style:0 target:v10 action:sel__deletePassPressed];
      v17 = v10->_deleteBarButton;
      v10->_deleteBarButton = v16;
    }

    v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    flexibleSpace = v10->_flexibleSpace;
    v10->_flexibleSpace = v18;

    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = PKUIBigInfoButtonImageWithDefaultConfiguration();
    v22 = [v20 initWithImage:v21 style:0 target:v10 action:sel__moreButtonPressed];
    infoButton = v10->_infoButton;
    v10->_infoButton = v22;

    v24 = v10->_infoButton;
    v25 = [MEMORY[0x1E69DC888] labelColor];
    [(UIBarButtonItem *)v24 setTintColor:v25];

    v26 = [(PKEditSinglePassViewController *)v10 navigationItem];
    [v26 setRightBarButtonItem:v10->_infoButton];

    v30[0] = v10->_flexibleSpace;
    v30[1] = v10->_deleteBarButton;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    [(PKEditSinglePassViewController *)v10 setToolbarItems:v27];

    [(PKEditSinglePassViewController *)v10 passViewSetup];
  }

  return v10;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKEditSinglePassViewController;
  [(PKEditSinglePassViewController *)&v5 viewDidLoad];
  v3 = [(PKEditSinglePassViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  [(PKEditSinglePassViewController *)self passViewSetup];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKEditSinglePassViewController;
  [(PKEditSinglePassViewController *)&v5 viewWillAppear:a3];
  [(PKEditSinglePassViewController *)self enableDeleteButton];
  v4 = [(PKEditSinglePassViewController *)self navigationController];
  [v4 setToolbarHidden:0 animated:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKEditSinglePassViewController;
  [(PKEditSinglePassViewController *)&v5 viewDidAppear:a3];
  performanceTest = self->_performanceTest;
  if (performanceTest == 1)
  {
    [(PKEditSinglePassViewController *)self _moreButtonPressed];
  }

  else if (performanceTest == 3)
  {
    [(PKEditSinglePassViewController *)self _deletePassConfirmed];
  }
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKEditSinglePassViewController;
  [(PKEditSinglePassViewController *)&v28 viewWillLayoutSubviews];
  v3 = [(PKEditSinglePassViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
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

- (void)passViewSetup
{
  v3 = [(PKPass *)self->_pass localizedDescription];
  [(PKEditSinglePassViewController *)self setTitle:v3];

  v4 = [(PKEditSinglePassViewController *)self viewIfLoaded];
  if (v4)
  {
    v8 = v4;
    v5 = self->_passView;
    v6 = [[PKPassView alloc] initWithPass:self->_pass content:5];
    passView = self->_passView;
    self->_passView = v6;

    [(PKPassView *)self->_passView setModallyPresented:1];
    [v8 addSubview:self->_passView];
    [v8 setNeedsLayout];
    if (v5)
    {
      [(PKPassView *)v5 removeFromSuperview];
    }

    v4 = v8;
  }
}

- (void)passWasUpdated:(id)a3
{
  objc_storeStrong(&self->_pass, a3);

  [(PKEditSinglePassViewController *)self passViewSetup];
}

- (BOOL)handleDeletePassRequestWithPass:(id)a3 forViewController:(id)a4
{
  v5 = a4;
  [(PKEditSinglePassViewController *)self _deletePassConfirmed];
  [v5 dismissViewControllerAnimated:1 completion:0];

  return 1;
}

- (void)_deletePassPressed
{
  v3 = PKLocalizedString(&cfstr_RemoveSheetCan.isa);
  v4 = PKLocalizedString(&cfstr_PassEditingDel_0.isa);
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v6 = [v5 popoverPresentationController];
  [v6 setSourceItem:self->_deleteBarButton];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:v3 style:1 handler:0];
  [v5 addAction:v7];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PKEditSinglePassViewController__deletePassPressed__block_invoke;
  v9[3] = &unk_1E80112E8;
  v9[4] = self;
  v8 = [MEMORY[0x1E69DC648] actionWithTitle:v4 style:2 handler:v9];
  [v5 addAction:v8];

  [(PKEditSinglePassViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_deletePassConfirmed
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EA0], 0);
  [(PKEditSinglePassViewController *)self disableDeleteButton];
  v3 = [MEMORY[0x1E69B8A58] sharedInstance];
  [v3 removePass:self->_pass];
}

- (void)_moreButtonPressed
{
  v3 = [(PKPass *)self->_pass passType];
  if (v3 == PKPassTypeSecureElement)
  {
    v6 = [(PKPass *)self->_pass paymentPass];
    v4 = [(PKEditSinglePassViewController *)self _paymentPassDetailsViewControllerForPaymentPass:v6];

    if (v4)
    {
LABEL_4:
      v5 = [[PKNavigationController alloc] initWithRootViewController:v4];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __52__PKEditSinglePassViewController__moreButtonPressed__block_invoke;
      v7[3] = &unk_1E8010970;
      v7[4] = self;
      [(PKEditSinglePassViewController *)self presentViewController:v5 animated:1 completion:v7];

      return;
    }
  }

  else if (v3 == PKPassTypeBarcode)
  {
    v4 = [(PKEditSinglePassViewController *)self _barcodePassDetailsViewControllerForBarcodePass:self->_pass];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  [(PKEditSinglePassViewController *)self _didPresentDetailViewController];
}

- (id)_paymentPassDetailsViewControllerForPaymentPass:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E69B8BD8];
    v5 = a3;
    v6 = [v4 defaultDataProvider];
    v7 = [PKPaymentPassDetailViewController alloc];
    group = self->_group;
    v9 = [MEMORY[0x1E69B8EF8] sharedService];
    v10 = [MEMORY[0x1E69B9020] sharedService];
    v11 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v12 = [(PKPaymentPassDetailViewController *)v7 initWithPass:v5 group:group groupsController:0 webService:v9 peerPaymentWebService:v10 style:0 passLibraryDataProvider:v11 paymentServiceDataProvider:v6];

    [(PKPaymentPassDetailViewController *)v12 setDeleteOverrider:self];
    [(PKPaymentPassDetailViewController *)v12 setShowDoneButton:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_barcodePassDetailsViewControllerForBarcodePass:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[PKBarcodePassDetailViewController alloc] initWithPass:v4];

    [(PKBarcodePassDetailViewController *)v5 setDeleteOverrider:self];
    [(PKBarcodePassDetailViewController *)v5 setShowCloseButton:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enableDeleteButton
{
  [(UIBarButtonItem *)self->_deleteBarButton setEnabled:1];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    deleteBarButton = self->_deleteBarButton;
    v4 = [MEMORY[0x1E69DC888] redColor];
    [(UIBarButtonItem *)deleteBarButton setTintColor:v4];
  }

  v6 = [(PKEditSinglePassViewController *)self navigationController];
  v5 = [v6 toolbar];
  [v5 setNeedsLayout];
}

- (void)disableDeleteButton
{
  [(UIBarButtonItem *)self->_deleteBarButton setEnabled:0];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    deleteBarButton = self->_deleteBarButton;
    v4 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIBarButtonItem *)deleteBarButton setTintColor:v4];
  }

  v6 = [(PKEditSinglePassViewController *)self navigationController];
  v5 = [v6 toolbar];
  [v5 setNeedsLayout];
}

- (void)_didPresentDetailViewController
{
  if (self->_performanceTest == 1)
  {
    v4[5] = v2;
    v4[6] = v3;
    self->_performanceTest = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __65__PKEditSinglePassViewController__didPresentDetailViewController__block_invoke;
    v4[3] = &unk_1E8010970;
    v4[4] = self;
    [(PKEditSinglePassViewController *)self dismissViewControllerAnimated:1 completion:v4];
  }
}

void __65__PKEditSinglePassViewController__didPresentDetailViewController__block_invoke(uint64_t a1)
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