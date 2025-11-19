@interface PKPaymentSelectPassesViewController
- (PKPaymentSelectPassesViewController)initWithSecureElementPasses:(id)a3 context:(int64_t)a4 delegate:(id)a5 peerPaymentAccount:(id)a6 reporter:(id)a7;
- (id)headerView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cancelPressed;
- (void)_continuousButtonPressed;
- (void)_setContinuousButtonEnabledState;
- (void)_setNavigationBarEnabled:(BOOL)a3;
- (void)_setViewEnabledState:(BOOL)a3;
- (void)setButtonText:(id)a3;
- (void)setHeaderSubtitle:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4;
- (void)setShowCancelButton:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PKPaymentSelectPassesViewController

- (PKPaymentSelectPassesViewController)initWithSecureElementPasses:(id)a3 context:(int64_t)a4 delegate:(id)a5 peerPaymentAccount:(id)a6 reporter:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = PKPaymentSelectPassesViewController;
  v17 = [(PKPaymentSetupTableViewController *)&v25 initWithContext:a4];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_passes, a3);
    objc_storeWeak(&v18->_delegate, v14);
    v19 = [MEMORY[0x1E695DF70] array];
    selectedIndexPaths = v18->_selectedIndexPaths;
    v18->_selectedIndexPaths = v19;

    v18->_minimumSelectionCount = 1;
    objc_storeStrong(&v18->_peerPaymentAccount, a6);
    objc_storeStrong(&v18->_reporter, a7);
    v21 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [(PKPaymentSelectPassesViewController *)v18 setButtonText:v21];

    v22 = [(PKPaymentSetupTableViewController *)v18 dockView];
    v23 = [v22 primaryButton];
    [v23 addTarget:v18 action:sel__continuousButtonPressed forControlEvents:64];

    [(PKPaymentSelectPassesViewController *)v18 _setContinuousButtonEnabledState];
  }

  return v18;
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSelectPassesViewController *)&v6 willMoveToParentViewController:?];
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained selectPassesViewControllerDidTapBackButton:self];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSelectPassesViewController *)&v6 viewDidLoad];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentSelectPassesViewControllerCellIdentifier"];

  v4 = [(PKPaymentSelectPassesViewController *)self headerView];
  v5 = [(PKPaymentSetupTableViewController *)self tableView];
  [v5 setTableHeaderView:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSetupTableViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSelectPassesViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(PKPaymentSelectPassesViewController *)self headerView];
  [v3 sizeToFit];

  v4 = [(PKPaymentSetupTableViewController *)self tableView];
  v5 = [(PKPaymentSelectPassesViewController *)self headerView];
  [v5 bounds];
  [v4 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v7)];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPaymentSelectPassesViewControllerCellIdentifier" forIndexPath:v6];
  v8 = -[NSArray objectAtIndex:](self->_passes, "objectAtIndex:", [v6 row]);
  [v7 setPass:v8];
  [v7 setPeerPaymentAccount:self->_peerPaymentAccount];
  v9 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:v9];

  LODWORD(self) = [(NSMutableArray *)self->_selectedIndexPaths containsObject:v6];
  if (self)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v7 setAccessoryType:v10];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSetupTableViewController *)&v22 tableView:v6 didSelectRowAtIndexPath:v7];
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [v6 cellForRowAtIndexPath:v7];
  if (self->_minimumSelectionCount == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_selectedIndexPaths;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v6 cellForRowAtIndexPath:{*(*(&v18 + 1) + 8 * v13), v18}];
          [v14 setAccessoryType:0];

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    [(NSMutableArray *)self->_selectedIndexPaths removeAllObjects];
    selectedIndexPaths = self->_selectedIndexPaths;
    goto LABEL_12;
  }

  v16 = [(NSMutableArray *)self->_selectedIndexPaths containsObject:v7];
  selectedIndexPaths = self->_selectedIndexPaths;
  if (!v16)
  {
LABEL_12:
    [(NSMutableArray *)selectedIndexPaths addObject:v7, v18];
    v17 = 3;
    goto LABEL_13;
  }

  [(NSMutableArray *)selectedIndexPaths removeObject:v7];
  v17 = 0;
LABEL_13:
  [v8 setAccessoryType:v17];
  [(PKPaymentSelectPassesViewController *)self _setContinuousButtonEnabledState];
}

- (void)setHeaderTitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_headerTitle isEqualToString:?])
  {
    objc_storeStrong(&self->_headerTitle, a3);
    [(PKPaymentSelectPassesViewController *)self setHeaderViewTitle:self->_headerTitle subtitle:self->_headerSubtitle];
  }
}

- (void)setHeaderSubtitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_headerSubtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_headerSubtitle, a3);
    [(PKPaymentSelectPassesViewController *)self setHeaderViewTitle:self->_headerTitle subtitle:self->_headerSubtitle];
  }
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

    v7 = [(PKPaymentSelectPassesViewController *)self traitCollection];
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
  v7 = [(PKPaymentSelectPassesViewController *)self headerView];
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

- (void)setButtonText:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_buttonText isEqualToString:?])
  {
    objc_storeStrong(&self->_buttonText, a3);
    v5 = [(PKPaymentSetupTableViewController *)self dockView];
    v6 = [v5 primaryButton];
    [v6 setTitle:self->_buttonText forState:0];
  }
}

- (void)_setContinuousButtonEnabledState
{
  v4 = [(PKPaymentSetupTableViewController *)self dockView];
  v3 = [v4 primaryButton];
  [v3 setEnabled:{-[NSMutableArray count](self->_selectedIndexPaths, "count") >= self->_minimumSelectionCount}];
}

- (void)_continuousButtonPressed
{
  v40 = *MEMORY[0x1E69E9840];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  v3 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = self->_selectedIndexPaths;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[NSArray objectAtIndex:](self->_passes, "objectAtIndex:", [*(*(&v35 + 1) + 8 * v8) row]);
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v6);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPaymentSelectPassesViewController__continuousButtonPressed__block_invoke;
  aBlock[3] = &unk_1E8010A10;
  aBlock[4] = self;
  v10 = v3;
  v34 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (self->_confirmIntentToDelete)
  {
    v13 = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
    v14 = [v10 count];
    if (v14 > 1)
    {
      v15 = PKLocalizedShareableCredentialString(&cfstr_SelectPassesTo_1.isa, &cfstr_Lu.isa, v14);
      v16 = @"SELECT_PASSES_TO_DELETE_CONFIRMATION_MESSAGE_PLURAL";
    }

    else
    {
      v15 = PKLocalizedShareableCredentialString(&cfstr_SelectPassesTo.isa);
      v16 = @"SELECT_PASSES_TO_DELETE_CONFIRMATION_MESSAGE_SINGULAR";
    }

    [(PKPaymentSetupTableViewController *)self context];
    IsBridge = PKPaymentSetupContextIsBridge();
    v18 = PKDeviceSpecificLocalizedStringKeyForKey(v16, IsBridge);
    v19 = PKLocalizedShareableCredentialString(v18);

    v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:v19 preferredStyle:v13];
    v21 = v20;
    if ((v13 & 1) == 0)
    {
      v22 = [v20 popoverPresentationController];
      v23 = [(PKPaymentSetupTableViewController *)self dockView];
      v24 = [v23 primaryButton];
      [v22 setSourceView:v24];
    }

    v25 = MEMORY[0x1E69DC648];
    v26 = PKLocalizedShareableCredentialString(&cfstr_SelectPassesTo_5.isa);
    v27 = [v25 actionWithTitle:v26 style:1 handler:0];
    [v21 addAction:v27];

    v28 = MEMORY[0x1E69DC648];
    v29 = PKLocalizedShareableCredentialString(&cfstr_SelectPassesDe.isa);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __63__PKPaymentSelectPassesViewController__continuousButtonPressed__block_invoke_4;
    v31[3] = &unk_1E8011248;
    v32 = v12;
    v30 = [v28 actionWithTitle:v29 style:2 handler:v31];
    [v21 addAction:v30];

    [(PKPaymentSelectPassesViewController *)self presentViewController:v21 animated:1 completion:0];
  }

  else
  {
    (*(v11 + 2))(v11);
  }
}

void __63__PKPaymentSelectPassesViewController__continuousButtonPressed__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setViewEnabledState:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1136));
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PKPaymentSelectPassesViewController__continuousButtonPressed__block_invoke_2;
  v5[3] = &unk_1E8010970;
  v5[4] = *(a1 + 32);
  [WeakRetained selectPassesViewController:v3 didSelectPasses:v4 completion:v5];
}

void __63__PKPaymentSelectPassesViewController__continuousButtonPressed__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPaymentSelectPassesViewController__continuousButtonPressed__block_invoke_3;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setViewEnabledState:(BOOL)a3
{
  v3 = a3;
  v10 = [(PKPaymentSelectPassesViewController *)self view];
  [v10 setUserInteractionEnabled:v3];
  v5 = [(PKPaymentSetupTableViewController *)self dockView];
  v6 = [v5 primaryButton];
  [v6 setEnabled:v3];

  [(PKPaymentSelectPassesViewController *)self _setNavigationBarEnabled:v3];
  if (v3)
  {
    v7 = [(PKPaymentSelectPassesViewController *)self navigationItem];
    [v7 setRightBarButtonItem:0];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v7 startAnimating];
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v7];
    v9 = [(PKPaymentSelectPassesViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];
  }

  [v10 setNeedsLayout];
}

- (void)_setNavigationBarEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = [(PKPaymentSelectPassesViewController *)self navigationController];
  v5 = [v10 navigationBar];
  [v5 setUserInteractionEnabled:v3];

  v6 = [v10 interactivePopGestureRecognizer];
  [v6 setEnabled:v3];

  v7 = [(PKPaymentSelectPassesViewController *)self navigationItem];
  [v7 setHidesBackButton:v3 ^ 1];
  v8 = [v7 leftBarButtonItem];
  [v8 setEnabled:v3];

  v9 = [v7 rightBarButtonItem];
  [v9 setEnabled:v3];
}

- (void)setShowCancelButton:(BOOL)a3
{
  if (self->_showCancelButton == !a3)
  {
    self->_showCancelButton = a3;
    v4 = [(PKPaymentSelectPassesViewController *)self navigationItem];
    v7 = v4;
    if (self->_showCancelButton)
    {
      v5 = [(PKPaymentSelectPassesViewController *)self navigationItem];
      v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
      [v5 setLeftBarButtonItem:v6];
    }

    else
    {
      [v4 setLeftBarButtonItem:0];
    }
  }
}

- (void)_cancelPressed
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained selectPassesViewControllerDidTapBackButton:self];
}

@end