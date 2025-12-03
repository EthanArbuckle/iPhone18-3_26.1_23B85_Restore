@interface SBSceneManagerCoordinator
+ (SBSceneManagerCoordinator)sharedInstance;
+ (id)mainDisplaySceneManager;
+ (id)secureMainDisplaySceneManager;
+ (uint64_t)mainDisplaySceneManager;
+ (uint64_t)secureMainDisplaySceneManager;
- (NSString)debugDescription;
- (NSString)description;
- (SBSceneManagerCoordinator)init;
- (id)_newLayoutStateSceneIdentityProviderWithDisplayIdentity:(id)identity;
- (id)_newSceneIdentityProviderWithDisplayIdentity:(id)identity;
- (id)_referenceForDisplayIdentity:(id)identity creatingIfNecessary:(BOOL)necessary;
- (id)_sceneManagerForDisplayIdentity:(id)identity creatingIfNecessary:(BOOL)necessary;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)sceneManagerForPersistenceIdentifier:(id)identifier;
- (void)_createSceneForApplication:(id)application withOptions:(id)options completion:(id)completion;
- (void)addActionHandler:(id)handler forScene:(id)scene;
- (void)dealloc;
- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
- (void)enumerateSceneManagersWithBlock:(id)block;
- (void)init;
- (void)registerSceneWorkspaceIdentifierToIgnore:(id)ignore;
- (void)removeActionHandler:(id)handler forScene:(id)scene;
- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error;
- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)sceneManager:(id)manager clientDidConnectWithHandshake:(id)handshake;
- (void)sceneManager:(id)manager didAddScene:(id)scene;
- (void)sceneManager:(id)manager didReceiveSceneRequestWithOptions:(id)options fromProcess:(id)process completion:(id)completion;
- (void)sceneManagerDidInvalidateForReference:(id)reference;
- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context;
@end

@implementation SBSceneManagerCoordinator

+ (SBSceneManagerCoordinator)sharedInstance
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SBSceneManagerCoordinator_sharedInstance__block_invoke;
  block[3] = &unk_2783A9718;
  block[4] = v5;
  if (sharedInstance___once_9 != -1)
  {
    dispatch_once(&sharedInstance___once_9, block);
  }

  v2 = sharedInstance___instance_9;
  _Block_object_dispose(v5, 8);

  return v2;
}

+ (id)mainDisplaySceneManager
{
  if (SBFIsShellSceneKitAvailable())
  {
    windowSceneManager = [SBApp windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
    _fbsDisplayIdentity = [embeddedDisplayWindowScene _fbsDisplayIdentity];

    v5 = +[SBSceneManagerCoordinator sharedInstance];
    v6 = [v5 _sceneManagerForDisplayIdentity:_fbsDisplayIdentity creatingIfNecessary:0];

    if (v6)
    {
      goto LABEL_6;
    }

    +[SBSceneManagerCoordinator mainDisplaySceneManager];
    mainIdentity = v9;
  }

  else
  {
    _fbsDisplayIdentity = +[SBSceneManagerCoordinator sharedInstance];
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    v6 = [_fbsDisplayIdentity _sceneManagerForDisplayIdentity:mainIdentity creatingIfNecessary:1];
  }

LABEL_6:

  return v6;
}

uint64_t __43__SBSceneManagerCoordinator_sharedInstance__block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = objc_alloc_init(SBSceneManagerCoordinator);
  v3 = sharedInstance___instance_9;
  sharedInstance___instance_9 = v2;

  result = kdebug_trace();
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

- (SBSceneManagerCoordinator)init
{
  v33 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerCoordinator init];
  }

  v31.receiver = self;
  v31.super_class = SBSceneManagerCoordinator;
  v3 = [(SBSceneManagerCoordinator *)&v31 init];
  if (v3)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    sceneManager = v3->_sceneManager;
    v3->_sceneManager = mEMORY[0x277D0AAD8];

    [(FBSceneManager *)v3->_sceneManager setDelegate:v3];
    v6 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.siri", *MEMORY[0x277CF0A48], 0}];
    workspaceIdentifiersToIgnore = v3->_workspaceIdentifiersToIgnore;
    v3->_workspaceIdentifiersToIgnore = v6;

    v8 = objc_alloc_init(MEMORY[0x277D75168]);
    sceneDeactivationManager = v3->_sceneDeactivationManager;
    v3->_sceneDeactivationManager = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    displayIdentityToReferenceMap = v3->_displayIdentityToReferenceMap;
    v3->_displayIdentityToReferenceMap = v10;

    mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
    [mEMORY[0x277D0AA90] addObserver:v3];
    if ((SBFIsShellSceneKitAvailable() & 1) == 0)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      connectedIdentities = [mEMORY[0x277D0AA90] connectedIdentities];
      v14 = [connectedIdentities countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(connectedIdentities);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            v19 = [mEMORY[0x277D0AA90] configurationForIdentity:v18];
            [(SBSceneManagerCoordinator *)v3 displayMonitor:mEMORY[0x277D0AA90] didConnectIdentity:v18 withConfiguration:v19];
          }

          v15 = [connectedIdentities countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }
    }

    v20 = v3->_sceneManager;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __33__SBSceneManagerCoordinator_init__block_invoke;
    v25[3] = &unk_2783ACB60;
    v21 = v3;
    v26 = v21;
    [(FBSceneManager *)v20 enumerateScenesWithBlock:v25];
    v22 = objc_alloc_init(SBDeviceApplicationSceneHandleDisableMultitaskingAssertionManager);
    sceneHandleDisableMultitaskingAssertionManager = v21->_sceneHandleDisableMultitaskingAssertionManager;
    v21->_sceneHandleDisableMultitaskingAssertionManager = v22;
  }

  return v3;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
  [mEMORY[0x277D0AA90] removeObserver:self];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_displayIdentityToReferenceMap allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        manager = [*(*(&v11 + 1) + 8 * v8) manager];
        [manager invalidate];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_displayIdentityToReferenceMap removeAllObjects];
  [(FBSceneManager *)self->_sceneManager setDelegate:0];
  v10.receiver = self;
  v10.super_class = SBSceneManagerCoordinator;
  [(SBSceneManagerCoordinator *)&v10 dealloc];
}

- (id)_referenceForDisplayIdentity:(id)identity creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v13 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerCoordinator _referenceForDisplayIdentity:creatingIfNecessary:];
    if (identityCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  if (!identityCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  v7 = [(NSMutableDictionary *)self->_displayIdentityToReferenceMap objectForKey:identityCopy];
  if ([(SBSceneManagerReference *)v7 isDefunct])
  {
    if ([(SBSceneManagerReference *)v7 isRetaining])
    {
      [SBSceneManagerCoordinator _referenceForDisplayIdentity:creatingIfNecessary:];
    }

    v8 = BKLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "purging a defunct sceneManagerReference=%{public}@", &v11, 0xCu);
    }

    [(SBSceneManagerReference *)v7 setDelegate:0];
    [(NSMutableDictionary *)self->_displayIdentityToReferenceMap removeObjectForKey:identityCopy];

    v7 = 0;
  }

  if (!v7 && necessaryCopy)
  {
    v7 = [[SBSceneManagerReference alloc] initWithDisplayIdentity:identityCopy];
    [(SBSceneManagerReference *)v7 setDelegate:self];
    [(NSMutableDictionary *)self->_displayIdentityToReferenceMap setObject:v7 forKey:identityCopy];
    v9 = BKLogDisplay();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "creating sceneManagerReference=%{public}@", &v11, 0xCu);
    }
  }

LABEL_16:

  return v7;
}

- (id)_sceneManagerForDisplayIdentity:(id)identity creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  identityCopy = identity;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSceneManagerCoordinator _sceneManagerForDisplayIdentity:creatingIfNecessary:];
    if (identityCopy)
    {
LABEL_3:
      v7 = [(SBSceneManagerCoordinator *)self _referenceForDisplayIdentity:identityCopy creatingIfNecessary:necessaryCopy];
      v8 = v7;
      if (!v7)
      {
        v10 = 0;
LABEL_28:

        goto LABEL_31;
      }

      manager = [v7 manager];
      if (manager)
      {
        v10 = manager;
        if (![(SBSceneManager *)manager isValid])
        {
          [SBSceneManagerCoordinator _sceneManagerForDisplayIdentity:creatingIfNecessary:];
        }

        goto LABEL_28;
      }

      if (SBFIsShellSceneKitAvailable())
      {
        if (([identityCopy isMainDisplay] & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (![identityCopy isMainRootDisplay])
      {
LABEL_10:
        if (![identityCopy isMainDisplay] || !objc_msgSend(identityCopy, "expectsSecureRendering"))
        {
          if ([identityCopy sb_displayWindowingMode] == 1)
          {
            v12 = [SBSystemShellExternalDisplaySceneManager alloc];
            v13 = [(SBSceneManagerCoordinator *)self _newLayoutStateSceneIdentityProviderWithDisplayIdentity:identityCopy];
          }

          else
          {
            if ([identityCopy sb_displayWindowingMode] == 2)
            {
              v14 = SBNonInteractiveDisplaySceneManager;
            }

            else
            {
              v14 = SBSceneManager;
            }

            v12 = [v14 alloc];
            v13 = [(SBSceneManagerCoordinator *)self _newSceneIdentityProviderWithDisplayIdentity:identityCopy];
          }

          v15 = v13;
          v10 = [(SBSystemShellExternalDisplaySceneManager *)v12 initWithReference:v8 sceneIdentityProvider:v13 presentationBinder:0];

          goto LABEL_27;
        }

        v17 = MEMORY[0x277D85DD0];
        v18 = 3221225472;
        v19 = __81__SBSceneManagerCoordinator__sceneManagerForDisplayIdentity_creatingIfNecessary___block_invoke_2;
        v20 = &unk_2783A8ED8;
        v21 = v8;
        selfCopy = self;
        v23 = identityCopy;
        if (_sceneManagerForDisplayIdentity_creatingIfNecessary_____once_86 != -1)
        {
          dispatch_once(&_sceneManagerForDisplayIdentity_creatingIfNecessary_____once_86, &v17);
        }

        v10 = _sceneManagerForDisplayIdentity_creatingIfNecessary_____secureManager;

        v11 = v21;
LABEL_19:

LABEL_27:
        [v8 setManager:{v10, v17, v18, v19, v20}];
        goto LABEL_28;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__SBSceneManagerCoordinator__sceneManagerForDisplayIdentity_creatingIfNecessary___block_invoke;
      block[3] = &unk_2783A8ED8;
      v25 = v8;
      selfCopy2 = self;
      v27 = identityCopy;
      if (_sceneManagerForDisplayIdentity_creatingIfNecessary_____once != -1)
      {
        dispatch_once(&_sceneManagerForDisplayIdentity_creatingIfNecessary_____once, block);
      }

      v10 = _sceneManagerForDisplayIdentity_creatingIfNecessary_____mainDisplayManager;

      v11 = v25;
      goto LABEL_19;
    }
  }

  v10 = 0;
LABEL_31:

  return v10;
}

void __81__SBSceneManagerCoordinator__sceneManagerForDisplayIdentity_creatingIfNecessary___block_invoke(uint64_t a1)
{
  v2 = [SBMainDisplaySceneManager alloc];
  v3 = *(a1 + 32);
  v7 = [*(a1 + 40) _newLayoutStateSceneIdentityProviderWithDisplayIdentity:*(a1 + 48)];
  v4 = +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
  v5 = [(SBMainDisplaySceneManager *)v2 initWithReference:v3 sceneIdentityProvider:v7 presentationBinder:v4];
  v6 = _sceneManagerForDisplayIdentity_creatingIfNecessary_____mainDisplayManager;
  _sceneManagerForDisplayIdentity_creatingIfNecessary_____mainDisplayManager = v5;
}

void __81__SBSceneManagerCoordinator__sceneManagerForDisplayIdentity_creatingIfNecessary___block_invoke_2(uint64_t a1)
{
  v2 = [SBSecureMainDisplaySceneManager alloc];
  v3 = *(a1 + 32);
  v7 = [*(a1 + 40) _newSceneIdentityProviderWithDisplayIdentity:*(a1 + 48)];
  v4 = +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
  v5 = [(SBSceneManager *)v2 initWithReference:v3 sceneIdentityProvider:v7 presentationBinder:v4];
  v6 = _sceneManagerForDisplayIdentity_creatingIfNecessary_____secureManager;
  _sceneManagerForDisplayIdentity_creatingIfNecessary_____secureManager = v5;
}

- (id)_newSceneIdentityProviderWithDisplayIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [[SBSceneIdentityProvider alloc] initWithDisplayIdentity:identityCopy];

  return v4;
}

- (id)_newLayoutStateSceneIdentityProviderWithDisplayIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [[SBLayoutStateSceneIdentityProvider alloc] initWithDisplayIdentity:identityCopy];

  return v4;
}

+ (id)secureMainDisplaySceneManager
{
  if (SBFIsShellSceneKitAvailable())
  {
    windowSceneManager = [SBApp windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
    _fbsDisplayConfiguration = [embeddedDisplayWindowScene _fbsDisplayConfiguration];
    copyForSecureRendering = [_fbsDisplayConfiguration copyForSecureRendering];
    identity = [copyForSecureRendering identity];

    v7 = +[SBSceneManagerCoordinator sharedInstance];
    v8 = [v7 _sceneManagerForDisplayIdentity:identity creatingIfNecessary:0];

    if (v8)
    {
      goto LABEL_6;
    }

    +[SBSceneManagerCoordinator secureMainDisplaySceneManager];
    mainConfiguration = v13;
  }

  else
  {
    identity = +[SBSceneManagerCoordinator sharedInstance];
    mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
    copyForSecureRendering2 = [mainConfiguration copyForSecureRendering];
    identity2 = [copyForSecureRendering2 identity];
    v8 = [identity _sceneManagerForDisplayIdentity:identity2 creatingIfNecessary:1];
  }

LABEL_6:

  return v8;
}

- (id)sceneManagerForPersistenceIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_displayIdentityToReferenceMap allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(allValues);
      }

      manager = [*(*(&v13 + 1) + 8 * v9) manager];
      v11 = [manager existingSceneHandleForPersistenceIdentifier:identifierCopy];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    manager = 0;
  }

  return manager;
}

- (void)enumerateSceneManagersWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    allValues = [(NSMutableDictionary *)self->_displayIdentityToReferenceMap allValues];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__SBSceneManagerCoordinator_enumerateSceneManagersWithBlock___block_invoke;
    v6[3] = &unk_2783BDEB8;
    v7 = blockCopy;
    [allValues enumerateObjectsUsingBlock:v6];
  }
}

void __61__SBSceneManagerCoordinator_enumerateSceneManagersWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 manager];
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 32) + 16))();
    v3 = v4;
  }
}

- (void)registerSceneWorkspaceIdentifierToIgnore:(id)ignore
{
  ignoreCopy = ignore;
  v5 = ignoreCopy;
  if (!ignoreCopy)
  {
    [SBSceneManagerCoordinator registerSceneWorkspaceIdentifierToIgnore:];
    ignoreCopy = 0;
  }

  [(NSMutableSet *)self->_workspaceIdentifiersToIgnore addObject:ignoreCopy];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __40__SBSceneManagerCoordinator_description__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:&v7];
  build = [v4 build];

  return build;
}

void __40__SBSceneManagerCoordinator_description__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 16) allValues];
  [v1 appendArraySection:v2 withName:0 skipIfEmpty:1 objectTransformer:&__block_literal_global_289];
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __45__SBSceneManagerCoordinator_debugDescription__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:0 block:&v7];
  build = [v4 build];

  return build;
}

void __45__SBSceneManagerCoordinator_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 16) allValues];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SBSceneManagerCoordinator_debugDescription__block_invoke_2;
  v4[3] = &unk_2783BDF00;
  v5 = *(a1 + 32);
  [v2 appendArraySection:v3 withName:0 skipIfEmpty:1 objectTransformer:v4];
}

id __45__SBSceneManagerCoordinator_debugDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activeMultilinePrefix];
  v5 = [v3 debugDescriptionWithMultilinePrefix:v4];

  return v5;
}

- (void)sceneManager:(id)manager clientDidConnectWithHandshake:(id)handshake
{
  v31 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  handshakeCopy = handshake;
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  process = [handshakeCopy process];
  handle = [process handle];
  v10 = [mEMORY[0x277D0AAC0] processForPID:{objc_msgSend(handle, "pid")}];

  executionContext = [v10 executionContext];
  watchdogProvider = [executionContext watchdogProvider];

  if (!watchdogProvider)
  {
    v13 = +[SBSceneWatchdogProvider defaultSceneWatchdogProvider];
    [v10 setWatchdogProvider:v13];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  remnants = [handshakeCopy remnants];
  v15 = [remnants countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(remnants);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        lastSettings = [v19 lastSettings];
        sb_displayIdentityForSceneManagers = [lastSettings sb_displayIdentityForSceneManagers];
        if ([sb_displayIdentityForSceneManagers sb_displayWindowingMode])
        {
          v22 = [(SBSceneManagerCoordinator *)self _sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers creatingIfNecessary:1];
          v23 = v22;
          if (v22)
          {
            [v22 _reconnectSceneRemnant:v19 forProcess:v10 sceneManager:managerCopy];
          }

          [v19 invalidate];
        }

        else
        {
          [v19 invalidate];
        }
      }

      v16 = [remnants countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }
}

- (void)sceneManager:(id)manager didReceiveSceneRequestWithOptions:(id)options fromProcess:(id)process completion:(id)completion
{
  v63[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  handle = [process handle];
  if (!handle)
  {
    [SBSceneManagerCoordinator sceneManager:didReceiveSceneRequestWithOptions:fromProcess:completion:];
  }

  identity = [handle identity];
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  v14 = [mEMORY[0x277D0AAC0] processForPID:{objc_msgSend(handle, "pid")}];

  v15 = objc_opt_class();
  v16 = SBSafeCast(v15, optionsCopy);
  systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
  if ([objc_opt_class() shouldHandleSceneRequestsForProcess:handle withOptions:v16])
  {
    [systemUIScenesCoordinator activateSceneForProcessIdentity:identity withHandle:handle options:v16 completion:completionCopy];
    goto LABEL_37;
  }

  if ([v14 isApplicationProcess])
  {
    v18 = +[SBApplicationController sharedInstance];
    v19 = [v18 applicationWithPid:{objc_msgSend(v14, "pid")}];

    if (v19)
    {
      [(SBSceneManagerCoordinator *)self _createSceneForApplication:v19 withOptions:optionsCopy completion:completionCopy];
    }

    else
    {
      v24 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA068];
      v63[0] = @"Scene creation failed, invalid application";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      v26 = [v24 errorWithDomain:@"SBSceneManagerDomain" code:1 userInfo:v25];
      completionCopy[2](completionCopy, 0, v26);
    }

LABEL_36:

    goto LABEL_37;
  }

  if ([v14 hasEntitlement:@"com.apple.springboard.requestScene-daemon"])
  {
    v56 = identity;
    identifier = [optionsCopy identifier];
    v21 = identifier;
    if (identifier)
    {
      uUIDString = identifier;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
    }

    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v57 = uUIDString;
    v29 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:uUIDString];

    if (v29)
    {
      clientProcess = [v29 clientProcess];

      identity = v56;
      if (clientProcess == v14)
      {
        v19 = v57;
LABEL_33:
        if (completionCopy)
        {
          (completionCopy)[2](completionCopy, v29, 0);
        }

        goto LABEL_36;
      }

      v31 = SBLogCommon();
      v19 = v57;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [SBSceneManagerCoordinator sceneManager:v14 didReceiveSceneRequestWithOptions:v57 fromProcess:v31 completion:?];
      }

      v29 = 0;
    }

    else
    {
      initialClientSettings = [optionsCopy initialClientSettings];
      v33 = initialClientSettings;
      identity = v56;
      if (initialClientSettings)
      {
        v34 = initialClientSettings;
      }

      else
      {
        v34 = objc_opt_new();
      }

      v35 = v34;
      v55 = v34;

      preferredInterfaceOrientation = [v35 preferredInterfaceOrientation];
      if ((preferredInterfaceOrientation - 1) >= 4)
      {
        v37 = 1;
      }

      else
      {
        v37 = preferredInterfaceOrientation;
      }

      v51 = v37;
      [v35 preferredLevel];
      v39 = v38;
      mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
      windowSceneManager = [SBApp windowSceneManager];
      embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
      _fbsDisplayConfiguration = [embeddedDisplayWindowScene _fbsDisplayConfiguration];

      settings = [MEMORY[0x277D0AD58] settings];
      [settings setDisplayConfiguration:mainConfiguration];
      v53 = _fbsDisplayConfiguration;
      [settings sb_setDisplayConfigurationForSceneManagers:_fbsDisplayConfiguration];
      [mainConfiguration bounds];
      [settings setFrame:?];
      [settings setLevel:v39];
      [settings setInterfaceOrientation:v51];
      [settings setForeground:1];
      v44 = MEMORY[0x277D0AD50];
      specification = [MEMORY[0x277D0ADF8] specification];
      v46 = [v44 parametersForSpecification:specification];

      v52 = settings;
      [v46 setSettings:settings];
      [v46 setClientSettings:v55];
      mEMORY[0x277D0AAD8]2 = [MEMORY[0x277D0AAD8] sharedInstance];
      workspace = [v14 workspace];
      v50 = v46;
      v29 = [mEMORY[0x277D0AAD8]2 createSceneWithIdentifier:v57 parameters:v46 clientProvider:workspace transitionContext:0];

      v49 = SBLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v59 = v14;
        v60 = 2114;
        v61 = v29;
        _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_INFO, "process (%{public}@) requested scene creation -> %{public}@", buf, 0x16u);
      }

      v19 = v57;
      v31 = v55;
    }

    goto LABEL_33;
  }

  v23 = SBLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SBSceneManagerCoordinator sceneManager:v14 didReceiveSceneRequestWithOptions:v23 fromProcess:? completion:?];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_37:
}

- (void)sceneManager:(id)manager didAddScene:(id)scene
{
  managerCopy = manager;
  sceneCopy = scene;
  hearingTestModeCoordinator = [SBApp hearingTestModeCoordinator];
  [hearingTestModeCoordinator addSceneExtensionIfNeeded:sceneCopy];

  workspaceIdentifier = [sceneCopy workspaceIdentifier];
  if (!workspaceIdentifier || ([(NSMutableSet *)self->_workspaceIdentifiersToIgnore containsObject:workspaceIdentifier]& 1) == 0)
  {
    [sceneCopy setDelegate:self];
    settings = [sceneCopy settings];
    sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

    v11 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
    [v11 sceneManager:managerCopy didAddScene:sceneCopy];
    if ([v11 _shouldTrackScenesForDeactivation])
    {
      sceneDeactivationManager = [(SBSceneManagerCoordinator *)self sceneDeactivationManager];
      [sceneDeactivationManager beginTrackingScene:sceneCopy];
    }
  }
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  settings = [activateCopy settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  v6 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
  [v6 sceneDidActivate:activateCopy];
}

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  workspaceIdentifier = [sceneCopy workspaceIdentifier];
  if (!workspaceIdentifier || ([(NSMutableSet *)self->_workspaceIdentifiersToIgnore containsObject:workspaceIdentifier]& 1) == 0)
  {
    settings = [sceneCopy settings];
    sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

    v10 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
    [v10 scene:sceneCopy willUpdateSettings:settingsCopy];
    if ([v10 _shouldTrackScenesForDeactivation])
    {
      mutableSettings = [settingsCopy mutableSettings];
      sceneDeactivationManager = [(SBSceneManagerCoordinator *)self sceneDeactivationManager];
      [sceneDeactivationManager amendSceneSettings:mutableSettings forScene:sceneCopy];
    }
  }
}

- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context
{
  contextCopy = context;
  sceneCopy = scene;
  settings = [sceneCopy settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  v9 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
  [v9 scene:sceneCopy didPrepareUpdateWithContext:contextCopy];
}

- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error
{
  errorCopy = error;
  contextCopy = context;
  sceneCopy = scene;
  settings = [sceneCopy settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  v12 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
  [v12 scene:sceneCopy didCompleteUpdateWithContext:contextCopy error:errorCopy];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  sceneCopy = scene;
  settings = [sceneCopy settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  v9 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
  [v9 scene:sceneCopy didUpdateClientSettings:settingsCopy];
}

- (id)scene:(id)scene handleActions:(id)actions
{
  actionsCopy = actions;
  sceneCopy = scene;
  settings = [sceneCopy settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  v10 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
  v11 = [v10 scene:sceneCopy handleActions:actionsCopy];

  return v11;
}

- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  workspaceIdentifier = [deactivateCopy workspaceIdentifier];
  if (!workspaceIdentifier || ([(NSMutableSet *)self->_workspaceIdentifiersToIgnore containsObject:workspaceIdentifier]& 1) == 0)
  {
    settings = [deactivateCopy settings];
    sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

    v10 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
    [v10 sceneWillDeactivate:deactivateCopy withContext:contextCopy];

    sceneDeactivationManager = [(SBSceneManagerCoordinator *)self sceneDeactivationManager];
    [sceneDeactivationManager endTrackingScene:deactivateCopy];
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  contextCopy = context;
  workspaceIdentifier = [invalidateCopy workspaceIdentifier];
  if (!workspaceIdentifier || ([(NSMutableSet *)self->_workspaceIdentifiersToIgnore containsObject:workspaceIdentifier]& 1) == 0)
  {
    settings = [invalidateCopy settings];
    sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

    v10 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
    [v10 sceneDidInvalidate:invalidateCopy withContext:contextCopy];
  }
}

- (void)addActionHandler:(id)handler forScene:(id)scene
{
  handlerCopy = handler;
  sceneCopy = scene;
  settings = [sceneCopy settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  v9 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
  if (objc_opt_respondsToSelector())
  {
    [v9 addActionHandler:handlerCopy forScene:sceneCopy];
  }
}

- (void)removeActionHandler:(id)handler forScene:(id)scene
{
  handlerCopy = handler;
  sceneCopy = scene;
  settings = [sceneCopy settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  v9 = [(SBSceneManagerCoordinator *)self sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];
  if (objc_opt_respondsToSelector())
  {
    [v9 removeActionHandler:handlerCopy forScene:sceneCopy];
  }
}

- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  identityCopy = identity;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerCoordinator displayMonitor:didConnectIdentity:withConfiguration:];
  }

  v6 = [(SBSceneManagerCoordinator *)self _referenceForDisplayIdentity:identityCopy creatingIfNecessary:1];
  [v6 setDisplayIsConnected:1];
  manager = [v6 manager];
  [manager setHidden:0];
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  v12 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerCoordinator displayMonitor:willDisconnectIdentity:];
  }

  v6 = [(SBSceneManagerCoordinator *)self _referenceForDisplayIdentity:identityCopy creatingIfNecessary:0];
  v7 = v6;
  if (v6)
  {
    [v6 setDisplayIsConnected:0];
    manager = [v7 manager];
    [manager setHidden:1];
    if (!manager && ([v7 isRetaining] & 1) == 0)
    {
      v9 = BKLogDisplay();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138543362;
        v11 = v7;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "purging disconnected sceneManagerReference=%{public}@", &v10, 0xCu);
      }

      [v7 setDelegate:0];
      [(NSMutableDictionary *)self->_displayIdentityToReferenceMap removeObjectForKey:identityCopy];
    }
  }
}

- (void)sceneManagerDidInvalidateForReference:(id)reference
{
  v10 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBSceneManagerCoordinator sceneManagerDidInvalidateForReference:];
  }

  displayIdentity = [referenceCopy displayIdentity];
  if (displayIdentity)
  {
    v6 = [(NSMutableDictionary *)self->_displayIdentityToReferenceMap objectForKey:displayIdentity];

    if (v6 == referenceCopy)
    {
      v7 = BKLogDisplay();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138543362;
        v9 = referenceCopy;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "purging invalidated sceneManagerReference=%{public}@", &v8, 0xCu);
      }

      [referenceCopy setDelegate:0];
      [(NSMutableDictionary *)self->_displayIdentityToReferenceMap removeObjectForKey:displayIdentity];
    }
  }
}

- (void)_createSceneForApplication:(id)application withOptions:(id)options completion:(id)completion
{
  applicationCopy = application;
  optionsCopy = options;
  completionCopy = completion;
  if (!applicationCopy)
  {
    [SBSceneManagerCoordinator _createSceneForApplication:withOptions:completion:];
  }

  v10 = objc_opt_class();
  v11 = optionsCopy;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    [SBSceneManagerCoordinator _createSceneForApplication:withOptions:completion:];
  }

  windowSceneManager = [SBApp windowSceneManager];
  sourceIdentifier = [v13 sourceIdentifier];
  v16 = [windowSceneManager windowSceneForPersistentIdentifier:sourceIdentifier];
  v17 = v16;
  if (v16)
  {
    activeDisplayWindowScene = v16;
  }

  else
  {
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
  }

  v19 = activeDisplayWindowScene;

  v20 = +[SBWorkspace mainWorkspace];
  _fbsDisplayConfiguration = [v19 _fbsDisplayConfiguration];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke;
  v26[3] = &unk_2783AA1A0;
  v27 = v13;
  v28 = v19;
  v29 = applicationCopy;
  v30 = completionCopy;
  v22 = completionCopy;
  v23 = applicationCopy;
  v24 = v19;
  v25 = v13;
  [v20 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v26 validator:0];
}

void __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke(id *a1, void *a2)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([a1[4] requestCenterSlot] && (objc_msgSend(a1[4], "interactionIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [v3 setSource:55];
    if ([a1[4] requestFullscreen])
    {
      [v3 setCenterConfiguration:2];
      v5 = [a1[4] sourceIdentifier];
      [v3 setCenterWindowSourceSceneID:v5];
    }
  }

  else
  {
    [v3 setSource:35];
  }

  [v3 setEventLabel:@"SceneCreationRequest"];
  v6 = [a1[4] identifier];
  v40 = [a1[4] sourceIdentifier];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = [a1[4] requestBackground];
  v7 = [a1[5] sceneManager];
  if (!__sb__runningInSpringBoard())
  {
    v14 = [MEMORY[0x277D75418] currentDevice];
    v15 = [v14 userInterfaceIdiom] == 1;

    if (v15)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = [v7 existingSceneHandleForPersistenceIdentifier:v6];
    if (!v8)
    {
      v16 = a1[6];
      v17 = [v7 sceneIdentityForApplication:v16];
      v18 = [v7 displayIdentity];
      v19 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v16 sceneIdentity:v17 displayIdentity:v18];

      v8 = [v7 fetchOrCreateApplicationSceneHandleForRequest:v19];
    }

    *(v60 + 24) = 1;
    goto LABEL_19;
  }

  if (SBFEffectiveDeviceClass() != 2)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v6)
  {
    v8 = [v7 existingSceneHandleForPersistenceIdentifier:v6];
    if (!v8)
    {
      v34 = [a1[6] _sceneIdentifierForStoredPersistenceIdentifier:v6];
      if (!v34)
      {
        v39 = MEMORY[0x277CCA9B8];
        v63 = *MEMORY[0x277CCA470];
        v64[0] = @"Invalid persistenceIdentifier specified";
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
        v27 = [v39 errorWithDomain:@"SBSceneManagerDomain" code:1 userInfo:v32];
        v28 = 0;
        v29 = 0;
        goto LABEL_23;
      }

      v35 = a1[6];
      v36 = [MEMORY[0x277D0ADC0] identityForIdentifier:v34];
      v37 = [v7 displayIdentity];
      v38 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v35 sceneIdentity:v36 displayIdentity:v37];

      v8 = [v7 fetchOrCreateApplicationSceneHandleForRequest:v38];

      if (!v8)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        goto LABEL_24;
      }
    }

    if ([a1[4] preserveLayout])
    {
      v9 = +[SBMainSwitcherControllerCoordinator sharedInstance];
      v10 = [v9 _recentAppLayoutsController];

      v11 = [a1[6] bundleIdentifier];
      v12 = [v10 recentsForBundleIdentifier:v11 includingHiddenAppLayouts:0];

      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke_2;
      v57[3] = &unk_2783A8CB8;
      v8 = v8;
      v58 = v8;
      v13 = [v12 bs_firstObjectPassingTest:v57];
    }

    else
    {
      v13 = 0;
    }

LABEL_22:
    v30 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:v8];
    v31 = [a1[4] actions];
    [(SBApplicationSceneEntity *)v30 addActions:v31];

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke_3;
    v45[3] = &unk_2783BDF28;
    v32 = v30;
    v46 = v32;
    v56 = &v59;
    v47 = a1[6];
    v29 = v13;
    v48 = v29;
    v49 = v7;
    v50 = a1[4];
    v51 = v40;
    v52 = v6;
    v53 = a1[5];
    v54 = v3;
    v28 = v8;
    v55 = v28;
    [v54 modifyApplicationContext:v45];

    v27 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v20 = a1[6];
  v21 = [v7 newSceneIdentityForApplication:v20];
  v22 = [v7 displayIdentity];
  v23 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v20 sceneIdentity:v21 displayIdentity:v22];

  if ([a1[4] requestQuickLookScene])
  {
    v24 = [v23 sceneDefinition];
    v25 = [v24 mutableCopy];

    v26 = [MEMORY[0x277D75908] specification];
    [v25 setSpecification:v26];

    [v23 setSceneDefinition:v25];
  }

  v8 = [v7 fetchOrCreateApplicationSceneHandleForRequest:v23];

LABEL_19:
  v13 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (v8)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (a1[7])
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke_5;
    v41[3] = &unk_2783AB4D8;
    v42 = v28;
    v44 = a1[7];
    v43 = v27;
    v33 = [v3 addCompletionHandler:v41];
  }

  _Block_object_dispose(&v59, 8);
}

uint64_t __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sceneIdentifier];
  v5 = [v3 containsItemWithUniqueIdentifier:v4];

  return v5;
}

void __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = 1;
  [v3 setWaitsForSceneUpdates:1];
  [v3 setAlwaysRunsWatchdog:1];
  [v3 _setRequestedFrontmostEntity:*(a1 + 32)];
  [*(a1 + 32) setFlag:1 forActivationSetting:56];
  if ((*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    v5 = [*(a1 + 40) bundleIdentifier];
    v6 = [v3 previousApplicationSceneEntityForBundleID:v5];

    if (v6)
    {
      *(*(*(a1 + 112) + 8) + 24) = 1;
    }

    v4 = *(*(*(a1 + 112) + 8) + 24);
  }

  [v3 setBackground:v4 & 1];
  v7 = *(a1 + 48);
  if (v7)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke_4;
    v44[3] = &unk_2783A8FF8;
    v45 = *(a1 + 56);
    v46 = v3;
    [v7 enumerate:v44];

    goto LABEL_12;
  }

  if ([*(a1 + 64) requestFullscreen] && !objc_msgSend(*(a1 + 64), "requestCenterSlot") || (*(*(*(a1 + 112) + 8) + 24) & 1) != 0 || objc_msgSend(*(a1 + 72), "isEqualToString:", *(a1 + 80)))
  {
    [v3 setActivatingEntity:*(a1 + 32)];
    goto LABEL_12;
  }

  v8 = [*(a1 + 88) switcherController];
  v9 = [v8 windowManagementContext];

  v10 = [v3 previousLayoutState];
  if ([v9 isMedusaEnabled] && (objc_msgSend(v10, "layoutContainsRole:", 2) & 1) == 0)
  {
    [v3 setRequestedSpaceConfiguration:3];
  }

  if ([*(a1 + 64) requestCenterSlot])
  {
    v11 = [*(a1 + 40) _dataStore];
    v12 = [*(a1 + 32) uniqueIdentifier];
    v13 = [v11 sceneStoreForIdentifier:v12 creatingIfNecessary:0];
    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80) == 0];
      [v13 setObject:v14 forKey:@"originatedInCenterWindow"];

      v15 = [*(a1 + 96) centerWindowSourceSceneID];
      if (v15)
      {
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v15 forKey:v12];
        [v13 setObject:v16 forKey:@"sourceSceneIdentifier"];
      }
    }

    if ([v9 isFlexibleWindowingEnabled])
    {
      v49[0] = *(a1 + 32);
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
      [v3 setEntities:v17 withPolicy:1 centerEntity:0 floatingEntity:0];
    }

    else
    {
      v21 = 4;
      v43 = v10;
      v22 = [v10 elementWithRole:3];
      v23 = v22;
      if (v22)
      {
        v24 = [v22 uniqueIdentifier];
        v25 = v24;
        if (*(a1 + 72) && [v24 containsString:?])
        {
          v21 = 3;
        }
      }

      [v3 setEntity:*(a1 + 32) forLayoutRole:v21];

      v10 = v43;
    }
  }

  else
  {
    if ([v9 isChamoisOrFlexibleWindowing])
    {
      v48 = *(a1 + 32);
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      v19 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      v20 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      [v3 setEntities:v18 withPolicy:1 centerEntity:v19 floatingEntity:v20];
    }

    else
    {
      if ([v9 isMedusaEnabled])
      {
        v26 = v10;
        v27 = [v10 elementWithRole:2];
        v28 = [v27 workspaceEntity];

        v29 = objc_opt_class();
        v30 = __BSSafeCast(v28, v29);
        v31 = [v30 sceneHandle];
        v32 = [v31 persistenceIdentifier];
        v33 = [v32 isEqualToString:*(a1 + 72)];

        v34 = *(a1 + 32);
        if (v33)
        {
          [v3 setEntity:v34 forLayoutRole:1];
          v34 = v28;
        }

        [v3 setEntity:v34 forLayoutRole:2];

        v10 = v26;
        goto LABEL_38;
      }

      v47 = *(a1 + 32);
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      v35 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      v36 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      [v3 setEntities:v18 startingAtLayoutRole:1 withPolicy:0 centerEntity:v35 floatingEntity:v36];
    }
  }

LABEL_38:
  v37 = [*(a1 + 64) interactionIdentifier];
  if (v37)
  {
    v38 = objc_opt_class();
    v39 = [*(a1 + 88) switcherController];
    v40 = [v39 contentViewController];
    v41 = SBSafeCast(v38, v40);

    if (v41)
    {
      v42 = [*(a1 + 104) sceneIdentifier];
      [v41 associateCenterWindowInteractionIdentifier:v37 withSceneIdentifier:v42];
    }
  }

LABEL_12:
}

void __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v13 bundleIdentifier];
  v7 = [v5 applicationWithBundleIdentifier:v6];

  if (v7)
  {
    v8 = [SBDeviceApplicationSceneEntity alloc];
    v9 = [v13 uniqueIdentifier];
    v10 = *(a1 + 32);
    v11 = [v10 displayIdentity];
    v12 = [(SBDeviceApplicationSceneEntity *)v8 initWithApplication:v7 uniqueIdentifier:v9 sceneHandleProvider:v10 displayIdentity:v11];
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 40) setEntity:v12 forLayoutRole:a2];
}

void __79__SBSceneManagerCoordinator__createSceneForApplication_withOptions_completion___block_invoke_5(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2 && ([*(a1 + 32) sceneIfExists], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = *(a1 + 48);
    v11 = [*(a1 + 32) scene];
    (*(v4 + 16))(v4);
  }

  else
  {
    v5 = *(a1 + 48);
    if (*(a1 + 40))
    {
      v6 = *(v5 + 16);
      v7 = *(a1 + 48);

      v6(v7, 0);
    }

    else
    {
      v8 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA470];
      v13[0] = @"Scene creation failed";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v10 = [v8 errorWithDomain:@"SBSceneManagerCoordinatorDomain" code:1 userInfo:v9];
      (*(v5 + 16))(v5, 0, v10);
    }
  }
}

- (void)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerCoordinator init]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_referenceForDisplayIdentity:creatingIfNecessary:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerCoordinator _referenceForDisplayIdentity:creatingIfNecessary:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_referenceForDisplayIdentity:creatingIfNecessary:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)_sceneManagerForDisplayIdentity:creatingIfNecessary:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerCoordinator _sceneManagerForDisplayIdentity:creatingIfNecessary:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_sceneManagerForDisplayIdentity:creatingIfNecessary:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

+ (uint64_t)mainDisplaySceneManager
{
  OUTLINED_FUNCTION_3_1();
  *v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();

  return [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (uint64_t)secureMainDisplaySceneManager
{
  OUTLINED_FUNCTION_3_1();
  *v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();

  return [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)registerSceneWorkspaceIdentifierToIgnore:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"workspaceID" object:? file:? lineNumber:? description:?];
}

- (void)sceneManager:didReceiveSceneRequestWithOptions:fromProcess:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)sceneManager:(uint64_t)a1 didReceiveSceneRequestWithOptions:(NSObject *)a2 fromProcess:completion:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "process (%{public}@) requested scene creation but is not a daemon or lacks the entitlement", &v2, 0xCu);
}

- (void)sceneManager:(os_log_t)log didReceiveSceneRequestWithOptions:fromProcess:completion:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "process (%{public}@) requested scene creation with identifier %@ but a scene with that identifier already exists", &v3, 0x16u);
}

- (void)displayMonitor:didConnectIdentity:withConfiguration:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerCoordinator displayMonitor:didConnectIdentity:withConfiguration:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)displayMonitor:willDisconnectIdentity:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerCoordinator displayMonitor:willDisconnectIdentity:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)sceneManagerDidInvalidateForReference:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManagerCoordinator sceneManagerDidInvalidateForReference:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_createSceneForApplication:withOptions:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"application" object:? file:? lineNumber:? description:?];
}

- (void)_createSceneForApplication:withOptions:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end