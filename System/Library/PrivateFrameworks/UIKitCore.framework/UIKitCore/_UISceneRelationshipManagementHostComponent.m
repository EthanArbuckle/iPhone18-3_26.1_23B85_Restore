@interface _UISceneRelationshipManagementHostComponent
- (void)_presentationManager:(id)a3 willPrioritizePresenter:(id)a4;
- (void)_scenePresenterIsMovingToWindow:(id)a3;
- (void)addObserver:(id)a3;
- (void)notifyObserversOfParentChange:(id)a3;
- (void)presentationView:(id)a3 didMoveToWindow:(id)a4;
- (void)removeObserver:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)windowDidMoveToScene:(id)a3;
@end

@implementation _UISceneRelationshipManagementHostComponent

- (void)_scenePresenterIsMovingToWindow:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v6 = [v4 _remoteContentParent];
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (v6 != WeakRetained)
  {
    v8 = [v6 _childRemoteContentRegistry];
    v9 = objc_loadWeakRetained(&self->_associatedRemoteContentRegistry);
    [v9 removeChildScene:v5];

    [v8 addChildScene:v5];
    objc_storeWeak(&self->_parent, v6);
    objc_storeWeak(&self->_associatedRemoteContentRegistry, v8);
    if (v8 && ([v8 parentSettingsAvailable] & 1) == 0)
    {
      objc_initWeak(location, self);
      objc_initWeak(&from, v6);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __79___UISceneRelationshipManagementHostComponent__scenePresenterIsMovingToWindow___block_invoke;
      v22[3] = &unk_1E70F3DA0;
      objc_copyWeak(&v23, location);
      objc_copyWeak(&v24, &from);
      [v8 executeWhenParentSettingsAreAvailable:v22 forChildScene:v5];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {
      [(_UISceneRelationshipManagementHostComponent *)self notifyObserversOfParentChange:v6];
    }

    v10 = *(__UILogGetCategoryCachedImpl("UISceneRelationshipManagement", &_scenePresenterIsMovingToWindow____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v5;
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
      v17 = v6;
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

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedPresenter);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_prioritizedPresenter);
    v7 = [v6 presentationView];
    [v7 removeObserver:self];

    v8 = [v9 uiPresentationManager];
    [v8 _removePrioritizedPresenterObserver:self];

    objc_storeWeak(&self->_prioritizedPresenter, 0);
  }
}

- (void)_presentationManager:(id)a3 willPrioritizePresenter:(id)a4
{
  obj = a4;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedPresenter);

  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_prioritizedPresenter);
    v7 = [v6 presentationView];
    [v7 removeObserver:self];

    v8 = [obj presentationView];
    [v8 addObserver:self];

    objc_storeWeak(&self->_prioritizedPresenter, obj);
    v9 = [obj presentationView];
    v10 = [v9 window];
    [(_UISceneRelationshipManagementHostComponent *)self _scenePresenterIsMovingToWindow:v10];
  }
}

- (void)presentationView:(id)a3 didMoveToWindow:(id)a4
{
  v11 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedPresenter);
  v9 = [WeakRetained presentationView];

  if (v9 != v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UISceneRelationshipManagementHostComponent.m" lineNumber:93 description:@"Presentation view mismatch."];
  }

  [(_UISceneRelationshipManagementHostComponent *)self _scenePresenterIsMovingToWindow:v11];
}

- (void)windowDidMoveToScene:(id)a3
{
  v8 = [a3 object];
  WeakRetained = objc_loadWeakRetained(&self->_prioritizedPresenter);
  v5 = [WeakRetained presentationView];
  v6 = [v5 window];

  v7 = v8;
  if (v8 && v8 == v6)
  {
    [(_UISceneRelationshipManagementHostComponent *)self _scenePresenterIsMovingToWindow:v8];
    v7 = v8;
  }
}

- (void)notifyObserversOfParentChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v11 = [(FBSSceneComponent *)self hostScene];
        [v10 _scene:v11 isMovingToParent:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    [(NSHashTable *)self->_observers removeObject:v4];
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

@end