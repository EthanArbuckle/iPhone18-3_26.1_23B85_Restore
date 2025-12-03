@interface SBFSceneWorkspaceController
- (BOOL)enumerateScenesWithBlock:(id)block;
- (SBFSceneWorkspaceController)initWithIdentifier:(id)identifier delegate:(id)delegate;
- (SBFSceneWorkspaceControllerDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)sceneFromIdentityToken:(id)token;
- (id)sceneFromIdentityTokenStringRepresentation:(id)representation;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)createSceneForProcessIdentity:(id)identity withOptions:(id)options completion:(id)completion;
- (void)invalidate;
@end

@implementation SBFSceneWorkspaceController

- (SBFSceneWorkspaceController)initWithIdentifier:(id)identifier delegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v8 = delegateCopy;
  if (identifierCopy)
  {
    if (delegateCopy)
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
    v11 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:identifierCopy];
    sceneWorkspace = v10->_sceneWorkspace;
    v10->_sceneWorkspace = v11;

    [(FBSceneWorkspace *)v10->_sceneWorkspace setDelegate:v8];
  }

  return v10;
}

- (void)createSceneForProcessIdentity:(id)identity withOptions:(id)options completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  if (identityCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFSceneWorkspaceController createSceneForProcessIdentity:withOptions:completion:];
    if (optionsCopy)
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
  v12 = optionsCopy;
  v21 = v12;
  v22 = identityCopy;
  v13 = identityCopy;
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
    sceneWorkspaceIdentifier = [(SBFSceneWorkspaceController *)self sceneWorkspaceIdentifier];
    *buf = 134218498;
    selfCopy = self;
    v25 = 2114;
    v26 = sceneWorkspaceIdentifier;
    v27 = 2114;
    v28 = v14;
    _os_log_impl(&dword_1BEA11000, v16, OS_LOG_TYPE_DEFAULT, "SceneWorkspace[%p-%{public}@] did create App scene: %{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14, 0);
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

- (id)sceneFromIdentityToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    [SBFSceneWorkspaceController sceneFromIdentityToken:];
  }

  stringRepresentation = [tokenCopy stringRepresentation];
  v6 = [(SBFSceneWorkspaceController *)self sceneFromIdentityTokenStringRepresentation:stringRepresentation];

  return v6;
}

- (id)sceneFromIdentityTokenStringRepresentation:(id)representation
{
  representationCopy = representation;
  if (!representationCopy)
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
  v5 = representationCopy;
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

- (BOOL)enumerateScenesWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allScenes = [(FBSceneWorkspace *)self->_sceneWorkspace allScenes];
  v6 = [allScenes countByEnumeratingWithState:&v12 objects:v17 count:16];
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
        objc_enumerationMutation(allScenes);
      }

      blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v9), &v16);
      if (v16)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allScenes countByEnumeratingWithState:&v12 objects:v17 count:16];
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
  allScenes = [(FBSceneWorkspace *)self->_sceneWorkspace allScenes];
  v4 = [allScenes countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allScenes);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setDelegate:0];
        [v8 invalidate];
      }

      v5 = [allScenes countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(FBSceneWorkspace *)self->_sceneWorkspace setDelegate:0];
  [(FBSceneWorkspace *)self->_sceneWorkspace invalidate];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFSceneWorkspaceController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  sceneWorkspaceIdentifier = [(SBFSceneWorkspaceController *)self sceneWorkspaceIdentifier];
  [v3 appendString:sceneWorkspaceIdentifier withName:@"identifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFSceneWorkspaceController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFSceneWorkspaceController *)self succinctDescriptionBuilder];
  delegate = [(FBSceneWorkspace *)self->_sceneWorkspace delegate];
  v6 = [succinctDescriptionBuilder appendObject:delegate withName:@"FB workspace Delegate"];

  if ([(FBSceneWorkspace *)self->_sceneWorkspace conformsToProtocol:&unk_1F3D57250])
  {
    sceneWorkspace = self->_sceneWorkspace;
  }

  else
  {
    sceneWorkspace = 0;
  }

  succinctDescription = [(FBSceneWorkspace *)sceneWorkspace succinctDescription];
  v9 = [succinctDescriptionBuilder appendObject:succinctDescription withName:@"FB workspace minus scenes"];

  return succinctDescriptionBuilder;
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