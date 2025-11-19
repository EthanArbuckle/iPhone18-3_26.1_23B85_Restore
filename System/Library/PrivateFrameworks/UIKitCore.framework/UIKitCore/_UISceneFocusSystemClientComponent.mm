@interface _UISceneFocusSystemClientComponent
- (BOOL)isHostAssertingActiveFocusSystem;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneFocusSystemClientComponent

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 settingsDiff];
  v7 = [v6 containsProperty:sel_isHostAssertingActiveFocusSystem];

  if (v7)
  {
    v8 = [v5 settings];
    v9 = [v8 isHostAssertingActiveFocusSystem];

    v10 = *(__UILogGetCategoryCachedImpl("_UISceneFocusSystemClientComponent", &scene_didUpdateSettings____s_category_1) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"DISABLED";
      if (v9)
      {
        v11 = @"ENABLED";
      }

      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Received updated value for isHostAssertingActiveFocusSystem: (%@)", &v16, 0xCu);
    }

    if (self)
    {
      v12 = [(FBSSceneComponent *)self clientScene];
      v13 = [UIScene _sceneForFBSScene:v12];

      v14 = [v13 _focusSystemSceneComponent];
      v15 = [v14 sceneHostAssertionObserver];
      [v15 performUpdatesAndNotifyObservers:&__block_literal_global_616];
    }
  }
}

- (BOOL)isHostAssertingActiveFocusSystem
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 settings];
  v4 = [v3 isHostAssertingActiveFocusSystem];

  return v4;
}

@end