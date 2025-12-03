@interface SBSystemPointerInteractionManager
- (BOOL)isViewRegistered:(id)registered;
- (SBSystemPointerInteractionManager)initWithMultiDisplayUserInteractionCoordinator:(id)coordinator;
- (id)pointerInteraction:(id)interaction window:(id)window regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction window:(id)window styleForRegion:(id)region;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)pointerDidMoveToFromWindowScene:(id)scene toWindowScene:(id)windowScene;
- (void)pointerInteraction:(id)interaction window:(id)window willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction window:(id)window willExitRegion:(id)region animator:(id)animator;
- (void)registerView:(id)view delegate:(id)delegate;
@end

@implementation SBSystemPointerInteractionManager

- (SBSystemPointerInteractionManager)initWithMultiDisplayUserInteractionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (!coordinatorCopy)
  {
    [(SBSystemPointerInteractionManager *)a2 initWithMultiDisplayUserInteractionCoordinator:?];
  }

  v11.receiver = self;
  v11.super_class = SBSystemPointerInteractionManager;
  v7 = [(SBSystemPointerInteractionManager *)&v11 init];
  if (v7)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    registeredViewsToDelegates = v7->_registeredViewsToDelegates;
    v7->_registeredViewsToDelegates = weakToWeakObjectsMapTable;

    objc_storeStrong(&v7->_multiDisplayUserInteractionCoordinator, coordinator);
    [coordinatorCopy addPointerInteractionObserver:v7];
  }

  return v7;
}

- (void)registerView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v8 = [(NSMapTable *)self->_registeredViewsToDelegates objectForKey:viewCopy];

  if (v8)
  {
    [(SBSystemPointerInteractionManager *)a2 registerView:viewCopy delegate:?];
  }

  [(NSMapTable *)self->_registeredViewsToDelegates setObject:delegateCopy forKey:viewCopy];
}

- (BOOL)isViewRegistered:(id)registered
{
  v3 = [(NSMapTable *)self->_registeredViewsToDelegates objectForKey:registered];
  v4 = v3 != 0;

  return v4;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)dealloc
{
  [(SBMultiDisplayUserInteractionCoordinator *)self->_multiDisplayUserInteractionCoordinator removePointerInteractionObserver:self];
  v3.receiver = self;
  v3.super_class = SBSystemPointerInteractionManager;
  [(SBSystemPointerInteractionManager *)&v3 dealloc];
}

- (void)pointerDidMoveToFromWindowScene:(id)scene toWindowScene:(id)windowScene
{
  v18 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  windowSceneCopy = windowScene;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) pointerDidMoveToFromWindowScene:sceneCopy toWindowScene:windowSceneCopy];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)pointerInteraction:(id)interaction window:(id)window regionForRequest:(id)request defaultRegion:(id)region
{
  v60 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  requestCopy = request;
  if (windowCopy)
  {
    screen = [windowCopy screen];
    fixedCoordinateSpace = [screen fixedCoordinateSpace];

    [requestCopy location];
    [windowCopy convertPoint:fixedCoordinateSpace toCoordinateSpace:?];
    v53 = v13;
    v54 = v12;
    v14 = self->_registeredViewsToDelegates;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v15 = v14;
    v16 = [(NSMapTable *)v15 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v16)
    {
      v50 = windowCopy;
      v17 = *v56;
      v51 = *(MEMORY[0x277D768C8] + 8);
      v52 = *MEMORY[0x277D768C8];
      v18 = *(MEMORY[0x277D768C8] + 16);
      v19 = *(MEMORY[0x277D768C8] + 24);
      v20 = &selRef_performKeyboardShortcut;
      while (2)
      {
        v21 = 0;
        v22 = v20;
        do
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v55 + 1) + 8 * v21);
          v24 = [(NSMapTable *)v15 objectForKey:v23];
          [v23 convertPoint:fixedCoordinateSpace fromCoordinateSpace:{v54, v53}];
          v26 = v25;
          v28 = v27;
          v29 = v19;
          v30 = v18;
          v32 = v51;
          v31 = v52;
          if (objc_opt_respondsToSelector())
          {
            [v24 pointerInteractionHitTestInsetsForView:v23];
            v31 = v33;
            v32 = v34;
            v30 = v35;
            v29 = v36;
          }

          [v23 bounds];
          v63.origin.x = v32 + v37;
          v63.origin.y = v31 + v38;
          v39 = v29 + v32;
          v63.size.width = v40 - v39;
          v41 = v30 + v31;
          v63.size.height = v42 - v41;
          v62.x = v26;
          v62.y = v28;
          if (CGRectContainsPoint(v63, v62) && [v24 shouldBeginPointerInteractionRequest:requestCopy atLocation:v23 forView:{v26, v28}])
          {
            if (objc_opt_respondsToSelector())
            {
              v16 = [v24 regionAtLocation:v23 forView:{v26, v28}];
            }

            else
            {
              v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v23];
              v44 = MEMORY[0x277D75880];
              [v23 bounds];
              v16 = [v44 regionWithRect:v43 identifier:{v32 + v45, v31 + v46, v47 - v39, v48 - v41}];
            }

            windowCopy = v50;
            [v16 setReferenceView:v23];

            goto LABEL_21;
          }

          v21 = v21 + 1;
        }

        while (v16 != v21);
        v16 = [(NSMapTable *)v15 countByEnumeratingWithState:&v55 objects:v59 count:16];
        v20 = v22;
        if (v16)
        {
          continue;
        }

        break;
      }

      windowCopy = v50;
    }

LABEL_21:
  }

  else
  {
    fixedCoordinateSpace = SBLogSystemGesture();
    if (os_log_type_enabled(fixedCoordinateSpace, OS_LOG_TYPE_FAULT))
    {
      [SBSystemPointerInteractionManager pointerInteraction:fixedCoordinateSpace window:? regionForRequest:? defaultRegion:?];
    }

    v16 = 0;
  }

  return v16;
}

- (id)pointerInteraction:(id)interaction window:(id)window styleForRegion:(id)region
{
  regionCopy = region;
  referenceView = [regionCopy referenceView];
  v8 = [(NSMapTable *)self->_registeredViewsToDelegates objectForKey:referenceView];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 styleForRegion:regionCopy forView:referenceView];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:referenceView];
    v11 = [MEMORY[0x277D75858] effectWithPreview:v10];
    v9 = [MEMORY[0x277D75890] styleWithEffect:v11 shape:0];
  }

  return v9;
}

- (void)pointerInteraction:(id)interaction window:(id)window willEnterRegion:(id)region animator:(id)animator
{
  referenceView = [region referenceView];
  activePointerRegionView = self->_activePointerRegionView;
  self->_activePointerRegionView = referenceView;
}

- (void)pointerInteraction:(id)interaction window:(id)window willExitRegion:(id)region animator:(id)animator
{
  activePointerRegionView = self->_activePointerRegionView;
  self->_activePointerRegionView = 0;
  regionCopy = region;

  referenceView = [regionCopy referenceView];

  v9 = [(NSMapTable *)self->_registeredViewsToDelegates objectForKey:referenceView];
  if (objc_opt_respondsToSelector())
  {
    [v9 pointerWillExitRegion];
  }
}

- (void)initWithMultiDisplayUserInteractionCoordinator:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemPointerInteractionManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"userInteractionCoordinator"}];
}

- (void)registerView:(uint64_t)a3 delegate:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemPointerInteractionManager.m" lineNumber:36 description:{@"The view (%@) had already been registered previously.", a3}];
}

@end