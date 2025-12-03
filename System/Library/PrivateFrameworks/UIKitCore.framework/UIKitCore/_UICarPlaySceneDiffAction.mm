@interface _UICarPlaySceneDiffAction
- (UIApplicationSceneSettingsDiffInspector)carPlayDiffInspector;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
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

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  v14 = 0;
  diffCopy = diff;
  carPlayDiffInspector = [(_UICarPlaySceneDiffAction *)self carPlayDiffInspector];
  [carPlayDiffInspector inspectDiff:diffCopy withContext:&v14];

  if ((v14 & 2) != 0)
  {
    _carPlaySceneComponent = [sceneCopy _carPlaySceneComponent];
    [_carPlaySceneComponent _invalidateTraitOverrides];
  }
}

@end