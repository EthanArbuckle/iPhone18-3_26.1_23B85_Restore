@interface PUISnapshotReadinessFBSceneObserver
- (FBScene)scene;
- (void)_check;
- (void)_checkIfFBSceneIsReadyForSnapshotting:(id)snapshotting force:(id)force;
- (void)invalidate;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidInvalidate:(id)invalidate;
@end

@implementation PUISnapshotReadinessFBSceneObserver

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  sceneCopy = scene;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__PUISnapshotReadinessFBSceneObserver_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v9[3] = &unk_1E78548A0;
  v9[4] = self;
  v10 = sceneCopy;
  v8 = sceneCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

- (void)sceneDidInvalidate:(id)invalidate
{
  [(PUISnapshotReadinessFBSceneObserver *)self _checkIfFBSceneIsReadyForSnapshotting:invalidate force:MEMORY[0x1E695E110]];

  [(PUIPosterSnapshotReadinessSceneObserver *)self removeAllSnapshotObservers];
}

- (void)invalidate
{
  scene = [(PUISnapshotReadinessFBSceneObserver *)self scene];
  [scene removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUISnapshotReadinessFBSceneObserver;
  [(PUIPosterSnapshotReadinessSceneObserver *)&v4 invalidate];
}

- (void)_checkIfFBSceneIsReadyForSnapshotting:(id)snapshotting force:(id)force
{
  snapshottingCopy = snapshotting;
  forceCopy = force;
  v7 = forceCopy;
  if (forceCopy)
  {
    bOOLValue = [forceCopy BOOLValue];
  }

  else
  {
    bOOLValue = [snapshottingCopy pui_sceneIsReadyToSnapshot:0];
  }

  v9 = bOOLValue;
  if (bOOLValue != [(PUIPosterSnapshotReadinessSceneObserver *)self isSceneReadyForSnapshotting])
  {
    [(PUIPosterSnapshotReadinessSceneObserver *)self setSceneReadyForSnapshotting:v9];
  }
}

- (void)_check
{
  scene = [(PUISnapshotReadinessFBSceneObserver *)self scene];
  [(PUISnapshotReadinessFBSceneObserver *)self _checkIfFBSceneIsReadyForSnapshotting:scene force:0];
}

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end