@interface SBHomeScreenConfigurationManager
- (SBHomeScreenConfigurationManager)init;
- (id)focusModeManager;
- (id)iconController;
- (id)iconForApp:(void *)a3 iconModel:(void *)a4 rootFolder:;
- (id)iconForItem:(void *)a3 iconModel:(void *)a4 rootFolder:;
- (id)iconManager;
- (id)rootFolder;
- (void)applyDockItems:(void *)a3 toFocusMode:(void *)a4 iconModel:(void *)a5 rootFolder:;
- (void)applyHomeScreenItems:(void *)a3 toFocusMode:(void *)a4 iconModel:(void *)a5 rootFolder:;
- (void)configurationServer:(id)a3 didReceiveConfiguration:(id)a4 completion:(id)a5;
- (void)configurationServerDidBeginConfigurationSession:(id)a3 completion:(id)a4;
- (void)configurationServerDidEndConfigurationSession:(id)a3 completion:(id)a4;
- (void)iconModelDidLayout:(uint64_t)a1;
- (void)teardownFocusMode:(void *)a3 rootFolder:;
- (void)updateHomeScreenWithConfiguration:(void *)a3 completion:;
@end

@implementation SBHomeScreenConfigurationManager

- (SBHomeScreenConfigurationManager)init
{
  v13.receiver = self;
  v13.super_class = SBHomeScreenConfigurationManager;
  v2 = [(SBHomeScreenConfigurationManager *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    server = v2->_server;
    v2->_server = v3;

    [(SBHomeScreenConfigurationServer *)&v2->_server->super.isa setDelegate:v2];
    [(SBHomeScreenConfigurationServer *)v2->_server activate];
    objc_initWeak(&location, v2);
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v7 = *MEMORY[0x277D666F0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__SBHomeScreenConfigurationManager_init__block_invoke;
    v10[3] = &unk_2783AFD98;
    objc_copyWeak(&v11, &location);
    v8 = [v5 addObserverForName:v7 object:0 queue:v6 usingBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __40__SBHomeScreenConfigurationManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [SBHomeScreenConfigurationManager iconModelDidLayout:?];
}

void __55__SBHomeScreenConfigurationManager_iconModelDidLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__SBHomeScreenConfigurationManager_iconModelDidLayout___block_invoke_cold_1(v2, v3);
    }
  }
}

- (void)configurationServerDidBeginConfigurationSession:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Beginning configuration session", v6, 2u);
  }

  v4[2](v4, 0);
}

- (void)configurationServer:(id)a3 didReceiveConfiguration:(id)a4 completion:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Received configuration %{public}@", buf, 0xCu);
  }

  v11 = v6;
  v9 = v7;
  v10 = v6;
  BSDispatchMain();
}

- (void)configurationServerDidEndConfigurationSession:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ending configuration session", buf, 2u);
  }

  v6 = v4;
  BSDispatchMain();
}

- (void)iconModelDidLayout:(uint64_t)a1
{
  if (a1 && *(a1 + 16))
  {
    v2 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Updating installed focus mode because icon model laid out", v3, 2u);
    }

    [(SBHomeScreenConfigurationManager *)a1 updateHomeScreenWithConfiguration:&__block_literal_global_217 completion:?];
  }
}

- (void)updateHomeScreenWithConfiguration:(void *)a3 completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    BSDispatchQueueAssertMain();
    v7 = [(SBHomeScreenConfigurationManager *)a1 rootFolder];
    v8 = [v7 model];
    if (v8)
    {
      v12 = *(a1 + 24);
      if (v12)
      {
        [(SBHomeScreenConfigurationManager *)a1 teardownFocusMode:v12 rootFolder:v7];
      }

      if (v5)
      {
        v15 = MEMORY[0x277CCACA8];
        v16 = [MEMORY[0x277CCAD78] UUID];
        v17 = [v16 UUIDString];
        v18 = [v15 stringWithFormat:@"com.apple.SpringBoard.HomeScreenConfigurationService.configuration.%@", v17];

        v28 = v18;
        v19 = [objc_alloc(MEMORY[0x277D66198]) initWithIdentifier:v18 folder:v7];
        v20 = *(a1 + 24);
        *(a1 + 24) = v19;

        v21 = [v5 layout];
        v22 = [v21 dockItems];
        if (v22)
        {
          [(SBHomeScreenConfigurationManager *)a1 applyDockItems:v22 toFocusMode:v19 iconModel:v8 rootFolder:v7];
        }

        v23 = [v21 items];
        [(SBHomeScreenConfigurationManager *)a1 applyHomeScreenItems:v23 toFocusMode:v19 iconModel:v8 rootFolder:v7];

        v24 = [(SBHomeScreenConfigurationManager *)a1 focusModeManager];
        [v24 donateFocusMode:v19 fromSource:2];

        v25 = SBLogHomeScreenConfiguration();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v28;
          _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Installed focus mode with ID: %@", buf, 0xCu);
        }
      }

      else
      {
        v13 = [(SBHomeScreenConfigurationManager *)a1 focusModeManager];
        [v13 donateFocusMode:0 fromSource:2];

        v14 = *(a1 + 24);
        *(a1 + 24) = 0;
      }

      v26 = OUTLINED_FUNCTION_0_35();
      v27(v26);
    }

    else
    {
      v9 = SBLogHomeScreenConfiguration();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_ERROR, "Failed to construct focus mode from configuration: icon model was nil", buf, 2u);
      }

      v10 = OUTLINED_FUNCTION_0_35();
      v11(v10);
    }
  }
}

void __91__SBHomeScreenConfigurationManager_configurationServer_didReceiveConfiguration_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  [(SBHomeScreenConfigurationManager *)v2 updateHomeScreenWithConfiguration:v3 completion:v4];
}

void __93__SBHomeScreenConfigurationManager_configurationServerDidEndConfigurationSession_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  [(SBHomeScreenConfigurationManager *)v4 updateHomeScreenWithConfiguration:v5 completion:?];
}

- (id)rootFolder
{
  if (a1)
  {
    v1 = [(SBHomeScreenConfigurationManager *)a1 iconManager];
    v2 = [v1 rootFolder];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)teardownFocusMode:(void *)a3 rootFolder:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 identifier];
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Tearing down focus mode with ID: %@", buf, 0xCu);
    }

    v9 = [v5 lists];
    v10 = [v9 copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          [v16 removeAllIcons];
          [v5 removeFromList:v16];
          [v6 removeList:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v17 = [v5 dockList];
    v18 = v17;
    if (v17)
    {
      [v17 removeAllIcons];
      [v5 setDockList:0];
    }
  }
}

- (id)focusModeManager
{
  if (a1)
  {
    v1 = [(SBHomeScreenConfigurationManager *)a1 iconManager];
    v2 = [v1 focusModeManager];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)applyDockItems:(void *)a3 toFocusMode:(void *)a4 iconModel:(void *)a5 rootFolder:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = [v10 dockList];
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x277D663C0]) initWithFolder:v12 maxIconCount:{objc_msgSend(v11, "maxIconCountForDock")}];
      [v10 setDockList:v13];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__SBHomeScreenConfigurationManager_applyDockItems_toFocusMode_iconModel_rootFolder___block_invoke;
    v15[3] = &unk_2783B9FF8;
    v15[4] = a1;
    v16 = v11;
    v17 = v12;
    v14 = [v9 bs_compactMap:v15];
    [v13 setIcons:v14];
  }
}

- (void)applyHomeScreenItems:(void *)a3 toFocusMode:(void *)a4 iconModel:(void *)a5 rootFolder:
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v32 = [v10 lists];
    v13 = [v32 bs_reverse];
    v14 = [v13 mutableCopy];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __90__SBHomeScreenConfigurationManager_applyHomeScreenItems_toFocusMode_iconModel_rootFolder___block_invoke;
    v38[3] = &unk_2783B9FF8;
    v38[4] = a1;
    v39 = v11;
    v15 = v12;
    v40 = v15;
    v16 = [v9 bs_compactMap:v38];
    if ([v16 count])
    {
      do
      {
        v17 = [v14 lastObject];
        if (v17)
        {
          v18 = v17;
          [v14 removeLastObject];
        }

        else
        {
          v18 = [v15 insertEmptyListAtIndex:0];
          [v18 setHidden:1];
          [v10 addToList:v18];
        }

        v19 = [v18 setIcons:v16 gridCellInfoOptions:0];

        v16 = v19;
      }

      while ([v19 count]);
    }

    else
    {
      v19 = v16;
    }

    v33 = v12;
    v20 = v9;
    v21 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v10 lists];
      v23 = [v22 count];
      v24 = v23 - [v14 count];
      v25 = [v14 count];
      *buf = 134218240;
      v43 = v24;
      v44 = 2048;
      v45 = v25;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Finished configuring %ld pages, %ld unused pages will be deleted", buf, 0x16u);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v14;
    v27 = [v26 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v34 + 1) + 8 * i);
          [v10 removeFromList:v31];
          [v15 removeList:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v28);
    }

    v9 = v20;
    v12 = v33;
  }
}

- (id)iconController
{
  if (a1)
  {
    v1 = [SBApp windowSceneManager];
    v2 = [v1 embeddedDisplayWindowScene];
    v3 = [v2 iconController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)iconManager
{
  if (a1)
  {
    v1 = [(SBHomeScreenConfigurationManager *)a1 iconController];
    v2 = [v1 iconManager];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)iconForItem:(void *)a3 iconModel:(void *)a4 rootFolder:
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if ([v7 kind] == 1)
    {
      a1 = [(SBHomeScreenConfigurationManager *)a1 iconForApp:v7 iconModel:v8 rootFolder:v9];
    }

    else
    {
      v10 = SBLogHomeScreenConfiguration();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543362;
        v13 = v7;
        _os_log_error_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_ERROR, "Unsupported home screen item type: %{public}@", &v12, 0xCu);
      }

      a1 = 0;
    }
  }

  return a1;
}

- (id)iconForApp:(void *)a3 iconModel:(void *)a4 rootFolder:
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = [a2 bundleIdentifier];
    v10 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Creating icon for app with bundle identifier: %{public}@", &v16, 0xCu);
    }

    v11 = [v7 applicationIconForBundleIdentifier:v9];
    if (v11)
    {
      if ([v8 containsIcon:v11])
      {
        v12 = [v7 addAdditionalIconMatchingIcon:v11];
      }

      else
      {
        v12 = v11;
      }

      v14 = v12;
    }

    else
    {
      v13 = SBLogHomeScreenConfiguration();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v16 = 138543362;
        v17 = v9;
        _os_log_fault_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_FAULT, "Unable to create app icon for suggested bundle identifier: %{public}@", &v16, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __55__SBHomeScreenConfigurationManager_iconModelDidLayout___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "An error occurred updating the installed focus mode: %{public}@", &v2, 0xCu);
}

@end