@interface PKPeerPaymentIdentityVerificationPickerViewController
- (BOOL)isComplete;
- (PKPaymentSetupViewControllerDelegate)delegate;
- (PKPeerPaymentIdentityVerificationPickerViewController)initWithController:(id)a3 setupDelegate:(id)a4 pickerField:(id)a5 footerText:(id)a6;
- (id)headerView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handleCancelButtonTapped:(id)a3;
- (void)_handleError:(id)a3;
- (void)_handleNextButtonTapped:(id)a3;
- (void)_processNextViewController;
- (void)_setIdleTimerDisabled:(BOOL)a3 title:(id)a4 subtitle:(id)a5;
- (void)_setNavigationBarEnabled:(BOOL)a3;
- (void)_setPrimaryButtonEnabled:(BOOL)a3;
- (void)_setTableViewHeaderActivitySpinnerAnimated:(BOOL)a3 title:(id)a4 subtitle:(id)a5;
- (void)_terminateFlow;
- (void)_updateNavigationItemAnimated:(BOOL)a3;
- (void)_updateRightBarButtonState;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPeerPaymentIdentityVerificationPickerViewController

- (PKPeerPaymentIdentityVerificationPickerViewController)initWithController:(id)a3 setupDelegate:(id)a4 pickerField:(id)a5 footerText:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  v15 = -[PKPaymentSetupTableViewController initWithContext:](&v27, sel_initWithContext_, [v11 context]);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_controller, a3);
    objc_storeStrong(&v16->_pickerField, a5);
    objc_storeStrong(&v16->_footerText, a6);
    objc_storeWeak(&v16->_delegate, v12);
    v16->_navigationEnabled = 1;
    v16->_rightBarButtonItemsEnabled = 0;
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v16 action:sel__handleCancelButtonTapped_];
    v18 = v17;
    if (v17)
    {
      v29[0] = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    }

    else
    {
      v19 = 0;
    }

    objc_storeStrong(&v16->_leftBarButtonItems, v19);
    if (v18)
    {
    }

    v20 = _UISolariumFeatureFlagEnabled();
    v21 = objc_alloc(MEMORY[0x1E69DC708]);
    if (v20)
    {
      v22 = PKUIChevronImage();
      v23 = [v21 initWithImage:v22 style:2 target:v16 action:sel__handleNextButtonTapped_];
    }

    else
    {
      v22 = PKLocalizedPaymentString(&cfstr_Next.isa);
      v23 = [v21 initWithTitle:v22 style:2 target:v16 action:sel__handleNextButtonTapped_];
    }

    v24 = v23;

    [v24 setEnabled:v16->_rightBarButtonItemsEnabled];
    if (v24)
    {
      v28 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    }

    else
    {
      v25 = 0;
    }

    objc_storeStrong(&v16->_rightBarButtonItems, v25);
    if (v24)
    {
    }

    [(PKPeerPaymentIdentityVerificationPickerViewController *)v16 _updateNavigationItemAnimated:0, v13];
  }

  return v16;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  [(PKPeerPaymentIdentityVerificationPickerViewController *)&v6 viewDidLoad];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPeerPaymentIdentityVerificationPickerViewControllerCellIdentifier"];

  v4 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  v5 = [(PKPaymentSetupTableViewController *)self tableView];
  [v5 setTableHeaderView:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  [(PKPaymentSetupTableViewController *)&v4 viewWillAppear:a3];
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _setPrimaryButtonEnabled:[(PKPeerPaymentIdentityVerificationPickerViewController *)self isComplete]];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  [(PKPeerPaymentIdentityVerificationPickerViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  [v3 sizeToFit];

  v4 = [(PKPaymentSetupTableViewController *)self tableView];
  v5 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  [v5 bounds];
  [v4 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v7)];
}

- (BOOL)isComplete
{
  v2 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PKPaymentSetupFieldPicker *)self->_pickerField pickerItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPeerPaymentIdentityVerificationPickerViewControllerCellIdentifier" forIndexPath:v6];
  v8 = [(PKPaymentSetupFieldPicker *)self->_pickerField pickerItems];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  v10 = [v7 textLabel];
  v11 = [v9 localizedDisplayName];
  [v10 setText:v11];

  v12 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  LODWORD(v10) = [v12 isEqual:v6];

  if (v10)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  v15.receiver = self;
  v15.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  [(PKPaymentSetupTableViewController *)&v15 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];

  v9 = [v7 cellForRowAtIndexPath:v8];
  [v9 setAccessoryType:0];
  v10 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  v11 = [v7 cellForRowAtIndexPath:v10];

  [v11 setAccessoryType:3];
  v12 = [(PKPaymentSetupFieldPicker *)self->_pickerField pickerItems];
  v13 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  v14 = [v12 objectAtIndex:{objc_msgSend(v13, "row")}];

  [(PKPaymentSetupFieldPicker *)self->_pickerField setCurrentValue:v14];
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _setPrimaryButtonEnabled:[(PKPeerPaymentIdentityVerificationPickerViewController *)self isComplete]];
}

- (void)_setTableViewHeaderActivitySpinnerAnimated:(BOOL)a3 title:(id)a4 subtitle:(id)a5
{
  v6 = a3;
  v8 = !a3;
  v9 = a5;
  v10 = a4;
  v11 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self view];
  [v11 setUserInteractionEnabled:v8];

  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _setNavigationBarEnabled:v8];
  v14 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  v12 = [v14 activityIndicator];
  v13 = v12;
  if (v8)
  {
    [v12 stopAnimating];
  }

  else if (([v12 isAnimating] & 1) == 0)
  {
    [v13 startAnimating];
  }

  [v14 setNeedsLayout];
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self setHeaderViewTitle:v10 subtitle:v9];
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _setIdleTimerDisabled:v6 title:v10 subtitle:v9];
}

- (id)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [PKTableHeaderView alloc];
    v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_headerView;
    self->_headerView = v5;

    v7 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self traitCollection];
    v8 = [v7 userInterfaceIdiom];

    v9 = self->_headerView;
    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(PKPaymentSetupTableViewController *)self context];
      IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
    }

    else
    {
      IsSetupAssistant = 0;
    }

    [(PKTableHeaderView *)v9 setStyle:IsSetupAssistant];
    v11 = [(PKTableHeaderView *)self->_headerView titleLabel];
    [v11 setText:self->_headerTitle];

    v12 = [(PKTableHeaderView *)self->_headerView subtitleLabel];
    [v12 setText:self->_headerSubtitle];

    v13 = self->_headerView;
    v14 = [(PKPaymentSetupTableViewController *)self tableView];
    [v14 bounds];
    [(PKTableHeaderView *)v13 sizeThatFits:CGRectGetWidth(v21), 3.40282347e38];
    v16 = v15;
    v18 = v17;

    [(PKTableHeaderView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v16, v18];
    headerView = self->_headerView;
  }

  return headerView;
}

- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4
{
  v18 = a4;
  v6 = a3;
  v7 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  headerTitle = v6;
  if (!v6)
  {
    headerTitle = self->_headerTitle;
  }

  v9 = headerTitle;

  v10 = [v7 titleLabel];
  [v10 setText:v9];

  if (v18)
  {
    v11 = [v7 subtitleLabel];
    [v11 setText:v18];
  }

  v12 = [(PKPaymentSetupTableViewController *)self tableView];
  [v7 frame];
  v14 = v13;
  [v12 bounds];
  [v7 sizeThatFits:{v15, 1.79769313e308}];
  if (v16 > v14)
  {
    v17 = v16;
    [v12 _rectForTableHeaderView];
    [v7 setFrame:?];
    [v12 _tableHeaderHeightDidChangeToHeight:v17];
  }

  [v7 setNeedsLayout];
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = a3;
  v5 = v4;
  identityVerificaionError = self->_identityVerificaionError;
  if (identityVerificaionError > 3)
  {
    if (identityVerificaionError != 5)
    {
      goto LABEL_9;
    }

    v12 = [(PKPeerPaymentIdentityVerificationController *)self->_controller webService];
    v13 = [v12 peerPaymentService];
    v14 = [v13 account];

    v15 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v16 = [[PKPeerPaymentAccountResolutionController alloc] initWithAccount:v14 webService:v12 context:[(PKPaymentSetupTableViewController *)self context] delegate:self passLibraryDataProvider:v15];
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Presenting contact apple support alert...", buf, 2u);
    }

    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0D8], 0);
    [(PKPeerPaymentAccountResolutionController *)v16 presentFlowForAccountResolution:3 configuration:0 completion:&__block_literal_global_2];

LABEL_11:
    goto LABEL_12;
  }

  if (identityVerificaionError == 2)
  {
    v18 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
    v19 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
    v12 = PKDisplayableErrorCustom();

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90__PKPeerPaymentIdentityVerificationPickerViewController_explanationViewDidSelectContinue___block_invoke_49;
    v21[3] = &unk_1E8010970;
    v21[4] = self;
    v14 = PKAlertForDisplayableErrorWithHandlers(v12, 0, v21, 0);
    v20 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationController];
    [v20 presentViewController:v14 animated:1 completion:0];

    goto LABEL_11;
  }

  if (identityVerificaionError != 3)
  {
LABEL_9:
    [(PKPeerPaymentIdentityVerificationPickerViewController *)self _terminateFlow];
    goto LABEL_12;
  }

  v7 = [v4 dockView];
  [v7 setButtonsEnabled:0];

  v8 = [v5 dockView];
  v9 = [v8 primaryButton];
  [v9 setShowSpinner:1];

  v10 = [v5 dockView];
  v11 = [v10 footerView];
  [v11 setButtonsEnabled:0];

  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _processNextViewController];
LABEL_12:
}

void __90__PKPeerPaymentIdentityVerificationPickerViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presented contact apple support alert with success %@", &v5, 0xCu);
  }
}

- (void)_processNextViewController
{
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _showNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  controller = self->_controller;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__PKPeerPaymentIdentityVerificationPickerViewController__processNextViewController__block_invoke;
  v4[3] = &unk_1E80117A0;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  [(PKPeerPaymentIdentityVerificationController *)controller nextViewControllerWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __83__PKPeerPaymentIdentityVerificationPickerViewController__processNextViewController__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__PKPeerPaymentIdentityVerificationPickerViewController__processNextViewController__block_invoke_2;
    v13[3] = &unk_1E8011778;
    v13[4] = *(a1 + 32);
    v18 = a5;
    v14 = v9;
    v15 = WeakRetained;
    v16 = v11;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

void __83__PKPeerPaymentIdentityVerificationPickerViewController__processNextViewController__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showNavigationBarSpinner:0];
  *(*(a1 + 32) + 1144) = *(a1 + 72);
  if (!*(a1 + 40))
  {
    if (*(a1 + 56))
    {
      v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:?];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __83__PKPeerPaymentIdentityVerificationPickerViewController__processNextViewController__block_invoke_3;
      v21[3] = &unk_1E8010970;
      v21[4] = *(a1 + 32);
      v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, v21, 0);
      v6 = [*(a1 + 32) navigationController];
      [v6 presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = [v7 explanationView];
        [v8 setDelegate:*(a1 + 32)];

        v2 = [*(a1 + 32) navigationController];
        v18 = v2;
        v3 = *(a1 + 64);
        goto LABEL_3;
      }

      v9 = *(a1 + 32);
      if (v9[143] != 1)
      {
        return;
      }

      v4 = [v9 headerView];
      [v4 showCheckmark:1 animated:0];
      v10 = *(a1 + 32);
      v11 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_1.isa);
      [v10 setHeaderViewTitle:v11 subtitle:&stru_1F3BD7330];

      [v4 setNeedsLayout];
      [*(a1 + 32) _setNavigationBarEnabled:0];
      v12 = [*(a1 + 32) view];
      [v12 setUserInteractionEnabled:0];

      v13 = *(a1 + 32);
      v14 = *(v13 + 1160);
      *(v13 + 1160) = 0;

      v15 = *(a1 + 32);
      v16 = *(v15 + 1152);
      *(v15 + 1152) = 0;

      v17 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__PKPeerPaymentIdentityVerificationPickerViewController__processNextViewController__block_invoke_4;
      block[3] = &unk_1E8010970;
      v20 = *(a1 + 48);
      dispatch_after(v17, MEMORY[0x1E69E96A0], block);
    }

    return;
  }

  v2 = [*(a1 + 48) navigationController];
  v18 = v2;
  v3 = *(a1 + 40);
LABEL_3:
  [v2 pushViewController:v3 animated:1];
}

- (void)_handleNextButtonTapped:(id)a3
{
  if (self->_rightBarButtonItemsEnabled)
  {
    block[9] = v3;
    block[10] = v4;
    v6 = [(PKPaymentSetupTableViewController *)self tableView];
    v7 = [(PKPaymentSetupTableViewController *)self tableView];
    [v7 safeAreaInsets];
    [v6 setContentOffset:1 animated:{0.0, -v8}];

    v9 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationController];
    v10 = [v9 navigationBar];
    [v10 setUserInteractionEnabled:0];

    v11 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__PKPeerPaymentIdentityVerificationPickerViewController__handleNextButtonTapped___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);
  }
}

void __81__PKPeerPaymentIdentityVerificationPickerViewController__handleNextButtonTapped___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _processNextViewController];
  v3 = [*(a1 + 32) navigationController];
  v2 = [v3 navigationBar];
  [v2 setUserInteractionEnabled:1];
}

- (void)_handleError:(id)a3
{
  v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPeerPaymentIdentityVerificationPickerViewController__handleError___block_invoke;
  v7[3] = &unk_1E8010970;
  v7[4] = self;
  v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, v7, 0);
  v6 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationController];
  [v6 presentViewController:v5 animated:1 completion:0];
}

- (void)_terminateFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v4 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_handleCancelButtonTapped:(id)a3
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0D0], 0, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained viewControllerDidCancelSetupFlow:self];
  }

  else
  {
    [(PKPeerPaymentIdentityVerificationPickerViewController *)self _terminateFlow];
  }
}

- (void)_setNavigationBarEnabled:(BOOL)a3
{
  if (self->_navigationEnabled != a3)
  {
    v4 = a3;
    self->_navigationEnabled = a3;
    v8 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationController];
    v6 = [v8 navigationBar];
    [v6 setUserInteractionEnabled:v4];

    v7 = [v8 interactivePopGestureRecognizer];
    [v7 setEnabled:v4];

    [(PKPeerPaymentIdentityVerificationPickerViewController *)self _updateNavigationItemAnimated:1];
  }
}

- (void)_setPrimaryButtonEnabled:(BOOL)a3
{
  if (self->_rightBarButtonItemsEnabled != a3)
  {
    self->_rightBarButtonItemsEnabled = a3;
    [(PKPeerPaymentIdentityVerificationPickerViewController *)self _updateRightBarButtonState];
  }
}

- (void)_updateNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationItem];
  navigationEnabled = self->_navigationEnabled;
  v15 = v5;
  if (navigationEnabled == [v5 hidesBackButton])
  {
    [v15 setHidesBackButton:!self->_navigationEnabled animated:v3];
  }

  if (self->_navigationEnabled)
  {
    leftBarButtonItems = self->_leftBarButtonItems;
  }

  else
  {
    leftBarButtonItems = 0;
  }

  v8 = leftBarButtonItems;
  v9 = [v15 leftBarButtonItems];
  v10 = PKEqualObjects();

  if ((v10 & 1) == 0)
  {
    [v15 setLeftBarButtonItems:v8 animated:v3];
  }

  if (self->_navigationEnabled)
  {
    rightBarButtonItems = self->_rightBarButtonItems;
  }

  else
  {
    rightBarButtonItems = 0;
  }

  v12 = rightBarButtonItems;

  v13 = [v15 rightBarButtonItems];
  v14 = PKEqualObjects();

  if ((v14 & 1) == 0)
  {
    [v15 setRightBarButtonItems:v12 animated:v3];
  }

  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _updateRightBarButtonState];
}

- (void)_updateRightBarButtonState
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_rightBarButtonItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setEnabled:{self->_rightBarButtonItemsEnabled, v8}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_setIdleTimerDisabled:(BOOL)a3 title:(id)a4 subtitle:(id)a5
{
  v6 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"enabled";
    v12 = 138413058;
    if (v6)
    {
      v10 = @"disabled";
    }

    v13 = v10;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = @"PeerPaymentIdentityVerification";
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Payment Setup has %@ the Idle Timer. (For: %@ - %@) - %@.", &v12, 0x2Au);
  }

  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  [v11 _setIdleTimerDisabled:v6 forReason:@"PeerPaymentIdentityVerification"];
}

- (PKPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end