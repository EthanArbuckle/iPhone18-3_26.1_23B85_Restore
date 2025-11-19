@interface _UICarPlaySceneDiffAction
- (UIApplicationSceneSettingsDiffInspector)carPlayDiffInspector;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation _UICarPlaySceneDiffAction

- (UIApplicationSceneSettingsDiffInspector)carPlayDiffInspector
{
  carPlayDiffInspector = self->_carPlayDiffInspector;
  if (!carPlayDiffInspector)
  {
    v4 = objc_opt_new();
    v5 = self->_carPlayDiffInspector;
    self->_carPlayDiffInspector = v4;

    [(UIApplicationSceneSettingsDiffInspector *)self->_carPlayDiffInspector observeCarPlayDisableFiveRowKeyboardsWithBlock:&__block_literal_global_291];
    [(UIApplicationSceneSettingsDiffInspector *)self->_carPlayDiffInspector observeCarPlayBlackWallpaperModeEnabledWithBlock:&__block_literal_global_2_12];
    carPlayDiffInspector = self->_carPlayDiffInspector;
  }

  return carPlayDiffInspector;
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = a3;
  v14 = 0;
  v11 = a5;
  v12 = [(_UICarPlaySceneDiffAction *)self carPlayDiffInspector];
  [v12 inspectDiff:v11 withContext:&v14];

  if ((v14 & 2) != 0)
  {
    v13 = [v10 _carPlaySceneComponent];
    [v13 _invalidateTraitOverrides];
  }
}

@end