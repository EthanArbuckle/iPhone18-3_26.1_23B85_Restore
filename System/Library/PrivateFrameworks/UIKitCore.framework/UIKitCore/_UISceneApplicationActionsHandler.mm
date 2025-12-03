@interface _UISceneApplicationActionsHandler
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UISceneApplicationActionsHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  actionsCopy = actions;
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  if ([contextCopy isUISubclass])
  {
    v13 = contextCopy;
  }

  else
  {
    v13 = 0;
  }

  v14 = +[_UISceneLifecycleMultiplexer sharedInstance];
  if ([v14 lifecycleWantsUnnecessaryDelayForSceneDelivery] && (objc_msgSend(v14, "activatedOnce") & 1) == 0)
  {
    v15 = UIApp;
    _workspace = [UIApp _workspace];
    [v15 workspace:_workspace didReceiveActions:actionsCopy];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99___UISceneApplicationActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke;
    v19[3] = &unk_1E70F6228;
    v20 = actionsCopy;
    v21 = sceneCopy;
    v22 = v13;
    [iSceneCopy _enqueuePostSettingsUpdateResponseBlock:v19 inPhase:0x1EFB17450];
  }

  v17 = [MEMORY[0x1E695DFD8] set];

  return v17;
}

@end