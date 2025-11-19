@interface SBFSceneWorkspaceDefaultDelegate
- (SBFSceneWorkspaceDefaultDelegate)init;
- (void)_activateScene:(id)a3;
- (void)_cleanupTransitionContextGeneratorBlockForSceneIfNeeded:(id)a3;
- (void)_setScene:(id)a3 activatesWithTransitionContextGeneratorBlock:(id)a4;
- (void)_setScene:(id)a3 cached:(BOOL)a4 inContainer:(id)a5 withContextGenerator:(id)a6;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
- (void)setScene:(id)a3 shouldActivateUponClientConnection:(BOOL)a4 withContextGenerator:(id)a5;
- (void)setScene:(id)a3 shouldBeKeptActiveWhileForeground:(BOOL)a4 withContextGenerator:(id)a5;
- (void)workspace:(id)a3 clientDidConnectWithHandshake:(id)a4;
- (void)workspace:(id)a3 didAddScene:(id)a4;
- (void)workspace:(id)a3 willRemoveScene:(id)a4;
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

    v7 = [MEMORY[0x1E695DF90] dictionary];
    scenesWithActivationContextGeneratorBlock = v2->_scenesWithActivationContextGeneratorBlock;
    v2->_scenesWithActivationContextGeneratorBlock = v7;
  }

  return v2;
}

- (void)setScene:(id)a3 shouldActivateUponClientConnection:(BOOL)a4 withContextGenerator:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = v11;
  v10 = v8;
  if (!v11)
  {
    [SBFSceneWorkspaceDefaultDelegate setScene:shouldActivateUponClientConnection:withContextGenerator:];
    v9 = 0;
  }

  [(SBFSceneWorkspaceDefaultDelegate *)self _setScene:v9 cached:v6 inContainer:self->_scenesActivatedUponClientConnection withContextGenerator:v10];
}

- (void)setScene:(id)a3 shouldBeKeptActiveWhileForeground:(BOOL)a4 withContextGenerator:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = v11;
  v10 = v8;
  if (!v11)
  {
    [SBFSceneWorkspaceDefaultDelegate setScene:shouldBeKeptActiveWhileForeground:withContextGenerator:];
    v9 = 0;
  }

  [(SBFSceneWorkspaceDefaultDelegate *)self _setScene:v9 cached:v6 inContainer:self->_scenesKeptActiveWhileForeground withContextGenerator:v10];
}

- (void)_setScene:(id)a3 cached:(BOOL)a4 inContainer:(id)a5 withContextGenerator:(id)a6
{
  v8 = a4;
  v12 = a3;
  v10 = a5;
  v11 = a6;
  if (v12)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFSceneWorkspaceDefaultDelegate _setScene:cached:inContainer:withContextGenerator:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [SBFSceneWorkspaceDefaultDelegate _setScene:cached:inContainer:withContextGenerator:];
LABEL_3:
  if (v8)
  {
    if (([v10 containsObject:?] & 1) == 0)
    {
      [v10 addObject:v12];
      if (v11)
      {
        [(SBFSceneWorkspaceDefaultDelegate *)self _setScene:v12 activatesWithTransitionContextGeneratorBlock:v11];
      }
    }
  }

  else
  {
    [v10 removeObject:?];
    [(SBFSceneWorkspaceDefaultDelegate *)self _cleanupTransitionContextGeneratorBlockForSceneIfNeeded:v12];
  }
}

- (void)_setScene:(id)a3 activatesWithTransitionContextGeneratorBlock:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = v15;
  if (v15)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFSceneWorkspaceDefaultDelegate _setScene:activatesWithTransitionContextGeneratorBlock:];
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [SBFSceneWorkspaceDefaultDelegate _setScene:activatesWithTransitionContextGeneratorBlock:];
  v7 = v15;
LABEL_3:
  scenesWithActivationContextGeneratorBlock = self->_scenesWithActivationContextGeneratorBlock;
  v9 = [v7 identifier];
  v10 = [(NSMutableDictionary *)scenesWithActivationContextGeneratorBlock objectForKey:v9];

  if (!v10)
  {
    v11 = self->_scenesWithActivationContextGeneratorBlock;
    v12 = [v6 copy];
    v13 = MEMORY[0x1BFB4D9B0]();
    v14 = [v15 identifier];
    [(NSMutableDictionary *)v11 setObject:v13 forKey:v14];
  }
}

- (void)_cleanupTransitionContextGeneratorBlockForSceneIfNeeded:(id)a3
{
  v6 = a3;
  if (([(NSMutableSet *)self->_scenesActivatedUponClientConnection containsObject:?]& 1) == 0 && ([(NSMutableSet *)self->_scenesKeptActiveWhileForeground containsObject:v6]& 1) == 0)
  {
    scenesWithActivationContextGeneratorBlock = self->_scenesWithActivationContextGeneratorBlock;
    v5 = [v6 identifier];
    [(NSMutableDictionary *)scenesWithActivationContextGeneratorBlock removeObjectForKey:v5];
  }
}

- (void)_activateScene:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBFSceneWorkspaceDefaultDelegate _activateScene:];
  }

  scenesWithActivationContextGeneratorBlock = self->_scenesWithActivationContextGeneratorBlock;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)scenesWithActivationContextGeneratorBlock objectForKey:v6];
  v8 = v7[2]();

  [v4 activateWithTransitionContext:v8];
}

- (void)workspace:(id)a3 clientDidConnectWithHandshake:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v27 = a4;
  BSDispatchQueueAssertMain();
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v24 identifier];
    *buf = 134218498;
    v34 = self;
    v35 = 2114;
    v36 = v7;
    v37 = 2114;
    v38 = v27;
    _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p-%{public}@] client did connect with handshake: %{public}@", buf, 0x20u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = self;
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
        v14 = [v13 definition];
        v15 = [v14 clientIdentity];
        v16 = [v15 processIdentity];
        v17 = [v27 handle];
        v18 = [v17 identity];
        v19 = [v16 isEqual:v18];

        if (v19 && ([v13 isActive] & 1) == 0)
        {
          [(SBFSceneWorkspaceDefaultDelegate *)v25 _activateScene:v13];
          v20 = SBLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v24 identifier];
            v22 = [v13 identifier];
            *buf = v23;
            v34 = v25;
            v35 = 2114;
            v36 = v21;
            v37 = 2114;
            v38 = v22;
            _os_log_impl(&dword_1BEA11000, v20, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p-%{public}@] scene was activated for client process is running: %{public}@", buf, 0x20u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }
}

- (void)workspace:(id)a3 didAddScene:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    v10 = [v7 identifier];
    v11 = 134218498;
    v12 = self;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p-%{public}@] did add scene: %{public}@", &v11, 0x20u);
  }

  [v7 setDelegate:self];
}

- (void)workspace:(id)a3 willRemoveScene:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    v10 = [v7 identifier];
    v11 = 134218498;
    v12 = self;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p-%{public}@] will remove scene: %{public}@", &v11, 0x20u);
  }

  [v7 setDelegate:0];
}

- (void)sceneDidActivate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] scene did activate: %{public}@", &v7, 0x16u);
  }
}

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [v6 identifier];
  v9 = [v7 error];

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 localizedDescription];
    v16 = 134218498;
    v17 = self;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] scene did deactivate: %{public}@ error: %{public}@", &v16, 0x20u);
  }

  v12 = [v6 settings];
  v13 = [v12 isForeground];

  if (v13)
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218242;
      v17 = self;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_1BEA11000, v14, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] scene did deactivate while foreground: %{public}@", &v16, 0x16u);
    }

    if ([(NSMutableSet *)self->_scenesKeptActiveWhileForeground containsObject:v6])
    {
      v15 = SBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218242;
        v17 = self;
        v18 = 2114;
        v19 = v8;
        _os_log_impl(&dword_1BEA11000, v15, OS_LOG_TYPE_DEFAULT, "SceneWorkspaceDelegate[%p] automatically re-activating scene: %{public}@", &v16, 0x16u);
      }

      [(SBFSceneWorkspaceDefaultDelegate *)self _activateScene:v6];
    }
  }
}

- (void)sceneContentStateDidChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 contentState];
    v7 = [v4 identifier];
    v8 = 134218498;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
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