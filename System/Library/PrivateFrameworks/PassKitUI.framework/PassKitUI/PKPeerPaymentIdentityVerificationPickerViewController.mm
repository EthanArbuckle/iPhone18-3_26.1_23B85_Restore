@interface PKPeerPaymentIdentityVerificationPickerViewController
- (BOOL)isComplete;
- (PKPaymentSetupViewControllerDelegate)delegate;
- (PKPeerPaymentIdentityVerificationPickerViewController)initWithController:(id)controller setupDelegate:(id)delegate pickerField:(id)field footerText:(id)text;
- (id)headerView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleCancelButtonTapped:(id)tapped;
- (void)_handleError:(id)error;
- (void)_handleNextButtonTapped:(id)tapped;
- (void)_processNextViewController;
- (void)_setIdleTimerDisabled:(BOOL)disabled title:(id)title subtitle:(id)subtitle;
- (void)_setNavigationBarEnabled:(BOOL)enabled;
- (void)_setPrimaryButtonEnabled:(BOOL)enabled;
- (void)_setTableViewHeaderActivitySpinnerAnimated:(BOOL)animated title:(id)title subtitle:(id)subtitle;
- (void)_terminateFlow;
- (void)_updateNavigationItemAnimated:(BOOL)animated;
- (void)_updateRightBarButtonState;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)setHeaderViewTitle:(id)title subtitle:(id)subtitle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPeerPaymentIdentityVerificationPickerViewController

- (PKPeerPaymentIdentityVerificationPickerViewController)initWithController:(id)controller setupDelegate:(id)delegate pickerField:(id)field footerText:(id)text
{
  v29[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  delegateCopy = delegate;
  fieldCopy = field;
  textCopy = text;
  v27.receiver = self;
  v27.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  v15 = -[PKPaymentSetupTableViewController initWithContext:](&v27, sel_initWithContext_, [controllerCopy context]);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_controller, controller);
    objc_storeStrong(&v16->_pickerField, field);
    objc_storeStrong(&v16->_footerText, text);
    objc_storeWeak(&v16->_delegate, delegateCopy);
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

    [(PKPeerPaymentIdentityVerificationPickerViewController *)v16 _updateNavigationItemAnimated:0, fieldCopy];
  }

  return v16;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  [(PKPeerPaymentIdentityVerificationPickerViewController *)&v6 viewDidLoad];
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPeerPaymentIdentityVerificationPickerViewControllerCellIdentifier"];

  headerView = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView2 setTableHeaderView:headerView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  [(PKPaymentSetupTableViewController *)&v4 viewWillAppear:appear];
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _setPrimaryButtonEnabled:[(PKPeerPaymentIdentityVerificationPickerViewController *)self isComplete]];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  [(PKPeerPaymentIdentityVerificationPickerViewController *)&v6 viewDidLayoutSubviews];
  headerView = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  [headerView sizeToFit];

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  headerView2 = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  [headerView2 bounds];
  [tableView _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v7)];
}

- (BOOL)isComplete
{
  selectedIndexPath = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  v3 = selectedIndexPath != 0;

  return v3;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PKPaymentSetupFieldPicker *)self->_pickerField pickerItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPeerPaymentIdentityVerificationPickerViewControllerCellIdentifier" forIndexPath:pathCopy];
  pickerItems = [(PKPaymentSetupFieldPicker *)self->_pickerField pickerItems];
  v9 = [pickerItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  textLabel = [v7 textLabel];
  localizedDisplayName = [v9 localizedDisplayName];
  [textLabel setText:localizedDisplayName];

  selectedIndexPath = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  LODWORD(textLabel) = [selectedIndexPath isEqual:pathCopy];

  if (textLabel)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  selectedIndexPath = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  v15.receiver = self;
  v15.super_class = PKPeerPaymentIdentityVerificationPickerViewController;
  [(PKPaymentSetupTableViewController *)&v15 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  v9 = [viewCopy cellForRowAtIndexPath:selectedIndexPath];
  [v9 setAccessoryType:0];
  selectedIndexPath2 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  v11 = [viewCopy cellForRowAtIndexPath:selectedIndexPath2];

  [v11 setAccessoryType:3];
  pickerItems = [(PKPaymentSetupFieldPicker *)self->_pickerField pickerItems];
  selectedIndexPath3 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  v14 = [pickerItems objectAtIndex:{objc_msgSend(selectedIndexPath3, "row")}];

  [(PKPaymentSetupFieldPicker *)self->_pickerField setCurrentValue:v14];
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _setPrimaryButtonEnabled:[(PKPeerPaymentIdentityVerificationPickerViewController *)self isComplete]];
}

- (void)_setTableViewHeaderActivitySpinnerAnimated:(BOOL)animated title:(id)title subtitle:(id)subtitle
{
  animatedCopy = animated;
  v8 = !animated;
  subtitleCopy = subtitle;
  titleCopy = title;
  view = [(PKPeerPaymentIdentityVerificationPickerViewController *)self view];
  [view setUserInteractionEnabled:v8];

  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _setNavigationBarEnabled:v8];
  headerView = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  activityIndicator = [headerView activityIndicator];
  v13 = activityIndicator;
  if (v8)
  {
    [activityIndicator stopAnimating];
  }

  else if (([activityIndicator isAnimating] & 1) == 0)
  {
    [v13 startAnimating];
  }

  [headerView setNeedsLayout];
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self setHeaderViewTitle:titleCopy subtitle:subtitleCopy];
  [(PKPeerPaymentIdentityVerificationPickerViewController *)self _setIdleTimerDisabled:animatedCopy title:titleCopy subtitle:subtitleCopy];
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

    traitCollection = [(PKPeerPaymentIdentityVerificationPickerViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v9 = self->_headerView;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(PKPaymentSetupTableViewController *)self context];
      IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
    }

    else
    {
      IsSetupAssistant = 0;
    }

    [(PKTableHeaderView *)v9 setStyle:IsSetupAssistant];
    titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
    [titleLabel setText:self->_headerTitle];

    subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
    [subtitleLabel setText:self->_headerSubtitle];

    v13 = self->_headerView;
    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView bounds];
    [(PKTableHeaderView *)v13 sizeThatFits:CGRectGetWidth(v21), 3.40282347e38];
    v16 = v15;
    v18 = v17;

    [(PKTableHeaderView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v16, v18];
    headerView = self->_headerView;
  }

  return headerView;
}

- (void)setHeaderViewTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  headerView = [(PKPeerPaymentIdentityVerificationPickerViewController *)self headerView];
  headerTitle = titleCopy;
  if (!titleCopy)
  {
    headerTitle = self->_headerTitle;
  }

  v9 = headerTitle;

  titleLabel = [headerView titleLabel];
  [titleLabel setText:v9];

  if (subtitleCopy)
  {
    subtitleLabel = [headerView subtitleLabel];
    [subtitleLabel setText:subtitleCopy];
  }

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [headerView frame];
  v14 = v13;
  [tableView bounds];
  [headerView sizeThatFits:{v15, 1.79769313e308}];
  if (v16 > v14)
  {
    v17 = v16;
    [tableView _rectForTableHeaderView];
    [headerView setFrame:?];
    [tableView _tableHeaderHeightDidChangeToHeight:v17];
  }

  [headerView setNeedsLayout];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  continueCopy = continue;
  v5 = continueCopy;
  identityVerificaionError = self->_identityVerificaionError;
  if (identityVerificaionError > 3)
  {
    if (identityVerificaionError != 5)
    {
      goto LABEL_9;
    }

    webService = [(PKPeerPaymentIdentityVerificationController *)self->_controller webService];
    peerPaymentService = [webService peerPaymentService];
    account = [peerPaymentService account];

    v15 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v16 = [[PKPeerPaymentAccountResolutionController alloc] initWithAccount:account webService:webService context:[(PKPaymentSetupTableViewController *)self context] delegate:self passLibraryDataProvider:v15];
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
    webService = PKDisplayableErrorCustom();

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90__PKPeerPaymentIdentityVerificationPickerViewController_explanationViewDidSelectContinue___block_invoke_49;
    v21[3] = &unk_1E8010970;
    v21[4] = self;
    account = PKAlertForDisplayableErrorWithHandlers(webService, 0, v21, 0);
    navigationController = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationController];
    [navigationController presentViewController:account animated:1 completion:0];

    goto LABEL_11;
  }

  if (identityVerificaionError != 3)
  {
LABEL_9:
    [(PKPeerPaymentIdentityVerificationPickerViewController *)self _terminateFlow];
    goto LABEL_12;
  }

  dockView = [continueCopy dockView];
  [dockView setButtonsEnabled:0];

  dockView2 = [v5 dockView];
  primaryButton = [dockView2 primaryButton];
  [primaryButton setShowSpinner:1];

  dockView3 = [v5 dockView];
  footerView = [dockView3 footerView];
  [footerView setButtonsEnabled:0];

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

- (void)_handleNextButtonTapped:(id)tapped
{
  if (self->_rightBarButtonItemsEnabled)
  {
    block[9] = v3;
    block[10] = v4;
    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView2 safeAreaInsets];
    [tableView setContentOffset:1 animated:{0.0, -v8}];

    navigationController = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setUserInteractionEnabled:0];

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

- (void)_handleError:(id)error
{
  v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:error];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKPeerPaymentIdentityVerificationPickerViewController__handleError___block_invoke;
  v7[3] = &unk_1E8010970;
  v7[4] = self;
  v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, v7, 0);
  navigationController = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationController];
  [navigationController presentViewController:v5 animated:1 completion:0];
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
    presentingViewController = [(PKPeerPaymentIdentityVerificationPickerViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_handleCancelButtonTapped:(id)tapped
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0D0], 0, tapped);
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

- (void)_setNavigationBarEnabled:(BOOL)enabled
{
  if (self->_navigationEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_navigationEnabled = enabled;
    navigationController = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setUserInteractionEnabled:enabledCopy];

    interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setEnabled:enabledCopy];

    [(PKPeerPaymentIdentityVerificationPickerViewController *)self _updateNavigationItemAnimated:1];
  }
}

- (void)_setPrimaryButtonEnabled:(BOOL)enabled
{
  if (self->_rightBarButtonItemsEnabled != enabled)
  {
    self->_rightBarButtonItemsEnabled = enabled;
    [(PKPeerPaymentIdentityVerificationPickerViewController *)self _updateRightBarButtonState];
  }
}

- (void)_updateNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationItem = [(PKPeerPaymentIdentityVerificationPickerViewController *)self navigationItem];
  navigationEnabled = self->_navigationEnabled;
  v15 = navigationItem;
  if (navigationEnabled == [navigationItem hidesBackButton])
  {
    [v15 setHidesBackButton:!self->_navigationEnabled animated:animatedCopy];
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
  leftBarButtonItems = [v15 leftBarButtonItems];
  v10 = PKEqualObjects();

  if ((v10 & 1) == 0)
  {
    [v15 setLeftBarButtonItems:v8 animated:animatedCopy];
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

  rightBarButtonItems = [v15 rightBarButtonItems];
  v14 = PKEqualObjects();

  if ((v14 & 1) == 0)
  {
    [v15 setRightBarButtonItems:v12 animated:animatedCopy];
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

- (void)_setIdleTimerDisabled:(BOOL)disabled title:(id)title subtitle:(id)subtitle
{
  disabledCopy = disabled;
  v20 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"enabled";
    v12 = 138413058;
    if (disabledCopy)
    {
      v10 = @"disabled";
    }

    v13 = v10;
    v14 = 2112;
    v15 = titleCopy;
    v16 = 2112;
    v17 = subtitleCopy;
    v18 = 2112;
    v19 = @"PeerPaymentIdentityVerification";
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Payment Setup has %@ the Idle Timer. (For: %@ - %@) - %@.", &v12, 0x2Au);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _setIdleTimerDisabled:disabledCopy forReason:@"PeerPaymentIdentityVerification"];
}

- (PKPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end