@interface PKAccountInvitationAccessLevelViewController
- (PKAccountInvitationAccessLevelViewController)initWithController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_handleFooterButtonTapped:(id)tapped;
- (void)_showSpinner:(BOOL)spinner atIndexPath:(id)path;
- (void)_updateCell:(id)cell showSpinner:(BOOL)spinner;
- (void)preflightWithCompletion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountInvitationAccessLevelViewController

- (PKAccountInvitationAccessLevelViewController)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PKAccountInvitationAccessLevelViewController;
  v6 = -[PKPaymentSetupTableViewController initWithContext:](&v9, sel_initWithContext_, [controllerCopy context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  controller = self->_controller;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PKAccountInvitationAccessLevelViewController_preflightWithCompletion___block_invoke;
  v7[3] = &unk_1E8012940;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(PKAccountInvitationController *)controller accessLevelOptionsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__PKAccountInvitationAccessLevelViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [v7 copy];
    v5 = WeakRetained[140];
    WeakRetained[140] = v4;

    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, 1);
    }
  }
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PKAccountInvitationAccessLevelViewController;
  [(PKAccountInvitationAccessLevelViewController *)&v28 viewDidLoad];
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AccessLevelCellReuseIdentifier"];
  v4 = [PKTableHeaderView alloc];
  v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v5;

  titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
  v8 = PKLocalizedFeatureString();
  [titleLabel setText:v8];

  subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  familyMember = [(PKAccountInvitationController *)self->_controller familyMember];
  firstName = [familyMember firstName];
  v12 = PKLocalizedFeatureString();
  [subtitleLabel setText:{v12, firstName}];

  [(PKTableHeaderView *)self->_headerView setStyle:3];
  [(PKTableHeaderView *)self->_headerView setTopPadding:30.0];
  [(PKTableHeaderView *)self->_headerView setBottomPadding:20.0];
  [tableView setTableHeaderView:self->_headerView];
  v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  v14 = MEMORY[0x1E69DC740];
  v15 = PKLocalizedFeatureString();
  v16 = [v14 pkui_plainConfigurationWithTitle:v15 font:v13 lineBreakMode:4 textAlignment:PKOBKTextAlignment()];

  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle.fill"];
  [v16 setImage:v17];
  [v16 setImagePadding:6.0];
  [v13 pointSize];
  v19 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v18 * 0.8];
  [v16 setPreferredSymbolConfigurationForImage:v19];
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  [v16 setBaseForegroundColor:linkColor];

  v21 = PKSetupViewConstantsViewMargin();
  [v16 setContentInsets:{0.0, v21, 0.0, PKSetupViewConstantsViewMargin()}];
  objc_initWeak(&location, self);
  v22 = MEMORY[0x1E69DC628];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__PKAccountInvitationAccessLevelViewController_viewDidLoad__block_invoke;
  v25[3] = &unk_1E8010A60;
  objc_copyWeak(&v26, &location);
  v23 = [v22 actionWithHandler:v25];
  v24 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v16 primaryAction:v23];
  [v24 setContentHorizontalAlignment:4];
  objc_storeStrong(&self->_footerView, v24);
  [(UIButton *)self->_footerView setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];
  [tableView setTableFooterView:self->_footerView];
  [tableView setAccessibilityIdentifier:*MEMORY[0x1E69B93A0]];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __59__PKAccountInvitationAccessLevelViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _handleFooterButtonTapped:v4];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKAccountInvitationAccessLevelViewController;
  [(PKPaymentSetupTableViewController *)&v15 viewWillLayoutSubviews];
  view = [(PKAccountInvitationAccessLevelViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v16);

  [(PKTableHeaderView *)self->_headerView sizeThatFits:Width, 1.79769313e308];
  v7 = v5;
  v8 = MEMORY[0x1E695EFF8];
  if (self->_previousHeaderHeight != v6)
  {
    v9 = v6;
    self->_previousHeaderHeight = v6;
    [(PKTableHeaderView *)self->_headerView setFrame:*v8, v8[1], v5, v6];
    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView _tableHeaderHeightDidChangeToHeight:v9];
  }

  [(UIButton *)self->_footerView sizeThatFits:Width, 1.79769313e308, v7];
  if (self->_previousFooterHeight != v12)
  {
    v13 = v12;
    self->_previousFooterHeight = v12;
    [(UIButton *)self->_footerView setFrame:*v8, v8[1], v11, v12];
    tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView2 _tableFooterHeightDidChangeToHeight:v13];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKAccountInvitationAccessLevelViewController;
  [(PKPaymentSetupTableViewController *)&v7 viewDidAppear:appear];
  applyController = [(PKAccountInvitationController *)self->_controller applyController];
  v5 = *MEMORY[0x1E69BA1B0];
  v8 = *MEMORY[0x1E69BA680];
  v9[0] = *MEMORY[0x1E69BA818];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [applyController reportAnalyticsDictionaryForPage:0 pageTag:v5 additionalValues:v6];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKAccountInvitationAccessLevelViewController;
  [(PKAccountInvitationAccessLevelViewController *)&v7 viewDidDisappear:disappear];
  applyController = [(PKAccountInvitationController *)self->_controller applyController];
  v5 = *MEMORY[0x1E69BA1B0];
  v8 = *MEMORY[0x1E69BA680];
  v9[0] = *MEMORY[0x1E69BA820];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [applyController reportAnalyticsDictionaryForPage:0 pageTag:v5 additionalValues:v6];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  accessLevelOptions = self->_accessLevelOptions;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSArray objectAtIndexedSubscript:](accessLevelOptions, "objectAtIndexedSubscript:", [pathCopy section]);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"AccessLevelCellReuseIdentifier" forIndexPath:pathCopy];

  v11 = [[PKAccountInvitationAccessLevelContentConfiguration alloc] initWithAccessLevelOption:v9];
  [v10 setContentConfiguration:v11];
  listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  [listCellConfiguration setBackgroundColor:tertiarySystemFillColor];

  [v10 setBackgroundConfiguration:listCellConfiguration];
  [(PKAccountInvitationAccessLevelViewController *)self _updateCell:v10 showSpinner:self->_loadingIndexPath != 0];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v21[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = PKAccountInvitationAccessLevelViewController;
  [(PKPaymentSetupTableViewController *)&v19 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(NSArray *)self->_accessLevelOptions objectAtIndexedSubscript:[(NSIndexPath *)pathCopy section]];
  -[PKAccountInvitationController setAccessLevel:](self->_controller, "setAccessLevel:", [v7 accessLevel]);
  v8 = *MEMORY[0x1E69BA6F0];
  v9 = *MEMORY[0x1E69BA440];
  v20[0] = *MEMORY[0x1E69BA680];
  v20[1] = v9;
  v10 = *MEMORY[0x1E69BA220];
  v21[0] = v8;
  v21[1] = v10;
  v20[2] = *MEMORY[0x1E69BA768];
  accessLevel = [v7 accessLevel];
  v12 = MEMORY[0x1E69BA690];
  if (accessLevel != 1)
  {
    v12 = MEMORY[0x1E69BA6A0];
  }

  v21[2] = *v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  applyController = [(PKAccountInvitationController *)self->_controller applyController];
  [applyController reportAnalyticsDictionaryForPage:0 pageTag:*MEMORY[0x1E69BA1B0] additionalValues:v13];

  loadingIndexPath = self->_loadingIndexPath;
  self->_loadingIndexPath = pathCopy;
  v16 = pathCopy;

  [(PKAccountInvitationAccessLevelViewController *)self _showSpinner:1 atIndexPath:v16];
  controller = self->_controller;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__PKAccountInvitationAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v18[3] = &unk_1E8011D00;
  v18[4] = self;
  [(PKAccountInvitationController *)controller nextViewControllerWithCompletion:v18];
}

void __82__PKAccountInvitationAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v7 navigationController];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__PKAccountInvitationAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v25[3] = &unk_1E8011D28;
    v25[4] = *(a1 + 32);
    [v8 pk_presentPaymentSetupViewController:v5 animated:1 completion:v25];
LABEL_11:

    goto LABEL_12;
  }

  [v7 _showSpinner:0 atIndexPath:v7[145]];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1160);
  *(v9 + 1160) = 0;

  if (v6)
  {
    v6 = v6;
    v11 = [v6 domain];
    v12 = *MEMORY[0x1E69BB840];
    v13 = PKEqualObjects();

    v8 = v6;
    if (v13)
    {
      v14 = [v6 userInfo];
      v8 = [v14 objectForKey:*MEMORY[0x1E696AA08]];
    }

    v15 = [v8 domain];
    if (PKEqualObjects())
    {
      v16 = [v8 code];

      if (v16 == 60002)
      {
        v24 = MEMORY[0x1E696ABC0];
        v26[0] = *MEMORY[0x1E696A578];
        v17 = PKLocalizedFeatureString();
        v27[0] = v17;
        v26[1] = *MEMORY[0x1E696A598];
        v18 = [*(*(a1 + 32) + 1112) familyMember];
        v19 = [v18 firstName];
        v20 = PKLocalizedFeatureString();
        v26[2] = *MEMORY[0x1E696AA08];
        v27[1] = v20;
        v27[2] = v8;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:{3, v19}];
        v22 = [v24 errorWithDomain:v12 code:60002 userInfo:v21];

        v6 = v22;
      }
    }

    else
    {
    }

    v23 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    [*(a1 + 32) presentViewController:v23 animated:1 completion:0];

    goto LABEL_11;
  }

LABEL_12:
}

void __82__PKAccountInvitationAccessLevelViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _showSpinner:0 atIndexPath:*(*(a1 + 32) + 1160)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1160);
  *(v2 + 1160) = 0;
}

- (void)_handleFooterButtonTapped:(id)tapped
{
  v8 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKPaymentSetupTableViewController *)self context]];
  v4 = PKLocalizedFeatureString();
  [(PKPaymentMoreInformationViewController *)v8 setDetailTitle:v4];

  v5 = PKLocalizedFeatureString();
  [(PKPaymentMoreInformationViewController *)v8 setDetailBody:v5];

  v6 = [[PKNavigationController alloc] initWithRootViewController:v8];
  navigationController = [(PKAccountInvitationAccessLevelViewController *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
}

- (void)_showSpinner:(BOOL)spinner atIndexPath:(id)path
{
  spinnerCopy = spinner;
  pathCopy = path;
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  v9 = [tableView cellForRowAtIndexPath:pathCopy];

  v8 = v9;
  if (v9)
  {
    [(PKAccountInvitationAccessLevelViewController *)self _updateCell:v9 showSpinner:spinnerCopy];
    v8 = v9;
  }
}

- (void)_updateCell:(id)cell showSpinner:(BOOL)spinner
{
  if (spinner)
  {
    v4 = MEMORY[0x1E69DC638];
    cellCopy = cell;
    cellCopy2 = [[v4 alloc] initWithActivityIndicatorStyle:100];
    [cellCopy2 startAnimating];
    [cellCopy setAccessoryView:cellCopy2];
    [cellCopy setAccessoryType:0];
  }

  else
  {
    cellCopy2 = cell;
    [cellCopy2 setAccessoryType:1];
    [cellCopy2 setAccessoryView:0];
  }
}

@end