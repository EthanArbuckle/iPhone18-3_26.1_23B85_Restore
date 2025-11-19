@interface _UIScenePresenter
- (BOOL)_isHosting;
- (BOOL)isActive;
- (FBScene)scene;
- (NSString)identifier;
- (UIScenePresentation)presentationView;
- (UIScenePresentationManager)manager;
- (_UIScenePresenter)init;
- (_UIScenePresenter)initWithManager:(id)a3 scene:(id)a4 owner:(id)a5 identifier:(id)a6 sortContext:(id)a7;
- (_UISceneSnapshotPresentationView)_snapshotPresentationViewWithConfigurator:(_UISceneSnapshotPresentationView *)a1;
- (id)captureSnapshotPresentationView;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)newSnapshot;
- (id)newSnapshotContext;
- (id)newSnapshotPresentationView;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)a3;
- (void)_modifySnapshotConfiguration:(uint64_t)a1;
- (void)activate;
- (void)addObserver:(id)a3;
- (void)deactivate;
- (void)dealloc;
- (void)invalidate;
- (void)modifyPresentationContext:(id)a3;
- (void)notifyObserversDidUpdateContext:(id)a3;
- (void)notifyObserversHostingDidChange:(BOOL)a3;
- (void)notifyObserversHostingWillChange:(BOOL)a3;
- (void)removeObserver:(id)a3;
- (void)updateHostingStateIfNecessary;
@end

@implementation _UIScenePresenter

- (UIScenePresentation)presentationView
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated && !self->_view)
  {
    v3 = [(UIScenePresentationContext *)self->_presentationContext shouldSupportFlattening];
    v4 = off_1E70EC0B8;
    if (!v3)
    {
      v4 = off_1E70EC068;
    }

    v5 = [objc_alloc(*v4) initWithPresenter:self];
    view = self->_view;
    self->_view = v5;
  }

  v7 = self->_view;

  return v7;
}

- (FBScene)scene
{
  strongScene = self->_strongScene;
  if (strongScene)
  {
    v3 = strongScene;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakManager);
    v3 = [WeakRetained scene];
  }

  return v3;
}

- (void)activate
{
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    [WeakRetained _activatePresenter:self];
  }
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_sortContext withName:@"sortContext"];
  if (self->_invalidated)
  {
    v6 = [v3 appendBool:1 withName:@"invalidated"];
  }

  return v3;
}

- (void)updateHostingStateIfNecessary
{
  v3 = [(_UIScenePresenter *)self _isHosting];
  if (self->_hosting != v3)
  {
    v4 = v3;
    [(_UIScenePresenter *)self notifyObserversHostingWillChange:v3];
    self->_hosting = v4;

    [(_UIScenePresenter *)self notifyObserversHostingDidChange:v4];
  }
}

- (BOOL)_isHosting
{
  if (self->_invalidated)
  {
    return 0;
  }

  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  LOBYTE(v3) = [WeakRetained _isPresenterHosting:v3];

  return v3;
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

  return v2;
}

- (void)deactivate
{
  if (!self->_invalidated)
  {
    v6 = objc_loadWeakRetained(&self->_owner);
    v4 = [v6 _isPresenterActive:self];

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_owner);
      [WeakRetained _deactivatePresenter:self];
    }
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(_UIScenePresenter *)self updateHostingStateIfNecessary];
    [(_UIScenePresentationView *)self->_view invalidate];
    [(UIView *)self->_view removeFromSuperview];
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    [WeakRetained _invalidatePresenter:self];

    strongManager = self->_strongManager;
    self->_strongManager = 0;

    strongScene = self->_strongScene;
    self->_strongScene = 0;
  }
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:68 description:{@"_UIScenePresenter %@ must be invalidated before it can be deallocated.", self}];
  }

  v5.receiver = self;
  v5.super_class = _UIScenePresenter;
  [(_UIScenePresenter *)&v5 dealloc];
}

- (_UIScenePresenter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:50 description:@"[_UIScenePresenter init] is unavailable for use."];

  v6.receiver = self;
  v6.super_class = _UIScenePresenter;
  return [(_UIScenePresenter *)&v6 init];
}

- (_UIScenePresenter)initWithManager:(id)a3 scene:(id)a4 owner:(id)a5 identifier:(id)a6 sortContext:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = _UIScenePresenter;
  v18 = [(_UIScenePresenter *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_strongManager, a3);
    objc_storeWeak(&v19->_weakManager, v13);
    objc_storeStrong(&v19->_strongScene, a4);
    objc_storeWeak(&v19->_owner, v15);
    objc_storeStrong(&v19->_identifier, a6);
    v20 = [v17 copy];
    sortContext = v19->_sortContext;
    v19->_sortContext = v20;

    BSAbsoluteMachTimeNow();
    v19->_initializeTime = v22;
    v23 = [UIScenePresentationContext alloc];
    v24 = [v15 defaultPresentationContext];
    v25 = [(UIScenePresentationContext *)v23 _initWithDefaultPresentationContext:v24];
    presentationContext = v19->_presentationContext;
    v19->_presentationContext = v25;
  }

  return v19;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  sortContext = self->_sortContext;
  v6 = [v4 sortContext];
  v7 = [(NSCopying *)sortContext compare:v6];

  if (!v7)
  {
    [v4 _initializeTime];
    initializeTime = self->_initializeTime;
    v10 = -1;
    if (initializeTime >= v8)
    {
      v10 = 1;
    }

    if (initializeTime == v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }
  }

  return v7;
}

- (void)addObserver:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v9];
}

- (void)removeObserver:(id)a3
{
  v7 = a3;
  BSDispatchQueueAssertMain();
  v4 = v7;
  if (v7)
  {
    [(NSHashTable *)self->_observers removeObject:v7];
    v5 = [(NSHashTable *)self->_observers count];
    v4 = v7;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      v4 = v7;
    }
  }
}

- (UIScenePresentationManager)manager
{
  strongManager = self->_strongManager;
  if (strongManager)
  {
    WeakRetained = strongManager;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakManager);
  }

  return WeakRetained;
}

- (BOOL)isActive
{
  if (self->_invalidated)
  {
    return 0;
  }

  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  LOBYTE(v3) = [WeakRetained _isPresenterActive:v3];

  return v3;
}

- (void)modifyPresentationContext:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"modifyBlock"}];
  }

  BSDispatchQueueAssertMain();
  v6 = self->_presentationContext;
  v7 = [(UIScenePresentationContext *)self->_presentationContext mutableCopy];
  v5[2](v5, v7);
  v8 = UIScenePresentationLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = UIScenePresentationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained(&self->_weakManager);
      v21 = [WeakRetained scene];
      v20 = [v21 identifier];
      v14 = [v13 stringWithFormat:@"%@-%@", v20, self->_identifier];
      v15 = [MEMORY[0x1E696AD98] numberWithBool:BSEqualObjects()];
      v16 = [(UIScenePresentationContext *)self->_presentationContext _defaultPresentationContext];
      v17 = [v7 _defaultPresentationContext];
      *buf = 138413570;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "Modify presentation context on %@ (equal? %@), prevContext: %@, newContext: %@,  prevDefaultContext: %@, newDefaultContext: %@", buf, 0x3Eu);
    }
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    v11 = [v7 copy];
    presentationContext = self->_presentationContext;
    self->_presentationContext = v11;

    [(UIScenePresentationContext *)v6 shouldSupportFlattening];
    [v7 shouldSupportFlattening];
    if ((BSEqualBools() & 1) == 0 && self->_view)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:207 description:@"shouldSupportFlattening should not change after the presentation view has been created"];
    }

    [(_UIScenePresentationView *)self->_view setCurrentPresentationContext:self->_presentationContext];
    [(_UIScenePresenter *)self notifyObserversDidUpdateContext:v6];
  }
}

- (void)_modifySnapshotConfiguration:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 80);
    v4 = a2;
    v5 = [v3 hostContainerView];
    v6 = [v5 nonHostedLayers];
    [v4 setLayersToExclude:v6];

    v7 = [*(a1 + 40) backgroundColorWhileHosting];
    [v7 alphaComponent];
    [v4 setOpaque:BSFloatGreaterThanOrEqualToFloat()];
  }
}

- (id)newSnapshotContext
{
  WeakRetained = objc_loadWeakRetained(&self->_weakManager);
  v4 = [WeakRetained scene];
  v5 = [v4 snapshotContext];

  [(_UIScenePresenter *)self _modifySnapshotConfiguration:v5];
  return v5;
}

- (id)newSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_weakManager);
  v4 = [WeakRetained scene];
  v5 = [(_UIScenePresenter *)self newSnapshotContext];
  v6 = [v4 createSnapshotWithContext:v5];

  return v6;
}

- (id)newSnapshotPresentationView
{
  v3 = [_UISceneSnapshotPresentationView alloc];
  v4 = [(_UIScenePresenter *)self newSnapshot];
  v5 = [(_UISceneSnapshotPresentationView *)v3 initWithSnapshot:v4];

  [(_UISceneSnapshotPresentationView *)v5 capture];
  return v5;
}

- (_UISceneSnapshotPresentationView)_snapshotPresentationViewWithConfigurator:(_UISceneSnapshotPresentationView *)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    cachedTraitCollection = a1->super._cachedTraitCollection;
    if (!cachedTraitCollection)
    {
      v8 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained(&a1->super.super._responderFlags);
      v10 = [v8 stringWithFormat:@"attempt to create a snapshotPresentationView after the presenter has been invalidated : presenter=%@ manager=%@", a1, WeakRetained];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel__snapshotPresentationViewWithConfigurator_);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v17 = v11;
        v18 = 2114;
        v19 = v13;
        v20 = 2048;
        v21 = a1;
        v22 = 2114;
        v23 = @"_UIScenePresenter.m";
        v24 = 1024;
        v25 = 236;
        v26 = 2114;
        v27 = v10;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1898D874CLL);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63___UIScenePresenter__snapshotPresentationViewWithConfigurator___block_invoke;
    v14[3] = &unk_1E7109D98;
    v14[4] = a1;
    v15 = v3;
    v6 = [(UITraitCollection *)cachedTraitCollection prepareSnapshotWithConfigurator:v14];
    a1 = [[_UISceneSnapshotPresentationView alloc] initWithSnapshot:v6];
  }

  return a1;
}

- (id)captureSnapshotPresentationView
{
  v2 = [(_UIScenePresenter *)self _snapshotPresentationViewWithConfigurator:?];
  [v2 capture];

  return v2;
}

- (void)notifyObserversHostingWillChange:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scenePresenter:self hostingWillChange:{v3, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)notifyObserversHostingDidChange:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scenePresenter:self hostingDidChange:{v3, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)notifyObserversDidUpdateContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 scenePresenter:self didUpdateContext:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)succinctDescription
{
  v2 = [(_UIScenePresenter *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIScenePresenter *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end