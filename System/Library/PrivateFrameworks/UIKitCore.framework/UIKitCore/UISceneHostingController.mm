@interface UISceneHostingController
@end

@implementation UISceneHostingController

uint64_t __39___UISceneHostingController_initialize__block_invoke()
{
  objc_opt_class();

  return _class_setCustomDeallocInitiation();
}

void __58___UISceneHostingController_createSceneWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sceneIdentifier];
  [v4 setIdentifier:v5];

  v6 = [*(a1 + 32) sceneSpecification];
  [v4 setSpecification:v6];

  v7 = [*(a1 + 32) clientIdentity];
  [v4 setClientIdentity:v7];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___UISceneHostingController_createSceneWithConfiguration___block_invoke_2;
  v8[3] = &unk_1E7118688;
  v9 = *(a1 + 32);
  [v4 configureParameters:v8];
}

void __58___UISceneHostingController_createSceneWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) initialSettingsUpdater];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [*(a1 + 32) initialSettingsUpdater];
    (v5)[2](v5, v4);

    [v9 applySettings:v4];
  }

  v6 = [*(a1 + 32) initialClientSettingsUpdater];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [*(a1 + 32) initialClientSettingsUpdater];
    (v8)[2](v8, v7);

    [v9 applyClientSettings:v7];
  }
}

void __58___UISceneHostingController_createSceneWithConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addPropagatedProperty:sel_isForeground];
  [v2 addPropagatedProperty:sel_deactivationReasons];
  [v2 addPropagatedProperty:sel_displayConfiguration];
  [v2 addPropagatedProperty:sel_enhancedWindowingEnabled];
  [v2 addPropagatedProperty:sel_hostReferenceAngleMode];
  [v2 addPropagatedProperty:sel_angleFromHostReferenceUprightDirection];
  [v2 addPropagatedProperty:sel_screenReferenceDisplayModeStatus];
  [v2 addPropagatedProperty:sel_userInterfaceStyle];
  if ([v2 isUISubclass])
  {
    [v2 setInterfaceOrientationMode:2];
  }
}

void __80___UISceneHostingController__updateSceneSettingsFromSettingsProvidersWithFence___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(*(a1 + 32) + 48) applyViewGeometryToSettings:a2];
  if (*(a1 + 40) == 1)
  {
    if (+[UIView areAnimationsEnabled])
    {
      v5 = +[UIView _currentAnimationSettings];
      [v7 setAnimationSettings:v5];
    }

    else
    {
      [v7 setAnimationSettings:0];
    }

    v6 = +[UIScene _synchronizedDrawingFence];
    [v7 setAnimationFence:v6];
  }
}

void __56___UISceneHostingController_sceneContentStateDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clientIsReady];
}

void __55___UISceneHostingController_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 40) identifier];
  v4 = [v2 appendObject:v3 withName:0];

  if ([*(*(a1 + 40) + 40) isValid])
  {
    v5 = [*(a1 + 32) appendBool:objc_msgSend(*(*(a1 + 40) + 40) withName:{"isActive"), @"active"}];
    v6 = *(a1 + 32);
    v9 = [*(*(a1 + 40) + 40) settings];
    v7 = [v6 appendBool:objc_msgSend(v9 withName:{"isForeground"), @"foreground"}];
  }

  else
  {
    v8 = [*(a1 + 32) appendBool:0 withName:@"valid"];
  }
}

void __55___UISceneHostingController_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E698E690] succinctStyle];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __55___UISceneHostingController_appendDescriptionToStream___block_invoke_3;
  v10 = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v4;
  v12 = v5;
  [v2 overlayStyle:v3 block:&v7];

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:{@"scene", v7, v8, v9, v10}];
}

@end