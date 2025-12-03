@interface PUIPosterSnapshotReadinessSceneObserver
- (PUIPosterSnapshotReadinessSceneObserver)init;
- (PUIPosterSnapshotReadinessSceneObserver)initWithFBSScene:(id)scene;
- (PUIPosterSnapshotReadinessSceneObserver)initWithFBScene:(id)scene;
- (id)_init;
- (void)_fireObserverBlock:(id)block isSceneReadyForSnapshotting:(BOOL)snapshotting;
- (void)addSnapshotReadinessObserver:(id)observer;
- (void)removeSnapshotReadinessObserver:(id)observer;
- (void)setSceneReadyForSnapshotting:(BOOL)snapshotting;
@end

@implementation PUIPosterSnapshotReadinessSceneObserver

- (PUIPosterSnapshotReadinessSceneObserver)initWithFBSScene:(id)scene
{
  sceneCopy = scene;
  _init = [(PUIPosterSnapshotReadinessSceneObserver *)[PUISnapshotReadinessFBSSceneObserver alloc] _init];
  [sceneCopy addObserver:_init];
  [(PUIPosterSnapshotReadinessSceneObserver *)_init setScene:sceneCopy];

  return _init;
}

- (PUIPosterSnapshotReadinessSceneObserver)initWithFBScene:(id)scene
{
  sceneCopy = scene;
  _init = [(PUIPosterSnapshotReadinessSceneObserver *)[PUISnapshotReadinessFBSceneObserver alloc] _init];
  [sceneCopy addObserver:_init];
  [(PUIPosterSnapshotReadinessSceneObserver *)_init setScene:sceneCopy];

  return _init;
}

- (PUIPosterSnapshotReadinessSceneObserver)init
{
  [(PUIPosterSnapshotReadinessSceneObserver *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = PUIPosterSnapshotReadinessSceneObserver;
  v2 = [(PUIPosterSnapshotReadinessSceneObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)addSnapshotReadinessObserver:(id)observer
{
  observers = self->_observers;
  v5 = MEMORY[0x1AC5769F0](observer, a2);
  [(NSMutableArray *)observers addObject:v5];

  [(PUIPosterSnapshotReadinessSceneObserver *)self _check];
}

- (void)removeSnapshotReadinessObserver:(id)observer
{
  observers = self->_observers;
  v4 = MEMORY[0x1AC5769F0](observer, a2);
  [(NSMutableArray *)observers removeObject:v4];
}

- (void)setSceneReadyForSnapshotting:(BOOL)snapshotting
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_isSceneReadyForSnapshotting != snapshotting)
  {
    snapshottingCopy = snapshotting;
    self->_isSceneReadyForSnapshotting = snapshotting;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(NSMutableArray *)self->_observers copy];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(PUIPosterSnapshotReadinessSceneObserver *)self _fireObserverBlock:*(*(&v10 + 1) + 8 * v9++) isSceneReadyForSnapshotting:snapshottingCopy];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_fireObserverBlock:(id)block isSceneReadyForSnapshotting:(BOOL)snapshotting
{
  snapshottingCopy = snapshotting;
  blockCopy = block;
  if (blockCopy[2](blockCopy, snapshottingCopy))
  {
    observers = self->_observers;
    v7 = MEMORY[0x1AC5769F0](blockCopy);
    [(NSMutableArray *)observers removeObject:v7];
  }
}

@end