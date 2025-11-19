@interface ICQPreferencesRemoteUIDelegate
+ (id)afuiSettingsSpecifier;
+ (id)healthSettingsSpecifier;
+ (id)messagesSettingsSpecifier;
+ (void)_loadCKStoragePluginSettingsBundleIfNeeded;
- (BOOL)_loadNativeURL:(id)a3;
- (BOOL)objectModel:(id)a3 page:(id)a4 deletedTableRow:(id)a5 atIndexPath:(id)a6 withURL:(id)a7 httpMethod:(id)a8;
- (DelayedPushDelegate)delegate;
- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)a3;
- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)a3 buyStorageFlow:(BOOL)a4;
- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)a3 initialAction:(id)a4;
- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)a3 initialAction:(id)a4 account:(id)a5;
- (void)_activateBackupsElementForObjectModel:(id)a3 completion:(id)a4;
- (void)_activatePhotosElementForObjectModel:(id)a3 completion:(id)a4;
- (void)_freshmintStorageUpgradeWithCompletion:(id)a3 withURL:(id)a4;
- (void)_freshmintStorageUpgradeWithICQLink:(id)a3 completion:(id)a4;
- (void)_popObjectModelAnimated:(BOOL)a3;
- (void)_postQuotaDidChangeNotification;
- (void)_presentCloudStorageOffersFlowWithAction:(id)a3 completion:(id)a4;
- (void)_processObjectModel:(id)a3;
- (void)_processTableRow:(id)a3;
- (void)_reloadQuotaInfo;
- (void)beginLegacyFlow;
- (void)buyFlowCompletionDidSucceed:(BOOL)a3 error:(id)a4;
- (void)cleanupLoader;
- (void)confirmDeleteAll;
- (void)confirmDeleteWithTitle:(id)a3 prompt:(id)a4 explanation:(id)a5 confirmationAction:(id)a6;
- (void)dealloc;
- (void)deleteAllDocuments;
- (void)loadURL:(id)a3 postBody:(id)a4 additionalHeaders:(id)a5;
- (void)loader:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)loader:(id)a3 receivedObjectModel:(id)a4 topActionSignal:(id)a5;
- (void)manager:(id)a3 didCompleteWithError:(id)a4;
- (void)managerDidCancel:(id)a3;
- (void)objectModel:(id)a3 configureTableRow:(id)a4 page:(id)a5;
- (void)objectModel:(id)a3 page:(id)a4 toggledEditing:(BOOL)a5;
- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5;
- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5 completion:(id)a6;
- (void)objectModelDidChange:(id)a3;
- (void)objectModelPressedBack:(id)a3;
- (void)popAndReloadFromRemoteUI:(BOOL)a3 additionalHeaders:(id)a4;
- (void)reloadTopControllerWithAdditionalHeaders:(id)a3;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
- (void)willShowController:(id)a3;
@end

@implementation ICQPreferencesRemoteUIDelegate

- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)a3
{
  v4 = MEMORY[0x277CB8F48];
  v5 = a3;
  v6 = [v4 defaultStore];
  v7 = [v6 aa_primaryAppleAccount];
  v8 = [(ICQPreferencesRemoteUIDelegate *)self initWithNavigationController:v5 initialAction:0 account:v7];

  return v8;
}

- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)a3 initialAction:(id)a4
{
  v6 = MEMORY[0x277CB8F48];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultStore];
  v10 = [v9 aa_primaryAppleAccount];
  v11 = [(ICQPreferencesRemoteUIDelegate *)self initWithNavigationController:v8 initialAction:v7 account:v10];

  return v11;
}

- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)a3 buyStorageFlow:(BOOL)a4
{
  if (a4)
  {
    v6 = *MEMORY[0x277D3FD40];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277CB8F48];
  v8 = a3;
  v9 = [v7 defaultStore];
  v10 = [v9 aa_primaryAppleAccount];
  v11 = [(ICQPreferencesRemoteUIDelegate *)self initWithNavigationController:v8 initialAction:v6 account:v10];

  return v11;
}

- (ICQPreferencesRemoteUIDelegate)initWithNavigationController:(id)a3 initialAction:(id)a4 account:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ICQPreferencesRemoteUIDelegate;
  v12 = [(ICQPreferencesRemoteUIDelegate *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_navigationController, a3);
    objc_storeStrong(&v13->_initialAction, a4);
    objc_storeStrong(&v13->_account, a5);
    v14 = objc_alloc_init(ICQPreferencesFreshmintManager);
    freshmintManager = v13->_freshmintManager;
    v13->_freshmintManager = v14;

    [(ICQPreferencesFreshmintManager *)v13->_freshmintManager setDelegate:v13];
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:v13 selector:sel_willShowController_ name:*MEMORY[0x277D40048] object:v13->_navigationController];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v13 selector:sel__reloadQuotaInfo name:@"QuotaInformationChanged" object:0];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(UINavigationController *)self->_navigationController presentedViewController];
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

- (void)willShowController:(id)a3
{
  v12 = a3;
  v4 = [v12 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D40050]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v12 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277D40058]];
    v8 = [v7 intValue];

    if (v8 == 2)
    {
      v9 = [(NSMutableArray *)self->_objectModels lastObject];
      v10 = [v9 defaultPages];
      v11 = [v10 containsObject:v5];

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

- (void)loadURL:(id)a3 postBody:(id)a4 additionalHeaders:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
  v12 = [v11 isEqualToString:@"MANAGE"];

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

  v21 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
  v22 = [v21 isEqualToString:@"MANAGE_DRILLDOWN"];

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

  v42 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];

  if (v42)
  {
    v43 = _ICQGetLogSystem();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
      *buf = 138412290;
      v51 = v44;
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
    v51 = v10;
    _os_log_impl(&dword_275623000, v28, OS_LOG_TYPE_DEFAULT, "additional headers: %@", buf, 0xCu);
  }

  v29 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v8 cachePolicy:1 timeoutInterval:30.0];
  [v29 ak_addAnisetteHeaders];
  [v29 ak_addDeviceUDIDHeader];
  if (v9)
  {
    [v29 setHTTPBody:v9];
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
  v31 = v10;
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

- (void)reloadTopControllerWithAdditionalHeaders:(id)a3
{
  objectModels = self->_objectModels;
  v5 = a3;
  v7 = [(NSMutableArray *)objectModels lastObject];
  self->_forceActionSignal = 3;
  v6 = [v7 sourceURL];
  [(ICQPreferencesRemoteUIDelegate *)self loadURL:v6 postBody:0 additionalHeaders:v5];
}

- (void)popAndReloadFromRemoteUI:(BOOL)a3 additionalHeaders:(id)a4
{
  v14 = a4;
  if (a3)
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
  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:@"manageStorageBackup"];

  v12 = 4;
  if (v11)
  {
    v12 = 8;
  }

  self->_forceActionSignal = v12;
  v13 = [v9 sourceURL];
  [(ICQPreferencesRemoteUIDelegate *)self loadURL:v13 postBody:0 additionalHeaders:v14];
}

- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  [(ICQPreferencesRemoteUIDelegate *)self cleanupLoader];
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v7;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Action taken at PrefRUIDelegate: %@", buf, 0xCu);
  }

  if ([v7 isEqualToString:@"localBackup"])
  {
    v10 = ICQLocalBackupController;
LABEL_7:
    v11 = [(__objc2_class *)v10 specifierForAccount:self->_account];
LABEL_8:
    v12 = v11;
    [v11 setProperty:v8 forKey:@"attributes"];
    [v12 setProperty:self forKey:@"remoteDelegate"];
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"remoteBackup"])
  {
    v10 = ICQRemoteBackupController;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"buyStorage"])
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
    if ([v7 isEqualToString:@"afuiSettings"])
    {
      v11 = +[ICQPreferencesRemoteUIDelegate afuiSettingsSpecifier];
      goto LABEL_8;
    }

    if ([v7 isEqualToString:@"messagesSettings"])
    {
      v11 = +[ICQPreferencesRemoteUIDelegate messagesSettingsSpecifier];
      goto LABEL_8;
    }

    if ([v7 isEqualToString:@"healthSettings"])
    {
      v11 = +[ICQPreferencesRemoteUIDelegate healthSettingsSpecifier];
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_9:
  v13 = [v8 objectForKeyedSubscript:@"action"];
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

  v18 = [(ICQPreferencesRemoteUIDelegate *)self freshmintManager];
  [v18 setShouldShowFreshmint:1];

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

- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5 completion:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v11;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "linkURL: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __80__ICQPreferencesRemoteUIDelegate_objectModel_pressedLink_httpMethod_completion___block_invoke;
  v43 = &unk_27A65BA58;
  v15 = v11;
  v44 = v15;
  objc_copyWeak(&v47, buf);
  v16 = v13;
  v45 = self;
  v46 = v16;
  v17 = _Block_copy(&v40);
  if (([(RUILoader *)self->_loader isLoading:v40]& 1) == 0 && ![(ICQPreferencesRemoteUIDelegate *)self _loadNativeURL:v15])
  {
    v18 = [v12 lowercaseString];
    v19 = [v18 isEqualToString:@"liftui"];

    if (v19)
    {
      v20 = [(ICQPreferencesRemoteUIDelegate *)self liftUIDelegate];
      v21 = v20 == 0;

      if (v21)
      {
        v22 = [[ICQUIPreferencesLiftUIDelegate alloc] initWithNavigationController:self->_navigationController account:self->_account];
        [(ICQPreferencesRemoteUIDelegate *)self setLiftUIDelegate:v22];

        v23 = [(ICQPreferencesRemoteUIDelegate *)self liftUIDelegate];
        [v23 setDelegate:self];
      }

      v24 = [(ICQPreferencesRemoteUIDelegate *)self liftUIDelegate];
      [v24 loadURL:v15];

      v17[2](v17, 1, 0);
    }

    else
    {
      v25 = [v12 lowercaseString];
      v26 = [v25 isEqualToString:@"post"];

      if (v26)
      {
        v27 = [MEMORY[0x277CBEB38] dictionary];
        v28 = [v10 defaultPages];
        v29 = [v28 lastObject];
        [v29 populatePostbackDictionary:v27];

        if (v27)
        {
          v30 = [MEMORY[0x277CCAC58] dataWithPropertyList:v27 format:100 options:0 error:0];
          requestContentType = self->_requestContentType;
          self->_requestContentType = @"application/x-plist";
        }

        else
        {
          v30 = [v10 postbackData];
        }

        v38 = _Block_copy(v17);
        linkCompletionBlock = self->_linkCompletionBlock;
        self->_linkCompletionBlock = v38;

        [(ICQPreferencesRemoteUIDelegate *)self loadURL:v15 postBody:v30];
      }

      else
      {
        v32 = [(ICQPreferencesRemoteUIDelegate *)self freshmintManager];
        v33 = [v32 shouldShowFreshmint];

        if (v33)
        {
          [(ICQPreferencesRemoteUIDelegate *)self _freshmintStorageUpgradeWithCompletion:v17 withURL:v15];
        }

        else
        {
          if ([(ICQPreferencesRemoteUIDelegate *)self isManageStorage])
          {
            v34 = [v10 identifier];
            v35 = [v34 isEqualToString:@"iCloudManageStorage"];

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
  v3 = [(NSMutableArray *)self->_objectModels lastObject];
  v4 = [v3 defaultPages];
  v5 = [v4 lastObject];
  v6 = [v5 tableViewOM];
  v7 = [v6 attributes];
  v9 = [v7 objectForKey:@"deleteAllURL"];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  [(ICQPreferencesRemoteUIDelegate *)self loadURL:v8 postBody:0];
}

- (void)confirmDeleteAll
{
  v3 = [(NSMutableArray *)self->_objectModels lastObject];
  v4 = [v3 defaultPages];
  v5 = [v4 lastObject];
  v6 = [v5 tableViewOM];
  v7 = [v6 sections];
  v8 = [v7 objectAtIndex:0];
  v9 = [v8 attributes];
  v18 = [v9 objectForKey:@"header"];

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

- (void)confirmDeleteWithTitle:(id)a3 prompt:(id)a4 explanation:(id)a5 confirmationAction:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x277D75418];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v11 currentDevice];
  v16 = [v15 sf_isiPad];

  if (v16)
  {
    v17 = v13;
  }

  else
  {
    v17 = v12;
  }

  if (v16)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v18 preferredStyle:v16];

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
  v28 = v10;
  v25 = v10;
  v26 = [v24 actionWithTitle:v14 style:2 handler:v27];

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

- (void)objectModel:(id)a3 page:(id)a4 toggledEditing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v5)
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
    v17 = [v10 tableViewOM];
    v18 = [v17 tableView];
    [v18 setTableFooterView:self->_button];

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
    v21 = v9;
    [v19 animateWithDuration:v22 animations:v20 completion:0.3];
  }
}

void __66__ICQPreferencesRemoteUIDelegate_objectModel_page_toggledEditing___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) tableViewOM];
  v1 = [v2 tableView];
  [v1 setTableFooterView:0];
}

- (BOOL)objectModel:(id)a3 page:(id)a4 deletedTableRow:(id)a5 atIndexPath:(id)a6 withURL:(id)a7 httpMethod:(id)a8
{
  v13 = MEMORY[0x277CBEAC0];
  v14 = a5;
  v15 = [v13 dictionaryWithObjectsAndKeys:{a3, @"objectModel", a4, @"page", v14, @"row", a6, @"indexPath", a7, @"url", a8, @"httpMethod", 0}];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v27 localizedStringForKey:@"DELETE_ITEM" value:&stru_28844FC60 table:@"CloudGroup"];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"DELETE_ITEM_PROMPT" value:&stru_28844FC60 table:@"CloudGroup"];
  v19 = MEMORY[0x277CCACA8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"DELETE_ITEM_EXPLAINATION" value:&stru_28844FC60 table:@"CloudGroup"];
  v22 = [v14 attributes];

  v23 = [v22 objectForKey:@"label"];
  v24 = [v19 stringWithFormat:v21, v23];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __98__ICQPreferencesRemoteUIDelegate_objectModel_page_deletedTableRow_atIndexPath_withURL_httpMethod___block_invoke;
  v29[3] = &unk_27A65A708;
  v30 = v15;
  v31 = self;
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

- (void)_popObjectModelAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(NSMutableArray *)self->_objectModels count])
  {
    [ICQPreferencesRemoteUIDelegate _popObjectModelAnimated:];
  }

  v12 = [(NSMutableArray *)self->_objectModels lastObject];
  [(NSMutableArray *)self->_objectModels removeLastObject];
  v5 = [v12 defaultPages];
  v6 = [v5 count] - 1;
  if (v6 >= 0)
  {
    do
    {
      v7 = [v5 objectAtIndex:v6];
      v8 = [(UINavigationController *)self->_navigationController topViewController];

      if (v8 == v7)
      {
        if (v6)
        {
          v9 = 0;
        }

        else
        {
          v9 = v3;
        }

        v10 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:v9];
      }
    }

    while (v6-- > 0);
  }
}

- (void)objectModelPressedBack:(id)a3
{
  v9 = a3;
  [(ICQPreferencesRemoteUIDelegate *)self cleanupLoader];
  v4 = [(UINavigationController *)self->_navigationController topViewController];
  v5 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    if (v6)
    {
      v7 = [v9 defaultPages];
      v8 = [v7 containsObject:v6];

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

- (void)loader:(id)a3 receivedObjectModel:(id)a4 topActionSignal:(id)a5
{
  v166 = *MEMORY[0x277D85DE8];
  v121 = a3;
  v126 = a4;
  v118 = a5;
  v127 = self;
  v8 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
  LODWORD(a4) = [v8 isEqualToString:@"MANAGE"];

  if (a4)
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
    v13 = [(ICQPreferencesRemoteUIDelegate *)self nextSignpostId];
    v14 = [v13 isEqualToString:@"MANAGE_DRILLDOWN"];

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

  v19 = [(ICQPreferencesRemoteUIDelegate *)self lastDocumentDeleteLoader];
  v116 = [v19 isEqual:v121];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v22 = [v126 allPages];
    v23 = [v22 countByEnumeratingWithState:&v149 objects:v161 count:16];
    if (v23)
    {
      v24 = *v150;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v150 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v149 + 1) + 8 * i);
          v27 = objc_loadWeakRetained(&v127->_delegate);
          [v27 remoteUIDelegate:v127 didCreatePage:v26 forAccount:v127->_account inObjectModel:v126];
        }

        v23 = [v22 countByEnumeratingWithState:&v149 objects:v161 count:16];
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
    v22 = [v126 allPages];
    v30 = [v22 countByEnumeratingWithState:&v145 objects:v160 count:16];
    if (v30)
    {
      v31 = *v146;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v146 != v31)
          {
            objc_enumerationMutation(v22);
          }

          v33 = *(*(&v145 + 1) + 8 * j);
          v34 = objc_loadWeakRetained(&v127->_delegate);
          [v34 remoteUIDelegate:v127 didCreatePage:v33 inObjectModel:v126];
        }

        v30 = [v22 countByEnumeratingWithState:&v145 objects:v160 count:16];
      }

      while (v30);
    }
  }

LABEL_32:
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = [v126 allPages];
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
        v39 = [v38 tableViewOM];
        v122 = [v39 sections];

        v124 = [v122 countByEnumeratingWithState:&v137 objects:v158 count:16];
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
                objc_enumerationMutation(v122);
                v40 = v41;
              }

              v125 = v40;
              v42 = *(*(&v137 + 1) + 8 * v40);
              v133 = 0u;
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              v43 = [v42 rows];
              v44 = [v43 countByEnumeratingWithState:&v133 objects:v157 count:16];
              if (v44)
              {
                v45 = *v134;
                while (2)
                {
                  for (k = 0; k != v44; ++k)
                  {
                    if (*v134 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = *(*(&v133 + 1) + 8 * k);
                    v48 = [v47 attributes];
                    v49 = [v48 objectForKeyedSubscript:@"encryptedFile"];

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
                        v59 = [ICQFamilySharingHook _beginFamilySharingFlowWithCompletion:];
                        __break(1u);
                        goto LABEL_70;
                      }

                      v52 = v51(v50, &v132);

                      v53 = v132;
                      if (v52)
                      {
                        v54 = [v47 attributes];
                        v55 = [v54 mutableCopy];

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

                  v44 = [v43 countByEnumeratingWithState:&v133 objects:v157 count:16];
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
            v124 = [v122 countByEnumeratingWithState:&v137 objects:v158 count:16];
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

  if (![(NSMutableArray *)v127->_deleteLoaders containsObject:v121]|| ([(NSMutableArray *)v127->_deleteLoaders removeObject:v121], v116))
  {
    [(ICQPreferencesRemoteUIDelegate *)v127 setLastDocumentDeleteLoader:0];
    [v126 setDelegate:v127];
    v56 = v127;
    linkCompletionBlock = v127->_linkCompletionBlock;
    if (linkCompletionBlock)
    {
      linkCompletionBlock[2](linkCompletionBlock, 1, 0);
      v58 = v127->_linkCompletionBlock;
      v127->_linkCompletionBlock = 0;

      v56 = v127;
    }

    if (!v56->_cancelled)
    {
      v59 = [v118 topSignal];
      v60 = v127;
      forceActionSignal = v127->_forceActionSignal;
      if (forceActionSignal)
      {
        v127->_forceActionSignal = 0;
        v62 = forceActionSignal;
      }

      else
      {
LABEL_70:
        v62 = v59;
      }

      v63 = objc_loadWeakRetained(&v60->_delegate);

      if (v63)
      {
        v64 = objc_loadWeakRetained(&v127->_delegate);
        [v64 loadFinished:v127];
      }

      objectModels = v127->_objectModels;
      if (!objectModels)
      {
        v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v67 = v127->_objectModels;
        v127->_objectModels = v66;

        objectModels = v127->_objectModels;
      }

      if (![(NSMutableArray *)objectModels count])
      {
        if (v62 == 3)
        {
          if ([(ICQPreferencesRemoteUIDelegate *)v127 isNativeManageStorage])
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

      v68 = [v126 defaultPages];
      v69 = [v68 lastObject];

      if (v62 == 2 && v69)
      {
        [(NSMutableArray *)v127->_objectModels addObject:v126];
        [(UINavigationController *)v127->_navigationController showViewController:v69 sender:?];
        [(UINavigationController *)v127->_navigationController setToolbarHidden:1 animated:0];
      }

      else if (v62 == 3 && v69)
      {
        v70 = [(UINavigationController *)v127->_navigationController viewControllers];
        v71 = [v70 mutableCopy];

        [(NSMutableArray *)v127->_objectModels removeLastObject];
        [v71 removeLastObject];
        [v71 addObject:v69];
        [(NSMutableArray *)v127->_objectModels addObject:v126];
        [(UINavigationController *)v127->_navigationController setViewControllers:v71 animated:0];
      }

      else if (v62 == 4)
      {
        if (v69)
        {
          v72 = [v126 clientInfo];
          v73 = [v72 objectForKeyedSubscript:@"shouldRefreshStorageGraph"];

          if (-[ICQPreferencesRemoteUIDelegate isNativeManageStorage](v127, "isNativeManageStorage") && [v73 isEqualToString:@"true"])
          {
            v74 = [(UINavigationController *)v127->_navigationController popViewControllerAnimated:1];
            v75 = [MEMORY[0x277CCAB98] defaultCenter];
            [v75 postNotificationName:@"QuotaDidChange" object:0];
          }

          else if ([(NSMutableArray *)v127->_objectModels count]> 1)
          {
            v76 = +[ICQQuotaRequestManager sharedManager];
            [v76 noteQuotaInfoChanged];

            v75 = [(UINavigationController *)v127->_navigationController topViewController];
            [(NSMutableArray *)v127->_objectModels removeLastObject];
            [(NSMutableArray *)v127->_objectModels removeLastObject];
            v77 = [(UINavigationController *)v127->_navigationController viewControllers];
            v78 = [v77 mutableCopy];

            [v78 removeLastObject];
            [v78 removeLastObject];
            [(NSMutableArray *)v127->_objectModels addObject:v126];
            [v78 addObject:v69];
            [v78 addObject:v75];
            [(UINavigationController *)v127->_navigationController setViewControllers:v78 animated:0];
            v79 = [(UINavigationController *)v127->_navigationController popViewControllerAnimated:1];
          }

          else
          {
            v75 = ICQUSLogForCategory(0);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_275623000, v75, OS_LOG_TYPE_DEFAULT, "Pop + Replace requires at least 2 existing object models.", &buf, 2u);
            }
          }
        }

        else
        {
          [(ICQPreferencesRemoteUIDelegate *)v127 _popObjectModelAnimated:1];
        }
      }

      v56 = v127;
    }

    [(ICQPreferencesRemoteUIDelegate *)v56 cleanupLoader];
  }

  v80 = [v126 clientInfo];
  v81 = [v80 objectForKeyedSubscript:@"action"];

  if ([v81 isEqualToString:@"remoteAction:launchApp"])
  {
    v82 = MEMORY[0x277CBEBC0];
    v83 = [v126 clientInfo];
    v84 = [v83 objectForKeyedSubscript:@"remoteLaunchUrl"];
    v85 = [v82 URLWithString:v84];

    [(ICQPreferencesRemoteUIDelegate *)v127 _loadNativeURL:v85];
  }

  v86 = [v81 isEqualToString:@"buyStorage"];
  v87 = MEMORY[0x277D3FD40];
  if (v86)
  {
    __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke(v86, v126);
    v88 = *v87;
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke_2;
    v131[3] = &unk_27A65A7F8;
    v131[4] = v127;
    [(ICQPreferencesRemoteUIDelegate *)v127 _presentCloudStorageOffersFlowWithAction:v88 completion:v131];
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
    __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke(v89, v126);
    v93 = [v126 clientInfo];
    v94 = [v93 objectForKeyedSubscript:@"planManagementUrl"];

    if (v94)
    {
      v127->_icqAction = _ICQActionForString();
      v95 = MEMORY[0x277CBEBC0];
      v96 = [v126 clientInfo];
      v97 = [v96 objectForKeyedSubscript:@"planManagementUrl"];
      v98 = [v95 URLWithString:v97];

      [(ICQPreferencesRemoteUIDelegate *)v127 _freshmintStorageUpgradeWithCompletion:0 withURL:v98];
    }

    goto LABEL_111;
  }

  if ([v81 isEqualToString:@"UNIFIED_MESSAGING"])
  {
    v110 = [v126 clientInfo];
    v111 = [v110 objectForKeyedSubscript:@"storageChangeNotice"];

    if (v111)
    {
      [MEMORY[0x277D7F350] sendEventFor:2 withBundleID:@"com.apple.mobileslideshow" link:0];
    }
  }

  else
  {
    v112 = [v126 identifier];
    v113 = [v112 isEqualToString:@"manageStorageBackup"];

    if (v113)
    {
      __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke(v114, v126);
    }
  }

LABEL_111:
  v99 = v127;
  initialAction = v127->_initialAction;
  if (initialAction)
  {
    v101 = initialAction;
    v102 = v127->_initialAction;
    v103 = *MEMORY[0x277D3FD58];
    if (v102 != *MEMORY[0x277D3FD58])
    {
      v127->_initialAction = 0;

      v99 = v127;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__ICQPreferencesRemoteUIDelegate_loader_receivedObjectModel_topActionSignal___block_invoke_3;
    aBlock[3] = &unk_27A65BAA8;
    v104 = v126;
    v129 = v104;
    v130 = v99;
    v105 = _Block_copy(aBlock);
    if (v101 == *v87 || v101 == *MEMORY[0x277D3FD48])
    {
      [(ICQPreferencesRemoteUIDelegate *)v127 _presentCloudStorageOffersFlowWithAction:v101 completion:v105];
    }

    else if (v101 == *MEMORY[0x277D3FD50])
    {
      v106 = MEMORY[0x277CBEBC0];
      v107 = [v104 clientInfo];
      v108 = [v107 objectForKeyedSubscript:@"refreshUrl"];
      v109 = [v106 URLWithString:v108];

      [(ICQPreferencesRemoteUIDelegate *)v127 _freshmintStorageUpgradeWithCompletion:v105 withURL:v109];
    }

    else if (v101 == *MEMORY[0x277D3FD60])
    {
      [(ICQPreferencesRemoteUIDelegate *)v127 _activatePhotosElementForObjectModel:v104 completion:v105];
    }

    else if (v101 == v103)
    {
      [(ICQPreferencesRemoteUIDelegate *)v127 _activateBackupsElementForObjectModel:v104 completion:v105];
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

- (void)loader:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  *&v34[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  linkCompletionBlock = self->_linkCompletionBlock;
  if (linkCompletionBlock)
  {
    linkCompletionBlock[2](linkCompletionBlock, v9 == 0, v9);
    v12 = self->_linkCompletionBlock;
    self->_linkCompletionBlock = 0;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  if (![(NSMutableArray *)self->_deleteLoaders containsObject:v8])
  {
    v21 = [(NSMutableArray *)self->_objectModels lastObject];
    v22 = [v21 defaultPages];
    v23 = [v22 lastObject];
    v24 = [v23 tableViewOM];
    v25 = [v24 attributes];
    v16 = [v25 objectForKey:@"deleteAllURL"];

    v26 = [v8 URL];
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
          *(&v34[1] + 2) = v9;
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
      *v34 = v9;
      _os_log_impl(&dword_275623000, v31, OS_LOG_TYPE_DEFAULT, "RUILoader failed: %@", &v33, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained loadFailed:self withError:v9];

    goto LABEL_16;
  }

  [(NSMutableArray *)self->_deleteLoaders removeObject:v8];
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

- (void)objectModelDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 delegate];
    v7 = 136315394;
    v8 = "[ICQPreferencesRemoteUIDelegate objectModelDidChange:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s, current delegate %@", &v7, 0x16u);
  }

  [(ICQPreferencesRemoteUIDelegate *)self _processObjectModel:v4];
}

- (void)objectModel:(id)a3 configureTableRow:(id)a4 page:(id)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQPreferencesRemoteUIDelegate objectModel:configureTableRow:page:]";
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  [(ICQPreferencesRemoteUIDelegate *)self _processTableRow:v6];
}

- (void)_processObjectModel:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 subElementWithID:@"substituteRowSection"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 rows];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(ICQPreferencesRemoteUIDelegate *)self _processTableRow:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_processTableRow:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 attributes];
  v6 = [v5 objectForKeyedSubscript:@"hasSubstitutions"];
  if (([v6 BOOLValue] & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = [v4 attributes];
  v8 = [v7 objectForKeyedSubscript:@"index"];
  v9 = [v8 intValue];
  v10 = [(ICQPreferencesRemoteUIDelegate *)self dataclassSubstitutions];
  v11 = [v10 count];

  if (v11 > v9)
  {
    v12 = [v4 attributes];
    v5 = [v12 mutableCopy];

    v13 = [(ICQPreferencesRemoteUIDelegate *)self dataclassSubstitutions];
    v14 = [v4 attributes];
    v15 = [v14 objectForKeyedSubscript:@"index"];
    v16 = [v13 objectAtIndexedSubscript:{objc_msgSend(v15, "intValue")}];

    v17 = MEMORY[0x277CE8588];
    v21[0] = v16;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v19 = [v17 localizedTextForDataclasses:v18 usedAtBeginningOfSentence:1 forAccount:0];
    [v5 setObject:v19 forKeyedSubscript:@"label"];

    v20 = [MEMORY[0x277D3FAD8] acui_iconForDataclass:v16];
    [v4 setImage:v20];

    [v4 setAttributes:v5];
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

- (void)buyFlowCompletionDidSucceed:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = ICQUSLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
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
      v10 = v6;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "buy storage failed with error: %{public}@", &v9, 0xCu);
    }
  }
}

- (BOOL)_loadNativeURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if ([v4 containsString:@"prefs"])
  {
  }

  else
  {
    v5 = [v3 scheme];
    v6 = [v5 isEqualToString:@"ams-ui"];

    if (!v6)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v7 openSensitiveURL:v3 withOptions:0];

  v8 = 1;
LABEL_6:

  return v8;
}

- (void)_presentCloudStorageOffersFlowWithAction:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = [v7 copy];

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

  [(ICQUICloudStorageOffersManager *)storageOffersManager setShouldOfferDeviceOffers:*MEMORY[0x277D3FD48] == v6];
  [(ICQUICloudStorageOffersManager *)self->_storageOffersManager beginFlowWithNavigationController:self->_modalNavigationController modally:0];
}

- (void)_activateBackupsElementForObjectModel:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to launch backup page", &v13, 2u);
  }

  v8 = [v5 identifier];

  if (v8)
  {
    v9 = @"backups";
  }

  else
  {
    v9 = @"currentDeviceBackUp";
  }

  v10 = [v5 subElementWithID:v9];
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

    [v5 activateElement:v10 completion:v6];
  }

  else
  {
    if (v12)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Unable to launch backup page - element is nil", &v13, 2u);
    }

    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)_activatePhotosElementForObjectModel:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to launch photos page", &v11, 2u);
  }

  v8 = [v5 subElementWithID:@"photos"];
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

    [v5 activateElement:v8 completion:v6];
  }

  else
  {
    if (v10)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Unable to launch photos page - element is nil", &v11, 2u);
    }

    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)_freshmintStorageUpgradeWithCompletion:(id)a3 withURL:(id)a4
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
  v8 = a4;
  v9 = a3;
  v10 = [[v7 alloc] initWithAction:v6 url:v8];

  [(ICQPreferencesRemoteUIDelegate *)self _freshmintStorageUpgradeWithICQLink:v10 completion:v9];
}

- (void)_freshmintStorageUpgradeWithICQLink:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v8 = [(UINavigationController *)self->_navigationController topViewController];
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
  v11 = v8;
  v23 = v11;
  v12 = v7;
  v24 = v12;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
  v28[3] = 1;
  v13 = [MEMORY[0x277D7F390] sharedOfferManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__ICQPreferencesRemoteUIDelegate__freshmintStorageUpgradeWithICQLink_completion___block_invoke_293;
  v17[3] = &unk_27A65BB20;
  v21 = &v27;
  v17[4] = self;
  v14 = v11;
  v18 = v14;
  v15 = v6;
  v19 = v15;
  v16 = v12;
  v20 = v16;
  [v13 getOfferWithCompletion:v17];

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
  v8 = [v3 preferenceSpecifierNamed:v5 target:a1 set:0 get:0 detail:v6 cell:1 edit:0];

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
  v8 = [v3 preferenceSpecifierNamed:v5 target:a1 set:0 get:0 detail:v6 cell:1 edit:0];

  return v8;
}

+ (id)messagesSettingsSpecifier
{
  [a1 _loadCKStoragePluginSettingsBundleIfNeeded];
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

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"QuotaDidChange" object:0];
}

- (void)managerDidCancel:(id)a3
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

- (void)manager:(id)a3 didCompleteWithError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Cloud storage offers flow did complete with error: %{public}@", &v11, 0xCu);
  }

  storageOffersFlowCompletion = self->_storageOffersFlowCompletion;
  if (storageOffersFlowCompletion)
  {
    if (v5)
    {
      v8 = [v5 domain];
      if ([v8 isEqualToString:@"com.apple.Preferences.cloud-storage-offers"])
      {
        v9 = [v5 code] == 2;
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

    storageOffersFlowCompletion[2](storageOffersFlowCompletion, v9, v5);
    v10 = self->_storageOffersFlowCompletion;
    self->_storageOffersFlowCompletion = 0;
  }
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v3 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Freshmint upgradeFlowManagerDidCancel:", v4, 2u);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)a3
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
  v2 = MEMORY[0x277C80FF0](a1, a2);
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