@interface _UIHDRUsageCoordinatorSceneDiffAction
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
@end

@implementation _UIHDRUsageCoordinatorSceneDiffAction

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v20 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v13 || ([v13 containsProperty:sel_applicationOcclusionRects] & 1) != 0 || objc_msgSend(v13, "containsProperty:", sel_systemOcclusionRects))
  {
    v16 = [v12 settings];
    v17 = [v20 _hdrUsageCoordinatorSceneComponent];
    v18 = [v16 applicationOcclusionRects];
    [v17 _setApplicationOcclusionRects:v18];

    v19 = [v16 systemOcclusionRects];
    [v17 _setSystemOcclusionRects:v19];
  }
}

@end