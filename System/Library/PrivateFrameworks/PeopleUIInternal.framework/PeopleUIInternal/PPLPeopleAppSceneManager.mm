@interface PPLPeopleAppSceneManager
+ (id)sharedSceneManager;
- (PPLPeopleAppSceneManager)initWithAppLauncher:(id)launcher;
- (id)watchdogPolicyForProcess:(id)process eventContext:(id)context;
- (void)_configureSceneForRequester:(id)requester;
- (void)_createSceneForRequester:(id)requester;
- (void)_sendSceneToBackground;
- (void)_updateSceneSettingsForRequester:(id)requester;
- (void)_updateTraitCollection;
- (void)addSceneRequester:(id)requester;
- (void)removeSceneRequester:(id)requester;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)transaction:(id)transaction didCreateScene:(id)scene;
- (void)willLaunchPeopleAppInBackground:(id)background;
@end

@implementation PPLPeopleAppSceneManager

+ (id)sharedSceneManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PPLPeopleAppSceneManager_sharedSceneManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSceneManager_onceToken != -1)
  {
    dispatch_once(&sharedSceneManager_onceToken, block);
  }

  v2 = sharedSceneManager___sharedSceneManager;

  return v2;
}

void __46__PPLPeopleAppSceneManager_sharedSceneManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc(objc_opt_class());
  v5 = +[PPLPeopleAppLauncher sharedLauncher];
  v3 = [v2 initWithAppLauncher:v5];
  v4 = sharedSceneManager___sharedSceneManager;
  sharedSceneManager___sharedSceneManager = v3;
}

- (PPLPeopleAppSceneManager)initWithAppLauncher:(id)launcher
{
  launcherCopy = launcher;
  v10.receiver = self;
  v10.super_class = PPLPeopleAppSceneManager;
  v6 = [(PPLPeopleAppSceneManager *)&v10 init];
  if (v6)
  {
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    sceneRequesters = v6->_sceneRequesters;
    v6->_sceneRequesters = weakObjectsPointerArray;

    objc_storeStrong(&v6->_peopleAppLauncher, launcher);
    [(PPLPeopleAppLauncher *)v6->_peopleAppLauncher setDelegate:v6];
  }

  return v6;
}

- (void)addSceneRequester:(id)requester
{
  requesterCopy = requester;
  sceneRequesters = [(PPLPeopleAppSceneManager *)self sceneRequesters];
  allObjects = [sceneRequesters allObjects];

  if (([allObjects containsObject:requesterCopy] & 1) == 0)
  {
    lastObject = [allObjects lastObject];
    scene = [(PPLPeopleAppSceneManager *)self scene];
    [lastObject sceneManager:self didRevokeOwnershipOfScene:scene];

    sceneRequesters2 = [(PPLPeopleAppSceneManager *)self sceneRequesters];
    [sceneRequesters2 addPointer:requesterCopy];

    [(PPLPeopleAppSceneManager *)self _configureSceneForRequester:requesterCopy];
  }
}

- (void)removeSceneRequester:(id)requester
{
  requesterCopy = requester;
  sceneRequesters = [(PPLPeopleAppSceneManager *)self sceneRequesters];
  allObjects = [sceneRequesters allObjects];
  v6 = [allObjects indexOfObject:requesterCopy];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [sceneRequesters removePointerAtIndex:v6];
    lastObject = [allObjects lastObject];

    if (lastObject == requesterCopy)
    {
      scene = [(PPLPeopleAppSceneManager *)self scene];
      [requesterCopy sceneManager:self didRevokeOwnershipOfScene:scene];
    }

    if ([sceneRequesters count])
    {
      allObjects2 = [sceneRequesters allObjects];
      lastObject2 = [allObjects2 lastObject];

      [(PPLPeopleAppSceneManager *)self _configureSceneForRequester:lastObject2];
    }

    else
    {
      [(PPLPeopleAppSceneManager *)self _sendSceneToBackground];
    }
  }
}

- (void)willLaunchPeopleAppInBackground:(id)background
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PPLPeopleAppSceneManager_willLaunchPeopleAppInBackground___block_invoke;
  block[3] = &unk_279A0DCA8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)transaction:(id)transaction didCreateScene:(id)scene
{
  sceneCopy = scene;
  [(PPLPeopleAppSceneManager *)self setScene:sceneCopy];
  scene = [(PPLPeopleAppSceneManager *)self scene];
  [scene addObserver:self];

  sceneRequesters = [(PPLPeopleAppSceneManager *)self sceneRequesters];
  allObjects = [sceneRequesters allObjects];
  lastObject = [allObjects lastObject];

  [lastObject sceneManager:self didGrantOwnershipOfScene:sceneCopy];
}

- (void)sceneDidInvalidate:(id)invalidate
{
  scene = [(PPLPeopleAppSceneManager *)self scene];
  [scene removeObserver:self];

  transaction = [(PPLPeopleAppSceneManager *)self transaction];
  [transaction removeObserver:self];

  v6 = PPLPeopleViewServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_25E21C000, v6, OS_LOG_TYPE_DEFAULT, "scene invalidated", v19, 2u);
  }

  sceneRequesters = [(PPLPeopleAppSceneManager *)self sceneRequesters];
  allObjects = [sceneRequesters allObjects];
  lastObject = [allObjects lastObject];

  if (lastObject)
  {
    v10 = PPLPeopleViewServiceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PPLPeopleAppSceneManager *)v10 sceneDidInvalidate:v11, v12, v13, v14, v15, v16, v17];
    }

    scene2 = [(PPLPeopleAppSceneManager *)self scene];
    [lastObject sceneManager:self didRevokeOwnershipOfScene:scene2];

    [(PPLPeopleAppSceneManager *)self setScene:0];
    [(PPLPeopleAppSceneManager *)self _createSceneForRequester:lastObject];
  }

  else
  {
    [(PPLPeopleAppSceneManager *)self setScene:0];
  }
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = PPLPeopleViewServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[PPLPeopleAppSceneManager scene:didUpdateClientSettingsWithDiff:oldClientSettings:transitionContext:]";
    _os_log_impl(&dword_25E21C000, v8, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [contextCopy shouldDismiss])
  {
    sceneRequesters = [(PPLPeopleAppSceneManager *)self sceneRequesters];
    allObjects = [sceneRequesters allObjects];
    lastObject = [allObjects lastObject];

    if (lastObject)
    {
      scene = [(PPLPeopleAppSceneManager *)self scene];
      [lastObject sceneManager:self sceneDidRequestDismissal:scene];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)watchdogPolicyForProcess:(id)process eventContext:(id)context
{
  v13[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([contextCopy event] == 1 || objc_msgSend(contextCopy, "event") == 2)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D0AD88];
    FBSProcessResourceAllowanceMakeWithRealTimeInterval();
    v7 = [v6 provisionWithAllowance:v12];
    v8 = MEMORY[0x277D0AD98];
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v5 = [v8 policyWithProvisions:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_configureSceneForRequester:(id)requester
{
  v14 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  scene = [(PPLPeopleAppSceneManager *)self scene];
  if (scene && (v6 = scene, -[PPLPeopleAppSceneManager scene](self, "scene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isValid], v7, v6, (v8 & 1) != 0))
  {
    v9 = PPLPeopleViewServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      scene2 = [(PPLPeopleAppSceneManager *)self scene];
      v12 = 138412290;
      v13 = scene2;
      _os_log_impl(&dword_25E21C000, v9, OS_LOG_TYPE_DEFAULT, "Current scene %@", &v12, 0xCu);
    }

    [(PPLPeopleAppSceneManager *)self _updateSceneSettingsForRequester:requesterCopy];
  }

  else
  {
    [(PPLPeopleAppSceneManager *)self _createSceneForRequester:requesterCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_createSceneForRequester:(id)requester
{
  requesterCopy = requester;
  [(PPLPeopleAppSceneManager *)self _launchPeopleAppIfNeededWithForegroundPriority:1];
  if (requesterCopy)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  transaction = [(PPLPeopleAppSceneManager *)self transaction];

  if (transaction)
  {
    personURL = PPLPeopleViewServiceLog();
    if (os_log_type_enabled(personURL, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25E21C000, personURL, OS_LOG_TYPE_DEFAULT, "another active transaction", &buf, 2u);
    }
  }

  else
  {
    personURL = [requesterCopy personURL];
    v8 = PPLPeopleViewServiceLog();
    v9 = v8;
    if (personURL)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_25E21C000, v9, OS_LOG_TYPE_DEFAULT, "setup new transaction", &buf, 2u);
      }

      v10 = objc_alloc(MEMORY[0x277D0AA80]);
      v11 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.PeopleViewService"];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __53__PPLPeopleAppSceneManager__createSceneForRequester___block_invoke;
      v63[3] = &unk_279A0DCF8;
      v63[4] = self;
      v63[5] = v5;
      v12 = [v10 initWithProcessIdentity:v11 executionContextProvider:v63];
      [(PPLPeopleAppSceneManager *)self setTransaction:v12];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__updateTraitCollection name:*MEMORY[0x277D77548] object:0];

      objc_initWeak(&buf, self);
      transaction2 = [(PPLPeopleAppSceneManager *)self transaction];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __53__PPLPeopleAppSceneManager__createSceneForRequester___block_invoke_2;
      v59[3] = &unk_279A0DD48;
      objc_copyWeak(&v61, &buf);
      v15 = requesterCopy;
      v60 = v15;
      [transaction2 setCompletionBlock:v59];

      v56 = objc_alloc_init(PPLPeopleEntitySceneSpecification);
      v16 = objc_alloc_init([(PPLPeopleEntitySceneSpecification *)v56 settingsClass]);
      v17 = [v16 mutableCopy];

      mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
      [v17 setDisplayConfiguration:mainConfiguration];

      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      traitCollection = [mainScreen traitCollection];
      [v17 setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

      [v17 setForeground:requesterCopy != 0];
      if (requesterCopy)
      {
        [v15 initialSceneFrame];
        v22 = v21;
        v24 = v23;
        [v15 sceneSafeAreaInsetPortrait];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 bounds];
        v22 = v41;
        v24 = v42;
        v26 = *MEMORY[0x277D768C8];
        v28 = *(MEMORY[0x277D768C8] + 8);
        v30 = *(MEMORY[0x277D768C8] + 16);
        v32 = *(MEMORY[0x277D768C8] + 24);
      }

      [v17 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), v22, v24}];
      [v17 setInterfaceOrientationMode:0];
      [v17 setInterfaceOrientation:1];
      [v17 setForcedStatusBarForegroundTransparent:1];
      [v17 setSafeAreaInsetsPortrait:{v26, v28, v30, v32}];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __53__PPLPeopleAppSceneManager__createSceneForRequester___block_invoke_18;
      v57[3] = &unk_279A0DD70;
      v55 = v17;
      v58 = v55;
      v43 = MEMORY[0x25F8AFCD0](v57);
      v43[2](v43, 1);
      v43[2](v43, 2);
      v43[2](v43, 4);
      v43[2](v43, 3);
      v44 = objc_alloc_init([(UIApplicationSceneSpecification *)v56 clientSettingsClass]);
      v45 = [v44 mutableCopy];

      [v45 setStatusBarHidden:1];
      [v45 setSupportedInterfaceOrientations:2];
      v46 = [objc_alloc(MEMORY[0x277D0AD50]) initWithSpecification:v56];
      [v46 setSettings:v55];
      [v46 setClientSettings:v45];
      v47 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:personURL];
      v48 = objc_alloc_init([(UIApplicationSceneSpecification *)v56 transitionContextClass]);
      v49 = [MEMORY[0x277CBEB98] setWithObject:v47];
      [v48 setActions:v49];

      transaction3 = [(PPLPeopleAppSceneManager *)self transaction];
      v51 = [MEMORY[0x277D0ADC0] identityForIdentifier:@"com.apple.PeopleViewService" workspaceIdentifier:@"com.apple.PeopleViewService"];
      [transaction3 updateSceneWithIdentity:v51 parameters:v46 transitionContext:v48];

      transaction4 = [(PPLPeopleAppSceneManager *)self transaction];
      [transaction4 addObserver:self];

      transaction5 = [(PPLPeopleAppSceneManager *)self transaction];
      [transaction5 begin];

      transaction6 = [(PPLPeopleAppSceneManager *)self transaction];
      [transaction6 setWaitsForSceneCommits:1];

      objc_destroyWeak(&v61);
      objc_destroyWeak(&buf);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(PPLPeopleAppSceneManager *)v9 _createSceneForRequester:v33, v34, v35, v36, v37, v38, v39];
      }
    }
  }
}

id __53__PPLPeopleAppSceneManager__createSceneForRequester___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setWatchdogProvider:*(a1 + 32)];
  [v2 setLaunchIntent:*(a1 + 40)];

  return v2;
}

void __53__PPLPeopleAppSceneManager__createSceneForRequester___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTransaction:0];
  v5 = PPLPeopleViewServiceLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_25E21C000, v6, OS_LOG_TYPE_DEFAULT, "successfully created transaction", v15, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__PPLPeopleAppSceneManager__createSceneForRequester___block_invoke_2_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PPLPeopleAppSceneManager__createSceneForRequester___block_invoke_13;
    block[3] = &unk_279A0DD20;
    block[4] = WeakRetained;
    v17 = *(a1 + 32);
    dispatch_after(v14, MEMORY[0x277D85CD0], block);
  }
}

- (void)_updateTraitCollection
{
  scene = [(PPLPeopleAppSceneManager *)self scene];
  [scene updateSettingsWithBlock:&__block_literal_global_1];
}

void __50__PPLPeopleAppSceneManager__updateTraitCollection__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isUISubclass])
  {
    v2 = MEMORY[0x277D759A0];
    v3 = v6;
    v4 = [v2 mainScreen];
    v5 = [v4 traitCollection];
    [v3 setUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];
  }
}

- (void)_updateSceneSettingsForRequester:(id)requester
{
  requesterCopy = requester;
  scene = [(PPLPeopleAppSceneManager *)self scene];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__PPLPeopleAppSceneManager__updateSceneSettingsForRequester___block_invoke;
  v9[3] = &unk_279A0DDB8;
  v10 = requesterCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__PPLPeopleAppSceneManager__updateSceneSettingsForRequester___block_invoke_2;
  v7[3] = &unk_279A0DDE0;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [scene performUpdate:v9 withCompletion:v7];
}

void __61__PPLPeopleAppSceneManager__updateSceneSettingsForRequester___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  [v11 setForeground:1];
  if ([v11 isUISubclass])
  {
    v6 = *(a1 + 32);
    v7 = v11;
    [v6 initialSceneFrame];
    [v7 setFrame:?];
    [*(a1 + 32) sceneSafeAreaInsetPortrait];
    [v7 setSafeAreaInsetsPortrait:?];
  }

  v8 = [*(a1 + 32) personURL];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D757D0]) initWithURL:v8];
    v10 = [MEMORY[0x277CBEB98] setWithObject:v9];
    [v5 setActions:v10];
  }
}

void __61__PPLPeopleAppSceneManager__updateSceneSettingsForRequester___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneRequesters];
  v3 = [v2 allObjects];
  v6 = [v3 lastObject];

  if (v6 == *(a1 + 40))
  {
    v4 = *(a1 + 32);
    v5 = [v4 scene];
    [v6 sceneManager:v4 didGrantOwnershipOfScene:v5];
  }
}

- (void)_sendSceneToBackground
{
  v3 = PPLPeopleViewServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E21C000, v3, OS_LOG_TYPE_DEFAULT, "Sending people app to the background", v5, 2u);
  }

  scene = [(PPLPeopleAppSceneManager *)self scene];
  [scene updateSettingsWithTransitionBlock:&__block_literal_global_29];
}

@end