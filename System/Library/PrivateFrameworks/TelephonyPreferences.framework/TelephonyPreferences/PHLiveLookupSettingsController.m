@interface PHLiveLookupSettingsController
- (BOOL)_isUniqueExtension:(id)a3;
- (BOOL)canEditExtensions;
- (BOOL)hasExtensions;
- (PHLiveLookupSettingsController)initWithParent:(id)a3;
- (id)_extensionFrom:(id)a3;
- (id)_localizedExtensionTitleForExtension:(id)a3 unique:(BOOL)a4;
- (id)createExtensionsGroupSpecifiers;
- (id)extensionForSpecifier:(id)a3;
- (id)readPreferenceValue:(id)a3;
- (id)specifiers;
- (void)_updateExtensions;
- (void)dealloc;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3;
- (void)presentError:(id)a3 fromSettingEnabled:(BOOL)a4 forExtension:(id)a5;
- (void)refreshView;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation PHLiveLookupSettingsController

- (PHLiveLookupSettingsController)initWithParent:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PHLiveLookupSettingsController;
  v6 = [(PHLiveLookupSettingsController *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc_init(LiveLookupManagerProxy);
    extensionManager = v6->_extensionManager;
    v6->_extensionManager = v7;

    objc_storeStrong(&v6->_parent, a3);
    [(PHLiveLookupSettingsController *)v6 _updateExtensions];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _handleLLExtensionsChangedNotification, +[LiveLookupManagerProxy LLExtensionsChangedNotification], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v6 selector:sel_handleUIApplicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create("PHLiveLookupSettingsControllerQueue", v11);
    queue = v6->_queue;
    v6->_queue = v12;
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = PHLiveLookupSettingsController;
  [(PHLiveLookupSettingsController *)&v5 dealloc];
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 section];
  if (v9 == [v8 section])
  {
    v10 = [(PHLiveLookupSettingsController *)self extensions];
    v11 = [v10 mutableCopy];

    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
    [v11 removeObjectAtIndex:{objc_msgSend(v7, "row")}];
    [v11 insertObject:v12 atIndex:{objc_msgSend(v8, "row")}];
    [(PHLiveLookupSettingsController *)self setExtensions:v11];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * v18) identifier];
          [v13 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    v20 = [(PHLiveLookupSettingsController *)self extensionManager];
    [v20 setWithPrioritizedExtensionIdentifiers:v13];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PHLiveLookupSettingsController *)self extensions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(PHLiveLookupSettingsController *)self createExtensionsGroupSpecifiers];
    [v3 addObjectsFromArray:v6];
  }

  return v3;
}

- (id)readPreferenceValue:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(PHLiveLookupSettingsController *)self extensionForSpecifier:a3];
  if (v4)
  {
    v5 = [(PHLiveLookupSettingsController *)self extensionManager];
    v6 = [v5 extensionEnabled:v4];

    v7 = TPSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"DISABLED";
      if (v6)
      {
        v8 = @"ENABLED";
      }

      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_DEFAULT, "Getting extension enabled (%@) as %@", &v12, 0x16u);
    }

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PHLiveLookupSettingsController *)self extensionForSpecifier:v7];
  if (v8)
  {
    v9 = [(PHLiveLookupSettingsController *)self extensionManager];
    v10 = [v9 extensionEnabled:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v6 BOOLValue];
    }

    else
    {
      v11 = 0;
    }

    v12 = TPSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"DISABLED";
      if (v11)
      {
        v13 = @"ENABLED";
      }

      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "Setting live lookup extension (%@) to %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v14 = [(PHLiveLookupSettingsController *)self extensionManager];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke;
    v20 = &unk_2782E3A20;
    objc_copyWeak(&v23, buf);
    v15 = v7;
    v21 = v15;
    v24 = v11;
    v22 = v8;
    [v14 setEnabled:v11 forExtension:v22 completion:&v17];

    if (v10 != v11)
    {
      [v15 setProperty:MEMORY[0x277CBEC38] forKey:{*MEMORY[0x277D3FEA8], v17, v18, v19, v20, v21}];
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke_2;
  block[3] = &unk_2782E39F8;
  objc_copyWeak(&v9, (a1 + 48));
  v6 = *(a1 + 32);
  v7 = v3;
  v10 = *(a1 + 56);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(a1 + 32) setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEA8]];
    [WeakRetained refreshView];
  }

  if (*(a1 + 40))
  {
    v3 = TPSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke_2_cold_1(a1, (a1 + 40), v3);
    }

    v4 = objc_loadWeakRetained((a1 + 56));
    v5 = v4;
    if (v4)
    {
      [v4 presentError:*(a1 + 40) fromSettingEnabled:*(a1 + 64) forExtension:*(a1 + 48)];
      v6 = [v5 parent];
      [v6 reloadSpecifier:*(a1 + 32) animated:1];
    }
  }
}

- (id)extensionForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"LiveLookupDBExtension"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v10, 0x16u);
  }

  [(PHLiveLookupSettingsController *)self _updateExtensions];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateExtensions
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "live lookup _updateExtensions", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PHLiveLookupSettingsController__updateExtensions__block_invoke;
  block[3] = &unk_2782E3960;
  block[4] = self;
  v4 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__PHLiveLookupSettingsController__updateExtensions__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) extensionManager];
  v3 = [v2 extensions];

  if (v3)
  {
    v4 = TPSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Received live lookup extensions %@", buf, 0xCu);
    }
  }

  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v3;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "live lookup _updateExtensions: %@", buf, 0xCu);
  }

  if (!v3 || ([*(a1 + 32) extensions], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v3, "isEqualToArray:", v6), v6, (v7 & 1) == 0))
  {
    v8 = [*(a1 + 32) parent];
    v9 = [v8 isEditing];

    if ((v9 & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 32) setExtensions:v10];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = v3;
      v11 = v3;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            v17 = TPSLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v27 = v16;
              _os_log_impl(&dword_21B8E9000, v17, OS_LOG_TYPE_DEFAULT, "live lookup extension: %@", buf, 0xCu);
            }

            v18 = [*(a1 + 32) extensions];
            [v18 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v13);
      }

      [*(a1 + 32) refreshView];
      v3 = v20;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_extensionFrom:(id)a3
{
  v4 = MEMORY[0x277CCA9C8];
  v5 = a3;
  v6 = [(PHLiveLookupSettingsController *)self extensionManager];
  v7 = [v6 extensionName:v5];

  v8 = [v4 extensionWithIdentifier:v7 error:0];

  return v8;
}

- (BOOL)_isUniqueExtension:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = self;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PHLiveLookupSettingsController *)self extensions];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(PHLiveLookupSettingsController *)v21 _extensionFrom:*(*(&v22 + 1) + 8 * i)];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 containingAppURL];
          v12 = [v11 absoluteString];
          v13 = [v20 containingAppURL];
          v14 = [v13 absoluteString];
          v15 = [v12 isEqualToString:v14];

          if (v15)
          {
            if (v6 >= 1)
            {

              goto LABEL_14;
            }

            ++v6;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v16 = v6 == 1;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)createExtensionsGroupSpecifiers
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "live lookup createExtensionsGroupSpecifiers", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = MEMORY[0x277D3FAD8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LIVE_LOOKUP_EXTENSIONS_LIST_HEADER" value:&stru_282D54710 table:@"CallDirectorySettings"];
  v8 = [v5 groupSpecifierWithID:@"LiveLookupSettingsGroup" name:v7];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"LIVE_LOOKUP_EXTENSIONS_LIST_FOOTER" value:&stru_282D54710 table:@"CallDirectorySettings"];
  [v8 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];

  v43 = v4;
  v39 = v8;
  [v4 insertObject:v8 atIndex:0];
  v11 = TPSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(PHLiveLookupSettingsController *)self extensions];
    *buf = 138412290;
    v55 = v12;
    _os_log_impl(&dword_21B8E9000, v11, OS_LOG_TYPE_DEFAULT, "live lookup extensions=%@", buf, 0xCu);
  }

  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = [(PHLiveLookupSettingsController *)self extensions];
  v42 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = [(PHLiveLookupSettingsController *)self extensions];
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        v21 = MEMORY[0x277CCA9C8];
        v22 = [(PHLiveLookupSettingsController *)self extensionManager];
        v23 = [v22 extensionName:v20];
        v24 = [v21 extensionWithIdentifier:v23 error:0];

        if (v24)
        {
          [v42 addObject:v24];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v17);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(PHLiveLookupSettingsController *)self extensions];
  v25 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    v41 = *MEMORY[0x277D3FFC0];
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v44 + 1) + 8 * j);
        v30 = [(PHLiveLookupSettingsController *)self _extensionFrom:v29];
        if (v30)
        {
          v31 = [(PHLiveLookupSettingsController *)self _localizedExtensionTitleForExtension:v30 unique:[(PHLiveLookupSettingsController *)self _isUniqueExtension:v30]];
          v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v31 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];
          v33 = MEMORY[0x277D755B8];
          v34 = [v30 plugInKitProxy];
          v35 = [v33 _iconForResourceProxy:v34 format:0];

          [v32 setProperty:v35 forKey:v41];
          [v32 setProperty:v29 forKey:@"LiveLookupDBExtension"];
          [v43 addObject:v32];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v26);
  }

  v36 = [v43 copy];
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_localizedExtensionTitleForExtension:(id)a3 unique:(BOOL)a4
{
  if (a4)
  {
    v4 = a3;
    v5 = [v4 localizedName];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = MEMORY[0x277CCA8D8];
    v8 = a3;
    v4 = [v7 bundleForClass:objc_opt_class()];
    v9 = [v4 localizedStringForKey:@"CALL_DIRECTORY_APP_%@_EXTENSION_%@" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v10 = [v8 localizedContainingAppName];
    v11 = [v8 localizedName];

    v5 = [v6 stringWithFormat:v9, v10, v11];
  }

  return v5;
}

- (BOOL)hasExtensions
{
  v2 = [(PHLiveLookupSettingsController *)self extensions];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)canEditExtensions
{
  v2 = [(PHLiveLookupSettingsController *)self extensions];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)refreshView
{
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "live lookup refreshView", v5, 2u);
  }

  v4 = [(PHLiveLookupSettingsController *)self parent];
  [v4 reloadSpecifiers];
}

- (void)presentError:(id)a3 fromSettingEnabled:(BOOL)a4 forExtension:(id)a5
{
  v7 = @"CALL_DIRECTORY_DISABLE_EXTENSION_ALERT_UNKNOWN_%@";
  if (a4)
  {
    v7 = @"CALL_DIRECTORY_ENABLE_EXTENSION_ALERT_UNKNOWN_%@";
  }

  v8 = MEMORY[0x277CCA8D8];
  if (a4)
  {
    v9 = @"CALL_DIRECTORY_ENABLE_EXTENSION_ALERT_TITLE";
  }

  else
  {
    v9 = @"CALL_DIRECTORY_DISABLE_EXTENSION_ALERT_TITLE";
  }

  v10 = v7;
  v11 = a5;
  v12 = [v8 bundleForClass:objc_opt_class()];
  v25 = [v12 localizedStringForKey:v9 value:&stru_282D54710 table:@"CallDirectorySettings"];

  v13 = [(PHLiveLookupSettingsController *)self _extensionFrom:v11];

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:v10 value:&stru_282D54710 table:@"CallDirectorySettings"];

  v17 = [(PHLiveLookupSettingsController *)self _localizedExtensionTitleForExtension:v13 unique:[(PHLiveLookupSettingsController *)self _isUniqueExtension:v13]];
  v18 = [v14 stringWithFormat:v16, v17];

  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v25 message:v18 preferredStyle:1];
  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"OK" value:&stru_282D54710 table:@"CallDirectorySettings"];
  v23 = [v20 actionWithTitle:v22 style:0 handler:0];

  [v19 addAction:v23];
  v24 = [(PHLiveLookupSettingsController *)self parent];
  [v24 presentViewController:v19 animated:1 completion:0];
}

void __63__PHLiveLookupSettingsController_setPreferenceValue_specifier___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *a2;
  v7[0] = 67109634;
  v7[1] = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Error setting enabled to %d for live lookup extension %@: %@", v7, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

@end