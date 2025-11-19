@interface _UISceneSafeAreaClientComponent
- (BOOL)safeAreaEdgeInsetsPopulated;
- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)a3;
- (_UICornerInsets)safeAreaCornerInsetsForOrientation:(SEL)a3;
- (id)settings;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)updateSettings:(id)a3;
@end

@implementation _UISceneSafeAreaClientComponent

- (BOOL)safeAreaEdgeInsetsPopulated
{
  v2 = [(_UISceneSafeAreaClientComponent *)self settings];
  v3 = [v2 valueForProperty:sel_safeAreaEdgeInsetResolver expectedClass:objc_opt_class()];
  v4 = v3 != 0;

  return v4;
}

- (id)settings
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 settings];

  return v3;
}

- (void)updateSettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  [v5 updateSettings:v4];
}

- (UIEdgeInsets)safeAreaEdgeInsetsForOrientation:(int64_t)a3
{
  v5 = [(_UISceneSafeAreaClientComponent *)self settings];
  v6 = [v5 safeAreaEdgeInsetResolver];

  if (v6)
  {
    v7 = [(_UISceneSafeAreaClientComponent *)self settings];
    v8 = [v7 safeAreaEdgeInsetResolver];
    [v8 safeAreaEdgeInsetsForOrientation:a3];
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

- (_UICornerInsets)safeAreaCornerInsetsForOrientation:(SEL)a3
{
  v7 = [(_UISceneSafeAreaClientComponent *)self settings];
  v8 = [v7 safeAreaCornerInsetResolver];

  if (v8)
  {
    v12 = [(_UISceneSafeAreaClientComponent *)self settings];
    v10 = [v12 safeAreaCornerInsetResolver];
    v11 = v10;
    if (v10)
    {
      [v10 safeAreaCornerInsetsForOrientation:a4];
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

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 settingsDiff];
  v8 = [v7 containsProperty:sel_safeAreaEdgeInsetResolver];

  v9 = [v6 settingsDiff];
  v10 = [v9 containsProperty:sel_safeAreaCornerInsetResolver];

  if ((v8 & 1) != 0 || v10)
  {
    v11 = [v6 transitionContext];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59___UISceneSafeAreaClientComponent_scene_didUpdateSettings___block_invoke;
    v12[3] = &unk_1E7123860;
    v13 = v5;
    v14 = v8;
    v15 = v10;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v11, v12, 0);
  }
}

@end