@interface SBLayoutStateTransitionCoordinator
- (BOOL)isTransitioning;
- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity;
- (SBLayoutStateTransitionCoordinator)initWithWindowScene:(id)scene;
- (SBLayoutStateTransitionSceneEntityFrameProvider)sceneEntityFrameProvider;
- (SBWindowScene)windowScene;
- (id)layoutStateForApplicationTransitionContext:(id)context;
- (id)previousLayoutStateForApplicationTransitionContext:(id)context;
- (void)addObserver:(id)observer;
- (void)beginTransitionForWorkspaceTransaction:(id)transaction;
- (void)endTransitionWithError:(id)error;
- (void)removeObserver:(id)observer;
- (void)willEndTransition;
@end

@implementation SBLayoutStateTransitionCoordinator

- (BOOL)isTransitioning
{
  transitionContext = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
  v3 = transitionContext != 0;

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
            transitionContext = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
            [v9 layoutStateTransitionCoordinator:self transitionWillEndWithTransitionContext:transitionContext];
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

- (SBLayoutStateTransitionCoordinator)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = SBLayoutStateTransitionCoordinator;
  v5 = [(SBLayoutStateTransitionCoordinator *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    observerPointerArray = v6->_observerPointerArray;
    v6->_observerPointerArray = weakObjectsPointerArray;
  }

  return v6;
}

- (id)layoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateManager = [WeakRetained layoutStateManager];
  v7 = [layoutStateManager layoutStateForApplicationTransitionContext:contextCopy];

  return v7;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  return layoutState;
}

- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity
{
  entityCopy = entity;
  contextCopy = context;
  request = [contextCopy request];
  [request applicationTransitionContext:contextCopy frameForApplicationSceneEntity:entityCopy];
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

- (void)beginTransitionForWorkspaceTransaction:(id)transaction
{
  v20 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (![(SBLayoutStateTransitionCoordinator *)self isTransitioning])
  {
    v5 = [[SBLayoutStateTransitionContext alloc] initWithWorkspaceTransaction:transactionCopy];
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
            transitionContext = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
            [v13 layoutStateTransitionCoordinator:self transitionDidBeginWithTransitionContext:transitionContext];
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

- (void)endTransitionWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(SBLayoutStateTransitionCoordinator *)self isTransitioning])
  {
    transitionContext = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
    [transitionContext transitionCompletedWithError:errorCopy];

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
            transitionContext2 = [(SBLayoutStateTransitionCoordinator *)self transitionContext];
            [v12 layoutStateTransitionCoordinator:self transitionDidEndWithTransitionContext:transitionContext2];
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

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(NSPointerArray *)self->_observerPointerArray addPointer:?];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v4 = [(NSPointerArray *)self->_observerPointerArray count];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      while ([(NSPointerArray *)self->_observerPointerArray pointerAtIndex:v6]!= observerCopy)
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