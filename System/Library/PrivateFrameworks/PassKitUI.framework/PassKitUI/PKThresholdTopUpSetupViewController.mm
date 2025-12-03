@interface PKThresholdTopUpSetupViewController
- (PKThresholdTopUpSetupViewController)initWithAmountSuggestions:(id)suggestions selectedAmount:(id)amount thresholdSuggestions:(id)thresholdSuggestions selectedThreshold:(id)threshold currencyCode:(id)code paymentMethodName:(id)name paymentMethodIdentifier:(id)identifier mode:(int64_t)self0 viewStyle:(int64_t)self1 delegate:(id)self2;
- (void)_cancelAction;
- (void)_enableAction;
- (void)_setupCreateNavigationItem;
- (void)_setupDefaultNavigationItem;
- (void)_setupEditNavigationItem;
- (void)_updateAction;
- (void)didSelectPaymentMethod;
- (void)paymentMethodSelectionViewController:(id)controller didSelectPaymentMethod:(id)method;
- (void)performedCancelWithCompletion:(id)completion;
- (void)reloadItem:(id)item animated:(BOOL)animated;
- (void)setEditingUnavailable:(BOOL)unavailable;
- (void)setEditingValues:(BOOL)values;
- (void)setMessages:(id)messages;
- (void)setShowNavigationBarSpinner:(BOOL)spinner;
- (void)updateTopUpAmount:(id)amount threshold:(id)threshold paymentMethodName:(id)name paymentMethodIdentifier:(id)identifier setupMode:(int64_t)mode;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKThresholdTopUpSetupViewController

- (PKThresholdTopUpSetupViewController)initWithAmountSuggestions:(id)suggestions selectedAmount:(id)amount thresholdSuggestions:(id)thresholdSuggestions selectedThreshold:(id)threshold currencyCode:(id)code paymentMethodName:(id)name paymentMethodIdentifier:(id)identifier mode:(int64_t)self0 viewStyle:(int64_t)self1 delegate:(id)self2
{
  v52[2] = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  amountCopy = amount;
  thresholdSuggestionsCopy = thresholdSuggestions;
  thresholdCopy = threshold;
  codeCopy = code;
  nameCopy = name;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v51.receiver = self;
  v51.super_class = PKThresholdTopUpSetupViewController;
  v25 = [(PKPaymentSetupOptionsViewController *)&v51 init];
  if (v25)
  {
    v48 = identifierCopy;
    v49 = thresholdSuggestionsCopy;
    LOBYTE(v47) = mode != 1;
    v26 = [PKThresholdTopUpSelectionSectionController initWithAmountSuggestions:"initWithAmountSuggestions:selectedAmount:thresholdSuggestions:selectedThreshold:currencyCode:paymentMethodName:paymentMethodIdentifier:viewStyle:delegate:useSetupMargins:" selectedAmount:suggestionsCopy thresholdSuggestions:amountCopy selectedThreshold:identifierCopy currencyCode:style paymentMethodName:v25 paymentMethodIdentifier:v47 viewStyle:? delegate:? useSetupMargins:?];
    sectionController = v25->_sectionController;
    v25->_sectionController = v26;

    v28 = [[PKThresholdTopUpActionsSectionController alloc] initWithExistingThresholdTopUp:mode == 1 delegate:v25 useSetupMargins:mode != 1];
    actionController = v25->_actionController;
    v25->_actionController = v28;

    v30 = [PKDashboardMessageSectionController alloc];
    v31 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    v32 = [(PKDashboardMessageSectionController *)v30 initWithMessages:v31 delegate:v25];
    messageSectionController = v25->_messageSectionController;
    v25->_messageSectionController = v32;

    objc_storeStrong(&v25->_paymentMethodName, name);
    objc_storeStrong(&v25->_paymentMethodIdentifier, identifier);
    objc_storeWeak(&v25->_delegate, delegateCopy);
    v25->_viewStyle = style;
    v25->_mode = mode;
    switch(mode)
    {
      case 1:
        [(PKPaymentSetupOptionsViewController *)v25 setHeaderMode:1];
        [(PKThresholdTopUpSetupViewController *)v25 _setupDefaultNavigationItem];
        [(PKThresholdTopUpSelectionSectionController *)v25->_sectionController setEditing:0];
        break;
      case 2:
        dockView = [(PKPaymentSetupOptionsViewController *)v25 dockView];
        primaryButton = [dockView primaryButton];

        v36 = PKLocalizedPaymentString(&cfstr_ThresholdTurnO.isa);
        [primaryButton setTitle:v36 forState:0];

        [primaryButton addTarget:v25 action:sel__continuousButtonPressed_ forControlEvents:64];
        dockView2 = [(PKPaymentSetupOptionsViewController *)v25 dockView];
        footerView = [dockView2 footerView];
        skipCardButton = [footerView skipCardButton];

        v40 = PKLocalizedPaymentString(&cfstr_ThresholdSkip.isa);
        [skipCardButton setTitle:v40 forState:0];

        [skipCardButton addTarget:v25 action:sel__skipButtonPressed_ forControlEvents:64];
        navigationItem = [(PKThresholdTopUpSetupViewController *)v25 navigationItem];
        [navigationItem setHidesBackButton:1];

        dockView3 = [(PKPaymentSetupOptionsViewController *)v25 dockView];
        footerView2 = [dockView3 footerView];
        [footerView2 setManualEntryButton:0];

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

    thresholdSuggestionsCopy = v49;
    identifierCopy = v48;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem2 = [(PKThresholdTopUpSetupViewController *)v25 navigationItem];
      [navigationItem2 pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem2 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v25;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKThresholdTopUpSetupViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewDidLoad];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:systemGroupedBackgroundColor];

  view = [(PKThresholdTopUpSetupViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B94A8]];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKThresholdTopUpSetupViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    collectionView = [(PKDynamicCollectionViewController *)self collectionView];
    navigationItem = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    [collectionView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)setShowNavigationBarSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  v5.receiver = self;
  v5.super_class = PKThresholdTopUpSetupViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 setShowNavigationBarSpinner:?];
  [(PKThresholdTopUpSetupViewController *)self setModalInPresentation:spinnerCopy];
}

- (void)updateTopUpAmount:(id)amount threshold:(id)threshold paymentMethodName:(id)name paymentMethodIdentifier:(id)identifier setupMode:(int64_t)mode
{
  amountCopy = amount;
  thresholdCopy = threshold;
  nameCopy = name;
  identifierCopy = identifier;
  self->_mode = mode;
  objc_storeStrong(&self->_paymentMethodName, name);
  objc_storeStrong(&self->_paymentMethodIdentifier, identifier);
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
  [(PKThresholdTopUpSelectionSectionController *)self->_sectionController updateTopUpAmount:amountCopy threshold:thresholdCopy paymentMethodName:nameCopy paymentMethodIdentifier:identifierCopy];
  [(PKDynamicCollectionViewController *)self reloadDataAnimated:1];
}

- (void)didSelectPaymentMethod
{
  if (self->_paymentRequest)
  {
    if (!self->_selectedPass && [(NSString *)self->_paymentMethodIdentifier length])
    {
      mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
      v4 = [mEMORY[0x1E69B8A58] passWithFPANIdentifier:self->_paymentMethodIdentifier];
      selectedPass = self->_selectedPass;
      self->_selectedPass = v4;
    }

    v7 = [[PKPaymentMethodSelectionViewController alloc] initWithPaymentRequest:self->_paymentRequest selectedPass:self->_selectedPass paymentMethodName:self->_paymentMethodName paymentMethodIdentifier:self->_paymentMethodIdentifier allowAppleCashToggle:0 useAppleCashBalance:0 viewStyle:self->_viewStyle delegate:self];
    navigationController = [(PKThresholdTopUpSetupViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v7];
    }

    else
    {
      [navigationController pushViewController:v7 animated:1];
    }
  }

  else
  {

    [(PKThresholdTopUpSetupViewController *)self _updateAction];
  }
}

- (void)_setupCreateNavigationItem
{
  navigationItem = [(PKThresholdTopUpSetupViewController *)self navigationItem];
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
  [navigationItem setRightBarButtonItem:v8];
  v9 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PKThresholdTopUpSetupViewController__setupCreateNavigationItem__block_invoke_2;
  v12[3] = &unk_1E8010A60;
  objc_copyWeak(&v13, &location);
  v10 = [v9 actionWithHandler:v12];
  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 primaryAction:v10];
  [v11 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  [navigationItem setLeftBarButtonItem:v11];

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
    navigationItem = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    if (self->_editingUnavailable)
    {
      [navigationItem setRightBarButtonItem:0];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_changeEditMode_];
      [v4 setEnabled:!self->_editingUnavailable];
      [navigationItem setRightBarButtonItem:v4];
    }

    [navigationItem setLeftBarButtonItem:0];
    [navigationItem setHidesBackButton:0];
  }
}

- (void)_setupEditNavigationItem
{
  if (self->_mode == 1)
  {
    navigationItem = [(PKThresholdTopUpSetupViewController *)self navigationItem];
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
    [navigationItem setRightBarButtonItem:v6];
    v7 = MEMORY[0x1E69DC628];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __63__PKThresholdTopUpSetupViewController__setupEditNavigationItem__block_invoke_2;
    v14 = &unk_1E8012328;
    objc_copyWeak(&v16, &location);
    selfCopy = self;
    v8 = [v7 actionWithHandler:&v11];
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = [v9 initWithBarButtonSystemItem:1 primaryAction:{v8, v11, v12, v13, v14}];
    [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [navigationItem setLeftBarButtonItem:v10];
    [navigationItem setHidesBackButton:1];

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

- (void)setEditingValues:(BOOL)values
{
  if (self->_editingValues == !values)
  {
    valuesCopy = values;
    self->_editingValues = values;
    [(PKThresholdTopUpSelectionSectionController *)self->_sectionController setEditing:?];
    [(PKThresholdTopUpActionsSectionController *)self->_actionController setCancelAutoReloadUnavailable:self->_editingValues];
    selectedPass = self->_selectedPass;
    self->_selectedPass = 0;

    if (valuesCopy)
    {

      [(PKThresholdTopUpSetupViewController *)self _setupEditNavigationItem];
    }

    else
    {

      [(PKThresholdTopUpSetupViewController *)self _setupDefaultNavigationItem];
    }
  }
}

- (void)setEditingUnavailable:(BOOL)unavailable
{
  if (self->_mode == 1 && self->_editingUnavailable == !unavailable)
  {
    self->_editingUnavailable = unavailable;
    [(PKThresholdTopUpSelectionSectionController *)self->_sectionController setEnabled:!unavailable];
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

- (void)setMessages:(id)messages
{
  v18 = *MEMORY[0x1E69E9840];
  messageSectionController = self->_messageSectionController;
  messagesCopy = messages;
  [(PKDashboardMessageSectionController *)messageSectionController updateWithMessages:messagesCopy currentMessageIndex:0];
  v6 = [messagesCopy count];

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

- (void)reloadItem:(id)item animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = PKThresholdTopUpSetupViewController;
  [(PKDynamicCollectionViewController *)&v7 reloadItem:item animated:animated];
  if (self->_editingValues)
  {
    navigationItem = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:{-[PKThresholdTopUpSelectionSectionController valuesEdited](self->_sectionController, "valuesEdited")}];
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

- (void)performedCancelWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    navigationItem = [(PKThresholdTopUpSetupViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKThresholdTopUpSetupViewController_performedCancelWithCompletion___block_invoke;
    v8[3] = &unk_1E80110B8;
    objc_copyWeak(&v10, &location);
    v9 = completionCopy;
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

- (void)paymentMethodSelectionViewController:(id)controller didSelectPaymentMethod:(id)method
{
  methodCopy = method;
  objc_storeStrong(&self->_selectedPass, method);
  [(PKThresholdTopUpSelectionSectionController *)self->_sectionController updatePaymentMethod:methodCopy];
  navigationController = [(PKThresholdTopUpSetupViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popToViewController:self];
  }

  else
  {
    v7 = [navigationController popToViewController:self animated:1];
  }
}

@end