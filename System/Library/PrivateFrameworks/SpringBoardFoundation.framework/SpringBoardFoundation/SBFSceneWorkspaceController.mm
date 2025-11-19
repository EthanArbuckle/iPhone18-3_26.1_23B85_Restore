@interface SBFSceneWorkspaceController
- (BOOL)enumerateScenesWithBlock:(id)a3;
- (SBFSceneWorkspaceController)initWithIdentifier:(id)a3 delegate:(id)a4;
- (SBFSceneWorkspaceControllerDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)sceneFromIdentityToken:(id)a3;
- (id)sceneFromIdentityTokenStringRepresentation:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)createSceneForProcessIdentity:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)invalidate;
@end

@implementation SBFSceneWorkspaceController

- (SBFSceneWorkspaceController)initWithIdentifier:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFSceneWorkspaceController initWithIdentifier:delegate:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBFSceneWorkspaceController initWithIdentifier:delegate:];
LABEL_3:
  v14.receiver = self;
  v14.super_class = SBFSceneWorkspaceController;
  v9 = [(SBFSceneWorkspaceController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v11 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:v6];
    sceneWorkspace = v10->_sceneWorkspace;
    v10->_sceneWorkspace = v11;

    [(FBSceneWorkspace *)v10->_sceneWorkspace setDelegate:v8];
  }

  return v10;
}

- (void)createSceneForProcessIdentity:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFSceneWorkspaceController createSceneForProcessIdentity:withOptions:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBFSceneWorkspaceController createSceneForProcessIdentity:withOptions:completion:];
LABEL_3:
  sceneWorkspace = self->_sceneWorkspace;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__SBFSceneWorkspaceController_createSceneForProcessIdentity_withOptions_completion___block_invoke;
  v20[3] = &unk_1E807F3D8;
  v12 = v9;
  v21 = v12;
  v22 = v8;
  v13 = v8;
  v14 = [(FBSceneWorkspace *)sceneWorkspace createScene:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__SBFSceneWorkspaceController_createSceneForProcessIdentity_withOptions_completion___block_invoke_2;
  v18[3] = &unk_1E807F400;
  v19 = v12;
  v15 = v12;
  [v14 configureParameters:v18];
  v16 = SBLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(SBFSceneWorkspaceController *)self sceneWorkspaceIdentifier];
    *buf = 134218498;
    v24 = self;
    v25 = 2114;
    v26 = v17;
    v27 = 2114;
    v28 = v14;
    _os_log_impl(&dword_1BEA11000, v16, OS_LOG_TYPE_DEFAULT, "SceneWorkspace[%p-%{public}@] did create App scene: %{public}@", buf, 0x20u);
  }

  if (v10)
  {
    v10[2](v10, v14, 0);
  }
}

void __84__SBFSceneWorkspaceController_createSceneForProcessIdentity_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setIdentifier:v5];

  v6 = [*(a1 + 32) specification];
  [v4 setSpecification:v6];

  v7 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:*(a1 + 40)];
  [v4 setClientIdentity:v7];
}

void __84__SBFSceneWorkspaceController_createSceneForProcessIdentity_withOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 initialClientSettings];
  [v3 setClientSettings:v4];
}

- (id)sceneFromIdentityToken:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBFSceneWorkspaceController sceneFromIdentityToken:];
  }

  v5 = [v4 stringRepresentation];
  v6 = [(SBFSceneWorkspaceController *)self sceneFromIdentityTokenStringRepresentation:v5];

  return v6;
}

- (id)sceneFromIdentityTokenStringRepresentation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBFSceneWorkspaceController sceneFromIdentityTokenStringRepresentation:];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__SBFSceneWorkspaceController_sceneFromIdentityTokenStringRepresentation___block_invoke;
  v8[3] = &unk_1E807F428;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(SBFSceneWorkspaceController *)self enumerateScenesWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __74__SBFSceneWorkspaceController_sceneFromIdentityTokenStringRepresentation___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 identityToken];
  v7 = [v6 stringRepresentation];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)enumerateScenesWithBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(FBSceneWorkspace *)self->_sceneWorkspace allScenes];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v12 + 1) + 8 * v9), &v16);
      if (v16)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = v16;
  return v10;
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(FBSceneWorkspace *)self->_sceneWorkspace allScenes];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setDelegate:0];
        [v8 invalidate];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(FBSceneWorkspace *)self->_sceneWorkspace setDelegate:0];
  [(FBSceneWorkspace *)self->_sceneWorkspace invalidate];
}

- (id)succinctDescription
{
  v2 = [(SBFSceneWorkspaceController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBFSceneWorkspaceController *)self sceneWorkspaceIdentifier];
  [v3 appendString:v4 withName:@"identifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFSceneWorkspaceController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFSceneWorkspaceController *)self succinctDescriptionBuilder];
  v5 = [(FBSceneWorkspace *)self->_sceneWorkspace delegate];
  v6 = [v4 appendObject:v5 withName:@"FB workspace Delegate"];

  if ([(FBSceneWorkspace *)self->_sceneWorkspace conformsToProtocol:&unk_1F3D57250])
  {
    sceneWorkspace = self->_sceneWorkspace;
  }

  else
  {
    sceneWorkspace = 0;
  }

  v8 = [(FBSceneWorkspace *)sceneWorkspace succinctDescription];
  v9 = [v4 appendObject:v8 withName:@"FB workspace minus scenes"];

  return v4;
}

- (SBFSceneWorkspaceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithIdentifier:delegate:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithIdentifier:delegate:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)createSceneForProcessIdentity:withOptions:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"processIdentity" object:? file:? lineNumber:? description:?];
}

- (void)createSceneForProcessIdentity:withOptions:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"options" object:? file:? lineNumber:? description:?];
}

- (void)sceneFromIdentityToken:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"token" object:? file:? lineNumber:? description:?];
}

- (void)sceneFromIdentityTokenStringRepresentation:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"tokenString" object:? file:? lineNumber:? description:?];
}

@end