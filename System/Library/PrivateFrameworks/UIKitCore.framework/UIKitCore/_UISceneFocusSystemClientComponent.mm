@interface _UISceneFocusSystemClientComponent
- (BOOL)isHostAssertingActiveFocusSystem;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UISceneFocusSystemClientComponent

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v18 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v7 = [settingsDiff containsProperty:sel_isHostAssertingActiveFocusSystem];

  if (v7)
  {
    settings = [settingsCopy settings];
    isHostAssertingActiveFocusSystem = [settings isHostAssertingActiveFocusSystem];

    v10 = *(__UILogGetCategoryCachedImpl("_UISceneFocusSystemClientComponent", &scene_didUpdateSettings____s_category_1) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"DISABLED";
      if (isHostAssertingActiveFocusSystem)
      {
        v11 = @"ENABLED";
      }

      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Received updated value for isHostAssertingActiveFocusSystem: (%@)", &v16, 0xCu);
    }

    if (self)
    {
      clientScene = [(FBSSceneComponent *)self clientScene];
      v13 = [UIScene _sceneForFBSScene:clientScene];

      _focusSystemSceneComponent = [v13 _focusSystemSceneComponent];
      sceneHostAssertionObserver = [_focusSystemSceneComponent sceneHostAssertionObserver];
      [sceneHostAssertionObserver performUpdatesAndNotifyObservers:&__block_literal_global_616];
    }
  }
}

- (BOOL)isHostAssertingActiveFocusSystem
{
  scene = [(FBSSceneComponent *)self scene];
  settings = [scene settings];
  isHostAssertingActiveFocusSystem = [settings isHostAssertingActiveFocusSystem];

  return isHostAssertingActiveFocusSystem;
}

@end