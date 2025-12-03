@interface _UIScenePresenterOwner
- (BOOL)_isPresenterActive:(id)active;
- (BOOL)_isPresenterHosting:(id)hosting;
- (UIScenePresentationContext)defaultPresentationContext;
- (_UIScenePresenterOwner)initWithScenePresentationManager:(id)manager layerTarget:(id)target;
- (_UIScenePresenterOwnerDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)presenterWithIdentifier:(id)identifier;
- (id)succinctDescription;
- (void)_activatePresenter:(id)presenter;
- (void)_deactivatePresenter:(id)presenter;
- (void)_invalidatePresenter:(id)presenter;
- (void)_setActivePrioritizedPresenter:(id)presenter;
- (void)_updateActivePrioritizedPresenterIfNecessary;
- (void)_updateHostingStateForScenePresentersIfNecessary;
- (void)addPresenter:(id)presenter;
- (void)dealloc;
- (void)enumeratePresentersUsingBlock:(id)block;
- (void)invalidate;
@end

@implementation _UIScenePresenterOwner

- (UIScenePresentationContext)defaultPresentationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_scenePresentationManager);
  defaultPresentationContext = [WeakRetained defaultPresentationContext];

  return defaultPresentationContext;
}

- (void)_updateActivePrioritizedPresenterIfNecessary
{
  lastObject = [(NSMutableOrderedSet *)self->_activePresentersByPriority lastObject];
  if (self->_prioritizedPresenter != lastObject)
  {
    v4 = lastObject;
    [(_UIScenePresenterOwner *)self _setActivePrioritizedPresenter:lastObject];
    lastObject = v4;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:52 description:{@"_UIScenePresenterOwner %@ must be invalidated before it can be deallocated.", self}];
  }

  v5.receiver = self;
  v5.super_class = _UIScenePresenterOwner;
  [(_UIScenePresenterOwner *)&v5 dealloc];
}

- (_UIScenePresenterOwner)initWithScenePresentationManager:(id)manager layerTarget:(id)target
{
  managerCopy = manager;
  targetCopy = target;
  v19.receiver = self;
  v19.super_class = _UIScenePresenterOwner;
  v8 = [(_UIScenePresenterOwner *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scenePresentationManager, managerCopy);
    objc_storeStrong(&v9->_layerTarget, target);
    v10 = [_UISceneLayerHostContainerView alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_scenePresentationManager);
    scene = [WeakRetained scene];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<_UIScenePresenterOwner-%p>", v9];
    v14 = [(_UISceneLayerHostContainerView *)v10 initWithScene:scene debugDescription:v13];
    realSceneHostViewsContainer = v9->_realSceneHostViewsContainer;
    v9->_realSceneHostViewsContainer = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    inactivePresentersByPriority = v9->_inactivePresentersByPriority;
    v9->_inactivePresentersByPriority = v16;
  }

  return v9;
}

- (void)addPresenter:(id)presenter
{
  presenterCopy = presenter;
  v7 = presenterCopy;
  if (!presenterCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    presenterCopy = 0;
  }

  [(NSMutableSet *)self->_inactivePresentersByPriority addObject:presenterCopy];
}

- (void)enumeratePresentersUsingBlock:(id)block
{
  blockCopy = block;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  inactivePresentersByPriority = self->_inactivePresentersByPriority;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___UIScenePresenterOwner_enumeratePresentersUsingBlock___block_invoke;
  v10[3] = &unk_1E7109DC0;
  v6 = blockCopy;
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

- (id)presenterWithIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
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
      identifier = [v11 identifier];
      v13 = [identifier isEqualToString:identifierCopy];

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
      identifier2 = [v11 identifier];
      v18 = [identifier2 isEqualToString:identifierCopy];

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

- (BOOL)_isPresenterActive:(id)active
{
  activeCopy = active;
  if (!activeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];
  }

  v6 = [(NSMutableOrderedSet *)self->_activePresentersByPriority containsObject:activeCopy];

  return v6;
}

- (BOOL)_isPresenterHosting:(id)hosting
{
  hostingCopy = hosting;
  if (!hostingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];
  }

  v6 = self->_prioritizedPresenter == hostingCopy;

  return v6;
}

- (void)_activatePresenter:(id)presenter
{
  presenterCopy = presenter;
  v11 = presenterCopy;
  if (!presenterCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    presenterCopy = 0;
  }

  if ([presenterCopy isInvalidated])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:118 description:{@"Attempted to activate presenter %@ which was already invalidated.", v11}];
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

- (void)_deactivatePresenter:(id)presenter
{
  presenterCopy = presenter;
  v7 = presenterCopy;
  if (!presenterCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    presenterCopy = 0;
  }

  if ([(_UIScenePresenterOwner *)self _isPresenterActive:presenterCopy])
  {
    [(NSMutableOrderedSet *)self->_activePresentersByPriority removeObject:v7];
    [(NSMutableSet *)self->_inactivePresentersByPriority addObject:v7];
    [(_UIScenePresenterOwner *)self _updateActivePrioritizedPresenterIfNecessary];
  }
}

- (void)_invalidatePresenter:(id)presenter
{
  presenterCopy = presenter;
  v8 = presenterCopy;
  if (!presenterCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIScenePresenterOwner.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

    presenterCopy = 0;
  }

  [(NSMutableSet *)self->_inactivePresentersByPriority removeObject:presenterCopy];
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
  succinctDescriptionBuilder = [(_UIScenePresenterOwner *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIScenePresenterOwner *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(_UIScenePresenterOwner *)self succinctDescriptionBuilder];
  if (self->_layerTarget)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@:%p>", v8, self->_layerTarget];
    v10 = [succinctDescriptionBuilder appendObject:v9 withName:@"layerTarget"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64___UIScenePresenterOwner_descriptionBuilderWithMultilinePrefix___block_invoke;
  v14[3] = &unk_1E70F35B8;
  v11 = succinctDescriptionBuilder;
  v15 = v11;
  selfCopy = self;
  [v11 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v14];
  v12 = v11;

  return v11;
}

- (void)_setActivePrioritizedPresenter:(id)presenter
{
  v30 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  p_prioritizedPresenter = &self->_prioritizedPresenter;
  prioritizedPresenter = self->_prioritizedPresenter;
  if (prioritizedPresenter != presenterCopy)
  {
    presentationView = [(_UIScenePresenter *)prioritizedPresenter presentationView];
    presentationView2 = [(_UIScenePresenter *)presenterCopy presentationView];
    window = [presentationView window];
    window2 = [presentationView2 window];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained owner:self willPrioritizePresenter:presenterCopy deactivatePresenter:self->_prioritizedPresenter];

    if (presentationView)
    {
      v13 = UIScenePresentationLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_loadWeakRetained(&self->_scenePresentationManager);
        [v14 scene];
        v15 = v24 = window;
        [v15 identifier];
        v16 = v23 = window2;
        v17 = self->_prioritizedPresenter;
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v17;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_INFO, "[%{public}@] Deactivating scene presenter: %{public}@", buf, 0x16u);

        window = v24;
        window2 = v23;
      }

      [presentationView setHostContainerView:0];
      v18 = *p_prioritizedPresenter;
      *p_prioritizedPresenter = 0;
    }

    if (presentationView2)
    {
      v19 = UIScenePresentationLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v25 = window;
        v20 = objc_loadWeakRetained(&self->_scenePresentationManager);
        [v20 scene];
        v21 = v23 = window2;
        identifier = [v21 identifier];
        *buf = 138543618;
        v27 = identifier;
        v28 = 2114;
        v29 = presenterCopy;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_INFO, "[%{public}@] Activating scene presenter: %{public}@", buf, 0x16u);

        window2 = v23;
        window = v25;
      }

      objc_storeStrong(&self->_prioritizedPresenter, presenter);
    }

    [(_UIScenePresenterOwner *)self _updateHostingStateForScenePresentersIfNecessary];
    if (presentationView)
    {
      [(UIView *)self->_realSceneHostViewsContainer removeFromSuperview];
    }

    if (presentationView2)
    {
      [presentationView2 setHostContainerView:self->_realSceneHostViewsContainer];
    }

    else
    {
      [(UIView *)self->_realSceneHostViewsContainer removeFromSuperview];
    }

    if (window != window2)
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