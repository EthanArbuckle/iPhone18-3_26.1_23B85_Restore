@interface BLSBacklightFBSSceneEnvironment(UIKit)
- (_UIBacklightNullEnvironment)initWithScene:()UIKit;
- (id)_actionRespondersForScene:()UIKit;
- (id)_scene;
- (id)_settingsDiffActionsForScene:()UIKit;
- (void)_setScene:()UIKit;
@end

@implementation BLSBacklightFBSSceneEnvironment(UIKit)

- (_UIBacklightNullEnvironment)initWithScene:()UIKit
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _FBSScene = [v4 _FBSScene];
  if (_FBSScene)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__BLSBacklightFBSSceneEnvironment_UIKit__initWithScene___block_invoke;
    v10[3] = &unk_1E711F5C8;
    v11 = v4;
    selfCopy = self;
    v13 = _FBSScene;
    v6 = [v13 backlightSceneEnvironmentWithCreationBlock:v10];

    v7 = v11;
  }

  else
  {
    v6 = [[_UIBacklightNullEnvironment alloc] initWithScene:v4];
    v7 = bls_scenes_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 debugDescription];
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_INFO, "created environment:%@ scene:%@ which has nil FBSScene - this environment will not non-functional", buf, 0x16u);
    }
  }

  return v6;
}

- (id)_scene
{
  _FBSScene = [self _FBSScene];
  v2 = [UIScene _sceneForFBSScene:_FBSScene];

  return v2;
}

- (void)_setScene:()UIKit
{
  _FBSScene = [a3 _FBSScene];
  if (_FBSScene)
  {
    _FBSScene2 = [self _FBSScene];

    if (_FBSScene != _FBSScene2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      _FBSScene3 = [self _FBSScene];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BLSBacklightFBSSceneEnvironment+UIKit.m" lineNumber:74 description:{@"unexpectedly scene changed from %@ to %@", _FBSScene3, _FBSScene}];
    }
  }

  [self _setFBSScene:_FBSScene];
}

- (id)_settingsDiffActionsForScene:()UIKit
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = bls_scenes_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_188A29000, v0, OS_LOG_TYPE_DEBUG, "BLSBacklightFBSSceneEnvironment (BacklightUIServices) _settingsDiffActionsForScene", v4, 2u);
  }

  v1 = objc_alloc_init(_UIBacklightUISceneEnvironmentDiffAction);
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v2;
}

- (id)_actionRespondersForScene:()UIKit
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = bls_scenes_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_188A29000, v0, OS_LOG_TYPE_DEBUG, "BLSBacklightFBSSceneEnvironment (BacklightUIServices) _actionRespondersForScene", v4, 2u);
  }

  v1 = objc_alloc_init(_UIBacklightUISceneEnvironmentActionHandler);
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v2;
}

@end