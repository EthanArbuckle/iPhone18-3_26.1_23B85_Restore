@interface _UISceneSafeAreaClientComponent
- (BOOL)safeAreaEdgeInsetsPopulated;
- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)orientation;
- (_UICornerInsets)safeAreaCornerInsetsForOrientation:(SEL)orientation;
- (id)settings;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)updateSettings:(id)settings;
@end

@implementation _UISceneSafeAreaClientComponent

- (BOOL)safeAreaEdgeInsetsPopulated
{
  settings = [(_UISceneSafeAreaClientComponent *)self settings];
  v3 = [settings valueForProperty:sel_safeAreaEdgeInsetResolver expectedClass:objc_opt_class()];
  v4 = v3 != 0;

  return v4;
}

- (id)settings
{
  scene = [(FBSSceneComponent *)self scene];
  settings = [scene settings];

  return settings;
}

- (void)updateSettings:(id)settings
{
  settingsCopy = settings;
  hostScene = [(FBSSceneComponent *)self hostScene];
  [hostScene updateSettings:settingsCopy];
}

- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)orientation
{
  settings = [(_UISceneSafeAreaClientComponent *)self settings];
  safeAreaEdgeInsetResolver = [settings safeAreaEdgeInsetResolver];

  if (safeAreaEdgeInsetResolver)
  {
    settings2 = [(_UISceneSafeAreaClientComponent *)self settings];
    safeAreaEdgeInsetResolver2 = [settings2 safeAreaEdgeInsetResolver];
    [safeAreaEdgeInsetResolver2 safeAreaEdgeInsetsForOrientation:orientation];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (_UICornerInsets)safeAreaCornerInsetsForOrientation:(SEL)orientation
{
  settings = [(_UISceneSafeAreaClientComponent *)self settings];
  safeAreaCornerInsetResolver = [settings safeAreaCornerInsetResolver];

  if (safeAreaCornerInsetResolver)
  {
    settings2 = [(_UISceneSafeAreaClientComponent *)self settings];
    safeAreaCornerInsetResolver2 = [settings2 safeAreaCornerInsetResolver];
    v11 = safeAreaCornerInsetResolver2;
    if (safeAreaCornerInsetResolver2)
    {
      [safeAreaCornerInsetResolver2 safeAreaCornerInsetsForOrientation:a4];
    }

    else
    {
      retstr->bottomRight = 0u;
      retstr->topRight = 0u;
      retstr->topLeft = 0u;
      retstr->bottomLeft = 0u;
    }
  }

  else
  {
    retstr->bottomRight = 0u;
    retstr->topRight = 0u;
    retstr->topLeft = 0u;
    retstr->bottomLeft = 0u;
  }

  return result;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v8 = [settingsDiff containsProperty:sel_safeAreaEdgeInsetResolver];

  settingsDiff2 = [settingsCopy settingsDiff];
  v10 = [settingsDiff2 containsProperty:sel_safeAreaCornerInsetResolver];

  if ((v8 & 1) != 0 || v10)
  {
    transitionContext = [settingsCopy transitionContext];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59___UISceneSafeAreaClientComponent_scene_didUpdateSettings___block_invoke;
    v12[3] = &unk_1E7123860;
    v13 = sceneCopy;
    v14 = v8;
    v15 = v10;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(transitionContext, v12, 0);
  }
}

@end