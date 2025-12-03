@interface SBSceneHandle
- (BOOL)_handleSceneAction:(id)action;
- (BOOL)isEqual:(id)equal;
- (FBSDisplayIdentity)displayIdentity;
- (FBScene)scene;
- (NSString)sceneIdentifier;
- (SBSceneHandle)init;
- (SBSceneManager)sceneManager;
- (id)_initWithDefinition:(id)definition scene:(id)scene displayIdentity:(id)identity;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)contentState;
- (unint64_t)hash;
- (void)_didCreateScene:(id)scene;
- (void)_didDestroyScene:(id)scene;
- (void)_didUpdateClientSettings:(id)settings;
- (void)_didUpdateContentState:(int64_t)state;
- (void)_didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)_enumerateObserversWithBlock:(id)block;
- (void)_noteDidMoveFromSceneManager:(id)manager;
- (void)_noteReplacedWithSceneHandle:(id)handle;
- (void)_noteSceneCreated:(id)created;
- (void)_noteSceneDestroyed:(id)destroyed;
- (void)_setScene:(id)scene;
- (void)addActionConsumer:(id)consumer;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeActionConsumer:(id)consumer;
- (void)removeObserver:(id)observer;
- (void)scene;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)sceneManager:(id)manager didAddScene:(id)scene;
- (void)setSceneManager:(id)manager;
@end

@implementation SBSceneHandle

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    sceneIdentifier = [(SBSceneHandle *)self sceneIdentifier];
    self->_hash = [sceneIdentifier hash];

    return self->_hash;
  }

  return result;
}

- (FBSDisplayIdentity)displayIdentity
{
  sceneManager = [(SBSceneHandle *)self sceneManager];
  displayIdentity = [sceneManager displayIdentity];
  v5 = displayIdentity;
  if (displayIdentity)
  {
    v6 = displayIdentity;
  }

  else
  {
    sceneIfExists = [(SBSceneHandle *)self sceneIfExists];
    settings = [sceneIfExists settings];
    sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];
    displayIdentity = sb_displayIdentityForSceneManagers;
    if (!sb_displayIdentityForSceneManagers)
    {
      displayIdentity = self->_displayIdentity;
    }

    v6 = displayIdentity;
  }

  return v6;
}

- (SBSceneManager)sceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);

  return WeakRetained;
}

- (NSString)sceneIdentifier
{
  identity = [(FBSSceneDefinition *)self->_definition identity];
  identifier = [identity identifier];

  return identifier;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSceneHandle *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  sceneIdentifier = [(SBSceneHandle *)self sceneIdentifier];
  v5 = [v3 appendObject:sceneIdentifier withName:@"sceneID"];

  v6 = [v3 appendPointer:self->_scene withName:@"scenePointer"];

  return v3;
}

- (int64_t)contentState
{
  sceneIfExists = [(SBSceneHandle *)self sceneIfExists];
  v3 = sceneIfExists;
  if (sceneIfExists)
  {
    contentState = [sceneIfExists contentState];
  }

  else
  {
    contentState = 0;
  }

  return contentState;
}

- (FBScene)scene
{
  p_scene = &self->_scene;
  scene = self->_scene;
  if (scene)
  {
  }

  else
  {
    v8[1] = v2;
    v9 = v3;
    [(SBSceneHandle *)a2 scene:p_scene];
    scene = v8[0];
  }

  return scene;
}

- (void)dealloc
{
  [(FBScene *)self->_scene removeObserver:self];
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  [mEMORY[0x277D0AAD8] removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBSceneHandle;
  [(SBSceneHandle *)&v4 dealloc];
}

- (SBSceneHandle)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSceneHandle.m" lineNumber:59 description:@"init is unavailable for SBSceneHandle."];

  return 0;
}

- (id)_initWithDefinition:(id)definition scene:(id)scene displayIdentity:(id)identity
{
  definitionCopy = definition;
  sceneCopy = scene;
  identityCopy = identity;
  if (!(definitionCopy | sceneCopy))
  {
    [SBSceneHandle _initWithDefinition:scene:displayIdentity:];
  }

  v18.receiver = self;
  v18.super_class = SBSceneHandle;
  v11 = [(SBSceneHandle *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_displayIdentity, identity);
    if (sceneCopy)
    {
      definition = [sceneCopy definition];
    }

    else
    {
      definition = definitionCopy;
    }

    definition = v12->_definition;
    v12->_definition = definition;

    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    [mEMORY[0x277D0AAD8] addObserver:v12];
    [(SBSceneHandle *)v12 _commonInit];
    if (sceneCopy || (-[SBSceneHandle sceneIdentifier](v12, "sceneIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), [mEMORY[0x277D0AAD8] sceneWithIdentifier:v16], sceneCopy = objc_claimAutoreleasedReturnValue(), v16, sceneCopy))
    {
      [(SBSceneHandle *)v12 _setScene:sceneCopy];
    }
  }

  return v12;
}

- (void)setSceneManager:(id)manager
{
  obj = manager;
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_sceneManager);
    objc_storeWeak(&self->_sceneManager, obj);
    displayIdentity = self->_displayIdentity;
    self->_displayIdentity = 0;

    [(SBSceneHandle *)self _noteDidMoveFromSceneManager:v5];
  }
}

- (void)_noteDidMoveFromSceneManager:(id)manager
{
  managerCopy = manager;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SBSceneHandle__noteDidMoveFromSceneManager___block_invoke;
  v6[3] = &unk_27836B078;
  v6[4] = self;
  v7 = managerCopy;
  v5 = managerCopy;
  [(SBSceneHandle *)self _enumerateObserversWithBlock:v6];
}

void __46__SBSceneHandle__noteDidMoveFromSceneManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandle:*(a1 + 32) didMoveFromSceneManager:*(a1 + 40)];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    v13 = v5;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = weakObjectsHashTable;

      v9 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
      observersToObserverBehaviors = self->_observersToObserverBehaviors;
      self->_observersToObserverBehaviors = v9;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v13];
    v11 = self->_observersToObserverBehaviors;
    v12 = [_SBSceneHandleObserverBehavior behaviorFromObserver:v13];
    [(NSMapTable *)v11 setObject:v12 forKey:v13];

    v5 = v13;
  }

  MEMORY[0x2821F96F8](observerCopy, v5);
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observersToObserverBehaviors = self->_observersToObserverBehaviors;
    observerCopy = observer;
    [(NSMapTable *)observersToObserverBehaviors removeObjectForKey:observerCopy];
    [(NSHashTable *)self->_observers removeObject:observerCopy];
  }
}

- (void)addActionConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = consumerCopy;
  if (consumerCopy)
  {
    actionConsumers = self->_actionConsumers;
    v9 = v5;
    if (!actionConsumers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_actionConsumers;
      self->_actionConsumers = weakObjectsHashTable;

      actionConsumers = self->_actionConsumers;
    }

    consumerCopy = [(NSHashTable *)actionConsumers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](consumerCopy, v5);
}

- (void)removeActionConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = consumerCopy;
  if (consumerCopy)
  {
    v7 = consumerCopy;
    [(NSHashTable *)self->_actionConsumers removeObject:consumerCopy];
    consumerCopy = [(NSHashTable *)self->_actionConsumers count];
    v5 = v7;
    if (!consumerCopy)
    {
      actionConsumers = self->_actionConsumers;
      self->_actionConsumers = 0;

      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](consumerCopy, v5);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sceneIdentifier = [(SBSceneHandle *)self sceneIdentifier];
    sceneIdentifier2 = [v5 sceneIdentifier];

    v8 = [sceneIdentifier isEqualToString:sceneIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_enumerateObserversWithBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v14 + 1) + 8 * v10);
        v8 = [(NSMapTable *)self->_observersToObserverBehaviors objectForKey:v12];

        if (v8)
        {
          blockCopy[2](blockCopy, v12, v8);
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_didCreateScene:(id)scene
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__SBSceneHandle__didCreateScene___block_invoke;
  v3[3] = &unk_27836B0A0;
  v3[4] = self;
  [(SBSceneHandle *)self _enumerateObserversWithBlock:v3];
}

void __33__SBSceneHandle__didCreateScene___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 didCreateScene])
  {
    [v5 sceneHandle:*(a1 + 32) didCreateScene:*(*(a1 + 32) + 16)];
  }
}

- (void)_didDestroyScene:(id)scene
{
  sceneCopy = scene;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SBSceneHandle__didDestroyScene___block_invoke;
  v6[3] = &unk_27836B078;
  v6[4] = self;
  v7 = sceneCopy;
  v5 = sceneCopy;
  [(SBSceneHandle *)self _enumerateObserversWithBlock:v6];
}

void __34__SBSceneHandle__didDestroyScene___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 didDestroyScene])
  {
    [v5 sceneHandle:*(a1 + 32) didDestroyScene:*(a1 + 40)];
  }
}

- (void)_didUpdateContentState:(int64_t)state
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__SBSceneHandle__didUpdateContentState___block_invoke;
  v3[3] = &unk_27836B0C8;
  v3[4] = self;
  v3[5] = state;
  [(SBSceneHandle *)self _enumerateObserversWithBlock:v3];
}

void __40__SBSceneHandle__didUpdateContentState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 didUpdateContentState])
  {
    [v5 sceneHandle:*(a1 + 32) didUpdateContentState:*(a1 + 40)];
  }
}

- (void)_didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  diffCopy = diff;
  settingsCopy = settings;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SBSceneHandle__didUpdateSettingsWithDiff_previousSettings___block_invoke;
  v10[3] = &unk_27836B0F0;
  v10[4] = self;
  v11 = diffCopy;
  v12 = settingsCopy;
  v8 = settingsCopy;
  v9 = diffCopy;
  [(SBSceneHandle *)self _enumerateObserversWithBlock:v10];
}

void __61__SBSceneHandle__didUpdateSettingsWithDiff_previousSettings___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 didUpdateSettingsWithDiff])
  {
    [v5 sceneHandle:a1[4] didUpdateSettingsWithDiff:a1[5] previousSettings:a1[6]];
  }
}

- (void)_didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SBSceneHandle__didUpdateClientSettings___block_invoke;
  v6[3] = &unk_27836B078;
  v6[4] = self;
  v7 = settingsCopy;
  v5 = settingsCopy;
  [(SBSceneHandle *)self _enumerateObserversWithBlock:v6];
}

void __42__SBSceneHandle__didUpdateClientSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 didUpdateClientSettings])
  {
    [v5 sceneHandle:*(a1 + 32) didUpdateClientSettings:*(a1 + 40)];
  }
}

- (void)_noteSceneCreated:(id)created
{
  createdCopy = created;
  v5 = createdCopy;
  if (!self->_manuallyControlsLifecycle)
  {
    [SBSceneHandle _noteSceneCreated:];
    createdCopy = v5;
  }

  [(SBSceneHandle *)self _setScene:createdCopy];
}

- (void)_noteSceneDestroyed:(id)destroyed
{
  destroyedCopy = destroyed;
  if (!self->_manuallyControlsLifecycle)
  {
    [SBSceneHandle _noteSceneDestroyed:];
  }

  scene = self->_scene;
  if (scene)
  {
    v6 = scene == destroyedCopy;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBSceneHandle *)&self->_scene _noteSceneDestroyed:destroyedCopy, v7];
    }

    scene = self->_scene;
  }

  if (scene && scene != destroyedCopy)
  {
    [SBSceneHandle _noteSceneDestroyed:];
  }

  [(SBSceneHandle *)self _setScene:0];
}

- (void)_noteReplacedWithSceneHandle:(id)handle
{
  handleCopy = handle;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SBSceneHandle__noteReplacedWithSceneHandle___block_invoke;
  v6[3] = &unk_27836B078;
  v6[4] = self;
  v7 = handleCopy;
  v5 = handleCopy;
  [(SBSceneHandle *)self _enumerateObserversWithBlock:v6];
}

void __46__SBSceneHandle__noteReplacedWithSceneHandle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 replacedWithSceneHandle])
  {
    [v5 sceneHandle:*(a1 + 32) replacedWithSceneHandle:*(a1 + 40)];
  }
}

- (BOOL)_handleSceneAction:(id)action
{
  v18 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  [(NSHashTable *)self->_actionConsumers allObjects];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * i) sceneHandle:self didReceiveAction:{actionCopy, v13}])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSceneHandle *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSceneHandle *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_scene withName:@"scene"];

  return succinctDescriptionBuilder;
}

- (void)sceneManager:(id)manager didAddScene:(id)scene
{
  managerCopy = manager;
  sceneCopy = scene;
  v7 = sceneCopy;
  if (!self->_manuallyControlsLifecycle)
  {
    identifier = [sceneCopy identifier];
    sceneIdentifier = [(SBSceneHandle *)self sceneIdentifier];
    v10 = [identifier isEqualToString:sceneIdentifier];

    if (v10)
    {
      [(SBSceneHandle *)self _setScene:v7];
    }
  }
}

- (void)sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (!self->_scene)
  {
    [SBSceneHandle sceneContentStateDidChange:];
    changeCopy = v5;
  }

  -[SBSceneHandle _didUpdateContentState:](self, "_didUpdateContentState:", [changeCopy contentState]);
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  v7 = settingsCopy;
  if (self->_scene)
  {
    settingsDiff = [settingsCopy settingsDiff];

    if (settingsDiff)
    {
      settingsDiff2 = [v7 settingsDiff];
      previousSettings = [v7 previousSettings];
      [(SBSceneHandle *)self _didUpdateSettingsWithDiff:settingsDiff2 previousSettings:previousSettings];
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  v7 = settingsCopy;
  if (self->_scene)
  {
    settingsDiff = [settingsCopy settingsDiff];

    if (settingsDiff)
    {
      [(SBSceneHandle *)self _didUpdateClientSettings:v7];
    }
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  contextCopy = context;
  if (!self->_manuallyControlsLifecycle)
  {
    if (self->_scene != invalidateCopy)
    {
      [SBSceneHandle sceneDidInvalidate:withContext:];
    }

    [(SBSceneHandle *)self _setScene:0];
  }
}

- (void)_setScene:(id)scene
{
  sceneCopy = scene;
  scene = self->_scene;
  if (scene != sceneCopy)
  {
    v10 = sceneCopy;
    v6 = sceneCopy;
    v7 = self->_scene;
    self->_scene = v6;
    sceneCopy2 = scene;

    v9 = self->_scene;
    if (v9)
    {
      [(FBScene *)v9 addObserver:self];
      [(SBSceneHandle *)self _didCreateScene:self->_scene];
    }

    else
    {
      [(FBScene *)sceneCopy2 removeObserver:self];
      [(SBSceneHandle *)self _didDestroyScene:sceneCopy2];
    }

    sceneCopy = v10;
  }
}

- (void)_initWithDefinition:scene:displayIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSceneHandle.m" lineNumber:129 description:{@"Required scene wasn't found from scene handle: %@", a2}];

  *a4 = *a3;
}

- (void)_noteSceneCreated:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_noteSceneDestroyed:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_noteSceneDestroyed:(os_log_t)log .cold.2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_21E74E000, log, OS_LOG_TYPE_ERROR, "*** _noteSceneDestroyed will assert: _scene %{public}@ does not match scene being destroyed %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_noteSceneDestroyed:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)sceneContentStateDidChange:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)sceneDidInvalidate:withContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end