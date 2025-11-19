@interface SBSceneHandle
- (BOOL)_handleSceneAction:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FBSDisplayIdentity)displayIdentity;
- (FBScene)scene;
- (NSString)sceneIdentifier;
- (SBSceneHandle)init;
- (SBSceneManager)sceneManager;
- (id)_initWithDefinition:(id)a3 scene:(id)a4 displayIdentity:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)contentState;
- (unint64_t)hash;
- (void)_didCreateScene:(id)a3;
- (void)_didDestroyScene:(id)a3;
- (void)_didUpdateClientSettings:(id)a3;
- (void)_didUpdateContentState:(int64_t)a3;
- (void)_didUpdateSettingsWithDiff:(id)a3 previousSettings:(id)a4;
- (void)_enumerateObserversWithBlock:(id)a3;
- (void)_noteDidMoveFromSceneManager:(id)a3;
- (void)_noteReplacedWithSceneHandle:(id)a3;
- (void)_noteSceneCreated:(id)a3;
- (void)_noteSceneDestroyed:(id)a3;
- (void)_setScene:(id)a3;
- (void)addActionConsumer:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeActionConsumer:(id)a3;
- (void)removeObserver:(id)a3;
- (void)scene;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)sceneManager:(id)a3 didAddScene:(id)a4;
- (void)setSceneManager:(id)a3;
@end

@implementation SBSceneHandle

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(SBSceneHandle *)self sceneIdentifier];
    self->_hash = [v4 hash];

    return self->_hash;
  }

  return result;
}

- (FBSDisplayIdentity)displayIdentity
{
  v3 = [(SBSceneHandle *)self sceneManager];
  v4 = [v3 displayIdentity];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(SBSceneHandle *)self sceneIfExists];
    v8 = [v7 settings];
    v9 = [v8 sb_displayIdentityForSceneManagers];
    displayIdentity = v9;
    if (!v9)
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
  v2 = [(FBSSceneDefinition *)self->_definition identity];
  v3 = [v2 identifier];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBSceneHandle *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBSceneHandle *)self sceneIdentifier];
  v5 = [v3 appendObject:v4 withName:@"sceneID"];

  v6 = [v3 appendPointer:self->_scene withName:@"scenePointer"];

  return v3;
}

- (int64_t)contentState
{
  v2 = [(SBSceneHandle *)self sceneIfExists];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 contentState];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v3 = [MEMORY[0x277D0AAD8] sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBSceneHandle;
  [(SBSceneHandle *)&v4 dealloc];
}

- (SBSceneHandle)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSceneHandle.m" lineNumber:59 description:@"init is unavailable for SBSceneHandle."];

  return 0;
}

- (id)_initWithDefinition:(id)a3 scene:(id)a4 displayIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!(v8 | v9))
  {
    [SBSceneHandle _initWithDefinition:scene:displayIdentity:];
  }

  v18.receiver = self;
  v18.super_class = SBSceneHandle;
  v11 = [(SBSceneHandle *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_displayIdentity, a5);
    if (v9)
    {
      v13 = [v9 definition];
    }

    else
    {
      v13 = v8;
    }

    definition = v12->_definition;
    v12->_definition = v13;

    v15 = [MEMORY[0x277D0AAD8] sharedInstance];
    [v15 addObserver:v12];
    [(SBSceneHandle *)v12 _commonInit];
    if (v9 || (-[SBSceneHandle sceneIdentifier](v12, "sceneIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), [v15 sceneWithIdentifier:v16], v9 = objc_claimAutoreleasedReturnValue(), v16, v9))
    {
      [(SBSceneHandle *)v12 _setScene:v9];
    }
  }

  return v12;
}

- (void)setSceneManager:(id)a3
{
  obj = a3;
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

- (void)_noteDidMoveFromSceneManager:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SBSceneHandle__noteDidMoveFromSceneManager___block_invoke;
  v6[3] = &unk_27836B078;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observers = self->_observers;
    v13 = v5;
    if (!observers)
    {
      v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = v7;

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

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    observersToObserverBehaviors = self->_observersToObserverBehaviors;
    v5 = a3;
    [(NSMapTable *)observersToObserverBehaviors removeObjectForKey:v5];
    [(NSHashTable *)self->_observers removeObject:v5];
  }
}

- (void)addActionConsumer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    actionConsumers = self->_actionConsumers;
    v9 = v5;
    if (!actionConsumers)
    {
      v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_actionConsumers;
      self->_actionConsumers = v7;

      actionConsumers = self->_actionConsumers;
    }

    v4 = [(NSHashTable *)actionConsumers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)removeActionConsumer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    [(NSHashTable *)self->_actionConsumers removeObject:v4];
    v4 = [(NSHashTable *)self->_actionConsumers count];
    v5 = v7;
    if (!v4)
    {
      actionConsumers = self->_actionConsumers;
      self->_actionConsumers = 0;

      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SBSceneHandle *)self sceneIdentifier];
    v7 = [v5 sceneIdentifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_enumerateObserversWithBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v14 + 1) + 8 * v10);
        v8 = [(NSMapTable *)self->_observersToObserverBehaviors objectForKey:v12];

        if (v8)
        {
          v4[2](v4, v12, v8);
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_didCreateScene:(id)a3
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

- (void)_didDestroyScene:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SBSceneHandle__didDestroyScene___block_invoke;
  v6[3] = &unk_27836B078;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_didUpdateContentState:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__SBSceneHandle__didUpdateContentState___block_invoke;
  v3[3] = &unk_27836B0C8;
  v3[4] = self;
  v3[5] = a3;
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

- (void)_didUpdateSettingsWithDiff:(id)a3 previousSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SBSceneHandle__didUpdateSettingsWithDiff_previousSettings___block_invoke;
  v10[3] = &unk_27836B0F0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_didUpdateClientSettings:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SBSceneHandle__didUpdateClientSettings___block_invoke;
  v6[3] = &unk_27836B078;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_noteSceneCreated:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_manuallyControlsLifecycle)
  {
    [SBSceneHandle _noteSceneCreated:];
    v4 = v5;
  }

  [(SBSceneHandle *)self _setScene:v4];
}

- (void)_noteSceneDestroyed:(id)a3
{
  v4 = a3;
  if (!self->_manuallyControlsLifecycle)
  {
    [SBSceneHandle _noteSceneDestroyed:];
  }

  scene = self->_scene;
  if (scene)
  {
    v6 = scene == v4;
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
      [(SBSceneHandle *)&self->_scene _noteSceneDestroyed:v4, v7];
    }

    scene = self->_scene;
  }

  if (scene && scene != v4)
  {
    [SBSceneHandle _noteSceneDestroyed:];
  }

  [(SBSceneHandle *)self _setScene:0];
}

- (void)_noteReplacedWithSceneHandle:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SBSceneHandle__noteReplacedWithSceneHandle___block_invoke;
  v6[3] = &unk_27836B078;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (BOOL)_handleSceneAction:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        if ([*(*(&v13 + 1) + 8 * i) sceneHandle:self didReceiveAction:{v4, v13}])
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSceneHandle *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSceneHandle *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_scene withName:@"scene"];

  return v4;
}

- (void)sceneManager:(id)a3 didAddScene:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = v6;
  if (!self->_manuallyControlsLifecycle)
  {
    v8 = [v6 identifier];
    v9 = [(SBSceneHandle *)self sceneIdentifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      [(SBSceneHandle *)self _setScene:v7];
    }
  }
}

- (void)sceneContentStateDidChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_scene)
  {
    [SBSceneHandle sceneContentStateDidChange:];
    v4 = v5;
  }

  -[SBSceneHandle _didUpdateContentState:](self, "_didUpdateContentState:", [v4 contentState]);
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_scene)
  {
    v8 = [v6 settingsDiff];

    if (v8)
    {
      v9 = [v7 settingsDiff];
      v10 = [v7 previousSettings];
      [(SBSceneHandle *)self _didUpdateSettingsWithDiff:v9 previousSettings:v10];
    }
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_scene)
  {
    v8 = [v6 settingsDiff];

    if (v8)
    {
      [(SBSceneHandle *)self _didUpdateClientSettings:v7];
    }
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (!self->_manuallyControlsLifecycle)
  {
    if (self->_scene != v7)
    {
      [SBSceneHandle sceneDidInvalidate:withContext:];
    }

    [(SBSceneHandle *)self _setScene:0];
  }
}

- (void)_setScene:(id)a3
{
  v4 = a3;
  scene = self->_scene;
  if (scene != v4)
  {
    v10 = v4;
    v6 = v4;
    v7 = self->_scene;
    self->_scene = v6;
    v8 = scene;

    v9 = self->_scene;
    if (v9)
    {
      [(FBScene *)v9 addObserver:self];
      [(SBSceneHandle *)self _didCreateScene:self->_scene];
    }

    else
    {
      [(FBScene *)v8 removeObserver:self];
      [(SBSceneHandle *)self _didDestroyScene:v8];
    }

    v4 = v10;
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
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBSceneHandle.m" lineNumber:129 description:{@"Required scene wasn't found from scene handle: %@", a2}];

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