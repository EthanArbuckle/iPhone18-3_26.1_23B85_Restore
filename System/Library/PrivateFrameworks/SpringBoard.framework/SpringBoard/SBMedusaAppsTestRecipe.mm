@interface SBMedusaAppsTestRecipe
- (SBMedusaAppsTestRecipe)init;
- (void)_toggle;
- (void)_updateAppsToBringUpFromPreferences;
@end

@implementation SBMedusaAppsTestRecipe

- (SBMedusaAppsTestRecipe)init
{
  v8.receiver = self;
  v8.super_class = SBMedusaAppsTestRecipe;
  v2 = [(SBMedusaAppsTestRecipe *)&v8 init];
  if (v2)
  {
    v3 = [@"com.apple.mobilesafari" copy];
    leftTestBundleID = v2->_leftTestBundleID;
    v2->_leftTestBundleID = v3;

    v5 = [@"com.apple.MobileSMS" copy];
    rightTestBundleID = v2->_rightTestBundleID;
    v2->_rightTestBundleID = v5;

    v2->_activated = 0;
  }

  return v2;
}

- (void)_toggle
{
  self->_activated ^= 1u;
  [(SBMedusaAppsTestRecipe *)self _updateAppsToBringUpFromPreferences];
  v3 = +[SBApplicationController sharedInstance];
  v24 = +[SBWorkspace mainWorkspace];
  v4 = [SBDeviceApplicationSceneEntity alloc];
  v5 = [v3 applicationWithBundleIdentifier:self->_rightTestBundleID];
  v6 = [(SBDeviceApplicationSceneEntity *)v4 initWithApplicationForMainDisplay:v5];

  v7 = [SBDeviceApplicationSceneEntity alloc];
  v23 = v3;
  v8 = [v3 applicationWithBundleIdentifier:self->_leftTestBundleID];
  v9 = [(SBDeviceApplicationSceneEntity *)v7 initWithApplicationForMainDisplay:v8];

  v10 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  v11 = [v10 layoutStatePrimaryElement];
  v12 = [v10 layoutStateSideElement];
  v13 = [v11 workspaceEntity];
  v14 = [v12 workspaceEntity];
  if (self->_activated)
  {
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    v16 = v15;
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v6;
    }

    v18 = v17;
    v19 = v6;
  }

  else
  {
    v16 = v13;
    v19 = v6;
    if ([v14 isAnalogousToEntity:v6])
    {
      v18 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    }

    else
    {
      v18 = v14;
    }
  }

  v20 = v9;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __33__SBMedusaAppsTestRecipe__toggle__block_invoke;
  v25[3] = &unk_2783B4C78;
  v26 = v16;
  v27 = v18;
  v21 = v18;
  v22 = v16;
  [v24 requestTransitionWithOptions:0 builder:v25 validator:&__block_literal_global_137];
}

void __33__SBMedusaAppsTestRecipe__toggle__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SBMedusaAppsTestRecipe__toggle__block_invoke_2;
  v4[3] = &unk_2783A96A0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 modifyApplicationContext:v4];
}

void __33__SBMedusaAppsTestRecipe__toggle__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEntity:v3 forLayoutRole:1];
  [v4 setEntity:*(a1 + 40) forLayoutRole:2];
}

- (void)_updateAppsToBringUpFromPreferences
{
  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v11 stringForKey:@"testMedusaAppLeftBundleID"];
  v4 = v3;
  if (!v3)
  {
    v3 = @"com.apple.mobilesafari";
  }

  v5 = [(__CFString *)v3 copy];
  leftTestBundleID = self->_leftTestBundleID;
  self->_leftTestBundleID = v5;

  v7 = [v11 stringForKey:@"testMedusaAppRightBundleID"];
  v8 = v7;
  if (!v7)
  {
    v7 = @"com.apple.MobileSMS";
  }

  v9 = [(__CFString *)v7 copy];
  rightTestBundleID = self->_rightTestBundleID;
  self->_rightTestBundleID = v9;
}

@end