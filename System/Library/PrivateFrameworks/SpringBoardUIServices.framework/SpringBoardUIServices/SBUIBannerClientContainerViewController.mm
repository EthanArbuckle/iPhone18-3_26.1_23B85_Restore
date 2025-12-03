@interface SBUIBannerClientContainerViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldBeginWithTouches:(id)touches event:(id)event;
- (BOOL)isAccessibilityIgnoringSmartInvertColors;
- (SBUIBannerClientContainerViewController)initWithScene:(id)scene presentable:(id)presentable context:(id)context;
- (id)_buttonEventsActionForButtonEvent:(int64_t)event;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (id)_transitionCoordinator;
- (id)acquireAssertionForButtonEvent:(int64_t)event reason:(id)reason;
- (id)acquireGestureRecognizerDefaultPriorityAssertionForReason:(id)reason;
- (id)acquireTransitionDismissalPreventionAssertionForReason:(id)reason;
- (void)_handleCancelSystemBannerDragGestureRecognizer:(id)recognizer;
- (void)_removeButtonEventsActionForButtonEvent:(int64_t)event;
- (void)_setButtonEventAction:(id)action forButtonEvent:(int64_t)event;
- (void)setWantsHomeGesture:(BOOL)gesture;
- (void)systemApertureElementContextPresentationDidBecomePossible:(id)possible;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBUIBannerClientContainerViewController

- (id)_transitionCoordinator
{
  systemApertureElementContextPrivate = [self systemApertureElementContextPrivate];
  transitionContext = [systemApertureElementContextPrivate transitionContext];
  transitionCoordinator = [transitionContext transitionCoordinator];
  v6 = transitionCoordinator;
  if (transitionCoordinator)
  {
    _transitionCoordinator = transitionCoordinator;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBUIBannerClientContainerViewController;
    _transitionCoordinator = [(SBUIBannerClientContainerViewController *)&v10 _transitionCoordinator];
  }

  v8 = _transitionCoordinator;

  return v8;
}

- (void)viewWillLayoutSubviews
{
  systemApertureElementContextPrivate = [self systemApertureElementContextPrivate];
  isPresentationPossible = [systemApertureElementContextPrivate isPresentationPossible];

  if ((isPresentationPossible & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = SBUIBannerClientContainerViewController;
    [(BNBannerClientContainerViewController *)&v5 viewWillLayoutSubviews];
  }
}

- (SBUIBannerClientContainerViewController)initWithScene:(id)scene presentable:(id)presentable context:(id)context
{
  sceneCopy = scene;
  presentableCopy = presentable;
  v17.receiver = self;
  v17.super_class = SBUIBannerClientContainerViewController;
  v10 = [(BNBannerClientContainerViewController *)&v17 initWithScene:sceneCopy presentable:presentableCopy context:context];
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [presentableCopy setBannerHomeGestureContext:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [presentableCopy setBannerDismissalPreventionContext:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = objc_opt_class();
      v12 = sceneCopy;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      systemApertureElementContextPrivate = [v14 systemApertureElementContextPrivate];

      if ([systemApertureElementContextPrivate isPresentationPossible])
      {
        [(SBUIBannerClientContainerViewController *)v10 systemApertureElementContextPresentationDidBecomePossible:systemApertureElementContextPrivate];
      }

      else
      {
        [systemApertureElementContextPrivate addObserver:v10];
      }
    }
  }

  return v10;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SBUIBannerClientContainerViewController;
  [(BNBannerClientContainerViewController *)&v12 viewDidLoad];
  presentable = [(BNBannerClientContainerViewController *)self presentable];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [[SBUIPresentableCancelSystemDragGestureRecognizer alloc] initWithTarget:self action:sel__handleCancelSystemBannerDragGestureRecognizer_];
    [(SBUIPresentableCancelSystemDragGestureRecognizer *)v5 setDelegate:self];
    view = [(SBUIBannerClientContainerViewController *)self view];
    [view addGestureRecognizer:v5];

    scene = [(BNBannerClientContainerViewController *)self scene];
    _FBSScene = [scene _FBSScene];
    v9 = MEMORY[0x1E695DFD8];
    v10 = [[SBUIPresentableSupportsCancellingSystemDragAction alloc] initWithInfo:0 responder:0];
    v11 = [v9 setWithObject:v10];
    [_FBSScene sendActions:v11];
  }
}

- (BOOL)isAccessibilityIgnoringSmartInvertColors
{
  presentable = [(BNBannerClientContainerViewController *)self presentable];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)setWantsHomeGesture:(BOOL)gesture
{
  if (self->_ownsHomeGesture != gesture)
  {
    v14 = v3;
    v15 = v4;
    gestureCopy = gesture;
    v7 = [SBUIPresentableWantsHomeGestureAction alloc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__SBUIBannerClientContainerViewController_setWantsHomeGesture___block_invoke;
    v12[3] = &unk_1E789E2F8;
    v12[4] = self;
    v13 = gestureCopy;
    v8 = [(SBUIPresentableWantsHomeGestureAction *)v7 initWithWantsHomeGesture:gestureCopy handler:v12];
    scene = [(BNBannerClientContainerViewController *)self scene];
    _FBSScene = [scene _FBSScene];
    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v8, 0}];
    [_FBSScene sendActions:v11];
  }
}

void __63__SBUIBannerClientContainerViewController_setWantsHomeGesture___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(a1 + 32) + 1072) = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SBUIBannerClientContainerViewController_setWantsHomeGesture___block_invoke_2;
    block[3] = &unk_1E789DA38;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __63__SBUIBannerClientContainerViewController_setWantsHomeGesture___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentable];
  if (objc_opt_respondsToSelector())
  {
    [v2 homeGestureOwnershipDidChange:*(*(a1 + 32) + 1072)];
  }
}

- (id)acquireTransitionDismissalPreventionAssertionForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBUIBannerClientContainerViewController acquireTransitionDismissalPreventionAssertionForReason:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionDismissalPreventionAssertion);
  scene = [(BNBannerClientContainerViewController *)self scene];
  if (WeakRetained)
  {
    v7 = SBLogBanners();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBUIBannerClientContainerViewController *)WeakRetained acquireTransitionDismissalPreventionAssertionForReason:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__SBUIBannerClientContainerViewController_acquireTransitionDismissalPreventionAssertionForReason___block_invoke;
    v20[3] = &unk_1E789E770;
    v14 = reasonCopy;
    v21 = v14;
    [scene _updateUIClientSettingsWithBlock:v20];
    objc_initWeak(&location, self);
    v15 = [_SBUIPresentableDismissalPreventionAssertion alloc];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__SBUIBannerClientContainerViewController_acquireTransitionDismissalPreventionAssertionForReason___block_invoke_2;
    v17[3] = &unk_1E789ECD0;
    objc_copyWeak(&v18, &location);
    WeakRetained = [(_SBUIPresentableDismissalPreventionAssertion *)v15 initWithDismissalSource:1 reason:v14 invalidationHandler:v17];
    objc_storeWeak(&self->_transitionDismissalPreventionAssertion, WeakRetained);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v7 = v21;
  }

  return WeakRetained;
}

void __98__SBUIBannerClientContainerViewController_acquireTransitionDismissalPreventionAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToExtension:objc_opt_class()])
  {
    [v3 setTransitionDismissalPreventionReason:*(a1 + 32)];
  }
}

void __98__SBUIBannerClientContainerViewController_acquireTransitionDismissalPreventionAssertionForReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained scene];
  [v1 _updateUIClientSettingsWithBlock:&__block_literal_global_18];
}

void __98__SBUIBannerClientContainerViewController_acquireTransitionDismissalPreventionAssertionForReason___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToExtension:objc_opt_class()])
  {
    [v2 setTransitionDismissalPreventionReason:0];
  }
}

- (id)acquireGestureRecognizerDefaultPriorityAssertionForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBUIBannerClientContainerViewController acquireGestureRecognizerDefaultPriorityAssertionForReason:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizerPriorityAssertion);
  scene = [(BNBannerClientContainerViewController *)self scene];
  if (WeakRetained)
  {
    v7 = SBLogBanners();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBUIBannerClientContainerViewController *)WeakRetained acquireGestureRecognizerDefaultPriorityAssertionForReason:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __101__SBUIBannerClientContainerViewController_acquireGestureRecognizerDefaultPriorityAssertionForReason___block_invoke;
    v20[3] = &unk_1E789E770;
    v14 = reasonCopy;
    v21 = v14;
    [scene _updateUIClientSettingsWithBlock:v20];
    objc_initWeak(&location, self);
    v15 = [_SBUIPresentableGestureRecognizerPriorityAssertion alloc];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__SBUIBannerClientContainerViewController_acquireGestureRecognizerDefaultPriorityAssertionForReason___block_invoke_2;
    v17[3] = &unk_1E789ECF8;
    objc_copyWeak(&v18, &location);
    WeakRetained = [(_SBUIPresentableGestureRecognizerPriorityAssertion *)v15 initWithReason:v14 invalidationHandler:v17];
    objc_storeWeak(&self->_gestureRecognizerPriorityAssertion, WeakRetained);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v7 = v21;
  }

  return WeakRetained;
}

void __101__SBUIBannerClientContainerViewController_acquireGestureRecognizerDefaultPriorityAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToExtension:objc_opt_class()])
  {
    [v3 setWantsDefaultGesturePriorityReason:*(a1 + 32)];
  }
}

void __101__SBUIBannerClientContainerViewController_acquireGestureRecognizerDefaultPriorityAssertionForReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained scene];
  [v1 _updateUIClientSettingsWithBlock:&__block_literal_global_68];
}

void __101__SBUIBannerClientContainerViewController_acquireGestureRecognizerDefaultPriorityAssertionForReason___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToExtension:objc_opt_class()])
  {
    [v2 setWantsDefaultGesturePriorityReason:0];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeginWithTouches:(id)touches event:(id)event
{
  touchesCopy = touches;
  eventCopy = event;
  presentable = [(BNBannerClientContainerViewController *)self presentable];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    presentable2 = [(BNBannerClientContainerViewController *)self presentable];
    v12 = [presentable2 shouldCancelSystemDragGestureWithTouches:touchesCopy event:eventCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_handleCancelSystemBannerDragGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {
    scene = [(BNBannerClientContainerViewController *)self scene];
    _FBSScene = [scene _FBSScene];
    v5 = MEMORY[0x1E695DFD8];
    v6 = [[SBUIPresentableCancelSystemDragAction alloc] initWithInfo:0 responder:0];
    v7 = [v5 setWithObject:v6];
    [_FBSScene sendActions:v7];
  }
}

- (id)acquireAssertionForButtonEvent:(int64_t)event reason:(id)reason
{
  reasonCopy = reason;
  v8 = reasonCopy;
  if (event == 1)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(SBUIBannerClientContainerViewController *)a2 acquireAssertionForButtonEvent:event reason:?];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBUIBannerClientContainerViewController acquireAssertionForButtonEvent:reason:];
LABEL_3:
  v33 = 0;
  v34[0] = &v33;
  v34[1] = 0x3032000000;
  v34[2] = __Block_byref_object_copy__0;
  v34[3] = __Block_byref_object_dispose__0;
  v35 = [(SBUIBannerClientContainerViewController *)self _buttonEventsActionForButtonEvent:event];
  if (([*(v34[0] + 40) isValid] & 1) == 0)
  {
    v9 = *(v34[0] + 40);
    *(v34[0] + 40) = 0;
  }

  if (*(v34[0] + 40))
  {
    v10 = SBLogBanners();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBUIBannerClientContainerViewController *)v34 acquireAssertionForButtonEvent:v10 reason:v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v17 = [SBUIPresentableButtonEventsAction alloc];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __81__SBUIBannerClientContainerViewController_acquireAssertionForButtonEvent_reason___block_invoke;
    v29 = &unk_1E789ED48;
    objc_copyWeak(&v31, &location);
    v30 = &v33;
    v18 = [(SBUIPresentableButtonEventsAction *)v17 initWithButtonEvent:event reason:v8 handler:&v26];
    v19 = *(v34[0] + 40);
    *(v34[0] + 40) = v18;

    scene = [(BNBannerClientContainerViewController *)self scene];
    _FBSScene = [scene _FBSScene];
    v22 = objc_alloc(MEMORY[0x1E695DFD8]);
    v23 = [v22 initWithObjects:{*(v34[0] + 40), 0, v26, v27, v28, v29}];
    [_FBSScene sendActions:v23];

    [(SBUIBannerClientContainerViewController *)self _setButtonEventAction:*(v34[0] + 40) forButtonEvent:event];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  v24 = *(v34[0] + 40);
  _Block_object_dispose(&v33, 8);

  return v24;
}

void __81__SBUIBannerClientContainerViewController_acquireAssertionForButtonEvent_reason___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained presentable];
      if ([*(*(*(a1 + 32) + 8) + 40) presentableButtonEvent] == 1)
      {
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = __81__SBUIBannerClientContainerViewController_acquireAssertionForButtonEvent_reason___block_invoke_2;
        v11 = &unk_1E789ED20;
        v6 = v5;
        v7 = *(a1 + 32);
        v12 = v6;
        v13 = v7;
        dispatch_async(MEMORY[0x1E69E96A0], &v8);
        [v4 _removeButtonEventsActionForButtonEvent:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "presentableButtonEvent", v8, v9, v10, v11)}];
      }
    }
  }
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v30.receiver = self;
  v30.super_class = SBUIBannerClientContainerViewController;
  v11 = [(BNBannerClientContainerViewController *)&v30 _respondToActions:actionsCopy forFBSScene:scene inUIScene:iScene fromTransitionContext:context];
  v12 = [v11 mutableCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = actionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = objc_opt_class();
        v20 = v18;
        if (v19)
        {
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22)
        {
          [v12 removeObject:{v22, v26}];
          presentable = [(BNBannerClientContainerViewController *)self presentable];
          if (objc_opt_respondsToSelector())
          {
            homeAffordanceDidCrossThreshold = [presentable homeAffordanceDidCrossThreshold];
          }

          else
          {
            homeAffordanceDidCrossThreshold = 1;
          }

          [v22 setSuccessful:homeAffordanceDidCrossThreshold];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v15);
  }

  return v12;
}

- (void)systemApertureElementContextPresentationDidBecomePossible:(id)possible
{
  possibleCopy = possible;
  presentable = [(BNBannerClientContainerViewController *)self presentable];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    presentable2 = [(BNBannerClientContainerViewController *)self presentable];
    [possibleCopy setSystemApertureElementViewControllerProvider:presentable2];
    systemApertureElementViewController = [presentable2 systemApertureElementViewController];
    presentable3 = [(BNBannerClientContainerViewController *)self presentable];
    v9 = UIViewControllerFromPresentable();
    v10 = [systemApertureElementViewController isEqual:v9];

    if ((v10 & 1) == 0)
    {
      [SBUIBannerClientContainerViewController systemApertureElementContextPresentationDidBecomePossible:];
    }
  }

  [possibleCopy removeObserver:self];
}

- (id)_buttonEventsActionForButtonEvent:(int64_t)event
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  buttonEventsToActions = selfCopy->_buttonEventsToActions;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:event];
  v7 = [(NSMapTable *)buttonEventsToActions objectForKey:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_setButtonEventAction:(id)action forButtonEvent:(int64_t)event
{
  actionCopy = action;
  if (actionCopy)
  {
    v12 = actionCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    buttonEventsToActions = selfCopy->_buttonEventsToActions;
    if (!buttonEventsToActions)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v10 = selfCopy->_buttonEventsToActions;
      selfCopy->_buttonEventsToActions = strongToWeakObjectsMapTable;

      buttonEventsToActions = selfCopy->_buttonEventsToActions;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:event];
    [(NSMapTable *)buttonEventsToActions setObject:v12 forKey:v11];

    objc_sync_exit(selfCopy);
    actionCopy = v12;
  }
}

- (void)_removeButtonEventsActionForButtonEvent:(int64_t)event
{
  obj = self;
  objc_sync_enter(obj);
  buttonEventsToActions = obj->_buttonEventsToActions;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:event];
  [(NSMapTable *)buttonEventsToActions removeObjectForKey:v5];

  if (![(NSMapTable *)obj->_buttonEventsToActions count])
  {
    v6 = obj->_buttonEventsToActions;
    obj->_buttonEventsToActions = 0;
  }

  objc_sync_exit(obj);
}

- (void)acquireTransitionDismissalPreventionAssertionForReason:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)acquireGestureRecognizerDefaultPriorityAssertionForReason:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)acquireAssertionForButtonEvent:(uint64_t)a3 reason:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBUIBannerClientContainerViewController.m" lineNumber:218 description:{@"Invalid button evemt: %ld'", a3}];
}

- (void)acquireAssertionForButtonEvent:reason:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)systemApertureElementContextPresentationDidBecomePossible:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end