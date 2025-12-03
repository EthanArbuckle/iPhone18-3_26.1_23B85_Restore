@interface ICQPreferencesRemoteUIDelegate
+ (id)afuiSettingsSpecifier;
+ (id)healthSettingsSpecifier;
+ (id)messagesSettingsSpecifier;
+ (void)_loadCKStoragePluginSettingsBundleIfNeeded;
- (BOOL)_loadNativeURL:(id)l;
- (BOOL)objectModel:(id)model page:(id)page deletedTableRow:(id)row atIndexPath:(id)path withURL:(id)l httpMethod:(id)method;
- (DelayedPushDelegate)delegate;
- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)controller;
- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)controller buyStorageFlow:(BOOL)flow;
- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)controller initialAction:(id)action;
- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)controller initialAction:(id)action account:(id)account;
- (void)_activateBackupsElementForObjectModel:(id)model completion:(id)completion;
- (void)_activatePhotosElementForObjectModel:(id)model completion:(id)completion;
- (void)_freshmintStorageUpgradeWithCompletion:(id)completion withURL:(id)l;
- (void)_freshmintStorageUpgradeWithICQLink:(id)link completion:(id)completion;
- (void)_popObjectModelAnimated:(BOOL)animated;
- (void)_postQuotaDidChangeNotification;
- (void)_presentCloudStorageOffersFlowWithAction:(id)action completion:(id)completion;
- (void)_processObjectModel:(id)model;
- (void)_processTableRow:(id)row;
- (void)_reloadQuotaInfo;
- (void)beginLegacyFlow;
- (void)buyFlowCompletionDidSucceed:(BOOL)succeed error:(id)error;
- (void)cleanupLoader;
- (void)confirmDeleteAll;
- (void)confirmDeleteWithTitle:(id)title prompt:(id)prompt explanation:(id)explanation confirmationAction:(id)action;
- (void)dealloc;
- (void)deleteAllDocuments;
- (void)loadURL:(id)l postBody:(id)body additionalHeaders:(id)headers;
- (void)loader:(id)loader didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)loader:(id)loader receivedObjectModel:(id)model topActionSignal:(id)signal;
- (void)manager:(id)manager didCompleteWithError:(id)error;
- (void)managerDidCancel:(id)cancel;
- (void)objectModel:(id)model configureTableRow:(id)row page:(id)page;
- (void)objectModel:(id)model page:(id)page toggledEditing:(BOOL)editing;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion;
- (void)objectModelDidChange:(id)change;
- (void)objectModelPressedBack:(id)back;
- (void)popAndReloadFromRemoteUI:(BOOL)i additionalHeaders:(id)headers;
- (void)reloadTopControllerWithAdditionalHeaders:(id)headers;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)willShowController:(id)controller;
@end

@implementation ICQPreferencesRemoteUIDelegate

- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)controller
{
  v4 = MEMORY[0x277CB8F48];
  controllerCopy = controller;
  defaultStore = [v4 defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v8 = [(ICQPreferencesRemoteUIDelegate *)self initWithNavigationController:controllerCopy initialAction:0 account:aa_primaryAppleAccount];

  return v8;
}

- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)controller initialAction:(id)action
{
  v6 = MEMORY[0x277CB8F48];
  actionCopy = action;
  controllerCopy = controller;
  defaultStore = [v6 defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v11 = [(ICQPreferencesRemoteUIDelegate *)self initWithNavigationController:controllerCopy initialAction:actionCopy account:aa_primaryAppleAccount];

  return v11;
}

- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)controller buyStorageFlow:(BOOL)flow
{
  if (flow)
  {
    v6 = *MEMORY[0x277D3FD40];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277CB8F48];
  controllerCopy = controller;
  defaultStore = [v7 defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v11 = [(ICQPreferencesRemoteUIDelegate *)self initWithNavigationController:controllerCopy initialAction:v6 account:aa_primaryAppleAccount];

  return v11;
}

- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)controller initialAction:(id)action account:(id)account
{
  controllerCopy = controller;
  actionCopy = action;
  accountCopy = account;
  v19.receiver = self;
  v19.super_class = ICQPreferencesRemoteUIDelegate;
  v12 = [(ICQPreferencesRemoteUIDelegate *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_navigationController, controller);
    objc_storeStrong(&v13->_initialAction, action);
    objc_storeStrong(&v13->_account, account);
    v14 = objc_alloc_init(ICQPreferencesFreshmintManager);
    freshmintManager = v13->_freshmintManager;
    v13->_freshmintManager = v14;

    [(ICQPreferencesFreshmintManager *)v13->_freshmintManager setDelegate:v13];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_willShowController_ name:*MEMORY[0x277D40048] object:v13->_navigationController];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel__reloadQuotaInfo name:@"QuotaInformationChanged" object:0];
  }

  return v13;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  presentedViewController = [(UINavigationController *)self->_navigationController presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(UINavigationController *)self->_navigationController dismissViewControllerAnimated:0 completion:0];
  }

  [(NSMutableArray *)self->_deleteLoaders enumerateObjectsUsingBlock:&__block_literal_global_15];
  [(RUILoader *)self->_loader setDelegate:0];
  v6.receiver = self;
  v6.super_class = ICQPreferencesRemoteUIDelegate;
  [(ICQPreferencesRemoteUIDelegate *)&v6 dealloc];
}

- (void)willShowController:(id)controller
{
  controllerCopy = controller;
  userInfo = [controllerCopy userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D40050]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [controllerCopy userInfo];
    v7 = [userInfo2 objectForKey:*MEMORY[0x277D40058]];
    intValue = [v7 intValue];

    if (intValue == 2)
    {
      lastObject = [(NSMutableArray *)self->_objectModels lastObject];
      defaultPages = [lastObject defaultPages];
      v11 = [defaultPages containsObject:v5];

      if (v11)
      {
        [(ICQPreferencesRemoteUIDelegate *)self cleanupLoader];
        [(NSMutableArray *)self->_objectModels removeLastObject];
      }
    }
  }
}

- (void)cleanupLoader
{
  if ([(RUILoader *)self->_loader isLoading])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained loadFailed:self withError:0];
  }

  [(RUILoader *)self->_loader cancel];
  [(RUILoader *)self->_loader setDelegate:0];
  loader = self->_loader;
  self->_loader = 0;

  if (!self->_modalNavigationController)
  {
    storageOffersManager = self->_storageOffersManager;
    self->_storageOffersManager = 0;
  }
}

- (void)loadURL:(id)l postBody:(id)body additionalHeaders:(id)headers
{
  v52 = *MEMORY[0x277D85DE8];
  lCopy = l;
  bodyCopy = body;
  headersCopy = headers;
  nextSignpostId = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
  v12 = [nextSignpostId isEqualToString:@"MANAGE"];

  if (v12)
  {
    v13 = _ICQSignpostLogSystem();
    v14 = objc_opt_new();
    v15 = _ICQSignpostCreateWithObject();
    v17 = v16;

    v18 = _ICQSignpostLogSystem();
    v19 = v18;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275623000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "iOSManageStorageLoad", " enableTelemetry=YES ", buf, 2u);
    }

    v20 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [ICQPreferencesRemoteUIDelegate loadURL:postBody:additionalHeaders:];
    }

LABEL_13:

    self->_signpost.identifier = v15;
    self->_signpost.timestamp = v17;
    goto LABEL_14;
  }

  nextSignpostId2 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
  v22 = [nextSignpostId2 isEqualToString:@"MANAGE_DRILLDOWN"];

  if (v22)
  {
    v23 = _ICQSignpostLogSystem();
    v24 = objc_opt_new();
    v15 = _ICQSignpostCreateWithObject();
    v17 = v25;

    v26 = _ICQSignpostLogSystem();
    v27 = v26;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275623000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v15, "iOSManageStorageDrilldownLoad", " enableTelemetry=YES ", buf, 2u);
    }

    v20 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [ICQPreferencesRemoteUIDelegate loadURL:postBody:additionalHeaders:];
    }

    goto LABEL_13;
  }

  nextSignpostId3 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];

  if (nextSignpostId3)
  {
    v43 = _ICQGetLogSystem();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      nextSignpostId4 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
      *buf = 138412290;
      v51 = nextSignpostId4;
      _os_log_impl(&dword_275623000, v43, OS_LOG_TYPE_DEFAULT, "Unknown signpost id %@", buf, 0xCu);
    }
  }

LABEL_14:
  [(ICQPreferencesRemoteUIDelegate *)self cleanupLoader];
  self->_cancelled = 0;
  v28 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = headersCopy;
    _os_log_impl(&dword_275623000, v28, OS_LOG_TYPE_DEFAULT, "additional headers: %@", buf, 0xCu);
  }

  v29 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:lCopy cachePolicy:1 timeoutInterval:30.0];
  [v29 ak_addAnisetteHeaders];
  [v29 ak_addDeviceUDIDHeader];
  if (bodyCopy)
  {
    [v29 setHTTPBody:bodyCopy];
    [v29 setHTTPMethod:@"POST"];
    if (self->_requestContentType)
    {
      requestContentType = self->_requestContentType;
    }

    else
    {
      requestContentType = @"text/html";
    }

    [v29 addValue:requestContentType forHTTPHeaderField:@"Content-Type"];
  }

  [v29 aa_addMultiUserDeviceHeaderIfEnabled];
  [(ICQUsageQuotaRequest *)ICQQuotaInfoRequest addHeadersToRequest:v29 forAccount:self->_account];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = headersCopy;
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v46;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v45 + 1) + 8 * i);
        v37 = [v31 objectForKey:{v36, v45}];
        [v29 addValue:v37 forHTTPHeaderField:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v33);
  }

  if (!self->_loader)
  {
    v38 = objc_alloc_init(MEMORY[0x277D461D0]);
    loader = self->_loader;
    self->_loader = v38;

    [(RUILoader *)self->_loader setDelegate:self];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v41 = objc_loadWeakRetained(&self->_delegate);
    [v41 loadStarted:self];
  }

  [(RUILoader *)self->_loader loadXMLUIWithRequest:v29, v45];
}

- (void)reloadTopControllerWithAdditionalHeaders:(id)headers
{
  objectModels = self->_objectModels;
  headersCopy = headers;
  lastObject = [(NSMutableArray *)objectModels lastObject];
  self->_forceActionSignal = 3;
  sourceURL = [lastObject sourceURL];
  [(ICQPreferencesRemoteUIDelegate *)self loadURL:sourceURL postBody:0 additionalHeaders:headersCopy];
}

- (void)popAndReloadFromRemoteUI:(BOOL)i additionalHeaders:(id)headers
{
  headersCopy = headers;
  if (i)
  {
    v6 = -1;
  }

  else
  {
    objectModels = self->_objectModels;
    v8 = objc_alloc_init(MEMORY[0x277D461E8]);
    [(NSMutableArray *)objectModels addObject:v8];

    v6 = -2;
  }

  v9 = [(NSMutableArray *)self->_objectModels objectAtIndex:[(NSMutableArray *)self->_objectModels count]+ v6];
  identifier = [v9 identifier];
  v11 = [identifier isEqualToString:@"manageStorageBackup"];

  v12 = 4;
  if (v11)
  {
    v12 = 8;
  }

  self->_forceActionSignal = v12;
  sourceURL = [v9 sourceURL];
  [(ICQPreferencesRemoteUIDelegate *)self loadURL:sourceURL postBody:0 additionalHeaders:headersCopy];
}

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  v24 = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  attributesCopy = attributes;
  [(ICQPreferencesRemoteUIDelegate *)self cleanupLoader];
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = buttonCopy;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Action taken at PrefRUIDelegate: %@", buf, 0xCu);
  }

  if ([buttonCopy isEqualToString:@"localBackup"])
  {
    v10 = ICQLocalBackupController;
LABEL_7:
    v11 = [(__objc2_class *)v10 specifierForAccount:self->_account];
LABEL_8:
    v12 = v11;
    [v11 setProperty:attributesCopy forKey:@"attributes"];
    [v12 setProperty:self forKey:@"remoteDelegate"];
    goto LABEL_9;
  }

  if ([buttonCopy isEqualToString:@"remoteBackup"])
  {
    v10 = ICQRemoteBackupController;
    goto LABEL_7;
  }

  if ([buttonCopy isEqualToString:@"buyStorage"])
  {
    v15 = *MEMORY[0x277D3FD40];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__ICQPreferencesRemoteUIDelegate_objectModel_pressedButton_attributes___block_invoke;
    v21[3] = &unk_27A65A7F8;
    v21[4] = self;
    [(ICQPreferencesRemoteUIDelegate *)self _presentCloudStorageOffersFlowWithAction:v15 completion:v21];
  }

  else
  {
    if ([buttonCopy isEqualToString:@"afuiSettings"])
    {
      v11 = +[ICQPreferencesRemoteUIDelegate afuiSettingsSpecifier];
      goto LABEL_8;
    }

    if ([buttonCopy isEqualToString:@"messagesSettings"])
    {
      v11 = +[ICQPreferencesRemoteUIDelegate messagesSettingsSpecifier];
      goto LABEL_8;
    }

    if ([buttonCopy isEqualToString:@"healthSettings"])
    {
      v11 = +[ICQPreferencesRemoteUIDelegate healthSettingsSpecifier];
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_9:
  v13 = [attributesCopy objectForKeyedSubscript:@"action"];
  if (([v13 isEqualToString:@"launchPlanManagement"] & 1) == 0)
  {
    v14 = _ICQStringForAction();
    if ([v13 isEqualToString:v14])
    {
    }

    else
    {
      v16 = _ICQStringForAction();
      v17 = [v13 isEqualToString:v16];

      if (!v17)
      {
        goto LABEL_17;
      }
    }
  }

  freshmintManager = [(ICQPreferencesRemoteUIDelegate *)self freshmintManager];
  [freshmintManager setShouldShowFreshmint:1];

  self->_icqAction = _ICQActionForString();
LABEL_17:
  if (v12)
  {
    v19 = self->_navigationController;
    v20 = CreateDetailControllerInstanceWithClass();
    [v20 setParentController:0];
    [v20 setRootController:v19];
    [v20 setSpecifier:v12];
    [(UINavigationController *)v19 showViewController:v20 sender:self];
  }
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  linkCopy = link;
  methodCopy = method;
  completionCopy = completion;
  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = linkCopy;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "linkURL: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __80__ICQPreferencesRemoteUIDelegate_objectModel_pressedLink_httpMethod_completion___block_invoke;
  v43 = &unk_27A65BA58;
  v15 = linkCopy;
  v44 = v15;
  objc_copyWeak(&v47, buf);
  v16 = completionCopy;
  selfCopy = self;
  v46 = v16;
  v17 = _Block_copy(&v40);
  if (([(RUILoader *)self->_loader isLoading:v40]& 1) == 0 && ![(ICQPreferencesRemoteUIDelegate *)self _loadNativeURL:v15])
  {
    lowercaseString = [methodCopy lowercaseString];
    v19 = [lowercaseString isEqualToString:@"liftui"];

    if (v19)
    {
      liftUIDelegate = [(ICQPreferencesRemoteUIDelegate *)self liftUIDelegate];
      v21 = liftUIDelegate == 0;

      if (v21)
      {
        v22 = [[ICQUIPreferencesLiftUIDelegate alloc] initWithNavigationController:self->_navigationController account:self->_account];
        [(ICQPreferencesRemoteUIDelegate *)self setLiftUIDelegate:v22];

        liftUIDelegate2 = [(ICQPreferencesRemoteUIDelegate *)self liftUIDelegate];
        [liftUIDelegate2 setDelegate:self];
      }

      liftUIDelegate3 = [(ICQPreferencesRemoteUIDelegate *)self liftUIDelegate];
      [liftUIDelegate3 loadURL:v15];

      v17[2](v17, 1, 0);
    }

    else
    {
      lowercaseString2 = [methodCopy lowercaseString];
      v26 = [lowercaseString2 isEqualToString:@"post"];

      if (v26)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        defaultPages = [modelCopy defaultPages];
        lastObject = [defaultPages lastObject];
        [lastObject populatePostbackDictionary:dictionary];

        if (dictionary)
        {
          postbackData = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:100 options:0 error:0];
          requestContentType = self->_requestContentType;
          self->_requestContentType = @"application/x-plist";
        }

        else
        {
          postbackData = [modelCopy postbackData];
        }

        v38 = _Block_copy(v17);
        linkCompletionBlock = self->_linkCompletionBlock;
        self->_linkCompletionBlock = v38;

        [(ICQPreferencesRemoteUIDelegate *)self loadURL:v15 postBody:postbackData];
      }

      else
      {
        freshmintManager = [(ICQPreferencesRemoteUIDelegate *)self freshmintManager];
        shouldShowFreshmint = [freshmintManager shouldShowFreshmint];

        if (shouldShowFreshmint)
        {
          [(ICQPreferencesRemoteUIDelegate *)self _freshmintStorageUpgradeWithCompletion:v17 withURL:v15];
        }

        else
        {
          if ([(ICQPreferencesRemoteUIDelegate *)self isManageStorage])
          {
            identifier = [modelCopy identifier];
            v35 = [identifier isEqualToString:@"iCloudManageStorage"];

            if (v35)
            {
              [(ICQPreferencesRemoteUIDelegate *)self setNextSignpostId:@"MANAGE_DRILLDOWN"];
            }
          }

          v36 = _Block_copy(v17);
          v37 = self->_linkCompletionBlock;
          self->_linkCompletionBlock = v36;

          [(ICQPreferencesRemoteUIDelegate *)self loadURL:v15 postBody:0];
        }
      }
    }
  }

  objc_destroyWeak(&v47);
  objc_destroyWeak(buf);
}

void __80__ICQPreferencesRemoteUIDelegate_objectModel_pressedLink_httpMethod_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if ([*(a1 + 32) icqui_isStopFamilySharingURL])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (!WeakRetained)
    {
      goto LABEL_11;
    }

    v5 = WeakRetained;
    v6 = [WeakRetained[1] topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 40) isNativeManageStorage];

      if ((v7 & 1) == 0)
      {
        v8 = [v5[1] popViewControllerAnimated:1];
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

  if ([*(a1 + 32) icqui_isJoinOrLeaveFamilySharingURL])
  {
LABEL_10:
    v9 = objc_loadWeakRetained((a1 + 56));
    [v9 _postQuotaDidChangeNotification];
  }

LABEL_11:
  (*(*(a1 + 48) + 16))();
}

- (void)deleteAllDocuments
{
  ++self->_deleteAllDocumentsAttemptCount;
  lastObject = [(NSMutableArray *)self->_objectModels lastObject];
  defaultPages = [lastObject defaultPages];
  lastObject2 = [defaultPages lastObject];
  tableViewOM = [lastObject2 tableViewOM];
  attributes = [tableViewOM attributes];
  v9 = [attributes objectForKey:@"deleteAllURL"];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  [(ICQPreferencesRemoteUIDelegate *)self loadURL:v8 postBody:0];
}

- (void)confirmDeleteAll
{
  lastObject = [(NSMutableArray *)self->_objectModels lastObject];
  defaultPages = [lastObject defaultPages];
  lastObject2 = [defaultPages lastObject];
  tableViewOM = [lastObject2 tableViewOM];
  sections = [tableViewOM sections];
  v8 = [sections objectAtIndex:0];
  attributes = [v8 attributes];
  v18 = [attributes objectForKey:@"header"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"DELETE_ALL" value:&stru_28844FC60 table:@"CloudGroup"];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"DELETE_ALL_PROMPT" value:&stru_28844FC60 table:@"CloudGroup"];
  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"DELETE_ALL_EXPLAINATION" value:&stru_28844FC60 table:@"CloudGroup"];
  v17 = [v14 stringWithFormat:v16, v18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__ICQPreferencesRemoteUIDelegate_confirmDeleteAll__block_invoke;
  v19[3] = &unk_27A65A820;
  v19[4] = self;
  [(ICQPreferencesRemoteUIDelegate *)self confirmDeleteWithTitle:v11 prompt:v13 explanation:v17 confirmationAction:v19];
}

- (void)confirmDeleteWithTitle:(id)title prompt:(id)prompt explanation:(id)explanation confirmationAction:(id)action
{
  actionCopy = action;
  v11 = MEMORY[0x277D75418];
  explanationCopy = explanation;
  promptCopy = prompt;
  titleCopy = title;
  currentDevice = [v11 currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  if (sf_isiPad)
  {
    v17 = promptCopy;
  }

  else
  {
    v17 = explanationCopy;
  }

  if (sf_isiPad)
  {
    v18 = explanationCopy;
  }

  else
  {
    v18 = 0;
  }

  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v18 preferredStyle:sf_isiPad];

  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_28844FC60 table:@"CloudGroup"];
  v23 = [v20 actionWithTitle:v22 style:1 handler:0];
  [v19 addAction:v23];

  v24 = MEMORY[0x277D750F8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __95__ICQPreferencesRemoteUIDelegate_confirmDeleteWithTitle_prompt_explanation_confirmationAction___block_invoke;
  v27[3] = &unk_27A65BA80;
  v28 = actionCopy;
  v25 = actionCopy;
  v26 = [v24 actionWithTitle:titleCopy style:2 handler:v27];

  [v19 addAction:v26];
  [(UINavigationController *)self->_navigationController presentViewController:v19 animated:1 completion:0];
}

uint64_t __95__ICQPreferencesRemoteUIDelegate_confirmDeleteWithTitle_prompt_explanation_confirmationAction___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)objectModel:(id)model page:(id)page toggledEditing:(BOOL)editing
{
  editingCopy = editing;
  modelCopy = model;
  pageCopy = page;
  v10 = pageCopy;
  if (editingCopy)
  {
    button = self->_button;
    if (!button)
    {
      v12 = [ICQPreferencesRemoteUIDelegateTableCellButton alloc];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"DELETE_ALL" value:&stru_28844FC60 table:@"CloudGroup"];
      v15 = [(ICQPreferencesRemoteUIDelegateTableCellButton *)v12 initWithName:v14 target:self action:sel_confirmDeleteAll];
      v16 = self->_button;
      self->_button = v15;

      button = self->_button;
    }

    [(ICQPreferencesRemoteUIDelegateTableCellButton *)button setAlpha:0.0];
    tableViewOM = [v10 tableViewOM];
    tableView = [tableViewOM tableView];
    [tableView setTableFooterView:self->_button];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__ICQPreferencesRemoteUIDelegate_objectModel_page_toggledEditing___block_invoke;
    v23[3] = &unk_27A65A820;
    v23[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v23 animations:0.3];
  }

  else
  {
    v19 = MEMORY[0x277D75D18];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__ICQPreferencesRemoteUIDelegate_objectModel_page_toggledEditing___block_invoke_2;
    v22[3] = &unk_27A65A820;
    v22[4] = self;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__ICQPreferencesRemoteUIDelegate_objectModel_page_toggledEditing___block_invoke_3;
    v20[3] = &unk_27A65A750;
    v21 = pageCopy;
    [v19 animateWithDuration:v22 animations:v20 completion:0.3];
  }
}

void __66__ICQPreferencesRemoteUIDelegate_objectModel_page_toggledEditing___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) tableViewOM];
  v1 = [v2 tableView];
  [v1 setTableFooterView:0];
}

- (BOOL)objectModel:(id)model page:(id)page deletedTableRow:(id)row atIndexPath:(id)path withURL:(id)l httpMethod:(id)method
{
  v13 = MEMORY[0x277CBEAC0];
  rowCopy = row;
  v15 = [v13 dictionaryWithObjectsAndKeys:{model, @"objectModel", page, @"page", rowCopy, @"row", path, @"indexPath", l, @"url", method, @"httpMethod", 0}];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v27 localizedStringForKey:@"DELETE_ITEM" value:&stru_28844FC60 table:@"CloudGroup"];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"DELETE_ITEM_PROMPT" value:&stru_28844FC60 table:@"CloudGroup"];
  v19 = MEMORY[0x277CCACA8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"DELETE_ITEM_EXPLAINATION" value:&stru_28844FC60 table:@"CloudGroup"];
  attributes = [rowCopy attributes];

  v23 = [attributes objectForKey:@"label"];
  v24 = [v19 stringWithFormat:v21, v23];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __98__ICQPreferencesRemoteUIDelegate_objectModel_page_deletedTableRow_atIndexPath_withURL_httpMethod___block_invoke;
  v29[3] = &unk_27A65A708;
  v30 = v15;
  selfCopy = self;
  v25 = v15;
  [(ICQPreferencesRemoteUIDelegate *)self confirmDeleteWithTitle:v16 prompt:v18 explanation:v24 confirmationAction:v29];

  return 0;
}

void __98__ICQPreferencesRemoteUIDelegate_objectModel_page_deletedTableRow_atIndexPath_withURL_httpMethod___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"httpMethod"];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"post"];

  if (v4)
  {
    v5 = [*(a1 + 32) objectForKey:@"objectModel"];
    v23 = [v5 postbackData];
  }

  else
  {
    v23 = 0;
  }

  v6 = objc_alloc(MEMORY[0x277CCAB70]);
  v7 = [*(a1 + 32) objectForKey:@"url"];
  v8 = [v6 initWithURL:v7 cachePolicy:1 timeoutInterval:30.0];

  [v8 setHTTPBody:v23];
  [v8 setHTTPMethod:@"POST"];
  [v8 addValue:@"text/html" forHTTPHeaderField:@"Content-Type"];
  [(ICQUsageQuotaRequest *)ICQQuotaInfoRequest addHeadersToRequest:v8 forAccount:*(*(a1 + 40) + 112)];
  v9 = objc_alloc_init(MEMORY[0x277D461D0]);
  [v9 setDelegate:*(a1 + 40)];
  v10 = *(*(a1 + 40) + 56);
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = *(a1 + 40);
    v13 = *(v12 + 56);
    *(v12 + 56) = v11;

    v10 = *(*(a1 + 40) + 56);
  }

  [v10 addObject:v9];
  [v9 loadXMLUIWithRequest:v8];
  v14 = [*(a1 + 32) objectForKey:@"page"];
  v15 = [v14 tableViewOM];

  v16 = [*(a1 + 32) objectForKey:@"indexPath"];
  v17 = [v15 tableView];
  v18 = [v15 sections];
  v19 = [v18 objectAtIndex:{objc_msgSend(v16, "section")}];

  [v19 removeRowAtIndex:{objc_msgSend(v16, "row")}];
  v20 = [v19 rows];
  v21 = [v20 count];

  if (!v21)
  {
    [*(a1 + 40) setLastDocumentDeleteLoader:v9];
  }

  v22 = [MEMORY[0x277CBEA60] arrayWithObject:v16];
  [v17 deleteRowsAtIndexPaths:v22 withRowAnimation:100];
}

- (void)_popObjectModelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(NSMutableArray *)self->_objectModels count])
  {
    [ICQPreferencesRemoteUIDelegate _popObjectModelAnimated:];
  }

  lastObject = [(NSMutableArray *)self->_objectModels lastObject];
  [(NSMutableArray *)self->_objectModels removeLastObject];
  defaultPages = [lastObject defaultPages];
  v6 = [defaultPages count] - 1;
  if (v6 >= 0)
  {
    do
    {
      v7 = [defaultPages objectAtIndex:v6];
      topViewController = [(UINavigationController *)self->_navigationController topViewController];

      if (topViewController == v7)
      {
        if (v6)
        {
          v9 = 0;
        }

        else
        {
          v9 = animatedCopy;
        }

        v10 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:v9];
      }
    }

    while (v6-- > 0);
  }
}

- (void)objectModelPressedBack:(id)back
{
  backCopy = back;
  [(ICQPreferencesRemoteUIDelegate *)self cleanupLoader];
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  v5 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = topViewController;
    if (v6)
    {
      defaultPages = [backCopy defaultPages];
      v8 = [defaultPages containsObject:v6];

      if (v8)
      {
        [(NSMutableArray *)self->_objectModels removeLastObject];
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)loader:(id)loader receivedObjectModel:(id)model topActionSignal:(id)signal
{
  v166 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  modelCopy = model;
  signalCopy = signal;
  selfCopy = self;
  nextSignpostId = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
  LODWORD(model) = [nextSignpostId isEqualToString:@"MANAGE"];

  if (model)
  {
    _ICQSignpostGetNanoseconds();
    v9 = _ICQSignpostLogSystem();
    v10 = v9;
    identifier = self->_signpost.identifier;
    if (identifier - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_275623000, v10, OS_SIGNPOST_INTERVAL_END, identifier, "iOSManageStorageLoad", "", &buf, 2u);
    }

    v12 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICQPreferencesRemoteUIDelegate loader:receivedObjectModel:topActionSignal:];
    }
  }

  else
  {
    nextSignpostId2 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
    v14 = [nextSignpostId2 isEqualToString:@"MANAGE_DRILLDOWN"];

    if (!v14)
    {
      goto LABEL_14;
    }

    _ICQSignpostGetNanoseconds();
    v15 = _ICQSignpostLogSystem();
    v16 = v15;
    v17 = self->_signpost.identifier;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_275623000, v16, OS_SIGNPOST_INTERVAL_END, v17, "iOSManageStorageDrilldownLoad", "", &buf, 2u);
    }

    v12 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICQPreferencesRemoteUIDelegate loader:receivedObjectModel:topActionSignal:];
    }
  }

LABEL_14:
  nextSignpostId = self->_nextSignpostId;
  self->_nextSignpostId = 0;

  lastDocumentDeleteLoader = [(ICQPreferencesRemoteUIDelegate *)self lastDocumentDeleteLoader];
  v116 = [lastDocumentDeleteLoader isEqual:loaderCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    allPages = [modelCopy allPages];
    v23 = [allPages countByEnumeratingWithState:&v149 objects:v161 count:16];
    if (v23)
    {
      v24 = *v150;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v150 != v24)
          {
            objc_enumerationMutation(allPages);
          }

          v26 = *(*(&v149 + 1) + 8 * i);
          v27 = objc_loadWeakRetained(&selfCopy->_delegate);
          [v27 remoteUIDelegate:selfCopy didCreatePage:v26 forAccount:selfCopy->_account inObjectModel:modelCopy];
        }

        v23 = [allPages countByEnumeratingWithState:&v149 objects:v161 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v28 = objc_loadWeakRetained(&self->_delegate);
    v29 = objc_opt_respondsToSelector();

    if ((v29 & 1) == 0)
    {
      goto LABEL_32;
    }

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    allPages = [modelCopy allPages];
    v30 = [allPages countByEnumeratingWithState:&v145 objects:v160 count:16];
    if (v30)
    {
      v31 = *v146;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v146 != v31)
          {
            objc_enumerationMutation(allPages);
          }

          v33 = *(*(&v145 + 1) + 8 * j);
          v34 = objc_loadWeakRetained(&selfCopy->_delegate);
          [v34 remoteUIDelegate:selfCopy didCreatePage:v33 inObjectModel:modelCopy];
        }

        v30 = [allPages countByEnumeratingWithState:&v145 objects:v160 count:16];
      }

      while (v30);
    }
  }

LABEL_32:
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = [modelCopy allPages];
  v119 = [obj countByEnumeratingWithState:&v141 objects:v159 count:16];
  if (v119)
  {
    v35 = *v142;
    v115 = *v142;
    do
    {
      v36 = 0;
      do
      {
        if (*v142 != v35)
        {
          v37 = v36;
          objc_enumerationMutation(obj);
          v36 = v37;
        }

        v117 = v36;
        v38 = *(*(&v141 + 1) + 8 * v36);
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        tableViewOM = [v38 tableViewOM];
        sections = [tableViewOM sections];

        v124 = [sections countByEnumeratingWithState:&v137 objects:v158 count:16];
        if (v124)
        {
          v123 = *v138;
          do
          {
            v40 = 0;
            do
            {
              if (*v138 != v123)
              {
                v41 = v40;
                objc_enumerationMutation(sections);
                v40 = v41;
              }

              v125 = v40;
              v42 = *(*(&v137 + 1) + 8 * v40);
              v133 = 0u;
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              rows = [v42 rows];
              v44 = [rows countByEnumeratingWithState:&v133 objects:v157 count:16];
              if (v44)
              {
                v45 = *v134;
                while (2)
                {
                  for (k = 0; k != v44; ++k)
                  {
                    if (*v134 != v45)
                    {
                      objc_enumerationMutation(rows);
                    }

                    v47 = *(*(&v133 + 1) + 8 * k);
                    attributes = [v47 attributes];
                    v49 = [attributes objectForKeyedSubscript:@"encryptedFile"];

                    if (v49)
                    {
                      v132 = 0;
                      v50 = v49;
                      v153 = 0;
                      v154 = &v153;
                      v155 = 0x2020000000;
                      v51 = getBRGetFileNameFromServerInfoBlobSymbolLoc_ptr;
                      v156 = getBRGetFileNameFromServerInfoBlobSymbolLoc_ptr;
                      if (!getBRGetFileNameFromServerInfoBlobSymbolLoc_ptr)
                      {
                        *&buf = MEMORY[0x277D85DD0];
                        *(&buf + 1) = 3221225472;
                        v163 = __getBRGetFileNameFromServerInfoBlobSymbolLoc_block_invoke;
                        v164 = &unk_27A65A9F8;
                        v165 = &v153;
                        __getBRGetFileNameFromServerInfoBlobSymbolLoc_block_invoke(&buf);
                        v51 = v154[3];
                      }

                      _Block_object_dispose(&v153, 8);
                      if (!v51)
                      {
                        topSignal = [ICQFamilySharingHook _beginFamilySharingFlowWithCompletion:];
                        __break(1u);
                        goto LABEL_70;
                      }

                      v52 = v51(v50, &v132);

                      v53 = v132;
                      if (v52)
                      {
                        attributes2 = [v47 attributes];
                        v55 = [attributes2 mutableCopy];

                        [v55 setObject:v52 forKeyedSubscript:@"label"];
                        [v47 setAttributes:v55];
                      }

                      else
                      {
                        v55 = _ICQGetLogSystem();
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(buf) = 138412290;
                          *(&buf + 4) = v53;
                          _os_log_error_impl(&dword_275623000, v55, OS_LOG_TYPE_ERROR, "Error decrypting data blob: %@", &buf, 0xCu);
                        }
                      }
                    }
                  }

                  v44 = [rows countByEnumeratingWithState:&v133 objects:v157 count:16];
                  if (v44)
                  {
                    continue;
                  }

                  break;
                }
              }

              v40 = v125 + 1;
            }

            while (v125 + 1 != v124);
            v124 = [sections countByEnumeratingWithState:&v137 objects:v158 count:16];
          }

          while (v124);
        }

        v36 = v117 + 1;
        v35 = v115;
      }

      while (v117 + 1 != v119);
      v119 = [obj countByEnumeratingWithState:&v141 objects:v159 count:16];
      v35 = v115;
    }

    while (v119);
  }

  if (![(NSMutableArray *)selfCopy->_deleteLoaders containsObject:loaderCopy]|| ([(NSMutableArray *)selfCopy->_deleteLoaders removeObject:loaderCopy], v116))
  {
    [(ICQPreferencesRemoteUIDelegate *)selfCopy setLastDocumentDeleteLoader:0];
    [modelCopy setDelegate:selfCopy];
    v56 = selfCopy;
    linkCompletionBlock = selfCopy->_linkCompletionBlock;
    if (linkCompletionBlock)
    {
      linkCompletionBlock[2](linkCompletionBlock, 1, 0);
      v58 = selfCopy->_linkCompletionBlock;
      selfCopy->_linkCompletionBlock = 0;

      v56 = selfCopy;
    }

    if (!v56->_cancelled)
    {
      topSignal = [signalCopy topSignal];
      v60 = selfCopy;
      forceActionSignal = selfCopy->_forceActionSignal;
      if (forceActionSignal)
      {
        selfCopy->_forceActionSignal = 0;
        v62 = forceActionSignal;
      }

      else
      {
LABEL_70:
        v62 = topSignal;
      }

      v63 = objc_loadWeakRetained(&v60->_delegate);

      if (v63)
      {
        v64 = objc_loadWeakRetained(&selfCopy->_delegate);
        [v64 loadFinished:selfCopy];
      }

      objectModels = selfCopy->_objectModels;
      if (!objectModels)
      {
        v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v67 = selfCopy->_objectModels;
        selfCopy->_objectModels = v66;

        objectModels = selfCopy->_objectModels;
      }

      if (![(NSMutableArray *)objectModels count])
      {
        if (v62 == 3)
        {
          if ([(ICQPreferencesRemoteUIDelegate *)selfCopy isNativeManageStorage])
          {
            v62 = 0;
          }

          else
          {
            v62 = 2;
          }
        }

        else if (v62 == 4)
        {
          v62 = 0;
        }
      }

      defaultPages = [modelCopy defaultPages];
      lastObject = [defaultPages lastObject];

      if (v62 == 2 && lastObject)
      {
        [(NSMutableArray *)selfCopy->_objectModels addObject:modelCopy];
        [(UINavigationController *)selfCopy->_navigationController showViewController:lastObject sender:?];
        [(UINavigationController *)selfCopy->_navigationController setToolbarHidden:1 animated:0];
      }

      else if (v62 == 3 && lastObject)
      {
        viewControllers = [(UINavigationController *)selfCopy->_navigationController viewControllers];
        v71 = [viewControllers mutableCopy];

        [(NSMutableArray *)selfCopy->_objectModels removeLastObject];
        [v71 removeLastObject];
        [v71 addObject:lastObject];
        [(NSMutableArray *)selfCopy->_objectModels addObject:modelCopy];
        [(UINavigationController *)selfCopy->_navigationController setViewControllers:v71 animated:0];
      }

      else if (v62 == 4)
      {
        if (lastObject)
        {
          clientInfo = [modelCopy clientInfo];
          v73 = [clientInfo objectForKeyedSubscript:@"shouldRefreshStorageGraph"];

          if (-[ICQPreferencesRemoteUIDelegate isNativeManageStorage](selfCopy, "isNativeManageStorage") && [v73 isEqualToString:@"true"])
          {
            v74 = [(UINavigationController *)selfCopy->_navigationController popViewControllerAnimated:1];
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter postNotificationName:@"QuotaDidChange" object:0];
          }

          else if ([(NSMutableArray *)selfCopy->_objectModels count]> 1)
          {
            v76 = +[ICQQuotaRequestManager sharedManager];
            [v76 noteQuotaInfoChanged];

            defaultCenter = [(UINavigationController *)selfCopy->_navigationController topViewController];
            [(NSMutableArray *)selfCopy->_objectModels removeLastObject];
            [(NSMutableArray *)selfCopy->_objectModels removeLastObject];
            viewControllers2 = [(UINavigationController *)selfCopy->_navigationController viewControllers];
            v78 = [viewControllers2 mutableCopy];

            [v78 removeLastObject];
            [v78 removeLastObject];
            [(NSMutableArray *)selfCopy->_objectModels addObject:modelCopy];
            [v78 addObject:lastObject];
            [v78 addObject:defaultCenter];
            [(UINavigationController *)selfCopy->_navigationController setViewControllers:v78 animated:0];
            v79 = [(UINavigationController *)selfCopy->_navigationController popViewControllerAnimated:1];
          }

          else
          {
            defaultCenter = ICQUSLogForCategory(0);
            if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_275623000, defaultCenter, OS_LOG_TYPE_DEFAULT, "Pop + Replace requires at least 2 existing object models.", &buf, 2u);
            }
          }
        }

        else
        {
          [(ICQPreferencesRemoteUIDelegate *)selfCopy _popObjectModelAnimated:1];
        }
      }

      v56 = selfCopy;
    }

    [(ICQPreferencesRemoteUIDelegate *)v56 cleanupLoader];
  }

  clientInfo2 = [modelCopy clientInfo];
  v81 = [clientInfo2 objectForKeyedSubscript:@"action"];

  if ([v81 isEqualToString:@"remoteAction:launchApp"])
  {
    v82 = MEMORY[0x277CBEBC0];
    clientInfo3 = [modelCopy clientInfo];
    v84 = [clientInfo3 objectForKeyedSubscript:@"remoteLaunchUrl"];
    v85 = [v82 URLWithString:v84];

    [(ICQPreferencesRemoteUIDelegate *)selfCopy _loadNativeURL:v85];
  }

  v86 = [v81 isEqualToString:@"buyStorage"];
  v87 = MEMORY[0x277D3FD40];
  if (v86)
  {
    __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke(v86, modelCopy);
    v88 = *v87;
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke_2;
    v131[3] = &unk_27A65A7F8;
    v131[4] = selfCopy;
    [(ICQPreferencesRemoteUIDelegate *)selfCopy _presentCloudStorageOffersFlowWithAction:v88 completion:v131];
    goto LABEL_111;
  }

  v89 = [v81 isEqualToString:@"launchPlanManagement"];
  if (v89)
  {
    goto LABEL_109;
  }

  v90 = _ICQStringForAction();
  if ([v81 isEqualToString:v90])
  {

    goto LABEL_109;
  }

  v91 = _ICQStringForAction();
  v92 = [v81 isEqualToString:v91];

  if (v92)
  {
LABEL_109:
    __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke(v89, modelCopy);
    clientInfo4 = [modelCopy clientInfo];
    v94 = [clientInfo4 objectForKeyedSubscript:@"planManagementUrl"];

    if (v94)
    {
      selfCopy->_icqAction = _ICQActionForString();
      v95 = MEMORY[0x277CBEBC0];
      clientInfo5 = [modelCopy clientInfo];
      v97 = [clientInfo5 objectForKeyedSubscript:@"planManagementUrl"];
      v98 = [v95 URLWithString:v97];

      [(ICQPreferencesRemoteUIDelegate *)selfCopy _freshmintStorageUpgradeWithCompletion:0 withURL:v98];
    }

    goto LABEL_111;
  }

  if ([v81 isEqualToString:@"UNIFIED_MESSAGING"])
  {
    clientInfo6 = [modelCopy clientInfo];
    v111 = [clientInfo6 objectForKeyedSubscript:@"storageChangeNotice"];

    if (v111)
    {
      [MEMORY[0x277D7F350] sendEventFor:2 withBundleID:@"com.apple.mobileslideshow" link:0];
    }
  }

  else
  {
    identifier = [modelCopy identifier];
    v113 = [identifier isEqualToString:@"manageStorageBackup"];

    if (v113)
    {
      __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke(v114, modelCopy);
    }
  }

LABEL_111:
  v99 = selfCopy;
  initialAction = selfCopy->_initialAction;
  if (initialAction)
  {
    v101 = initialAction;
    v102 = selfCopy->_initialAction;
    v103 = *MEMORY[0x277D3FD58];
    if (v102 != *MEMORY[0x277D3FD58])
    {
      selfCopy->_initialAction = 0;

      v99 = selfCopy;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke_3;
    aBlock[3] = &unk_27A65BAA8;
    v104 = modelCopy;
    v129 = v104;
    v130 = v99;
    v105 = _Block_copy(aBlock);
    if (v101 == *v87 || v101 == *MEMORY[0x277D3FD48])
    {
      [(ICQPreferencesRemoteUIDelegate *)selfCopy _presentCloudStorageOffersFlowWithAction:v101 completion:v105];
    }

    else if (v101 == *MEMORY[0x277D3FD50])
    {
      v106 = MEMORY[0x277CBEBC0];
      clientInfo7 = [v104 clientInfo];
      v108 = [clientInfo7 objectForKeyedSubscript:@"refreshUrl"];
      v109 = [v106 URLWithString:v108];

      [(ICQPreferencesRemoteUIDelegate *)selfCopy _freshmintStorageUpgradeWithCompletion:v105 withURL:v109];
    }

    else if (v101 == *MEMORY[0x277D3FD60])
    {
      [(ICQPreferencesRemoteUIDelegate *)selfCopy _activatePhotosElementForObjectModel:v104 completion:v105];
    }

    else if (v101 == v103)
    {
      [(ICQPreferencesRemoteUIDelegate *)selfCopy _activateBackupsElementForObjectModel:v104 completion:v105];
    }
  }
}

void __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = [v8 clientInfo];
  v3 = [v2 objectForKeyedSubscript:@"refreshUrl"];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [v8 clientInfo];
    v6 = [v5 objectForKeyedSubscript:@"refreshUrl"];
    v7 = [v4 URLWithString:v6];

    [v8 setSourceURL:v7];
  }
}

void __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) identifier];
    if (v6)
    {
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = *(v8 + 168);
      if (v9 == *MEMORY[0x277D3FD58])
      {
        *(v8 + 168) = 0;

        goto LABEL_11;
      }
    }

    v10 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Initial action successful; refreshing manage storage pane", &v11, 2u);
    }

    [*(a1 + 40) _reloadQuotaInfo];
  }

  else
  {
    v7 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Initial action failed with error: %{public}@", &v11, 0xCu);
    }
  }

LABEL_11:
}

- (void)loader:(id)loader didFinishLoadWithError:(id)error forRequest:(id)request
{
  *&v34[5] = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  errorCopy = error;
  requestCopy = request;
  linkCompletionBlock = self->_linkCompletionBlock;
  if (linkCompletionBlock)
  {
    linkCompletionBlock[2](linkCompletionBlock, errorCopy == 0, errorCopy);
    v12 = self->_linkCompletionBlock;
    self->_linkCompletionBlock = 0;
  }

  if (!errorCopy)
  {
    goto LABEL_18;
  }

  if (![(NSMutableArray *)self->_deleteLoaders containsObject:loaderCopy])
  {
    lastObject = [(NSMutableArray *)self->_objectModels lastObject];
    defaultPages = [lastObject defaultPages];
    lastObject2 = [defaultPages lastObject];
    tableViewOM = [lastObject2 tableViewOM];
    attributes = [tableViewOM attributes];
    v16 = [attributes objectForKey:@"deleteAllURL"];

    v26 = [loaderCopy URL];
    [(ICQPreferencesRemoteUIDelegate *)self cleanupLoader];
    v27 = [MEMORY[0x277CBEBC0] URLWithString:v16];
    if ([v26 isEqual:v27])
    {
      deleteAllDocumentsAttemptCount = self->_deleteAllDocumentsAttemptCount;

      if (deleteAllDocumentsAttemptCount <= 2)
      {
        v29 = ICQUSLogForCategory(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = self->_deleteAllDocumentsAttemptCount;
          v33 = 67109378;
          v34[0] = v30;
          LOWORD(v34[1]) = 2112;
          *(&v34[1] + 2) = errorCopy;
          _os_log_impl(&dword_275623000, v29, OS_LOG_TYPE_DEFAULT, "Failed to delete all documents on attempt #%i: %@", &v33, 0x12u);
        }

        [(ICQPreferencesRemoteUIDelegate *)self deleteAllDocuments];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    v31 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412290;
      *v34 = errorCopy;
      _os_log_impl(&dword_275623000, v31, OS_LOG_TYPE_DEFAULT, "RUILoader failed: %@", &v33, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained loadFailed:self withError:errorCopy];

    goto LABEL_16;
  }

  [(NSMutableArray *)self->_deleteLoaders removeObject:loaderCopy];
  if ([(NSMutableArray *)self->_objectModels count]>= 2)
  {
    [(ICQPreferencesRemoteUIDelegate *)self _popObjectModelAnimated:1];
    v13 = MEMORY[0x277D75110];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DELETE_ERROR" value:&stru_28844FC60 table:@"CloudGroup"];
    v16 = [v13 alertControllerWithTitle:v15 message:0 preferredStyle:1];

    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"OK" value:&stru_28844FC60 table:@"CloudGroup"];
    v20 = [v17 actionWithTitle:v19 style:0 handler:0];
    [v16 addAction:v20];

    [(UINavigationController *)self->_navigationController presentViewController:v16 animated:1 completion:0];
LABEL_17:
  }

LABEL_18:
}

- (void)objectModelDidChange:(id)change
{
  v11 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [changeCopy delegate];
    v7 = 136315394;
    v8 = "[ICQPreferencesRemoteUIDelegate objectModelDidChange:]";
    v9 = 2112;
    v10 = delegate;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s, current delegate %@", &v7, 0x16u);
  }

  [(ICQPreferencesRemoteUIDelegate *)self _processObjectModel:changeCopy];
}

- (void)objectModel:(id)model configureTableRow:(id)row page:(id)page
{
  v10 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQPreferencesRemoteUIDelegate objectModel:configureTableRow:page:]";
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  [(ICQPreferencesRemoteUIDelegate *)self _processTableRow:rowCopy];
}

- (void)_processObjectModel:(id)model
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [model subElementWithID:@"substituteRowSection"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  rows = [v4 rows];
  v6 = [rows countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(rows);
        }

        [(ICQPreferencesRemoteUIDelegate *)self _processTableRow:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [rows countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_processTableRow:(id)row
{
  v21[1] = *MEMORY[0x277D85DE8];
  rowCopy = row;
  attributes = [rowCopy attributes];
  v6 = [attributes objectForKeyedSubscript:@"hasSubstitutions"];
  if (([v6 BOOLValue] & 1) == 0)
  {

    goto LABEL_5;
  }

  attributes2 = [rowCopy attributes];
  v8 = [attributes2 objectForKeyedSubscript:@"index"];
  intValue = [v8 intValue];
  dataclassSubstitutions = [(ICQPreferencesRemoteUIDelegate *)self dataclassSubstitutions];
  v11 = [dataclassSubstitutions count];

  if (v11 > intValue)
  {
    attributes3 = [rowCopy attributes];
    attributes = [attributes3 mutableCopy];

    dataclassSubstitutions2 = [(ICQPreferencesRemoteUIDelegate *)self dataclassSubstitutions];
    attributes4 = [rowCopy attributes];
    v15 = [attributes4 objectForKeyedSubscript:@"index"];
    v16 = [dataclassSubstitutions2 objectAtIndexedSubscript:{objc_msgSend(v15, "intValue")}];

    v17 = MEMORY[0x277CE8588];
    v21[0] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v19 = [v17 localizedTextForDataclasses:v18 usedAtBeginningOfSentence:1 forAccount:0];
    [attributes setObject:v19 forKeyedSubscript:@"label"];

    v20 = [MEMORY[0x277D3FAD8] acui_iconForDataclass:v16];
    [rowCopy setImage:v20];

    [rowCopy setAttributes:attributes];
LABEL_5:
  }
}

- (void)_reloadQuotaInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ICQPreferencesRemoteUIDelegate__reloadQuotaInfo__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__ICQPreferencesRemoteUIDelegate__reloadQuotaInfo__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(*(a1 + 32) + 40) lastObject];
  v3 = [v2 defaultPages];
  v4 = [v3 lastObject];

  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __50__ICQPreferencesRemoteUIDelegate__reloadQuotaInfo__block_invoke_cold_1(v1, v5);
  }

  v6 = [*(*v1 + 1) topViewController];

  v7 = ICQUSLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4 == v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "reloading manage storage pane", buf, 2u);
    }

    v7 = [ICQCloudStorageInfo backupInfoHeadersForAccount:*(*v1 + 14)];
    [*v1 reloadTopControllerWithAdditionalHeaders:v7];
  }

  else if (v8)
  {
    *v9 = 0;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "not reloading manage storage pane since it's not on top", v9, 2u);
  }
}

- (void)buyFlowCompletionDidSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = ICQUSLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (succeedCopy)
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "buy storage successful; refreshing manage storage pane", &v9, 2u);
    }

    [(ICQPreferencesRemoteUIDelegate *)self _reloadQuotaInfo];
    [(ICQPreferencesRemoteUIDelegate *)self _postQuotaDidChangeNotification];
  }

  else
  {
    if (v8)
    {
      v9 = 138543362;
      v10 = errorCopy;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "buy storage failed with error: %{public}@", &v9, 0xCu);
    }
  }
}

- (BOOL)_loadNativeURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme containsString:@"prefs"])
  {
  }

  else
  {
    scheme2 = [lCopy scheme];
    v6 = [scheme2 isEqualToString:@"ams-ui"];

    if (!v6)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:lCopy withOptions:0];

  v8 = 1;
LABEL_6:

  return v8;
}

- (void)_presentCloudStorageOffersFlowWithAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x277CECAF8]);
  v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
  modalNavigationController = self->_modalNavigationController;
  self->_modalNavigationController = v10;

  [(UINavigationController *)self->_modalNavigationController setModalPresentationStyle:2];
  [(UINavigationController *)self->_modalNavigationController setModalTransitionStyle:0];
  [(UINavigationController *)self->_navigationController presentViewController:self->_modalNavigationController animated:1 completion:0];
  v12 = [completionCopy copy];

  storageOffersFlowCompletion = self->_storageOffersFlowCompletion;
  self->_storageOffersFlowCompletion = v12;

  storageOffersManager = self->_storageOffersManager;
  if (!storageOffersManager)
  {
    v15 = objc_alloc_init(ICQUICloudStorageOffersManager);
    v16 = self->_storageOffersManager;
    self->_storageOffersManager = v15;

    [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setDelegate:self];
    storageOffersManager = self->_storageOffersManager;
  }

  [(ICQUICloudStorageOffersManager *)storageOffersManager setShouldOfferDeviceOffers:*MEMORY[0x277D3FD48] == actionCopy];
  [(ICQUICloudStorageOffersManager *)self->_storageOffersManager beginFlowWithNavigationController:self->_modalNavigationController modally:0];
}

- (void)_activateBackupsElementForObjectModel:(id)model completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  v7 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to launch backup page", &v13, 2u);
  }

  identifier = [modelCopy identifier];

  if (identifier)
  {
    v9 = @"backups";
  }

  else
  {
    v9 = @"currentDeviceBackUp";
  }

  v10 = [modelCopy subElementWithID:v9];
  v11 = ICQUSLogForCategory(0);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "found element - activating %@", &v13, 0xCu);
    }

    [modelCopy activateElement:v10 completion:completionCopy];
  }

  else
  {
    if (v12)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Unable to launch backup page - element is nil", &v13, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_activatePhotosElementForObjectModel:(id)model completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  v7 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to launch photos page", &v11, 2u);
  }

  v8 = [modelCopy subElementWithID:@"photos"];
  v9 = ICQUSLogForCategory(0);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "found element - activating %@", &v11, 0xCu);
    }

    [modelCopy activateElement:v8 completion:completionCopy];
  }

  else
  {
    if (v10)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Unable to launch photos page - element is nil", &v11, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_freshmintStorageUpgradeWithCompletion:(id)completion withURL:(id)l
{
  if (self->_icqAction == 121)
  {
    self->_icqAction = 0;
    v6 = 121;
  }

  else
  {
    v6 = 120;
  }

  v7 = MEMORY[0x277D7F370];
  lCopy = l;
  completionCopy = completion;
  v10 = [[v7 alloc] initWithAction:v6 url:lCopy];

  [(ICQPreferencesRemoteUIDelegate *)self _freshmintStorageUpgradeWithICQLink:v10 completion:completionCopy];
}

- (void)_freshmintStorageUpgradeWithICQLink:(id)link completion:(id)completion
{
  linkCopy = link;
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  v9 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Request for Freshmint storage offer", buf, 2u);
  }

  v10 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__ICQPreferencesRemoteUIDelegate__freshmintStorageUpgradeWithICQLink_completion___block_invoke;
  block[3] = &unk_27A65BAD0;
  v25 = &v27;
  block[4] = self;
  v11 = topViewController;
  v23 = v11;
  v12 = completionCopy;
  v24 = v12;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
  v28[3] = 1;
  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__ICQPreferencesRemoteUIDelegate__freshmintStorageUpgradeWithICQLink_completion___block_invoke_293;
  v17[3] = &unk_27A65BB20;
  v21 = &v27;
  v17[4] = self;
  v14 = v11;
  v18 = v14;
  v15 = linkCopy;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  [mEMORY[0x277D7F390] getOfferWithCompletion:v17];

  _Block_object_dispose(&v27, 8);
}

void __81__ICQPreferencesRemoteUIDelegate__freshmintStorageUpgradeWithICQLink_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 56) + 8);
  if (*(v1 + 24) != 2)
  {
    *(v1 + 24) = 3;
    v3 = [*(*(a1 + 32) + 8) topViewController];
    v4 = *(a1 + 40);

    v5 = ICQUSLogForCategory(0);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3 == v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Timeout fetching Freshmint offer; presenting legacy offer", buf, 2u);
      }

      [*(a1 + 32) _presentCloudStorageOffersFlowWithAction:*MEMORY[0x277D3FD40] completion:*(a1 + 48)];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Timeout fetching Freshmint offer, but not presenting legacy offer since user navigated away", v7, 2u);
      }
    }
  }
}

void __81__ICQPreferencesRemoteUIDelegate__freshmintStorageUpgradeWithICQLink_completion___block_invoke_293(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ICQPreferencesRemoteUIDelegate__freshmintStorageUpgradeWithICQLink_completion___block_invoke_2;
  v7[3] = &unk_27A65BAF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = *(a1 + 64);
  v7[4] = v4;
  v8 = v5;
  v9 = v3;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __81__ICQPreferencesRemoteUIDelegate__freshmintStorageUpgradeWithICQLink_completion___block_invoke_2(void *a1)
{
  v1 = *(a1[9] + 8);
  if (*(v1 + 24) != 3)
  {
    *(v1 + 24) = 2;
    v3 = [*(a1[4] + 8) topViewController];
    v4 = a1[5];

    if (v3 == v4)
    {
      [*(a1[4] + 200) setOffer:a1[6]];
      [*(a1[4] + 200) setDelegate:?];
      v6 = a1[5];
      v7 = *(a1[4] + 200);
      v8 = a1[7];
      v9 = a1[8];

      [v7 beginFlowWithICQLink:v8 presenter:v6 completion:v9];
    }

    else
    {
      v5 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Freshmint storage offer not presented since user navigated away", v10, 2u);
      }
    }
  }
}

+ (id)afuiSettingsSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SIRI_LABEL" value:&stru_28844FC60 table:@"CloudGroup"];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v6 = getAFUICloudStorageViewControllerClass_softClass;
  v14 = getAFUICloudStorageViewControllerClass_softClass;
  if (!getAFUICloudStorageViewControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getAFUICloudStorageViewControllerClass_block_invoke;
    v10[3] = &unk_27A65A9F8;
    v10[4] = &v11;
    __getAFUICloudStorageViewControllerClass_block_invoke(v10);
    v6 = v12[3];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);
  v8 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:v6 cell:1 edit:0];

  return v8;
}

+ (id)healthSettingsSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"HEALTH_LABEL" value:&stru_28844FC60 table:@"CloudGroup"];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v6 = getHKHealthManageStorageViewControllerClass_softClass;
  v14 = getHKHealthManageStorageViewControllerClass_softClass;
  if (!getHKHealthManageStorageViewControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getHKHealthManageStorageViewControllerClass_block_invoke;
    v10[3] = &unk_27A65A9F8;
    v10[4] = &v11;
    __getHKHealthManageStorageViewControllerClass_block_invoke(v10);
    v6 = v12[3];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);
  v8 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:v6 cell:1 edit:0];

  return v8;
}

+ (id)messagesSettingsSpecifier
{
  [self _loadCKStoragePluginSettingsBundleIfNeeded];
  v2 = NSClassFromString(&cfstr_Ckcloudmessage.isa);

  return [(objc_class *)v2 specifier];
}

- (void)_postQuotaDidChangeNotification
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"QuotaDidChange";
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "ICQPreferencesRemoteUIDelegate posting %@ notification.", &v4, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"QuotaDidChange" object:0];
}

- (void)managerDidCancel:(id)cancel
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Cloud storage offers flow did cancel.", v7, 2u);
  }

  if (self->_storageOffersFlowCompletion)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Preferences.cloud-storage-offers" code:1 userInfo:0];
    (*(self->_storageOffersFlowCompletion + 2))();
    storageOffersFlowCompletion = self->_storageOffersFlowCompletion;
    self->_storageOffersFlowCompletion = 0;
  }
}

- (void)manager:(id)manager didCompleteWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = errorCopy;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Cloud storage offers flow did complete with error: %{public}@", &v11, 0xCu);
  }

  storageOffersFlowCompletion = self->_storageOffersFlowCompletion;
  if (storageOffersFlowCompletion)
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:@"com.apple.Preferences.cloud-storage-offers"])
      {
        v9 = [errorCopy code] == 2;
      }

      else
      {
        v9 = 0;
      }

      storageOffersFlowCompletion = self->_storageOffersFlowCompletion;
    }

    else
    {
      v9 = 1;
    }

    storageOffersFlowCompletion[2](storageOffersFlowCompletion, v9, errorCopy);
    v10 = self->_storageOffersFlowCompletion;
    self->_storageOffersFlowCompletion = 0;
  }
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v3 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Freshmint upgradeFlowManagerDidCancel:", v4, 2u);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v4 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Freshmint upgradeFlowManagerDidComplete:", v5, 2u);
  }

  [(ICQPreferencesRemoteUIDelegate *)self _reloadQuotaInfo];
  [(ICQPreferencesRemoteUIDelegate *)self _postQuotaDidChangeNotification];
}

+ (void)_loadCKStoragePluginSettingsBundleIfNeeded
{
  v2 = MEMORY[0x277C80FF0](self, a2);
  v3 = [v2 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/StoragePlugins"];

  v4 = [v3 stringByAppendingPathComponent:@"CKStoragePlugin.bundle"];
  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  if (([v5 isLoaded] & 1) == 0)
  {
    v6 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "CKStoragePlugin settings bundle not loaded. Loading...", v7, 2u);
    }

    [v5 load];
  }
}

- (void)beginLegacyFlow
{
  v2 = *MEMORY[0x277D3FD40];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__ICQPreferencesRemoteUIDelegate_beginLegacyFlow__block_invoke;
  v3[3] = &unk_27A65A7F8;
  v3[4] = self;
  [(ICQPreferencesRemoteUIDelegate *)self _presentCloudStorageOffersFlowWithAction:v2 completion:v3];
}

- (DelayedPushDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loader:receivedObjectModel:topActionSignal:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)loader:receivedObjectModel:topActionSignal:.cold.2()
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __50__ICQPreferencesRemoteUIDelegate__reloadQuotaInfo__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(*a1 + 8) topViewController];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_275623000, a2, OS_LOG_TYPE_DEBUG, "[_navigationController topViewController]: %@", &v4, 0xCu);
}

@end