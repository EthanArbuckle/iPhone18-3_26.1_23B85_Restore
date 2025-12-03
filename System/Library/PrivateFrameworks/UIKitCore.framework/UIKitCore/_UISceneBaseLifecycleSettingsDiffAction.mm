@interface _UISceneBaseLifecycleSettingsDiffAction
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation _UISceneBaseLifecycleSettingsDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  settingsCopy = settings;
  contextCopy = context;
  if ([sceneCopy _hasLifecycle])
  {
    _effectiveSettings = [sceneCopy _effectiveSettings];
    v14 = _UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext(sceneCopy, settingsCopy, _effectiveSettings, contextCopy);

    if (v14)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __153___UISceneBaseLifecycleSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
      v15[3] = &unk_1E70FA0C8;
      v19 = v14;
      v16 = sceneCopy;
      v17 = settingsCopy;
      v18 = contextCopy;
      _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v18, v15, 0);
    }
  }
}

@end