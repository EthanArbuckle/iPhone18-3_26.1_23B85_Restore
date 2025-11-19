@interface _UIScenePresenterOwner
- (BOOL)_isPresenterActive:(id)a3;
- (BOOL)_isPresenterHosting:(id)a3;
- (UIScenePresentationContext)defaultPresentationContext;
- (_UIScenePresenterOwner)initWithScenePresentationManager:(id)a3 layerTarget:(id)a4;
- (_UIScenePresenterOwnerDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)presenterWithIdentifier:(id)a3;
- (id)succinctDescription;
- (void)_activatePresenter:(id)a3;
- (void)_deactivatePresenter:(id)a3;
- (void)_invalidatePresenter:(id)a3;
- (void)_setActivePrioritizedPresenter:(id)a3;
- (void)_updateActivePrioritizedPresenterIfNecessary;
- (void)_updateHostingStateForScenePresentersIfNecessary;
- (void)addPresenter:(id)a3;
- (void)dealloc;
- (void)enumeratePresentersUsingBlock:(id)a3;
- (void)invalidate;
@end

@implementation _UIScenePresenterOwner

- (UIScenePresentationContext)defaultPresentationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_scenePresentationManager);
  v3 = [WeakRetained defaultPresentationContext];

  return v3;
}

- (void)_updateActivePrioritizedPresenterIfNecessary
{
  v3 = [(NSMutableOrderedSet *)self->_activePresentersByPriority lastObject];
  if (self->_prioritizedPresenter != v3)
  {
    v4 = v3;
    [(_UIScenePresenterOwner *)self _setActivePrioritizedPresenter:v3];
    v3 = v4;
  }
}

- (void)_updateHostingStateForScenePresentersIfNecessary
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74___UIScenePresenterOwner__updateHostingStateForScenePresentersIfNecessary__block_invoke;
  v3[3] = &unk_1E7109E70;
  v3[4] = self;
  [(_UIScenePresenterOwner *)self enumeratePresentersUsingBlock:v3];
  [(_UIScenePresenter *)self->_prioritizedPresenter updateHostingStateIfNecessary];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v4 = [(NSMutableSet *)self->_inactivePresentersByPriority copy];
    [v4 enumerateObjectsUsingBlock:&__block_literal_global_29_2];

    v5 = [(NSMutableOrderedSet *)self->_activePresentersByPriority copy];
    [v5 enumerateObjectsUsingBlock:&__block_literal_global_31_0];

    [(_UISceneLayerHostContainerView *)self->_realSceneHostViewsContainer invalidate];
    [(NSMutableSet *)self->_inactivePresentersByPriority removeAllObjects];
    activePresentersByPriority = self->_activePresentersByPriority;

    [(NSMutableOrderedSet *)activePresentersByPriority removeAllObjects];
  }
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:52 description:{@"_UIScenePresenterOwner %@ must be invalidated before it can be deallocated.", self}];
  }

  v5.receiver = self;
  v5.super_class = _UIScenePresenterOwner;
  [(_UIScenePresenterOwner *)&v5 dealloc];
}

- (_UIScenePresenterOwner)initWithScenePresentationManager:(id)a3 layerTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _UIScenePresenterOwner;
  v8 = [(_UIScenePresenterOwner *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scenePresentationManager, v6);
    objc_storeStrong(&v9->_layerTarget, a4);
    v10 = [_UISceneLayerHostContainerView alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_scenePresentationManager);
    v12 = [WeakRetained scene];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<_UIScenePresenterOwner-%p>", v9];
    v14 = [(_UISceneLayerHostContainerView *)v10 initWithScene:v12 debugDescription:v13];
    realSceneHostViewsContainer = v9->_realSceneHostViewsContainer;
    v9->_realSceneHostViewsContainer = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    inactivePresentersByPriority = v9->_inactivePresentersByPriority;
    v9->_inactivePresentersByPriority = v16;
  }

  return v9;
}

- (void)addPresenter:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    v5 = 0;
  }

  [(NSMutableSet *)self->_inactivePresentersByPriority addObject:v5];
}

- (void)enumeratePresentersUsingBlock:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  inactivePresentersByPriority = self->_inactivePresentersByPriority;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___UIScenePresenterOwner_enumeratePresentersUsingBlock___block_invoke;
  v10[3] = &unk_1E7109DC0;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  [(NSMutableSet *)inactivePresentersByPriority enumerateObjectsUsingBlock:v10];
  if ((v14[3] & 1) == 0)
  {
    activePresentersByPriority = self->_activePresentersByPriority;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56___UIScenePresenterOwner_enumeratePresentersUsingBlock___block_invoke_2;
    v8[3] = &unk_1E7109DE8;
    v9 = v6;
    [(NSMutableOrderedSet *)activePresentersByPriority enumerateObjectsUsingBlock:v8];
  }

  _Block_object_dispose(&v13, 8);
}

- (id)presenterWithIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_inactivePresentersByPriority;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v5];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_activePresentersByPriority;
    v14 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *v22;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v21 + 1) + 8 * v16);
      v17 = [v11 identifier];
      v18 = [v17 isEqualToString:v5];

      if (v18)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }
  }

  v14 = v11;
LABEL_21:

  return v14;
}

- (BOOL)_isPresenterActive:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];
  }

  v6 = [(NSMutableOrderedSet *)self->_activePresentersByPriority containsObject:v5];

  return v6;
}

- (BOOL)_isPresenterHosting:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];
  }

  v6 = self->_prioritizedPresenter == v5;

  return v6;
}

- (void)_activatePresenter:(id)a3
{
  v5 = a3;
  v11 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    v5 = 0;
  }

  if ([v5 isInvalidated])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:118 description:{@"Attempted to activate presenter %@ which was already invalidated.", v11}];
  }

  [(NSMutableSet *)self->_inactivePresentersByPriority removeObject:v11];
  activePresentersByPriority = self->_activePresentersByPriority;
  if (!activePresentersByPriority)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v8 = self->_activePresentersByPriority;
    self->_activePresentersByPriority = v7;

    activePresentersByPriority = self->_activePresentersByPriority;
  }

  [(NSMutableOrderedSet *)activePresentersByPriority addObject:v11];
  [(NSMutableOrderedSet *)self->_activePresentersByPriority sortUsingComparator:&__block_literal_global_260];
  [(_UIScenePresenterOwner *)self _updateActivePrioritizedPresenterIfNecessary];
}

- (void)_deactivatePresenter:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    v5 = 0;
  }

  if ([(_UIScenePresenterOwner *)self _isPresenterActive:v5])
  {
    [(NSMutableOrderedSet *)self->_activePresentersByPriority removeObject:v7];
    [(NSMutableSet *)self->_inactivePresentersByPriority addObject:v7];
    [(_UIScenePresenterOwner *)self _updateActivePrioritizedPresenterIfNecessary];
  }
}

- (void)_invalidatePresenter:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    v5 = 0;
  }

  [(NSMutableSet *)self->_inactivePresentersByPriority removeObject:v5];
  if ([(_UIScenePresenterOwner *)self _isPresenterActive:v8])
  {
    [(NSMutableOrderedSet *)self->_activePresentersByPriority removeObject:v8];
    [(_UIScenePresenterOwner *)self _updateActivePrioritizedPresenterIfNecessary];
  }

  if (![(NSMutableSet *)self->_inactivePresentersByPriority count]&& ![(NSMutableOrderedSet *)self->_activePresentersByPriority count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained ownerDidInvalidateLastPresenter:self];
  }
}

- (id)succinctDescription
{
  v2 = [(_UIScenePresenterOwner *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIScenePresenterOwner *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(_UIScenePresenterOwner *)self succinctDescriptionBuilder];
  if (self->_layerTarget)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@:%p>", v8, self->_layerTarget];
    v10 = [v5 appendObject:v9 withName:@"layerTarget"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64___UIScenePresenterOwner_descriptionBuilderWithMultilinePrefix___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v11 = v5;
  v15 = v11;
  v16 = self;
  [v11 appendBodySectionWithName:0 multilinePrefix:v4 block:v14];
  v12 = v11;

  return v11;
}

- (void)_setActivePrioritizedPresenter:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_prioritizedPresenter = &self->_prioritizedPresenter;
  prioritizedPresenter = self->_prioritizedPresenter;
  if (prioritizedPresenter != v5)
  {
    v8 = [(_UIScenePresenter *)prioritizedPresenter presentationView];
    v9 = [(_UIScenePresenter *)v5 presentationView];
    v10 = [v8 window];
    v11 = [v9 window];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained owner:self willPrioritizePresenter:v5 deactivatePresenter:self->_prioritizedPresenter];

    if (v8)
    {
      v13 = UIScenePresentationLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_loadWeakRetained(&self->_scenePresentationManager);
        [v14 scene];
        v15 = v24 = v10;
        [v15 identifier];
        v16 = v23 = v11;
        v17 = self->_prioritizedPresenter;
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v17;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_INFO, "[%{public}@] Deactivating scene presenter: %{public}@", buf, 0x16u);

        v10 = v24;
        v11 = v23;
      }

      [v8 setHostContainerView:0];
      v18 = *p_prioritizedPresenter;
      *p_prioritizedPresenter = 0;
    }

    if (v9)
    {
      v19 = UIScenePresentationLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v25 = v10;
        v20 = objc_loadWeakRetained(&self->_scenePresentationManager);
        [v20 scene];
        v21 = v23 = v11;
        v22 = [v21 identifier];
        *buf = 138543618;
        v27 = v22;
        v28 = 2114;
        v29 = v5;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_INFO, "[%{public}@] Activating scene presenter: %{public}@", buf, 0x16u);

        v11 = v23;
        v10 = v25;
      }

      objc_storeStrong(&self->_prioritizedPresenter, a3);
    }

    [(_UIScenePresenterOwner *)self _updateHostingStateForScenePresentersIfNecessary];
    if (v8)
    {
      [(UIView *)self->_realSceneHostViewsContainer removeFromSuperview];
    }

    if (v9)
    {
      [v9 setHostContainerView:self->_realSceneHostViewsContainer];
    }

    else
    {
      [(UIView *)self->_realSceneHostViewsContainer removeFromSuperview];
    }

    if (v10 != v11)
    {
      +[UIWindow _synchronizeDrawing];
    }
  }
}

- (_UIScenePresenterOwnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end