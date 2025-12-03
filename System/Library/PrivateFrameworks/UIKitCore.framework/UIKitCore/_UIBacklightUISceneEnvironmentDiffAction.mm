@interface _UIBacklightUISceneEnvironmentDiffAction
- (_UIBacklightUISceneEnvironmentDiffAction)init;
- (void)performChangesWithTransitionContext:(id)context environmentDelta:(id)delta performActionsBlock:(id)block;
@end

@implementation _UIBacklightUISceneEnvironmentDiffAction

- (_UIBacklightUISceneEnvironmentDiffAction)init
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIBacklightUISceneEnvironmentDiffAction;
  v2 = [(_UIBacklightUISceneEnvironmentDiffAction *)&v7 init];
  if (v2)
  {
    v3 = bls_scenes_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = v2;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "create BLSBacklightUISceneEnvironmentDiffAction:%@", buf, 0xCu);
    }

    v4 = objc_alloc_init(MEMORY[0x1E698E538]);
    fbsSceneEnvironmentDiffAction = v2->_fbsSceneEnvironmentDiffAction;
    v2->_fbsSceneEnvironmentDiffAction = v4;

    [(BLSBacklightFBSSceneEnvironmentDiffAction *)v2->_fbsSceneEnvironmentDiffAction setDelegate:v2];
  }

  return v2;
}

- (void)performChangesWithTransitionContext:(id)context environmentDelta:(id)delta performActionsBlock:(id)block
{
  deltaCopy = delta;
  contextCopy = context;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __117___UIBacklightUISceneEnvironmentDiffAction_performChangesWithTransitionContext_environmentDelta_performActionsBlock___block_invoke;
  v11[3] = &unk_1E711F5F0;
  v12 = contextCopy;
  v13 = blockCopy;
  v14 = deltaCopy;
  v9 = contextCopy;
  v10 = blockCopy;
  _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v9, v11, 0);
}

@end