@interface PKAccountInvitationChooseMemberViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PKAccountInvitationChooseMemberViewController)initWithController:(id)controller;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection;
- (void)_filterAvailableFamilyMembersFromMembers:(id)members;
- (void)_handleAddPersonTapped;
- (void)_openFamilyMemberSettings;
- (void)_reloadFamilyCollectionWithForceReload:(BOOL)reload completion:(id)completion;
- (void)_reportAnalyticsViewDidAppear:(BOOL)appear;
- (void)_setLoadingIndexPath:(id)path;
- (void)_updateHeaderFooterText;
- (void)_updateSnapshotAnimated:(BOOL)animated;
- (void)dealloc;
- (void)deviceSharingCapabilitiesUpdated:(id)updated newSharingCapabilties:(id)capabilties forAppleID:(id)d;
- (void)didUpdateInvitationControllerFamilyCircle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableViewDidFinishReload:(id)reload;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountInvitationChooseMemberViewController

- (PKAccountInvitationChooseMemberViewController)initWithController:(id)controller
{
  controllerCopy = controller;
  v25.receiver = self;
  v25.super_class = PKAccountInvitationChooseMemberViewController;
  v6 = [(PKAccountInvitationChooseMemberViewController *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
    [(PKAccountInvitationController *)v7->_controller registerObserver:v7];
    deviceCapabiltiesManager = [(PKAccountInvitationController *)v7->_controller deviceCapabiltiesManager];
    [deviceCapabiltiesManager registerObserver:v7];

    v9 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    nameFormatter = v7->_nameFormatter;
    v7->_nameFormatter = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    ageFormatter = v7->_ageFormatter;
    v7->_ageFormatter = v11;

    [(NSNumberFormatter *)v7->_ageFormatter setNumberStyle:1];
    [(NSNumberFormatter *)v7->_ageFormatter setDecimalSeparator:0];
    [(NSNumberFormatter *)v7->_ageFormatter setGroupingSeparator:0];
    v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    maximumAccountUsersFormatter = v7->_maximumAccountUsersFormatter;
    v7->_maximumAccountUsersFormatter = v13;

    [(NSNumberFormatter *)v7->_maximumAccountUsersFormatter setNumberStyle:5];
    account = [(PKAccountInvitationController *)v7->_controller account];
    accountUserInvitationAllowedFeatureDescriptor = [account accountUserInvitationAllowedFeatureDescriptor];
    osVersionRange = [accountUserInvitationAllowedFeatureDescriptor osVersionRange];
    requiredOSVersionRange = v7->_requiredOSVersionRange;
    v7->_requiredOSVersionRange = osVersionRange;

    if (!v7->_requiredOSVersionRange)
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "The requiredOSVersionRange is not defined on the account for supported feature accountUserInvitationAllowed", v24, 2u);
      }
    }

    account2 = [(PKAccountInvitationController *)v7->_controller account];
    accountUserInvitationAllowedFeatureDescriptor2 = [account2 accountUserInvitationAllowedFeatureDescriptor];

    v7->_minimumParticipantAge = [accountUserInvitationAllowedFeatureDescriptor2 minimumParticipantAge];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKAccountInvitationChooseMemberViewController *)v7 navigationItem];
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v7;
}

- (void)dealloc
{
  deviceCapabiltiesManager = [(PKAccountInvitationController *)self->_controller deviceCapabiltiesManager];
  [deviceCapabiltiesManager unregisterObserver:self];

  [(PKAccountInvitationController *)self->_controller unregisterObserver:self];
  v4.receiver = self;
  v4.super_class = PKAccountInvitationChooseMemberViewController;
  [(PKAccountInvitationChooseMemberViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PKAccountInvitationChooseMemberViewController;
  [(PKAccountInvitationChooseMemberViewController *)&v26 viewDidLoad];
  view = [(PKAccountInvitationChooseMemberViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];

  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  v6 = [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1];
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [v5 initWithFrame:v6 style:{*MEMORY[0x1E695F058], v8, v9, v10}];
  tableView = self->_tableView;
  self->_tableView = v11;

  v13 = self->_tableView;
  v14 = PKProvisioningBackgroundColor();
  [(UITableView *)v13 setBackgroundColor:v14];

  [(UITableView *)self->_tableView setDelegate:self];
  [view addSubview:self->_tableView];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"FamilyMemberCellReuseIdentifier"];
  v15 = [[PKTableHeaderView alloc] initWithFrame:v7, v8, v9, v10];
  headerView = self->_headerView;
  self->_headerView = v15;

  [(PKTableHeaderView *)self->_headerView setTopPadding:30.0];
  [(PKTableHeaderView *)self->_headerView setBottomPadding:20.0];
  [(PKTableHeaderView *)self->_headerView setStyle:3];
  [(UITableView *)self->_tableView setTableHeaderView:self->_headerView];
  v17 = [[PKPaymentSetupDockView alloc] initWithFrame:[(PKAccountInvitationController *)self->_controller context] context:v7, v8, v9, v10];
  dockView = self->_dockView;
  self->_dockView = v17;

  if (_UISolariumFeatureFlagEnabled())
  {
    v19 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_tableView edge:4 style:0];
    [(PKPaymentSetupDockView *)self->_dockView addInteraction:v19];
    [view addSubview:self->_dockView];
  }

  else
  {
    v20 = [[_PKVisibilityBackdropView alloc] initWithFrame:-2 privateStyle:v7, v8, v9, v10];
    blurringView = self->_blurringView;
    self->_blurringView = v20;

    [(_PKVisibilityBackdropView *)self->_blurringView setDelegate:self];
    [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:self->_backdropWeight];
    [(_PKVisibilityBackdropView *)self->_blurringView setUserInteractionEnabled:1];
    contentView = [(_UIBackdropView *)self->_blurringView contentView];
    [contentView addSubview:self->_dockView];

    [view addSubview:self->_blurringView];
  }

  v23 = [(UITableViewDiffableDataSource *)[PKTableViewDiffableDataSource alloc] initWithTableView:self->_tableView cellProvider:&__block_literal_global_169];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v23;

  [(PKTableViewDiffableDataSource *)self->_diffableDataSource setSectionHeaderProvider:&__block_literal_global_37];
  [(PKTableViewDiffableDataSource *)self->_diffableDataSource setSectionFooterProvider:&__block_literal_global_39];
  [(UITableViewDiffableDataSource *)self->_diffableDataSource setDefaultRowAnimation:0];
  [(PKAccountInvitationChooseMemberViewController *)self _updateHeaderFooterText];
  [(PKAccountInvitationChooseMemberViewController *)self _updateSnapshotAnimated:0];
  view2 = [(PKAccountInvitationChooseMemberViewController *)self view];
  [view2 setAccessibilityIdentifier:*MEMORY[0x1E69B95F8]];
}

- (void)viewWillLayoutSubviews
{
  v37.receiver = self;
  v37.super_class = PKAccountInvitationChooseMemberViewController;
  [(PKAccountInvitationChooseMemberViewController *)&v37 viewWillLayoutSubviews];
  view = [(PKAccountInvitationChooseMemberViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v12;
  [(UITableView *)self->_tableView setFrame:v5, v7, v9, v11];
  [(UITableView *)self->_tableView contentInset];
  v36 = v14;
  v16 = v15;
  v18 = v17;
  [(PKPaymentSetupDockView *)self->_dockView sizeThatFits:v9, 1.79769313e308];
  v20 = v19;
  if (self->_blurringView)
  {
    v35 = v18;
    v38.origin.x = v5;
    v38.origin.y = v7;
    v38.size.width = v9;
    v38.size.height = v11;
    v21 = CGRectGetMaxY(v38) - (v13 + v20);
    v39.origin.x = v5;
    v39.origin.y = v7;
    v39.size.width = v9;
    v39.size.height = v11;
    [(_PKVisibilityBackdropView *)self->_blurringView setFrame:v5, v21, v9, CGRectGetMaxY(v39) - v21];
    [(_PKVisibilityBackdropView *)self->_blurringView layoutIfNeeded];
    contentView = [(_UIBackdropView *)self->_blurringView contentView];
    [contentView bounds];

    tableView = self->_tableView;
    [(_PKVisibilityBackdropView *)self->_blurringView bounds];
    [(UITableView *)tableView convertRect:self->_blurringView fromView:?];
    v25 = v24;
    [(UITableView *)self->_tableView contentSize];
    v27 = v26;
    [(UITableView *)self->_tableView bounds];
    v40.size.height = fmin(v28, v27 - v40.origin.y);
    v29 = fmin(fmax(CGRectGetMaxY(v40) - v25, 0.0), 30.0) / 30.0;
    if (self->_backdropWeight != v29)
    {
      self->_backdropWeight = v29;
      [(_PKVisibilityBackdropView *)self->_blurringView pkui_setVisibility:0 animated:?];
    }

    PKSizeAlignedInRect();
    [(PKPaymentSetupDockView *)self->_dockView setFrame:?];
    v18 = v35;
  }

  else
  {
    v41.origin.x = v5;
    v41.origin.y = v7;
    v41.size.width = v9;
    v41.size.height = v11;
    [(PKPaymentSetupDockView *)self->_dockView setFrame:0.0, CGRectGetMaxY(v41) - v20, v9, v20];
  }

  [(UITableView *)self->_tableView setContentInset:v36, v16, v20, v18];
  [(UITableView *)self->_tableView setScrollIndicatorInsets:v36, v16, v20, v18];
  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  [(PKTableHeaderView *)self->_headerView sizeThatFits:CGRectGetWidth(v42), 1.79769313e308];
  if (self->_previousHeaderHeight != v31)
  {
    v32 = v31;
    self->_previousHeaderHeight = v31;
    [(PKTableHeaderView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v30, v31];
    [(UITableView *)self->_tableView _tableHeaderHeightDidChangeToHeight:v32];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v33 = self->_tableView;
    navigationItem = [(PKAccountInvitationChooseMemberViewController *)self navigationItem];
    [(UITableView *)v33 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKAccountInvitationChooseMemberViewController;
  [(PKAccountInvitationChooseMemberViewController *)&v4 viewDidAppear:appear];
  [(PKAccountInvitationChooseMemberViewController *)self _reportAnalyticsViewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKAccountInvitationChooseMemberViewController;
  [(PKAccountInvitationChooseMemberViewController *)&v4 viewDidDisappear:disappear];
  [(PKAccountInvitationChooseMemberViewController *)self _reportAnalyticsViewDidAppear:0];
}

- (void)deviceSharingCapabilitiesUpdated:(id)updated newSharingCapabilties:(id)capabilties forAppleID:(id)d
{
  if (d)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __115__PKAccountInvitationChooseMemberViewController_deviceSharingCapabilitiesUpdated_newSharingCapabilties_forAppleID___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section < 0 || (-[UITableViewDiffableDataSource snapshot](self->_diffableDataSource, "snapshot", view), v6 = objc_claimAutoreleasedReturnValue(), [v6 sectionIdentifiers], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 <= section))
  {
    v13 = 0;
    goto LABEL_10;
  }

  snapshot = [(UITableViewDiffableDataSource *)self->_diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v11 = [sectionIdentifiers objectAtIndex:section];

  identifier = [v11 identifier];
  if (identifier == @"IneligibleSectionIdentifier")
  {
LABEL_6:
    v13 = objc_alloc_init(PKFooterHyperlinkView);
    v15 = PKLocalizedFeatureString();
    v16 = PKLocalizedFeatureString();
    v17 = [MEMORY[0x1E695DFF8] URLWithString:{@"https://support.apple.com/ht212020?cid=mc-ols-applecard-article_ht212020-campaign-12172020", v15}];
    v18 = PKAttributedStringByAddingLinkToSubstring(v16, v15, v17);
    [(PKFooterHyperlinkView *)v13 setAttributedText:v18];

    v19 = &__block_literal_global_52;
    [(PKFooterHyperlinkView *)v13 setAction:&__block_literal_global_52];

    goto LABEL_9;
  }

  v13 = identifier;
  if (identifier)
  {
    v14 = [(__CFString *)identifier isEqualToString:@"IneligibleSectionIdentifier"];

    if (!v14)
    {
      v13 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_9:

LABEL_10:

  return v13;
}

- (void)tableViewDidFinishReload:(id)reload
{
  view = [(PKAccountInvitationChooseMemberViewController *)self view];
  [view setNeedsLayout];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(UITableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:pathCopy];
  if ([v6 isEligible])
  {
    familyMember = [v6 familyMember];
    [(PKAccountInvitationController *)self->_controller setFamilyMember:familyMember];
    [(PKAccountInvitationController *)self->_controller setAccessLevel:0];
    [(PKAccountInvitationChooseMemberViewController *)self _setLoadingIndexPath:pathCopy];
    controller = self->_controller;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__PKAccountInvitationChooseMemberViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v9[3] = &unk_1E8011D00;
    v9[4] = self;
    [(PKAccountInvitationController *)controller nextViewControllerWithCompletion:v9];
  }
}

void __83__PKAccountInvitationChooseMemberViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v7 navigationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83__PKAccountInvitationChooseMemberViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v9[3] = &unk_1E8011D28;
    v9[4] = *(a1 + 32);
    [v8 pk_presentPaymentSetupViewController:v5 animated:1 completion:v9];
LABEL_5:

    goto LABEL_6;
  }

  [v7 _setLoadingIndexPath:0];
  if (v6)
  {
    v8 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  loadingInvitationIndexPath = self->_loadingInvitationIndexPath;
  v5 = [(UITableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:path];
  v6 = v5;
  if (loadingInvitationIndexPath)
  {
    LOBYTE(isEligible) = 0;
  }

  else
  {
    isEligible = [v5 isEligible];
  }

  return isEligible;
}

- (void)didUpdateInvitationControllerFamilyCircle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKAccountInvitationChooseMemberViewController_didUpdateInvitationControllerFamilyCircle__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __90__PKAccountInvitationChooseMemberViewController_didUpdateInvitationControllerFamilyCircle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __90__PKAccountInvitationChooseMemberViewController_didUpdateInvitationControllerFamilyCircle__block_invoke_2;
  v3[3] = &unk_1E8011D28;
  v3[4] = v1;
  return [v1 _reloadFamilyCollectionWithForceReload:0 completion:v3];
}

uint64_t __90__PKAccountInvitationChooseMemberViewController_didUpdateInvitationControllerFamilyCircle__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) _updateHeaderFooterText];
    v3 = *(v2 + 32);

    return [v3 _updateSnapshotAnimated:1];
  }

  return result;
}

- (void)_updateHeaderFooterText
{
  isCurrentFamilyMemberAnOrganizer = [(PKAccountInvitationController *)self->_controller isCurrentFamilyMemberAnOrganizer];
  familyCircleCount = [(PKAccountInvitationController *)self->_controller familyCircleCount];
  v5 = [(NSArray *)self->_pendingFamilyMembers count]== 0;
  footerView = [(PKPaymentSetupDockView *)self->_dockView footerView];
  v6 = familyCircleCount < 2 && v5;
  v7 = PKLocalizedFeatureString();
  titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
  v9 = PKLocalizedFeatureString();
  [titleLabel setText:v9];

  subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [subtitleLabel setText:v7];

  if (v6 == 1)
  {
    primaryButton = [(PKPaymentSetupDockView *)self->_dockView primaryButton];
    v12 = PKLocalizedFeatureString();
    [primaryButton setTitle:v12 forState:0];

    primaryButton2 = [(PKPaymentSetupDockView *)self->_dockView primaryButton];
    [primaryButton2 addTarget:self action:sel__handleAddPersonTapped forControlEvents:0x2000];
  }

  else
  {
    if (!isCurrentFamilyMemberAnOrganizer)
    {
      goto LABEL_6;
    }

    primaryButton2 = [footerView setUpLaterButton];
    v14 = PKLocalizedFeatureString();
    [primaryButton2 setTitle:v14 forState:0];

    [primaryButton2 addTarget:self action:sel__handleAddPersonTapped forControlEvents:0x2000];
    [(PKPaymentSetupDockView *)self->_dockView setPrimaryButton:0];
  }

LABEL_6:
}

- (void)_setLoadingIndexPath:(id)path
{
  pathCopy = path;
  if ((PKEqualObjects() & 1) == 0)
  {
    if (self->_loadingInvitationIndexPath)
    {
      v5 = [(UITableView *)self->_tableView cellForRowAtIndexPath:?];
      [v5 setAccessoryType:1];
      [v5 setAccessoryView:0];
    }

    objc_storeStrong(&self->_loadingInvitationIndexPath, path);
    if (self->_loadingInvitationIndexPath)
    {
      v6 = [(UITableView *)self->_tableView cellForRowAtIndexPath:?];
      v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v7 startAnimating];
      [v6 setAccessoryView:v7];
      [v6 setAccessoryType:0];
    }
  }
}

- (void)_reportAnalyticsViewDidAppear:(BOOL)appear
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_totalFamilyMembers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v4);
        }

        memberType = [*(*(&v23 + 1) + 8 * i) memberType];
        switch(memberType)
        {
          case 2:
            ++v7;
            break;
          case 1:
            ++v8;
            break;
          case 0:
            ++v9;
            break;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69BA680];
  v28[0] = *MEMORY[0x1E69BA818];
  v14 = *MEMORY[0x1E69BA230];
  v27[0] = v13;
  v27[1] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  stringValue = [v15 stringValue];
  v28[1] = stringValue;
  v27[2] = *MEMORY[0x1E69BA240];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
  stringValue2 = [v17 stringValue];
  v28[2] = stringValue2;
  v27[3] = *MEMORY[0x1E69BA238];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  stringValue3 = [v19 stringValue];
  v28[3] = stringValue3;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  applyController = [(PKAccountInvitationController *)self->_controller applyController];
  [applyController reportAnalyticsDictionaryForPage:0 pageTag:*MEMORY[0x1E69BA1A8] additionalValues:v21];
}

- (void)_handleAddPersonTapped
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(_MergedGlobals_7_2());
  v4 = off_1EE9A1DE8();
  v5 = [v3 initWithEventType:v4];

  [v5 setClientName:@"WalletAppleCard"];
  v6 = objc_alloc(off_1EE9A1DF0());
  navigationController = [(PKAccountInvitationChooseMemberViewController *)self navigationController];
  v8 = [v6 initWithPresenter:navigationController];
  stateController = self->_stateController;
  self->_stateController = v8;

  if ((PKRunningInPassbook() & 1) == 0)
  {
    [(FACircleStateController *)self->_stateController setPresentationType:2];
  }

  v10 = self->_stateController;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__PKAccountInvitationChooseMemberViewController__handleAddPersonTapped__block_invoke;
  v16[3] = &unk_1E801D790;
  v16[4] = self;
  [(FACircleStateController *)v10 performWithContext:v5 completion:v16];
  v11 = *MEMORY[0x1E69BA6F0];
  v12 = *MEMORY[0x1E69BA440];
  v17[0] = *MEMORY[0x1E69BA680];
  v17[1] = v12;
  v13 = *MEMORY[0x1E69BA218];
  v18[0] = v11;
  v18[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  applyController = [(PKAccountInvitationController *)self->_controller applyController];
  [applyController reportAnalyticsDictionaryForPage:0 pageTag:*MEMORY[0x1E69BA1A8] additionalValues:v14];
}

void __71__PKAccountInvitationChooseMemberViewController__handleAddPersonTapped__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 success];
  v5 = [v3 error];

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Presented add family member flow with success %@, error %@", buf, 0x16u);
  }

  v8 = v4 ^ 1;
  v9 = *(a1 + 32);
  if (v5)
  {
    v8 = 1;
  }

  if (v8)
  {
    [v9 _openFamilyMemberSettings];
  }

  else
  {
    v10 = [v9[134] copy];
    v11 = MEMORY[0x1E695DFD8];
    v12 = [v10 pk_arrayByApplyingBlock:&__block_literal_global_96_0];
    v13 = [v11 setWithArray:v12];

    v14 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PKAccountInvitationChooseMemberViewController__handleAddPersonTapped__block_invoke_2;
    v17[3] = &unk_1E8012798;
    v17[4] = v14;
    v18 = v10;
    v19 = v13;
    v15 = v13;
    v16 = v10;
    [v14 _reloadFamilyCollectionWithForceReload:1 completion:v17];
  }
}

void __71__PKAccountInvitationChooseMemberViewController__handleAddPersonTapped__block_invoke_2(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [*(*(a1 + 32) + 1072) pk_arrayByApplyingBlock:&__block_literal_global_98_0];
    v5 = [v3 setWithArray:v4];

    v6 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 40)];
    [v6 minusSet:v5];
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) count];
      *buf = 134218496;
      v24 = v8;
      v25 = 2048;
      v26 = [v5 count];
      v27 = 2048;
      v28 = [v6 count];
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "User completed the family member invite flow. Previous pending email count %ld. Updating Pending Email Count: %ld. Newly invited member count %ld", buf, 0x20u);
    }

    v9 = *(*(a1 + 32) + 1072);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__PKAccountInvitationChooseMemberViewController__handleAddPersonTapped__block_invoke_100;
    v21[3] = &unk_1E801B938;
    v22 = v6;
    v10 = v6;
    v11 = [v9 pk_objectsPassingTest:v21];
    v12 = [*(*(a1 + 32) + 992) account];
    v13 = [v12 accountIdentifier];

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __71__PKAccountInvitationChooseMemberViewController__handleAddPersonTapped__block_invoke_2_102;
    v19 = &unk_1E801D768;
    v20 = v13;
    v14 = v13;
    v15 = [v11 pk_arrayByApplyingBlock:&v16];
    [*(*(a1 + 32) + 992) didAddAccountPendingFamilyMembers:{v15, v16, v17, v18, v19}];
    [*(a1 + 32) _updateHeaderFooterText];
    [*(a1 + 32) _updateSnapshotAnimated:1];
  }
}

uint64_t __71__PKAccountInvitationChooseMemberViewController__handleAddPersonTapped__block_invoke_100(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 inviteEmail];
  v4 = [v2 containsObject:v3];

  return v4;
}

id __71__PKAccountInvitationChooseMemberViewController__handleAddPersonTapped__block_invoke_2_102(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B83B8];
  v4 = a2;
  v5 = [[v3 alloc] initWithPendingFamilyMember:v4 accountIdentifier:*(a1 + 32)];

  return v5;
}

- (void)_openFamilyMemberSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v3 setScheme:*MEMORY[0x1E69BC420]];
  [v3 setHost:@"com.apple.Settings.Family"];
  v2 = [v3 URL];
  PKOpenURL();
}

- (void)_updateSnapshotAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v65 = *MEMORY[0x1E69E9840];
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = self->_totalFamilyMembers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  v46 = v4;
  if (v5)
  {
    v6 = v5;
    v48 = *v54;
    do
    {
      v7 = 0;
      do
      {
        if (*v54 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * v7);
        appleID = [v8 appleID];
        familyMemberPhotosByAltDSID = self->_familyMemberPhotosByAltDSID;
        altDSID = [v8 altDSID];
        v12 = [(NSDictionary *)familyMemberPhotosByAltDSID objectForKey:altDSID];

        if ([v8 age] < self->_minimumParticipantAge)
        {
          v13 = [[PKAccountInvitationChooseMemberRow alloc] initWithFamilyMember:v8 photoImage:v12 eligibility:0];
          [v4 addObject:v13];
          goto LABEL_21;
        }

        deviceCapabiltiesManager = [(PKAccountInvitationController *)self->_controller deviceCapabiltiesManager];
        v13 = [deviceCapabiltiesManager currentFetchStatusForAppleID:appleID];

        if ((PKPKBroadwayBypassIDSOSCheck() & 1) == 0 && self->_requiredOSVersionRange)
        {
          fetchError = [(PKAccountInvitationChooseMemberRow *)v13 fetchError];
          if (fetchError || (-[PKAccountInvitationChooseMemberRow fetchedCapabilities](v13, "fetchedCapabilities"), fetchError = objc_claimAutoreleasedReturnValue(), ![fetchError count]))
          {
          }

          else
          {
            v22 = [(PKAccountInvitationChooseMemberRow *)v13 hasDeviceVersionWithOSVersionRequirementRange:self->_requiredOSVersionRange];

            if ((v22 & 1) == 0)
            {
              v16 = [[PKAccountInvitationChooseMemberRow alloc] initWithFamilyMember:v8 photoImage:v12 eligibility:0];
              v4 = v46;
              [v46 addObject:v16];
              goto LABEL_20;
            }
          }
        }

        v16 = [[PKAccountInvitationChooseMemberRow alloc] initWithFamilyMember:v8 photoImage:v12 eligibility:1];
        [v45 addObject:v16];
        if (PKPKBroadwayBypassIDSOSCheck())
        {
          v17 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v61 = appleID;
            _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "By-passing IDS requiredOSVersionRange check for %@", buf, 0xCu);
          }

LABEL_18:
          v4 = v46;
          goto LABEL_19;
        }

        fetchError2 = [(PKAccountInvitationChooseMemberRow *)v13 fetchError];

        if (fetchError2)
        {
          v17 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            fetchError3 = [(PKAccountInvitationChooseMemberRow *)v13 fetchError];
            *buf = 138412546;
            v61 = appleID;
            v62 = 2112;
            v63 = fetchError3;
            _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "skipping requiredOSVersionRange check for %@ due to a fetch error: %@", buf, 0x16u);
          }

          goto LABEL_18;
        }

        fetchedCapabilities = [(PKAccountInvitationChooseMemberRow *)v13 fetchedCapabilities];
        v21 = [fetchedCapabilities count];

        if (v21)
        {
          v4 = v46;
          goto LABEL_20;
        }

        v17 = PKLogFacilityTypeGetObject();
        v4 = v46;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = appleID;
          _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "skipping requiredOSVersionRange check for %@ since we fetched 0 capabilities", buf, 0xCu);
        }

LABEL_19:

LABEL_20:
LABEL_21:

        ++v7;
      }

      while (v6 != v7);
      v23 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v64 count:16];
      v6 = v23;
    }

    while (v23);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v24 = self->_pendingFamilyMembers;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v50;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v49 + 1) + 8 * i);
        pendingFamilyMemberImagesByEmail = self->_pendingFamilyMemberImagesByEmail;
        inviteEmail = [v29 inviteEmail];
        v32 = [(NSDictionary *)pendingFamilyMemberImagesByEmail objectForKey:inviteEmail];

        v33 = [[PKAccountInvitationChooseMemberRow alloc] initWithFamilyMember:v29 photoImage:v32 eligibility:0];
        [v45 addObject:v33];
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v26);
  }

  v34 = objc_alloc_init(MEMORY[0x1E69955A0]);
  if ([v45 count])
  {
    v35 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"EligibleSectionIdentifier"];
    v36 = PKLocalizedFeatureString();
    [(PKTableViewDiffableDataSourceSection *)v35 setFooter:v36];

    v58 = v35;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    [v34 appendSectionsWithIdentifiers:v37];

    v38 = [v45 copy];
    [v34 appendItemsWithIdentifiers:v38 intoSectionWithIdentifier:v35];
  }

  v39 = v46;
  if ([v46 count])
  {
    v40 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"IneligibleSectionIdentifier"];
    v41 = PKLocalizedFeatureString();
    [(PKTableViewDiffableDataSourceSection *)v40 setTitle:v41];

    v57 = v40;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v34 appendSectionsWithIdentifiers:v42];

    v43 = [v46 copy];
    [v34 appendItemsWithIdentifiers:v43 intoSectionWithIdentifier:v40];

    v39 = v46;
  }

  [(UITableViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v34 animatingDifferences:animatedCopy];
}

- (void)_filterAvailableFamilyMembersFromMembers:(id)members
{
  v19 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = membersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 isMe] & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  totalFamilyMembers = self->_totalFamilyMembers;
  self->_totalFamilyMembers = v12;

  [(PKAccountInvitationChooseMemberViewController *)self _updateSnapshotAnimated:1];
}

- (void)_reloadFamilyCollectionWithForceReload:(BOOL)reload completion:(id)completion
{
  reloadCopy = reload;
  completionCopy = completion;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Reloading the choose member page family members. Family has rate limiting so may still use the cache despite a force reload.", buf, 2u);
  }

  controller = self->_controller;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__PKAccountInvitationChooseMemberViewController__reloadFamilyCollectionWithForceReload_completion___block_invoke;
  v10[3] = &unk_1E801D7B8;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PKAccountInvitationController *)controller familyMembersForceReload:reloadCopy completion:v10];
}

void __99__PKAccountInvitationChooseMemberViewController__reloadFamilyCollectionWithForceReload_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__PKAccountInvitationChooseMemberViewController__reloadFamilyCollectionWithForceReload_completion___block_invoke_2;
  v18[3] = &unk_1E80173A8;
  v13 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v11;
  v20 = v10;
  v21 = v12;
  v22 = v9;
  v23 = v13;
  v14 = v9;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

uint64_t __99__PKAccountInvitationChooseMemberViewController__reloadFamilyCollectionWithForceReload_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1000);
  *(v3 + 1000) = v2;

  objc_storeStrong((*(a1 + 32) + 1072), *(a1 + 48));
  v5 = [*(a1 + 56) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1008);
  *(v6 + 1008) = v5;

  [*(a1 + 32) _filterAvailableFamilyMembersFromMembers:*(a1 + 64)];
  result = *(a1 + 72);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (PKPaymentSetupForceBridgeAppearance() & 1) != 0 || ([(PKAccountInvitationController *)self->_controller context], (PKPaymentSetupContextIsBridge()))
  {
    v6 = 2030;
  }

  else if ([collectionCopy userInterfaceStyle] == 2)
  {
    v6 = 2030;
  }

  else
  {
    v6 = 2010;
  }

  return v6;
}

@end