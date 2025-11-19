@interface SBUIAccessorySceneManager
+ (id)sharedInstance;
- (id)_init;
- (id)registerAccessoryScene:(id)a3;
- (id)registerPrimaryScene:(id)a3;
- (void)_configureInitialSettingsForContinuityScene:(id)a3;
- (void)_primarySceneDidUpdateSettings:(id)a3 transitionContext:(id)a4;
- (void)_updateAccessoryScene:(id)a3 followingPrimaryScene:(id)a4 transitionContext:(id)a5;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation SBUIAccessorySceneManager

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[SBUIAccessorySceneManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

uint64_t __43__SBUIAccessorySceneManager_sharedInstance__block_invoke()
{
  v0 = [[SBUIAccessorySceneManager alloc] _init];
  v1 = sharedInstance___sharedInstance_1;
  sharedInstance___sharedInstance_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = SBUIAccessorySceneManager;
  v2 = [(SBUIAccessorySceneManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_accessoryScenes = v3->_lock_accessoryScenes;
    v3->_lock_accessoryScenes = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_primaryScenes = v3->_lock_primaryScenes;
    v3->_lock_primaryScenes = v6;
  }

  return v3;
}

- (id)registerAccessoryScene:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v6 = [v4 identityToken];
  v7 = [v6 stringRepresentation];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__SBUIAccessorySceneManager_registerAccessoryScene___block_invoke;
  v21[3] = &unk_1E789EAE0;
  v21[4] = self;
  v8 = v4;
  v22 = v8;
  v9 = [v5 initWithIdentifier:v7 forReason:@"accessory scene registration" invalidationBlock:v21];

  os_unfair_lock_lock(&self->_lock);
  v10 = [v8 settings];
  v11 = [v10 displayIdentity];

  lock_primaryScenes = self->_lock_primaryScenes;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__SBUIAccessorySceneManager_registerAccessoryScene___block_invoke_2;
  v19[3] = &unk_1E789EB08;
  v13 = v11;
  v20 = v13;
  v14 = [(NSMutableArray *)lock_primaryScenes bs_firstObjectPassingTest:v19];
  [(NSMutableArray *)self->_lock_accessoryScenes addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  v15 = [v8 settings];
  v16 = [v15 displayIdentity];
  v17 = [v16 isContinuityDisplay];

  if (v17)
  {
    [(SBUIAccessorySceneManager *)self _configureInitialSettingsForContinuityScene:v8];
  }

  if (v14)
  {
    [(SBUIAccessorySceneManager *)self _updateAccessoryScene:v8 followingPrimaryScene:v14 transitionContext:0];
  }

  return v9;
}

void __52__SBUIAccessorySceneManager_registerAccessoryScene___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

uint64_t __52__SBUIAccessorySceneManager_registerAccessoryScene___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 settings];
  v4 = [v3 displayIdentity];
  v5 = [v2 isEqual:v4];

  return v5;
}

- (id)registerPrimaryScene:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v6 = [v4 identityToken];
  v7 = [v6 stringRepresentation];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __50__SBUIAccessorySceneManager_registerPrimaryScene___block_invoke;
  v17 = &unk_1E789EAE0;
  v18 = self;
  v8 = v4;
  v19 = v8;
  v9 = [v5 initWithIdentifier:v7 forReason:@"primary scene registration" invalidationBlock:&v14];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_lock_primaryScenes addObject:v8, v14, v15, v16, v17, v18];
  os_unfair_lock_unlock(&self->_lock);
  [v8 addObserver:self];
  v10 = [v8 settings];
  v11 = [v10 displayIdentity];
  v12 = [v11 isContinuityDisplay];

  if (v12)
  {
    [(SBUIAccessorySceneManager *)self _configureInitialSettingsForContinuityScene:v8];
  }

  [(SBUIAccessorySceneManager *)self _primarySceneDidUpdateSettings:v8 transitionContext:0];

  return v9;
}

uint64_t __50__SBUIAccessorySceneManager_registerPrimaryScene___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 removeObserver:v3];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = [a4 transitionContext];
  [(SBUIAccessorySceneManager *)self _primarySceneDidUpdateSettings:v6 transitionContext:v7];
}

- (void)_primarySceneDidUpdateSettings:(id)a3 transitionContext:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableArray *)self->_lock_accessoryScenes copy];
  v8 = self;
  os_unfair_lock_unlock(&self->_lock);
  v20 = v6;
  v9 = [v6 settings];
  v10 = [v9 displayIdentity];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 settings];
        v18 = [v17 displayIdentity];
        v19 = [v10 isEqual:v18];

        if (v19)
        {
          [(SBUIAccessorySceneManager *)v8 _updateAccessoryScene:v16 followingPrimaryScene:v20 transitionContext:v21];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }
}

- (void)_configureInitialSettingsForContinuityScene:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__SBUIAccessorySceneManager__configureInitialSettingsForContinuityScene___block_invoke;
  v5[3] = &unk_1E789EB30;
  v6 = v3;
  v4 = v3;
  [v4 updateSettings:v5];
}

void __73__SBUIAccessorySceneManager__configureInitialSettingsForContinuityScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTargetOfEventDeferringEnvironments:0];
  [v3 setInterfaceOrientationMode:100];
  [v3 setInterfaceOrientation:1];
  [v3 setEnhancedWindowingEnabled:1];
  _SBUIApplyDisplayEdgeInfo(v3);
  v8 = [v3 displayConfiguration];

  v4 = [*(a1 + 32) _keyboardHostComponent];
  v5 = [v8 hardwareIdentifier];
  [v4 setHardwareKeyboardExclusivityIdentifier:v5];

  v6 = [*(a1 + 32) systemShellHostingEnvironment];
  v7 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration(v8);
  [v6 setSystemShellHostingSpaceIdentifier:v7];
}

- (void)_updateAccessoryScene:(id)a3 followingPrimaryScene:(id)a4 transitionContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v32 = a5;
  v9 = [v8 uiSettings];
  v10 = [v9 userInterfaceStyle];

  v11 = [v8 uiSettings];
  v12 = [v11 cornerRadiusConfiguration];

  v13 = [v8 renderingEnvironment];
  v14 = [v13 systemDisplayIdentifier];

  v15 = [v8 systemShellHostingEnvironment];
  v16 = [v15 systemShellHostingSpaceIdentifier];

  v17 = [v8 renderingEnvironment];
  LOBYTE(v15) = [v17 isCapturingContentForAdditionalRenderingDestination];

  v18 = [v8 settings];
  v19 = [v18 displayConfiguration];
  v20 = [v19 hardwareIdentifier];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __91__SBUIAccessorySceneManager__updateAccessoryScene_followingPrimaryScene_transitionContext___block_invoke;
  v38[3] = &unk_1E789EB58;
  v45 = v10;
  v21 = v12;
  v39 = v21;
  v22 = v7;
  v40 = v22;
  v23 = v14;
  v41 = v23;
  v24 = v16;
  v42 = v24;
  v25 = v8;
  v43 = v25;
  v46 = v15;
  v26 = v20;
  v44 = v26;
  v27 = MEMORY[0x1AC58E960](v38);
  if ([v22 isActive])
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __91__SBUIAccessorySceneManager__updateAccessoryScene_followingPrimaryScene_transitionContext___block_invoke_2;
    v35[3] = &unk_1E789EB80;
    v28 = &v37;
    v37 = v27;
    v29 = v32;
    v36 = v32;
    v30 = v27;
    [v22 performUpdate:v35];
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __91__SBUIAccessorySceneManager__updateAccessoryScene_followingPrimaryScene_transitionContext___block_invoke_3;
    v33[3] = &unk_1E789EBA8;
    v28 = &v34;
    v34 = v27;
    v31 = v27;
    [v22 updateSettings:v33];
    v29 = v32;
  }
}

void __91__SBUIAccessorySceneManager__updateAccessoryScene_followingPrimaryScene_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  v4 = a2;
  [v4 setUserInterfaceStyle:v3];
  [v4 setCornerRadiusConfiguration:*(a1 + 32)];

  v5 = [*(a1 + 40) renderingEnvironment];
  [v5 setSystemDisplayIdentifier:*(a1 + 48)];

  v6 = [*(a1 + 40) systemShellHostingEnvironment];
  [v6 setSystemShellHostingSpaceIdentifier:*(a1 + 56)];

  v7 = [*(a1 + 64) settings];
  v8 = [v7 displayIdentity];
  v9 = [v8 isContinuityDisplay];

  if (v9)
  {
    v10 = [*(a1 + 40) renderingEnvironment];
    [v10 setIsCapturingContentForAdditionalRenderingDestination:*(a1 + 88)];

    v11 = [*(a1 + 40) _keyboardHostComponent];
    [v11 setHardwareKeyboardExclusivityIdentifier:*(a1 + 72)];
  }
}

void __91__SBUIAccessorySceneManager__updateAccessoryScene_followingPrimaryScene_transitionContext___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) animationSettings];
  if (v4)
  {
    [v6 setAnimationSettings:v4];
  }

  v5 = [*(a1 + 32) animationFence];
  if (v5)
  {
    [v6 setAnimationFence:v5];
  }
}

@end