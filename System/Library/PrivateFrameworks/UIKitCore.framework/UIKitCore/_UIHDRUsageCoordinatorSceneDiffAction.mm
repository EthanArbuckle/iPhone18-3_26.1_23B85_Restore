@interface _UIHDRUsageCoordinatorSceneDiffAction
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
@end

@implementation _UIHDRUsageCoordinatorSceneDiffAction

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  if (!diffCopy || ([diffCopy containsProperty:sel_applicationOcclusionRects] & 1) != 0 || objc_msgSend(diffCopy, "containsProperty:", sel_systemOcclusionRects))
  {
    settings = [sSceneCopy settings];
    _hdrUsageCoordinatorSceneComponent = [sceneCopy _hdrUsageCoordinatorSceneComponent];
    applicationOcclusionRects = [settings applicationOcclusionRects];
    [_hdrUsageCoordinatorSceneComponent _setApplicationOcclusionRects:applicationOcclusionRects];

    systemOcclusionRects = [settings systemOcclusionRects];
    [_hdrUsageCoordinatorSceneComponent _setSystemOcclusionRects:systemOcclusionRects];
  }
}

@end