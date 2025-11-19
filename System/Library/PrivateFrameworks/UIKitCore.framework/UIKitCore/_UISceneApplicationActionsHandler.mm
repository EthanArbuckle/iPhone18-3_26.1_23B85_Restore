@interface _UISceneApplicationActionsHandler
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UISceneApplicationActionsHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v12 isUISubclass])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = +[_UISceneLifecycleMultiplexer sharedInstance];
  if ([v14 lifecycleWantsUnnecessaryDelayForSceneDelivery] && (objc_msgSend(v14, "activatedOnce") & 1) == 0)
  {
    v15 = UIApp;
    v16 = [UIApp _workspace];
    [v15 workspace:v16 didReceiveActions:v9];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99___UISceneApplicationActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke;
    v19[3] = &unk_1E70F6228;
    v20 = v9;
    v21 = v10;
    v22 = v13;
    [v11 _enqueuePostSettingsUpdateResponseBlock:v19 inPhase:0x1EFB17450];
  }

  v17 = [MEMORY[0x1E695DFD8] set];

  return v17;
}

@end