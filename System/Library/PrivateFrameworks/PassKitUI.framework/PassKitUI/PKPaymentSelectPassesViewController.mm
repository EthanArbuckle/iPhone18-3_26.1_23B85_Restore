@interface PKPaymentSelectPassesViewController
- (PKPaymentSelectPassesViewController)initWithSecureElementPasses:(id)passes context:(int64_t)context delegate:(id)delegate peerPaymentAccount:(id)account reporter:(id)reporter;
- (id)headerView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_cancelPressed;
- (void)_continuousButtonPressed;
- (void)_setContinuousButtonEnabledState;
- (void)_setNavigationBarEnabled:(BOOL)enabled;
- (void)_setViewEnabledState:(BOOL)state;
- (void)setButtonText:(id)text;
- (void)setHeaderSubtitle:(id)subtitle;
- (void)setHeaderTitle:(id)title;
- (void)setHeaderViewTitle:(id)title subtitle:(id)subtitle;
- (void)setShowCancelButton:(BOOL)button;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PKPaymentSelectPassesViewController

- (PKPaymentSelectPassesViewController)initWithSecureElementPasses:(id)passes context:(int64_t)context delegate:(id)delegate peerPaymentAccount:(id)account reporter:(id)reporter
{
  passesCopy = passes;
  delegateCopy = delegate;
  accountCopy = account;
  reporterCopy = reporter;
  v25.receiver = self;
  v25.super_class = PKPaymentSelectPassesViewController;
  v17 = [(PKPaymentSetupTableViewController *)&v25 initWithContext:context];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_passes, passes);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    array = [MEMORY[0x1E695DF70] array];
    selectedIndexPaths = v18->_selectedIndexPaths;
    v18->_selectedIndexPaths = array;

    v18->_minimumSelectionCount = 1;
    objc_storeStrong(&v18->_peerPaymentAccount, account);
    objc_storeStrong(&v18->_reporter, reporter);
    v21 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [(PKPaymentSelectPassesViewController *)v18 setButtonText:v21];

    dockView = [(PKPaymentSetupTableViewController *)v18 dockView];
    primaryButton = [dockView primaryButton];
    [primaryButton addTarget:v18 action:sel__continuousButtonPressed forControlEvents:64];

    [(PKPaymentSelectPassesViewController *)v18 _setContinuousButtonEnabledState];
  }

  return v18;
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSelectPassesViewController *)&v6 willMoveToParentViewController:?];
  if (!controller)
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
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentSelectPassesViewControllerCellIdentifier"];

  headerView = [(PKPaymentSelectPassesViewController *)self headerView];
  tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView2 setTableHeaderView:headerView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSetupTableViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSelectPassesViewController *)&v6 viewDidLayoutSubviews];
  headerView = [(PKPaymentSelectPassesViewController *)self headerView];
  [headerView sizeToFit];

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  headerView2 = [(PKPaymentSelectPassesViewController *)self headerView];
  [headerView2 bounds];
  [tableView _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v7)];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPaymentSelectPassesViewControllerCellIdentifier" forIndexPath:pathCopy];
  v8 = -[NSArray objectAtIndex:](self->_passes, "objectAtIndex:", [pathCopy row]);
  [v7 setPass:v8];
  [v7 setPeerPaymentAccount:self->_peerPaymentAccount];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:secondarySystemBackgroundColor];

  LODWORD(self) = [(NSMutableArray *)self->_selectedIndexPaths containsObject:pathCopy];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v24 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v22.receiver = self;
  v22.super_class = PKPaymentSelectPassesViewController;
  [(PKPaymentSetupTableViewController *)&v22 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
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

          v14 = [viewCopy cellForRowAtIndexPath:{*(*(&v18 + 1) + 8 * v13), v18}];
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

  v16 = [(NSMutableArray *)self->_selectedIndexPaths containsObject:pathCopy];
  selectedIndexPaths = self->_selectedIndexPaths;
  if (!v16)
  {
LABEL_12:
    [(NSMutableArray *)selectedIndexPaths addObject:pathCopy, v18];
    v17 = 3;
    goto LABEL_13;
  }

  [(NSMutableArray *)selectedIndexPaths removeObject:pathCopy];
  v17 = 0;
LABEL_13:
  [v8 setAccessoryType:v17];
  [(PKPaymentSelectPassesViewController *)self _setContinuousButtonEnabledState];
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_headerTitle isEqualToString:?])
  {
    objc_storeStrong(&self->_headerTitle, title);
    [(PKPaymentSelectPassesViewController *)self setHeaderViewTitle:self->_headerTitle subtitle:self->_headerSubtitle];
  }
}

- (void)setHeaderSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (![(NSString *)self->_headerSubtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_headerSubtitle, subtitle);
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

    traitCollection = [(PKPaymentSelectPassesViewController *)self traitCollection];
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
  headerView = [(PKPaymentSelectPassesViewController *)self headerView];
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

- (void)setButtonText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_buttonText isEqualToString:?])
  {
    objc_storeStrong(&self->_buttonText, text);
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    primaryButton = [dockView primaryButton];
    [primaryButton setTitle:self->_buttonText forState:0];
  }
}

- (void)_setContinuousButtonEnabledState
{
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  primaryButton = [dockView primaryButton];
  [primaryButton setEnabled:{-[NSMutableArray count](self->_selectedIndexPaths, "count") >= self->_minimumSelectionCount}];
}

- (void)_continuousButtonPressed
{
  v40 = *MEMORY[0x1E69E9840];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  array = [MEMORY[0x1E695DF70] array];
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
        [array addObject:v9];

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
  v10 = array;
  v34 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (self->_confirmIntentToDelete)
  {
    pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
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

    v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v15 message:v19 preferredStyle:pkui_userInterfaceIdiomSupportsLargeLayouts];
    v21 = v20;
    if ((pkui_userInterfaceIdiomSupportsLargeLayouts & 1) == 0)
    {
      popoverPresentationController = [v20 popoverPresentationController];
      dockView = [(PKPaymentSetupTableViewController *)self dockView];
      primaryButton = [dockView primaryButton];
      [popoverPresentationController setSourceView:primaryButton];
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

- (void)_setViewEnabledState:(BOOL)state
{
  stateCopy = state;
  view = [(PKPaymentSelectPassesViewController *)self view];
  [view setUserInteractionEnabled:stateCopy];
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  primaryButton = [dockView primaryButton];
  [primaryButton setEnabled:stateCopy];

  [(PKPaymentSelectPassesViewController *)self _setNavigationBarEnabled:stateCopy];
  if (stateCopy)
  {
    navigationItem = [(PKPaymentSelectPassesViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
  }

  else
  {
    navigationItem = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [navigationItem startAnimating];
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:navigationItem];
    navigationItem2 = [(PKPaymentSelectPassesViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v8];
  }

  [view setNeedsLayout];
}

- (void)_setNavigationBarEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationController = [(PKPaymentSelectPassesViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:enabledCopy];

  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:enabledCopy];

  navigationItem = [(PKPaymentSelectPassesViewController *)self navigationItem];
  [navigationItem setHidesBackButton:enabledCopy ^ 1];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:enabledCopy];

  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (void)setShowCancelButton:(BOOL)button
{
  if (self->_showCancelButton == !button)
  {
    self->_showCancelButton = button;
    navigationItem = [(PKPaymentSelectPassesViewController *)self navigationItem];
    v7 = navigationItem;
    if (self->_showCancelButton)
    {
      navigationItem2 = [(PKPaymentSelectPassesViewController *)self navigationItem];
      v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
      [navigationItem2 setLeftBarButtonItem:v6];
    }

    else
    {
      [navigationItem setLeftBarButtonItem:0];
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