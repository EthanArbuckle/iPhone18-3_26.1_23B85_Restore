@interface SBSceneDisconnectionManager
+ (id)sharedManager;
- (BOOL)shouldDisconnectScene:(id)scene inSwitcher:(id)switcher;
- (SBSceneDisconnectionManager)init;
- (id)liveScenesForApplication:(id)application;
- (unint64_t)positionOf:(id)of inSwitcher:(id)switcher;
- (void)_beginSceneCleanupWithBackgroundedSceneEntities:(id)entities;
- (void)disconnectScenes:(id)scenes completion:(id)completion;
@end

@implementation SBSceneDisconnectionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SBSceneDisconnectionManager sharedManager];
  }

  v3 = sharedManager__sharedManager;

  return v3;
}

void __44__SBSceneDisconnectionManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SBSceneDisconnectionManager);
  v1 = sharedManager__sharedManager;
  sharedManager__sharedManager = v0;
}

- (SBSceneDisconnectionManager)init
{
  v6.receiver = self;
  v6.super_class = SBSceneDisconnectionManager;
  v2 = [(SBSceneDisconnectionManager *)&v6 init];
  if (v2)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    physicalMemory = [processInfo physicalMemory];

    v2->_numberOfRecentScenesExcludedFromDisconnection = vcvtps_u32_f32((physicalMemory / 1000000000.0) * 2.5);
  }

  return v2;
}

- (void)_beginSceneCleanupWithBackgroundedSceneEntities:(id)entities
{
  v41 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  if (!self->_isExecuting)
  {
    self->_isExecuting = 1;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = +[SBMainSwitcherControllerCoordinator sharedInstanceIfExists];
      v8 = v7;
      if (v7)
      {
        recentAppLayouts = [v7 recentAppLayouts];
        v10 = [recentAppLayouts count];
        numberOfRecentScenesExcludedFromDisconnection = self->_numberOfRecentScenesExcludedFromDisconnection;

        if (v10 <= numberOfRecentScenesExcludedFromDisconnection)
        {
          self->_isExecuting = 0;
        }

        else
        {
          v28 = [entitiesCopy bs_map:&__block_literal_global_4_2];
          v12 = +[SBApplicationController sharedInstanceIfExists];
          if (v12)
          {
            v25 = v12;
            v26 = entitiesCopy;
            runningApplications = [v12 runningApplications];
            v14 = [runningApplications bs_filter:&__block_literal_global_8_3];

            v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v36;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v36 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = [(SBSceneDisconnectionManager *)self liveScenesForApplication:*(*(&v35 + 1) + 8 * i)];
                  if ([v20 count] >= 2)
                  {
                    v31[0] = MEMORY[0x277D85DD0];
                    v31[1] = 3221225472;
                    v31[2] = __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_3;
                    v31[3] = &unk_2783BECF0;
                    v32 = v28;
                    selfCopy = self;
                    v21 = v8;
                    v34 = v8;
                    v22 = [v20 bs_filter:v31];
                    if ([v22 count])
                    {
                      [v27 unionSet:v22];
                    }

                    v8 = v21;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
              }

              while (v17);
            }

            entitiesCopy = v26;
            if ([v27 count])
            {
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_4;
              block[3] = &unk_2783A92D8;
              block[4] = self;
              v30 = v27;
              dispatch_async(MEMORY[0x277D85CD0], block);
            }

            else
            {
              v24 = SBLogWorkspace();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_INFO, "No scenes eligible for disconnection.", buf, 2u);
              }

              self->_isExecuting = 0;
            }

            v12 = v25;
          }

          else
          {
            self->_isExecuting = 0;
          }
        }
      }

      else
      {
        self->_isExecuting = 0;
        v23 = SBLogWorkspace();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_INFO, "Stopping scene disconnection – no main switcher instance found.", buf, 2u);
        }
      }
    }

    else
    {
      self->_isExecuting = 0;
    }
  }
}

uint64_t __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 info];
  v3 = [v2 supportsMultiwindow];

  return v3;
}

uint64_t __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) shouldDisconnectScene:v3 inSwitcher:*(a1 + 48)];
  }

  return v4;
}

uint64_t __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_5;
  v4[3] = &unk_2783ACC28;
  v4[4] = v2;
  return [v2 disconnectScenes:v1 completion:v4];
}

void __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = SBLogWorkspace();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_5_cold_1(v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Completed scene disconnections.", v7, 2u);
  }

  *(*(a1 + 32) + 8) = 0;
}

- (BOOL)shouldDisconnectScene:(id)scene inSwitcher:(id)switcher
{
  switcherCopy = switcher;
  sceneIfExists = [scene sceneIfExists];
  v11 = [sceneIfExists isValid] && (objc_msgSend(sceneIfExists, "settings"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isForeground"), v8, (v9 & 1) == 0) && (v10 = -[SBSceneDisconnectionManager positionOf:inSwitcher:](self, "positionOf:inSwitcher:", sceneIfExists, switcherCopy), v10 != 0x7FFFFFFFFFFFFFFFLL) && v10 >= self->_numberOfRecentScenesExcludedFromDisconnection;

  return v11;
}

- (void)disconnectScenes:(id)scenes completion:(id)completion
{
  completionCopy = completion;
  scenesCopy = scenes;
  v7 = SBApplicationSceneEntityDestructionMakeIntent(1, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SBSceneDisconnectionManager_disconnectScenes_completion___block_invoke;
  v9[3] = &unk_2783B7568;
  v10 = completionCopy;
  v8 = completionCopy;
  SBWorkspaceDestroyApplicationSceneHandlesWithIntent(scenesCopy, v7, v9);
}

uint64_t __59__SBSceneDisconnectionManager_disconnectScenes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = (*(v4 + 16))();
  }

  return MEMORY[0x2821F9730](v4);
}

- (id)liveScenesForApplication:(id)application
{
  applicationCopy = application;
  sceneManager = [(SBSceneDisconnectionManager *)self sceneManager];
  externalApplicationSceneHandles = [sceneManager externalApplicationSceneHandles];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SBSceneDisconnectionManager_liveScenesForApplication___block_invoke;
  v10[3] = &unk_2783BED18;
  v11 = applicationCopy;
  v7 = applicationCopy;
  v8 = [externalApplicationSceneHandles bs_filter:v10];

  return v8;
}

uint64_t __56__SBSceneDisconnectionManager_liveScenesForApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 application];
  if ([v4 isSameExecutableAsApplication:*(a1 + 32)])
  {
    v5 = [v3 scene];
    v6 = [v5 isValid];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)positionOf:(id)of inSwitcher:(id)switcher
{
  ofCopy = of;
  switcherCopy = switcher;
  recentAppLayouts = [switcherCopy recentAppLayouts];
  v9 = [recentAppLayouts count];

  numberOfRecentScenesExcludedFromDisconnection = self->_numberOfRecentScenesExcludedFromDisconnection;
  if (v9 >= numberOfRecentScenesExcludedFromDisconnection)
  {
    v11 = self->_numberOfRecentScenesExcludedFromDisconnection;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    v12 = 0;
    while (1)
    {
      recentAppLayouts2 = [switcherCopy recentAppLayouts];
      v14 = [recentAppLayouts2 objectAtIndexedSubscript:v12];

      identifier = [ofCopy identifier];
      v16 = [v14 containsItemWithUniqueIdentifier:identifier];

      if (v16)
      {
        break;
      }

      if (v11 == ++v12)
      {
        numberOfRecentScenesExcludedFromDisconnection = self->_numberOfRecentScenesExcludedFromDisconnection;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = numberOfRecentScenesExcludedFromDisconnection + 1;
  }

  return v12;
}

void __79__SBSceneDisconnectionManager__beginSceneCleanupWithBackgroundedSceneEntities___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Error while disconnecting scenes: %@", &v2, 0xCu);
}

@end