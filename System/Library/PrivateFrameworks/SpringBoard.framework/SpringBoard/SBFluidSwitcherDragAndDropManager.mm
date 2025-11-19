@interface SBFluidSwitcherDragAndDropManager
- (BOOL)_anyActiveAndVisibleSceneEntityMatches:(id)a3;
- (BOOL)_continuousExposeStripsOccluded;
- (BOOL)_workspaceWouldAllowTransitionToApplication:(id)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)isApplicationActiveAndVisible:(id)a3;
- (BOOL)isDragAndDropTransactionRunning;
- (BOOL)shouldBeginWindowDragGesture;
- (SBFluidSwitcherDragAndDropManager)initWithSwitcherController:(id)a3 delegate:(id)a4;
- (SBFluidSwitcherDragAndDropManagerDelegate)delegate;
- (SBFluidSwitcherViewController)switcherContentController;
- (SBSceneManager)sceneManager;
- (SBSwitcherController)switcherController;
- (id)_dragInteraction:(id)a3 customSpringAnimationBehaviorForCancellingItem:(id)a4;
- (id)_dropInteraction:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)mostRecentSceneIdentityExcludingLiveScenesForApplication:(id)a3;
- (id)newSceneIdentityForApplication:(id)a3;
- (id)preferredSceneIdentityForApplication:(id)a3 targetContentIdentifier:(id)a4 preferNewScene:(BOOL)a5;
- (void)_addMedusaDraggingDestinationWindow:(id)a3;
- (void)_beginTrackingDropSessionIfNeeded:(id)a3;
- (void)_dragInteraction:(id)a3 prepareForSession:(id)a4 completion:(id)a5;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3;
- (void)_removeMedusaDraggingDestinationWindow:(id)a3;
- (void)_windowDragSessionDidEnd;
- (void)dealloc;
- (void)dragAndDropTransaction:(id)a3 didBeginGesture:(id)a4;
- (void)dragAndDropTransaction:(id)a3 didEndGesture:(id)a4;
- (void)dragAndDropTransaction:(id)a3 didPlatterizeWindowDragWithSceneIdentifier:(id)a4;
- (void)dragAndDropTransaction:(id)a3 didUpdateGesture:(id)a4;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionDidMove:(id)a4;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)handleWindowDragGestureRecognizer:(id)a3;
- (void)transactionDidComplete:(id)a3;
@end

@implementation SBFluidSwitcherDragAndDropManager

- (SBFluidSwitcherDragAndDropManager)initWithSwitcherController:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = SBFluidSwitcherDragAndDropManager;
  v8 = [(SBFluidSwitcherDragAndDropManager *)&v24 init];
  if (v8)
  {
    v9 = [v6 contentViewController];
    v10 = objc_opt_class();
    v11 = v9;
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

    objc_storeWeak(&v8->_switcherController, v6);
    objc_storeWeak(&v8->_switcherContentController, v13);
    v14 = [v6 windowScene];
    v15 = [v14 sceneManager];
    objc_storeWeak(&v8->_sceneManager, v15);

    objc_storeWeak(&v8->_delegate, v7);
    v16 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activeDropSessions = v8->_activeDropSessions;
    v8->_activeDropSessions = v16;

    v18 = [objc_alloc(MEMORY[0x277D754A0]) initWithDelegate:v8];
    dropInteraction = v8->_dropInteraction;
    v8->_dropInteraction = v18;

    [(UIDropInteraction *)v8->_dropInteraction _setWantsDefaultVisualBehavior:0];
    v20 = [v13 view];

    [v20 addInteraction:v8->_dropInteraction];
    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    requiredContextIdentifiersForMedusaDraggingDestination = v8->_requiredContextIdentifiersForMedusaDraggingDestination;
    v8->_requiredContextIdentifiersForMedusaDraggingDestination = v21;
  }

  return v8;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v4 = [WeakRetained view];

  [v4 removeInteraction:self->_dropInteraction];
  v5 = [v4 window];
  [(SBFluidSwitcherDragAndDropManager *)self _removeMedusaDraggingDestinationWindow:v5];

  v6.receiver = self;
  v6.super_class = SBFluidSwitcherDragAndDropManager;
  [(SBFluidSwitcherDragAndDropManager *)&v6 dealloc];
}

- (BOOL)shouldBeginWindowDragGesture
{
  v2 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v3 = [v2 isDragging];

  return v3 ^ 1;
}

- (void)handleWindowDragGestureRecognizer:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_hasAddedSwitcherWindowAsDragTarget)
  {
    self->_hasAddedSwitcherWindowAsDragTarget = 1;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v6 = [WeakRetained view];
    v7 = [v6 window];
    [(SBFluidSwitcherDragAndDropManager *)self _addMedusaDraggingDestinationWindow:v7];
  }

  v8 = [v4 state];
  if ((v8 - 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
    if ((v8 != 4 || ![(UIDragInteraction *)self->_windowDragInteraction _isActive]) && !self->_windowDragHandledByDruid)
    {
      [(SBFluidSwitcherDragAndDropManager *)self _windowDragSessionDidEnd];
    }

    v16 = [(UIDragInteraction *)self->_windowDragInteraction view];
    [v16 removeInteraction:self->_windowDragInteraction];

    windowDragInteraction = self->_windowDragInteraction;
    self->_windowDragInteraction = 0;
  }

  else
  {
    v9 = [(SBFluidSwitcherDragAndDropManager *)self delegate];
    v10 = v9;
    if (!self->_windowDragInteraction)
    {
      v11 = [v9 dragAndDropManager:self sourceViewProviderForDraggingWindowWithGestureRecognizer:v4];
      v12 = [[SBWindowDragInteraction alloc] initWithDelegate:self gestureRecognizer:v4];
      v13 = self->_windowDragInteraction;
      self->_windowDragInteraction = v12;

      [(UIDragInteraction *)self->_windowDragInteraction setEnabled:0];
      [(SBWindowDragInteraction *)self->_windowDragInteraction setSourceViewProvider:v11];
      v14 = [v11 sourceView];
      [v14 addInteraction:self->_windowDragInteraction];
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
      v18 = [v4 _activeEvents];
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          if (![v23 type])
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v20)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        v25 = [v4 _activeTouchesForEvent:v23];
        v24 = [v25 anyObject];

        if (!v24)
        {
          goto LABEL_29;
        }

        v26 = [v10 dragAndDropManager:self displayItemForDraggingWindowWithGestureRecognizer:v4];
        if (v26)
        {
          v27 = v26;
        }

        else
        {
          v27 = [v10 dragAndDropManager:self displayItemForDraggingWindowWithGestureRecognizer:v4];
          if (!v27)
          {
            [SBFluidSwitcherDragAndDropManager handleWindowDragGestureRecognizer:];
          }
        }

        v28 = [v27 uniqueIdentifier];
        windowDragSceneIdentifier = self->_windowDragSceneIdentifier;
        self->_windowDragSceneIdentifier = v28;

        v30 = self->_windowDragInteraction;
        v31 = [v27 uniqueIdentifier];
        [(SBWindowDragInteraction *)v30 setSceneIdentifier:v31];

        v32 = self->_windowDragInteraction;
        v33 = [v27 bundleIdentifier];
        [(SBWindowDragInteraction *)v32 setBundleIdentifier:v33];

        [(UIDragInteraction *)self->_windowDragInteraction _immediatelyBeginDragWithTouch:v24 completion:0];
      }

      else
      {
LABEL_21:
        v24 = v18;
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

- (void)dragAndDropTransaction:(id)a3 didBeginGesture:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherDragAndDropManager *)self delegate];
  [v6 dragAndDropManager:self didBeginGesture:v5];
}

- (void)dragAndDropTransaction:(id)a3 didUpdateGesture:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherDragAndDropManager *)self delegate];
  [v6 dragAndDropManager:self didUpdateGesture:v5];
}

- (void)dragAndDropTransaction:(id)a3 didEndGesture:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherDragAndDropManager *)self delegate];
  [v6 dragAndDropManager:self didEndGesture:v5];
}

- (void)dragAndDropTransaction:(id)a3 didPlatterizeWindowDragWithSceneIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherDragAndDropManager *)self delegate];
  [v6 dragAndDropManager:self didPlatterizeWindowDragWithSceneIdentifier:v5];
}

- (BOOL)isApplicationActiveAndVisible:(id)a3
{
  v4 = [a3 bundleIdentifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBFluidSwitcherDragAndDropManager_isApplicationActiveAndVisible___block_invoke;
  v7[3] = &unk_2783A9EA0;
  v8 = v4;
  v5 = v4;
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

- (id)newSceneIdentityForApplication:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v6 = [WeakRetained newSceneIdentityForApplication:v4];

  return v6;
}

- (id)mostRecentSceneIdentityExcludingLiveScenesForApplication:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v6 = objc_loadWeakRetained(&self->_switcherController);
  v7 = [v6 activeAndVisibleSceneIdentifiersForApplication:v4];
  v8 = [WeakRetained sceneIdentityForApplication:v4 excludingIdentifiers:v7];

  return v8;
}

- (id)preferredSceneIdentityForApplication:(id)a3 targetContentIdentifier:(id)a4 preferNewScene:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v11 = objc_loadWeakRetained(&self->_switcherController);
  v12 = [v11 activeAndVisibleSceneIdentifiersForApplication:v9];
  v13 = [WeakRetained sceneIdentityForApplication:v9 targetContentIdentifier:v8 allowCanMatches:0 preferNewScene:v5 visibleIdentifiers:v12];

  return v13;
}

- (void)_dragInteraction:(id)a3 prepareForSession:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138543362;
    v26 = v10;
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
  v14 = SBSafeCast(v13, v9);
  if (!v14)
  {
    [SBFluidSwitcherDragAndDropManager _dragInteraction:a2 prepareForSession:self completion:?];
  }

  v15 = v14;
  v16 = [v14 sceneIdentifier];
  v17 = objc_alloc(MEMORY[0x277D66998]);
  v18 = [v15 bundleIdentifier];
  v19 = [v17 initWithUniqueIdentifier:v18 withLaunchActions:0 startLocation:8];

  [v19 setDraggedSceneIdentifier:v16];
  [v10 setLocalContext:v19];
  windowDragSession = self->_windowDragSession;
  self->_windowDragSession = v10;
  v21 = v10;

  v22 = MEMORY[0x223D6F7F0](v11);
  windowDragSessionPrepareCompletionBlock = self->_windowDragSessionPrepareCompletionBlock;
  self->_windowDragSessionPrepareCompletionBlock = v22;

  v24 = [SBApplicationDropSession dropSessionWithWindowUIDragSession:v21];
  [(NSMapTable *)self->_activeDropSessions setObject:v24 forKey:v21];

  [(SBFluidSwitcherDragAndDropManager *)self _beginTrackingDropSessionIfNeeded:v24];
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBAppDrop _dragInteractionDidCancelLiftWithoutDragging: %{public}@", &v7, 0xCu);
  }

  if (!self->_windowDragHandledByDruid)
  {
    [(SBFluidSwitcherDragAndDropManager *)self _windowDragSessionDidEnd];
  }

  v6 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  [v6 _dragInteractionDidCancelLiftWithoutDragging:v4];
}

- (id)_dragInteraction:(id)a3 customSpringAnimationBehaviorForCancellingItem:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop customSpringAnimationBehaviorForCancellingItem: for activeDropSessions:%{public}@", &v13, 0xCu);
  }

  v10 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v11 = [v10 _dragInteraction:v7 customSpringAnimationBehaviorForCancellingItem:v6];

  return v11;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SBAppDrop itemsForBeginningSession: %{public}@", buf, 0xCu);
  }

  v7 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if (([v7 matchesUIDragDropSession:v5] & 1) == 0)
  {
    [SBFluidSwitcherDragAndDropManager dragInteraction:itemsForBeginningSession:];
  }

  v8 = objc_alloc_init(MEMORY[0x277CCAA88]);
  [v8 registerDataRepresentationForTypeIdentifier:@"com.apple.springboard.private.windowdrag" visibility:3 loadHandler:&__block_literal_global_20];
  v9 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v8];
  v10 = [v5 localContext];
  [v9 setLocalObject:v10];

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

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v10;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAppDrop previewForLiftingItem: %{public}@", &v15, 0xCu);
  }

  v12 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if (([v12 matchesUIDragDropSession:v10] & 1) == 0)
  {
    [SBFluidSwitcherDragAndDropManager dragInteraction:previewForLiftingItem:session:];
  }

  v13 = [v12 dragInteraction:v8 previewForLiftingItem:v9 session:v10];

  return v13;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAppDrop willAnimateLiftWithAnimator: %{public}@", &v13, 0xCu);
  }

  v12 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if (([v12 matchesUIDragDropSession:v10] & 1) == 0)
  {
    [SBFluidSwitcherDragAndDropManager dragInteraction:willAnimateLiftWithAnimator:session:];
  }

  [v12 dragInteraction:v8 willAnimateLiftWithAnimator:v9 session:v10];
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionWillBegin: %{public}@", &v11, 0xCu);
  }

  self->_windowDragHandledByDruid = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dragAndDropManager:self didBeginDraggingWindowWithSceneIdentifier:self->_windowDragSceneIdentifier];

  v10 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if (([v10 matchesUIDragDropSession:v7] & 1) == 0)
  {
    [SBFluidSwitcherDragAndDropManager dragInteraction:sessionWillBegin:];
  }

  [v10 dragInteraction:v6 sessionWillBegin:v7];
}

- (void)dragInteraction:(id)a3 sessionDidMove:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([v7 matchesUIDragDropSession:v6])
  {
    [v7 dragInteraction:v8 sessionDidMove:v6];
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v9;
    v15 = 2048;
    v16 = a5;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBAppDrop session: %{public}@ willEndWithOperation: %ld", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dragAndDropManager:self willEndDraggingWindowWithSceneIdentifier:self->_windowDragSceneIdentifier];

  v12 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([v12 matchesUIDragDropSession:v9])
  {
    [v12 dragInteraction:v8 session:v9 willEndWithOperation:a5];
  }

  [(SBFluidSwitcherDragAndDropManager *)self _windowDragSessionDidEnd];
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    v15 = a5;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBAppDrop session: %{public}@ didEndWithOperation: %ld", &v12, 0x16u);
  }

  v11 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([v11 matchesUIDragDropSession:v9])
  {
    [v11 dragInteraction:v8 session:v9 didEndWithOperation:a5];
  }
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v16 = 138543362;
    v17 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAppDrop previewForCancellingItem: for activeDropSessions:%{public}@", &v16, 0xCu);
  }

  v13 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v14 = [v13 dragInteraction:v10 previewForCancellingItem:v9 withDefault:v8];

  return v14;
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBAppDrop willAnimateCancelWithAnimator: for activeDropSessions:%{public}@", &v14, 0xCu);
  }

  v13 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  [v13 dragInteraction:v10 item:v9 willAnimateCancelWithAnimator:v8];
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

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [SBApplicationDropSession canHandleUIDragDropSession:v5]|| [(SBFluidSwitcherDragAndDropManager *)self _continuousExposeStripsOccluded];
  v7 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBAppDrop canHandleSession: %{public}@ -> %{BOOL}u", &v9, 0x12u);
  }

  return v6;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_activeDropSessions objectForKey:v7];
  v9 = [MEMORY[0x277CBEB68] null];

  if (v8 == v9)
  {
    v16 = SBLogMedusaDropDestination();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SBFluidSwitcherDragAndDropManager dropInteraction:v7 sessionDidEnter:v16];
    }
  }

  else
  {
    if (!v8)
    {
      activeDropSessions = self->_activeDropSessions;
      v11 = [v7 localDragSession];
      v8 = [(NSMapTable *)activeDropSessions objectForKey:v11];

      v12 = SBLogMedusaDropDestination();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v13)
        {
          *buf = 138543362;
          v27 = v7;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidEnter: %{public}@ [local drag session]", buf, 0xCu);
        }

        v14 = self->_activeDropSessions;
        v15 = [v7 localDragSession];
        [(NSMapTable *)v14 removeObjectForKey:v15];

        [(NSMapTable *)self->_activeDropSessions setObject:v8 forKey:v7];
      }

      else
      {
        if (v13)
        {
          *buf = 138543362;
          v27 = v7;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidEnter: %{public}@ [loading drop session]", buf, 0xCu);
        }

        v17 = [MEMORY[0x277CBEAA8] date];
        v18 = self->_activeDropSessions;
        v19 = [MEMORY[0x277CBEB68] null];
        [(NSMapTable *)v18 setObject:v19 forKey:v7];

        v20 = [(SBFluidSwitcherDragAndDropManager *)self _continuousExposeStripsOccluded];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __69__SBFluidSwitcherDragAndDropManager_dropInteraction_sessionDidEnter___block_invoke;
        v22[3] = &unk_2783ABEB0;
        v23 = v7;
        v24 = v17;
        v25 = self;
        v21 = v17;
        [SBApplicationDropSession getDropSessionWithUIDropSession:v23 sceneProvider:self defaultToSourceApplication:v20 completion:v22];

        v8 = 0;
      }
    }

    [(SBFluidSwitcherDragAndDropManager *)self _beginTrackingDropSessionIfNeeded:v8];
    v16 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
    if ([v16 matchesUIDragDropSession:v7])
    {
      [v16 dropInteraction:v6 sessionDidEnter:v7];
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

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_activeDropSessions objectForKey:v7];
  v9 = [MEMORY[0x277CBEB68] null];

  if (v8)
  {
    v10 = v8 == v9;
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
    v12 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
    if ([v12 matchesUIDragDropSession:v7])
    {
      v13 = [v12 dropInteraction:v6 sessionDidUpdate:v7];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];
    }

    v11 = v13;
  }

  return v11;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidExit: %{public}@", &v10, 0xCu);
  }

  v9 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([v9 matchesUIDragDropSession:v7])
  {
    [v9 dropInteraction:v6 sessionDidExit:v7];
  }
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v9 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = v6;
    v12 = 1024;
    v13 = [v8 matchesUIDragDropSession:v6];
    v14 = 1024;
    v15 = v8 != 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBAppDrop performDrop: %{public}@, transaction exists for session: %{BOOL}u, transaction exists: %{BOOL}u", &v10, 0x18u);
  }

  [v8 dropInteraction:v7 performDrop:v6];
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop concludeDrop: %{public}@", &v10, 0xCu);
  }

  v9 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  if ([v9 matchesUIDragDropSession:v7])
  {
    [v9 dropInteraction:v6 concludeDrop:v7];
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_activeTransaction != 0;
    v11 = 138543618;
    v12 = v7;
    v13 = 1024;
    v14 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop sessionDidEnd: %{public}@, transaction exists: %{BOOL}u", &v11, 0x12u);
  }

  v10 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  [(NSMapTable *)self->_activeDropSessions removeObjectForKey:v7];
  if ([v10 matchesUIDragDropSession:v7])
  {
    [v10 dropInteraction:v6 sessionDidEnd:v7];
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v12 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v16 = 138543618;
    v17 = v13;
    v18 = 1024;
    v19 = v11 != 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop previewForDroppingItem: for activeDropSessions:%{public}@, transaction exists: %{BOOL}u", &v16, 0x12u);
  }

  v14 = [v11 dropInteraction:v10 previewForDroppingItem:v9 withDefault:v8];

  return v14;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v12 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v14 = 138543618;
    v15 = v13;
    v16 = 1024;
    v17 = v11 != 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBAppDrop willAnimateDropWithAnimator: for activeDropSessions:%{public}@, transaction exists: %{BOOL}u", &v14, 0x12u);
  }

  [v11 dropInteraction:v10 item:v9 willAnimateDropWithAnimator:v8];
}

- (id)_dropInteraction:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
  v9 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SBFluidSwitcherDragAndDropManager *)self activeDropSessions];
    v13 = 138543618;
    v14 = v10;
    v15 = 1024;
    v16 = v8 != 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBAppDrop customSpringAnimationBehaviorForDroppingItem: for activeDropSessions:%{public}@, transaction exists: %{BOOL}u", &v13, 0x12u);
  }

  v11 = [v8 _dropInteraction:v7 customSpringAnimationBehaviorForDroppingItem:v6];

  return v11;
}

- (BOOL)_anyActiveAndVisibleSceneEntityMatches:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = [WeakRetained windowScene];
  v7 = [v6 layoutStateProvider];
  v8 = [v7 layoutState];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 elements];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) workspaceEntity];
        v14 = [v13 applicationSceneEntity];

        LOBYTE(v13) = v4[2](v4, v14);
        if (v13)
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_beginTrackingDropSessionIfNeeded:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];

    if (!v5 || (-[SBFluidSwitcherDragAndDropManager activeTransaction](self, "activeTransaction"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 matchesApplicationDropSession:v4], v6, (v7 & 1) == 0))
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherController);
      if ([SBDragAndDropWorkspaceTransaction shouldTrackLocationOfDropSession:v4 forSwitcherController:WeakRetained])
      {
        v9 = +[SBWorkspace mainWorkspace];
        v10 = [v9 transientOverlayPresentationManager];

        v11 = [MEMORY[0x277D0AB20] sharedInstance];
        [v11 cancelEventsWithName:@"SBDragAndDrop"];

        v12 = +[SBWorkspace mainWorkspace];
        v13 = [WeakRetained windowScene];
        v14 = [v13 _fbsDisplayConfiguration];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __71__SBFluidSwitcherDragAndDropManager__beginTrackingDropSessionIfNeeded___block_invoke_2;
        v16[3] = &unk_2783ABF48;
        v16[4] = self;
        v17 = v4;
        v18 = v10;
        v19 = WeakRetained;
        v15 = v10;
        [v12 requestTransitionWithOptions:0 displayConfiguration:v14 builder:&__block_literal_global_53 validator:v16];
      }

      else
      {
        v15 = SBLogMedusaDropDestination();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v21 = v4;
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

- (BOOL)_workspaceWouldAllowTransitionToApplication:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
  v5 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v3];

  [(SBWorkspaceApplicationSceneTransitionContext *)v4 setEntity:v5 forLayoutRole:1];
  v6 = +[SBWorkspace mainWorkspace];
  v7 = [v6 createRequestWithOptions:0];
  [v7 setSource:27];
  [v7 setEventLabel:@"DragAndDrop"];
  [v7 setApplicationContext:v4];
  v8 = [v6 canExecuteTransitionRequest:v7];

  return v8;
}

- (void)_addMedusaDraggingDestinationWindow:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [v8 _contextId];
    if (v4)
    {
      requiredContextIdentifiersForMedusaDraggingDestination = self->_requiredContextIdentifiersForMedusaDraggingDestination;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
      [(NSMutableSet *)requiredContextIdentifiersForMedusaDraggingDestination addObject:v6];
    }
  }

  v7 = [(SBFluidSwitcherDragAndDropManager *)self _requiredContextIdentifiersForMedusaDraggingDestination];
  SBSSetRequiredContextIdsForMedusaDragAndDropForSpotlightOnly();
}

- (void)_removeMedusaDraggingDestinationWindow:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [v8 _contextId];
    if (v4)
    {
      requiredContextIdentifiersForMedusaDraggingDestination = self->_requiredContextIdentifiersForMedusaDraggingDestination;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
      [(NSMutableSet *)requiredContextIdentifiersForMedusaDraggingDestination removeObject:v6];
    }
  }

  v7 = [(SBFluidSwitcherDragAndDropManager *)self _requiredContextIdentifiersForMedusaDraggingDestination];
  SBSSetRequiredContextIdsForMedusaDragAndDropForSpotlightOnly();
}

- (BOOL)_continuousExposeStripsOccluded
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v4 = [WeakRetained windowManagementContext];
  if ([v4 isAutomaticStageCreationEnabled])
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

- (void)transactionDidComplete:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogMedusaDropDestination();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  v7 = SBLogMedusaDropDestination();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(SBFluidSwitcherDragAndDropManager *)v4 transactionDidComplete:v8];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];
    v11[0] = 67109120;
    v11[1] = v9 == v4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBAppDrop transactionDidComplete: Matches active transaction: %{BOOL}u", v11, 8u);
  }

  v10 = [(SBFluidSwitcherDragAndDropManager *)self activeTransaction];

  if (v10 == v4)
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