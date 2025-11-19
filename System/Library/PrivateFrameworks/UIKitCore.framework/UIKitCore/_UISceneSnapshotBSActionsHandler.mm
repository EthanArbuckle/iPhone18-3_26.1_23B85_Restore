@interface _UISceneSnapshotBSActionsHandler
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UISceneSnapshotBSActionsHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 objectsPassingTest:&__block_literal_global_737];
  if ([v12 count] && objc_msgSend(v11, "_hostsWindows"))
  {
    v13 = v11;
    v14 = [(_UISceneSnapshotBSActionsHandler *)self wantsOwnAssertion];
    v15 = [(_UISceneSnapshotBSActionsHandler *)self wantsAsyncSnapshot];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2;
    v22 = &unk_1E70F43C8;
    v26 = v14;
    v23 = v10;
    v24 = v13;
    v25 = v12;
    v27 = v15;
    v16 = v13;
    [v16 _enqueuePostSettingsUpdateResponseBlock:&v19 inPhase:0x1EFB17470];
  }

  v17 = [v9 mutableCopy];
  [v17 minusSet:v12];

  return v17;
}

@end