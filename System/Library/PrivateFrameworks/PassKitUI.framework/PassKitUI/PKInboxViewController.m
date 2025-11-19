@interface PKInboxViewController
- (PKInboxViewController)initWithInboxDataSource:(id)a3 contactAvatarManager:(id)a4 context:(int64_t)a5;
- (id)_configurationForInboxMessage:(id)a3;
- (void)_checkManateeCapabilityForFeatureApplication:(id)a3 completion:(id)a4;
- (void)_presentAccountUserInvitation:(id)a3;
- (void)_presentExpiredAlertForInboxMessage:(id)a3;
- (void)_presentInboxMessage:(id)a3;
- (void)_presentManateeUpgradeForFeatureApplication:(id)a3 completion:(id)a4;
- (void)_showSpinner:(BOOL)a3;
- (void)_updateDiffableDataSourceAnimated:(BOOL)a3;
- (void)_updateImage:(id)a3 onCellAtIndexPath:(id)a4;
- (void)presentInboxMessageWithIdentifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewControllerDidCancelSetupFlow:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKInboxViewController

- (PKInboxViewController)initWithInboxDataSource:(id)a3 contactAvatarManager:(id)a4 context:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = PKInboxViewController;
  v11 = [(PKInboxViewController *)&v16 initWithStyle:2];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, a3);
    objc_storeStrong(&v12->_avatarManager, a4);
    v12->_context = a5;
    v13 = [(PKInboxViewController *)v12 navigationItem];
    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v12 action:sel__doneButtonTapped_];
    [v14 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [v13 setLeftBarButtonItem:v14];
  }

  return v12;
}

- (void)presentInboxMessageWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(PKInboxDataSource *)self->_dataSource inboxMessageWithIdentifier:?];
    if (v4)
    {
      v5 = v4;
      [(PKInboxViewController *)self _presentInboxMessage:v4];
      v4 = v5;
    }
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PKInboxViewController;
  [(PKInboxViewController *)&v13 viewDidLoad];
  v3 = [(PKInboxViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"InboxMessageCellReuseIdentifier"];
  v4 = [PKTableHeaderView alloc];
  v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v5;

  v7 = [(PKTableHeaderView *)self->_headerView titleLabel];
  v8 = PKLocalizedFeatureString();
  [v7 setText:v8];

  [(PKTableHeaderView *)self->_headerView setStyle:3];
  [v3 setTableHeaderView:self->_headerView];
  v9 = [PKTableViewDiffableDataSource alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__PKInboxViewController_viewDidLoad__block_invoke;
  v12[3] = &unk_1E80182B8;
  v12[4] = self;
  v10 = [(UITableViewDiffableDataSource *)v9 initWithTableView:v3 cellProvider:v12];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v10;

  [(PKTableViewDiffableDataSource *)self->_diffableDataSource setSectionHeaderProvider:&__block_literal_global_87];
  [(PKTableViewDiffableDataSource *)self->_diffableDataSource setSectionFooterProvider:&__block_literal_global_35_0];
  [(PKInboxViewController *)self _updateDiffableDataSourceAnimated:0];
}

id __36__PKInboxViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [a2 dequeueReusableCellWithIdentifier:@"InboxMessageCellReuseIdentifier" forIndexPath:a3];
  v9 = [*(a1 + 32) _configurationForInboxMessage:v7];
  [v8 setContentConfiguration:v9];
  LODWORD(a1) = [v7 isExpired];

  if (a1)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  [v8 setAccessoryType:v10];
  [v8 setAccessibilityIdentifier:*MEMORY[0x1E69B98C0]];

  return v8;
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKInboxViewController;
  [(PKInboxViewController *)&v10 viewWillLayoutSubviews];
  headerView = self->_headerView;
  v4 = [(PKInboxViewController *)self view];
  [v4 bounds];
  [(PKTableHeaderView *)headerView sizeThatFits:CGRectGetWidth(v11), 1.79769313e308];
  v6 = v5;
  v8 = v7;

  if (self->_previousHeaderHeight != v8)
  {
    self->_previousHeaderHeight = v8;
    [(PKTableHeaderView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v6, v8];
    v9 = [(PKInboxViewController *)self tableView];
    [v9 _tableHeaderHeightDidChangeToHeight:v8];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  diffableDataSource = self->_diffableDataSource;
  v7 = a4;
  v8 = a3;
  v9 = [(UITableViewDiffableDataSource *)diffableDataSource itemIdentifierForIndexPath:v7];
  [(PKInboxViewController *)self _presentInboxMessage:v9];
  [v8 deselectRowAtIndexPath:v7 animated:1];
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidCancelSetupFlow:(id)a3
{
  v3 = [a3 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentInboxMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    if ([v4 isExpired])
    {
      [(PKInboxViewController *)self _presentExpiredAlertForInboxMessage:v8];
    }

    else
    {
      v6 = [v8 type];
      v5 = v8;
      if (v6)
      {
        goto LABEL_7;
      }

      v7 = [v8 accountUserInvitation];
      [(PKInboxViewController *)self _presentAccountUserInvitation:v7];
    }

    v5 = v8;
  }

LABEL_7:
}

- (void)_presentExpiredAlertForInboxMessage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = v4;
    if ([v4 type])
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v7 = [v18 accountUserInvitation];
      v8 = [v7 invitationDetails];

      v9 = MEMORY[0x1E69B8740];
      v10 = [v18 familyMember];
      v11 = [v8 originatorNameComponents];
      v12 = [v9 contactForFamilyMember:v10 nameComponents:v11 imageData:0];

      v5 = PKLocalizedFeatureString();
      v17 = [v12 pkFullName];
      v6 = PKLocalizedFeatureString();

      if (v5 && v6)
      {
        v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v6 preferredStyle:{1, v17}];
        v14 = MEMORY[0x1E69DC648];
        v15 = PKLocalizedFeatureString();
        v16 = [v14 actionWithTitle:v15 style:0 handler:0];
        [v13 addAction:v16];

        [(PKInboxViewController *)self presentViewController:v13 animated:1 completion:0];
      }
    }

    v4 = v18;
  }
}

- (id)_configurationForInboxMessage:(id)a3
{
  v3 = a3;
  if ([v3 type])
  {
    v4 = 0;
  }

  else
  {
    v4 = [PKInboxMessageContentConfiguration configurationWithInboxMessage:v3];
  }

  return v4;
}

- (void)_updateDiffableDataSourceAnimated:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v6 = [(PKInboxDataSource *)self->_dataSource activeInboxMessages];
  if ([v6 count])
  {
    v7 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"ActiveInboxMessageSectionIdentifier"];
    v14[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v5 appendSectionsWithIdentifiers:v8];

    [v5 appendItemsWithIdentifiers:v6 intoSectionWithIdentifier:v7];
  }

  v9 = [(PKInboxDataSource *)self->_dataSource expiredInboxMessages];
  if ([v9 count])
  {
    v10 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"ExpiredInboxMessageSectionIdentifier"];
    v11 = PKLocalizedFeatureString();
    [(PKTableViewDiffableDataSourceSection *)v10 setTitle:v11];

    v13 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    [v5 appendSectionsWithIdentifiers:v12];

    [v5 appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:v10];
  }

  [(UITableViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v5 animatingDifferences:v3];
}

- (void)_updateImage:(id)a3 onCellAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PKInboxViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v6];

  if (v8)
  {
    v9 = [v8 contentConfiguration];
    [v9 setImage:v10];
    [v8 setContentConfiguration:v9];
  }
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  self->_disableSelection = a3;
  v4 = [(PKTableHeaderView *)self->_headerView activityIndicator];
  v5 = v4;
  if (v3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }
}

- (void)_presentAccountUserInvitation:(id)a3
{
  v4 = a3;
  [(PKInboxViewController *)self _showSpinner:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PKInboxViewController__presentAccountUserInvitation___block_invoke;
  aBlock[3] = &unk_1E8010A10;
  v5 = v4;
  v13 = v5;
  v14 = self;
  v6 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_6;
  v9[3] = &unk_1E8018300;
  v10 = v5;
  v11 = v6;
  v9[4] = self;
  v7 = v5;
  v8 = v6;
  [(PKInboxViewController *)self _checkManateeCapabilityForFeatureApplication:v7 completion:v9];
}

void __55__PKInboxViewController__presentAccountUserInvitation___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B8400] sharedInstance];
  v3 = [*(a1 + 32) feature];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_2;
  v6[3] = &unk_1E8017448;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 defaultAccountForFeature:v3 completion:v6];
}

void __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_3;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69B8D48]);
  v3 = [MEMORY[0x1E69B8EF8] sharedService];
  v4 = [v2 initWithWebService:v3];

  v5 = MEMORY[0x1E695DFD8];
  [*(a1 + 32) feature];
  v6 = PKFeatureIdentifierToString();
  v7 = [v5 setWithObject:v6];
  [v4 setAllowedFeatureIdentifiers:v7];

  v8 = [[PKApplyControllerConfiguration alloc] initWithSetupDelegate:*(a1 + 40) context:*(*(a1 + 40) + 1048) provisioningController:v4];
  [(PKApplyControllerConfiguration *)v8 setFeatureApplication:*(a1 + 32)];
  v9 = [[PKApplyController alloc] initWithApplyConfiguration:v8];
  v10 = *(a1 + 40);
  v11 = *(v10 + 1088);
  *(v10 + 1088) = v9;

  v12 = *(*(a1 + 40) + 1088);
  v13 = [MEMORY[0x1E69B8330] analyticsAccountTypeForAccount:*(a1 + 48)];
  [v12 setAnalyticsExistingAccountType:v13];

  objc_initWeak(&location, *(a1 + 40));
  v14 = *(*(a1 + 40) + 1088);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_4;
  v15[3] = &unk_1E80162F0;
  objc_copyWeak(&v16, &location);
  [v14 nextViewControllerWithCompletion:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = [WeakRetained navigationController];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_5;
      v11[3] = &unk_1E8011D28;
      v11[4] = v8;
      [v9 pk_presentPaymentSetupViewController:v5 animated:1 completion:v11];
    }

    else
    {
      if (v6)
      {
        v10 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
        [v8 presentViewController:v10 animated:1 completion:0];
      }

      [v8 _showSpinner:0];
    }
  }
}

void __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_6(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_7;
    v7[3] = &unk_1E8015170;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v4 _presentManateeUpgradeForFeatureApplication:v5 completion:v7];
  }
}

void __55__PKInboxViewController__presentAccountUserInvitation___block_invoke_7(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v12 = v5;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v12 = v5;
    v6 = PKTitleForDisplayableError();
    v7 = MEMORY[0x1BFB42D10](v12);
    v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedPaymentString(&cfstr_HsaOkButtonTit.isa);
    v11 = [v9 actionWithTitle:v10 style:1 handler:0];
    [v8 addAction:v11];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  v5 = v12;
LABEL_6:
}

- (void)_checkManateeCapabilityForFeatureApplication:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [PKSecurityCapabilitiesController alloc];
    v9 = [v7 feature];

    v10 = [(PKSecurityCapabilitiesController *)v8 initWithRequirements:8 feature:v9 context:self->_context];
    securityCapabilitiesController = self->_securityCapabilitiesController;
    self->_securityCapabilitiesController = v10;

    v12 = self->_securityCapabilitiesController;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__PKInboxViewController__checkManateeCapabilityForFeatureApplication_completion___block_invoke;
    v13[3] = &unk_1E8018328;
    v14 = v6;
    [(PKSecurityCapabilitiesController *)v12 isEnabledForSecuirtyRequirementsWithCompletion:v13];
  }
}

void __81__PKInboxViewController__checkManateeCapabilityForFeatureApplication_completion___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PKInboxViewController__checkManateeCapabilityForFeatureApplication_completion___block_invoke_2;
  v3[3] = &unk_1E8010FA8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_presentManateeUpgradeForFeatureApplication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (v7)
  {
    v8 = -[PKSecurityCapabilitiesController initWithRequirements:feature:context:]([PKSecurityCapabilitiesController alloc], "initWithRequirements:feature:context:", 8, [v6 feature], self->_context);
    securityCapabilitiesController = self->_securityCapabilitiesController;
    self->_securityCapabilitiesController = v8;

    v10 = [(PKInboxViewController *)self navigationController];
    v11 = v10;
    if (PKPaymentSetupContextIsBridge())
    {
      v12 = [v10 viewControllers];
      v11 = [v12 lastObject];
    }

    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Presenting hsa2 flow for account user invitation", buf, 2u);
    }

    v14 = self->_securityCapabilitiesController;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__PKInboxViewController__presentManateeUpgradeForFeatureApplication_completion___block_invoke;
    v15[3] = &unk_1E8018378;
    v15[4] = self;
    v16 = v6;
    v17 = v7;
    [(PKSecurityCapabilitiesController *)v14 presentSecurityRepairFlowWithPresentingViewController:v11 completion:v15];
  }
}

void __80__PKInboxViewController__presentManateeUpgradeForFeatureApplication_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKInboxViewController__presentManateeUpgradeForFeatureApplication_completion___block_invoke_2;
  block[3] = &unk_1E8018350;
  v14 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 48);
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PKInboxViewController__presentManateeUpgradeForFeatureApplication_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSecurityCapabilitiesErrorToString(*(a1 + 64));
    v4 = *(a1 + 32);
    *buf = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Finished checking account user invitation security capabilities with upgrade error %@, error %@", buf, 0x16u);
  }

  v5 = *(a1 + 64);
  if (v5 == 3)
  {
    v8 = *(*(a1 + 56) + 16);
LABEL_10:
    v8();
    return;
  }

  if (v5)
  {
    v8 = *(*(a1 + 56) + 16);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "User successfully completed. Ensuring that they indeed supportsDeviceToDeviceEncryption", buf, 2u);
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PKInboxViewController__presentManateeUpgradeForFeatureApplication_completion___block_invoke_77;
  v9[3] = &unk_1E8010AD8;
  v10 = *(a1 + 56);
  [v6 _checkManateeCapabilityForFeatureApplication:v7 completion:v9];
}

void __80__PKInboxViewController__presentManateeUpgradeForFeatureApplication_completion___block_invoke_77(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__PKInboxViewController__presentManateeUpgradeForFeatureApplication_completion___block_invoke_2_78;
  v3[3] = &unk_1E8010FA8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

@end