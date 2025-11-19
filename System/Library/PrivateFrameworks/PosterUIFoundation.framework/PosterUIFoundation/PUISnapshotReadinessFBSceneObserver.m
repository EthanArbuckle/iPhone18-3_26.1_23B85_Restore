@interface PUISnapshotReadinessFBSceneObserver
- (FBScene)scene;
- (void)_check;
- (void)_checkIfFBSceneIsReadyForSnapshotting:(id)a3 force:(id)a4;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneDidInvalidate:(id)a3;
@end

@implementation PUISnapshotReadinessFBSceneObserver

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__PUISnapshotReadinessFBSceneObserver_scene_didUpdateClientSettingsWithDiff_oldClientSettings_transitionContext___block_invoke;
  v9[3] = &unk_1E78548A0;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

- (void)sceneDidInvalidate:(id)a3
{
  [(PUISnapshotReadinessFBSceneObserver *)self _checkIfFBSceneIsReadyForSnapshotting:a3 force:MEMORY[0x1E695E110]];

  [(PUIPosterSnapshotReadinessSceneObserver *)self removeAllSnapshotObservers];
}

- (void)invalidate
{
  v3 = [(PUISnapshotReadinessFBSceneObserver *)self scene];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUISnapshotReadinessFBSceneObserver;
  [(PUIPosterSnapshotReadinessSceneObserver *)&v4 invalidate];
}

- (void)_checkIfFBSceneIsReadyForSnapshotting:(id)a3 force:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v8 = [v10 pui_sceneIsReadyToSnapshot:0];
  }

  v9 = v8;
  if (v8 != [(PUIPosterSnapshotReadinessSceneObserver *)self isSceneReadyForSnapshotting])
  {
    [(PUIPosterSnapshotReadinessSceneObserver *)self setSceneReadyForSnapshotting:v9];
  }
}

- (void)_check
{
  v3 = [(PUISnapshotReadinessFBSceneObserver *)self scene];
  [(PUISnapshotReadinessFBSceneObserver *)self _checkIfFBSceneIsReadyForSnapshotting:v3 force:0];
}

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end