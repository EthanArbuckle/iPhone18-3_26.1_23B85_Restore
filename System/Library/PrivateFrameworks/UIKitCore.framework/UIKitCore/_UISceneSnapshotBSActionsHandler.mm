@interface _UISceneSnapshotBSActionsHandler
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UISceneSnapshotBSActionsHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  actionsCopy = actions;
  sceneCopy = scene;
  iSceneCopy = iScene;
  v12 = [actionsCopy objectsPassingTest:&__block_literal_global_737];
  if ([v12 count] && objc_msgSend(iSceneCopy, "_hostsWindows"))
  {
    v13 = iSceneCopy;
    wantsOwnAssertion = [(_UISceneSnapshotBSActionsHandler *)self wantsOwnAssertion];
    wantsAsyncSnapshot = [(_UISceneSnapshotBSActionsHandler *)self wantsAsyncSnapshot];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2;
    v22 = &unk_1E70F43C8;
    v26 = wantsOwnAssertion;
    v23 = sceneCopy;
    v24 = v13;
    v25 = v12;
    v27 = wantsAsyncSnapshot;
    v16 = v13;
    [v16 _enqueuePostSettingsUpdateResponseBlock:&v19 inPhase:0x1EFB17470];
  }

  v17 = [actionsCopy mutableCopy];
  [v17 minusSet:v12];

  return v17;
}

@end