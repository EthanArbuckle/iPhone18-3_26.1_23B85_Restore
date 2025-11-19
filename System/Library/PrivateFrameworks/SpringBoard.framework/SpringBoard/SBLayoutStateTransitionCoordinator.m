@interface SBLayoutStateTransitionCoordinator
- (BOOL)isTransitioning;
- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4;
- (SBLayoutStateTransitionCoordinator)initWithWindowScene:(id)a3;
- (SBLayoutStateTransitionSceneEntityFrameProvider)sceneEntityFrameProvider;
- (SBWindowScene)windowScene;
- (id)layoutStateForApplicationTransitionContext:(id)a3;
- (id)previousLayoutStateForApplicationTransitionContext:(id)a3;
- (void)addObserver:(id)a3;
- (void)beginTransitionForWorkspaceTransaction:(id)a3;
- (void)endTransitionWithError:(id)a3;
- (void)removeObserver:(id)a3;
- (void)willEndTransition;
@end

@implementation SBLayoutStateTransitionCoordinator

- (BOOL)isTransitioning
{
  v2 = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
  v3 = v2 != 0;

  return v3;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (SBLayoutStateTransitionSceneEntityFrameProvider)sceneEntityFrameProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneEntityFrameProvider);
  if (!WeakRetained)
  {
    defaultSceneEntityFrameProvider = self->_defaultSceneEntityFrameProvider;
    if (!defaultSceneEntityFrameProvider)
    {
      v5 = [_SBDefaultSceneEntityFrameProvider alloc];
      v6 = objc_loadWeakRetained(&self->_windowScene);
      v7 = [(_SBDefaultSceneEntityFrameProvider *)v5 initWithWindowScene:v6];
      v8 = self->_defaultSceneEntityFrameProvider;
      self->_defaultSceneEntityFrameProvider = v7;

      defaultSceneEntityFrameProvider = self->_defaultSceneEntityFrameProvider;
    }

    WeakRetained = defaultSceneEntityFrameProvider;
  }

  return WeakRetained;
}

- (void)willEndTransition
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(SBLayoutStateTransitionCoordinator *)self isTransitioning])
  {
    v3 = [(NSPointerArray *)self->_observerPointerArray copy];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            v10 = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
            [v9 layoutStateTransitionCoordinator:self transitionWillEndWithTransitionContext:v10];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (SBLayoutStateTransitionCoordinator)initWithWindowScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBLayoutStateTransitionCoordinator;
  v5 = [(SBLayoutStateTransitionCoordinator *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
    v7 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    observerPointerArray = v6->_observerPointerArray;
    v6->_observerPointerArray = v7;
  }

  return v6;
}

- (id)layoutStateForApplicationTransitionContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained layoutStateManager];
  v7 = [v6 layoutStateForApplicationTransitionContext:v4];

  return v7;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v4 = [WeakRetained layoutStateProvider];
  v5 = [v4 layoutState];

  return v5;
}

- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 request];
  [v7 applicationTransitionContext:v6 frameForApplicationSceneEntity:v5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)beginTransitionForWorkspaceTransaction:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SBLayoutStateTransitionCoordinator *)self isTransitioning])
  {
    v5 = [[SBLayoutStateTransitionContext alloc] initWithWorkspaceTransaction:v4];
    transitionContext = self->_transitionContext;
    self->_transitionContext = v5;

    v7 = [(NSPointerArray *)self->_observerPointerArray copy];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v14 = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
            [v13 layoutStateTransitionCoordinator:self transitionDidBeginWithTransitionContext:v14];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)endTransitionWithError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBLayoutStateTransitionCoordinator *)self isTransitioning])
  {
    v5 = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
    [v5 transitionCompletedWithError:v4];

    v6 = [(NSPointerArray *)self->_observerPointerArray copy];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            v13 = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
            [v12 layoutStateTransitionCoordinator:self transitionDidEndWithTransitionContext:v13];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    transitionContext = self->_transitionContext;
    self->_transitionContext = 0;
  }
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(NSPointerArray *)self->_observerPointerArray addPointer:?];
  }
}

- (void)removeObserver:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v4 = [(NSPointerArray *)self->_observerPointerArray count];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      while ([(NSPointerArray *)self->_observerPointerArray pointerAtIndex:v6]!= v7)
      {
        if (v5 == ++v6)
        {
          goto LABEL_8;
        }
      }

      [(NSPointerArray *)self->_observerPointerArray removePointerAtIndex:v6];
    }
  }

LABEL_8:
}

@end