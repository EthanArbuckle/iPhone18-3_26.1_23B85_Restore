@interface PUIPosterSnapshotReadinessSceneObserver
- (PUIPosterSnapshotReadinessSceneObserver)init;
- (PUIPosterSnapshotReadinessSceneObserver)initWithFBSScene:(id)a3;
- (PUIPosterSnapshotReadinessSceneObserver)initWithFBScene:(id)a3;
- (id)_init;
- (void)_fireObserverBlock:(id)a3 isSceneReadyForSnapshotting:(BOOL)a4;
- (void)addSnapshotReadinessObserver:(id)a3;
- (void)removeSnapshotReadinessObserver:(id)a3;
- (void)setSceneReadyForSnapshotting:(BOOL)a3;
@end

@implementation PUIPosterSnapshotReadinessSceneObserver

- (PUIPosterSnapshotReadinessSceneObserver)initWithFBSScene:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterSnapshotReadinessSceneObserver *)[PUISnapshotReadinessFBSSceneObserver alloc] _init];
  [v4 addObserver:v5];
  [(PUIPosterSnapshotReadinessSceneObserver *)v5 setScene:v4];

  return v5;
}

- (PUIPosterSnapshotReadinessSceneObserver)initWithFBScene:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterSnapshotReadinessSceneObserver *)[PUISnapshotReadinessFBSceneObserver alloc] _init];
  [v4 addObserver:v5];
  [(PUIPosterSnapshotReadinessSceneObserver *)v5 setScene:v4];

  return v5;
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

- (void)addSnapshotReadinessObserver:(id)a3
{
  observers = self->_observers;
  v5 = MEMORY[0x1AC5769F0](a3, a2);
  [(NSMutableArray *)observers addObject:v5];

  [(PUIPosterSnapshotReadinessSceneObserver *)self _check];
}

- (void)removeSnapshotReadinessObserver:(id)a3
{
  observers = self->_observers;
  v4 = MEMORY[0x1AC5769F0](a3, a2);
  [(NSMutableArray *)observers removeObject:v4];
}

- (void)setSceneReadyForSnapshotting:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_isSceneReadyForSnapshotting != a3)
  {
    v3 = a3;
    self->_isSceneReadyForSnapshotting = a3;
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

          [(PUIPosterSnapshotReadinessSceneObserver *)self _fireObserverBlock:*(*(&v10 + 1) + 8 * v9++) isSceneReadyForSnapshotting:v3];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_fireObserverBlock:(id)a3 isSceneReadyForSnapshotting:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (v8[2](v8, v4))
  {
    observers = self->_observers;
    v7 = MEMORY[0x1AC5769F0](v8);
    [(NSMutableArray *)observers removeObject:v7];
  }
}

@end