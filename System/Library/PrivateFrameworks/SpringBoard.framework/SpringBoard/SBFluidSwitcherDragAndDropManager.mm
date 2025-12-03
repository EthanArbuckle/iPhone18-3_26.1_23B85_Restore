@interface SBFluidSwitcherDragAndDropManager
- (BOOL)_anyActiveAndVisibleSceneEntityMatches:(id)matches;
- (BOOL)_continuousExposeStripsOccluded;
- (BOOL)_workspaceWouldAllowTransitionToApplication:(id)application;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)isApplicationActiveAndVisible:(id)visible;
- (BOOL)isDragAndDropTransactionRunning;
- (BOOL)shouldBeginWindowDragGesture;
- (SBFluidSwitcherDragAndDropManager)initWithSwitcherController:(id)controller delegate:(id)delegate;
- (SBFluidSwitcherDragAndDropManagerDelegate)delegate;
- (SBFluidSwitcherViewController)switcherContentController;
- (SBSceneManager)sceneManager;
- (SBSwitcherController)switcherController;
- (id)_dragInteraction:(id)interaction customSpringAnimationBehaviorForCancellingItem:(id)item;
- (id)_dropInteraction:(id)interaction customSpringAnimationBehaviorForDroppingItem:(id)item;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)mostRecentSceneIdentityExcludingLiveScenesForApplication:(id)application;
- (id)newSceneIdentityForApplication:(id)application;
- (id)preferredSceneIdentityForApplication:(id)application targetContentIdentifier:(id)identifier preferNewScene:(BOOL)scene;
- (void)_addMedusaDraggingDestinationWindow:(id)window;
- (void)_beginTrackingDropSessionIfNeeded:(id)needed;
- (void)_dragInteraction:(id)interaction prepareForSession:(id)session completion:(id)completion;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)_removeMedusaDraggingDestinationWindow:(id)window;
- (void)_windowDragSessionDidEnd;
- (void)dealloc;
- (void)dragAndDropTransaction:(id)transaction didBeginGesture:(id)gesture;
- (void)dragAndDropTransaction:(id)transaction didEndGesture:(id)gesture;
- (void)dragAndDropTransaction:(id)transaction didPlatterizeWindowDragWithSceneIdentifier:(id)identifier;
- (void)dragAndDropTransaction:(id)transaction didUpdateGesture:(id)gesture;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionDidMove:(id)move;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)dropInteraction:(id)interaction concludeDrop:(id)drop;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)handleWindowDragGestureRecognizer:(id)recognizer;
- (void)transactionDidComplete:(id)complete;
@end

@implementation SBFluidSwitcherDragAndDropManager

- (SBFluidSwitcherDragAndDropManager)initWithSwitcherController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = SBFluidSwitcherDragAndDropManager;
  v8 = [(SBFluidSwitcherDragAndDropManager *)&v24 init];
  if (v8)
  {
    contentViewController = [controllerCopy contentViewController];
    v10 = objc_opt_class();
    v11 = contentViewController;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    objc_storeWeak(&v8->_switcherController, controllerCopy);
    objc_storeWeak(&v8->_switcherContentController, v13);
    windowScene = [controllerCopy windowScene];
    sceneManager = [windowScene sceneManager];
    objc_storeWeak(&v8->_sceneManager, sceneManager);

    objc_storeWeak(&v8->_delegate, delegateCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activeDropSessions = v8->_activeDropSessions;
    v8->_activeDropSessions = weakToStrongObjectsMapTable;

    v18 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v8];
    dropInteraction = v8->_dropInteraction;
    v8->_dropInteraction = v18;

    [(UIDropInteraction *)v8->_dropInteraction _setWantsDefaultVisualBehavior:0];
    view = [v13 view];

    [view addInteraction:v8->_dropInteraction];
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requiredContextIdentifiersForMedusaDraggingDestination = v8->_requiredContextIdentifiersForMedusaDraggingDestination;
    v8->_requiredContextIdentifiersForMedusaDraggingDestination = v21;
  }

  return v8;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];

  [view removeInteraction:self->_dropInteraction];
  window = [view window];
  [(SBFluidSwitcherDragAndDropManager *)self _removeMedusaDraggingDestinationWindow:window];

  v6.receiver = self;
  v6.super_class = SBFluidSwitcherDragAndDropManager;
  [(SBFluidSwitcherDragAndDropManager *)&v6 dealloc];
}

- (BOOL)shouldBeginWindowDragGesture
{
  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  isDragging = [activeTransaction isDragging];

  return isDragging ^ 1;
}

- (void)handleWindowDragGestureRecognizer:(id)recognizer
{
  v39 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  if (!self->_hasAddedSwitcherWindowAsDragTarget)
  {
    self->_hasAddedSwitcherWindowAsDragTarget = 1;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    view = [WeakRetained view];
    window = [view window];
    [(SBFluidSwitcherDragAndDropManager *)self _addMedusaDraggingDestinationWindow:window];
  }

  state = [recognizerCopy state];
  if ((state - 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
    if ((state != 4 || ![(UIDragInteraction *)self->_windowDragInteraction _isActive]) && !self->_windowDragHandledByDruid)
    {
      [(SBFluidSwitcherDragAndDropManager *)self _windowDragSessionDidEnd];
    }

    view2 = [(UIDragInteraction *)self->_windowDragInteraction view];
    [view2 removeInteraction:self->_windowDragInteraction];

    windowDragInteraction = self->_windowDragInteraction;
    self->_windowDragInteraction = 0;
  }

  else
  {
    delegate = [(SBFluidSwitcherDragAndDropManager *)self delegate];
    v10 = delegate;
    if (!self->_windowDragInteraction)
    {
      v11 = [delegate dragAndDropManager:self sourceViewProviderForDraggingWindowWithGestureRecognizer:recognizerCopy];
      v12 = [[SBWindowDragInteraction alloc] initWithDelegate:self gestureRecognizer:recognizerCopy];
      v13 = self->_windowDragInteraction;
      self->_windowDragInteraction = v12;

      [(UIDragInteraction *)self->_windowDragInteraction setEnabled:0];
      [(SBWindowDragInteraction *)self->_windowDragInteraction setSourceViewProvider:v11];
      sourceView = [v11 sourceView];
      [sourceView addInteraction:self->_windowDragInteraction];
    }

    if (self->_windowDragSession)
    {
      v15 = [(NSMapTable *)self->_activeDropSessions objectForKey:?];
      [(SBFluidSwitcherDragAndDropManager *)self _beginTrackingDropSessionIfNeeded:v15];
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      _activeEvents = [recognizerCopy _activeEvents];
      v19 = [_activeEvents countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
LABEL_15:
        v22 = 0;
        while (1)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(_activeEvents);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          if (![v23 type])
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = [_activeEvents countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v20)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        v25 = [recognizerCopy _activeTouchesForEvent:v23];
        anyObject = [v25 anyObject];

        if (!anyObject)
        {
          goto LABEL_29;
        }

        v26 = [v10 dragAndDropManager:self displayItemForDraggingWindowWithGestureRecognizer:recognizerCopy];
        if (v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = [v10 dragAndDropManager:self displayItemForDraggingWindowWithGestureRecognizer:recognizerCopy];
          if (!v27)
          {
            [SBFluidSwitcherDragAndDropManager handleWindowDragGestureRecognizer:];
          }
        }

        uniqueIdentifier = [v27 uniqueIdentifier];
        windowDragSceneIdentifier = self->_windowDragSceneIdentifier;
        self->_windowDragSceneIdentifier = uniqueIdentifier;

        v30 = self->_windowDragInteraction;
        uniqueIdentifier2 = [v27 uniqueIdentifier];
        [(SBWindowDragInteraction *)v30 setSceneIdentifier:uniqueIdentifier2];

        v32 = self->_windowDragInteraction;
        bundleIdentifier = [v27 bundleIdentifier];
        [(SBWindowDragInteraction *)v32 setBundleIdentifier:bundleIdentifier];

        [(UIDragInteraction *)self->_windowDragInteraction _immediatelyBeginDragWithTouch:anyObject completion:0];
      }

      else
      {
LABEL_21:
        anyObject = _activeEvents;
      }
    }

LABEL_29:
  }
}

- (BOOL)isDragAndDropTransactionRunning
{
  activeTransaction = self->_activeTransaction;
  if (activeTransaction)
  {
    LOBYTE(activeTransaction) = [(SBDragAndDropWorkspaceTransaction *)activeTransaction isComplete]^ 1;
  }

  return activeTransaction;
}

- (void)dragAndDropTransaction:(id)transaction didBeginGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(SBFluidSwitcherDragAndDropManager *)self delegate];
  [delegate dragAndDropManager:self didBeginGesture:gestureCopy];
}

- (void)dragAndDropTransaction:(id)transaction didUpdateGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(SBFluidSwitcherDragAndDropManager *)self delegate];
  [delegate dragAndDropManager:self didUpdateGesture:gestureCopy];
}

- (void)dragAndDropTransaction:(id)transaction didEndGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(SBFluidSwitcherDragAndDropManager *)self delegate];
  [delegate dragAndDropManager:self didEndGesture:gestureCopy];
}

- (void)dragAndDropTransaction:(id)transaction didPlatterizeWindowDragWithSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SBFluidSwitcherDragAndDropManager *)self delegate];
  [delegate dragAndDropManager:self didPlatterizeWindowDragWithSceneIdentifier:identifierCopy];
}

- (BOOL)isApplicationActiveAndVisible:(id)visible
{
  bundleIdentifier = [visible bundleIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBFluidSwitcherDragAndDropManager_isApplicationActiveAndVisible___block_invoke;
  v7[3] = &unk_2783A9EA0;
  v8 = bundleIdentifier;
  v5 = bundleIdentifier;
  LOBYTE(self) = [(SBFluidSwitcherDragAndDropManager *)self _anyActiveAndVisibleSceneEntityMatches:v7];

  return self;
}

uint64_t __67__SBFluidSwitcherDragAndDropManager_isApplicationActiveAndVisible___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 application];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)newSceneIdentityForApplication:(id)application
{
  applicationCopy = application;
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v6 = [WeakRetained newSceneIdentityForApplication:applicationCopy];

  return v6;
}

- (id)mostRecentSceneIdentityExcludingLiveScenesForApplication:(id)application
{
  applicationCopy = application;
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v6 = objc_loadWeakRetained(&self->_switcherController);
  v7 = [v6 activeAndVisibleSceneIdentifiersForApplication:applicationCopy];
  v8 = [WeakRetained sceneIdentityForApplication:applicationCopy excludingIdentifiers:v7];

  return v8;
}

- (id)preferredSceneIdentityForApplication:(id)application targetContentIdentifier:(id)identifier preferNewScene:(BOOL)scene
{
  sceneCopy = scene;
  identifierCopy = identifier;
  applicationCopy = application;
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v11 = objc_loadWeakRetained(&self->_switcherController);
  v12 = [v11 activeAndVisibleSceneIdentifiersForApplication:applicationCopy];
  v13 = [WeakRetained sceneIdentityForApplication:applicationCopy targetContentIdentifier:identifierCopy allowCanMatches:0 preferNewScene:sceneCopy visibleIdentifiers:v12];

  return v13;
}

- (void)_dragInteraction:(id)interaction prepareForSession:(id)session completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  completionCopy = completion;
  v12 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543362;
    v26 = sessionCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop prepareForSession: %{public}@", &v25, 0xCu);
  }

  if (self->_windowDragSession)
  {
    [SBFluidSwitcherDragAndDropManager _dragInteraction:prepareForSession:completion:];
  }

  if (self->_windowDragSessionPrepareCompletionBlock)
  {
    [SBFluidSwitcherDragAndDropManager _dragInteraction:prepareForSession:completion:];
  }

  v13 = objc_opt_class();
  v14 = SBSafeCast(v13, interactionCopy);
  if (!v14)
  {
    [SBFluidSwitcherDragAndDropManager _dragInteraction:a2 prepareForSession:self completion:?];
  }

  v15 = v14;
  sceneIdentifier = [v14 sceneIdentifier];
  v17 = objc_alloc(MEMORY[0x277D66998]);
  bundleIdentifier = [v15 bundleIdentifier];
  v19 = [v17 initWithUniqueIdentifier:bundleIdentifier withLaunchActions:0 startLocation:8];

  [v19 setDraggedSceneIdentifier:sceneIdentifier];
  [sessionCopy setLocalContext:v19];
  windowDragSession = self->_windowDragSession;
  self->_windowDragSession = sessionCopy;
  v21 = sessionCopy;

  v22 = MEMORY[0x223D6F7F0](completionCopy);
  windowDragSessionPrepareCompletionBlock = self->_windowDragSessionPrepareCompletionBlock;
  self->_windowDragSessionPrepareCompletionBlock = v22;

  v24 = [SBApplicationDropSession dropSessionWithWindowUIDragSession:v21];
  [(NSMapTable *)self->_activeDropSessions setObject:v24 forKey:v21];

  [(SBFluidSwitcherDragAndDropManager *)self _beginTrackingDropSessionIfNeeded:v24];
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  v9 = *MEMORY[0x277D85DE8];
  draggingCopy = dragging;
  v5 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = draggingCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBAppDrop _dragInteractionDidCancelLiftWithoutDragging: %{public}@", &v7, 0xCu);
  }

  if (!self->_windowDragHandledByDruid)
  {
    [(SBFluidSwitcherDragAndDropManager *)self _windowDragSessionDidEnd];
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  [activeTransaction _dragInteractionDidCancelLiftWithoutDragging:draggingCopy];
}

- (id)_dragInteraction:(id)interaction customSpringAnimationBehaviorForCancellingItem:(id)item
{
  v15 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  interactionCopy = interaction;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeDropSessions = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v13 = 138543362;
    v14 = activeDropSessions;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop customSpringAnimationBehaviorForCancellingItem: for activeDropSessions:%{public}@", &v13, 0xCu);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v11 = [activeTransaction _dragInteraction:interactionCopy customSpringAnimationBehaviorForCancellingItem:itemCopy];

  return v11;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = sessionCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SBAppDrop itemsForBeginningSession: %{public}@", buf, 0xCu);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if (([activeTransaction matchesUIDragDropSession:sessionCopy] & 1) == 0)
  {
    [SBFluidSwitcherDragAndDropManager dragInteraction:itemsForBeginningSession:];
  }

  v8 = objc_alloc_init(MEMORY[0x277CCAA88]);
  [v8 registerDataRepresentationForTypeIdentifier:@"com.apple.springboard.private.windowdrag" visibility:3 loadHandler:&__block_literal_global_20];
  v9 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v8];
  localContext = [sessionCopy localContext];
  [v9 setLocalObject:localContext];

  v13 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];

  return v11;
}

uint64_t __78__SBFluidSwitcherDragAndDropManager_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = a2;
  v4 = [v2 data];
  v3[2](v3, v4, 0);

  return 0;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v17 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  itemCopy = item;
  sessionCopy = session;
  v11 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = sessionCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAppDrop previewForLiftingItem: %{public}@", &v15, 0xCu);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if (([activeTransaction matchesUIDragDropSession:sessionCopy] & 1) == 0)
  {
    [SBFluidSwitcherDragAndDropManager dragInteraction:previewForLiftingItem:session:];
  }

  v13 = [activeTransaction dragInteraction:interactionCopy previewForLiftingItem:itemCopy session:sessionCopy];

  return v13;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  v15 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  animatorCopy = animator;
  sessionCopy = session;
  v11 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = sessionCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAppDrop willAnimateLiftWithAnimator: %{public}@", &v13, 0xCu);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if (([activeTransaction matchesUIDragDropSession:sessionCopy] & 1) == 0)
  {
    [SBFluidSwitcherDragAndDropManager dragInteraction:willAnimateLiftWithAnimator:session:];
  }

  [activeTransaction dragInteraction:interactionCopy willAnimateLiftWithAnimator:animatorCopy session:sessionCopy];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v13 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  beginCopy = begin;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = beginCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionWillBegin: %{public}@", &v11, 0xCu);
  }

  self->_windowDragHandledByDruid = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dragAndDropManager:self didBeginDraggingWindowWithSceneIdentifier:self->_windowDragSceneIdentifier];

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if (([activeTransaction matchesUIDragDropSession:beginCopy] & 1) == 0)
  {
    [SBFluidSwitcherDragAndDropManager dragInteraction:sessionWillBegin:];
  }

  [activeTransaction dragInteraction:interactionCopy sessionWillBegin:beginCopy];
}

- (void)dragInteraction:(id)interaction sessionDidMove:(id)move
{
  interactionCopy = interaction;
  moveCopy = move;
  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([activeTransaction matchesUIDragDropSession:moveCopy])
  {
    [activeTransaction dragInteraction:interactionCopy sessionDidMove:moveCopy];
  }
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  v17 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  v10 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = sessionCopy;
    v15 = 2048;
    operationCopy = operation;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBAppDrop session: %{public}@ willEndWithOperation: %ld", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dragAndDropManager:self willEndDraggingWindowWithSceneIdentifier:self->_windowDragSceneIdentifier];

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([activeTransaction matchesUIDragDropSession:sessionCopy])
  {
    [activeTransaction dragInteraction:interactionCopy session:sessionCopy willEndWithOperation:operation];
  }

  [(SBFluidSwitcherDragAndDropManager *)self _windowDragSessionDidEnd];
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v16 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  sessionCopy = session;
  v10 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = sessionCopy;
    v14 = 2048;
    operationCopy = operation;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBAppDrop session: %{public}@ didEndWithOperation: %ld", &v12, 0x16u);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([activeTransaction matchesUIDragDropSession:sessionCopy])
  {
    [activeTransaction dragInteraction:interactionCopy session:sessionCopy didEndWithOperation:operation];
  }
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  v18 = *MEMORY[0x277D85DE8];
  defaultCopy = default;
  itemCopy = item;
  interactionCopy = interaction;
  v11 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    activeDropSessions = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v16 = 138543362;
    v17 = activeDropSessions;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAppDrop previewForCancellingItem: for activeDropSessions:%{public}@", &v16, 0xCu);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v14 = [activeTransaction dragInteraction:interactionCopy previewForCancellingItem:itemCopy withDefault:defaultCopy];

  return v14;
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v16 = *MEMORY[0x277D85DE8];
  animatorCopy = animator;
  itemCopy = item;
  interactionCopy = interaction;
  v11 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    activeDropSessions = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v14 = 138543362;
    v15 = activeDropSessions;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAppDrop willAnimateCancelWithAnimator: for activeDropSessions:%{public}@", &v14, 0xCu);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  [activeTransaction dragInteraction:interactionCopy item:itemCopy willAnimateCancelWithAnimator:animatorCopy];
}

- (void)_windowDragSessionDidEnd
{
  [(NSMapTable *)self->_activeDropSessions removeObjectForKey:self->_windowDragSession];
  windowDragSession = self->_windowDragSession;
  self->_windowDragSession = 0;

  windowDragSessionPrepareCompletionBlock = self->_windowDragSessionPrepareCompletionBlock;
  self->_windowDragSessionPrepareCompletionBlock = 0;

  windowDragSceneIdentifier = self->_windowDragSceneIdentifier;
  self->_windowDragSceneIdentifier = 0;

  self->_windowDragHandledByDruid = 0;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v13 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  _continuousExposeStripsOccluded = [SBApplicationDropSession canHandleUIDragDropSession:sessionCopy]|| [(SBFluidSwitcherDragAndDropManager *)self _continuousExposeStripsOccluded];
  v7 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = sessionCopy;
    v11 = 1024;
    v12 = _continuousExposeStripsOccluded;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBAppDrop canHandleSession: %{public}@ -> %{BOOL}u", &v9, 0x12u);
  }

  return _continuousExposeStripsOccluded;
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  v28 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  enterCopy = enter;
  v8 = [(NSMapTable *)self->_activeDropSessions objectForKey:enterCopy];
  null = [MEMORY[0x277CBEB68] null];

  if (v8 == null)
  {
    activeTransaction = SBLogMedusaDropDestination();
    if (os_log_type_enabled(activeTransaction, OS_LOG_TYPE_ERROR))
    {
      [SBFluidSwitcherDragAndDropManager dropInteraction:enterCopy sessionDidEnter:activeTransaction];
    }
  }

  else
  {
    if (!v8)
    {
      activeDropSessions = self->_activeDropSessions;
      localDragSession = [enterCopy localDragSession];
      v8 = [(NSMapTable *)activeDropSessions objectForKey:localDragSession];

      v12 = SBLogMedusaDropDestination();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v13)
        {
          *buf = 138543362;
          v27 = enterCopy;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidEnter: %{public}@ [local drag session]", buf, 0xCu);
        }

        v14 = self->_activeDropSessions;
        localDragSession2 = [enterCopy localDragSession];
        [(NSMapTable *)v14 removeObjectForKey:localDragSession2];

        [(NSMapTable *)self->_activeDropSessions setObject:v8 forKey:enterCopy];
      }

      else
      {
        if (v13)
        {
          *buf = 138543362;
          v27 = enterCopy;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidEnter: %{public}@ [loading drop session]", buf, 0xCu);
        }

        date = [MEMORY[0x277CBEAA8] date];
        v18 = self->_activeDropSessions;
        null2 = [MEMORY[0x277CBEB68] null];
        [(NSMapTable *)v18 setObject:null2 forKey:enterCopy];

        _continuousExposeStripsOccluded = [(SBFluidSwitcherDragAndDropManager *)self _continuousExposeStripsOccluded];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __69__SBFluidSwitcherDragAndDropManager_dropInteraction_sessionDidEnter___block_invoke;
        v22[3] = &unk_2783ABEB0;
        v23 = enterCopy;
        v24 = date;
        selfCopy = self;
        v21 = date;
        [SBApplicationDropSession getDropSessionWithUIDropSession:v23 sceneProvider:self defaultToSourceApplication:_continuousExposeStripsOccluded completion:v22];

        v8 = 0;
      }
    }

    [(SBFluidSwitcherDragAndDropManager *)self _beginTrackingDropSessionIfNeeded:v8];
    activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
    if ([activeTransaction matchesUIDragDropSession:enterCopy])
    {
      [activeTransaction dropInteraction:interactionCopy sessionDidEnter:enterCopy];
    }
  }
}

void __69__SBFluidSwitcherDragAndDropManager_dropInteraction_sessionDidEnter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = SBLogMedusaDropDestination();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__SBFluidSwitcherDragAndDropManager_dropInteraction_sessionDidEnter___block_invoke_cold_1(a1, v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      [*(a1 + 40) timeIntervalSinceNow];
      v11 = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = -v10;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidEnter: %{public}@ [loaded drop session] %.2fs", &v11, 0x16u);
    }

    [*(*(a1 + 48) + 64) setObject:v5 forKey:*(a1 + 32)];
  }
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  updateCopy = update;
  v8 = [(NSMapTable *)self->_activeDropSessions objectForKey:updateCopy];
  null = [MEMORY[0x277CBEB68] null];

  if (v8)
  {
    v10 = v8 == null;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];
  }

  else
  {
    [(SBFluidSwitcherDragAndDropManager *)self _beginTrackingDropSessionIfNeeded:v8];
    activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
    if ([activeTransaction matchesUIDragDropSession:updateCopy])
    {
      v13 = [activeTransaction dropInteraction:interactionCopy sessionDidUpdate:updateCopy];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];
    }

    v11 = v13;
  }

  return v11;
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  v12 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  exitCopy = exit;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = exitCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidExit: %{public}@", &v10, 0xCu);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([activeTransaction matchesUIDragDropSession:exitCopy])
  {
    [activeTransaction dropInteraction:interactionCopy sessionDidExit:exitCopy];
  }
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v16 = *MEMORY[0x277D85DE8];
  dropCopy = drop;
  interactionCopy = interaction;
  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v9 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = dropCopy;
    v12 = 1024;
    v13 = [activeTransaction matchesUIDragDropSession:dropCopy];
    v14 = 1024;
    v15 = activeTransaction != 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBAppDrop performDrop: %{public}@, transaction exists for session: %{BOOL}u, transaction exists: %{BOOL}u", &v10, 0x18u);
  }

  [activeTransaction dropInteraction:interactionCopy performDrop:dropCopy];
}

- (void)dropInteraction:(id)interaction concludeDrop:(id)drop
{
  v12 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  dropCopy = drop;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = dropCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop concludeDrop: %{public}@", &v10, 0xCu);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([activeTransaction matchesUIDragDropSession:dropCopy])
  {
    [activeTransaction dropInteraction:interactionCopy concludeDrop:dropCopy];
  }
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  v15 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  endCopy = end;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_activeTransaction != 0;
    v11 = 138543618;
    v12 = endCopy;
    v13 = 1024;
    v14 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidEnd: %{public}@, transaction exists: %{BOOL}u", &v11, 0x12u);
  }

  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  [(NSMapTable *)self->_activeDropSessions removeObjectForKey:endCopy];
  if ([activeTransaction matchesUIDragDropSession:endCopy])
  {
    [activeTransaction dropInteraction:interactionCopy sessionDidEnd:endCopy];
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  v20 = *MEMORY[0x277D85DE8];
  defaultCopy = default;
  itemCopy = item;
  interactionCopy = interaction;
  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v12 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    activeDropSessions = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v16 = 138543618;
    v17 = activeDropSessions;
    v18 = 1024;
    v19 = activeTransaction != 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop previewForDroppingItem: for activeDropSessions:%{public}@, transaction exists: %{BOOL}u", &v16, 0x12u);
  }

  v14 = [activeTransaction dropInteraction:interactionCopy previewForDroppingItem:itemCopy withDefault:defaultCopy];

  return v14;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  v18 = *MEMORY[0x277D85DE8];
  animatorCopy = animator;
  itemCopy = item;
  interactionCopy = interaction;
  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v12 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    activeDropSessions = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v14 = 138543618;
    v15 = activeDropSessions;
    v16 = 1024;
    v17 = activeTransaction != 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop willAnimateDropWithAnimator: for activeDropSessions:%{public}@, transaction exists: %{BOOL}u", &v14, 0x12u);
  }

  [activeTransaction dropInteraction:interactionCopy item:itemCopy willAnimateDropWithAnimator:animatorCopy];
}

- (id)_dropInteraction:(id)interaction customSpringAnimationBehaviorForDroppingItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  interactionCopy = interaction;
  activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v9 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    activeDropSessions = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v13 = 138543618;
    v14 = activeDropSessions;
    v15 = 1024;
    v16 = activeTransaction != 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBAppDrop customSpringAnimationBehaviorForDroppingItem: for activeDropSessions:%{public}@, transaction exists: %{BOOL}u", &v13, 0x12u);
  }

  v11 = [activeTransaction _dropInteraction:interactionCopy customSpringAnimationBehaviorForDroppingItem:itemCopy];

  return v11;
}

- (BOOL)_anyActiveAndVisibleSceneEntityMatches:(id)matches
{
  v21 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowScene = [WeakRetained windowScene];
  layoutStateProvider = [windowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  elements = [layoutState elements];
  v10 = [elements countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(elements);
        }

        workspaceEntity = [*(*(&v16 + 1) + 8 * i) workspaceEntity];
        applicationSceneEntity = [workspaceEntity applicationSceneEntity];

        LOBYTE(workspaceEntity) = matchesCopy[2](matchesCopy, applicationSceneEntity);
        if (workspaceEntity)
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [elements countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (void)_beginTrackingDropSessionIfNeeded:(id)needed
{
  v22 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  if (neededCopy)
  {
    activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];

    if (!activeTransaction || (-[SBFluidSwitcherDragAndDropManager activeTransaction](self, "activeTransaction"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 matchesApplicationDropSession:neededCopy], v6, (v7 & 1) == 0))
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherController);
      if ([SBDragAndDropWorkspaceTransaction shouldTrackLocationOfDropSession:neededCopy forSwitcherController:WeakRetained])
      {
        v9 = +[SBWorkspace mainWorkspace];
        transientOverlayPresentationManager = [v9 transientOverlayPresentationManager];

        mEMORY[0x277D0AB20] = [MEMORY[0x277D0AB20] sharedInstance];
        [mEMORY[0x277D0AB20] cancelEventsWithName:@"SBDragAndDrop"];

        v12 = +[SBWorkspace mainWorkspace];
        windowScene = [WeakRetained windowScene];
        _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2;
        v16[3] = &unk_2783ABF48;
        v16[4] = self;
        v17 = neededCopy;
        v18 = transientOverlayPresentationManager;
        v19 = WeakRetained;
        v15 = transientOverlayPresentationManager;
        [v12 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:&__block_literal_global_53 validator:v16];
      }

      else
      {
        v15 = SBLogMedusaDropDestination();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v21 = neededCopy;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "SBAppDrop _beginTrackingDropSessionIfNedeed: not starting tracking %{public}@ [not within drop boundary]", buf, 0xCu);
        }
      }
    }
  }
}

void __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSource:27];
  [v2 setEventLabel:@"SBDragAndDrop"];
}

uint64_t __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = NSAllMapTableValues(*(a1[4] + 8));
  v5 = [v4 containsObject:a1[5]];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(a1[4] + 2);
    v7 = [WeakRetained windowScene];
    v8 = [v7 layoutStateProvider];
    v9 = [v8 layoutState];

    v10 = [a1[5] application];
    v11 = [a1[4] _workspaceWouldAllowTransitionToApplication:v10];
    v12 = [v9 unlockedEnvironmentMode];
    v13 = [a1[5] localContext];
    v14 = [v13 startLocation];

    v15 = [a1[5] localContext];
    v16 = [v15 startLocation];

    if (v10)
    {
      if (v12 == 2 && ([a1[5] localContext], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "startLocation"), v17, v18 != 11))
      {
        v21 = SBLogMedusaDropDestination();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_1();
        }
      }

      else
      {
        v19 = [v9 elements];
        v20 = [v19 count];

        if (v20 || v12 == 2)
        {
          if ((v12 - 4) > 0xFFFFFFFFFFFFFFFDLL)
          {
            if (SBPeekConfigurationIsValid([v9 peekConfiguration]))
            {
              v21 = SBLogMedusaDropDestination();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_5();
              }
            }

            else if ([a1[6] hasActivePresentation] && objc_msgSend(a1[6], "activePresentationPreventsDragAndDrop"))
            {
              v21 = SBLogMedusaDropDestination();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_4();
              }
            }

            else
            {
              if (v11)
              {
                if (v14 != 8 && v16 != 11)
                {
                  v23 = [a1[7] windowManagementContext];
                  v24 = [v23 isChamoisOrFlexibleWindowing];

                  if ((v24 & 1) == 0)
                  {
                    v25 = a1[4];
                    v34[0] = MEMORY[0x277D85DD0];
                    v34[1] = 3221225472;
                    v34[2] = __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_54;
                    v34[3] = &unk_2783ABEF8;
                    v34[4] = v25;
                    v35 = a1[5];
                    if ([v25 _anyActiveAndVisibleSceneEntityMatches:v34])
                    {
                      v26 = SBLogMedusaDropDestination();
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                      {
                        __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_3();
                      }

                      goto LABEL_35;
                    }
                  }
                }

                v30[0] = MEMORY[0x277D85DD0];
                v30[1] = 3221225472;
                v30[2] = __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_55;
                v30[3] = &unk_2783ABF20;
                v31 = a1[7];
                v28 = a1[5];
                v29 = a1[4];
                v32 = v28;
                v33 = v29;
                [v3 setTransactionProvider:v30];

                v22 = 1;
                goto LABEL_36;
              }

              v21 = SBLogMedusaDropDestination();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_2();
              }
            }
          }

          else
          {
            v21 = SBLogMedusaDropDestination();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_6(v9, v21);
            }
          }
        }

        else
        {
          v21 = SBLogMedusaDropDestination();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_7();
          }
        }
      }
    }

    else
    {
      v21 = SBLogMedusaDropDestination();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_8();
      }
    }

LABEL_35:
    v22 = 0;
LABEL_36:

    goto LABEL_37;
  }

  v22 = 0;
LABEL_37:

  return v22;
}

uint64_t __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 application];
  v5 = [v3 sceneHandle];

  v6 = [v5 sceneIdentifier];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v8 = [WeakRetained sceneIdentityForApplication:v4 uniqueIdentifier:v6];

  v9 = [*(a1 + 40) sceneIdentity];
  v10 = [v8 isEqual:v9];

  return v10;
}

SBDragAndDropWorkspaceTransaction *__71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SBDragAndDropWorkspaceTransaction alloc] initWithTransitionRequest:v3 switcherController:*(a1 + 32) dropSession:*(a1 + 40) delegate:*(a1 + 48)];

  v5 = [*(a1 + 40) uiDragDropSession];
  v6 = SBFSafeProtocolCast();

  if (v6)
  {
    [(SBDragAndDropWorkspaceTransaction *)v4 dropInteraction:*(*(a1 + 48) + 48) sessionDidEnter:v6];
  }

  [(SBDragAndDropWorkspaceTransaction *)v4 addObserver:*(a1 + 48)];
  [*(a1 + 48) setActiveTransaction:v4];
  v7 = [*(a1 + 40) uiDragDropSession];
  v8 = *(a1 + 48);
  if (v7 == *(v8 + 80))
  {
    v9 = *(v8 + 88);

    if (!v9)
    {
      goto LABEL_7;
    }

    (*(*(*(a1 + 48) + 88) + 16))();
    v10 = *(a1 + 48);
    v7 = *(v10 + 88);
    *(v10 + 88) = 0;
  }

LABEL_7:

  return v4;
}

- (BOOL)_workspaceWouldAllowTransitionToApplication:(id)application
{
  applicationCopy = application;
  v4 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
  v5 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:applicationCopy];

  [(SBWorkspaceApplicationSceneTransitionContext *)v4 setEntity:v5 forLayoutRole:1];
  v6 = +[SBWorkspace mainWorkspace];
  v7 = [v6 createRequestWithOptions:0];
  [v7 setSource:27];
  [v7 setEventLabel:@"DragAndDrop"];
  [v7 setApplicationContext:v4];
  v8 = [v6 canExecuteTransitionRequest:v7];

  return v8;
}

- (void)_addMedusaDraggingDestinationWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    _contextId = [windowCopy _contextId];
    if (_contextId)
    {
      requiredContextIdentifiersForMedusaDraggingDestination = self->_requiredContextIdentifiersForMedusaDraggingDestination;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:_contextId];
      [(NSMutableSet *)requiredContextIdentifiersForMedusaDraggingDestination addObject:v6];
    }
  }

  _requiredContextIdentifiersForMedusaDraggingDestination = [(SBFluidSwitcherDragAndDropManager *)self _requiredContextIdentifiersForMedusaDraggingDestination];
  SBSSetRequiredContextIdsForMedusaDragAndDropForSpotlightOnly();
}

- (void)_removeMedusaDraggingDestinationWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    _contextId = [windowCopy _contextId];
    if (_contextId)
    {
      requiredContextIdentifiersForMedusaDraggingDestination = self->_requiredContextIdentifiersForMedusaDraggingDestination;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:_contextId];
      [(NSMutableSet *)requiredContextIdentifiersForMedusaDraggingDestination removeObject:v6];
    }
  }

  _requiredContextIdentifiersForMedusaDraggingDestination = [(SBFluidSwitcherDragAndDropManager *)self _requiredContextIdentifiersForMedusaDraggingDestination];
  SBSSetRequiredContextIdsForMedusaDragAndDropForSpotlightOnly();
}

- (BOOL)_continuousExposeStripsOccluded
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  windowManagementContext = [WeakRetained windowManagementContext];
  if ([windowManagementContext isAutomaticStageCreationEnabled])
  {
    v5 = objc_loadWeakRetained(&self->_switcherContentController);
    v6 = [v5 _areContinuousExposeStripsUnoccluded] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)transactionDidComplete:(id)complete
{
  v12 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  v5 = SBLogMedusaDropDestination();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  v7 = SBLogMedusaDropDestination();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SBFluidSwitcherDragAndDropManager *)completeCopy transactionDidComplete:v8];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    activeTransaction = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
    v11[0] = 67109120;
    v11[1] = activeTransaction == completeCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop transactionDidComplete: Matches active transaction: %{BOOL}u", v11, 8u);
  }

  activeTransaction2 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];

  if (activeTransaction2 == completeCopy)
  {
    [(SBFluidSwitcherDragAndDropManager *)self setActiveTransaction:0];
  }
}

- (SBSwitcherController)switcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);

  return WeakRetained;
}

- (SBFluidSwitcherViewController)switcherContentController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);

  return WeakRetained;
}

- (SBSceneManager)sceneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);

  return WeakRetained;
}

- (SBFluidSwitcherDragAndDropManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleWindowDragGestureRecognizer:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_dragInteraction:prepareForSession:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_dragInteraction:prepareForSession:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_dragInteraction:(const char *)a1 prepareForSession:(uint64_t)a2 completion:.cold.3(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"switcherDragInteraction != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBFluidSwitcherDragAndDropManager.m";
    v16 = 1024;
    v17 = 236;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)dragInteraction:itemsForBeginningSession:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:"-[SBFluidSwitcherDragAndDropManager dragInteraction:itemsForBeginningSession:]" object:? file:? lineNumber:? description:?];
}

- (void)dragInteraction:previewForLiftingItem:session:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:"-[SBFluidSwitcherDragAndDropManager dragInteraction:previewForLiftingItem:session:]" object:? file:? lineNumber:? description:?];
}

- (void)dragInteraction:willAnimateLiftWithAnimator:session:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:"-[SBFluidSwitcherDragAndDropManager dragInteraction:willAnimateLiftWithAnimator:session:]" object:? file:? lineNumber:? description:?];
}

- (void)dragInteraction:sessionWillBegin:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:"-[SBFluidSwitcherDragAndDropManager dragInteraction:sessionWillBegin:]" object:? file:? lineNumber:? description:?];
}

- (void)dropInteraction:(uint64_t)a1 sessionDidEnter:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "SBAppDrop sessionDidEnter: %{public}@ ignoring already attempted session", &v2, 0xCu);
}

void __69__SBFluidSwitcherDragAndDropManager_dropInteraction_sessionDidEnter___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "SBAppDrop getDropSessionWithUIDropSession: %{public}@ error: %{public}@", &v4, 0x16u);
}

void __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2_cold_6(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = SBStringForUnlockedEnvironmentMode([a1 unlockedEnvironmentMode]);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "SBAppDrop not creating transaction [unlocked environment is %{public}@]", &v4, 0xCu);
}

- (void)transactionDidComplete:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 activeTransaction];
  v6 = 138543618;
  v7 = a1;
  v8 = 1024;
  v9 = v5 == a1;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "SBAppDrop transactionDidComplete: %{public}@ Matches active transaction: %{BOOL}u", &v6, 0x12u);
}

@end