@interface PUISnapshotReadinessFBSSceneObserver
- (FBSScene)scene;
- (void)_check;
- (void)_checkIfFBSSceneIsReadyForSnapshotting:(id)a3 force:(id)a4;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneWillInvalidate:(id)a3;
@end

@implementation PUISnapshotReadinessFBSSceneObserver

- (void)invalidate
{
  v3 = [(PUISnapshotReadinessFBSSceneObserver *)self scene];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUISnapshotReadinessFBSSceneObserver;
  [(PUIPosterSnapshotReadinessSceneObserver *)&v4 invalidate];
}

- (FBSScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PUISnapshotReadinessFBSSceneObserver_scene_didUpdateClientSettings___block_invoke;
  v7[3] = &unk_1E78548A0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)sceneWillInvalidate:(id)a3
{
  [(PUISnapshotReadinessFBSSceneObserver *)self _checkIfFBSSceneIsReadyForSnapshotting:a3 force:MEMORY[0x1E695E110]];

  [(PUIPosterSnapshotReadinessSceneObserver *)self removeAllSnapshotObservers];
}

- (void)_checkIfFBSSceneIsReadyForSnapshotting:(id)a3 force:(id)a4
{
  v5 = [a3 pui_sceneIsReadyToSnapshot:{0, a4}];
  if (v5 != [(PUIPosterSnapshotReadinessSceneObserver *)self isSceneReadyForSnapshotting])
  {

    [(PUIPosterSnapshotReadinessSceneObserver *)self setSceneReadyForSnapshotting:v5];
  }
}

- (void)_check
{
  v3 = [(PUISnapshotReadinessFBSSceneObserver *)self scene];
  [(PUISnapshotReadinessFBSSceneObserver *)self _checkIfFBSSceneIsReadyForSnapshotting:v3 force:0];
}

@end