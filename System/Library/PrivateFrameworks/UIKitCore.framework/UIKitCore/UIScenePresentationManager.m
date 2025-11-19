@interface UIScenePresentationManager
- (BOOL)_hasPresenterWithIdentifier:(id)a3;
- (BOOL)isInvalidated;
- (FBScene)scene;
- (UIScenePresentationManager)init;
- (UIScenePresentationManagerDelegate)delegate;
- (_UISceneSnapshotPresentationView)_snapshotPresentationViewWithConfigurator:(_UISceneSnapshotPresentationView *)a1;
- (id)_initWithScene:(id)a3;
- (id)_initWithScene:(id)a3 keyboardProxyLayerManager:(id)a4 keyboardProxyPresentationEnvironment:(id)a5;
- (id)_presenterWithIdentifier:(id)a3;
- (id)captureSnapshotPresentationView;
- (id)createPresenterForLayerTarget:(id)a3 identifier:(id)a4;
- (id)createPresenterForLayerTarget:(id)a3 identifier:(id)a4 priority:(int64_t)a5;
- (id)createPresenterWithIdentifier:(id)a3;
- (id)createPresenterWithIdentifier:(id)a3 priority:(int64_t)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)snapshotContext;
- (id)snapshotPresentationForSnapshot:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_defaultPresentationPriority;
- (void)_addPrioritizedPresenterObserver:(id)a3;
- (void)_modifySnapshotConfiguration:(id *)a1;
- (void)dealloc;
- (void)modifyDefaultPresentationContext:(id)a3;
- (void)owner:(id)a3 willPrioritizePresenter:(id)a4 deactivatePresenter:(id)a5;
- (void)ownerDidInvalidateLastPresenter:(id)a3;
- (void)sceneContentStateDidChange:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation UIScenePresentationManager

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (BOOL)isInvalidated
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained isValid] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (int64_t)_defaultPresentationPriority
{
  if (!self->_delegateFlags.defaultPriorityBand)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained scenePresentationManagerDefaultPriorityBand:self];

  return v4;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  [(_UIScenePresenterOwner *)self->_scenePresenterOwner invalidate];
  scenePresenterOwner = self->_scenePresenterOwner;
  self->_scenePresenterOwner = 0;

  v4 = self->_mapLayersToPresenterOwners;
  mapLayersToPresenterOwners = self->_mapLayersToPresenterOwners;
  self->_mapLayersToPresenterOwners = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMapTable *)self->_mapLayersToPresenterOwners objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 setDelegate:0];
        [v11 invalidate];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = UIScenePresentationManager;
  [(UIScenePresentationManager *)&v12 dealloc];
}

- (UIScenePresentationManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:54 description:@"[UIScenePresentationManager init] is unavailable for use."];

  v6.receiver = self;
  v6.super_class = UIScenePresentationManager;
  return [(UIScenePresentationManager *)&v6 init];
}

- (id)_initWithScene:(id)a3
{
  v4 = a3;
  v5 = +[_UISceneKeyboardProxyLayerForwardingManager sharedInstance];
  v6 = [[_UISceneKeyboardProxyLayerForwardingPresentationScene alloc] initWithScene:v4];
  v7 = [(UIScenePresentationManager *)self _initWithScene:v4 keyboardProxyLayerManager:v5 keyboardProxyPresentationEnvironment:v6];

  return v7;
}

- (id)_initWithScene:(id)a3 keyboardProxyLayerManager:(id)a4 keyboardProxyPresentationEnvironment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
  }

  v24.receiver = self;
  v24.super_class = UIScenePresentationManager;
  v12 = [(UIScenePresentationManager *)&v24 init];
  v13 = v12;
  if (v12)
  {
    v14 = objc_storeWeak(&v12->_scene, v9);
    [v9 addObserver:v13];

    v15 = [v9 _relationshipManagementHostComponent];
    [(UIScenePresentationManager *)v13 _addPrioritizedPresenterObserver:v15];
    v16 = [[_UIScenePresenterOwner alloc] initWithScenePresentationManager:v13 layerTarget:0];
    scenePresenterOwner = v13->_scenePresenterOwner;
    v13->_scenePresenterOwner = v16;

    [(_UIScenePresenterOwner *)v13->_scenePresenterOwner setDelegate:v13];
    v18 = [[UIScenePresentationContext alloc] _initWithDefaultValues];
    defaultScenePresentationContext = v13->_defaultScenePresentationContext;
    v13->_defaultScenePresentationContext = v18;

    v20 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
    mapLayersToPresenterOwners = v13->_mapLayersToPresenterOwners;
    v13->_mapLayersToPresenterOwners = v20;

    objc_storeStrong(&v13->_keyboardProxyPresentationEnvironment, a5);
    [v10 trackPresentationEnvironment:v13->_keyboardProxyPresentationEnvironment];
    [(UIScenePresentationManager *)v13 _addPrioritizedPresenterObserver:v13->_keyboardProxyPresentationEnvironment];
  }

  return v13;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  if (obj && [(UIScenePresentationManager *)self isInvalidated])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:106 description:@"Cannot set a new delegate if the presentation manager is already invalidated"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v7 = objc_opt_respondsToSelector();
    v6 = obj;
    self->_delegateFlags.defaultPriorityBand = v7 & 1;
  }
}

- (void)modifyDefaultPresentationContext:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"modifyBlock"}];
  }

  v6 = [(UIScenePresentationContext *)self->_defaultScenePresentationContext mutableCopy];
  v5[2](v5, v6);
  v7 = UIScenePresentationLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = UIScenePresentationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      v22 = [WeakRetained identifier];
      v23 = [MEMORY[0x1E696AD98] numberWithBool:BSEqualObjects()];
      defaultScenePresentationContext = self->_defaultScenePresentationContext;
      *buf = 138413058;
      v41 = v22;
      v42 = 2112;
      v43 = v23;
      v44 = 2112;
      v45 = defaultScenePresentationContext;
      v46 = 2112;
      v47 = v6;
      _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Modify default presentation context on %@ (equal? %@), prevContext: %@, newContext: %@", buf, 0x2Au);
    }
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    v27 = a2;
    v29 = v6;
    v10 = [v6 copy];
    v11 = self->_defaultScenePresentationContext;
    self->_defaultScenePresentationContext = v10;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__UIScenePresentationManager_modifyDefaultPresentationContext___block_invoke;
    aBlock[3] = &unk_1E710A1A8;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    scenePresenterOwner = self->_scenePresenterOwner;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __63__UIScenePresentationManager_modifyDefaultPresentationContext___block_invoke_3;
    v36[3] = &unk_1E710A1D0;
    v28 = v12;
    v37 = v28;
    [(_UIScenePresenterOwner *)scenePresenterOwner enumeratePresentersUsingBlock:v36];
    v14 = [(UIScenePresentationContext *)self->_defaultScenePresentationContext mutableCopy];
    [v14 _setLayerTargetsToExclude:0];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = [(NSMapTable *)self->_mapLayersToPresenterOwners objectEnumerator];
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __63__UIScenePresentationManager_modifyDefaultPresentationContext___block_invoke_4;
          v30[3] = &unk_1E7109E70;
          v31 = v14;
          [v20 enumeratePresentersUsingBlock:v30];
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v17);
    }

    if ([(UIScenePresentationContext *)self->_defaultScenePresentationContext _isVisibilityPropagationEnabled])
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:v27 object:self file:@"UIScenePresentationManager.m" lineNumber:153 description:@"Toggling visibility propagation on the default scene presentation context is not supported."];
    }

    v6 = v29;
  }
}

uint64_t __63__UIScenePresentationManager_modifyDefaultPresentationContext___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__UIScenePresentationManager_modifyDefaultPresentationContext___block_invoke_2;
  v3[3] = &unk_1E70FA288;
  v3[4] = *(a1 + 32);
  return [a2 modifyPresentationContext:v3];
}

void __63__UIScenePresentationManager_modifyDefaultPresentationContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__UIScenePresentationManager_modifyDefaultPresentationContext___block_invoke_5;
  v3[3] = &unk_1E70FA288;
  v4 = *(a1 + 32);
  [a2 modifyPresentationContext:v3];
}

- (id)createPresenterWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UIScenePresentationManager *)self createPresenterWithIdentifier:v4 priority:[(UIScenePresentationManager *)self _defaultPresentationPriority]];

  return v5;
}

- (id)createPresenterWithIdentifier:(id)a3 priority:(int64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if ([(UIScenePresentationManager *)self isInvalidated])
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:172 description:@"Cannot create a presenter on a presentation manager that's been invalidated."];
  }

  if ([(UIScenePresentationManager *)self _hasPresenterWithIdentifier:v7])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:173 description:@"Cannot create a presenter with this identifier as it's already in use."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (!WeakRetained)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to create a presenter after the scene has been dealloced : manager=%@ identifier=%@", self, v7];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v27 = v21;
      v28 = 2114;
      v29 = v23;
      v30 = 2048;
      v31 = self;
      v32 = 2114;
      v33 = @"UIScenePresentationManager.m";
      v34 = 1024;
      v35 = 176;
      v36 = 2114;
      v37 = v20;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1898EB6E8);
  }

  v9 = WeakRetained;
  v10 = [_UIScenePresenter alloc];
  scenePresenterOwner = self->_scenePresenterOwner;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13 = [(_UIScenePresenter *)v10 initWithManager:self scene:v9 owner:scenePresenterOwner identifier:v7 sortContext:v12];

  v14 = [v9 contentState];
  v15 = [(_UIScenePresenter *)v13 presentationContext];
  [v15 _isVisibilityPropagationEnabled];
  LOBYTE(scenePresenterOwner) = BSEqualBools();

  if ((scenePresenterOwner & 1) == 0)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__UIScenePresentationManager_createPresenterWithIdentifier_priority___block_invoke;
    v24[3] = &__block_descriptor_33_e43_v16__0__UIMutableScenePresentationContext_8l;
    v25 = v14 != 0;
    [(_UIScenePresenter *)v13 modifyPresentationContext:v24];
  }

  [(_UIScenePresenterOwner *)self->_scenePresenterOwner addPresenter:v13];

  return v13;
}

- (id)createPresenterForLayerTarget:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIScenePresentationManager *)self createPresenterForLayerTarget:v7 identifier:v6 priority:[(UIScenePresentationManager *)self _defaultPresentationPriority]];

  return v8;
}

- (id)createPresenterForLayerTarget:(id)a3 identifier:(id)a4 priority:(int64_t)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"layerTarget"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  if ([(UIScenePresentationManager *)self isInvalidated])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:202 description:@"Cannot create a presenter on a presentation manager that's been invalidated."];
  }

  if ([(UIScenePresentationManager *)self _hasPresenterWithIdentifier:v11])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"UIScenePresentationManager.m" lineNumber:203 description:@"Cannot create a presenter with this identifier as it's already in use."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (!WeakRetained)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to create a presenterForLayerTarget after the scene has been dealloced : manager=%@ layerTarget=%@ identifier=%@", self, v9, v11];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v36 = v28;
      v37 = 2114;
      v38 = v30;
      v39 = 2048;
      v40 = self;
      v41 = 2114;
      v42 = @"UIScenePresentationManager.m";
      v43 = 1024;
      v44 = 206;
      v45 = 2114;
      v46 = v27;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1898EBB90);
  }

  v13 = WeakRetained;
  v14 = [(NSMapTable *)self->_mapLayersToPresenterOwners objectForKey:v9];
  if (!v14)
  {
    v14 = [[_UIScenePresenterOwner alloc] initWithScenePresentationManager:self layerTarget:v9];
    [(_UIScenePresenterOwner *)v14 setDelegate:self];
    [(NSMapTable *)self->_mapLayersToPresenterOwners setObject:v14 forKey:v9];
  }

  v15 = [_UIScenePresenter alloc];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v17 = [(_UIScenePresenter *)v15 initWithManager:self scene:v13 owner:v14 identifier:v11 sortContext:v16];

  v18 = [(UIScenePresentationContext *)self->_defaultScenePresentationContext mutableCopy];
  [v18 _setLayerTargetsToExclude:0];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __80__UIScenePresentationManager_createPresenterForLayerTarget_identifier_priority___block_invoke;
  v31[3] = &unk_1E710A1F8;
  v32 = v9;
  v33 = v13;
  v34 = v18;
  v19 = v18;
  v20 = v13;
  v21 = v9;
  [(_UIScenePresenter *)v17 modifyPresentationContext:v31];
  [(_UIScenePresenterOwner *)v14 addPresenter:v17];

  return v17;
}

void __80__UIScenePresentationManager_createPresenterForLayerTarget_identifier_priority___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = [v3 setWithObject:v4];
  [v6 _setExclusiveLayerTargetsToInclude:v5];

  [v6 _setVisibilityPropagationEnabled:{objc_msgSend(*(a1 + 40), "contentState") != 0}];
  [v6 _setDefaultPresentationContext:*(a1 + 48)];
}

- (void)_modifySnapshotConfiguration:(id *)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    [a1[6] presentedLayerTypes];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [a1 scene];
    v6 = [v5 layerManager];
    v7 = [v6 layers];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          [v12 type];
          if ((FBSceneLayerTypeMaskContainsType() & 1) == 0)
          {
            [v4 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v3 setLayersToExclude:v4];
    v13 = [a1[6] backgroundColorWhileHosting];
    [v13 alphaComponent];
    [v3 setOpaque:BSFloatGreaterThanOrEqualToFloat()];
  }
}

- (id)snapshotContext
{
  v3 = [(UIScenePresentationManager *)self scene];
  v4 = [v3 snapshotContext];
  [(UIScenePresentationManager *)&self->super.isa _modifySnapshotConfiguration:v4];

  return v4;
}

- (id)snapshotPresentationForSnapshot:(id)a3
{
  v3 = a3;
  v4 = [[_UISceneSnapshotPresentationView alloc] initWithSnapshot:v3];

  [(_UISceneSnapshotPresentationView *)v4 capture];

  return v4;
}

- (_UISceneSnapshotPresentationView)_snapshotPresentationViewWithConfigurator:(_UISceneSnapshotPresentationView *)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [(_UISceneSnapshotPresentationView *)a1 scene];
    if (!v4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to create a snapshot after the scene has dealloced : manager=%@", a1];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel__snapshotPresentationViewWithConfigurator_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        v19 = a1;
        v20 = 2114;
        v21 = @"UIScenePresentationManager.m";
        v22 = 1024;
        v23 = 263;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1898EC0BCLL);
    }

    v5 = v4;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__UIScenePresentationManager__snapshotPresentationViewWithConfigurator___block_invoke;
    v12[3] = &unk_1E7109D98;
    v12[4] = a1;
    v13 = v3;
    v6 = [v5 prepareSnapshotWithConfigurator:v12];
    a1 = [[_UISceneSnapshotPresentationView alloc] initWithSnapshot:v6];
  }

  return a1;
}

void __72__UIScenePresentationManager__snapshotPresentationViewWithConfigurator___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [(UIScenePresentationManager *)*(a1 + 32) _modifySnapshotConfiguration:v4];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)captureSnapshotPresentationView
{
  v2 = [(UIScenePresentationManager *)self _snapshotPresentationViewWithConfigurator:?];
  [v2 capture];

  return v2;
}

- (id)succinctDescription
{
  v2 = [(UIScenePresentationManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v5 = [WeakRetained identifier];
  [v3 appendString:v5 withName:@"sceneID"];

  if ([(UIScenePresentationManager *)self isInvalidated])
  {
    v6 = [v3 appendBool:1 withName:@"invalidated"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIScenePresentationManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(UIScenePresentationManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__UIScenePresentationManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __68__UIScenePresentationManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"allLayersTargetOwner" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"individualLayersTargetOwner" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"defaultPresentationContext" skipIfNil:1];
}

- (void)owner:(id)a3 willPrioritizePresenter:(id)a4 deactivatePresenter:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (self->_scenePresenterOwner == v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = self->_prioritizedPresenterObservers;
    v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v19 + 1) + 8 * i) _presentationManager:self willPrioritizePresenter:v8];
        }

        v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v9 = [(UIScenePresentationContext *)self->_defaultScenePresentationContext _layerTargetsToExclude];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = [MEMORY[0x1E695DFA8] set];
    }

    v11 = [(_UIScenePresenterOwner *)v7 layerTarget];
    if (v8)
    {
      [v10 addObject:v11];
    }

    else
    {
      [v10 removeObject:v11];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__UIScenePresentationManager_owner_willPrioritizePresenter_deactivatePresenter___block_invoke;
    v17[3] = &unk_1E70FA288;
    v18 = v10;
    v12 = v10;
    [(UIScenePresentationManager *)self modifyDefaultPresentationContext:v17];
  }
}

- (void)ownerDidInvalidateLastPresenter:(id)a3
{
  v5 = a3;
  v4 = [v5 layerTarget];
  if (v4)
  {
    [(UIScenePresentationManager *)self owner:v5 willPrioritizePresenter:0 deactivatePresenter:0];
    [(NSMapTable *)self->_mapLayersToPresenterOwners removeObjectForKey:v4];
    [v5 setDelegate:0];
    [v5 invalidate];
  }
}

- (void)sceneContentStateDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v5 = [WeakRetained contentState] != 0;

  scenePresenterOwner = self->_scenePresenterOwner;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__UIScenePresentationManager_sceneContentStateDidChange___block_invoke;
  v7[3] = &__block_descriptor_33_e31_v24__0___UIScenePresenter_8_B16l;
  v8 = v5;
  [(_UIScenePresenterOwner *)scenePresenterOwner enumeratePresentersUsingBlock:v7];
}

void __57__UIScenePresentationManager_sceneContentStateDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 presentationContext];
  [v4 _isVisibilityPropagationEnabled];
  v5 = BSEqualBools();

  if ((v5 & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__UIScenePresentationManager_sceneContentStateDidChange___block_invoke_2;
    v6[3] = &__block_descriptor_33_e43_v16__0__UIMutableScenePresentationContext_8l;
    v7 = *(a1 + 32);
    [v3 modifyPresentationContext:v6];
  }
}

- (id)_presenterWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIScenePresenterOwner *)self->_scenePresenterOwner presenterWithIdentifier:v4];
  if (!v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSMapTable *)self->_mapLayersToPresenterOwners objectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) presenterWithIdentifier:v4];
          if (v11)
          {
            v5 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_12:
  }

  return v5;
}

- (BOOL)_hasPresenterWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIScenePresenterOwner *)self->_scenePresenterOwner presenterWithIdentifier:v4];

  if (v5)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSMapTable *)self->_mapLayersToPresenterOwners objectEnumerator];
    v6 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) presenterWithIdentifier:v4];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v6;
}

- (void)_addPrioritizedPresenterObserver:(id)a3
{
  v4 = a3;
  prioritizedPresenterObservers = self->_prioritizedPresenterObservers;
  v8 = v4;
  if (!prioritizedPresenterObservers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_prioritizedPresenterObservers;
    self->_prioritizedPresenterObservers = v6;

    v4 = v8;
    prioritizedPresenterObservers = self->_prioritizedPresenterObservers;
  }

  [(NSHashTable *)prioritizedPresenterObservers addObject:v4];
}

- (UIScenePresentationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end