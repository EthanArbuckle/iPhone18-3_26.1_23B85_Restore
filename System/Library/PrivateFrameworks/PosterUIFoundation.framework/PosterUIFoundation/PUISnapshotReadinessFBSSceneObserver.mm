@interface PUISnapshotReadinessFBSSceneObserver
- (FBSScene)scene;
- (void)_check;
- (void)_checkIfFBSSceneIsReadyForSnapshotting:(id)snapshotting force:(id)force;
- (void)invalidate;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneWillInvalidate:(id)invalidate;
@end

@implementation PUISnapshotReadinessFBSSceneObserver

- (void)invalidate
{
  scene = [(PUISnapshotReadinessFBSSceneObserver *)self scene];
  [scene removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUISnapshotReadinessFBSSceneObserver;
  [(PUIPosterSnapshotReadinessSceneObserver *)&v4 invalidate];
}

- (FBSScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PUISnapshotReadinessFBSSceneObserver_scene_didUpdateClientSettings___block_invoke;
  v7[3] = &unk_1E78548A0;
  v7[4] = self;
  v8 = sceneCopy;
  v6 = sceneCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)sceneWillInvalidate:(id)invalidate
{
  [(PUISnapshotReadinessFBSSceneObserver *)self _checkIfFBSSceneIsReadyForSnapshotting:invalidate force:MEMORY[0x1E695E110]];

  [(PUIPosterSnapshotReadinessSceneObserver *)self removeAllSnapshotObservers];
}

- (void)_checkIfFBSSceneIsReadyForSnapshotting:(id)snapshotting force:(id)force
{
  v5 = [snapshotting pui_sceneIsReadyToSnapshot:{0, force}];
  if (v5 != [(PUIPosterSnapshotReadinessSceneObserver *)self isSceneReadyForSnapshotting])
  {

    [(PUIPosterSnapshotReadinessSceneObserver *)self setSceneReadyForSnapshotting:v5];
  }
}

- (void)_check
{
  scene = [(PUISnapshotReadinessFBSSceneObserver *)self scene];
  [(PUISnapshotReadinessFBSSceneObserver *)self _checkIfFBSSceneIsReadyForSnapshotting:scene force:0];
}

@end