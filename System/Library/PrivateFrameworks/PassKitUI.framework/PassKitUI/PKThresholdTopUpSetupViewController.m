@interface PKThresholdTopUpSetupViewController
- (PKThresholdTopUpSetupViewController)initWithAmountSuggestions:(id)a3 selectedAmount:(id)a4 thresholdSuggestions:(id)a5 selectedThreshold:(id)a6 currencyCode:(id)a7 paymentMethodName:(id)a8 paymentMethodIdentifier:(id)a9 mode:(int64_t)a10 viewStyle:(int64_t)a11 delegate:(id)a12;
- (void)_cancelAction;
- (void)_enableAction;
- (void)_setupCreateNavigationItem;
- (void)_setupDefaultNavigationItem;
- (void)_setupEditNavigationItem;
- (void)_updateAction;
- (void)didSelectPaymentMethod;
- (void)paymentMethodSelectionViewController:(id)a3 didSelectPaymentMethod:(id)a4;
- (void)performedCancelWithCompletion:(id)a3;
- (void)reloadItem:(id)a3 animated:(BOOL)a4;
- (void)setEditingUnavailable:(BOOL)a3;
- (void)setEditingValues:(BOOL)a3;
- (void)setMessages:(id)a3;
- (void)setShowNavigationBarSpinner:(BOOL)a3;
- (void)updateTopUpAmount:(id)a3 threshold:(id)a4 paymentMethodName:(id)a5 paymentMethodIdentifier:(id)a6 setupMode:(int64_t)a7;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKThresholdTopUpSetupViewController

- (PKThresholdTopUpSetupViewController)initWithAmountSuggestions:(id)a3 selectedAmount:(id)a4 thresholdSuggestions:(id)a5 selectedThreshold:(id)a6 currencyCode:(id)a7 paymentMethodName:(id)a8 paymentMethodIdentifier:(id)a9 mode:(int64_t)a10 viewStyle:(int64_t)a11 delegate:(id)a12
{
  v52[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  v50 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a12;
  v51.receiver = self;
  v51.super_class = PKThresholdTopUpSetupViewController;
  v25 = [(PKPaymentSetupOptionsViewController *)&v51 init];
  if (v25)
  {
    v48 = v23;
    v49 = v19;
    LOBYTE(v47) = a10 != 1;
    v26 = [PKThresholdTopUpSelectionSectionController initWithAmountSuggestions:"initWithAmountSuggestions:selectedAmount:thresholdSuggestions:selectedThreshold:currencyCode:paymentMethodName:paymentMethodIdentifier:viewStyle:delegate:useSetupMargins:" selectedAmount:v18 thresholdSuggestions:v50 selectedThreshold:v23 currencyCode:a11 paymentMethodName:v25 paymentMethodIdentifier:v47 viewStyle:? delegate:? useSetupMargins:?];
    sectionController = v25->_sectionController;
    v25->_sectionController = v26;

    v28 = [[PKThresholdTopUpActionsSectionController alloc] initWithExistingThresholdTopUp:a10 == 1 delegate:v25 useSetupMargins:a10 != 1];
    actionController = v25->_actionController;
    v25->_actionController = v28;

    v30 = [PKDashboardMessageSectionController alloc];
    v31 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    v32 = [(PKDashboardMessageSectionController *)v30 initWithMessages:v31 delegate:v25];
    messageSectionController = v25->_messageSectionController;
    v25->_messageSectionController = v32;

    objc_storeStrong(&v25->_paymentMethodName, a8);
    objc_storeStrong(&v25->_paymentMethodIdentifier, a9);
    objc_storeWeak(&v25->_delegate, v24);
    v25->_viewStyle = a11;
    v25->_mode = a10;
    switch(a10)
    {
      case 1:
        [(PKPaymentSetupOptionsViewController *)v25 setHeaderMode:1];
        [(PKThresholdTopUpSetupViewController *)v25 _setupDefaultNavigationItem];
        [(PKThresholdTopUpSelectionSectionController *)v25->_sectionController setEditing:0];
        break;
      case 2:
        v34 = [(PKPaymentSetupOptionsViewController *)v25 dockView];
        v35 = [v34 primaryButton];

        v36 = PKLocalizedPaymentString(&cfstr_ThresholdTurnO.isa);
        [v35 setTitle:v36 forState:0];

        [v35 addTarget:v25 action:sel__continuousButtonPressed_ forControlEvents:64];
        v37 = [(PKPaymentSetupOptionsViewController *)v25 dockView];
        v38 = [v37 footerView];
        v39 = [v38 skipCardButton];

        v40 = PKLocalizedPaymentString(&cfstr_ThresholdSkip.isa);
        [v39 setTitle:v40 forState:0];

        [v39 addTarget:v25 action:sel__skipButtonPressed_ forControlEvents:64];
        v41 = [(PKThresholdTopUpSetupViewController *)v25 navigationItem];
        [v41 setHidesBackButton:1];

        v42 = [(PKPaymentSetupOptionsViewController *)v25 dockView];
        v43 = [v42 footerView];
        [v43 setManualEntryButton:0];

        break;
      case 0:
        [(PKThresholdTopUpSetupViewController *)v25 _setupCreateNavigationItem];
        break;
    }

    [(PKDynamicCollectionViewController *)v25 setUseItemIdentityWhenUpdating:1];
    v52[0] = v25->_sectionController;
    v52[1] = v25->_actionController;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    [(PKPaymentSetupOptionsViewController *)v25 setSections:v44 animated:0];

    v19 = v49;
    v23 = v48;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v45 = [(PKThresholdTopUpSetupViewController *)v25 navigationItem];
      [v45 pkui_setupScrollEdgeChromelessAppearance];
      [v45 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v25;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKThresholdTopUpSetupViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v3];

  v4 = [(PKThresholdTopUpSetupViewController *)self view];
  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B94A8]];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKThresholdTopUpSetupViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKDynamicCollectionViewController *)self collectionView];
    v4 = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)setShowNavigationBarSpinner:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PKThresholdTopUpSetupViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 setShowNavigationBarSpinner:?];
  [(PKThresholdTopUpSetupViewController *)self setModalInPresentation:v3];
}

- (void)updateTopUpAmount:(id)a3 threshold:(id)a4 paymentMethodName:(id)a5 paymentMethodIdentifier:(id)a6 setupMode:(int64_t)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  self->_mode = a7;
  objc_storeStrong(&self->_paymentMethodName, a5);
  objc_storeStrong(&self->_paymentMethodIdentifier, a6);
  mode = self->_mode;
  if (mode)
  {
    if (mode != 1)
    {
      goto LABEL_6;
    }

    [(PKPaymentSetupOptionsViewController *)self setHeaderMode:1];
    [(PKThresholdTopUpSetupViewController *)self _setupDefaultNavigationItem];
    [(PKThresholdTopUpSelectionSectionController *)self->_sectionController setEditing:0];
    [(PKThresholdTopUpActionsSectionController *)self->_actionController setExistingThresholdTopUp:1];
    actionController = self->_actionController;
    v17 = 0;
  }

  else
  {
    [(PKPaymentSetupOptionsViewController *)self setHeaderMode:0];
    [(PKThresholdTopUpSetupViewController *)self _setupCreateNavigationItem];
    [(PKThresholdTopUpSelectionSectionController *)self->_sectionController setEditing:1];
    [(PKThresholdTopUpActionsSectionController *)self->_actionController setExistingThresholdTopUp:0];
    actionController = self->_actionController;
    v17 = 1;
  }

  [(PKThresholdTopUpActionsSectionController *)actionController setCancelAutoReloadUnavailable:v17];
LABEL_6:
  [(PKThresholdTopUpSelectionSectionController *)self->_sectionController updateTopUpAmount:v18 threshold:v12 paymentMethodName:v13 paymentMethodIdentifier:v14];
  [(PKDynamicCollectionViewController *)self reloadDataAnimated:1];
}

- (void)didSelectPaymentMethod
{
  if (self->_paymentRequest)
  {
    if (!self->_selectedPass && [(NSString *)self->_paymentMethodIdentifier length])
    {
      v3 = [MEMORY[0x1E69B8A58] sharedInstance];
      v4 = [v3 passWithFPANIdentifier:self->_paymentMethodIdentifier];
      selectedPass = self->_selectedPass;
      self->_selectedPass = v4;
    }

    v7 = [[PKPaymentMethodSelectionViewController alloc] initWithPaymentRequest:self->_paymentRequest selectedPass:self->_selectedPass paymentMethodName:self->_paymentMethodName paymentMethodIdentifier:self->_paymentMethodIdentifier allowAppleCashToggle:0 useAppleCashBalance:0 viewStyle:self->_viewStyle delegate:self];
    v6 = [(PKThresholdTopUpSetupViewController *)self navigationController];
    if ([v6 pk_settings_useStateDrivenNavigation])
    {
      [v6 pk_settings_pushViewController:v7];
    }

    else
    {
      [v6 pushViewController:v7 animated:1];
    }
  }

  else
  {

    [(PKThresholdTopUpSetupViewController *)self _updateAction];
  }
}

- (void)_setupCreateNavigationItem
{
  v3 = [(PKThresholdTopUpSetupViewController *)self navigationItem];
  objc_initWeak(&location, self);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  v5 = MEMORY[0x1E69DC628];
  v6 = PKLocalizedPaymentString(&cfstr_ThresholdTurnO.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PKThresholdTopUpSetupViewController__setupCreateNavigationItem__block_invoke;
  v14[3] = &unk_1E8010A60;
  objc_copyWeak(&v15, &location);
  v7 = [v5 actionWithTitle:v6 image:v4 identifier:0 handler:v14];

  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v7];
  [v8 setStyle:2];
  [v8 setAccessibilityIdentifier:*MEMORY[0x1E69B9720]];
  [v3 setRightBarButtonItem:v8];
  v9 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PKThresholdTopUpSetupViewController__setupCreateNavigationItem__block_invoke_2;
  v12[3] = &unk_1E8010A60;
  objc_copyWeak(&v13, &location);
  v10 = [v9 actionWithHandler:v12];
  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 primaryAction:v10];
  [v11 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  [v3 setLeftBarButtonItem:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __65__PKThresholdTopUpSetupViewController__setupCreateNavigationItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableAction];
}

void __65__PKThresholdTopUpSetupViewController__setupCreateNavigationItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelAction];
}

- (void)_setupDefaultNavigationItem
{
  if (self->_mode == 1)
  {
    v5 = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    if (self->_editingUnavailable)
    {
      [v5 setRightBarButtonItem:0];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_changeEditMode_];
      [v4 setEnabled:!self->_editingUnavailable];
      [v5 setRightBarButtonItem:v4];
    }

    [v5 setLeftBarButtonItem:0];
    [v5 setHidesBackButton:0];
  }
}

- (void)_setupEditNavigationItem
{
  if (self->_mode == 1)
  {
    v3 = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__PKThresholdTopUpSetupViewController__setupEditNavigationItem__block_invoke;
    v17[3] = &unk_1E8010A60;
    objc_copyWeak(&v18, &location);
    v5 = [v4 actionWithHandler:v17];
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 primaryAction:v5];
    [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9720]];
    [v6 setEnabled:{-[PKThresholdTopUpSelectionSectionController valuesEdited](self->_sectionController, "valuesEdited")}];
    [v3 setRightBarButtonItem:v6];
    v7 = MEMORY[0x1E69DC628];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __63__PKThresholdTopUpSetupViewController__setupEditNavigationItem__block_invoke_2;
    v14 = &unk_1E8012328;
    objc_copyWeak(&v16, &location);
    v15 = self;
    v8 = [v7 actionWithHandler:&v11];
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = [v9 initWithBarButtonSystemItem:1 primaryAction:{v8, v11, v12, v13, v14}];
    [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [v3 setLeftBarButtonItem:v10];
    [v3 setHidesBackButton:1];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __63__PKThresholdTopUpSetupViewController__setupEditNavigationItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAction];
}

void __63__PKThresholdTopUpSetupViewController__setupEditNavigationItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setEditingValues:(*(*(a1 + 32) + 1352) & 1) == 0];
}

- (void)setEditingValues:(BOOL)a3
{
  if (self->_editingValues == !a3)
  {
    v3 = a3;
    self->_editingValues = a3;
    [(PKThresholdTopUpSelectionSectionController *)self->_sectionController setEditing:?];
    [(PKThresholdTopUpActionsSectionController *)self->_actionController setCancelAutoReloadUnavailable:self->_editingValues];
    selectedPass = self->_selectedPass;
    self->_selectedPass = 0;

    if (v3)
    {

      [(PKThresholdTopUpSetupViewController *)self _setupEditNavigationItem];
    }

    else
    {

      [(PKThresholdTopUpSetupViewController *)self _setupDefaultNavigationItem];
    }
  }
}

- (void)setEditingUnavailable:(BOOL)a3
{
  if (self->_mode == 1 && self->_editingUnavailable == !a3)
  {
    self->_editingUnavailable = a3;
    [(PKThresholdTopUpSelectionSectionController *)self->_sectionController setEnabled:!a3];
    if (self->_editingValues)
    {

      [(PKThresholdTopUpSetupViewController *)self _setupEditNavigationItem];
    }

    else
    {

      [(PKThresholdTopUpSetupViewController *)self _setupDefaultNavigationItem];
    }
  }
}

- (void)setMessages:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  messageSectionController = self->_messageSectionController;
  v5 = a3;
  [(PKDashboardMessageSectionController *)messageSectionController updateWithMessages:v5 currentMessageIndex:0];
  v6 = [v5 count];

  if (v6)
  {
    sectionController = self->_sectionController;
    v15 = self->_messageSectionController;
    v16 = sectionController;
    actionController = self->_actionController;
    v8 = MEMORY[0x1E695DEC8];
    v9 = &v15;
    v10 = 3;
  }

  else
  {
    v11 = self->_actionController;
    v13 = self->_sectionController;
    v14 = v11;
    v8 = MEMORY[0x1E695DEC8];
    v9 = &v13;
    v10 = 2;
  }

  v12 = [v8 arrayWithObjects:v9 count:{v10, v13, v14, v15, v16, actionController, v18}];
  [(PKPaymentSetupOptionsViewController *)self setSections:v12 animated:0];
}

- (void)reloadItem:(id)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PKThresholdTopUpSetupViewController;
  [(PKDynamicCollectionViewController *)&v7 reloadItem:a3 animated:a4];
  if (self->_editingValues)
  {
    v5 = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    v6 = [v5 rightBarButtonItem];
    [v6 setEnabled:{-[PKThresholdTopUpSelectionSectionController valuesEdited](self->_sectionController, "valuesEdited")}];
  }
}

- (void)_updateAction
{
  [(PKThresholdTopUpSetupViewController *)self setShowNavigationBarSpinner:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__PKThresholdTopUpSetupViewController__updateAction__block_invoke;
    v4[3] = &unk_1E8011180;
    objc_copyWeak(&v5, &location);
    [WeakRetained thresholdTopUpDidSelectUpdate:self completion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __52__PKThresholdTopUpSetupViewController__updateAction__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowNavigationBarSpinner:0];
  if (a2)
  {
    [WeakRetained[162] applyUpdate];
    [WeakRetained setEditingValues:0];
  }
}

- (void)_enableAction
{
  [(PKThresholdTopUpSetupViewController *)self setShowNavigationBarSpinner:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__PKThresholdTopUpSetupViewController__enableAction__block_invoke;
    v4[3] = &unk_1E8011180;
    objc_copyWeak(&v5, &location);
    [WeakRetained thresholdTopUpDidSelectContinue:self completion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __52__PKThresholdTopUpSetupViewController__enableAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowNavigationBarSpinner:0];
}

- (void)_cancelAction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained thresholdTopUpDidSelectCancel:self];
  }

  else
  {
    [(PKThresholdTopUpSetupViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)performedCancelWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    v7 = [v6 rightBarButtonItem];
    [v7 setEnabled:0];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKThresholdTopUpSetupViewController_performedCancelWithCompletion___block_invoke;
    v8[3] = &unk_1E80110B8;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [WeakRetained thresholdTopUpPerformCancel:self completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __69__PKThresholdTopUpSetupViewController_performedCancelWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:1];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }
}

- (void)paymentMethodSelectionViewController:(id)a3 didSelectPaymentMethod:(id)a4
{
  v8 = a4;
  objc_storeStrong(&self->_selectedPass, a4);
  [(PKThresholdTopUpSelectionSectionController *)self->_sectionController updatePaymentMethod:v8];
  v6 = [(PKThresholdTopUpSetupViewController *)self navigationController];
  if ([v6 pk_settings_useStateDrivenNavigation])
  {
    [v6 pk_settings_popToViewController:self];
  }

  else
  {
    v7 = [v6 popToViewController:self animated:1];
  }
}

@end