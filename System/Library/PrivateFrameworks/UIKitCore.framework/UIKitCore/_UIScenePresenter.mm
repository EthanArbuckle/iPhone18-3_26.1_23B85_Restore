@interface _UIScenePresenter
- (BOOL)_isHosting;
- (BOOL)isActive;
- (FBScene)scene;
- (NSString)identifier;
- (UIScenePresentation)presentationView;
- (UIScenePresentationManager)manager;
- (_UIScenePresenter)init;
- (_UIScenePresenter)initWithManager:(id)manager scene:(id)scene owner:(id)owner identifier:(id)identifier sortContext:(id)context;
- (_UISceneSnapshotPresentationView)_snapshotPresentationViewWithConfigurator:(_UISceneSnapshotPresentationView *)configurator;
- (id)captureSnapshotPresentationView;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)newSnapshot;
- (id)newSnapshotContext;
- (id)newSnapshotPresentationView;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)compare:(id)compare;
- (void)_modifySnapshotConfiguration:(uint64_t)configuration;
- (void)activate;
- (void)addObserver:(id)observer;
- (void)deactivate;
- (void)dealloc;
- (void)invalidate;
- (void)modifyPresentationContext:(id)context;
- (void)notifyObserversDidUpdateContext:(id)context;
- (void)notifyObserversHostingDidChange:(BOOL)change;
- (void)notifyObserversHostingWillChange:(BOOL)change;
- (void)removeObserver:(id)observer;
- (void)updateHostingStateIfNecessary;
@end

@implementation _UIScenePresenter

- (UIScenePresentation)presentationView
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated && !self->_view)
  {
    shouldSupportFlattening = [(UIScenePresentationContext *)self->_presentationContext shouldSupportFlattening];
    v4 = off_1E70EC0B8;
    if (!shouldSupportFlattening)
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
    scene = strongScene;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakManager);
    scene = [WeakRetained scene];
  }

  return scene;
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
  _isHosting = [(_UIScenePresenter *)self _isHosting];
  if (self->_hosting != _isHosting)
  {
    v4 = _isHosting;
    [(_UIScenePresenter *)self notifyObserversHostingWillChange:_isHosting];
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

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  LOBYTE(selfCopy) = [WeakRetained _isPresenterHosting:selfCopy];

  return selfCopy;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:68 description:{@"_UIScenePresenter %@ must be invalidated before it can be deallocated.", self}];
  }

  v5.receiver = self;
  v5.super_class = _UIScenePresenter;
  [(_UIScenePresenter *)&v5 dealloc];
}

- (_UIScenePresenter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:50 description:@"[_UIScenePresenter init] is unavailable for use."];

  v6.receiver = self;
  v6.super_class = _UIScenePresenter;
  return [(_UIScenePresenter *)&v6 init];
}

- (_UIScenePresenter)initWithManager:(id)manager scene:(id)scene owner:(id)owner identifier:(id)identifier sortContext:(id)context
{
  managerCopy = manager;
  sceneCopy = scene;
  ownerCopy = owner;
  identifierCopy = identifier;
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = _UIScenePresenter;
  v18 = [(_UIScenePresenter *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_strongManager, manager);
    objc_storeWeak(&v19->_weakManager, managerCopy);
    objc_storeStrong(&v19->_strongScene, scene);
    objc_storeWeak(&v19->_owner, ownerCopy);
    objc_storeStrong(&v19->_identifier, identifier);
    v20 = [contextCopy copy];
    sortContext = v19->_sortContext;
    v19->_sortContext = v20;

    BSAbsoluteMachTimeNow();
    v19->_initializeTime = v22;
    v23 = [UIScenePresentationContext alloc];
    defaultPresentationContext = [ownerCopy defaultPresentationContext];
    v25 = [(UIScenePresentationContext *)v23 _initWithDefaultPresentationContext:defaultPresentationContext];
    presentationContext = v19->_presentationContext;
    v19->_presentationContext = v25;
  }

  return v19;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  sortContext = self->_sortContext;
  sortContext = [compareCopy sortContext];
  v7 = [(NSCopying *)sortContext compare:sortContext];

  if (!v7)
  {
    [compareCopy _initializeTime];
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  BSDispatchQueueAssertMain();
  observers = self->_observers;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    v5 = [(NSHashTable *)self->_observers count];
    v4 = observerCopy;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      v4 = observerCopy;
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

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  LOBYTE(selfCopy) = [WeakRetained _isPresenterActive:selfCopy];

  return selfCopy;
}

- (void)modifyPresentationContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"modifyBlock"}];
  }

  BSDispatchQueueAssertMain();
  v6 = self->_presentationContext;
  v7 = [(UIScenePresentationContext *)self->_presentationContext mutableCopy];
  contextCopy[2](contextCopy, v7);
  v8 = UIScenePresentationLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = UIScenePresentationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained(&self->_weakManager);
      scene = [WeakRetained scene];
      identifier = [scene identifier];
      v14 = [v13 stringWithFormat:@"%@-%@", identifier, self->_identifier];
      v15 = [MEMORY[0x1E696AD98] numberWithBool:BSEqualObjects()];
      _defaultPresentationContext = [(UIScenePresentationContext *)self->_presentationContext _defaultPresentationContext];
      _defaultPresentationContext2 = [v7 _defaultPresentationContext];
      *buf = 138413570;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = _defaultPresentationContext;
      v33 = 2112;
      v34 = _defaultPresentationContext2;
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
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIScenePresenter.m" lineNumber:207 description:@"shouldSupportFlattening should not change after the presentation view has been created"];
    }

    [(_UIScenePresentationView *)self->_view setCurrentPresentationContext:self->_presentationContext];
    [(_UIScenePresenter *)self notifyObserversDidUpdateContext:v6];
  }
}

- (void)_modifySnapshotConfiguration:(uint64_t)configuration
{
  if (configuration)
  {
    v3 = *(configuration + 80);
    v4 = a2;
    hostContainerView = [v3 hostContainerView];
    nonHostedLayers = [hostContainerView nonHostedLayers];
    [v4 setLayersToExclude:nonHostedLayers];

    backgroundColorWhileHosting = [*(configuration + 40) backgroundColorWhileHosting];
    [backgroundColorWhileHosting alphaComponent];
    [v4 setOpaque:BSFloatGreaterThanOrEqualToFloat()];
  }
}

- (id)newSnapshotContext
{
  WeakRetained = objc_loadWeakRetained(&self->_weakManager);
  scene = [WeakRetained scene];
  snapshotContext = [scene snapshotContext];

  [(_UIScenePresenter *)self _modifySnapshotConfiguration:snapshotContext];
  return snapshotContext;
}

- (id)newSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->_weakManager);
  scene = [WeakRetained scene];
  newSnapshotContext = [(_UIScenePresenter *)self newSnapshotContext];
  v6 = [scene createSnapshotWithContext:newSnapshotContext];

  return v6;
}

- (id)newSnapshotPresentationView
{
  v3 = [_UISceneSnapshotPresentationView alloc];
  newSnapshot = [(_UIScenePresenter *)self newSnapshot];
  v5 = [(_UISceneSnapshotPresentationView *)v3 initWithSnapshot:newSnapshot];

  [(_UISceneSnapshotPresentationView *)v5 capture];
  return v5;
}

- (_UISceneSnapshotPresentationView)_snapshotPresentationViewWithConfigurator:(_UISceneSnapshotPresentationView *)configurator
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (configurator)
  {
    cachedTraitCollection = configurator->super._cachedTraitCollection;
    if (!cachedTraitCollection)
    {
      v8 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained(&configurator->super.super._responderFlags);
      weakRetained = [v8 stringWithFormat:@"attempt to create a snapshotPresentationView after the presenter has been invalidated : presenter=%@ manager=%@", configurator, WeakRetained];

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
        configuratorCopy = configurator;
        v22 = 2114;
        v23 = @"_UIScenePresenter.m";
        v24 = 1024;
        v25 = 236;
        v26 = 2114;
        v27 = weakRetained;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [weakRetained UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1898D874CLL);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63___UIScenePresenter__snapshotPresentationViewWithConfigurator___block_invoke;
    v14[3] = &unk_1E7109D98;
    v14[4] = configurator;
    v15 = v3;
    v6 = [(UITraitCollection *)cachedTraitCollection prepareSnapshotWithConfigurator:v14];
    configurator = [[_UISceneSnapshotPresentationView alloc] initWithSnapshot:v6];
  }

  return configurator;
}

- (id)captureSnapshotPresentationView
{
  v2 = [(_UIScenePresenter *)self _snapshotPresentationViewWithConfigurator:?];
  [v2 capture];

  return v2;
}

- (void)notifyObserversHostingWillChange:(BOOL)change
{
  changeCopy = change;
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
          [v10 scenePresenter:self hostingWillChange:{changeCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)notifyObserversHostingDidChange:(BOOL)change
{
  changeCopy = change;
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
          [v10 scenePresenter:self hostingDidChange:{changeCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)notifyObserversDidUpdateContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
          [v10 scenePresenter:self didUpdateContext:{contextCopy, v11}];
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
  succinctDescriptionBuilder = [(_UIScenePresenter *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIScenePresenter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end