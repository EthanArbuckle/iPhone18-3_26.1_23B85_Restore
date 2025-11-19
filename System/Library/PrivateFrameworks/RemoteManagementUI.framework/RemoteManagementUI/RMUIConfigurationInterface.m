@interface RMUIConfigurationInterface
- (NSString)scopeHeading;
- (RMUIConfigurationInterface)initWithAccount:(id)a3 scope:(int64_t)a4 initialLoad:(BOOL)a5;
- (RMUIConfigurationInterface)initWithDeclarationsPayloadIdentifiers:(id)a3 scope:(int64_t)a4 initialLoad:(BOOL)a5;
- (RMUIConfigurationInterface)initWithMDMProfileIdentifier:(id)a3 scope:(int64_t)a4 initialLoad:(BOOL)a5;
- (RMUIConfigurationInterface)initWithScope:(int64_t)a3;
- (RMUIConfigurationInterface)initWithStore:(id)a3;
- (id)initForTest:(int64_t)a3;
- (id)viewModels;
- (void)_activateConfiguration:(id)a3 observerStore:(id)a4 completionHandler:(id)a5;
- (void)_deactivateConfiguration:(id)a3 observerStore:(id)a4 completionHandler:(id)a5;
- (void)_loadObserverStoreForDDMWithCompletion:(id)a3;
- (void)_loadObserverStoreForDeclarationsPayloadWithCompletion:(id)a3;
- (void)_loadObserverStoreWithCompletion:(id)a3;
- (void)_reloadUIWithCompletion:(id)a3;
- (void)_reloadViewModelsWithCompletion:(id)a3;
- (void)refreshWithCompletion:(id)a3;
@end

@implementation RMUIConfigurationInterface

- (RMUIConfigurationInterface)initWithScope:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = RMUIConfigurationInterface;
  v4 = [(RMUIConfigurationInterface *)&v15 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v5 addObserver:v4 selector:sel_reloadNotificationPosted_ name:*MEMORY[0x277D460D0] object:0];

    v4->_scope = a3;
    v6 = [[RMUILegacyProfilesViewModelProvider alloc] initWithScope:[(RMUIConfigurationInterface *)v4 _rmStoreScope]];
    legacyProfilesProvider = v4->_legacyProfilesProvider;
    v4->_legacyProfilesProvider = v6;

    v8 = objc_opt_new();
    pluginProvider = v4->_pluginProvider;
    v4->_pluginProvider = v8;

    privProfileViewModels = v4->_privProfileViewModels;
    v11 = MEMORY[0x277CBEBF8];
    v4->_privProfileViewModels = MEMORY[0x277CBEBF8];

    privPluginSectionViewModels = v4->_privPluginSectionViewModels;
    v4->_privPluginSectionViewModels = v11;

    privPluginViewModels = v4->_privPluginViewModels;
    v4->_privPluginViewModels = v11;
  }

  return v4;
}

- (RMUIConfigurationInterface)initWithStore:(id)a3
{
  v5 = a3;
  v6 = -[RMUIConfigurationInterface initWithScope:](self, "initWithScope:", [v5 scope]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observerStore, a3);
    [(RMUILegacyProfilesViewModelProvider *)v7->_legacyProfilesProvider setObserverStore:v5];
    [(RMUIPluginViewModelProvider *)v7->_pluginProvider setObserverStore:v5];
    [(RMUIConfigurationInterface *)v7 reloadNotificationPosted:0];
  }

  return v7;
}

- (RMUIConfigurationInterface)initWithAccount:(id)a3 scope:(int64_t)a4 initialLoad:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = [(RMUIConfigurationInterface *)self initWithScope:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_rmAccount, a3);
    if (v5)
    {
      [(RMUIConfigurationInterface *)v11 reloadNotificationPosted:0];
    }
  }

  return v11;
}

- (RMUIConfigurationInterface)initWithMDMProfileIdentifier:(id)a3 scope:(int64_t)a4 initialLoad:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = [(RMUIConfigurationInterface *)self initWithScope:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mdmProfileIdentifier, a3);
    if (v5)
    {
      [(RMUIConfigurationInterface *)v11 reloadNotificationPosted:0];
    }
  }

  return v11;
}

- (RMUIConfigurationInterface)initWithDeclarationsPayloadIdentifiers:(id)a3 scope:(int64_t)a4 initialLoad:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = [(RMUIConfigurationInterface *)self initWithScope:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_declarationsPayloadIdentifiers, a3);
    if (v5)
    {
      [(RMUIConfigurationInterface *)v11 reloadNotificationPosted:0];
    }
  }

  return v11;
}

- (id)initForTest:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RMUIConfigurationInterface;
  result = [(RMUIConfigurationInterface *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (id)viewModels
{
  v3 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__RMUIConfigurationInterface_viewModels__block_invoke;
  v10[3] = &unk_279B07AD8;
  v11 = v3;
  v4 = v3;
  [(RMUIConfigurationInterface *)self refreshWithCompletion:v10];
  [v4 waitForCompletion];
  privProfileViewModels = self->_privProfileViewModels;
  v6 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_14];
  v7 = [(NSArray *)privProfileViewModels filteredArrayUsingPredicate:v6];

  v8 = [[RMUIConfigurationViewModels alloc] initWithProfileViewModels:v7 pluginSectionViewModels:self->_privPluginSectionViewModels pluginViewModels:self->_privPluginViewModels];

  return v8;
}

- (NSString)scopeHeading
{
  if ([(RMUIConfigurationInterface *)self scope])
  {
    return @"Device Declarations";
  }

  else
  {
    return @"User Declarations";
  }
}

- (void)_reloadUIWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RMUIConfigurationInterface__reloadUIWithCompletion___block_invoke;
  block[3] = &unk_279B07B20;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __54__RMUIConfigurationInterface__reloadUIWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v22 = WeakRetained;
    v3 = [WeakRetained observerStore];

    if (!v3)
    {
      v4 = [v22 legacyProfilesProvider];
      v5 = [v4 profileViewModels];
      [v5 removeAllObjects];

      v6 = [v22 pluginProvider];
      v7 = [v6 pluginSectionViewModels];
      [v7 removeAllObjects];

      v8 = [v22 pluginProvider];
      v9 = [v8 pluginViewModels];
      [v9 removeAllObjects];
    }

    [v22 willChangeValueForKey:@"profileViewModels"];
    v10 = [v22 legacyProfilesProvider];
    v11 = [v10 profileViewModels];
    v12 = [v11 copy];
    [v22 setPrivProfileViewModels:v12];

    [v22 didChangeValueForKey:@"profileViewModels"];
    [v22 willChangeValueForKey:@"pluginSectionViewModels"];
    v13 = [v22 pluginProvider];
    v14 = [v13 pluginSectionViewModels];
    v15 = [v14 copy];
    [v22 setPrivPluginSectionViewModels:v15];

    [v22 didChangeValueForKey:@"pluginSectionViewModels"];
    [v22 willChangeValueForKey:@"pluginViewModels"];
    v16 = [v22 pluginProvider];
    v17 = [v16 pluginViewModels];
    v18 = [v17 copy];
    [v22 setPrivPluginViewModels:v18];

    [v22 didChangeValueForKey:@"pluginViewModels"];
    v19 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v19 postNotificationName:@"RMUIConfigurationsDidChangeNotification" object:0];

    v20 = *(a1 + 32);
    if (v20)
    {
      (*(v20 + 16))(v20, v22);
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_reloadViewModelsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [(RMUIConfigurationInterface *)self legacyProfilesProvider];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__RMUIConfigurationInterface__reloadViewModelsWithCompletion___block_invoke;
  v15[3] = &unk_279B07AD8;
  v7 = v5;
  v16 = v7;
  [v6 loadProfilesFromConfigurationsWithCompletionHandler:v15];

  dispatch_group_enter(v7);
  v8 = [(RMUIConfigurationInterface *)self pluginProvider];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__RMUIConfigurationInterface__reloadViewModelsWithCompletion___block_invoke_2;
  v13[3] = &unk_279B07AD8;
  v14 = v7;
  v9 = v7;
  [v8 loadPluginsFromConfigurationsWithCompletionHandler:v13];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__RMUIConfigurationInterface__reloadViewModelsWithCompletion___block_invoke_3;
  v11[3] = &unk_279B07B48;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_group_notify(v9, MEMORY[0x277D85CD0], v11);
}

- (void)refreshWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(RMUIConfigurationInterface *)self observerStore];
  if (v4)
  {

    goto LABEL_3;
  }

  v6 = [(RMUIConfigurationInterface *)self mdmProfileIdentifier];
  if (v6 || ([(RMUIConfigurationInterface *)self rmAccount], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_8:
    [(RMUIConfigurationInterface *)self _loadObserverStoreWithCompletion:v8];
    goto LABEL_9;
  }

  v7 = [(RMUIConfigurationInterface *)self declarationsPayloadIdentifiers];

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = [(RMUIConfigurationInterface *)self observerStore];

  if (v5)
  {
    [(RMUIConfigurationInterface *)self _reloadViewModelsWithCompletion:v8];
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)_loadObserverStoreWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(RMUIConfigurationInterface *)self declarationsPayloadIdentifiers];

  if (v4)
  {
    [(RMUIConfigurationInterface *)self _loadObserverStoreForDeclarationsPayloadWithCompletion:v5];
  }

  else
  {
    [(RMUIConfigurationInterface *)self _loadObserverStoreForDDMWithCompletion:v5];
  }
}

- (void)_loadObserverStoreForDDMWithCompletion:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D45F60] isActiveForScope:{-[RMUIConfigurationInterface _rmManagementScope](self, "_rmManagementScope")}])
  {
    v5 = [(RMUIConfigurationInterface *)self mdmProfileIdentifier];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v9 = [(RMUIConfigurationInterface *)self rmAccount];
      v7 = [v9 dmc_managementProfileIdentifier];
    }

    v10 = objc_opt_new();
    [v10 setScheme:@"mdm"];
    [v10 setPath:v7];
    v11 = [v10 URL];
    objc_initWeak(&location, self);
    v12 = MEMORY[0x277D460A0];
    v13 = [(RMUIConfigurationInterface *)self _rmStoreScope];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke;
    v16[3] = &unk_279B07B70;
    objc_copyWeak(&v20, &location);
    v14 = v7;
    v17 = v14;
    v19 = v4;
    v15 = v11;
    v18 = v15;
    [v12 storesWithScope:v13 completionHandler:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = +[RMUILog configurationInterface];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [RMUIConfigurationInterface _loadObserverStoreForDDMWithCompletion:v8];
    }

    [(RMUIConfigurationInterface *)self _reloadUIWithCompletion:v4];
  }
}

void __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_21;
  }

  if (!v5)
  {
    v20 = +[RMUILog configurationInterface];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke_cold_3(a1);
    }

LABEL_20:

    [WeakRetained _reloadUIWithCompletion:*(a1 + 48)];
    goto LABEL_21;
  }

  v22 = v6;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
LABEL_11:

LABEL_16:
    v20 = +[RMUILog configurationInterface];
    v6 = v22;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke_cold_2(a1);
    }

    goto LABEL_20;
  }

  v10 = v9;
  v11 = *v24;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v24 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v23 + 1) + 8 * v12);
    v14 = [v13 enrollmentURL];
    v15 = [v14 isEqual:*(a1 + 40)];

    if (v15)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v16 = v13;

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = +[RMUILog configurationInterface];
  v6 = v22;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke_cold_1(v16);
  }

  [WeakRetained setObserverStore:v16];
  v18 = [WeakRetained legacyProfilesProvider];
  [v18 setObserverStore:v16];

  v19 = [WeakRetained pluginProvider];
  [v19 setObserverStore:v16];

  [WeakRetained _reloadViewModelsWithCompletion:*(a1 + 48)];
LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_loadObserverStoreForDeclarationsPayloadWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D460A8] profileStoreForOwner:*MEMORY[0x277D460E0] scope:{-[RMUIConfigurationInterface _rmStoreScope](self, "_rmStoreScope")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__RMUIConfigurationInterface__loadObserverStoreForDeclarationsPayloadWithCompletion___block_invoke;
  v8[3] = &unk_279B07BC0;
  v9 = v5;
  v10 = v4;
  v8[4] = self;
  v6 = v5;
  v7 = v4;
  [v6 observerStoreWithCompletionHandler:v8];
}

void __85__RMUIConfigurationInterface__loadObserverStoreForDeclarationsPayloadWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMUILog configurationInterface];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke_cold_1(v3);
    }

    [*(a1 + 32) setObserverStore:v3];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) declarationsPayloadIdentifiers];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __85__RMUIConfigurationInterface__loadObserverStoreForDeclarationsPayloadWithCompletion___block_invoke_47;
    v8[3] = &unk_279B07B98;
    v8[4] = *(a1 + 32);
    v9 = v3;
    v10 = *(a1 + 48);
    [v6 declarationIdentifiersForProfilePayloadIdentifiers:v7 completionHandler:v8];
  }

  else
  {
    if (v5)
    {
      __85__RMUIConfigurationInterface__loadObserverStoreForDeclarationsPayloadWithCompletion___block_invoke_cold_2(a1);
    }

    [*(a1 + 32) _reloadUIWithCompletion:*(a1 + 48)];
  }
}

uint64_t __85__RMUIConfigurationInterface__loadObserverStoreForDeclarationsPayloadWithCompletion___block_invoke_47(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 legacyProfilesProvider];
  [v6 setObserverStore:v3];

  v7 = [*(a1 + 32) legacyProfilesProvider];
  [v7 setFilterDeclarationIdentifiers:v5];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) pluginProvider];
  [v9 setObserverStore:v8];

  v10 = [*(a1 + 32) pluginProvider];
  [v10 setFilterDeclarationIdentifiers:v5];

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);

  return [v11 _reloadViewModelsWithCompletion:v12];
}

void __87__RMUIConfigurationInterface_setConfigurationActivated_forViewModel_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RMUIConfigurationInterface_setConfigurationActivated_forViewModel_completionHandler___block_invoke_2;
  block[3] = &unk_279B07BE8;
  v11 = v6;
  v7 = *(a1 + 32);
  v15 = *(a1 + 48);
  v12 = v7;
  v13 = v5;
  v14 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __87__RMUIConfigurationInterface_setConfigurationActivated_forViewModel_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    v3 = [*(a1 + 40) toggleViewModel];
    [v3 setToggleState:(v2 & 1) == 0];

    v4 = [[RMUIInteractiveProfileErrorViewModel alloc] initWithError:*(a1 + 32) isActivating:*(a1 + 64)];
  }

  else
  {
    [*(a1 + 40) setInteractiveProfileActive:*(a1 + 64) profileIdentifier:*(a1 + 48)];
    v5 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v5 postNotificationName:*MEMORY[0x277D460D0] object:0 userInfo:0 options:3];

    v4 = 0;
  }

  v6 = *(a1 + 48);
  v7 = v4;
  (*(*(a1 + 56) + 16))();
}

- (void)_activateConfiguration:(id)a3 observerStore:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 declarationIdentifier];
  v12 = [v8 payloadProfileURL];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    if (v13)
    {
      v14 = [MEMORY[0x277D460C0] newProfileControllerWithPrefix:*MEMORY[0x277D46080] scope:{-[RMUIConfigurationInterface _rmStoreScope](self, "_rmStoreScope")}];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __85__RMUIConfigurationInterface__activateConfiguration_observerStore_completionHandler___block_invoke;
      v17[3] = &unk_279B07C38;
      v18 = v13;
      v19 = v10;
      [v14 downloadAndInstallProfileDeclaration:v8 store:v9 fromURL:v18 completionHandler:v17];
    }

    else
    {
      v16 = +[RMUILog configurationInterface];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [RMUIConfigurationInterface _activateConfiguration:observerStore:completionHandler:];
      }

      v14 = [RMUIError legacyProfilesInvalidURLForDeclarationID:v11 urlString:v12];
      (*(v10 + 2))(v10, 0, v14);
    }
  }

  else
  {
    v15 = +[RMUILog configurationInterface];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RMUIConfigurationInterface _activateConfiguration:observerStore:completionHandler:];
    }

    v13 = [RMUIError legacyProfilesInvalidURLForDeclarationID:v11 urlString:&stru_287475138];
    (*(v10 + 2))(v10, 0, v13);
  }
}

void __85__RMUIConfigurationInterface__activateConfiguration_observerStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMUILog configurationInterface];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__RMUIConfigurationInterface__activateConfiguration_observerStore_completionHandler___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __85__RMUIConfigurationInterface__activateConfiguration_observerStore_completionHandler___block_invoke_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_deactivateConfiguration:(id)a3 observerStore:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277D460C0];
  v10 = *MEMORY[0x277D46080];
  v11 = a4;
  v12 = a3;
  v13 = [v9 newProfileControllerWithPrefix:v10 scope:{-[RMUIConfigurationInterface _rmStoreScope](self, "_rmStoreScope")}];
  v14 = [v13 profileIdentifierForDeclaration:v12 store:v11];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__RMUIConfigurationInterface__deactivateConfiguration_observerStore_completionHandler___block_invoke;
  v17[3] = &unk_279B07C60;
  v18 = v14;
  v19 = v8;
  v15 = v8;
  v16 = v14;
  [v13 uninstallProfileWithIdentifier:v16 store:v11 completionHandler:v17];
}

void __87__RMUIConfigurationInterface__deactivateConfiguration_observerStore_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMUILog configurationInterface];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__RMUIConfigurationInterface__deactivateConfiguration_observerStore_completionHandler___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __87__RMUIConfigurationInterface__deactivateConfiguration_observerStore_completionHandler___block_invoke_cold_2(a1);
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(&dword_261E8A000, v2, v3, "Found RMObserverStore: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6(&dword_261E8A000, v1, v2, "No RMObserverStore for MDM profile: %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __69__RMUIConfigurationInterface__loadObserverStoreForDDMWithCompletion___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__RMUIConfigurationInterface__loadObserverStoreForDeclarationsPayloadWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) declarationsPayloadIdentifiers];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2(&dword_261E8A000, v2, v3, "No RMObserverStore for profile payloads: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setConfigurationActivated:forViewModel:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_261E8A000, v0, OS_LOG_TYPE_DEBUG, "RMUIConfigurationInterface set activation %{public}d for declaration %{public}@", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setConfigurationActivated:forViewModel:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setConfigurationActivated:(char)a1 forViewModel:(NSObject *)a2 completionHandler:.cold.3(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67240192;
  v3[1] = a1 & 1;
  _os_log_error_impl(&dword_261E8A000, a2, OS_LOG_TYPE_ERROR, "No declaration to set activation %{public}d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_activateConfiguration:observerStore:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_activateConfiguration:observerStore:completionHandler:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  v3 = 2114;
  v4 = 0;
  _os_log_error_impl(&dword_261E8A000, v0, OS_LOG_TYPE_ERROR, "Missing profile URL for declaration %{public}@: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __85__RMUIConfigurationInterface__activateConfiguration_observerStore_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__RMUIConfigurationInterface__activateConfiguration_observerStore_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6(&dword_261E8A000, v1, v2, "Installed configuration from %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __87__RMUIConfigurationInterface__deactivateConfiguration_observerStore_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__RMUIConfigurationInterface__deactivateConfiguration_observerStore_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6(&dword_261E8A000, v1, v2, "Uninstalled profile with identifier %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

@end