@interface PKAccountUserDetailViewController
- (BOOL)_hasPhysicalCardAction;
- (BOOL)_shouldShowRewardsBalance;
- (PKAccountUserDetailViewController)initWithPaymentPass:(id)pass style:(int64_t)style account:(id)account accountUser:(id)user familyMemberCollection:(id)collection avatarManager:(id)manager contactResolver:(id)resolver hideUserDetailHeader:(BOOL)self0;
- (PKAccountUserDetailViewController)initWithPaymentPass:(id)pass style:(int64_t)style account:(id)account accountUserInvitation:(id)invitation familyMemberCollection:(id)collection avatarManager:(id)manager contactResolver:(id)resolver hideUserDetailHeader:(BOOL)self0;
- (PKAccountUserDetailViewController)initWithPaymentPass:(id)pass style:(int64_t)style account:(id)account familyMemberCollection:(id)collection avatarManager:(id)manager contactResolver:(id)resolver hideUserDetailHeader:(BOOL)header;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_currentConfigurationForAccountUser;
- (id)_currentConfigurationForAccountUserInvitation;
- (id)_footerForTransactionLimitSection;
- (id)_footerViewForPeerPaymentAccountSetup;
- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)controller;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_appendActionsSectionToConfiguration:(id)configuration;
- (void)_appendNotificationsSectionToConfiguration:(id)configuration;
- (void)_appendPhysicalCardSectionToConfiguration:(id)configuration;
- (void)_appendRewardsBalanceToConfiguration:(id)configuration;
- (void)_appendShowAvailableCreditToConfiguration:(id)configuration;
- (void)_appendSpendNotificationsSectionToConfiguration:(id)configuration;
- (void)_appendTransactionLimitToConfiguration:(id)configuration;
- (void)_loadPeerPaymentAccount;
- (void)_presentAccountUserInvitation;
- (void)_presentCancelInvitationAlert;
- (void)_presentDisplayableError:(id)error;
- (void)_presentPasswordAuthorizationWithReason:(id)reason completion:(id)completion;
- (void)_presentPeerPaymentFamilySharingSetupForFamilyMember:(id)member;
- (void)_presentStopSharingAlert;
- (void)_setPerformingAction:(BOOL)action animated:(BOOL)animated;
- (void)_updateConfigurationAnimated:(BOOL)animated;
- (void)_updateContactInfoAndHeaderViewAnimated:(BOOL)animated;
- (void)_updateMonthlySpendLimit:(id)limit;
- (void)_updateMonthlySpendNotificationThreshold:(id)threshold;
- (void)_updateNotificationSettings:(id)settings;
- (void)_updatePreferences:(id)preferences;
- (void)_updateShowAvailableCredit:(BOOL)credit;
- (void)_updateSpendingEnabled:(BOOL)enabled;
- (void)_updateTransactionLimit:(id)limit;
- (void)_updateTransactionNotificationThreshold:(id)threshold;
- (void)_updateTransactionNotificationsEnabled:(BOOL)enabled;
- (void)accountChanged:(id)changed;
- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)dealloc;
- (void)featureApplicationChanged:(id)changed;
- (void)featureApplicationRemoved:(id)removed;
- (void)physicalCardActionController:(id)controller didChangeToState:(int64_t)state withError:(id)error;
- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountUserDetailViewController

- (PKAccountUserDetailViewController)initWithPaymentPass:(id)pass style:(int64_t)style account:(id)account accountUser:(id)user familyMemberCollection:(id)collection avatarManager:(id)manager contactResolver:(id)resolver hideUserDetailHeader:(BOOL)self0
{
  accountCopy = account;
  userCopy = user;
  LOBYTE(v26) = header;
  v18 = [(PKAccountUserDetailViewController *)self initWithPaymentPass:pass style:style account:accountCopy familyMemberCollection:collection avatarManager:manager contactResolver:resolver hideUserDetailHeader:v26];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accountUser, user);
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    _appleAccountInformation = [mEMORY[0x1E69B8EF8] _appleAccountInformation];
    appleAccountInformation = v19->_appleAccountInformation;
    v19->_appleAccountInformation = _appleAccountInformation;

    accountService = v19->_accountService;
    accountIdentifier = [accountCopy accountIdentifier];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __157__PKAccountUserDetailViewController_initWithPaymentPass_style_account_accountUser_familyMemberCollection_avatarManager_contactResolver_hideUserDetailHeader___block_invoke;
    v27[3] = &unk_1E8013E48;
    v28 = v19;
    [(PKAccountService *)accountService physicalCardsForAccountWithIdentifier:accountIdentifier completion:v27];
  }

  return v19;
}

void __157__PKAccountUserDetailViewController_initWithPaymentPass_style_account_accountUser_familyMemberCollection_avatarManager_contactResolver_hideUserDetailHeader___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __157__PKAccountUserDetailViewController_initWithPaymentPass_style_account_accountUser_familyMemberCollection_avatarManager_contactResolver_hideUserDetailHeader___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __157__PKAccountUserDetailViewController_initWithPaymentPass_style_account_accountUser_familyMemberCollection_avatarManager_contactResolver_hideUserDetailHeader___block_invoke_2(uint64_t a1)
{
  v2 = [[PKPhysicalCardController alloc] initWithAccountService:*(*(a1 + 32) + 1152) paymentPass:*(*(a1 + 32) + 1056) account:*(*(a1 + 32) + 1072) accountUser:*(*(a1 + 32) + 1080) physicalCards:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1168);
  *(v3 + 1168) = v2;

  v5 = [[PKPhysicalCardActionController alloc] initWithAccountService:*(*(a1 + 32) + 1152) account:*(*(a1 + 32) + 1072) accountUser:*(*(a1 + 32) + 1080) delegate:?];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1176);
  *(v6 + 1176) = v5;

  v8 = *(a1 + 32);

  return [v8 _updateConfigurationAnimated:1];
}

- (PKAccountUserDetailViewController)initWithPaymentPass:(id)pass style:(int64_t)style account:(id)account accountUserInvitation:(id)invitation familyMemberCollection:(id)collection avatarManager:(id)manager contactResolver:(id)resolver hideUserDetailHeader:(BOOL)self0
{
  invitationCopy = invitation;
  LOBYTE(v21) = header;
  v18 = [(PKAccountUserDetailViewController *)self initWithPaymentPass:pass style:style account:account familyMemberCollection:collection avatarManager:manager contactResolver:resolver hideUserDetailHeader:v21];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accountUserInvitation, invitation);
  }

  return v19;
}

- (PKAccountUserDetailViewController)initWithPaymentPass:(id)pass style:(int64_t)style account:(id)account familyMemberCollection:(id)collection avatarManager:(id)manager contactResolver:(id)resolver hideUserDetailHeader:(BOOL)header
{
  passCopy = pass;
  accountCopy = account;
  collectionCopy = collection;
  managerCopy = manager;
  resolverCopy = resolver;
  v30.receiver = self;
  v30.super_class = PKAccountUserDetailViewController;
  v19 = -[PKAccountUserDetailViewController initWithStyle:](&v30, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_paymentPass, pass);
    v20->_style = style;
    objc_storeStrong(&v20->_account, account);
    objc_storeStrong(&v20->_familyMemberCollection, collection);
    objc_storeStrong(&v20->_avatarManager, manager);
    objc_storeStrong(&v20->_contactResolver, resolver);
    v20->_hideUserDetailHeader = header;
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v20->_accountService;
    v20->_accountService = mEMORY[0x1E69B8400];

    [(PKAccountService *)v20->_accountService registerObserver:v20];
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v20->_paymentService;
    v20->_paymentService = paymentService;

    [(PKPaymentService *)v20->_paymentService registerObserver:v20];
    navigationItem = [(PKAccountUserDetailViewController *)v20 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    if (v20->_hideUserDetailHeader)
    {
      v26 = PKLocalizedFeatureString();
      [navigationItem setTitle:v26];
    }
  }

  return v20;
}

- (void)dealloc
{
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKAccountUserDetailViewController;
  [(PKAccountUserDetailViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PKAccountUserDetailViewController;
  [(PKSettingsTableViewController *)&v7 viewDidLoad];
  tableView = [(PKAccountUserDetailViewController *)self tableView];
  if (!self->_hideUserDetailHeader)
  {
    v4 = [PKAccountUserDetailHeaderView alloc];
    v5 = [(PKAccountUserDetailHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    headerView = self->_headerView;
    self->_headerView = v5;

    [tableView setTableHeaderView:self->_headerView];
  }

  [(PKAccountUserDetailViewController *)self _loadPeerPaymentAccount];
  [(PKAccountUserDetailViewController *)self _updateContactInfoAndHeaderViewAnimated:0];
  [(PKAccountUserDetailViewController *)self _updateConfigurationAnimated:0];
  [tableView setAccessibilityIdentifier:*MEMORY[0x1E69B93C0]];
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKAccountUserDetailViewController;
  [(PKAccountUserDetailViewController *)&v12 viewWillLayoutSubviews];
  if (!self->_hideUserDetailHeader)
  {
    headerView = self->_headerView;
    view = [(PKAccountUserDetailViewController *)self view];
    [view bounds];
    [(PKAccountUserDetailHeaderView *)headerView sizeThatFits:CGRectGetWidth(v13), 1.79769313e308];
    v6 = v5;
    v8 = v7;

    if (self->_previousHeaderHeight != v8)
    {
      self->_previousHeaderHeight = v8;
      [(PKAccountUserDetailHeaderView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v6, v8];
      tableView = [(PKAccountUserDetailViewController *)self tableView];
      [tableView _tableHeaderHeightDidChangeToHeight:v8];
    }
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView2 = [(PKAccountUserDetailViewController *)self tableView];
    navigationItem = [(PKAccountUserDetailViewController *)self navigationItem];
    [tableView2 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [viewCopy dataSource];
  v7 = [dataSource tableView:viewCopy titleForHeaderInSection:section];

  if (section | v7)
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v8 = 20.0;
  }

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [viewCopy dataSource];
  v7 = [dataSource tableView:viewCopy titleForHeaderInSection:section];

  v8 = 0;
  if (!section && !v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
  }

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [viewCopy dataSource];
  v8 = [dataSource tableView:viewCopy titleForFooterInSection:section];

  if (v8 || [(PKSettingsTableViewController *)self indexOfSectionWithIdentifier:@"rewardsBalance"]!= section)
  {
    _footerViewForPeerPaymentAccountSetup = 0;
  }

  else
  {
    _footerViewForPeerPaymentAccountSetup = [(PKAccountUserDetailViewController *)self _footerViewForPeerPaymentAccountSetup];
  }

  return _footerViewForPeerPaymentAccountSetup;
}

- (void)featureApplicationChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PKAccountUserDetailViewController_featureApplicationChanged___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __63__PKAccountUserDetailViewController_featureApplicationChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationIdentifier];
  v3 = [*(*(a1 + 40) + 1104) applicationIdentifier];
  v11 = v2;
  v4 = v3;
  if (v11 == v4)
  {
  }

  else
  {
    if (v11)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {

LABEL_13:

      return;
    }

    v6 = [v11 isEqualToString:v4];

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  [*(*(a1 + 40) + 1104) applicationState];
  IsTerminal = PKFeatureApplicationStateIsTerminal();
  [*(a1 + 32) applicationState];
  v8 = PKFeatureApplicationStateIsTerminal();
  objc_storeStrong((*(a1 + 40) + 1104), *(a1 + 32));
  v9 = *(a1 + 40);
  if ((IsTerminal & 1) == 0 && v8)
  {
    v11 = [v9 navigationController];
    v10 = [v11 popViewControllerAnimated:1];
    goto LABEL_13;
  }

  [v9 _updateConfigurationAnimated:1];
}

- (void)featureApplicationRemoved:(id)removed
{
  removedCopy = removed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PKAccountUserDetailViewController_featureApplicationRemoved___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = removedCopy;
  selfCopy = self;
  v5 = removedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __63__PKAccountUserDetailViewController_featureApplicationRemoved___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationIdentifier];
  v3 = [*(*(a1 + 40) + 1104) applicationIdentifier];
  v8 = v2;
  v4 = v3;
  if (v8 == v4)
  {

LABEL_10:
    v8 = [*(a1 + 40) navigationController];
    v7 = [v8 popViewControllerAnimated:1];
    goto LABEL_11;
  }

  if (v8)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [v8 isEqualToString:v4];

    if ((v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PKAccountUserDetailViewController_accountChanged___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __52__PKAccountUserDetailViewController_accountChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountIdentifier];
  v3 = [*(*(a1 + 40) + 1072) accountIdentifier];
  v8 = v2;
  v4 = v3;
  if (v8 == v4)
  {

LABEL_12:
    if (([*(*(a1 + 40) + 1072) isContentEqualToAccount:*(a1 + 32)] & 1) == 0)
    {
      objc_storeStrong((*(a1 + 40) + 1072), *(a1 + 32));
      [*(*(a1 + 40) + 1168) updateWithAccount:*(*(a1 + 40) + 1072)];
      v7 = *(a1 + 40);

      [v7 _updateConfigurationAnimated:1];
    }

    return;
  }

  if (v8)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [v8 isEqualToString:v4];

    if ((v6 & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKAccountUserDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = identifierCopy;
  selfCopy = self;
  v13 = changedCopy;
  v8 = changedCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__PKAccountUserDetailViewController_physicalCardsChanged_forAccountIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [*(a1[5] + 1072) accountIdentifier];
  v4 = v2;
  v5 = v3;
  v9 = v5;
  if (v4 == v5)
  {

LABEL_12:
    [*(a1[5] + 1168) updateWithPhysicalCards:a1[6]];
    v8 = a1[5];

    [v8 _updateConfigurationAnimated:1];
    return;
  }

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [v4 isEqualToString:v5];

    if (!v7)
    {
      return;
    }

    goto LABEL_12;
  }
}

- (void)accountUsersChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKAccountUserDetailViewController_accountUsersChanged_forAccountIdentifier___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = identifierCopy;
  selfCopy = self;
  v13 = changedCopy;
  v8 = changedCopy;
  v9 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__PKAccountUserDetailViewController_accountUsersChanged_forAccountIdentifier___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 1072) accountIdentifier];
  v4 = v2;
  v5 = v3;
  v24 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {

      return;
    }

    v7 = [v4 isEqualToString:v5];

    if (!v7)
    {
      return;
    }
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 1080);
  if (v9 && (*(v8 + 1200) & 1) == 0)
  {
    v10 = [v9 altDSID];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = *(a1 + 48);
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
LABEL_16:
      v15 = 0;
      while (1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        v17 = [v16 altDSID];
        v18 = v10;
        v19 = v18;
        if (v17 == v18)
        {
          break;
        }

        if (v10 && v17)
        {
          v20 = [v17 isEqualToString:v18];

          if (v20)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v13)
          {
            goto LABEL_16;
          }

          goto LABEL_27;
        }
      }

LABEL_29:
      v21 = v16;

      if (!v21)
      {
        goto LABEL_32;
      }

      if ((PKEqualObjects() & 1) == 0)
      {
        objc_storeStrong((*(a1 + 40) + 1080), v16);
        [*(a1 + 40) _updateConfigurationAnimated:1];
      }
    }

    else
    {
LABEL_27:

LABEL_32:
      v22 = [*(a1 + 40) navigationController];
      v23 = [v22 popViewControllerAnimated:1];

      v21 = 0;
    }
  }
}

- (void)physicalCardActionController:(id)controller didChangeToState:(int64_t)state withError:(id)error
{
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PKAccountUserDetailViewController_physicalCardActionController_didChangeToState_withError___block_invoke;
  block[3] = &unk_1E8012C50;
  v10 = errorCopy;
  stateCopy = state;
  block[4] = self;
  v8 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __93__PKAccountUserDetailViewController_physicalCardActionController_didChangeToState_withError___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      v3 = *(result + 32);
      v4 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v3 = *(result + 32);
    v4 = 0;
LABEL_12:

    return [v3 _setPerformingAction:v4 animated:1];
  }

  if (v2 == 2)
  {
    goto LABEL_11;
  }

  if (v2 == 3)
  {
    result = [*(result + 32) _setPerformingAction:0 animated:1];
    if (*(v1 + 40))
    {
      v5 = *(v1 + 32);

      return [v5 _presentDisplayableError:?];
    }
  }

  return result;
}

- (id)presentationSceneIdentifierForPhysicalCardActionController:(id)controller
{
  view = [(PKAccountUserDetailViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)_updateContactInfoAndHeaderViewAnimated:(BOOL)animated
{
  invitationDetails = [(PKFeatureApplication *)self->_accountUserInvitation invitationDetails];
  altDSID = [(PKAccountUser *)self->_accountUser altDSID];
  if (!altDSID)
  {
    altDSID = [invitationDetails accountUserAltDSID];
    if (!altDSID)
    {
      goto LABEL_22;
    }
  }

  v6 = altDSID;
  v7 = [(PKContactAvatarManager *)self->_avatarManager cachedAvatarForAltDSID:altDSID];
  v8 = [(PKFamilyMemberCollection *)self->_familyMemberCollection familyMemberForAltDSID:v6];
  if (!v7)
  {
    objc_initWeak(&location, self);
    avatarManager = self->_avatarManager;
    accountUser = self->_accountUser;
    accountUserInvitation = self->_accountUserInvitation;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__PKAccountUserDetailViewController__updateContactInfoAndHeaderViewAnimated___block_invoke;
    v24[3] = &unk_1E8020780;
    objc_copyWeak(&v26, &location);
    v25 = v8;
    [(PKContactAvatarManager *)avatarManager avatarForFamilyMember:v25 accountUser:accountUser invitation:accountUserInvitation completion:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v12 = self->_accountUser;
  if (v12)
  {
    v13 = MEMORY[0x1E69B8740];
    nameComponents = [(PKAccountUser *)v12 nameComponents];
LABEL_9:
    v15 = nameComponents;
    if (v7)
    {
      v16 = UIImagePNGRepresentation(v7);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v13 contactForFamilyMember:v8 nameComponents:v15 imageData:v16];
    contact = self->_contact;
    self->_contact = v17;

    if (v7)
    {
    }

    goto LABEL_15;
  }

  if (invitationDetails)
  {
    v13 = MEMORY[0x1E69B8740];
    nameComponents = [invitationDetails accountUserNameComponents];
    goto LABEL_9;
  }

LABEL_15:
  if (!self->_hideUserDetailHeader)
  {
    [(PKAccountUserDetailHeaderView *)self->_headerView setContactForDisplay:self->_contact];
    if (!self->_hideUserDetailHeader)
    {
      if (self->_accountUser)
      {
        v19 = [(PKContactResolver *)self->_contactResolver hasCachedResultForAccountUser:?];
        contactResolver = self->_contactResolver;
        v21 = self->_accountUser;
        if (v19)
        {
          v22 = [(PKContactResolver *)contactResolver contactForAccountUser:v21];
          [(PKAccountUserDetailHeaderView *)self->_headerView setContactForActions:v22];
        }

        else
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __77__PKAccountUserDetailViewController__updateContactInfoAndHeaderViewAnimated___block_invoke_3;
          v23[3] = &unk_1E80178C0;
          v23[4] = self;
          [(PKContactResolver *)contactResolver contactForAccountUser:v21 withCompletion:v23];
        }
      }
    }
  }

LABEL_22:
}

void __77__PKAccountUserDetailViewController__updateContactInfoAndHeaderViewAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKAccountUserDetailViewController__updateContactInfoAndHeaderViewAnimated___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __77__PKAccountUserDetailViewController__updateContactInfoAndHeaderViewAnimated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = MEMORY[0x1E69B8740];
    v5 = *(a1 + 32);
    v11 = WeakRetained;
    v6 = [WeakRetained[135] nameComponents];
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = UIImagePNGRepresentation(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 contactForFamilyMember:v5 nameComponents:v6 imageData:v8];
    v10 = v11[149];
    v11[149] = v9;

    if (v7)
    {
    }

    v3 = v11;
    if ((v11[154] & 1) == 0)
    {
      [v11[152] setContactForDisplay:v11[149]];
      v3 = v11;
    }
  }
}

void __77__PKAccountUserDetailViewController__updateContactInfoAndHeaderViewAnimated___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKAccountUserDetailViewController__updateContactInfoAndHeaderViewAnimated___block_invoke_4;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_updateConfigurationAnimated:(BOOL)animated
{
  v28 = *MEMORY[0x1E69E9840];
  animatedCopy = animated;
  if (self->_accountUser)
  {
    _currentConfigurationForAccountUser = [(PKAccountUserDetailViewController *)self _currentConfigurationForAccountUser];
LABEL_5:
    v5 = _currentConfigurationForAccountUser;
    goto LABEL_6;
  }

  if (self->_accountUserInvitation)
  {
    _currentConfigurationForAccountUser = [(PKAccountUserDetailViewController *)self _currentConfigurationForAccountUserInvitation];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:
  [v5 sections];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v9 = v5;
        v10 = [v5 rowsForSection:*(*(&v22 + 1) + 8 * v8)];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v18 + 1) + 8 * v14++) setEnabled:!self->_performingAction];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }

        ++v8;
        v5 = v9;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (v5)
  {
    [(PKSettingsTableViewController *)self applyConfiguration:v5 animated:animatedCopy];
  }
}

- (id)_currentConfigurationForAccountUserInvitation
{
  v3 = objc_alloc_init(PKSettingsTableViewConfiguration);
  v4 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"actions"];
  givenName = [(CNContact *)self->_contact givenName];
  applicationState = [(PKFeatureApplication *)self->_accountUserInvitation applicationState];
  if (applicationState == 8)
  {
    applicationStateReason = [(PKFeatureApplication *)self->_accountUserInvitation applicationStateReason];
    if (applicationStateReason == 11 || applicationStateReason == 10)
    {
      v7 = PKLocalizedFeatureString();
      v21 = givenName;
      v15 = PKLocalizedFeatureString();
LABEL_14:
      v8 = v15;
      v11 = 0;
      if (v7)
      {
        goto LABEL_15;
      }

LABEL_18:
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      goto LABEL_19;
    }

LABEL_11:
    v7 = 0;
    v11 = 0;
    v8 = 0;
    goto LABEL_18;
  }

  if (applicationState == 6)
  {
    v7 = PKLocalizedFeatureString();
    v8 = PKLocalizedFeatureString();
    v12 = [PKButtonTableViewSettingsRow alloc];
    v13 = PKLocalizedFeatureString();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__PKAccountUserDetailViewController__currentConfigurationForAccountUserInvitation__block_invoke_2;
    v22[3] = &unk_1E80207A8;
    v22[4] = self;
    v11 = [(PKButtonTableViewSettingsRow *)v12 initWithIdentifier:@"invitationOfferReady" title:v13 tapHandler:v22];

    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (applicationState != 5)
  {
    goto LABEL_11;
  }

  if ([(PKFeatureApplication *)self->_accountUserInvitation applicationStateReason]!= 9)
  {
    v7 = PKLocalizedFeatureString();
    v15 = PKLocalizedFeatureString();
    goto LABEL_14;
  }

  v7 = PKLocalizedFeatureString();
  v8 = PKLocalizedFeatureString();
  v9 = [PKButtonTableViewSettingsRow alloc];
  v10 = PKLocalizedFeatureString();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__PKAccountUserDetailViewController__currentConfigurationForAccountUserInvitation__block_invoke;
  v23[3] = &unk_1E80207A8;
  v23[4] = self;
  v11 = [(PKButtonTableViewSettingsRow *)v9 initWithIdentifier:@"invitationCancel" title:v10 tapHandler:v23, givenName];

  [(PKButtonTableViewSettingsRow *)v11 setStyle:1];
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (!v8)
  {
    goto LABEL_18;
  }

  v16 = [[PKTitleSubtitleTableViewSettingsRow alloc] initWithIdentifier:@"stateExplanation" title:v7 subtitle:v8];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = v17;
  if (v16)
  {
    [v17 addObject:v16];
  }

LABEL_19:
  if (v11)
  {
    [v18 addObject:v11];
  }

  if ([v18 count])
  {
    v19 = [v18 copy];
    [(PKSettingsTableViewConfiguration *)v3 appendSection:v4 rows:v19];
  }

  return v3;
}

- (id)_currentConfigurationForAccountUser
{
  v3 = objc_alloc_init(PKSettingsTableViewConfiguration);
  accessLevel = [(PKAccount *)self->_account accessLevel];
  accessLevel2 = [(PKAccountUser *)self->_accountUser accessLevel];
  if (accessLevel == 1)
  {
    v6 = accessLevel2;
    if (accessLevel2 == 2)
    {
      [(PKAccountUserDetailViewController *)self _appendTransactionLimitToConfiguration:v3];
      if ([(PKAccountUserDetailViewController *)self _shouldShowRewardsBalance])
      {
        [(PKAccountUserDetailViewController *)self _appendRewardsBalanceToConfiguration:v3];
      }

      if (([(PKAccountUser *)self->_accountUser supportsMonthlySpendLimit]& 1) == 0)
      {
        [(PKAccountUserDetailViewController *)self _appendShowAvailableCreditToConfiguration:v3];
      }
    }

    [(PKAccountUserDetailViewController *)self _appendNotificationsSectionToConfiguration:v3];
    notificationSettings = [(PKAccountUser *)self->_accountUser notificationSettings];
    transactionNotificationsEnabled = [notificationSettings transactionNotificationsEnabled];

    if (transactionNotificationsEnabled)
    {
      [(PKAccountUserDetailViewController *)self _appendSpendNotificationsSectionToConfiguration:v3];
    }

    if (v6 == 2)
    {
      if ([(PKAccountUserDetailViewController *)self _hasPhysicalCardAction])
      {
        [(PKAccountUserDetailViewController *)self _appendPhysicalCardSectionToConfiguration:v3];
      }

      [(PKAccountUserDetailViewController *)self _appendActionsSectionToConfiguration:v3];
    }
  }

  return v3;
}

- (BOOL)_hasPhysicalCardAction
{
  physicalCardController = self->_physicalCardController;
  if (!physicalCardController)
  {
    return 0;
  }

  hasPrimaryPhysicalCard = [(PKPhysicalCardController *)physicalCardController hasPrimaryPhysicalCard];
  primaryPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCard];
  v6 = ([primaryPhysicalCard state] & 0xFFFFFFFFFFFFFFFELL) == 2;
  v8 = hasPrimaryPhysicalCard && primaryPhysicalCard != 0 && v6;
  canActivatePhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController canRequestNewPhysicalCard]|| [(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard]|| v8 || [(PKPhysicalCardController *)self->_physicalCardController canActivatePhysicalCard];

  return canActivatePhysicalCard;
}

- (BOOL)_shouldShowRewardsBalance
{
  if (self->_peerPaymentAccount && (accountUser = self->_accountUser) != 0 && self->_familyMemberCollection && ((v4 = -[PKAccountUser accessLevel](accountUser, "accessLevel"), -[PKFamilyMemberCollection currentUser](self->_familyMemberCollection, "currentUser"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isOrganizer], v5, v7 = -[PKPeerPaymentAccount supportsFamilySharing](self->_peerPaymentAccount, "supportsFamilySharing"), v4 == 2) ? (v8 = v6 == 0) : (v8 = 1), !v8 ? (v9 = v7 == 0) : (v9 = 1), !v9))
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v14 = [mEMORY[0x1E69B8A58] passWithUniqueID:associatedPassUniqueID];
    paymentPass = [v14 paymentPass];

    if (paymentPass)
    {
      altDSID = [(PKAccountUser *)self->_accountUser altDSID];
      v17 = [(PKFamilyMemberCollection *)self->_familyMemberCollection familyMemberForAltDSID:altDSID];
      if (([v17 memberType] - 3) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v18 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount peerPaymentAccountWithAltDSID:altDSID];
        v19 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount accountInvitationWithAltDSID:altDSID];
        if (v18 | v19)
        {
          LOBYTE(v10) = 0;
        }

        else
        {
          creditDetails = [(PKAccount *)self->_account creditDetails];
          accountSummary = [creditDetails accountSummary];
          v22 = [accountSummary redeemableRewardsBalanceForUser:self->_accountUser];

          if (v22)
          {
            zero = [MEMORY[0x1E696AB90] zero];
            v10 = [v22 isEqualToNumber:zero] ^ 1;
          }

          else
          {
            LOBYTE(v10) = 0;
          }
        }
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)_loadPeerPaymentAccount
{
  if (!self->_peerPaymentAccount)
  {
    v6[7] = v2;
    v6[8] = v3;
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKAccountUserDetailViewController__loadPeerPaymentAccount__block_invoke;
    v6[3] = &unk_1E80140E8;
    v6[4] = self;
    [mEMORY[0x1E69B9000] accountWithCompletion:v6];
  }
}

void __60__PKAccountUserDetailViewController__loadPeerPaymentAccount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PKAccountUserDetailViewController__loadPeerPaymentAccount__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __60__PKAccountUserDetailViewController__loadPeerPaymentAccount__block_invoke_2(uint64_t result)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (*(v3 + 1136) != v2)
  {
    v4 = result;
    objc_storeStrong((v3 + 1136), v2);
    v5 = *(v4 + 32);

    return [v5 _updateConfigurationAnimated:1];
  }

  return result;
}

- (void)_appendTransactionLimitToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"transactionLimit"];
  _footerForTransactionLimitSection = [(PKAccountUserDetailViewController *)self _footerForTransactionLimitSection];
  [(PKTableViewDiffableDataSourceSection *)v5 setFooter:_footerForTransactionLimitSection];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  creditDetails = [(PKAccount *)self->_account creditDetails];
  currencyCode = [creditDetails currencyCode];

  if ([(PKAccountUser *)self->_accountUser supportsMonthlySpendLimit])
  {
    v10 = currencyCode;
    v11 = [[PKCurrencyAmountSelectorOptionProvider alloc] initWithType:0 accountUser:self->_accountUser currencyCode:currencyCode];
    v12 = PKLocalizedFeatureString();
    objc_initWeak(location, self);
    v13 = [PKSelectionTableViewSettingsRow alloc];
    selectedOption = [(PKCurrencyAmountSelectorOptionProvider *)v11 selectedOption];
    displayValue = [selectedOption displayValue];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __76__PKAccountUserDetailViewController__appendTransactionLimitToConfiguration___block_invoke;
    v34[3] = &unk_1E80207F8;
    v16 = v12;
    v35 = v16;
    v17 = v11;
    v36 = v17;
    selfCopy = self;
    objc_copyWeak(&v38, location);
    v18 = [(PKSelectionTableViewSettingsRow *)v13 initWithIdentifier:@"monthlySpendLimit" title:v16 value:displayValue tapHandler:v34];

    [v7 addObject:v18];
    objc_destroyWeak(&v38);

    objc_destroyWeak(location);
    currencyCode = v10;
  }

  v19 = currencyCode;
  v20 = [[PKCurrencyAmountSelectorOptionProvider alloc] initWithType:0 accountUser:self->_accountUser currencyCode:currencyCode];
  v21 = PKLocalizedFeatureString();
  objc_initWeak(location, self);
  v22 = [PKSelectionTableViewSettingsRow alloc];
  selectedOption2 = [(PKCurrencyAmountSelectorOptionProvider *)v20 selectedOption];
  displayValue2 = [selectedOption2 displayValue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __76__PKAccountUserDetailViewController__appendTransactionLimitToConfiguration___block_invoke_3;
  v29[3] = &unk_1E80207F8;
  v25 = v21;
  v30 = v25;
  v26 = v20;
  v31 = v26;
  selfCopy2 = self;
  objc_copyWeak(&v33, location);
  v27 = [(PKSelectionTableViewSettingsRow *)v22 initWithIdentifier:@"transactionLimitSwitch" title:v25 value:displayValue2 tapHandler:v29];

  [v7 addObject:v27];
  v28 = [v7 copy];
  [configurationCopy appendSection:v5 rows:v28];

  objc_destroyWeak(&v33);
  objc_destroyWeak(location);
}

void __76__PKAccountUserDetailViewController__appendTransactionLimitToConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKSpendNotificationLimitViewController alloc] initWithTitle:*(a1 + 32) footerText:0 provider:*(a1 + 40)];
  v5 = [*(*(a1 + 48) + 1072) creditDetails];
  v6 = [v5 accountSummary];
  v7 = [v6 creditLimit];
  v8 = [v7 integerValue];

  [(PKSpendNotificationLimitViewController *)v4 setMaximumInput:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKAccountUserDetailViewController__appendTransactionLimitToConfiguration___block_invoke_2;
  v10[3] = &unk_1E80207D0;
  objc_copyWeak(&v11, (a1 + 56));
  [(PKSpendNotificationLimitViewController *)v4 setChangeHandler:v10];
  v9 = [*(a1 + 48) navigationController];
  [v9 pushViewController:v4 animated:1];

  objc_destroyWeak(&v11);
}

void __76__PKAccountUserDetailViewController__appendTransactionLimitToConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 currencyAmount];
    v5 = [v4 amount];

    [WeakRetained _updateMonthlySpendLimit:v5];
  }
}

void __76__PKAccountUserDetailViewController__appendTransactionLimitToConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKSpendNotificationLimitViewController alloc] initWithTitle:*(a1 + 32) footerText:0 provider:*(a1 + 40)];
  v5 = [*(*(a1 + 48) + 1072) creditDetails];
  v6 = [v5 accountSummary];
  v7 = [v6 creditLimit];
  v8 = [v7 integerValue];

  [(PKSpendNotificationLimitViewController *)v4 setMaximumInput:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKAccountUserDetailViewController__appendTransactionLimitToConfiguration___block_invoke_4;
  v10[3] = &unk_1E80207D0;
  objc_copyWeak(&v11, (a1 + 56));
  [(PKSpendNotificationLimitViewController *)v4 setChangeHandler:v10];
  v9 = [*(a1 + 48) navigationController];
  [v9 pushViewController:v4 animated:1];

  objc_destroyWeak(&v11);
}

void __76__PKAccountUserDetailViewController__appendTransactionLimitToConfiguration___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 currencyAmount];
    v5 = [v4 amount];

    [WeakRetained _updateTransactionLimit:v5];
  }
}

- (id)_footerForTransactionLimitSection
{
  preferences = [(PKAccountUser *)self->_accountUser preferences];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  currencyCode = [creditDetails currencyCode];

  transactionSpendLimitAmount = [preferences transactionSpendLimitAmount];
  transactionSpendLimitEnabled = [preferences transactionSpendLimitEnabled];
  if (transactionSpendLimitAmount)
  {
    v8 = currencyCode == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (transactionSpendLimitEnabled)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  monthlySpendLimitAmount = [preferences monthlySpendLimitAmount];
  supportsMonthlySpendLimit = [(PKAccountUser *)self->_accountUser supportsMonthlySpendLimit];
  monthlySpendLimitEnabled = [preferences monthlySpendLimitEnabled];
  if (monthlySpendLimitAmount)
  {
    v14 = currencyCode == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (monthlySpendLimitEnabled)
  {
    v16 = supportsMonthlySpendLimit == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  givenName = [(CNContact *)self->_contact givenName];
  if ((v17 & v10) == 1)
  {
    v19 = PKCurrencyAmountMake();
    formattedStringValue3 = PKCurrencyAmountMake();
    formattedStringValue = [v19 formattedStringValue];
    formattedStringValue2 = [formattedStringValue3 formattedStringValue];
    v22 = PKLocalizedFeatureString();

LABEL_27:
    goto LABEL_28;
  }

  if (v17 || v10)
  {
    v19 = PKCurrencyAmountMake();
    formattedStringValue3 = [v19 formattedStringValue];
    v22 = PKLocalizedFeatureString();
    goto LABEL_27;
  }

  v22 = PKLocalizedFeatureString();
LABEL_28:

  return v22;
}

- (void)_appendRewardsBalanceToConfiguration:(id)configuration
{
  v16[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"rewardsBalance"];
  v6 = PKLocalizedFeatureString();
  creditDetails = [(PKAccount *)self->_account creditDetails];
  currencyCode = [creditDetails currencyCode];
  accountSummary = [creditDetails accountSummary];
  v10 = [accountSummary redeemableRewardsBalanceForUser:self->_accountUser];

  if (v10)
  {
    v11 = currencyCode == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    formattedStringValue = 0;
  }

  else
  {
    v12 = PKCurrencyAmountMake();
    formattedStringValue = [v12 formattedStringValue];
  }

  v14 = [[PKKeyValueTableViewSettingsRow alloc] initWithIdentifier:@"rewardsBalance" title:v6 value:formattedStringValue];
  v16[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [configurationCopy appendSection:v5 rows:v15];
}

- (void)_appendShowAvailableCreditToConfiguration:(id)configuration
{
  v18[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  givenName = [(CNContact *)self->_contact givenName];
  v5 = PKLocalizedFeatureString();

  v6 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"showAvailableCredit", givenName];
  [(PKTableViewDiffableDataSourceSection *)v6 setFooter:v5];
  preferences = [(PKAccountUser *)self->_accountUser preferences];
  showAvailableCredit = [preferences showAvailableCredit];

  pendingAccountUserPreferences = self->_pendingAccountUserPreferences;
  if (pendingAccountUserPreferences)
  {
    showAvailableCredit = [(PKMutableAccountUserPreferences *)pendingAccountUserPreferences showAvailableCredit];
  }

  objc_initWeak(&location, self);
  v10 = [PKSwitchTableViewSettingsRow alloc];
  v11 = PKLocalizedFeatureString();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PKAccountUserDetailViewController__appendShowAvailableCreditToConfiguration___block_invoke;
  v15[3] = &unk_1E8020820;
  objc_copyWeak(&v16, &location);
  v12 = [(PKSwitchTableViewSettingsRow *)v10 initWithIdentifier:@"showAvailableCreditSwitch" title:v11 value:showAvailableCredit changeHandler:v15];

  v18[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [configurationCopy appendSection:v6 rows:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __79__PKAccountUserDetailViewController__appendShowAvailableCreditToConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateShowAvailableCredit:{objc_msgSend(v4, "BOOLValue")}];
  }
}

- (void)_appendNotificationsSectionToConfiguration:(id)configuration
{
  v19[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  givenName = [(CNContact *)self->_contact givenName];
  v5 = PKLocalizedFeatureString();

  v6 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"notifications", givenName];
  [(PKTableViewDiffableDataSourceSection *)v6 setFooter:v5];
  notificationSettings = [(PKAccountUser *)self->_accountUser notificationSettings];
  pendingAccountUserNotificationSettings = self->_pendingAccountUserNotificationSettings;
  if (pendingAccountUserNotificationSettings)
  {
    v9 = pendingAccountUserNotificationSettings;

    notificationSettings = v9;
  }

  objc_initWeak(&location, self);
  v10 = [PKSwitchTableViewSettingsRow alloc];
  v11 = PKLocalizedFeatureString();
  transactionNotificationsEnabled = [notificationSettings transactionNotificationsEnabled];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__PKAccountUserDetailViewController__appendNotificationsSectionToConfiguration___block_invoke;
  v16[3] = &unk_1E8020820;
  objc_copyWeak(&v17, &location);
  v13 = [(PKSwitchTableViewSettingsRow *)v10 initWithIdentifier:@"notificationsSwitch" title:v11 value:transactionNotificationsEnabled changeHandler:v16];

  v19[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [configurationCopy appendSection:v6 rows:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __80__PKAccountUserDetailViewController__appendNotificationsSectionToConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateTransactionNotificationsEnabled:{objc_msgSend(v4, "BOOLValue")}];
  }
}

- (void)_appendSpendNotificationsSectionToConfiguration:(id)configuration
{
  v41[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v27 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"spendNotifications"];
  v4 = PKLocalizedFeatureString();
  [(PKTableViewDiffableDataSourceSection *)v27 setTitle:v4];

  creditDetails = [(PKAccount *)self->_account creditDetails];
  currencyCode = [creditDetails currencyCode];

  objc_initWeak(&location, self);
  v6 = [[PKCurrencyAmountSelectorOptionProvider alloc] initWithType:2 accountUser:self->_accountUser currencyCode:currencyCode];
  v7 = PKLocalizedFeatureString();
  v8 = [PKSelectionTableViewSettingsRow alloc];
  selectedOption = [(PKCurrencyAmountSelectorOptionProvider *)v6 selectedOption];
  displayValue = [selectedOption displayValue];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __85__PKAccountUserDetailViewController__appendSpendNotificationsSectionToConfiguration___block_invoke;
  v35[3] = &unk_1E80207F8;
  v11 = v7;
  v36 = v11;
  v25 = v6;
  v37 = v25;
  selfCopy = self;
  objc_copyWeak(&v39, &location);
  v12 = [(PKSelectionTableViewSettingsRow *)v8 initWithIdentifier:@"transactionThreshold" title:v11 value:displayValue tapHandler:v35];

  v13 = [[PKCurrencyAmountSelectorOptionProvider alloc] initWithType:1 accountUser:self->_accountUser currencyCode:currencyCode];
  v14 = PKLocalizedFeatureString();
  givenName = [(CNContact *)self->_contact givenName];
  v15 = PKLocalizedFeatureString();

  v16 = [PKSelectionTableViewSettingsRow alloc];
  selectedOption2 = [(PKCurrencyAmountSelectorOptionProvider *)v13 selectedOption];
  displayValue2 = [selectedOption2 displayValue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __85__PKAccountUserDetailViewController__appendSpendNotificationsSectionToConfiguration___block_invoke_3;
  v29[3] = &unk_1E8020848;
  v19 = v14;
  v30 = v19;
  v20 = v15;
  v31 = v20;
  v21 = v13;
  v32 = v21;
  selfCopy2 = self;
  objc_copyWeak(&v34, &location);
  v22 = [(PKSelectionTableViewSettingsRow *)v16 initWithIdentifier:@"monthlySpendThreshold" title:v19 value:displayValue2 tapHandler:v29];

  v41[0] = v12;
  v41[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  [configurationCopy appendSection:v27 rows:v23];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&location);
}

void __85__PKAccountUserDetailViewController__appendSpendNotificationsSectionToConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKSpendNotificationLimitViewController alloc] initWithTitle:*(a1 + 32) footerText:0 provider:*(a1 + 40)];
  v5 = [*(*(a1 + 48) + 1072) creditDetails];
  v6 = [v5 accountSummary];
  v7 = [v6 creditLimit];
  v8 = [v7 integerValue];

  [(PKSpendNotificationLimitViewController *)v4 setMaximumInput:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PKAccountUserDetailViewController__appendSpendNotificationsSectionToConfiguration___block_invoke_2;
  v10[3] = &unk_1E80207D0;
  objc_copyWeak(&v11, (a1 + 56));
  [(PKSpendNotificationLimitViewController *)v4 setChangeHandler:v10];
  v9 = [*(a1 + 48) navigationController];
  [v9 pushViewController:v4 animated:1];

  objc_destroyWeak(&v11);
}

void __85__PKAccountUserDetailViewController__appendSpendNotificationsSectionToConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 currencyAmount];
    v5 = [v4 amount];

    [WeakRetained _updateTransactionNotificationThreshold:v5];
  }
}

void __85__PKAccountUserDetailViewController__appendSpendNotificationsSectionToConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKSpendNotificationLimitViewController alloc] initWithTitle:*(a1 + 32) footerText:*(a1 + 40) provider:*(a1 + 48)];
  v5 = [*(*(a1 + 56) + 1072) creditDetails];
  v6 = [v5 accountSummary];
  v7 = [v6 creditLimit];
  v8 = [v7 integerValue];

  [(PKSpendNotificationLimitViewController *)v4 setMaximumInput:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PKAccountUserDetailViewController__appendSpendNotificationsSectionToConfiguration___block_invoke_4;
  v10[3] = &unk_1E80207D0;
  objc_copyWeak(&v11, (a1 + 64));
  [(PKSpendNotificationLimitViewController *)v4 setChangeHandler:v10];
  v9 = [*(a1 + 56) navigationController];
  [v9 pushViewController:v4 animated:1];

  objc_destroyWeak(&v11);
}

void __85__PKAccountUserDetailViewController__appendSpendNotificationsSectionToConfiguration___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 currencyAmount];
    v5 = [v4 amount];

    [WeakRetained _updateMonthlySpendNotificationThreshold:v5];
  }
}

- (void)_appendPhysicalCardSectionToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(PKAccount *)self->_account feature];
  canRequestNewPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController canRequestNewPhysicalCard];
  canReplacePhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController canReplacePhysicalCard];
  hasPrimaryPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController hasPrimaryPhysicalCard];
  canActivatePhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController canActivatePhysicalCard];
  v34 = canRequestNewPhysicalCard;
  if (canRequestNewPhysicalCard)
  {
    givenName = [(CNContact *)self->_contact givenName];
    v8 = PKLocalizedFeatureString();
  }

  else
  {
    v8 = 0;
  }

  v9 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"physicalCard"];
  v10 = PKLocalizedFeatureString();
  [(PKTableViewDiffableDataSourceSection *)v9 setTitle:v10];

  v33 = v8;
  [(PKTableViewDiffableDataSourceSection *)v9 setFooter:v8];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  primaryPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController primaryPhysicalCard];
  objc_initWeak(location, self);
  if (hasPrimaryPhysicalCard && ([primaryPhysicalCard state] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v12 = PKLocalizedFeatureString();
    v13 = [PKButtonTableViewSettingsRow alloc];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke;
    v45[3] = &unk_1E8020870;
    objc_copyWeak(&v48, location);
    v46 = primaryPhysicalCard;
    selfCopy = self;
    v14 = [(PKButtonTableViewSettingsRow *)v13 initWithIdentifier:@"lockUnlockPhysicalCard" title:v12 tapHandler:v45];
    [v11 addObject:v14];

    objc_destroyWeak(&v48);
  }

  if (canActivatePhysicalCard)
  {
    v15 = [PKButtonTableViewSettingsRow alloc];
    v16 = PKLocalizedFeatureString();
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_4;
    v43[3] = &unk_1E8017FE8;
    objc_copyWeak(&v44, location);
    v17 = [(PKButtonTableViewSettingsRow *)v15 initWithIdentifier:@"activatePhysicalCard" title:v16 tapHandler:v43];

    [v11 addObject:v17];
    objc_destroyWeak(&v44);
  }

  if (canReplacePhysicalCard)
  {
    v18 = [PKButtonTableViewSettingsRow alloc];
    v19 = PKLocalizedFeatureString();
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_5;
    v41[3] = &unk_1E8017FE8;
    objc_copyWeak(&v42, location);
    v20 = [(PKButtonTableViewSettingsRow *)v18 initWithIdentifier:@"replacePhysicalCard" title:v19 tapHandler:v41];

    [v11 addObject:v20];
    objc_destroyWeak(&v42);
  }

  unactivatedPhysicalCard = [(PKPhysicalCardController *)self->_physicalCardController unactivatedPhysicalCard];
  v22 = unactivatedPhysicalCard;
  if (unactivatedPhysicalCard)
  {
    latestShippingActivity = [unactivatedPhysicalCard latestShippingActivity];
    shipmentTrackingURL = [latestShippingActivity shipmentTrackingURL];
    if (shipmentTrackingURL)
    {
    }

    else
    {
      shipmentTrackingURL = [v22 shipmentTrackingURL];

      if (!shipmentTrackingURL)
      {
        goto LABEL_16;
      }
    }

    v25 = [PKButtonTableViewSettingsRow alloc];
    v26 = PKLocalizedFeatureString();
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_6;
    v39[3] = &unk_1E80207A8;
    v27 = shipmentTrackingURL;
    v40 = v27;
    v28 = [(PKButtonTableViewSettingsRow *)v25 initWithIdentifier:@"trackPhysicalCard" title:v26 tapHandler:v39];

    [v11 addObject:v28];
  }

LABEL_16:
  if (v34)
  {
    v29 = [PKButtonTableViewSettingsRow alloc];
    v30 = PKLocalizedFeatureString();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_7;
    v37[3] = &unk_1E8017FE8;
    objc_copyWeak(&v38, location);
    v31 = [(PKButtonTableViewSettingsRow *)v29 initWithIdentifier:@"requestPhysicalCard" title:v30 tapHandler:v37];

    [v11 addObject:v31];
    objc_destroyWeak(&v38);
  }

  [configurationCopy appendSection:v9 rows:v11];

  objc_destroyWeak(location);
}

void __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[146] primaryPhysicalCardEnabled];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_2;
    aBlock[3] = &unk_1E8013D60;
    v13 = v4;
    aBlock[4] = v3;
    v12 = *(a1 + 32);
    v5 = _Block_copy(aBlock);
    v6 = v5;
    if (v4)
    {
      (*(v5 + 2))(v5);
    }

    else
    {
      [*(*(a1 + 40) + 1072) feature];
      v8 = [*(*(a1 + 40) + 1144) appleID];
      v7 = PKLocalizedFeatureString();

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_3;
      v9[3] = &unk_1E8015170;
      v9[4] = v3;
      v10 = v6;
      [v3 _presentPasswordAuthorizationWithReason:v7 completion:{v9, v8}];
    }
  }
}

uint64_t __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1176);
  if (v1 == 1)
  {
    return [v3 disablePhysicalCard:v2];
  }

  else
  {
    return [v3 enablePhysicalCard:v2];
  }
}

void __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v7 = v5;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v7 = v5;
    v6 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }

  v5 = v7;
LABEL_6:
}

void __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v2 = [PKPhysicalCardManualActivationViewController alloc];
    v3 = *(v10 + 144);
    v4 = *(v10 + 134);
    v5 = *(v10 + 135);
    v6 = *(v10 + 132);
    v7 = [*(v10 + 146) unactivatedPhysicalCard];
    v8 = [(PKPhysicalCardManualActivationViewController *)v2 initWithAccountService:v3 account:v4 accountUser:v5 paymentPass:v6 physicalCard:v7 activationCode:0];

    v9 = [[PKNavigationController alloc] initWithRootViewController:v8];
    [v10 presentViewController:v9 animated:1 completion:0];

    WeakRetained = v10;
  }
}

void __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [PKReplacePhysicalCardReasonViewController alloc];
    v3 = v8[133];
    v4 = 3;
    if (v3 != 1)
    {
      v4 = 0;
    }

    if (v3 == 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    v6 = [(PKReplacePhysicalCardReasonViewController *)v2 initWithPhysicalCardController:v8[146] context:v5];
    v7 = [[PKNavigationController alloc] initWithRootViewController:v6];
    [v8 presentViewController:v7 animated:1 completion:0];

    WeakRetained = v8;
  }
}

void __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setPerformingAction:1 animated:1];
    v3 = v2[146];
    v4 = v2[133];
    v5 = 3;
    if (v4 != 1)
    {
      v5 = 0;
    }

    if (v4 == 2)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_8;
    v7[3] = &unk_1E801E0D8;
    v7[4] = v2;
    [v3 orderFlowViewControllerForReason:0 content:v6 completion:v7];
  }
}

void __79__PKAccountUserDetailViewController__appendPhysicalCardSectionToConfiguration___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) _setPerformingAction:0 animated:1];
  if (v7)
  {
    v6 = [[PKNavigationController alloc] initWithRootViewController:v7];
    [(PKNavigationController *)v6 setModalPresentationStyle:2];
    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }

  else if (v5)
  {
    [*(a1 + 32) _presentDisplayableError:v5];
  }
}

- (void)_appendActionsSectionToConfiguration:(id)configuration
{
  v23[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"actions"];
  preferences = [(PKAccountUser *)self->_accountUser preferences];
  spendingEnabled = [preferences spendingEnabled];

  v8 = @"UNLOCK_USER_BUTTON";
  if (spendingEnabled)
  {
    v8 = @"LOCK_USER_BUTTON";
  }

  v9 = v8;
  objc_initWeak(&location, self);
  v10 = [PKButtonTableViewSettingsRow alloc];
  v11 = PKLocalizedFeatureString();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__PKAccountUserDetailViewController__appendActionsSectionToConfiguration___block_invoke;
  v19[3] = &unk_1E8020898;
  objc_copyWeak(&v20, &location);
  v21 = spendingEnabled;
  v12 = [(PKButtonTableViewSettingsRow *)v10 initWithIdentifier:@"lockUnlockAccountUser" title:v11 tapHandler:v19];

  v13 = [PKButtonTableViewSettingsRow alloc];
  v14 = PKLocalizedFeatureString();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__PKAccountUserDetailViewController__appendActionsSectionToConfiguration___block_invoke_4;
  v17[3] = &unk_1E8017FE8;
  objc_copyWeak(&v18, &location);
  v15 = [(PKButtonTableViewSettingsRow *)v13 initWithIdentifier:@"stopSharingAccountUser" title:v14 tapHandler:v17];

  [(PKButtonTableViewSettingsRow *)v15 setStyle:1];
  v23[0] = v12;
  v23[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [configurationCopy appendSection:v5 rows:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __74__PKAccountUserDetailViewController__appendActionsSectionToConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PKAccountUserDetailViewController__appendActionsSectionToConfiguration___block_invoke_2;
    aBlock[3] = &unk_1E8013F80;
    aBlock[4] = WeakRetained;
    v11 = *(a1 + 40);
    v4 = _Block_copy(aBlock);
    v5 = v4;
    if (*(a1 + 40) == 1)
    {
      (*(v4 + 2))(v4);
    }

    else
    {
      v6 = [v3[149] givenName];
      v7 = PKLocalizedFeatureString();
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __74__PKAccountUserDetailViewController__appendActionsSectionToConfiguration___block_invoke_3;
      v8[3] = &unk_1E8015170;
      v8[4] = v3;
      v9 = v5;
      [v3 _presentPasswordAuthorizationWithReason:v7 completion:{v8, v6}];
    }
  }
}

void __74__PKAccountUserDetailViewController__appendActionsSectionToConfiguration___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v7 = v5;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v7 = v5;
    v6 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }

  v5 = v7;
LABEL_6:
}

void __74__PKAccountUserDetailViewController__appendActionsSectionToConfiguration___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentStopSharingAlert];
    WeakRetained = v2;
  }
}

- (void)_presentCancelInvitationAlert
{
  givenName = [(CNContact *)self->_contact givenName];
  v4 = PKLocalizedFeatureString();
  v5 = PKLocalizedFeatureString();
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v5 preferredStyle:{0, givenName}];
  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedString(&cfstr_Cancel.isa);
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedFeatureString();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PKAccountUserDetailViewController__presentCancelInvitationAlert__block_invoke;
  v13[3] = &unk_1E80112E8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:2 handler:v13];
  [v6 addAction:v12];

  [(PKAccountUserDetailViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __66__PKAccountUserDetailViewController__presentCancelInvitationAlert__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69B85F8]);
  v3 = [*(*(a1 + 32) + 1104) applicationBaseURL];
  [v2 setBaseURL:v3];

  v4 = [*(*(a1 + 32) + 1104) applicationIdentifier];
  [v2 setApplicationIdentifier:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 1160);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKAccountUserDetailViewController__presentCancelInvitationAlert__block_invoke_2;
  v7[3] = &unk_1E8013908;
  v7[4] = v5;
  [v6 submitDeleteRequest:v2 completion:v7];
}

void __66__PKAccountUserDetailViewController__presentCancelInvitationAlert__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PKAccountUserDetailViewController__presentCancelInvitationAlert__block_invoke_3;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __66__PKAccountUserDetailViewController__presentCancelInvitationAlert__block_invoke_3(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) _presentDisplayableError:?];
  }

  return result;
}

- (void)_presentStopSharingAlert
{
  givenName = [(CNContact *)self->_contact givenName];
  v4 = PKLocalizedFeatureString();
  v5 = PKLocalizedFeatureString();
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v5 preferredStyle:{0, givenName, givenName}];
  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedString(&cfstr_Cancel.isa);
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedFeatureString();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PKAccountUserDetailViewController__presentStopSharingAlert__block_invoke;
  v13[3] = &unk_1E80112E8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:2 handler:v13];
  [v6 addAction:v12];

  [(PKAccountUserDetailViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __61__PKAccountUserDetailViewController__presentStopSharingAlert__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v4 = [*(v2 + 1080) altDSID];
  v5 = [*(*(a1 + 32) + 1072) accountIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PKAccountUserDetailViewController__presentStopSharingAlert__block_invoke_2;
  v6[3] = &unk_1E8013908;
  v6[4] = *(a1 + 32);
  [v3 deleteAccountUserWithAltDSID:v4 forAccountWithIdentifier:v5 completion:v6];
}

void __61__PKAccountUserDetailViewController__presentStopSharingAlert__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PKAccountUserDetailViewController__presentStopSharingAlert__block_invoke_3;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __61__PKAccountUserDetailViewController__presentStopSharingAlert__block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _presentDisplayableError:?];
  }

  else
  {
    v5 = [v2 navigationController];
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)_presentAccountUserInvitation
{
  if (self->_accountUserInvitation && !self->_performingAction)
  {
    [(PKAccountUserDetailViewController *)self _setPerformingAction:1 animated:1];
    v3 = objc_alloc(MEMORY[0x1E69B8D48]);
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    v5 = [v3 initWithWebService:mEMORY[0x1E69B8EF8]];

    v6 = [PKApplyControllerConfiguration alloc];
    style = self->_style;
    v8 = 3;
    if (style != 1)
    {
      v8 = 0;
    }

    if (style == 2)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = [(PKApplyControllerConfiguration *)v6 initWithSetupDelegate:0 context:v9 provisioningController:v5];
    [(PKApplyControllerConfiguration *)v10 setFeatureApplication:self->_accountUserInvitation];
    v11 = [[PKApplyController alloc] initWithApplyConfiguration:v10];
    applyController = self->_applyController;
    self->_applyController = v11;

    v13 = self->_applyController;
    v14 = [MEMORY[0x1E69B8330] analyticsAccountTypeForAccount:self->_account];
    [(PKApplyController *)v13 setAnalyticsExistingAccountType:v14];

    v15 = self->_applyController;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__PKAccountUserDetailViewController__presentAccountUserInvitation__block_invoke;
    v16[3] = &unk_1E8011D00;
    v16[4] = self;
    [(PKApplyController *)v15 nextViewControllerWithCompletion:v16];
  }
}

void __66__PKAccountUserDetailViewController__presentAccountUserInvitation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [[PKNavigationController alloc] initWithRootViewController:v8];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
  }

  v7 = v6;
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];

LABEL_6:
  [*(a1 + 32) _setPerformingAction:0 animated:1];
}

- (void)_updateTransactionLimit:(id)limit
{
  v4 = limit != 0;
  accountUser = self->_accountUser;
  limitCopy = limit;
  preferences = [(PKAccountUser *)accountUser preferences];
  v9 = [preferences mutableCopy];

  [v9 setTransactionSpendLimitEnabled:v4];
  [v9 setTransactionSpendLimitAmount:limitCopy];

  v8 = [v9 copy];
  [(PKAccountUserDetailViewController *)self _updatePreferences:v8];
}

- (void)_updateMonthlySpendLimit:(id)limit
{
  v4 = limit != 0;
  accountUser = self->_accountUser;
  limitCopy = limit;
  preferences = [(PKAccountUser *)accountUser preferences];
  v9 = [preferences mutableCopy];

  [v9 setMonthlySpendLimitEnabled:v4];
  [v9 setMonthlySpendLimitAmount:limitCopy];

  v8 = [v9 copy];
  [(PKAccountUserDetailViewController *)self _updatePreferences:v8];
}

- (void)_updateShowAvailableCredit:(BOOL)credit
{
  creditCopy = credit;
  preferences = [(PKAccountUser *)self->_accountUser preferences];
  v7 = [preferences mutableCopy];

  [v7 setShowAvailableCredit:creditCopy];
  v6 = [v7 copy];
  [(PKAccountUserDetailViewController *)self _updatePreferences:v6];
}

- (void)_updateSpendingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  preferences = [(PKAccountUser *)self->_accountUser preferences];
  v7 = [preferences mutableCopy];

  [v7 setSpendingEnabled:enabledCopy];
  v6 = [v7 copy];
  [(PKAccountUserDetailViewController *)self _updatePreferences:v6];
}

- (void)_updateMonthlySpendNotificationThreshold:(id)threshold
{
  accountUser = self->_accountUser;
  thresholdCopy = threshold;
  notificationSettings = [(PKAccountUser *)accountUser notificationSettings];
  v8 = [notificationSettings mutableCopy];

  [v8 setMonthlySpendNotificationThreshold:thresholdCopy];
  v7 = [v8 copy];
  [(PKAccountUserDetailViewController *)self _updateNotificationSettings:v7];
}

- (void)_updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = [preferencesCopy copy];
  pendingAccountUserPreferences = self->_pendingAccountUserPreferences;
  self->_pendingAccountUserPreferences = v5;

  [(PKAccountUserDetailViewController *)self _setPerformingAction:1 animated:1];
  accountService = self->_accountService;
  v8 = [preferencesCopy copy];

  altDSID = [(PKAccountUser *)self->_accountUser altDSID];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PKAccountUserDetailViewController__updatePreferences___block_invoke;
  v11[3] = &unk_1E80208C0;
  v11[4] = self;
  [(PKAccountService *)accountService updateAccountUserPreferences:v8 forAccountUserWithAltDSID:altDSID forAccountWithIdentifier:accountIdentifier completion:v11];
}

void __56__PKAccountUserDetailViewController__updatePreferences___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKAccountUserDetailViewController__updatePreferences___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __56__PKAccountUserDetailViewController__updatePreferences___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    objc_storeStrong(v2 + 135, v3);
    v4 = *(a1 + 40);
    v5 = *(v4 + 1088);
    *(v4 + 1088) = 0;

    v6 = *(a1 + 40);
    v7 = *(v6 + 1096);
    *(v6 + 1096) = 0;
  }

  else
  {
    [v2 _presentDisplayableError:*(a1 + 48)];
  }

  [*(a1 + 40) _setPerformingAction:0 animated:1];
  v8 = *(a1 + 40);

  return [v8 _updateConfigurationAnimated:1];
}

- (void)_updateTransactionNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  notificationSettings = [(PKAccountUser *)self->_accountUser notificationSettings];
  v7 = [notificationSettings mutableCopy];

  [v7 setTransactionNotificationsEnabled:enabledCopy];
  v6 = [v7 copy];
  [(PKAccountUserDetailViewController *)self _updateNotificationSettings:v6];
}

- (void)_updateTransactionNotificationThreshold:(id)threshold
{
  accountUser = self->_accountUser;
  thresholdCopy = threshold;
  notificationSettings = [(PKAccountUser *)accountUser notificationSettings];
  v8 = [notificationSettings mutableCopy];

  [v8 setTransactionNotificationThreshold:thresholdCopy];
  v7 = [v8 copy];
  [(PKAccountUserDetailViewController *)self _updateNotificationSettings:v7];
}

- (void)_updateNotificationSettings:(id)settings
{
  settingsCopy = settings;
  v5 = [settingsCopy copy];
  pendingAccountUserNotificationSettings = self->_pendingAccountUserNotificationSettings;
  self->_pendingAccountUserNotificationSettings = v5;

  [(PKAccountUserDetailViewController *)self _setPerformingAction:1 animated:1];
  accountService = self->_accountService;
  altDSID = [(PKAccountUser *)self->_accountUser altDSID];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PKAccountUserDetailViewController__updateNotificationSettings___block_invoke;
  v10[3] = &unk_1E80208C0;
  v10[4] = self;
  [(PKAccountService *)accountService updateAccountUserNotificationSettings:settingsCopy forAccountUserWithAltDSID:altDSID forAccountWithIdentifier:accountIdentifier completion:v10];
}

void __65__PKAccountUserDetailViewController__updateNotificationSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKAccountUserDetailViewController__updateNotificationSettings___block_invoke_2;
  block[3] = &unk_1E8010A88;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __65__PKAccountUserDetailViewController__updateNotificationSettings___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    objc_storeStrong(v2 + 135, v3);
    v4 = *(a1 + 40);
    v5 = *(v4 + 1088);
    *(v4 + 1088) = 0;

    v6 = *(a1 + 40);
    v7 = *(v6 + 1096);
    *(v6 + 1096) = 0;
  }

  else
  {
    [v2 _presentDisplayableError:*(a1 + 48)];
  }

  [*(a1 + 40) _setPerformingAction:0 animated:1];
  v8 = *(a1 + 40);

  return [v8 _updateConfigurationAnimated:1];
}

- (void)_setPerformingAction:(BOOL)action animated:(BOOL)animated
{
  if (self->_performingAction == !action)
  {
    self->_performingAction = action;
    [(PKAccountUserDetailViewController *)self _updateConfigurationAnimated:animated];
  }
}

- (void)_presentDisplayableError:(id)error
{
  v4 = PKAlertForDisplayableErrorWithHandlers(error, 0, 0, 0);
  [(PKAccountUserDetailViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_presentPeerPaymentFamilySharingSetupForFamilyMember:(id)member
{
  if (member)
  {
    memberCopy = member;
    v5 = [PKPeerPaymentAssociatedAccountsController alloc];
    familyMemberCollection = self->_familyMemberCollection;
    avatarManager = self->_avatarManager;
    v8 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    style = self->_style;
    v10 = 3;
    if (style != 1)
    {
      v10 = 0;
    }

    if (style == 2)
    {
      v11 = 4;
    }

    else
    {
      v11 = v10;
    }

    v12 = [(PKPeerPaymentAssociatedAccountsController *)v5 initWithFamilyCollection:familyMemberCollection avatarManager:avatarManager passLibraryDataProvider:v8 context:v11];
    associatedAccountsController = self->_associatedAccountsController;
    self->_associatedAccountsController = v12;

    v16 = [[PKPeerPaymentAssociatedAccountPresentationContext alloc] initWithPKFamilyMember:memberCopy setupType:1];
    v14 = self->_associatedAccountsController;
    navigationController = [(PKAccountUserDetailViewController *)self navigationController];
    [(PKPeerPaymentAssociatedAccountsController *)v14 presentAssociatedAccountsFlowWithPresentationContext:v16 fromNavigationController:navigationController];
  }
}

- (void)_presentPasswordAuthorizationWithReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = MEMORY[0x1E698DE80];
    reasonCopy = reason;
    v9 = objc_alloc_init(v7);
    [v9 setPresentingViewController:self];
    appleID = [(PKAppleAccountInformation *)self->_appleAccountInformation appleID];
    [v9 setUsername:appleID];

    aaAlternateDSID = [(PKAppleAccountInformation *)self->_appleAccountInformation aaAlternateDSID];
    [v9 setAltDSID:aaAlternateDSID];

    [v9 setIsUsernameEditable:0];
    [v9 setShouldPromptForPasswordOnly:1];
    [v9 setAuthenticationType:2];
    [v9 setReason:reasonCopy];

    v12 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__PKAccountUserDetailViewController__presentPasswordAuthorizationWithReason_completion___block_invoke;
    v13[3] = &unk_1E80208E8;
    v13[4] = self;
    v14 = completionCopy;
    [v12 authenticateWithContext:v9 completion:v13];
  }
}

void __88__PKAccountUserDetailViewController__presentPasswordAuthorizationWithReason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKAccountUserDetailViewController__presentPasswordAuthorizationWithReason_completion___block_invoke_2;
  block[3] = &unk_1E8014918;
  v8 = v4;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__PKAccountUserDetailViewController__presentPasswordAuthorizationWithReason_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v15 = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Request for user authentication returned with error: %@", &v15, 0xCu);
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v8 = *(*(a1 + 48) + 16);
    goto LABEL_8;
  }

  v5 = [v4 domain];
  v6 = *MEMORY[0x1E698DB28];
  if ([v5 isEqual:*MEMORY[0x1E698DB28]])
  {
    v7 = [*(a1 + 32) code];

    if (v7 == -7003)
    {
      v8 = *(*(a1 + 48) + 16);
LABEL_8:
      v8();
      return;
    }
  }

  else
  {
  }

  v9 = [*(a1 + 32) domain];
  if ([v9 isEqual:v6])
  {
    v10 = [*(a1 + 32) code];

    if (v10 == -7005)
    {
      v11 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
      v12 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
      v13 = PKDisplayableErrorCustom();

      (*(*(a1 + 48) + 16))();
      return;
    }
  }

  else
  {
  }

  v14 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", *(a1 + 32), [*(*(a1 + 40) + 1072) feature], 0, 0);
  (*(*(a1 + 48) + 16))();
}

- (id)_footerViewForPeerPaymentAccountSetup
{
  v3 = objc_alloc_init(PKFooterHyperlinkView);
  givenName = [(CNContact *)self->_contact givenName];
  currentUser = [(PKFamilyMemberCollection *)self->_familyMemberCollection currentUser];
  isOrganizer = [currentUser isOrganizer];

  v7 = PKLocalizedFeatureString();
  PKLocalizedFeatureString();
  if (isOrganizer)
    v8 = {;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PKAccountUserDetailViewController__footerViewForPeerPaymentAccountSetup__block_invoke_2;
    aBlock[3] = &unk_1E8010970;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
  }

  else
    v8 = {;
    v9 = &__block_literal_global_339;
  }

  v10 = PKAttributedStringByAddingLinkToSubstring(v8, v7, 0);
  [(PKFooterHyperlinkView *)v3 setAttributedText:v10, givenName, v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKAccountUserDetailViewController__footerViewForPeerPaymentAccountSetup__block_invoke_4;
  v13[3] = &unk_1E8014E90;
  v14 = v9;
  v11 = v9;
  [(PKFooterHyperlinkView *)v3 setAction:v13];

  return v3;
}

void __74__PKAccountUserDetailViewController__footerViewForPeerPaymentAccountSetup__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1112);
  v4 = [*(v2 + 1080) altDSID];
  v5 = [v3 familyMemberForAltDSID:v4];

  [*(a1 + 32) _presentPeerPaymentFamilySharingSetupForFamilyMember:v5];
}

void __74__PKAccountUserDetailViewController__footerViewForPeerPaymentAccountSetup__block_invoke_3()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/kb/HT211324"];
  PKOpenURL();
}

@end