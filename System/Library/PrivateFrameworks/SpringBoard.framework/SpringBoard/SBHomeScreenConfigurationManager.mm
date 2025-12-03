@interface SBHomeScreenConfigurationManager
- (SBHomeScreenConfigurationManager)init;
- (id)focusModeManager;
- (id)iconController;
- (id)iconForApp:(void *)app iconModel:(void *)model rootFolder:;
- (id)iconForItem:(void *)item iconModel:(void *)model rootFolder:;
- (id)iconManager;
- (id)rootFolder;
- (void)applyDockItems:(void *)items toFocusMode:(void *)mode iconModel:(void *)model rootFolder:;
- (void)applyHomeScreenItems:(void *)items toFocusMode:(void *)mode iconModel:(void *)model rootFolder:;
- (void)configurationServer:(id)server didReceiveConfiguration:(id)configuration completion:(id)completion;
- (void)configurationServerDidBeginConfigurationSession:(id)session completion:(id)completion;
- (void)configurationServerDidEndConfigurationSession:(id)session completion:(id)completion;
- (void)iconModelDidLayout:(uint64_t)layout;
- (void)teardownFocusMode:(void *)mode rootFolder:;
- (void)updateHomeScreenWithConfiguration:(void *)configuration completion:;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v7 = *MEMORY[0x277D666F0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__SBHomeScreenConfigurationManager_init__block_invoke;
    v10[3] = &unk_2783AFD98;
    objc_copyWeak(&v11, &location);
    v8 = [defaultCenter addObserverForName:v7 object:0 queue:mainQueue usingBlock:v10];

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

- (void)configurationServerDidBeginConfigurationSession:(id)session completion:(id)completion
{
  completionCopy = completion;
  v5 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Beginning configuration session", v6, 2u);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)configurationServer:(id)server didReceiveConfiguration:(id)configuration completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = configurationCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Received configuration %{public}@", buf, 0xCu);
  }

  v11 = configurationCopy;
  v9 = completionCopy;
  v10 = configurationCopy;
  BSDispatchMain();
}

- (void)configurationServerDidEndConfigurationSession:(id)session completion:(id)completion
{
  completionCopy = completion;
  v5 = SBLogHomeScreenConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ending configuration session", buf, 2u);
  }

  v6 = completionCopy;
  BSDispatchMain();
}

- (void)iconModelDidLayout:(uint64_t)layout
{
  if (layout && *(layout + 16))
  {
    v2 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Updating installed focus mode because icon model laid out", v3, 2u);
    }

    [(SBHomeScreenConfigurationManager *)layout updateHomeScreenWithConfiguration:&__block_literal_global_217 completion:?];
  }
}

- (void)updateHomeScreenWithConfiguration:(void *)configuration completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  configurationCopy = configuration;
  if (self)
  {
    BSDispatchQueueAssertMain();
    rootFolder = [(SBHomeScreenConfigurationManager *)self rootFolder];
    model = [rootFolder model];
    if (model)
    {
      v12 = *(self + 24);
      if (v12)
      {
        [(SBHomeScreenConfigurationManager *)self teardownFocusMode:v12 rootFolder:rootFolder];
      }

      if (v5)
      {
        v15 = MEMORY[0x277CCACA8];
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v18 = [v15 stringWithFormat:@"com.apple.SpringBoard.HomeScreenConfigurationService.configuration.%@", uUIDString];

        v28 = v18;
        v19 = [objc_alloc(MEMORY[0x277D66198]) initWithIdentifier:v18 folder:rootFolder];
        v20 = *(self + 24);
        *(self + 24) = v19;

        layout = [v5 layout];
        dockItems = [layout dockItems];
        if (dockItems)
        {
          [(SBHomeScreenConfigurationManager *)self applyDockItems:dockItems toFocusMode:v19 iconModel:model rootFolder:rootFolder];
        }

        items = [layout items];
        [(SBHomeScreenConfigurationManager *)self applyHomeScreenItems:items toFocusMode:v19 iconModel:model rootFolder:rootFolder];

        focusModeManager = [(SBHomeScreenConfigurationManager *)self focusModeManager];
        [focusModeManager donateFocusMode:v19 fromSource:2];

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
        focusModeManager2 = [(SBHomeScreenConfigurationManager *)self focusModeManager];
        [focusModeManager2 donateFocusMode:0 fromSource:2];

        v14 = *(self + 24);
        *(self + 24) = 0;
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
  if (self)
  {
    iconManager = [(SBHomeScreenConfigurationManager *)self iconManager];
    rootFolder = [iconManager rootFolder];
  }

  else
  {
    rootFolder = 0;
  }

  return rootFolder;
}

- (void)teardownFocusMode:(void *)mode rootFolder:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  modeCopy = mode;
  if (self)
  {
    v7 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v5 identifier];
      *buf = 138412290;
      v25 = identifier;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Tearing down focus mode with ID: %@", buf, 0xCu);
    }

    lists = [v5 lists];
    v10 = [lists copy];

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
          [modeCopy removeList:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    dockList = [v5 dockList];
    v18 = dockList;
    if (dockList)
    {
      [dockList removeAllIcons];
      [v5 setDockList:0];
    }
  }
}

- (id)focusModeManager
{
  if (self)
  {
    iconManager = [(SBHomeScreenConfigurationManager *)self iconManager];
    focusModeManager = [iconManager focusModeManager];
  }

  else
  {
    focusModeManager = 0;
  }

  return focusModeManager;
}

- (void)applyDockItems:(void *)items toFocusMode:(void *)mode iconModel:(void *)model rootFolder:
{
  v9 = a2;
  itemsCopy = items;
  modeCopy = mode;
  modelCopy = model;
  if (self)
  {
    dockList = [itemsCopy dockList];
    if (!dockList)
    {
      dockList = [objc_alloc(MEMORY[0x277D663C0]) initWithFolder:modelCopy maxIconCount:{objc_msgSend(modeCopy, "maxIconCountForDock")}];
      [itemsCopy setDockList:dockList];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__SBHomeScreenConfigurationManager_applyDockItems_toFocusMode_iconModel_rootFolder___block_invoke;
    v15[3] = &unk_2783B9FF8;
    v15[4] = self;
    v16 = modeCopy;
    v17 = modelCopy;
    v14 = [v9 bs_compactMap:v15];
    [dockList setIcons:v14];
  }
}

- (void)applyHomeScreenItems:(void *)items toFocusMode:(void *)mode iconModel:(void *)model rootFolder:
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a2;
  itemsCopy = items;
  modeCopy = mode;
  modelCopy = model;
  if (self)
  {
    lists = [itemsCopy lists];
    bs_reverse = [lists bs_reverse];
    v14 = [bs_reverse mutableCopy];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __90__SBHomeScreenConfigurationManager_applyHomeScreenItems_toFocusMode_iconModel_rootFolder___block_invoke;
    v38[3] = &unk_2783B9FF8;
    v38[4] = self;
    v39 = modeCopy;
    v15 = modelCopy;
    v40 = v15;
    v16 = [v9 bs_compactMap:v38];
    if ([v16 count])
    {
      do
      {
        lastObject = [v14 lastObject];
        if (lastObject)
        {
          v18 = lastObject;
          [v14 removeLastObject];
        }

        else
        {
          v18 = [v15 insertEmptyListAtIndex:0];
          [v18 setHidden:1];
          [itemsCopy addToList:v18];
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

    v33 = modelCopy;
    v20 = v9;
    v21 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      lists2 = [itemsCopy lists];
      v23 = [lists2 count];
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
          [itemsCopy removeFromList:v31];
          [v15 removeList:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v28);
    }

    v9 = v20;
    modelCopy = v33;
  }
}

- (id)iconController
{
  if (self)
  {
    windowSceneManager = [SBApp windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
    iconController = [embeddedDisplayWindowScene iconController];
  }

  else
  {
    iconController = 0;
  }

  return iconController;
}

- (id)iconManager
{
  if (self)
  {
    iconController = [(SBHomeScreenConfigurationManager *)self iconController];
    iconManager = [iconController iconManager];
  }

  else
  {
    iconManager = 0;
  }

  return iconManager;
}

- (id)iconForItem:(void *)item iconModel:(void *)model rootFolder:
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  itemCopy = item;
  modelCopy = model;
  if (self)
  {
    if ([v7 kind] == 1)
    {
      self = [(SBHomeScreenConfigurationManager *)self iconForApp:v7 iconModel:itemCopy rootFolder:modelCopy];
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

      self = 0;
    }
  }

  return self;
}

- (id)iconForApp:(void *)app iconModel:(void *)model rootFolder:
{
  v18 = *MEMORY[0x277D85DE8];
  appCopy = app;
  modelCopy = model;
  if (self)
  {
    bundleIdentifier = [a2 bundleIdentifier];
    v10 = SBLogHomeScreenConfiguration();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = bundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Creating icon for app with bundle identifier: %{public}@", &v16, 0xCu);
    }

    v11 = [appCopy applicationIconForBundleIdentifier:bundleIdentifier];
    if (v11)
    {
      if ([modelCopy containsIcon:v11])
      {
        v12 = [appCopy addAdditionalIconMatchingIcon:v11];
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
        v17 = bundleIdentifier;
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