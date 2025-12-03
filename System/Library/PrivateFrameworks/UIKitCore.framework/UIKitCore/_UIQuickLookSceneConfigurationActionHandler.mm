@interface _UIQuickLookSceneConfigurationActionHandler
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
@end

@implementation _UIQuickLookSceneConfigurationActionHandler

- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context
{
  actionsCopy = actions;
  sceneCopy = scene;
  sessionCopy = session;
  contextCopy = context;
  v13 = actionsCopy;
  scene = [sessionCopy scene];

  v15 = v13;
  if (!scene)
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
      loadSceneConfiguration = [v16 loadSceneConfiguration];
      v15 = v13;
      if (loadSceneConfiguration)
      {
        [sessionCopy _updateConfiguration:loadSceneConfiguration];
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