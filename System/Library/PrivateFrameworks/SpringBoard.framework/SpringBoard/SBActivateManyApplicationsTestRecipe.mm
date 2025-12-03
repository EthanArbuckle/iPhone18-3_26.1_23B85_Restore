@interface SBActivateManyApplicationsTestRecipe
+ (id)_bundleIdentifiers;
- (SBActivateManyApplicationsTestRecipe)init;
- (void)_addAppToStageWithBundleIdentifier:(id)identifier;
- (void)_addNewNotesSceneToStage;
- (void)_destroyApplicationSceneHandles:(id)handles;
- (void)_removeFrontmostScene;
- (void)_removeNotesScenes;
- (void)_removeScenesForAppWithBundleIdentifier:(id)identifier;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBActivateManyApplicationsTestRecipe

- (SBActivateManyApplicationsTestRecipe)init
{
  v3.receiver = self;
  v3.super_class = SBActivateManyApplicationsTestRecipe;
  result = [(SBActivateManyApplicationsTestRecipe *)&v3 init];
  if (result)
  {
    result->_launchedAppsCount = 0;
  }

  return result;
}

- (void)handleVolumeIncrease
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_1_1();
  v8 = 2048;
  v9 = a2;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "[%@] Reached bundle identifiers list max (%lu), now creating new notes windows", v7, 0x16u);
}

- (void)handleVolumeDecrease
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[%@] No app to deactivate", v5, 0xCu);
}

+ (id)_bundleIdentifiers
{
  if (_bundleIdentifiers_onceToken != -1)
  {
    +[SBActivateManyApplicationsTestRecipe _bundleIdentifiers];
  }

  v3 = _bundleIdentifiers_bundleIdentifiers;

  return v3;
}

void __58__SBActivateManyApplicationsTestRecipe__bundleIdentifiers__block_invoke()
{
  v2[35] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.AppStore";
  v2[1] = @"com.apple.iBooks";
  v2[2] = @"com.apple.calculator";
  v2[3] = @"com.apple.mobilecal";
  v2[4] = @"com.apple.camera";
  v2[5] = @"com.apple.mobiletimer";
  v2[6] = @"com.apple.BarcodeScanner";
  v2[7] = @"com.apple.compass";
  v2[8] = @"com.apple.MobileAddressBook";
  v2[9] = @"com.apple.facetime";
  v2[10] = @"com.apple.DocumentsApp";
  v2[11] = @"com.apple.findmy";
  v2[12] = @"com.apple.freeform";
  v2[13] = @"com.apple.Health";
  v2[14] = @"com.apple.Home";
  v2[15] = @"com.apple.Magnifier";
  v2[16] = @"com.apple.mobilemail";
  v2[17] = @"com.apple.Maps";
  v2[18] = @"com.apple.measure";
  v2[19] = @"com.apple.MobileSMS";
  v2[20] = @"com.apple.Music";
  v2[21] = @"com.apple.news";
  v2[22] = @"com.apple.Photo-Booth";
  v2[23] = @"com.apple.mobileslideshow";
  v2[24] = @"com.apple.podcasts";
  v2[25] = @"com.apple.reminders";
  v2[26] = @"com.apple.mobilesafari";
  v2[27] = @"com.apple.Preferences";
  v2[28] = @"com.apple.shortcuts";
  v2[29] = @"com.apple.stocks";
  v2[30] = @"com.apple.tips";
  v2[31] = @"com.apple.Translate";
  v2[32] = @"com.apple.tv";
  v2[33] = @"com.apple.VoiceMemos";
  v2[34] = @"com.apple.weather";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:35];
  v1 = _bundleIdentifiers_bundleIdentifiers;
  _bundleIdentifiers_bundleIdentifiers = v0;
}

- (void)_addAppToStageWithBundleIdentifier:(id)identifier
{
  windowScene = self->_windowScene;
  identifierCopy = identifier;
  sceneManager = [(SBWindowScene *)windowScene sceneManager];
  v6 = sceneManager;
  if (sceneManager)
  {
    v7 = sceneManager;
  }

  else
  {
    v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  }

  v8 = v7;

  v9 = +[SBApplicationController sharedInstance];
  v10 = [v9 applicationWithBundleIdentifier:identifierCopy];

  v11 = [SBDeviceApplicationSceneEntity alloc];
  displayIdentity = [v8 displayIdentity];
  v13 = [(SBDeviceApplicationSceneEntity *)v11 initWithApplication:v10 generatingNewPrimarySceneIfRequired:1 sceneHandleProvider:v8 displayIdentity:displayIdentity];

  if (v13)
  {
    v14 = +[SBWorkspace mainWorkspace];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__SBActivateManyApplicationsTestRecipe__addAppToStageWithBundleIdentifier___block_invoke;
    v15[3] = &unk_2783A98F0;
    v16 = v13;
    [v14 requestTransitionWithOptions:0 builder:v15 validator:&__block_literal_global_15_1];
  }
}

void __75__SBActivateManyApplicationsTestRecipe__addAppToStageWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:35];
  [v3 setEventLabel:@"NewWindowRequest"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__SBActivateManyApplicationsTestRecipe__addAppToStageWithBundleIdentifier___block_invoke_2;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

void __75__SBActivateManyApplicationsTestRecipe__addAppToStageWithBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [(SBWorkspaceEntity *)SBPreviousWorkspaceEntity entity:v8];
  v7 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  [v4 setEntities:v5 startingAtLayoutRole:1 withPolicy:1 centerEntity:v6 floatingEntity:v7];

  [v4 _setRequestedFrontmostEntity:*(a1 + 32)];
}

- (void)_addNewNotesSceneToStage
{
  sceneManager = [(SBWindowScene *)self->_windowScene sceneManager];
  v3 = sceneManager;
  if (sceneManager)
  {
    v4 = sceneManager;
  }

  else
  {
    v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  }

  v5 = v4;

  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithBundleIdentifier:@"com.apple.mobilenotes"];

  displayIdentity = [v5 displayIdentity];
  v9 = [SBDeviceApplicationSceneEntity newEntityWithApplication:v7 sceneHandleProvider:v5 displayIdentity:displayIdentity];

  if (v9)
  {
    v10 = +[SBWorkspace mainWorkspace];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__SBActivateManyApplicationsTestRecipe__addNewNotesSceneToStage__block_invoke;
    v11[3] = &unk_2783A98F0;
    v12 = v9;
    [v10 requestTransitionWithOptions:0 builder:v11 validator:&__block_literal_global_17_2];
  }
}

void __64__SBActivateManyApplicationsTestRecipe__addNewNotesSceneToStage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:35];
  [v3 setEventLabel:@"NewWindowRequest"];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SBActivateManyApplicationsTestRecipe__addNewNotesSceneToStage__block_invoke_2;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
}

void __64__SBActivateManyApplicationsTestRecipe__addNewNotesSceneToStage__block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setActivatingEntity:v3];
  v8[0] = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  v7 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  [v4 setEntities:v5 startingAtLayoutRole:1 withPolicy:1 centerEntity:v6 floatingEntity:v7];

  [v4 _setRequestedFrontmostEntity:*(a1 + 32)];
}

- (void)_removeNotesScenes
{
  v3 = @"com.apple.mobilenotes";
  sceneManager = [(SBWindowScene *)self->_windowScene sceneManager];
  v5 = sceneManager;
  if (sceneManager)
  {
    v6 = sceneManager;
  }

  else
  {
    v6 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  }

  v7 = v6;

  v8 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v9 = [v7 externalApplicationSceneHandlesForBundleIdentifiers:v8];

  v10 = SBApplicationSceneEntityDestructionMakeIntent(1, 1);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SBActivateManyApplicationsTestRecipe__removeNotesScenes__block_invoke;
  v11[3] = &unk_2783ACC28;
  v12 = v3;
  SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v9, v10, v11);
}

void __58__SBActivateManyApplicationsTestRecipe__removeNotesScenes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = SBLogPrototyping();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__SBActivateManyApplicationsTestRecipe__removeNotesScenes__block_invoke_cold_1();
    }
  }

  v6 = +[SBApplicationController sharedInstanceIfExists];
  v7 = [v6 applicationWithBundleIdentifier:*(a1 + 32)];
  v8 = [v7 processState];
  v9 = [v8 isRunning];

  if (v9)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Killing %@ because it has been disabled", &v11, 0xCu);
    }

    SBWorkspaceKillApplication(v7, 1, @"app has been disabled/restricted", 0);
  }
}

- (void)_removeScenesForAppWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(SBActivateManyApplicationsTestRecipe *)a2 _removeScenesForAppWithBundleIdentifier:?];
  }

  sceneManager = [(SBWindowScene *)self->_windowScene sceneManager];
  v6 = sceneManager;
  if (sceneManager)
  {
    v7 = sceneManager;
  }

  else
  {
    v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  }

  v8 = v7;

  v9 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
  v10 = [v8 externalApplicationSceneHandlesForBundleIdentifiers:v9];

  [(SBActivateManyApplicationsTestRecipe *)self _destroyApplicationSceneHandles:v10];
}

- (void)_removeFrontmostScene
{
  switcherController = [(SBWindowScene *)self->_windowScene switcherController];
  displayItemLayoutAttributesProvider = [switcherController displayItemLayoutAttributesProvider];
  layoutState = [switcherController layoutState];
  appLayout = [layoutState appLayout];

  interfaceOrientation = [switcherController interfaceOrientation];
  if ((interfaceOrientation - 1) < 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * ((interfaceOrientation - 3) < 2);
  }

  v9 = [displayItemLayoutAttributesProvider zOrderedItemsInAppLayout:appLayout orientation:v8];
  v10 = [appLayout leafAppLayoutsFromDisplayItems:v9];

  firstObject = [v10 firstObject];
  interfaceOrientation2 = [switcherController interfaceOrientation];
  if ((interfaceOrientation2 - 1) < 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * ((interfaceOrientation2 - 3) < 2);
  }

  v14 = [displayItemLayoutAttributesProvider zOrderedItemsInAppLayout:firstObject orientation:v13];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__113;
  v27 = __Block_byref_object_dispose__113;
  v28 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __61__SBActivateManyApplicationsTestRecipe__removeFrontmostScene__block_invoke;
  v20 = &unk_2783C0928;
  v22 = &v23;
  v15 = switcherController;
  v21 = v15;
  [v14 enumerateObjectsUsingBlock:&v17];
  if (v24[5])
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:{v17, v18, v19, v20}];
    [(SBActivateManyApplicationsTestRecipe *)self _destroyApplicationSceneHandles:v16];
  }

  _Block_object_dispose(&v23, 8);
}

void __61__SBActivateManyApplicationsTestRecipe__removeFrontmostScene__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (![v9 type])
  {
    v6 = [*(a1 + 32) _deviceApplicationSceneHandleForDisplayItem:v9];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
    }
  }
}

- (void)_destroyApplicationSceneHandles:(id)handles
{
  handlesCopy = handles;
  v7 = handlesCopy;
  if (!handlesCopy)
  {
    [(SBActivateManyApplicationsTestRecipe *)a2 _destroyApplicationSceneHandles:?];
    handlesCopy = 0;
  }

  if ([handlesCopy count])
  {
    v6 = SBApplicationSceneEntityDestructionMakeIntent(1, 1);
    SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v7, v6, &__block_literal_global_38_2);
  }
}

void __72__SBActivateManyApplicationsTestRecipe__destroyApplicationSceneHandles___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = SBLogPrototyping();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__SBActivateManyApplicationsTestRecipe__removeNotesScenes__block_invoke_cold_1();
    }
  }
}

void __58__SBActivateManyApplicationsTestRecipe__removeNotesScenes__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "Error while attempting to disconnect scene: %@", v1, 0xCu);
}

- (void)_removeScenesForAppWithBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBActivateManyApplicationsTestRecipe.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
}

- (void)_destroyApplicationSceneHandles:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBActivateManyApplicationsTestRecipe.m" lineNumber:227 description:{@"Invalid parameter not satisfying: %@", @"sceneHandlesToDestroy"}];
}

@end