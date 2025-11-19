@interface PSPointerSystemClientController
- (PSPointerSystemClientController)init;
- (PSPointerSystemClientControllerDelegate)delegate;
- (id)_sceneIdentifierForIdentifierPrefix:(id)a3 displayConfiguration:(id)a4;
- (void)_invalidateSceneForIdentifierPrefix:(id)a3 displayConfiguration:(id)a4;
- (void)_prepareSceneForIdentifierPrefix:(id)a3 displayConfiguration:(id)a4;
- (void)_setRootWindowTransform:(CGAffineTransform *)a3 sceneForIdentifierPrefix:(id)a4 displayConfiguration:(id)a5;
- (void)invalidateScenesForPointerForDisplayConfiguration:(id)a3;
- (void)prepareScenesForPointerForDisplayConfiguration:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneWillDeactivate:(id)a3 withError:(id)a4;
- (void)setRootWindowTransform:(CGAffineTransform *)a3 forDisplayConfiguration:(id)a4;
- (void)workspace:(id)a3 clientDidConnectWithHandshake:(id)a4;
@end

@implementation PSPointerSystemClientController

- (PSPointerSystemClientController)init
{
  v6.receiver = self;
  v6.super_class = PSPointerSystemClientController;
  v2 = [(PSPointerSystemClientController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D46F60] identityForDaemonJobLabel:@"com.apple.PointerUI.pointeruid"];
    pointerUIDProcessIdentity = v2->_pointerUIDProcessIdentity;
    v2->_pointerUIDProcessIdentity = v3;
  }

  return v2;
}

- (void)prepareScenesForPointerForDisplayConfiguration:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 hardwareIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_25EA35000, v5, OS_LOG_TYPE_DEFAULT, "Preparing scenes for display with hardware identifier: %{public}@ displayConfiguration: %@", &v8, 0x16u);
  }

  [(PSPointerSystemClientController *)self _prepareSceneForIdentifierPrefix:@"com.apple.PointerUI.pointeruid.pointerRenderingScene" displayConfiguration:v4];
  [(PSPointerSystemClientController *)self _prepareSceneForIdentifierPrefix:@"com.apple.PointerUI.pointeruid.systemPointerScene" displayConfiguration:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_prepareSceneForIdentifierPrefix:(id)a3 displayConfiguration:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_sceneWorkspace)
  {
    v8 = [objc_alloc(MEMORY[0x277D0AAE8]) initWithIdentifier:@"PSPointerClientControllerWorkspaceIdentifier"];
    sceneWorkspace = self->_sceneWorkspace;
    self->_sceneWorkspace = v8;

    [(FBSceneWorkspace *)self->_sceneWorkspace setDelegate:self];
  }

  v10 = [(PSPointerSystemClientController *)self _sceneIdentifierForIdentifierPrefix:v6 displayConfiguration:v7];
  v11 = [(FBSceneWorkspace *)self->_sceneWorkspace sceneWithIdentifier:v10];
  v12 = PSLogCommon();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 138543362;
      v38 = v10;
      _os_log_impl(&dword_25EA35000, v12, OS_LOG_TYPE_DEFAULT, "Activating existing scene with identifier: %{public}@", buf, 0xCu);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __89__PSPointerSystemClientController__prepareSceneForIdentifierPrefix_displayConfiguration___block_invoke_14;
    v27[3] = &unk_279A47238;
    v28 = v7;
    v14 = v7;
    [v11 updateSettingsWithBlock:v27];
    [v11 activateWithTransitionContext:0];
    [v11 setDelegate:self];
    v15 = [(PSPointerSystemClientController *)self delegate];
    [v15 pointerClientController:self sceneDidActivate:v11];

    v16 = v28;
  }

  else
  {
    if (v13)
    {
      *buf = 138543362;
      v38 = v10;
      _os_log_impl(&dword_25EA35000, v12, OS_LOG_TYPE_DEFAULT, "Creating new scene with identifier: %{public}@", buf, 0xCu);
    }

    v17 = objc_opt_new();
    if ([v10 containsString:@"com.apple.PointerUI.pointeruid.pointerRenderingScene"])
    {
      v18 = -1000.0;
    }

    else
    {
      v18 = 10000015.5;
    }

    [v17 setPreferredLevel:v18];
    [v17 setPreferredInterfaceOrientation:1];
    v14 = [MEMORY[0x277D0AD58] settings];
    [v14 setDisplayConfiguration:v7];
    [v7 bounds];
    [v14 setFrame:?];
    [v14 setLevel:v18];
    [v14 setInterfaceOrientation:1];
    [v14 setForeground:1];
    v19 = MEMORY[0x277D0AD50];
    v20 = [MEMORY[0x277D0ADF8] specification];
    v16 = [v19 parametersForSpecification:v20];

    [v16 setSettings:v14];
    [v16 setClientSettings:v17];
    v21 = self->_pointerUIDProcessIdentity;
    v22 = self->_sceneWorkspace;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __89__PSPointerSystemClientController__prepareSceneForIdentifierPrefix_displayConfiguration___block_invoke;
    v34[3] = &unk_279A471C0;
    v35 = v10;
    v36 = v21;
    v23 = v21;
    v11 = [(FBSceneWorkspace *)v22 createScene:v34];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __89__PSPointerSystemClientController__prepareSceneForIdentifierPrefix_displayConfiguration___block_invoke_2;
    v29[3] = &unk_279A47210;
    v30 = v17;
    v31 = v7;
    v32 = v18;
    v33 = 1;
    v24 = v7;
    v25 = v17;
    [v11 configureParameters:v29];
    [v11 addExtension:objc_opt_class()];
    [v11 activateWithTransitionContext:0];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __89__PSPointerSystemClientController__prepareSceneForIdentifierPrefix_displayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentifier:v3];
  v5 = [MEMORY[0x277D0ADA8] identityForProcessIdentity:*(a1 + 40)];
  [v4 setClientIdentity:v5];

  v6 = [MEMORY[0x277D0ADF8] specification];
  [v4 setSpecification:v6];
}

void __89__PSPointerSystemClientController__prepareSceneForIdentifierPrefix_displayConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setClientSettings:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__PSPointerSystemClientController__prepareSceneForIdentifierPrefix_displayConfiguration___block_invoke_3;
  v5[3] = &unk_279A471E8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 updateSettingsWithBlock:v5];
}

void __89__PSPointerSystemClientController__prepareSceneForIdentifierPrefix_displayConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDisplayConfiguration:v3];
  [*(a1 + 32) bounds];
  [v4 setFrame:?];
  [v4 setLevel:*(a1 + 40)];
  [v4 setInterfaceOrientation:*(a1 + 48)];
  [v4 setForeground:1];
}

void __89__PSPointerSystemClientController__prepareSceneForIdentifierPrefix_displayConfiguration___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDisplayConfiguration:v3];
  [*(a1 + 32) bounds];
  [v4 setFrame:?];
}

- (void)invalidateScenesForPointerForDisplayConfiguration:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 hardwareIdentifier];
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_25EA35000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating scenes for display with hardware identifier: %{public}@ displayConfiguration: %@", &v8, 0x16u);
  }

  [(PSPointerSystemClientController *)self _invalidateSceneForIdentifierPrefix:@"com.apple.PointerUI.pointeruid.pointerRenderingScene" displayConfiguration:v4];
  [(PSPointerSystemClientController *)self _invalidateSceneForIdentifierPrefix:@"com.apple.PointerUI.pointeruid.systemPointerScene" displayConfiguration:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateSceneForIdentifierPrefix:(id)a3 displayConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_sceneWorkspace)
  {
    v8 = [(PSPointerSystemClientController *)self _sceneIdentifierForIdentifierPrefix:v6 displayConfiguration:v7];
    v9 = [(FBSceneWorkspace *)self->_sceneWorkspace sceneWithIdentifier:v8];
    v10 = v9;
    if (v9)
    {
      [v9 invalidate];
    }

    else
    {
      v11 = PSLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PSPointerSystemClientController _invalidateSceneForIdentifierPrefix:v6 displayConfiguration:v11];
      }
    }
  }

  else
  {
    v8 = PSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PSPointerSystemClientController *)v6 _invalidateSceneForIdentifierPrefix:v7 displayConfiguration:v8];
    }
  }
}

- (id)_sceneIdentifierForIdentifierPrefix:(id)a3 displayConfiguration:(id)a4
{
  v5 = a3;
  v6 = [a4 hardwareIdentifier];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Main";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v5, v7];

  return v8;
}

- (void)setRootWindowTransform:(CGAffineTransform *)a3 forDisplayConfiguration:(id)a4
{
  v6 = *&a3->c;
  v9 = *&a3->a;
  v10 = v6;
  v11 = *&a3->tx;
  v7 = a4;
  [(PSPointerSystemClientController *)self _setRootWindowTransform:&v9 sceneForIdentifierPrefix:@"com.apple.PointerUI.pointeruid.pointerRenderingScene" displayConfiguration:v7];
  v8 = *&a3->c;
  v9 = *&a3->a;
  v10 = v8;
  v11 = *&a3->tx;
  [(PSPointerSystemClientController *)self _setRootWindowTransform:&v9 sceneForIdentifierPrefix:@"com.apple.PointerUI.pointeruid.systemPointerScene" displayConfiguration:v7];
}

- (void)_setRootWindowTransform:(CGAffineTransform *)a3 sceneForIdentifierPrefix:(id)a4 displayConfiguration:(id)a5
{
  v8 = a4;
  v9 = [(PSPointerSystemClientController *)self _sceneIdentifierForIdentifierPrefix:v8 displayConfiguration:a5];
  v10 = [(FBSceneWorkspace *)self->_sceneWorkspace sceneWithIdentifier:v9];
  v11 = v10;
  if (v10)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __105__PSPointerSystemClientController__setRootWindowTransform_sceneForIdentifierPrefix_displayConfiguration___block_invoke;
    v14[3] = &__block_descriptor_80_e33_v16__0__FBSMutableSceneSettings_8l;
    v12 = *&a3->c;
    v15 = *&a3->a;
    v16 = v12;
    v17 = *&a3->tx;
    [v10 updateSettingsWithBlock:v14];
  }

  else
  {
    v13 = PSLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PSPointerSystemClientController _setRootWindowTransform:v8 sceneForIdentifierPrefix:v13 displayConfiguration:?];
    }
  }
}

void __105__PSPointerSystemClientController__setRootWindowTransform_sceneForIdentifierPrefix_displayConfiguration___block_invoke(_OWORD *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = a1[3];
    v5[0] = a1[2];
    v5[1] = v4;
    v5[2] = a1[4];
    [v3 setRootWindowTransform:v5];
  }
}

- (void)workspace:(id)a3 clientDidConnectWithHandshake:(id)a4
{
  v5 = [a4 handle];
  v6 = [v5 identity];
  v7 = [v6 isEqual:self->_pointerUIDProcessIdentity];

  if (v7)
  {
    v8 = PSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25EA35000, v8, OS_LOG_TYPE_DEFAULT, "pointeruid wants workspace handshake", v10, 2u);
    }

    v9 = [(FBSceneWorkspace *)self->_sceneWorkspace allScenes];
    [v9 enumerateObjectsUsingBlock:&__block_literal_global];
  }
}

void __75__PSPointerSystemClientController_workspace_clientDidConnectWithHandshake___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (([v2 isActive] & 1) == 0)
  {
    v3 = PSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 identifier];
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_25EA35000, v3, OS_LOG_TYPE_DEFAULT, "reactivating scene: %{public}@", &v6, 0xCu);
    }

    [v2 activateWithTransitionContext:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = [(PSPointerSystemClientController *)self delegate];
  [v5 pointerClientController:self sceneDidActivate:v4];
}

- (void)sceneWillDeactivate:(id)a3 withError:(id)a4
{
  v5 = a3;
  v6 = [(PSPointerSystemClientController *)self delegate];
  [v6 pointerClientController:self sceneWillDeactivate:v5];
}

- (PSPointerSystemClientControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_invalidateSceneForIdentifierPrefix:(uint64_t)a1 displayConfiguration:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25EA35000, a2, OS_LOG_TYPE_ERROR, "Could not find scene with %{public}@ to invalidate", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateSceneForIdentifierPrefix:(NSObject *)a3 displayConfiguration:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 hardwareIdentifier];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_25EA35000, a3, OS_LOG_TYPE_ERROR, "Scene workspace is not avaialble when invalidating scene %@ for %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setRootWindowTransform:(uint64_t)a1 sceneForIdentifierPrefix:(NSObject *)a2 displayConfiguration:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25EA35000, a2, OS_LOG_TYPE_ERROR, "Could not find scene with %{public}@ to set root window transform", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end