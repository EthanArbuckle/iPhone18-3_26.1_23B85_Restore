@interface _UIApplicationSceneDisplayClientComponent
- (UIEdgeInsets)displayBasedSafeAreaInsets;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UIApplicationSceneDisplayClientComponent

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [UIScene _sceneForFBSScene:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 settingsDiff];
    if ([v7 containsProperty:sel_displayBasedSafeAreaInsetsValue])
    {

LABEL_7:
      v11 = v6;
      v12 = [v5 transitionContext];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69___UIApplicationSceneDisplayClientComponent_scene_didUpdateSettings___block_invoke;
      v14[3] = &unk_1E70F5AC0;
      v15 = v11;
      v13 = v11;
      _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v12, v14, 0);

      goto LABEL_8;
    }

    v9 = [v5 settingsDiff];
    v10 = [v9 containsProperty:sel_interfaceOrientation];

    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Accessibility", &scene_didUpdateSettings____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Unexpected scene for display client component: %@", buf, 0xCu);
    }
  }

LABEL_8:
}

- (UIEdgeInsets)displayBasedSafeAreaInsets
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(FBSSceneComponent *)self clientScene];
  v4 = [v3 settings];
  v5 = [v4 displayBasedSafeAreaInsetsValue];

  if (v5)
  {
    [v5 UIEdgeInsetsValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v14 = [(FBSSceneComponent *)self clientScene];
    v15 = [v14 settings];

    if ([v15 isUISubclass])
    {
      [v15 safeAreaInsetsPortrait];
      v7 = v16;
      v9 = v17;
      v11 = v18;
      v13 = v19;
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Accessibility", &displayBasedSafeAreaInsets___s_category) + 8);
      v13 = 0.0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v25 = 138412290;
        v26 = v15;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_FAULT, "Unexpected settings for display client component: %@", &v25, 0xCu);
      }

      v11 = 0.0;
      v9 = 0.0;
      v7 = 0.0;
    }
  }

  v21 = v7;
  v22 = v9;
  v23 = v11;
  v24 = v13;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

@end