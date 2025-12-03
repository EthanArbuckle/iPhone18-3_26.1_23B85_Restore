@interface SBUIAccessorySceneManager
+ (id)sharedInstance;
- (id)_init;
- (id)registerAccessoryScene:(id)scene;
- (id)registerPrimaryScene:(id)scene;
- (void)_configureInitialSettingsForContinuityScene:(id)scene;
- (void)_primarySceneDidUpdateSettings:(id)settings transitionContext:(id)context;
- (void)_updateAccessoryScene:(id)scene followingPrimaryScene:(id)primaryScene transitionContext:(id)context;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
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

- (id)registerAccessoryScene:(id)scene
{
  sceneCopy = scene;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  identityToken = [sceneCopy identityToken];
  stringRepresentation = [identityToken stringRepresentation];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__SBUIAccessorySceneManager_registerAccessoryScene___block_invoke;
  v21[3] = &unk_1E789EAE0;
  v21[4] = self;
  v8 = sceneCopy;
  v22 = v8;
  v9 = [v5 initWithIdentifier:stringRepresentation forReason:@"accessory scene registration" invalidationBlock:v21];

  os_unfair_lock_lock(&self->_lock);
  settings = [v8 settings];
  displayIdentity = [settings displayIdentity];

  lock_primaryScenes = self->_lock_primaryScenes;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__SBUIAccessorySceneManager_registerAccessoryScene___block_invoke_2;
  v19[3] = &unk_1E789EB08;
  v13 = displayIdentity;
  v20 = v13;
  v14 = [(NSMutableArray *)lock_primaryScenes bs_firstObjectPassingTest:v19];
  [(NSMutableArray *)self->_lock_accessoryScenes addObject:v8];
  os_unfair_lock_unlock(&self->_lock);
  settings2 = [v8 settings];
  displayIdentity2 = [settings2 displayIdentity];
  isContinuityDisplay = [displayIdentity2 isContinuityDisplay];

  if (isContinuityDisplay)
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

- (id)registerPrimaryScene:(id)scene
{
  sceneCopy = scene;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  identityToken = [sceneCopy identityToken];
  stringRepresentation = [identityToken stringRepresentation];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __50__SBUIAccessorySceneManager_registerPrimaryScene___block_invoke;
  v17 = &unk_1E789EAE0;
  selfCopy = self;
  v8 = sceneCopy;
  v19 = v8;
  v9 = [v5 initWithIdentifier:stringRepresentation forReason:@"primary scene registration" invalidationBlock:&v14];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_lock_primaryScenes addObject:v8, v14, v15, v16, v17, selfCopy];
  os_unfair_lock_unlock(&self->_lock);
  [v8 addObserver:self];
  settings = [v8 settings];
  displayIdentity = [settings displayIdentity];
  isContinuityDisplay = [displayIdentity isContinuityDisplay];

  if (isContinuityDisplay)
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

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  transitionContext = [settings transitionContext];
  [(SBUIAccessorySceneManager *)self _primarySceneDidUpdateSettings:sceneCopy transitionContext:transitionContext];
}

- (void)_primarySceneDidUpdateSettings:(id)settings transitionContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableArray *)self->_lock_accessoryScenes copy];
  selfCopy = self;
  os_unfair_lock_unlock(&self->_lock);
  v20 = settingsCopy;
  settings = [settingsCopy settings];
  displayIdentity = [settings displayIdentity];

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
        settings2 = [v16 settings];
        displayIdentity2 = [settings2 displayIdentity];
        v19 = [displayIdentity isEqual:displayIdentity2];

        if (v19)
        {
          [(SBUIAccessorySceneManager *)selfCopy _updateAccessoryScene:v16 followingPrimaryScene:v20 transitionContext:contextCopy];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }
}

- (void)_configureInitialSettingsForContinuityScene:(id)scene
{
  sceneCopy = scene;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__SBUIAccessorySceneManager__configureInitialSettingsForContinuityScene___block_invoke;
  v5[3] = &unk_1E789EB30;
  v6 = sceneCopy;
  v4 = sceneCopy;
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

- (void)_updateAccessoryScene:(id)scene followingPrimaryScene:(id)primaryScene transitionContext:(id)context
{
  sceneCopy = scene;
  primarySceneCopy = primaryScene;
  contextCopy = context;
  uiSettings = [primarySceneCopy uiSettings];
  userInterfaceStyle = [uiSettings userInterfaceStyle];

  uiSettings2 = [primarySceneCopy uiSettings];
  cornerRadiusConfiguration = [uiSettings2 cornerRadiusConfiguration];

  renderingEnvironment = [primarySceneCopy renderingEnvironment];
  systemDisplayIdentifier = [renderingEnvironment systemDisplayIdentifier];

  systemShellHostingEnvironment = [primarySceneCopy systemShellHostingEnvironment];
  systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];

  renderingEnvironment2 = [primarySceneCopy renderingEnvironment];
  LOBYTE(systemShellHostingEnvironment) = [renderingEnvironment2 isCapturingContentForAdditionalRenderingDestination];

  settings = [primarySceneCopy settings];
  displayConfiguration = [settings displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __91__SBUIAccessorySceneManager__updateAccessoryScene_followingPrimaryScene_transitionContext___block_invoke;
  v38[3] = &unk_1E789EB58;
  v45 = userInterfaceStyle;
  v21 = cornerRadiusConfiguration;
  v39 = v21;
  v22 = sceneCopy;
  v40 = v22;
  v23 = systemDisplayIdentifier;
  v41 = v23;
  v24 = systemShellHostingSpaceIdentifier;
  v42 = v24;
  v25 = primarySceneCopy;
  v43 = v25;
  v46 = systemShellHostingEnvironment;
  v26 = hardwareIdentifier;
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
    v29 = contextCopy;
    v36 = contextCopy;
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
    v29 = contextCopy;
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