@interface PHCallDirectorySettingsController
- (BOOL)canEditExtensions;
- (BOOL)hasExtensions;
- (PHCallDirectorySettingsController)initWithParent:(id)parent;
- (id)_localizedExtensionTitleForExtension:(id)extension;
- (id)callDirectoryExtensionForSpecifier:(id)specifier;
- (id)createExtensionsGroupSpecifiers;
- (id)readPreferenceValue:(id)value;
- (id)specifiers;
- (void)_updateExtensions;
- (void)extensionsChangedForCallDirectoryExtensionManager:(id)manager;
- (void)presentError:(id)error fromSettingEnabled:(BOOL)enabled forExtension:(id)extension;
- (void)refreshView;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation PHCallDirectorySettingsController

- (PHCallDirectorySettingsController)initWithParent:(id)parent
{
  parentCopy = parent;
  v10.receiver = self;
  v10.super_class = PHCallDirectorySettingsController;
  v6 = [(PHCallDirectorySettingsController *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBAF60]);
    extensionManager = v6->_extensionManager;
    v6->_extensionManager = v7;

    [(CXCallDirectoryExtensionManager *)v6->_extensionManager setDelegate:v6 queue:0];
    [(CXCallDirectoryExtensionManager *)v6->_extensionManager beginObservingExtensions];
    objc_storeStrong(&v6->_parent, parent);
    [(PHCallDirectorySettingsController *)v6 _updateExtensions];
  }

  return v6;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  indexPathCopy = indexPath;
  section = [pathCopy section];
  if (section == [indexPathCopy section])
  {
    extensions = [(PHCallDirectorySettingsController *)self extensions];
    v11 = [extensions mutableCopy];

    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v11 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
    [v11 insertObject:v12 atIndex:{objc_msgSend(indexPathCopy, "row")}];
    [(PHCallDirectorySettingsController *)self setExtensions:v11];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          identifier = [*(*(&v25 + 1) + 8 * v18) identifier];
          [v13 addObject:identifier];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    extensionManager = [(PHCallDirectorySettingsController *)self extensionManager];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__PHCallDirectorySettingsController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke;
    v23[3] = &unk_2782E3A48;
    v24 = v13;
    v21 = v13;
    [extensionManager setPrioritizedExtensionIdentifiers:v21 completionHandler:v23];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __78__PHCallDirectorySettingsController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = TPSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__PHCallDirectorySettingsController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  extensions = [(PHCallDirectorySettingsController *)self extensions];
  v5 = [extensions count];

  if (v5)
  {
    createExtensionsGroupSpecifiers = [(PHCallDirectorySettingsController *)self createExtensionsGroupSpecifiers];
    [v3 addObjectsFromArray:createExtensionsGroupSpecifiers];
  }

  return v3;
}

- (id)readPreferenceValue:(id)value
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(PHCallDirectorySettingsController *)self callDirectoryExtensionForSpecifier:value];
  v4 = v3;
  if (v3)
  {
    state = [v3 state];
    v6 = TPSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"DISABLED";
      if (state == 4)
      {
        v7 = @"ENABLED";
      }

      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Getting extension enabled (%@) as %@", &v11, 0x16u);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithBool:state == 4];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  v32 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  specifierCopy = specifier;
  v8 = [(PHCallDirectorySettingsController *)self callDirectoryExtensionForSpecifier:specifierCopy];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [valueCopy BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"DISABLED";
      if (bOOLValue)
      {
        v11 = @"ENABLED";
      }

      *buf = 138412546;
      v29 = v8;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "Setting call directory extension (%@) to %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    extensionManager = [(PHCallDirectorySettingsController *)self extensionManager];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __66__PHCallDirectorySettingsController_setPreferenceValue_specifier___block_invoke;
    v23 = &unk_2782E3A20;
    objc_copyWeak(&v26, buf);
    v27 = bOOLValue;
    v13 = v8;
    v24 = v13;
    v14 = specifierCopy;
    v25 = v14;
    [extensionManager setEnabled:bOOLValue forExtension:v13 completion:&v20];

    state = [v13 state];
    state2 = [v13 state];
    if (state2 == 4)
    {
      v17 = 2;
    }

    else
    {
      v17 = 4;
    }

    if (state == 1 && state2 != 4)
    {
      [v14 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FEA8]];
    }

    [v13 setState:v17];
    parent = [(PHCallDirectorySettingsController *)self parent];
    [parent reloadSpecifier:v14 animated:1];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __66__PHCallDirectorySettingsController_setPreferenceValue_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PHCallDirectorySettingsController_setPreferenceValue_specifier___block_invoke_2;
  block[3] = &unk_2782E39F8;
  objc_copyWeak(&v9, (a1 + 48));
  v6 = v3;
  v10 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __66__PHCallDirectorySettingsController_setPreferenceValue_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v3 = TPSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__PHCallDirectorySettingsController_setPreferenceValue_specifier___block_invoke_2_cold_1(a1, (a1 + 32), v3);
    }

    v4 = objc_loadWeakRetained((a1 + 56));
    v5 = v4;
    if (v4)
    {
      v6 = [v4 parent];
      [v6 reloadSpecifier:*(a1 + 48)];

      [v5 presentError:*(a1 + 32) fromSettingEnabled:*(a1 + 64) forExtension:*(a1 + 40)];
    }
  }
}

- (id)callDirectoryExtensionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [specifierCopy propertyForKey:v5];

  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)extensionsChangedForCallDirectoryExtensionManager:(id)manager
{
  v4 = TPSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Call Directory Extension Manager extensions changed, getting the latest extensions now", v5, 2u);
  }

  [(PHCallDirectorySettingsController *)self _updateExtensions];
}

- (void)_updateExtensions
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  extensionManager = [(PHCallDirectorySettingsController *)self extensionManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__PHCallDirectorySettingsController__updateExtensions__block_invoke;
  v4[3] = &unk_2782E38B0;
  v4[4] = self;
  [extensionManager extensionsWithCompletionHandler:v4];
}

void __54__PHCallDirectorySettingsController__updateExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PHCallDirectorySettingsController__updateExtensions__block_invoke_2;
  block[3] = &unk_2782E3888;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__PHCallDirectorySettingsController__updateExtensions__block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = TPSLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Received call directory extensions %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__PHCallBlockingAndIdentificationSettingsBundleController__updateExtensions__block_invoke_2_cold_1(a1, v4);
  }

  v6 = *(a1 + 32);
  if (!v6 || ([*(a1 + 48) extensions], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToArray:", v7), v7, (v8 & 1) == 0))
  {
    v9 = [*(a1 + 48) parent];
    v10 = [v9 isEditing];

    if ((v10 & 1) == 0)
    {
      v11 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 48) setExtensions:v11];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = *(a1 + 32);
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v20 + 1) + 8 * i);
            if (([v17 state] - 1) <= 3)
            {
              v18 = [*(a1 + 48) extensions];
              [v18 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      [*(a1 + 48) refreshView];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)createExtensionsGroupSpecifiers
{
  v35 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CALL_DIRECTORY_EXTENSIONS_LIST_HEADER" value:&stru_282D54710 table:@"CallDirectorySettings"];
  v7 = [v4 groupSpecifierWithID:@"CallDirectorySettingsGroup" name:v6];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CALL_DIRECTORY_EXTENSIONS_LIST_FOOTER" value:&stru_282D54710 table:@"CallDirectorySettings"];
  [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF88]];

  [array insertObject:v7 atIndex:0];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(PHCallDirectorySettingsController *)self extensions];
  v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = *v31;
    v28 = *MEMORY[0x277D3FFC0];
    v27 = *MEMORY[0x277D3FEA8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [(PHCallDirectorySettingsController *)self _localizedExtensionTitleForExtension:v13];
        v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:self set:sel_setPreferenceValue_specifier_ get:sel_readPreferenceValue_ detail:0 cell:6 edit:0];
        v16 = MEMORY[0x277D755B8];
        plugInKitProxy = [v13 plugInKitProxy];
        v18 = [v16 _iconForResourceProxy:plugInKitProxy format:0];

        [v15 setProperty:v18 forKey:v28];
        v19 = [v13 state] == 3;
        v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
        [v15 setProperty:v20 forKey:v27];

        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        [v15 setProperty:v13 forKey:v22];

        [array addObject:v15];
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  v23 = [array copy];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_localizedExtensionTitleForExtension:(id)extension
{
  extensionCopy = extension;
  if ([extensionCopy isOnlyExtensionInContainingApp])
  {
    localizedContainingAppName = [extensionCopy localizedContainingAppName];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CALL_DIRECTORY_APP_%@_EXTENSION_%@" value:&stru_282D54710 table:@"CallDirectorySettings"];
    localizedContainingAppName2 = [extensionCopy localizedContainingAppName];
    localizedName = [extensionCopy localizedName];
    localizedContainingAppName = [v5 stringWithFormat:v7, localizedContainingAppName2, localizedName];
  }

  return localizedContainingAppName;
}

- (BOOL)hasExtensions
{
  extensions = [(PHCallDirectorySettingsController *)self extensions];
  v3 = [extensions count] != 0;

  return v3;
}

- (BOOL)canEditExtensions
{
  extensions = [(PHCallDirectorySettingsController *)self extensions];
  v3 = [extensions count] > 1;

  return v3;
}

- (void)refreshView
{
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "Call Directory refreshView", v5, 2u);
  }

  parent = [(PHCallDirectorySettingsController *)self parent];
  [parent reloadSpecifiers];
}

- (void)presentError:(id)error fromSettingEnabled:(BOOL)enabled forExtension:(id)extension
{
  enabledCopy = enabled;
  errorCopy = error;
  extensionCopy = extension;
  domain = [errorCopy domain];
  v10 = [domain isEqualToString:*MEMORY[0x277CBAF30]];

  if (!v10)
  {
    goto LABEL_6;
  }

  code = [errorCopy code];
  if ((code - 3) < 3)
  {
    v12 = @"CALL_DIRECTORY_ENABLE_EXTENSION_ALERT_DATA_INVALID_%@";
LABEL_9:
    v30 = v12;
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = v14;
    if (enabledCopy)
    {
      v16 = @"CALL_DIRECTORY_ENABLE_EXTENSION_ALERT_TITLE";
    }

    else
    {
      v16 = @"CALL_DIRECTORY_DISABLE_EXTENSION_ALERT_TITLE";
    }

    v17 = [v14 localizedStringForKey:v16 value:&stru_282D54710 table:@"CallDirectorySettings"];

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:v12 value:&stru_282D54710 table:@"CallDirectorySettings"];
    [(PHCallDirectorySettingsController *)self _localizedExtensionTitleForExtension:extensionCopy];
    v22 = v21 = extensionCopy;
    v23 = [v18 stringWithFormat:v20, v22];

    v24 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v23 preferredStyle:1];
    v25 = MEMORY[0x277D750F8];
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"OK" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v28 = [v25 actionWithTitle:v27 style:0 handler:0];

    extensionCopy = v21;
    [v24 addAction:v28];
    parent = [(PHCallDirectorySettingsController *)self parent];
    [parent presentViewController:v24 animated:1 completion:0];

    goto LABEL_13;
  }

  if (code == 2)
  {
    v12 = @"CALL_DIRECTORY_ENABLE_EXTENSION_ALERT_CONNECTION_INTERRUPTED_%@";
    goto LABEL_9;
  }

  if (!code)
  {
LABEL_6:
    v13 = @"CALL_DIRECTORY_DISABLE_EXTENSION_ALERT_UNKNOWN_%@";
    if (enabledCopy)
    {
      v13 = @"CALL_DIRECTORY_ENABLE_EXTENSION_ALERT_UNKNOWN_%@";
    }

    v12 = v13;
    goto LABEL_9;
  }

LABEL_13:
}

void __78__PHCallDirectorySettingsController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Error setting prioritized extension identifiers to %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __66__PHCallDirectorySettingsController_setPreferenceValue_specifier___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *a2;
  v7[0] = 67109634;
  v7[1] = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Error setting enabled to %d for call directory extension %@: %@", v7, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

@end