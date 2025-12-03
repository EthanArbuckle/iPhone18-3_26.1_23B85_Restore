@interface _UISceneRelationshipManagementHostComponent
- (void)_presentationManager:(id)manager willPrioritizePresenter:(id)presenter;
- (void)_scenePresenterIsMovingToWindow:(id)window;
- (void)addObserver:(id)observer;
- (void)notifyObserversOfParentChange:(id)change;
- (void)presentationView:(id)view didMoveToWindow:(id)window;
- (void)removeObserver:(id)observer;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)windowDidMoveToScene:(id)scene;
@end

@implementation _UISceneRelationshipManagementHostComponent

- (void)_scenePresenterIsMovingToWindow:(id)window
{
  v31 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  hostScene = [(FBSSceneComponent *)self hostScene];
  _remoteContentParent = [windowCopy _remoteContentParent];
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (_remoteContentParent != WeakRetained)
  {
    _childRemoteContentRegistry = [_remoteContentParent _childRemoteContentRegistry];
    v9 = objc_loadWeakRetained(&self->_associatedRemoteContentRegistry);
    [v9 removeChildScene:hostScene];

    [_childRemoteContentRegistry addChildScene:hostScene];
    objc_storeWeak(&self->_parent, _remoteContentParent);
    objc_storeWeak(&self->_associatedRemoteContentRegistry, _childRemoteContentRegistry);
    if (_childRemoteContentRegistry && ([_childRemoteContentRegistry parentSettingsAvailable] & 1) == 0)
    {
      objc_initWeak(location, self);
      objc_initWeak(&from, _remoteContentParent);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __79___UISceneRelationshipManagementHostComponent__scenePresenterIsMovingToWindow___block_invoke;
      v22[3] = &unk_1E70F3DA0;
      objc_copyWeak(&v23, location);
      objc_copyWeak(&v24, &from);
      [_childRemoteContentRegistry executeWhenParentSettingsAreAvailable:v22 forChildScene:hostScene];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {
      [(_UISceneRelationshipManagementHostComponent *)self notifyObserversOfParentChange:_remoteContentParent];
    }

    v10 = *(__UILogGetCategoryCachedImpl("UISceneRelationshipManagement", &_scenePresenterIsMovingToWindow____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = hostScene;
      if (v11)
      {
        v12 = MEMORY[0x1E696AEC0];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];
      }

      else
      {
        v15 = @"(nil)";
      }

      v16 = v15;
      v17 = _remoteContentParent;
      if (v17)
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v18 stringWithFormat:@"<%@: %p>", v20, v17];
      }

      else
      {
        v21 = @"(nil)";
      }

      *location = 134218498;
      *&location[4] = self;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "<_UISceneRelationshipManagementHostComponent:%p> Scene %@ is hosted in %@", location, 0x20u);
    }
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedPresenter);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_prioritizedPresenter);
    presentationView = [v6 presentationView];
    [presentationView removeObserver:self];

    uiPresentationManager = [invalidateCopy uiPresentationManager];
    [uiPresentationManager _removePrioritizedPresenterObserver:self];

    objc_storeWeak(&self->_prioritizedPresenter, 0);
  }
}

- (void)_presentationManager:(id)manager willPrioritizePresenter:(id)presenter
{
  obj = presenter;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedPresenter);

  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_prioritizedPresenter);
    presentationView = [v6 presentationView];
    [presentationView removeObserver:self];

    presentationView2 = [obj presentationView];
    [presentationView2 addObserver:self];

    objc_storeWeak(&self->_prioritizedPresenter, obj);
    presentationView3 = [obj presentationView];
    window = [presentationView3 window];
    [(_UISceneRelationshipManagementHostComponent *)self _scenePresenterIsMovingToWindow:window];
  }
}

- (void)presentationView:(id)view didMoveToWindow:(id)window
{
  windowCopy = window;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedPresenter);
  presentationView = [WeakRetained presentationView];

  if (presentationView != viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneRelationshipManagementHostComponent.m" lineNumber:93 description:@"Presentation view mismatch."];
  }

  [(_UISceneRelationshipManagementHostComponent *)self _scenePresenterIsMovingToWindow:windowCopy];
}

- (void)windowDidMoveToScene:(id)scene
{
  object = [scene object];
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedPresenter);
  presentationView = [WeakRetained presentationView];
  window = [presentationView window];

  v7 = object;
  if (object && object == window)
  {
    [(_UISceneRelationshipManagementHostComponent *)self _scenePresenterIsMovingToWindow:object];
    v7 = object;
  }
}

- (void)notifyObserversOfParentChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        hostScene = [(FBSSceneComponent *)self hostScene];
        [v10 _scene:hostScene isMovingToParent:changeCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    v5 = [(NSHashTable *)self->_observers count];
    observerCopy = v7;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      observerCopy = v7;
    }
  }
}

@end