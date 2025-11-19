@interface _UIQuickLookSceneConfigurationActionHandler
- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6;
@end

@implementation _UIQuickLookSceneConfigurationActionHandler

- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v9;
  v14 = [v11 scene];

  v15 = v13;
  if (!v14)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__96;
    v26 = __Block_byref_object_dispose__96;
    v27 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __118___UIQuickLookSceneConfigurationActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke;
    v21[3] = &unk_1E7109F70;
    v21[4] = &v22;
    [v13 enumerateObjectsUsingBlock:v21];
    v16 = v23[5];
    v15 = v13;
    if (v16)
    {
      v17 = [v16 loadSceneConfiguration];
      v15 = v13;
      if (v17)
      {
        [v11 _updateConfiguration:v17];
        v18 = [v13 mutableCopy];
        [v18 removeObject:v23[5]];
        v15 = [v18 copy];
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  v19 = objc_alloc_init(_UISceneConnectionOptionsContext);
  [(_UISceneConnectionOptionsContext *)v19 setUnprocessedActions:v15];

  return v19;
}

@end