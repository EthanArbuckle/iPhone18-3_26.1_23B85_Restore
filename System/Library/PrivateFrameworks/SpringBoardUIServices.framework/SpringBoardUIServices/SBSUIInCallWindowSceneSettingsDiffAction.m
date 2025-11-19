@interface SBSUIInCallWindowSceneSettingsDiffAction
- (id)_inCallSceneSettingsDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation SBSUIInCallWindowSceneSettingsDiffAction

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBSUIInCallWindowSceneSettingsDiffAction _performActionsForUIScene:a2 withUpdatedFBSScene:self settingsDiff:? fromSettings:? transitionContext:? lifecycleActionType:?];
  }

  v17 = v13;
  v26 = 0;
  v25 = 0;
  v18 = [(SBSUIInCallWindowSceneSettingsDiffAction *)self _inCallSceneSettingsDiffInspector];
  [v18 inspectDiff:v16 withContext:&v25];

  if (v25 == 1)
  {
    v22 = v14;
    v23 = v17;
    v24 = v15;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
  }

  if (HIBYTE(v25) == 1)
  {
    v21 = v17;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContext();
  }

  if (v26 == 1)
  {
    v19 = [v14 settings];
    v20 = [v19 isAttachedToWindowedAccessory];
    [v19 windowedAccessoryCutoutFrameInScreen];
    [v17 _setAttachedToWindowedAccessory:v20 windowedAccessoryCutoutFrameInScreen:?];
  }
}

void __154__SBSUIInCallWindowSceneSettingsDiffAction__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) settings];
  v2 = *(a1 + 40);
  v3 = [v7 isAttachedToWindowedAccessory];
  [v7 windowedAccessoryCutoutFrameInScreen];
  [v2 _setAttachedToWindowedAccessory:v3 windowedAccessoryCutoutFrameInScreen:?];
  v4 = *(a1 + 40);
  v5 = [v7 inCallPresentationMode];
  v6 = [*(a1 + 48) SBSUI_inCallAnalyticsSource];
  [v4 _updatePresentationMode:v5 analyticsSource:v6];
}

- (id)_inCallSceneSettingsDiffInspector
{
  inCallSceneSettingsDiffInspector = self->_inCallSceneSettingsDiffInspector;
  if (!inCallSceneSettingsDiffInspector)
  {
    v4 = objc_alloc_init(SBSUIInCallSceneSettingsDiffInspector);
    v5 = self->_inCallSceneSettingsDiffInspector;
    self->_inCallSceneSettingsDiffInspector = v4;

    [(SBSUIInCallSceneSettingsDiffInspector *)self->_inCallSceneSettingsDiffInspector observeInCallPresentationModeWithBlock:&__block_literal_global_31];
    [(FBSSceneSettingsDiffInspector *)self->_inCallSceneSettingsDiffInspector observeFrameWithBlock:&__block_literal_global_12];
    [(SBSUIInCallSceneSettingsDiffInspector *)self->_inCallSceneSettingsDiffInspector observeAttachedToWindowedAccessoryWithBlock:&__block_literal_global_14];
    inCallSceneSettingsDiffInspector = self->_inCallSceneSettingsDiffInspector;
  }

  return inCallSceneSettingsDiffInspector;
}

- (void)_performActionsForUIScene:(uint64_t)a1 withUpdatedFBSScene:(uint64_t)a2 settingsDiff:fromSettings:transitionContext:lifecycleActionType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSUIInCallWindowSceneSettingsDiffAction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[SBSUIInCallWindowScene class]]"}];
}

@end