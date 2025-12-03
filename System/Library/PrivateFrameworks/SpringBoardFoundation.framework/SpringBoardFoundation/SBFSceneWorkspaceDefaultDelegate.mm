@interface SBFSceneWorkspaceDefaultDelegate
- (SBFSceneWorkspaceDefaultDelegate)init;
- (void)_activateScene:(id)scene;
- (void)_cleanupTransitionContextGeneratorBlockForSceneIfNeeded:(id)needed;
- (void)_setScene:(id)scene activatesWithTransitionContextGeneratorBlock:(id)block;
- (void)_setScene:(id)scene cached:(BOOL)cached inContainer:(id)container withContextGenerator:(id)generator;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)setScene:(id)scene shouldActivateUponClientConnection:(BOOL)connection withContextGenerator:(id)generator;
- (void)setScene:(id)scene shouldBeKeptActiveWhileForeground:(BOOL)foreground withContextGenerator:(id)generator;
- (void)workspace:(id)workspace clientDidConnectWithHandshake:(id)handshake;
- (void)workspace:(id)workspace didAddScene:(id)scene;
- (void)workspace:(id)workspace willRemoveScene:(id)scene;
@end

@implementation SBFSceneWorkspaceDefaultDelegate

- (SBFSceneWorkspaceDefaultDelegate)init
{
  v10.receiver = self;
  v10.super_class = SBFSceneWorkspaceDefaultDelegate;
  v2 = [(SBFSceneWorkspaceDefaultDelegate *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    scenesKeptActiveWhileForeground = v2->_scenesKeptActiveWhileForeground;
    v2->_scenesKeptActiveWhileForeground = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    scenesActivatedUponClientConnection = v2->_scenesActivatedUponClientConnection;
    v2->_scenesActivatedUponClientConnection = v5;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    scenesWithActivationContextGeneratorBlock = v2->_scenesWithActivationContextGeneratorBlock;
    v2->_scenesWithActivationContextGeneratorBlock = dictionary;
  }

  return v2;
}

- (void)setScene:(id)scene shouldActivateUponClientConnection:(BOOL)connection withContextGenerator:(id)generator
{
  connectionCopy = connection;
  sceneCopy = scene;
  generatorCopy = generator;
  v9 = sceneCopy;
  v10 = generatorCopy;
  if (!sceneCopy)
  {
    [SBFSceneWorkspaceDefaultDelegate setScene:shouldActivateUponClientConnection:withContextGenerator:];
    v9 = 0;
  }

  [(SBFSceneWorkspaceDefaultDelegate *)self _setScene:v9 cached:connectionCopy inContainer:self->_scenesActivatedUponClientConnection withContextGenerator:v10];
}

- (void)setScene:(id)scene shouldBeKeptActiveWhileForeground:(BOOL)foreground withContextGenerator:(id)generator
{
  foregroundCopy = foreground;
  sceneCopy = scene;
  generatorCopy = generator;
  v9 = sceneCopy;
  v10 = generatorCopy;
  if (!sceneCopy)
  {
    [SBFSceneWorkspaceDefaultDelegate setScene:shouldBeKeptActiveWhileForeground:withContextGenerator:];
    v9 = 0;
  }

  [(SBFSceneWorkspaceDefaultDelegate *)self _setScene:v9 cached:foregroundCopy inContainer:self->_scenesKeptActiveWhileForeground withContextGenerator:v10];
}

- (void)_setScene:(id)scene cached:(BOOL)cached inContainer:(id)container withContextGenerator:(id)generator
{
  cachedCopy = cached;
  sceneCopy = scene;
  containerCopy = container;
  generatorCopy = generator;
  if (sceneCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFSceneWorkspaceDefaultDelegate _setScene:cached:inContainer:withContextGenerator:];
    if (containerCopy)
    {
      goto LABEL_3;
    }
  }

  [SBFSceneWorkspaceDefaultDelegate _setScene:cached:inContainer:withContextGenerator:];
LABEL_3:
  if (cachedCopy)
  {
    if (([containerCopy containsObject:?] & 1) == 0)
    {
      [containerCopy addObject:sceneCopy];
      if (generatorCopy)
      {
        [(SBFSceneWorkspaceDefaultDelegate *)self _setScene:sceneCopy activatesWithTransitionContextGeneratorBlock:generatorCopy];
      }
    }
  }

  else
  {
    [containerCopy removeObject:?];
    [(SBFSceneWorkspaceDefaultDelegate *)self _cleanupTransitionContextGeneratorBlockForSceneIfNeeded:sceneCopy];
  }
}

- (void)_setScene:(id)scene activatesWithTransitionContextGeneratorBlock:(id)block
{
  sceneCopy = scene;
  blockCopy = block;
  v7 = sceneCopy;
  if (sceneCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFSceneWorkspaceDefaultDelegate _setScene:activatesWithTransitionContextGeneratorBlock:];
    v7 = 0;
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  [SBFSceneWorkspaceDefaultDelegate _setScene:activatesWithTransitionContextGeneratorBlock:];
  v7 = sceneCopy;
LABEL_3:
  scenesWithActivationContextGeneratorBlock = self->_scenesWithActivationContextGeneratorBlock;
  identifier = [v7 identifier];
  v10 = [(NSMutableDictionary *)scenesWithActivationContextGeneratorBlock objectForKey:identifier];

  if (!v10)
  {
    v11 = self->_scenesWithActivationContextGeneratorBlock;
    v12 = [blockCopy copy];
    v13 = MEMORY[0x1BFB4D9B0]();
    identifier2 = [sceneCopy identifier];
    [(NSMutableDictionary *)v11 setObject:v13 forKey:identifier2];
  }
}

- (void)_cleanupTransitionContextGeneratorBlockForSceneIfNeeded:(id)needed
{
  neededCopy = needed;
  if (([(NSMutableSet *)self->_scenesActivatedUponClientConnection containsObject:?]& 1) == 0 && ([(NSMutableSet *)self->_scenesKeptActiveWhileForeground containsObject:neededCopy]& 1) == 0)
  {
    scenesWithActivationContextGeneratorBlock = self->_scenesWithActivationContextGeneratorBlock;
    identifier = [neededCopy identifier];
    [(NSMutableDictionary *)scenesWithActivationContextGeneratorBlock removeObjectForKey:identifier];
  }
}

- (void)_activateScene:(id)scene
{
  sceneCopy = scene;
  BSDispatchQueueAssertMain();
  if (!sceneCopy)
  {
    [SBFSceneWorkspaceDefaultDelegate _activateScene:];
  }

  scenesWithActivationContextGeneratorBlock = self->_scenesWithActivationContextGeneratorBlock;
  identifier = [sceneCopy identifier];
  v7 = [(NSMutableDictionary *)scenesWithActivationContextGeneratorBlock objectForKey:identifier];
  v8 = v7[2]();

  [sceneCopy activateWithTransitionContext:v8];
}

- (void)workspace:(id)workspace clientDidConnectWithHandshake:(id)handshake
{
  v39 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  handshakeCopy = handshake;
  BSDispatchQueueAssertMain();
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [workspaceCopy identifier];
    *buf = 134218498;
    selfCopy = self;
    v35 = 2114;
    v36 = identifier;
    v37 = 2114;
    v38 = handshakeCopy;
    _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p-%{public}@] client did connect with handshake: %{public}@", buf, 0x20u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy2 = self;
  obj = [(NSMutableSet *)self->_scenesActivatedUponClientConnection allObjects];
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v29;
    *&v9 = 134218498;
    v23 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        definition = [v13 definition];
        clientIdentity = [definition clientIdentity];
        processIdentity = [clientIdentity processIdentity];
        handle = [handshakeCopy handle];
        identity = [handle identity];
        v19 = [processIdentity isEqual:identity];

        if (v19 && ([v13 isActive] & 1) == 0)
        {
          [(SBFSceneWorkspaceDefaultDelegate *)selfCopy2 _activateScene:v13];
          v20 = SBLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [workspaceCopy identifier];
            identifier3 = [v13 identifier];
            *buf = v23;
            selfCopy = selfCopy2;
            v35 = 2114;
            v36 = identifier2;
            v37 = 2114;
            v38 = identifier3;
            _os_log_impl(&dword_1BEA11000, v20, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p-%{public}@] scene was activated for client process is running: %{public}@", buf, 0x20u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }
}

- (void)workspace:(id)workspace didAddScene:(id)scene
{
  v17 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  sceneCopy = scene;
  BSDispatchQueueAssertMain();
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [workspaceCopy identifier];
    identifier2 = [sceneCopy identifier];
    v11 = 134218498;
    selfCopy = self;
    v13 = 2114;
    v14 = identifier;
    v15 = 2114;
    v16 = identifier2;
    _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p-%{public}@] did add scene: %{public}@", &v11, 0x20u);
  }

  [sceneCopy setDelegate:self];
}

- (void)workspace:(id)workspace willRemoveScene:(id)scene
{
  v17 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  sceneCopy = scene;
  BSDispatchQueueAssertMain();
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [workspaceCopy identifier];
    identifier2 = [sceneCopy identifier];
    v11 = 134218498;
    selfCopy = self;
    v13 = 2114;
    v14 = identifier;
    v15 = 2114;
    v16 = identifier2;
    _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p-%{public}@] will remove scene: %{public}@", &v11, 0x20u);
  }

  [sceneCopy setDelegate:0];
}

- (void)sceneDidActivate:(id)activate
{
  v11 = *MEMORY[0x1E69E9840];
  activateCopy = activate;
  BSDispatchQueueAssertMain();
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [activateCopy identifier];
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = identifier;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] scene did activate: %{public}@", &v7, 0x16u);
  }
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  deactivateCopy = deactivate;
  contextCopy = context;
  BSDispatchQueueAssertMain();
  identifier = [deactivateCopy identifier];
  error = [contextCopy error];

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [error localizedDescription];
    v16 = 134218498;
    selfCopy3 = self;
    v18 = 2114;
    v19 = identifier;
    v20 = 2114;
    v21 = localizedDescription;
    _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] scene did deactivate: %{public}@ error: %{public}@", &v16, 0x20u);
  }

  settings = [deactivateCopy settings];
  isForeground = [settings isForeground];

  if (isForeground)
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218242;
      selfCopy3 = self;
      v18 = 2114;
      v19 = identifier;
      _os_log_impl(&dword_1BEA11000, v14, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] scene did deactivate while foreground: %{public}@", &v16, 0x16u);
    }

    if ([(NSMutableSet *)self->_scenesKeptActiveWhileForeground containsObject:deactivateCopy])
    {
      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218242;
        selfCopy3 = self;
        v18 = 2114;
        v19 = identifier;
        _os_log_impl(&dword_1BEA11000, v15, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] automatically re-activating scene: %{public}@", &v16, 0x16u);
      }

      [(SBFSceneWorkspaceDefaultDelegate *)self _activateScene:deactivateCopy];
    }
  }
}

- (void)sceneContentStateDidChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  BSDispatchQueueAssertMain();
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    contentState = [changeCopy contentState];
    identifier = [changeCopy identifier];
    v8 = 134218498;
    selfCopy = self;
    v10 = 2048;
    v11 = contentState;
    v12 = 2114;
    v13 = identifier;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] content state did change: %ld for scene: %{public}@", &v8, 0x20u);
  }
}

- (void)setScene:shouldActivateUponClientConnection:withContextGenerator:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)setScene:shouldBeKeptActiveWhileForeground:withContextGenerator:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)_setScene:cached:inContainer:withContextGenerator:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)_setScene:cached:inContainer:withContextGenerator:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"container" object:? file:? lineNumber:? description:?];
}

- (void)_setScene:activatesWithTransitionContextGeneratorBlock:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)_setScene:activatesWithTransitionContextGeneratorBlock:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"transitionContextGeneratorBlock" object:? file:? lineNumber:? description:?];
}

- (void)_activateScene:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

@end