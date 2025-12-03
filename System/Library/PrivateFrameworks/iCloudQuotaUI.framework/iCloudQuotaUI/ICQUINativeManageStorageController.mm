@interface ICQUINativeManageStorageController
- (BOOL)_didFetchBackupSpecifier;
- (BOOL)_didFetchPhotosSpecifier;
- (ICQUINativeManageStorageController)initWithAccountManager:(id)manager summary:(id)summary ruiDelegate:(id)delegate;
- (id)account;
- (id)actionInfoForSpecifier:(id)specifier;
- (id)icqLinkForSpecifier:(id)specifier;
- (id)specifiers;
- (id)urlForSpecifier:(id)specifier;
- (void)_fetchStorageSummaryIgnoreCache:(BOOL)cache completion:(id)completion;
- (void)_launchBackupDrilldown;
- (void)_launchDeeplinksIfNeeded;
- (void)_launchLocalBackupController;
- (void)_launchPhotosDrilldown;
- (void)_startSpinnerInSpecifier:(id)specifier;
- (void)_stopSpinnerInSpecifier:(id)specifier;
- (void)_updateStorageSummaryAndNotify;
- (void)dealloc;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)launchFreshmint;
- (void)launchFreshmintFlowForLink:(id)link;
- (void)launchFreshmintFlowForSpecifier:(id)specifier;
- (void)launchICQLinkFromSpecifier:(id)specifier;
- (void)launchLegacyPurchase;
- (void)launchLegacyPurchaseFromSpecifier:(id)specifier;
- (void)liftUIPresenterDidCancel:(id)cancel;
- (void)liftUIPresenterDidCancel:(id)cancel userInfo:(id)info;
- (void)liftUIPresenterDidComplete:(id)complete;
- (void)liftUIPresenterDidComplete:(id)complete userInfo:(id)info;
- (void)loadDrilldownFromSpecifier:(id)specifier;
- (void)loadLiftUIDrilldownFromSpecifier:(id)specifier;
- (void)loadRemoteUIDrilldownFromSpecifier:(id)specifier;
- (void)presentLiftUISheetFromSpecifier:(id)specifier;
- (void)presentRemoteUISheetFromSpecifier:(id)specifier;
- (void)presentServerUISheetFromSpecifier:(id)specifier;
- (void)provider:(id)provider loadActionFromSpecifier:(id)specifier;
- (void)refreshAppList;
- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)showAlertFromSpecifier:(id)specifier;
- (void)specifierProvider:(id)provider showViewController:(id)controller;
- (void)startFamilySharingFromSpecifier:(id)specifier;
- (void)stopActiveSpecifier;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICQUINativeManageStorageController

- (ICQUINativeManageStorageController)initWithAccountManager:(id)manager summary:(id)summary ruiDelegate:(id)delegate
{
  managerCopy = manager;
  summaryCopy = summary;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = ICQUINativeManageStorageController;
  v12 = [(ICQUINativeManageStorageController *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountManager, manager);
    objc_storeStrong(&v13->_storageSummary, summary);
    objc_storeStrong(&v13->_ruiDelegate, delegate);
    v14 = [[ICQUIManageStorageHeaderSpecifierProvider alloc] initWithAccountManager:managerCopy storageSummary:summaryCopy];
    headerSpecifierProvider = v13->_headerSpecifierProvider;
    v13->_headerSpecifierProvider = v14;

    [(AAUISpecifierProvider *)v13->_headerSpecifierProvider setDelegate:v13];
    v16 = [[ICQUIManageStorageTipSpecifierProvider alloc] initWithAccountManager:v13->_accountManager presenter:v13 summary:summaryCopy];
    tipSpecifierProvider = v13->_tipSpecifierProvider;
    v13->_tipSpecifierProvider = v16;

    [(AAUISpecifierProvider *)v13->_tipSpecifierProvider setDelegate:v13];
    v18 = [ICQUIManageStorageListSpecifierProvider alloc];
    navigationItem = [(ICQUINativeManageStorageController *)v13 navigationItem];
    v20 = [(ICQUIManageStorageListSpecifierProvider *)v18 initWithAccountManager:managerCopy navigationItem:navigationItem];
    appListSpecifierProvider = v13->_appListSpecifierProvider;
    v13->_appListSpecifierProvider = v20;

    [(AAUISpecifierProvider *)v13->_appListSpecifierProvider setDelegate:v13];
    manageStoragePage = [summaryCopy manageStoragePage];
    title = [manageStoragePage title];
    [(ICQUINativeManageStorageController *)v13 setTitle:title];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__fetchStorageSummary name:@"QuotaDidChange" object:0];
  }

  return v13;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ICQUINativeManageStorageController;
  [(ICQUINativeManageStorageController *)&v5 viewWillDisappear:disappear];
  ruiDelegate = [(ICQUINativeManageStorageController *)self ruiDelegate];
  [ruiDelegate cancelRemoteUI];
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (void)dealloc
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICQUINativeManageStorageController *)v3 dealloc:v4];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v12.receiver = self;
  v12.super_class = ICQUINativeManageStorageController;
  [(ICQUINativeManageStorageController *)&v12 dealloc];
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    headerSpecifierProvider = [(ICQUINativeManageStorageController *)self headerSpecifierProvider];
    specifiers = [headerSpecifierProvider specifiers];
    v9 = [specifiers copy];

    tipSpecifierProvider = [(ICQUINativeManageStorageController *)self tipSpecifierProvider];
    specifiers2 = [tipSpecifierProvider specifiers];
    v12 = [specifiers2 copy];

    appListSpecifierProvider = [(ICQUINativeManageStorageController *)self appListSpecifierProvider];
    specifiers3 = [appListSpecifierProvider specifiers];
    v15 = [specifiers3 copy];

    if (v9)
    {
      [v6 addObjectsFromArray:v9];
    }

    if (v12)
    {
      [v6 addObjectsFromArray:v12];
    }

    if (v15)
    {
      [v6 addObjectsFromArray:v15];
    }

    v16 = [v6 copy];
    v17 = *(&self->super.super.super.super.super.isa + v2);
    *(&self->super.super.super.super.super.isa + v2) = v16;

    v4 = *(&self->super.super.super.super.super.isa + v2);
  }

  return v4;
}

- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  specifiersCopy = specifiers;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = providerCopy;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Reloading specifiers for provider %@", &v17, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  specifiers = [providerCopy specifiers];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ([specifiersCopy count])
  {
    specifiers2 = [providerCopy specifiers];
    v14 = [specifiers2 count];

    if (!v14)
    {
      [(ICQUINativeManageStorageController *)self removeContiguousSpecifiers:specifiersCopy animated:animatedCopy];
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ([specifiersCopy count] >= 3)
    {
      [(ICQUINativeManageStorageController *)self reloadSpecifiers];
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    specifiers3 = [providerCopy specifiers];
    [(ICQUINativeManageStorageController *)self replaceContiguousSpecifiers:specifiersCopy withSpecifiers:specifiers3 animated:animatedCopy];

    if (isKindOfClass)
    {
LABEL_13:
      [(ICQUINativeManageStorageController *)self _launchDeeplinksIfNeeded];
    }
  }

  else
  {
    if (isKindOfClass)
    {
      [(ICQUINativeManageStorageController *)self addSpecifiersFromArray:specifiers animated:animatedCopy];
      goto LABEL_13;
    }

    numberOfGroups = [(ICQUINativeManageStorageController *)self numberOfGroups];
    if (numberOfGroups < 2)
    {
      [(ICQUINativeManageStorageController *)self addSpecifiersFromArray:specifiers animated:animatedCopy];
    }

    else
    {
      [(ICQUINativeManageStorageController *)self insertContiguousSpecifiers:specifiers atEndOfGroup:numberOfGroups - 2 animated:animatedCopy];
    }
  }

LABEL_14:
}

- (void)specifierProvider:(id)provider showViewController:(id)controller
{
  providerCopy = provider;
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x277D75D28] ICQUIUpsellPrefferredPresentationSize];
    [controllerCopy setPreferredContentSize:?];
    [(UIViewController *)self presentPreferredSizeWithViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(ICQUINativeManageStorageController *)self showViewController:controllerCopy sender:providerCopy];
  }
}

- (void)_startSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICQUINativeManageStorageController *)self setActiveSpecifier:specifierCopy];
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];

  if (v7)
  {
    v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [v5 setColor:systemGrayColor];

    [v5 startAnimating];
    [v7 setAccessoryView:v5];
  }
}

- (void)_stopSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
  if (v4)
  {
    v5 = [specifierCopy propertyForKey:*MEMORY[0x277D3FEB0]];
    [v4 setAccessoryView:v5];
  }

  [(ICQUINativeManageStorageController *)self setActiveSpecifier:0];
}

- (void)stopActiveSpecifier
{
  activeSpecifier = [(ICQUINativeManageStorageController *)self activeSpecifier];
  [(ICQUINativeManageStorageController *)self _stopSpinnerInSpecifier:activeSpecifier];
}

- (void)provider:(id)provider loadActionFromSpecifier:(id)specifier
{
  v15 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICQUINativeManageStorageController provider:v6 loadActionFromSpecifier:?];
  }

  v7 = [(ICQUINativeManageStorageController *)self icqLinkForSpecifier:specifierCopy];
  action = [v7 action];
  v9 = [specifierCopy objectForKeyedSubscript:@"DRILLDOWN_APP_INFO"];

  v10 = [(ICQUINativeManageStorageController *)self actionInfoForSpecifier:specifierCopy];
  confirmation = [v10 confirmation];

  if (confirmation)
  {
    [(ICQUINativeManageStorageController *)self showAlertFromSpecifier:specifierCopy];
  }

  else
  {
    if (v9 || action == 110)
    {
      [(ICQUINativeManageStorageController *)self loadDrilldownFromSpecifier:specifierCopy];
      goto LABEL_11;
    }

    if ((action - 111) <= 0xA)
    {
      if (((1 << (action - 111)) & 0x612) != 0)
      {
        [(ICQUINativeManageStorageController *)self presentServerUISheetFromSpecifier:specifierCopy];
        goto LABEL_11;
      }

      if (action == 111)
      {
        [(ICQUINativeManageStorageController *)self startFamilySharingFromSpecifier:specifierCopy];
        goto LABEL_11;
      }

      if (action == 119)
      {
        [(ICQUINativeManageStorageController *)self launchLegacyPurchaseFromSpecifier:specifierCopy];
        goto LABEL_11;
      }
    }

    if (action != 109)
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Unhandled action in link %@, falling back to default icq flow", &v13, 0xCu);
      }
    }

    [(ICQUINativeManageStorageController *)self launchICQLinkFromSpecifier:specifierCopy];
  }

LABEL_11:
}

- (void)launchICQLinkFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  activeSpecifier = [(ICQUINativeManageStorageController *)self activeSpecifier];

  if (activeSpecifier)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICQUINativeManageStorageController launchICQLinkFromSpecifier:];
    }
  }

  else
  {
    v6 = [specifierCopy objectForKeyedSubscript:@"ACTION_INFO"];
    icqLink = [v6 icqLink];
    [icqLink performAction];
  }
}

- (void)launchLegacyPurchaseFromSpecifier:(id)specifier
{
  activeSpecifier = [(ICQUINativeManageStorageController *)self activeSpecifier];

  if (activeSpecifier)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICQUINativeManageStorageController launchICQLinkFromSpecifier:];
    }
  }

  else
  {

    [(ICQUINativeManageStorageController *)self launchLegacyPurchase];
  }
}

- (void)launchLegacyPurchase
{
  ruiDelegate = [(ICQUINativeManageStorageController *)self ruiDelegate];
  [ruiDelegate beginLegacyFlow];
}

- (void)presentServerUISheetFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:@"ACTION_INFO"];
  icqLink = [v5 icqLink];
  if ([icqLink action] == 112 || objc_msgSend(icqLink, "action") == 110)
  {
    [(ICQUINativeManageStorageController *)self presentRemoteUISheetFromSpecifier:specifierCopy];
  }

  else if ([icqLink action] == 115)
  {
    [(ICQUINativeManageStorageController *)self presentLiftUISheetFromSpecifier:specifierCopy];
  }

  else if ([icqLink action] == 121 || objc_msgSend(icqLink, "action") == 120)
  {
    [(ICQUINativeManageStorageController *)self launchFreshmintFlowForSpecifier:specifierCopy];
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICQUINativeManageStorageController presentServerUISheetFromSpecifier:];
    }
  }
}

- (void)loadDrilldownFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  activeSpecifier = [(ICQUINativeManageStorageController *)self activeSpecifier];

  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (activeSpecifier)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICQUINativeManageStorageController launchICQLinkFromSpecifier:];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICQUINativeManageStorageController loadDrilldownFromSpecifier:];
    }

    table = [(ICQUINativeManageStorageController *)self table];
    table2 = [(ICQUINativeManageStorageController *)self table];
    indexPathForSelectedRow = [table2 indexPathForSelectedRow];
    [table deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

    v7 = [(ICQUINativeManageStorageController *)self icqLinkForSpecifier:specifierCopy];
    if ([v7 action] == 112 || objc_msgSend(v7, "action") == 110)
    {
      [(ICQUINativeManageStorageController *)self loadRemoteUIDrilldownFromSpecifier:specifierCopy];
    }

    else if ([v7 action] == 115)
    {
      [(ICQUINativeManageStorageController *)self loadLiftUIDrilldownFromSpecifier:specifierCopy];
    }

    else
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ICQUINativeManageStorageController loadDrilldownFromSpecifier:v7];
      }
    }
  }
}

- (void)loadLiftUIDrilldownFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICQUINativeManageStorageController loadLiftUIDrilldownFromSpecifier:];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [(ICQUINativeManageStorageController *)self urlForSpecifier:specifierCopy];
  v7 = [ICQLiftUIPresenter alloc];
  account = [(ICQUINativeManageStorageController *)self account];
  v9 = [(ICQLiftUIPresenter *)v7 initWithURL:v6 account:account data:0];
  [(ICQUINativeManageStorageController *)self setLiftUIPresenter:v9];

  liftUIPresenter = [(ICQUINativeManageStorageController *)self liftUIPresenter];
  [liftUIPresenter setDelegate:self];

  liftUIPresenter2 = [(ICQUINativeManageStorageController *)self liftUIPresenter];
  navigationController = [(ICQUINativeManageStorageController *)self navigationController];
  v13 = [liftUIPresenter2 pushInNavigationController:navigationController animated:1];

  if ((v13 & 1) == 0)
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider _launchLiftUIWithURL:];
    }

    [(ICQUINativeManageStorageController *)self setLiftUIPresenter:0];
  }
}

- (void)loadRemoteUIDrilldownFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICQUINativeManageStorageController loadRemoteUIDrilldownFromSpecifier:];
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [(ICQUINativeManageStorageController *)self urlForSpecifier:specifierCopy];
  if (v6)
  {
    ruiDelegate = [(ICQUINativeManageStorageController *)self ruiDelegate];
    [ruiDelegate setNextSignpostId:@"MANAGE_DRILLDOWN"];

    [(ICQUINativeManageStorageController *)self _startSpinnerInSpecifier:specifierCopy];
    account = [(ICQUINativeManageStorageController *)self account];
    v9 = [ICQCloudStorageInfo backupInfoHeadersForAccount:account];

    ruiDelegate2 = [(ICQUINativeManageStorageController *)self ruiDelegate];
    [ruiDelegate2 loadURL:v6 postBody:0 additionalHeaders:v9];
  }

  else
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICQUINativeManageStorageController loadRemoteUIDrilldownFromSpecifier:specifierCopy];
    }
  }
}

- (void)presentRemoteUISheetFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICQUINativeManageStorageController presentRemoteUISheetFromSpecifier:];
  }

  remoteUIPresenter = [(ICQUINativeManageStorageController *)self remoteUIPresenter];

  if (!remoteUIPresenter)
  {
    v7 = [ICQUIRemoteUIPresenter alloc];
    account = [(ICQUINativeManageStorageController *)self account];
    v9 = [(ICQUIRemoteUIPresenter *)v7 initWithAccount:account presenter:self];
    [(ICQUINativeManageStorageController *)self setRemoteUIPresenter:v9];
  }

  v10 = [(ICQUINativeManageStorageController *)self urlForSpecifier:specifierCopy];
  remoteUIPresenter2 = [(ICQUINativeManageStorageController *)self remoteUIPresenter];
  [remoteUIPresenter2 beginRUIFlowWithURL:v10];
}

- (void)presentLiftUISheetFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICQUINativeManageStorageController presentLiftUISheetFromSpecifier:];
  }

  v6 = [(ICQUINativeManageStorageController *)self urlForSpecifier:specifierCopy];
  v7 = [ICQLiftUIPresenter alloc];
  account = [(ICQUINativeManageStorageController *)self account];
  v9 = [(ICQLiftUIPresenter *)v7 initWithURL:v6 account:account data:0];
  [(ICQUINativeManageStorageController *)self setLiftUIPresenter:v9];

  liftUIPresenter = [(ICQUINativeManageStorageController *)self liftUIPresenter];
  [liftUIPresenter setDelegate:self];

  liftUIPresenter2 = [(ICQUINativeManageStorageController *)self liftUIPresenter];
  navigationController = [(ICQUINativeManageStorageController *)self navigationController];
  v13 = [liftUIPresenter2 presentInViewController:navigationController animated:1];

  if ((v13 & 1) == 0)
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICQUITipSpecifierProvider _launchLiftUIWithURL:];
    }

    [(ICQUINativeManageStorageController *)self setLiftUIPresenter:0];
  }
}

- (id)actionInfoForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy objectForKeyedSubscript:@"DRILLDOWN_APP_INFO"];
  action = [v4 action];
  v6 = action;
  if (action)
  {
    v7 = action;
  }

  else
  {
    v7 = [specifierCopy objectForKeyedSubscript:@"ACTION_INFO"];
  }

  v8 = v7;

  return v8;
}

- (id)icqLinkForSpecifier:(id)specifier
{
  v3 = [(ICQUINativeManageStorageController *)self actionInfoForSpecifier:specifier];
  icqLink = [v3 icqLink];

  return icqLink;
}

- (id)urlForSpecifier:(id)specifier
{
  v3 = [(ICQUINativeManageStorageController *)self icqLinkForSpecifier:specifier];
  serverUIURL = [v3 serverUIURL];
  v5 = serverUIURL;
  if (serverUIURL)
  {
    actionURL = serverUIURL;
  }

  else
  {
    actionURL = [v3 actionURL];
  }

  v7 = actionURL;

  return v7;
}

- (void)refreshAppList
{
  appListSpecifierProvider = [(ICQUINativeManageStorageController *)self appListSpecifierProvider];
  [appListSpecifierProvider setSpecifiers:0];
}

- (void)launchFreshmintFlowForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICQUINativeManageStorageController launchFreshmintFlowForSpecifier:];
  }

  [(ICQUINativeManageStorageController *)self _startSpinnerInSpecifier:specifierCopy];
  v6 = [specifierCopy objectForKeyedSubscript:@"DRILLDOWN_APP_INFO"];
  action = [v6 action];
  v8 = action;
  if (action)
  {
    v9 = action;
  }

  else
  {
    v9 = [specifierCopy objectForKeyedSubscript:@"ACTION_INFO"];
  }

  v10 = v9;

  icqLink = [v10 icqLink];
  [(ICQUINativeManageStorageController *)self launchFreshmintFlowForLink:icqLink];
}

- (void)launchFreshmintFlowForLink:(id)link
{
  linkCopy = link;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICQUINativeManageStorageController launchFreshmintFlowForLink:];
  }

  freshmintManager = [(ICQUINativeManageStorageController *)self freshmintManager];

  if (!freshmintManager)
  {
    v7 = objc_alloc_init(ICQPreferencesFreshmintManager);
    [(ICQUINativeManageStorageController *)self setFreshmintManager:v7];

    freshmintManager2 = [(ICQUINativeManageStorageController *)self freshmintManager];
    [freshmintManager2 setDelegate:self];
  }

  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ICQUINativeManageStorageController_launchFreshmintFlowForLink___block_invoke;
  v11[3] = &unk_27A65C988;
  v12 = linkCopy;
  selfCopy = self;
  v10 = linkCopy;
  [mEMORY[0x277D7F390] getOfferWithCompletion:v11];
}

void __65__ICQUINativeManageStorageController_launchFreshmintFlowForLink___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ICQUINativeManageStorageController_launchFreshmintFlowForLink___block_invoke_2;
  block[3] = &unk_27A65B108;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__ICQUINativeManageStorageController_launchFreshmintFlowForLink___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) action] == 121)
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 40) freshmintManager];
    [v3 setOffer:v2];

    v8 = [*(a1 + 40) freshmintManager];
    [v8 beginFlowWithICQLink:*(a1 + 32) completion:0];
  }

  else
  {
    v8 = [*(a1 + 40) freshmintManager];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(a1 + 32) serverUIURL];
    if (v6)
    {
      [v8 beginFlowWithDelegate:v5 offer:v4 url:v6 completion:0];
    }

    else
    {
      v7 = [*(a1 + 32) actionURL];
      [v8 beginFlowWithDelegate:v5 offer:v4 url:v7 completion:0];
    }
  }
}

- (void)launchFreshmint
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  storageSummary = [(ICQUINativeManageStorageController *)self storageSummary];
  manageStoragePage = [storageSummary manageStoragePage];
  specifiers = [manageStoragePage specifiers];

  v6 = [specifiers countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(specifiers);
      }

      actions = [*(*(&v25 + 1) + 8 * v9) actions];
      firstObject = [actions firstObject];
      icqLink = [firstObject icqLink];

      if ([(ICQUINativeManageStorageController *)self _isFreshmintLink:icqLink])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [specifiers countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    storageSummary2 = [(ICQUINativeManageStorageController *)self storageSummary];
    manageStoragePage2 = [storageSummary2 manageStoragePage];
    specifiers = [manageStoragePage2 tips];

    v15 = [specifiers countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (!v15)
    {
LABEL_17:

      [(ICQUINativeManageStorageController *)self launchFreshmintFlowForLink:0];
      return;
    }

    v16 = v15;
    v17 = *v22;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(specifiers);
      }

      actions2 = [*(*(&v21 + 1) + 8 * v18) actions];
      firstObject2 = [actions2 firstObject];
      icqLink = [firstObject2 icqLink];

      if ([(ICQUINativeManageStorageController *)self _isFreshmintLink:icqLink])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [specifiers countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v16)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  [(ICQUINativeManageStorageController *)self launchFreshmintFlowForLink:icqLink];
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ICQUINativeManageStorageController upgradeFlowManagerDidCancel:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ICQUINativeManageStorageController_upgradeFlowManagerDidCancel___block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ICQUINativeManageStorageController upgradeFlowManagerDidComplete:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ICQUINativeManageStorageController_upgradeFlowManagerDidComplete___block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__ICQUINativeManageStorageController_upgradeFlowManagerDidComplete___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateStorageSummaryAndNotify];
  v2 = *(a1 + 32);

  return [v2 stopActiveSpecifier];
}

- (void)_fetchStorageSummaryIgnoreCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v7 = objc_alloc(MEMORY[0x277D7F338]);
  account = [(ICQUINativeManageStorageController *)self account];
  v19 = [v7 initWithAccount:account];

  [v15[5] setShouldIgnoreCache:cacheCopy];
  v9 = v15[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__ICQUINativeManageStorageController__fetchStorageSummaryIgnoreCache_completion___block_invoke;
  v11[3] = &unk_27A65C9D8;
  v11[4] = self;
  v10 = completionCopy;
  v12 = v10;
  v13 = &v14;
  [v9 fetchStorageSummaryWithCompletion:v11];

  _Block_object_dispose(&v14, 8);
}

void __81__ICQUINativeManageStorageController__fetchStorageSummaryIgnoreCache_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__ICQUINativeManageStorageController__fetchStorageSummaryIgnoreCache_completion___block_invoke_2;
  block[3] = &unk_27A65C9B0;
  v7 = a1[4];
  v8 = a1[5];
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v16 = a1[6];
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __81__ICQUINativeManageStorageController__fetchStorageSummaryIgnoreCache_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setStorageSummary:?];
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 48));
  }

  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)_updateStorageSummaryAndNotify
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"QuotaDidChange" object:0];
}

- (void)startFamilySharingFromSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Launching start family sharing flow.", buf, 2u);
  }

  [(ICQUINativeManageStorageController *)self _startSpinnerInSpecifier:specifierCopy];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v6 = getFACircleContextClass_softClass_2;
  v38 = getFACircleContextClass_softClass_2;
  if (!getFACircleContextClass_softClass_2)
  {
    *buf = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getFACircleContextClass_block_invoke_2;
    v32 = &unk_27A65A9F8;
    v33 = &v35;
    __getFACircleContextClass_block_invoke_2(buf);
    v6 = *(v36 + 24);
  }

  v7 = v6;
  _Block_object_dispose(&v35, 8);
  v8 = [v6 alloc];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v9 = getFACircleEventTypeInitiateSymbolLoc_ptr_2;
  v38 = getFACircleEventTypeInitiateSymbolLoc_ptr_2;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr_2)
  {
    *buf = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke_2;
    v32 = &unk_27A65A9F8;
    v33 = &v35;
    v10 = FamilyCircleUILibrary_2();
    v11 = dlsym(v10, "FACircleEventTypeInitiate");
    *(*(v33 + 1) + 24) = v11;
    getFACircleEventTypeInitiateSymbolLoc_ptr_2 = *(*(v33 + 1) + 24);
    v9 = *(v36 + 24);
  }

  _Block_object_dispose(&v35, 8);
  if (!v9)
  {
    v24 = [ICQFamilySharingHook _beginFamilySharingFlowWithCompletion:];
    _Block_object_dispose(&v40, 8);
    _Unwind_Resume(v24);
  }

  v12 = [v8 initWithEventType:*v9];
  [v12 setClientName:@"iCloudStorage"];
  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__15;
  v33 = __Block_byref_object_dispose__15;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v20 = getFACircleStateControllerClass_softClass_2;
  v43 = getFACircleStateControllerClass_softClass_2;
  if (!getFACircleStateControllerClass_softClass_2)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getFACircleStateControllerClass_block_invoke_2;
    v38 = &unk_27A65A9F8;
    v39 = &v40;
    __getFACircleStateControllerClass_block_invoke_2(&v35, v13, v14, v15, v16, v17, v18, v19, v25);
    v20 = v41[3];
  }

  v21 = v20;
  _Block_object_dispose(&v40, 8);
  v34 = [[v20 alloc] initWithPresenter:self];
  v22 = *(v30 + 40);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__ICQUINativeManageStorageController_startFamilySharingFromSpecifier___block_invoke;
  v26[3] = &unk_27A65CA00;
  v26[4] = self;
  v23 = specifierCopy;
  v27 = v23;
  v28 = buf;
  [v22 performWithContext:v12 completion:v26];

  _Block_object_dispose(buf, 8);
}

void __70__ICQUINativeManageStorageController_startFamilySharingFromSpecifier___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __70__ICQUINativeManageStorageController_startFamilySharingFromSpecifier___block_invoke_2;
  v12 = &unk_27A65A708;
  v4 = a1[5];
  v13 = a1[4];
  v14 = v4;
  dispatch_async(MEMORY[0x277D85CD0], &v9);
  v5 = [v3 error];

  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__ICQUINativeManageStorageController_startFamilySharingFromSpecifier___block_invoke_cold_1(v3);
    }
  }

  else
  {
    [a1[4] _updateStorageSummaryAndNotify];
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (void)showAlertFromSpecifier:(id)specifier
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(ICQUINativeManageStorageController *)self actionInfoForSpecifier:specifier];
  confirmation = [v3 confirmation];

  title = [confirmation title];
  subtitle = [confirmation subtitle];
  v21 = title;
  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:? preferredStyle:?];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = confirmation;
  obj = [confirmation actions];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        icqLink = [v11 icqLink];
        action = [icqLink action];

        if ([v11 isDestructive])
        {
          v14 = 2;
        }

        else
        {
          v14 = action == 101;
        }

        v15 = MEMORY[0x277D750F8];
        title2 = [v11 title];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __61__ICQUINativeManageStorageController_showAlertFromSpecifier___block_invoke;
        v26[3] = &unk_27A65C7B8;
        v26[4] = v11;
        v26[5] = self;
        v26[6] = action;
        v17 = [v15 actionWithTitle:title2 style:v14 handler:v26];
        [v6 addAction:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__ICQUINativeManageStorageController_showAlertFromSpecifier___block_invoke_2;
  v24[3] = &unk_27A65A820;
  v25 = v19;
  v18 = v19;
  [(ICQUINativeManageStorageController *)self presentViewController:v6 animated:1 completion:v24];
}

void __61__ICQUINativeManageStorageController_showAlertFromSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4 == 6)
  {
    v10 = v3;
    v7 = [*(a1 + 32) icqLink];
    [v7 performAction];
  }

  else
  {
    if (v4 != 112)
    {
      goto LABEL_9;
    }

    v10 = v3;
    v5 = [*(a1 + 32) actionURL];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [*(a1 + 32) icqLink];
      v7 = [v8 serverUIURL];
    }

    v9 = [*(a1 + 40) ruiDelegate];
    [v9 loadURL:v7 postBody:0 additionalHeaders:0];

    [*(a1 + 40) _updateStorageSummaryAndNotify];
  }

  v3 = v10;
LABEL_9:
}

void __61__ICQUINativeManageStorageController_showAlertFromSpecifier___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Presenting alert from confirmation info: %@", &v4, 0xCu);
  }
}

- (void)liftUIPresenterDidComplete:(id)complete
{
  v8 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQUINativeManageStorageController liftUIPresenterDidComplete:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(ICQUINativeManageStorageController *)self liftUIPresenterDidComplete:completeCopy userInfo:0];
}

- (void)liftUIPresenterDidCancel:(id)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQUINativeManageStorageController liftUIPresenterDidCancel:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(ICQUINativeManageStorageController *)self liftUIPresenterDidCancel:cancelCopy userInfo:0];
}

- (void)liftUIPresenterDidComplete:(id)complete userInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQUINativeManageStorageController liftUIPresenterDidComplete:userInfo:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  navigationController = [(ICQUINativeManageStorageController *)self navigationController];
  v7 = [navigationController popViewControllerAnimated:1];

  [(ICQUINativeManageStorageController *)self setLiftUIPresenter:0];
  [(ICQUINativeManageStorageController *)self _updateStorageSummaryAndNotify];
}

- (void)liftUIPresenterDidCancel:(id)cancel userInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQUINativeManageStorageController liftUIPresenterDidCancel:userInfo:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  navigationController = [(ICQUINativeManageStorageController *)self navigationController];
  v7 = [navigationController popViewControllerAnimated:1];

  [(ICQUINativeManageStorageController *)self setLiftUIPresenter:0];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [l objectForKeyedSubscript:@"path"];
  if (([v6 icqui_isChangeStoragePlanPath] & 1) != 0 || objc_msgSend(v6, "icqui_isDeviceOffersPath"))
  {
    [(ICQUINativeManageStorageController *)self launchLegacyPurchase];
  }

  else if ([v6 icqui_isStorageUpgradePath])
  {
    [(ICQUINativeManageStorageController *)self launchFreshmint];
  }

  else if ([v6 icqui_isPhotosPath])
  {
    if ([(ICQUINativeManageStorageController *)self _didFetchPhotosSpecifier])
    {
      [(ICQUINativeManageStorageController *)self _launchPhotosDrilldown];
    }

    else
    {
      [(ICQUINativeManageStorageController *)self setShouldLaunchPhotosDrilldown:1];
    }
  }

  else if ([v6 icqui_isCurrentDeviceBackupPath])
  {
    if ([(ICQUINativeManageStorageController *)self _didFetchBackupSpecifier])
    {
      [(ICQUINativeManageStorageController *)self _launchBackupDrilldown];
    }

    else
    {
      [(ICQUINativeManageStorageController *)self setShouldLaunchBackupDrilldown:1];
    }
  }

  else if ([v6 icqui_isLocalDeviceBackupPath])
  {
    [(ICQUINativeManageStorageController *)self _launchLocalBackupController];
  }

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)_launchDeeplinksIfNeeded
{
  if ([(ICQUINativeManageStorageController *)self shouldLaunchPhotosDrilldown]&& [(ICQUINativeManageStorageController *)self _didFetchPhotosSpecifier])
  {
    [(ICQUINativeManageStorageController *)self setShouldLaunchPhotosDrilldown:0];

    [(ICQUINativeManageStorageController *)self _launchPhotosDrilldown];
  }

  else if ([(ICQUINativeManageStorageController *)self shouldLaunchBackupDrilldown]&& [(ICQUINativeManageStorageController *)self _didFetchBackupSpecifier])
  {
    [(ICQUINativeManageStorageController *)self setShouldLaunchBackupDrilldown:0];

    [(ICQUINativeManageStorageController *)self _launchBackupDrilldown];
  }
}

- (BOOL)_didFetchPhotosSpecifier
{
  v2 = [(ICQUINativeManageStorageController *)self specifierForID:@"com.apple.mobileslideshow"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_didFetchBackupSpecifier
{
  v2 = [(ICQUINativeManageStorageController *)self specifierForID:@"com.apple.__mobilebackup__"];
  v3 = v2 != 0;

  return v3;
}

- (void)_launchPhotosDrilldown
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Launching photos drilldown via deeplink", v5, 2u);
  }

  v4 = [(ICQUINativeManageStorageController *)self specifierForID:@"com.apple.mobileslideshow"];
  [(ICQUINativeManageStorageController *)self loadDrilldownFromSpecifier:v4];
}

- (void)_launchBackupDrilldown
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Launching backup drilldown via deeplink", v5, 2u);
  }

  v4 = [(ICQUINativeManageStorageController *)self specifierForID:@"com.apple.__mobilebackup__"];
  [(ICQUINativeManageStorageController *)self loadDrilldownFromSpecifier:v4];
}

- (void)_launchLocalBackupController
{
  account = [(ICQUINativeManageStorageController *)self account];
  v6 = [ICQLocalBackupController specifierForAccount:account];

  navigationController = [(ICQUINativeManageStorageController *)self navigationController];
  v5 = CreateDetailControllerInstanceWithClass();
  [v5 setParentController:0];
  [v5 setRootController:navigationController];
  [v5 setSpecifier:v6];
  [navigationController pushViewController:v5 animated:1];
}

- (void)provider:(os_log_t)log loadActionFromSpecifier:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ICQUINativeManageStorageController provider:loadActionFromSpecifier:]";
  _os_log_debug_impl(&dword_275623000, log, OS_LOG_TYPE_DEBUG, "%s called", &v1, 0xCu);
}

- (void)presentServerUISheetFromSpecifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)loadDrilldownFromSpecifier:(void *)a1 .cold.3(void *a1)
{
  [a1 action];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_275623000, v1, v2, "Invalid drilldown action %ld", v3, v4, v5, v6, v7);
}

- (void)loadRemoteUIDrilldownFromSpecifier:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_275623000, v2, v3, "Found no url for specifier w/ id: %@, Bailing.", v4, v5, v6, v7, v8);
}

void __70__ICQUINativeManageStorageController_startFamilySharingFromSpecifier___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_275623000, v2, v3, "Family sharing launch error %@", v4, v5, v6, v7, v8);
}

@end