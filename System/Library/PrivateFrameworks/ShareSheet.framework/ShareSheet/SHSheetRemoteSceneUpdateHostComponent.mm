@interface SHSheetRemoteSceneUpdateHostComponent
- (void)scene:(id)scene willUpdateSettings:(id)settings;
@end

@implementation SHSheetRemoteSceneUpdateHostComponent

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  sceneCopy = scene;
  transitionContext = [settings transitionContext];
  animationFence = [transitionContext animationFence];

  if (animationFence && ![(SHSheetRemoteSceneUpdateHostComponent *)self didPerformInitialFenceUpdate])
  {
    [(SHSheetRemoteSceneUpdateHostComponent *)self setDidPerformInitialFenceUpdate:1];
    v9 = MEMORY[0x1E6979518];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__SHSheetRemoteSceneUpdateHostComponent_scene_willUpdateSettings___block_invoke;
    v10[3] = &unk_1E71F9510;
    v11 = sceneCopy;
    [v9 addCommitHandler:v10 forPhase:5];
  }
}

void __66__SHSheetRemoteSceneUpdateHostComponent_scene_willUpdateSettings___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SHSheetRemoteSceneUpdateHostComponent_scene_willUpdateSettings___block_invoke_2;
  block[3] = &unk_1E71F9510;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__SHSheetRemoteSceneUpdateHostComponent_scene_willUpdateSettings___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v1 = [v4 delegate];
  v2 = [v1 session];
  v3 = [v2 activityViewController];
  [v3 _readyToInteract];
}

@end