@interface SBWindowSceneAccessorySceneProvider
+ (id)sceneWorkspace;
- (SBWindowSceneAccessorySceneProvider)initWithSBWindowScene:(id)a3;
- (id)createAccessoryWindowSceneWithSpecification:(id)a3;
- (id)fbSceneForAccessoryWindowScene:(id)a3;
- (void)destroyAccessoryWindowScene:(id)a3;
@end

@implementation SBWindowSceneAccessorySceneProvider

+ (id)sceneWorkspace
{
  if (sceneWorkspace_onceToken != -1)
  {
    +[SBWindowSceneAccessorySceneProvider sceneWorkspace];
  }

  v3 = sceneWorkspace_sceneWorkspace;

  return v3;
}

void __53__SBWindowSceneAccessorySceneProvider_sceneWorkspace__block_invoke()
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBWindowSceneAccessorySceneProvider_SBWindowScene"];
  v0 = [objc_alloc(MEMORY[0x277D0AAE8]) initWithIdentifier:v2];
  v1 = sceneWorkspace_sceneWorkspace;
  sceneWorkspace_sceneWorkspace = v0;
}

- (SBWindowSceneAccessorySceneProvider)initWithSBWindowScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBWindowSceneAccessorySceneProvider;
  v5 = [(SBWindowSceneAccessorySceneProvider *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sbWindowScene, v4);
    v7 = [objc_opt_class() sceneWorkspace];
    sceneWorkspace = v6->_sceneWorkspace;
    v6->_sceneWorkspace = v7;
  }

  return v6;
}

- (id)createAccessoryWindowSceneWithSpecification:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  sceneWorkspace = self->_sceneWorkspace;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__SBWindowSceneAccessorySceneProvider_createAccessoryWindowSceneWithSpecification___block_invoke;
  v20[3] = &unk_2783BEAE0;
  v7 = v4;
  v21 = v7;
  v22 = self;
  v8 = [(FBSceneWorkspace *)sceneWorkspace createScene:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SBWindowSceneAccessorySceneProvider_createAccessoryWindowSceneWithSpecification___block_invoke_2;
  v18[3] = &unk_2783B4630;
  v9 = WeakRetained;
  v19 = v9;
  [v8 configureParameters:v18];
  [v8 activateWithTransitionContext:0];
  v10 = [v8 _localComponent];
  v11 = [v10 associatedClientScene];
  v12 = [v11 delegate];
  v13 = objc_opt_class();
  v14 = v12;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  [v16 setAssociatedWindowScene:v9];

  return v16;
}

void __83__SBWindowSceneAccessorySceneProvider_createAccessoryWindowSceneWithSpecification___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSpecification:v3];
  v5 = [MEMORY[0x277D0ADA8] localIdentity];
  [v4 setClientIdentity:v5];

  v9 = [*(*(a1 + 40) + 16) identifier];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v9, v7];
  [v4 setIdentifier:v8];
}

void __83__SBWindowSceneAccessorySceneProvider_createAccessoryWindowSceneWithSpecification___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__SBWindowSceneAccessorySceneProvider_createAccessoryWindowSceneWithSpecification___block_invoke_3;
  v3[3] = &unk_2783ACB10;
  v4 = *(a1 + 32);
  [a2 updateSettingsWithBlock:v3];
}

void __83__SBWindowSceneAccessorySceneProvider_createAccessoryWindowSceneWithSpecification___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v10 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v10;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setInterfaceOrientation:1];
  v7 = [*(a1 + 32) _FBSScene];
  v8 = [v7 settings];
  v9 = [v8 displayConfiguration];

  [v6 setDisplayConfiguration:v9];
  [v6 setForeground:1];
  [v9 bounds];
  [v6 setFrame:?];
  [v6 setInterruptionPolicy:3];
  [v6 setInterfaceOrientationMode:100];
}

- (id)fbSceneForAccessoryWindowScene:(id)a3
{
  v3 = [a3 _FBSScene];
  v4 = [v3 _localComponent];
  v5 = [v4 associatedHostScene];

  return v5;
}

- (void)destroyAccessoryWindowScene:(id)a3
{
  v3 = [(SBWindowSceneAccessorySceneProvider *)self fbSceneForAccessoryWindowScene:a3];
  [v3 updateSettingsWithBlock:&__block_literal_global_42_5];
  [v3 invalidate];
}

@end