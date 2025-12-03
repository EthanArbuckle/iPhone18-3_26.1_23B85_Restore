@interface _UIClickPresentationInteraction
+ (void)_setDefaultDriverClasses:(id)classes forIdiom:(int64_t)idiom;
- (BOOL)_canPerformPresentation;
- (BOOL)_delegate_shouldAllowDragAfterDismiss;
- (BOOL)_isControlledByCC;
- (BOOL)_reachedForceThreshold;
- (BOOL)_supportsRapidRestart;
- (BOOL)beginDragIfPossibleWithTouch:(id)touch;
- (BOOL)clickDriver:(id)driver shouldBeDelayedByGestureRecognizer:(id)recognizer;
- (BOOL)clickDriver:(id)driver shouldDelayGestureRecognizer:(id)recognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CAPoint3D)initialLocation;
- (CGPoint)locationInView:(id)view;
- (NSArray)secondaryEffectPreviews;
- (NSString)presentationTypeDebugString;
- (UIDragInteraction)associatedDragInteraction;
- (UIGestureRecognizer)gestureRecognizerForBeginningDragRelationships;
- (UITargetedPreview)primaryEffectPreview;
- (UIView)view;
- (_UIClickPresentationInteraction)initWithDelegate:(id)delegate;
- (_UIClickPresentationInteractionDelegate)delegate;
- (id)_activeEffect;
- (id)_candidateInteractionsForAssociation;
- (id)_clickDragDriver;
- (id)_clickDriverTouch;
- (id)_dragInteractionPresentation:(id)presentation previewForCancellingItem:(id)item defaultPreview:(id)preview proposedPreview:(id)proposedPreview;
- (unint64_t)activatedDriverStyle;
- (unint64_t)inputPrecision;
- (void)_associateWithActiveDragInteraction;
- (void)_attemptDragLiftAtLocation:(CGPoint)location useDefaultLiftAnimation:(BOOL)animation;
- (void)_cancelAllDrivers;
- (void)_cancelWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion;
- (void)_delegate_interactionEndedWithContext:(const InteractionEndingContext *)context;
- (void)_dragInteractionPresentation:(id)presentation item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)_dragInteractionPresentation:(id)presentation sessionDidEnd:(id)end withoutBeginning:(BOOL)beginning;
- (void)_driverEnded;
- (void)_endInteractionDidComplete:(void *)complete completion:(void *)completion;
- (void)_endInteractionEffectIfNeeded;
- (void)_endInteractionWithContext:(const InteractionEndingContext *)context;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_performPresentation;
- (void)_performPreviewPresentation;
- (void)_prepareInteractionEffect;
- (void)_refreshAllDrivers;
- (void)_setDelegate:(id)delegate;
- (void)_viewTraitCollectionDidChange:(id)change;
- (void)beginPanInteraction;
- (void)clickDriver:(id)driver didPerformEvent:(unint64_t)event;
- (void)clickDriver:(id)driver didUpdateHighlightProgress:(double)progress;
- (void)clickDriver:(id)driver shouldBegin:(id)begin;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)endPanInteraction;
- (void)present;
- (void)setActiveDriver:(id)driver;
- (void)setAssociatedDragInteraction:(id)interaction;
- (void)setOverrideDrivers:(id)drivers;
- (void)willMoveToView:(id)view;
@end

@implementation _UIClickPresentationInteraction

- (void)_driverEnded
{
  if (self->_activatedFeedbackGeneratorForClick)
  {
    feedbackGenerator = [(_UIClickPresentationInteraction *)self feedbackGenerator];
    [feedbackGenerator userInteractionEnded];

    self->_activatedFeedbackGeneratorForClick = 0;
  }

  if (self->_currentState <= 4)
  {

    [_UIClickPresentationInteraction _endInteractionDidComplete:0 completion:?];
  }
}

- (_UIClickPresentationInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_refreshAllDrivers
{
  v49 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  allDrivers = [(_UIClickPresentationInteraction *)self allDrivers];
  v4 = [allDrivers countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(allDrivers);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        [v8 setView:0];
        [v8 setDelegate:0];
      }

      v5 = [allDrivers countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v5);
  }

  view = [(_UIClickPresentationInteraction *)self view];

  if (view)
  {
    overrideDrivers = [(_UIClickPresentationInteraction *)self overrideDrivers];

    if (overrideDrivers)
    {
      overrideDrivers2 = [(_UIClickPresentationInteraction *)self overrideDrivers];
      [(_UIClickPresentationInteraction *)self setAllDrivers:overrideDrivers2];
    }

    else
    {
      overrideDrivers2 = [MEMORY[0x1E695DF70] array];
      v12 = _driverClassesByIdiom;
      v13 = MEMORY[0x1E696AD98];
      view2 = [(_UIClickPresentationInteraction *)self view];
      traitCollection = [view2 traitCollection];
      v16 = [v13 numberWithInteger:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];
      v17 = [v12 objectForKeyedSubscript:v16];

      if (![v17 count])
      {
        if (self->_delegateImplements.activationStyle)
        {
          delegate = [(_UIClickPresentationInteraction *)self delegate];
          [delegate activationStyleForClickPresentationInteraction:self];
        }

        v19 = _UIClickInteractionDefaultDrivers();

        v17 = v19;
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = v17;
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v39;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = objc_opt_new();
            [overrideDrivers2 addObject:v25];
            if (objc_opt_respondsToSelector())
            {
              [v25 setBehavior:1];
              v26 = objc_opt_new();
              [v26 setBehavior:2];
              [overrideDrivers2 addObject:v26];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v22);
      }

      [(_UIClickPresentationInteraction *)self setAllDrivers:overrideDrivers2];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    allDrivers2 = [(_UIClickPresentationInteraction *)self allDrivers];
    v28 = [allDrivers2 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v35;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(allDrivers2);
          }

          v32 = *(*(&v34 + 1) + 8 * k);
          view3 = [(_UIClickPresentationInteraction *)self view];
          [v32 setView:view3];

          [v32 setDelegate:self];
          [v32 setAllowableMovement:{_UIClickPresentationAllowableMovementForDriver(v32, 0)}];
        }

        v29 = [allDrivers2 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v29);
    }
  }
}

- (BOOL)_supportsRapidRestart
{
  if (!self->_delegateImplements.shouldAllowRapidRestart)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(_UIClickPresentationInteraction *)self delegate];
  LOBYTE(selfCopy) = [delegate _clickPresentationInteractionShouldAllowRapidRestart:selfCopy];

  return selfCopy;
}

- (void)dealloc
{
  view = [(_UIClickPresentationInteraction *)self view];
  [view removeInteraction:self];

  v4.receiver = self;
  v4.super_class = _UIClickPresentationInteraction;
  [(_UIClickPresentationInteraction *)&v4 dealloc];
}

- (BOOL)_canPerformPresentation
{
  v34 = *MEMORY[0x1E69E9840];
  view = [(_UIClickPresentationInteraction *)self view];
  _window = [view _window];

  if (!_window)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      view2 = [(_UIClickPresentationInteraction *)self view];
      v30 = 138412290;
      v31 = view2;
      _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Attempting to present while the interaction's view (%@) is not in a window. Removing the interaction's view (or an ancestor) from the view hierarchy while the interaction is active is not recommended!", &v30, 0xCu);
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1245) + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v12 = v11;
      view2 = [(_UIClickPresentationInteraction *)self view];
      v30 = 138412290;
      v31 = view2;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Attempting to present while the interaction's view (%@) is not in a window. Removing the interaction's view (or an ancestor) from the view hierarchy while the interaction is active is not recommended!", &v30, 0xCu);
    }

LABEL_12:
    return 0;
  }

  presentationAssistant = [(_UIClickPresentationInteraction *)self presentationAssistant];

  if (!presentationAssistant)
  {
    view3 = [(_UIClickPresentationInteraction *)self view];
    _viewControllerForAncestor = [view3 _viewControllerForAncestor];

    if (_viewControllerForAncestor)
    {
LABEL_4:
      presentedViewController = [_viewControllerForAncestor presentedViewController];
      v9 = presentedViewController;
      if (!presentedViewController || ([presentedViewController isBeingDismissed] & 1) != 0)
      {
        if (!_viewControllerForAncestor)
        {
LABEL_7:
          v10 = 0;
LABEL_16:

          return v10;
        }

LABEL_15:
        delegate = [(_UIClickPresentationInteraction *)self delegate];
        v17 = [delegate clickPresentationInteraction:self presentationForPresentingViewController:_viewControllerForAncestor];
        [(_UIClickPresentationInteraction *)self setPendingPresentation:v17];

        pendingPresentation = [(_UIClickPresentationInteraction *)self pendingPresentation];
        v10 = pendingPresentation != 0;

        goto LABEL_16;
      }

      view4 = [(_UIClickPresentationInteraction *)self view];
      v15 = [UIViewController _viewControllerForFullScreenPresentationFromView:view4];

      _viewControllerForAncestor = v15;
      if (v15)
      {
        goto LABEL_15;
      }

      if (os_variant_has_internal_diagnostics())
      {
        v26 = __UIFaultDebugAssertLog();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }

        view5 = [(_UIClickPresentationInteraction *)self view];
        view6 = [(_UIClickPresentationInteraction *)self view];
        window = [view6 window];
        v30 = 138412546;
        v31 = view5;
        v32 = 2112;
        v33 = window;
        _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "Failed to find a presenting view controller for view (%@) in window (%@). The interaction's view (or an ancestor) must have an associated view controller inside the window's root view controller hierarchy.", &v30, 0x16u);
      }

      else
      {
        v25 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FE70) + 8);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v26 = v25;
        view5 = [(_UIClickPresentationInteraction *)self view];
        view6 = [(_UIClickPresentationInteraction *)self view];
        window = [view6 window];
        v30 = 138412546;
        v31 = view5;
        v32 = 2112;
        v33 = window;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Failed to find a presenting view controller for view (%@) in window (%@). The interaction's view (or an ancestor) must have an associated view controller inside the window's root view controller hierarchy.", &v30, 0x16u);
      }

LABEL_29:
      goto LABEL_7;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      view7 = [(_UIClickPresentationInteraction *)self view];
      view8 = [(_UIClickPresentationInteraction *)self view];
      window2 = [view8 window];
      v30 = 138412546;
      v31 = view7;
      v32 = 2112;
      v33 = window2;
      _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Failed to find a presenting view controller for view (%@) in window (%@). The interaction's view (or an ancestor) must have an associated view controller for presentation to work.", &v30, 0x16u);
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49FE68) + 8);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v21 = v20;
      view7 = [(_UIClickPresentationInteraction *)self view];
      view8 = [(_UIClickPresentationInteraction *)self view];
      window2 = [view8 window];
      v30 = 138412546;
      v31 = view7;
      v32 = 2112;
      v33 = window2;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Failed to find a presenting view controller for view (%@) in window (%@). The interaction's view (or an ancestor) must have an associated view controller for presentation to work.", &v30, 0x16u);
    }

LABEL_24:
    goto LABEL_4;
  }

  return 0;
}

- (id)_clickDragDriver
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  associatedDragInteraction = [(_UIClickPresentationInteraction *)self associatedDragInteraction];
  _initiationDrivers = [associatedDragInteraction _initiationDrivers];

  v4 = [_initiationDrivers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(_initiationDrivers);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [_initiationDrivers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (UIDragInteraction)associatedDragInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedDragInteraction);

  return WeakRetained;
}

- (id)_clickDriverTouch
{
  activeDriver = [(_UIClickPresentationInteraction *)self activeDriver];
  primaryGestureRecognizer = [activeDriver primaryGestureRecognizer];
  _allActiveTouches = [primaryGestureRecognizer _allActiveTouches];
  anyObject = [_allActiveTouches anyObject];

  return anyObject;
}

- (UITargetedPreview)primaryEffectPreview
{
  _activeEffect = [(_UIClickPresentationInteraction *)self _activeEffect];
  v4 = [UITargetedPreview alloc];
  view = [(_UIClickPresentationInteraction *)self view];
  v6 = [(UITargetedPreview *)v4 initWithView:view];
  v7 = [_activeEffect previewForContinuingToEffectWithPreview:v6];

  return v7;
}

- (void)_performPresentation
{
  pendingPresentation = [(_UIClickPresentationInteraction *)self pendingPresentation];
  if (pendingPresentation)
  {
    _clickDriverTouch = [(_UIClickPresentationInteraction *)self _clickDriverTouch];

    if (_clickDriverTouch)
    {
      activeDriver = [(_UIClickPresentationInteraction *)self activeDriver];
      isCurrentlyAcceleratedByForce = [activeDriver isCurrentlyAcceleratedByForce];

      v7 = 1;
      if (isCurrentlyAcceleratedByForce)
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 3;
    }

    self->_statsPresentation = v7;
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55___UIClickPresentationInteraction__performPresentation__block_invoke;
    aBlock[3] = &unk_1E70F3668;
    objc_copyWeak(&v31, location);
    v8 = _Block_copy(aBlock);
    v9 = objc_opt_class();
    if ([(_UIClickPresentationInteraction *)self _supportsRapidRestart])
    {
      v9 = objc_opt_class();
    }

    v10 = [[v9 alloc] initWithClickPresentation:pendingPresentation];
    [(_UIClickPresentationInteraction *)self setPresentationAssistant:v10];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __55___UIClickPresentationInteraction__performPresentation__block_invoke_26;
    v28[3] = &unk_1E711B778;
    objc_copyWeak(&v29, location);
    presentationAssistant = [(_UIClickPresentationInteraction *)self presentationAssistant];
    [presentationAssistant setKeyboardAssertionInvalidationHandler:v28];

    primaryEffectPreview = [(_UIClickPresentationInteraction *)self primaryEffectPreview];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55___UIClickPresentationInteraction__performPresentation__block_invoke_2;
    v25[3] = &unk_1E70FCE28;
    v25[4] = self;
    v13 = primaryEffectPreview;
    v26 = v13;
    v14 = v8;
    v27 = v14;
    v15 = _Block_copy(v25);
    viewController = [pendingPresentation viewController];
    transitionCoordinator = [viewController transitionCoordinator];

    if (transitionCoordinator || ([pendingPresentation presentationController], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "presentingViewController"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "transitionCoordinator"), transitionCoordinator = objc_claimAutoreleasedReturnValue(), v19, v18, transitionCoordinator))
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __55___UIClickPresentationInteraction__performPresentation__block_invoke_5;
      v23 = &unk_1E70F3770;
      v24 = v15;
      [transitionCoordinator animateAlongsideTransition:0 completion:&v20];
    }

    else
    {
      v15[2](v15);
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  [(_UIClickPresentationInteraction *)self setPendingPresentation:0, v20, v21, v22, v23];
}

- (id)_activeEffect
{
  v3 = +[_UIContentEffectManager sharedManager];
  v4 = [v3 objectForKeyedSubscript:self->_activeEffectKey];

  return v4;
}

- (void)endPanInteraction
{
  if (self->_shouldAllowFeedback)
  {
    feedbackGenerator = [(_UIClickPresentationInteraction *)self feedbackGenerator];
    [feedbackGenerator userInteractionEnded];
  }
}

- (void)beginPanInteraction
{
  if (self->_shouldAllowFeedback)
  {
    feedbackGenerator = [(_UIClickPresentationInteraction *)self feedbackGenerator];
    [feedbackGenerator userInteractionStarted];
  }
}

- (_UIClickPresentationInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _UIClickPresentationInteraction;
  v5 = [(_UIClickPresentationInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIClickPresentationInteraction *)v5 _setDelegate:delegateCopy];
    [(_UIClickPresentationInteraction *)v6 setInitialLocation:1.79769313e308, 1.79769313e308, 1.79769313e308];
    [(_UIClickPresentationInteraction *)v6 setFallbackDriverStyle:0];
  }

  return v6;
}

- (void)present
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    currentState = self->_currentState;
    if (currentState == 4)
    {
LABEL_4:

      [(_UIClickPresentationInteraction *)self _performPreviewPresentation];
      return;
    }
  }

  else
  {
    currentState = MEMORY[8];
  }

  if (currentState == 1)
  {
    goto LABEL_4;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = self->_currentState;
      v8 = 134217984;
      v9 = v7;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Called -present on an active interaction. Current state: %lu.", &v8, 0xCu);
    }
  }

  else
  {
    v4 = *(__UILogGetCategoryCachedImpl("Assert", &present___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_currentState;
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Called -present on an active interaction. Current state: %lu.", &v8, 0xCu);
    }
  }

  if (self->_currentState != 5)
  {
    [_UIClickPresentationInteraction _endInteractionDidComplete:0 completion:?];
  }
}

- (void)_endInteractionDidComplete:(void *)complete completion:(void *)completion
{
  completionCopy = completion;
  v4 = completionCopy;
  if (complete)
  {
    v5[0] = complete;
    v5[1] = 0;
    v6 = 0;
    v7 = 0;
    v5[2] = 0;
    v8 = _Block_copy(completionCopy);
    [complete _endInteractionWithContext:v5];
  }
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  [(_UIClickPresentationInteraction *)self initialLocation];
  v6 = v5;
  v8 = v7;
  view = [(_UIClickPresentationInteraction *)self view];
  if (view)
  {
    v10 = view;
    activeDriver = [(_UIClickPresentationInteraction *)self activeDriver];
    if (activeDriver)
    {

      if (v6 == 1.79769313e308 && v8 == 1.79769313e308)
      {
        activeDriver2 = [(_UIClickPresentationInteraction *)self activeDriver];
        view2 = [(_UIClickPresentationInteraction *)self view];
        [activeDriver2 locationInCoordinateSpace:view2];
        [(_UIClickPresentationInteraction *)self setInitialLocation:?];

        [(_UIClickPresentationInteraction *)self initialLocation];
        v6 = v14;
        v8 = v15;
      }
    }

    else
    {
    }
  }

  *&v16 = 1.79769313e308;
  v17 = v6 == 1.79769313e308 && v8 == 1.79769313e308;
  *&v18 = 1.79769313e308;
  if (!v17)
  {
    view3 = [(_UIClickPresentationInteraction *)self view];

    if (view3 == viewCopy)
    {
      *&v16 = v8;
      *&v18 = v6;
    }

    else
    {
      view4 = [(_UIClickPresentationInteraction *)self view];
      [view4 convertPoint:viewCopy toView:{v6, v8}];
      v18 = v21;
      v16 = v22;
    }
  }

  v23 = *&v18;
  v24 = *&v16;
  result.y = v24;
  result.x = v23;
  return result;
}

- (unint64_t)inputPrecision
{
  activeDriver = [(_UIClickPresentationInteraction *)self activeDriver];
  inputPrecision = [activeDriver inputPrecision];

  return inputPrecision;
}

- (NSArray)secondaryEffectPreviews
{
  _activeEffect = [(_UIClickPresentationInteraction *)self _activeEffect];
  secondaryBodyPreviews = [_activeEffect secondaryBodyPreviews];

  return secondaryBodyPreviews;
}

- (BOOL)_reachedForceThreshold
{
  activeDriver = [(_UIClickPresentationInteraction *)self activeDriver];
  isCurrentlyAcceleratedByForce = [activeDriver isCurrentlyAcceleratedByForce];

  return isCurrentlyAcceleratedByForce;
}

- (BOOL)_delegate_shouldAllowDragAfterDismiss
{
  if (!self->_delegateImplements.shouldAllowDragAfterDismiss)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(_UIClickPresentationInteraction *)self delegate];
  LOBYTE(selfCopy) = [delegate _clickPresentationInteractionShouldAllowDragAfterDismiss:selfCopy];

  return selfCopy;
}

- (void)_delegate_interactionEndedWithContext:(const InteractionEndingContext *)context
{
  endedForPresentation = self->_delegateImplements.endedForPresentation;
  delegate = [(_UIClickPresentationInteraction *)self delegate];
  v7 = delegate;
  if (endedForPresentation)
  {
    [delegate _clickPresentationInteractionEnded:self forPresentation:context->var3 reason:context->var2];
  }

  else
  {
    [delegate clickPresentationInteractionEnded:self wasCancelled:!context->var1];
  }
}

- (void)willMoveToView:(id)view
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(_UIClickPresentationInteraction *)self allDrivers:view];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v9 setView:0];
        [v9 setDelegate:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  exclusionRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
  view = [exclusionRelationshipGestureRecognizer view];
  exclusionRelationshipGestureRecognizer2 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
  [view removeGestureRecognizer:exclusionRelationshipGestureRecognizer2];

  failureRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
  view2 = [failureRelationshipGestureRecognizer view];
  failureRelationshipGestureRecognizer2 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
  [view2 removeGestureRecognizer:failureRelationshipGestureRecognizer2];

  [(_UIClickPresentationInteraction *)self setFeedbackGenerator:0];
  [(_UIClickPresentationInteraction *)self setAssociatedDragInteraction:0];
  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    [(_UIClickPresentationInteraction *)self _refreshAllDrivers];
    exclusionRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];

    if (!exclusionRelationshipGestureRecognizer)
    {
      v6 = objc_opt_new();
      [v6 setName:@"com.apple.UIKit.clickPresentationExclusion"];
      [v6 setDelegate:self];
      [(_UIClickPresentationInteraction *)self setExclusionRelationshipGestureRecognizer:v6];
    }

    failureRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];

    if (!failureRelationshipGestureRecognizer)
    {
      v8 = objc_opt_new();
      [v8 setName:@"com.apple.UIKit.clickPresentationFailure"];
      [v8 setDelegate:self];
      [(_UIClickPresentationInteraction *)self setFailureRelationshipGestureRecognizer:v8];
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    exclusionRelationshipGestureRecognizer2 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
    [WeakRetained addGestureRecognizer:exclusionRelationshipGestureRecognizer2];

    v11 = objc_loadWeakRetained(&self->_view);
    failureRelationshipGestureRecognizer2 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
    [v11 addGestureRecognizer:failureRelationshipGestureRecognizer2];

    if (self->_gestureRecognizerForBeginningDragRelationships)
    {
      v13 = objc_loadWeakRetained(&self->_view);
      gestureRecognizerForBeginningDragRelationships = [(_UIClickPresentationInteraction *)self gestureRecognizerForBeginningDragRelationships];
      [v13 addGestureRecognizer:gestureRecognizerForBeginningDragRelationships];
    }

    _UIContextMenuRegisterDefaultPlatformMetricsIfNecessary();
    v15 = objc_loadWeakRetained(&self->_view);
    traitCollection = [v15 traitCollection];
    v17 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    v18 = [_UIClickPresentationFeedbackGenerator alloc];
    presentationFeedbackConfiguration = [v17 presentationFeedbackConfiguration];
    v20 = objc_loadWeakRetained(&self->_view);
    v21 = [(_UIClickPresentationFeedbackGenerator *)v18 initWithConfiguration:presentationFeedbackConfiguration view:v20];
    [(_UIClickPresentationInteraction *)self setFeedbackGenerator:v21];
  }
}

- (void)_viewTraitCollectionDidChange:(id)change
{
  changeCopy = change;
  forceTouchCapability = [changeCopy forceTouchCapability];
  view = [(_UIClickPresentationInteraction *)self view];
  traitCollection = [view traitCollection];
  if (forceTouchCapability != [traitCollection forceTouchCapability])
  {

    goto LABEL_5;
  }

  userInterfaceIdiom = [changeCopy userInterfaceIdiom];
  view2 = [(_UIClickPresentationInteraction *)self view];
  traitCollection2 = [view2 traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom != userInterfaceIdiom2)
  {
LABEL_5:
    [(_UIClickPresentationInteraction *)self _refreshAllDrivers];
  }
}

- (void)_performPreviewPresentation
{
  if (!self->_activeEffectKey)
  {
    [(_UIClickPresentationInteraction *)self _prepareInteractionEffect];
  }

  selfCopy = self;
  handleEvent(stateMachineSpec_3, self->_currentState, 2, &selfCopy, &self->_currentState);
}

- (unint64_t)activatedDriverStyle
{
  activeDriver = [(_UIClickPresentationInteraction *)self activeDriver];
  if (activeDriver && (v4 = activeDriver, [(_UIClickPresentationInteraction *)self activeDriver], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    activeDriver2 = [(_UIClickPresentationInteraction *)self activeDriver];
    driverStyle = [activeDriver2 driverStyle];

    return driverStyle;
  }

  else
  {
    activeDriver3 = [(_UIClickPresentationInteraction *)self activeDriver];

    if (activeDriver3)
    {
      return 0;
    }

    else
    {

      return [(_UIClickPresentationInteraction *)self fallbackDriverStyle];
    }
  }
}

- (void)clickDriver:(id)driver shouldBegin:(id)begin
{
  driverCopy = driver;
  beginCopy = begin;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___UIClickPresentationInteraction_clickDriver_shouldBegin___block_invoke;
  aBlock[3] = &unk_1E70FCE28;
  aBlock[4] = self;
  v8 = driverCopy;
  v19 = v8;
  v9 = beginCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  view = [(_UIClickPresentationInteraction *)self view];
  window = [view window];
  rootViewController = [window rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];

  if ([(_UIClickPresentationInteraction *)self _supportsRapidRestart]|| !transitionCoordinator)
  {
    v10[2](v10);
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59___UIClickPresentationInteraction_clickDriver_shouldBegin___block_invoke_3;
    v16[3] = &unk_1E70F3770;
    v17 = v10;
    [transitionCoordinator animateAlongsideTransition:0 completion:v16];
  }
}

- (void)clickDriver:(id)driver didUpdateHighlightProgress:(double)progress
{
  driverCopy = driver;
  if (!self->_unableToClick)
  {
    v8 = driverCopy;
    if ([(_UIClickPresentationInteraction *)self _isActive]&& !self->_activeEffectKey)
    {
      [(_UIClickPresentationInteraction *)self _prepareInteractionEffect];
    }

    _activeEffect = [(_UIClickPresentationInteraction *)self _activeEffect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 maximumEffectProgress];
      [_activeEffect setMaxProgress:?];
    }

    [_activeEffect updateWithProgress:progress];

    driverCopy = v8;
  }
}

- (void)clickDriver:(id)driver didPerformEvent:(unint64_t)event
{
  v21 = *MEMORY[0x1E69E9840];
  driverCopy = driver;
  activeDriver = [(_UIClickPresentationInteraction *)self activeDriver];

  if (event == 3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allDrivers = [(_UIClickPresentationInteraction *)self allDrivers];
    v9 = [allDrivers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(allDrivers);
          }

          primaryGestureRecognizer = [*(*(&v16 + 1) + 8 * v12) primaryGestureRecognizer];
          _isActive = [(UIGestureRecognizer *)primaryGestureRecognizer _isActive];

          if (_isActive)
          {
            v15 = 0;
            goto LABEL_13;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [allDrivers countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = 1;
LABEL_13:
  }

  else
  {
    v15 = 0;
  }

  if (activeDriver == driverCopy || v15)
  {
    switch(event)
    {
      case 3uLL:
        [(_UIClickPresentationInteraction *)self _driverEnded];
        break;
      case 2uLL:
        [(_UIClickPresentationInteraction *)self _driverClickedUp];
        break;
      case 1uLL:
        [(_UIClickPresentationInteraction *)self _driverClickedDown];
        break;
    }
  }
}

- (BOOL)clickDriver:(id)driver shouldDelayGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy _isGestureType:8])
  {
    v5 = [recognizerCopy state] < 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)clickDriver:(id)driver shouldBeDelayedByGestureRecognizer:(id)recognizer
{
  if (!self->_delegateImplements.shouldBeDelayedByGestureRecognizer)
  {
    return 0;
  }

  selfCopy = self;
  recognizerCopy = recognizer;
  delegate = [(_UIClickPresentationInteraction *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _clickPresentationInteraction:selfCopy shouldBeDelayedByGestureRecognizer:recognizerCopy];

  return selfCopy;
}

+ (void)_setDefaultDriverClasses:(id)classes forIdiom:(int64_t)idiom
{
  classesCopy = classes;
  v5 = _driverClassesByIdiom;
  if (!_driverClassesByIdiom)
  {
    v6 = objc_opt_new();
    v7 = _driverClassesByIdiom;
    _driverClassesByIdiom = v6;

    v5 = _driverClassesByIdiom;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  [v5 setObject:classesCopy forKeyedSubscript:v8];
}

- (void)setOverrideDrivers:(id)drivers
{
  driversCopy = drivers;
  overrideDrivers = self->_overrideDrivers;
  v9 = driversCopy;
  v7 = overrideDrivers;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSArray *)v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_overrideDrivers, drivers);
    [(_UIClickPresentationInteraction *)self _refreshAllDrivers];
  }

LABEL_9:
}

- (void)setActiveDriver:(id)driver
{
  p_activeDriver = &self->_activeDriver;
  driverCopy = driver;
  if (*p_activeDriver != driverCopy)
  {
    objc_storeStrong(&self->_activeDriver, driver);
    if (*p_activeDriver)
    {
      prefersCancelsTouchesInView = [objc_opt_class() prefersCancelsTouchesInView];
      exclusionRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
      [exclusionRelationshipGestureRecognizer setCancelsTouchesInView:prefersCancelsTouchesInView];

      failureRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
      [failureRelationshipGestureRecognizer setCancelsTouchesInView:prefersCancelsTouchesInView];

      [(_UIClickInteractionDriving *)self->_activeDriver setCancelsTouchesInView:0];
      if ([(_UIClickPresentationInteraction *)self _delegate_shouldAllowDragAfterDismiss])
      {
        primaryGestureRecognizer = [(_UIClickInteractionDriving *)*p_activeDriver primaryGestureRecognizer];
        [primaryGestureRecognizer _setKeepTouchesOnContinuation:1];
      }
    }
  }
}

- (void)_cancelAllDrivers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allDrivers = [(_UIClickPresentationInteraction *)self allDrivers];
  v3 = [allDrivers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allDrivers);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancelInteraction];
      }

      while (v4 != v6);
      v4 = [allDrivers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_candidateInteractionsForAssociation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  _clickDriverTouch = [(_UIClickPresentationInteraction *)self _clickDriverTouch];
  if (_clickDriverTouch)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = _clickDriverTouch;
    obj = [_clickDriverTouch gestureRecognizers];
    v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v19 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          view = [v8 view];
          interactions = [view interactions];

          v11 = [interactions countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(interactions);
                }

                v15 = *(*(&v20 + 1) + 8 * j);
                if ((objc_opt_respondsToSelector() & 1) != 0 && [v15 _supportsAssociation])
                {
                  [v3 addObject:v15];
                }
              }

              v12 = [interactions countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v12);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v6);
    }

    _clickDriverTouch = v17;
  }

  return v3;
}

- (void)_associateWithActiveDragInteraction
{
  selfCopy = self;
  v30 = *MEMORY[0x1E69E9840];
  _clickDriverTouch = [(_UIClickPresentationInteraction *)self _clickDriverTouch];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  gestureRecognizers = [_clickDriverTouch gestureRecognizers];
  v5 = [gestureRecognizers countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = selfCopy;
    v19 = _clickDriverTouch;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if (_isDragInteractionGestureRecognizer(v9))
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          view = [v9 view];
          interactions = [view interactions];

          v12 = [interactions countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
LABEL_9:
            v15 = 0;
            while (1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(interactions);
              }

              v16 = *(*(&v20 + 1) + 8 * v15);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              if (v13 == ++v15)
              {
                v13 = [interactions countByEnumeratingWithState:&v20 objects:v28 count:16];
                if (v13)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v17 = v16;

            if (v17)
            {
              goto LABEL_20;
            }
          }

          else
          {
LABEL_15:
          }
        }
      }

      v6 = [gestureRecognizers countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
    v17 = 0;
LABEL_20:
    selfCopy = v18;
    _clickDriverTouch = v19;
  }

  else
  {
    v17 = 0;
  }

  [(_UIClickPresentationInteraction *)selfCopy setAssociatedDragInteraction:v17];
}

- (void)_attemptDragLiftAtLocation:(CGPoint)location useDefaultLiftAnimation:(BOOL)animation
{
  animationCopy = animation;
  y = location.y;
  x = location.x;
  _clickDragDriver = [(_UIClickPresentationInteraction *)self _clickDragDriver];
  if ([_clickDragDriver canBeginLiftAtLocation:{x, y}])
  {
    v9 = 0.0;
    if (self->_unableToClick)
    {
      [_clickDragDriver liftDelay];
      v11 = v10;
      activeDriver = [(_UIClickPresentationInteraction *)self activeDriver];
      [activeDriver touchDuration];
      v9 = v11 - v13;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86___UIClickPresentationInteraction__attemptDragLiftAtLocation_useDefaultLiftAnimation___block_invoke;
    v14[3] = &unk_1E70F3C60;
    v15 = _clickDragDriver;
    selfCopy = self;
    [v15 beginLiftAtLocation:animationCopy useDefaultLiftAnimation:v14 delay:x completion:{y, v9}];
  }
}

- (BOOL)beginDragIfPossibleWithTouch:(id)touch
{
  touchCopy = touch;
  [(_UIRelationshipGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships _fail];
  if (!touchCopy)
  {
    _clickDriverTouch = [(_UIClickPresentationInteraction *)self _clickDriverTouch];
    if (!_clickDriverTouch)
    {
      LOBYTE(isLifted) = 0;
      return isLifted;
    }

    touchCopy = _clickDriverTouch;
  }

  _clickDragDriver = [(_UIClickPresentationInteraction *)self _clickDragDriver];
  if (([_clickDragDriver isLifted] & 1) == 0)
  {
    [(_UIClickPresentationInteraction *)self locationInView:0];
    [(_UIClickPresentationInteraction *)self _attemptDragLiftAtLocation:0 useDefaultLiftAnimation:?];
  }

  isLifted = [_clickDragDriver isLifted];
  if (isLifted)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__161;
    v17[4] = __Block_byref_object_dispose__161;
    array = [MEMORY[0x1E695DF70] array];
    objc_initWeak(&location, self);
    v8 = [MEMORY[0x1E695DFD8] setWithObject:touchCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64___UIClickPresentationInteraction_beginDragIfPossibleWithTouch___block_invoke;
    v14[3] = &unk_1E711B7C8;
    objc_copyWeak(&v15, &location);
    v14[4] = v17;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64___UIClickPresentationInteraction_beginDragIfPossibleWithTouch___block_invoke_2;
    v13[3] = &unk_1E711B7F0;
    v13[4] = self;
    v13[5] = v17;
    [_clickDragDriver beginDragWithTouches:v8 itemIterator:v14 beginningSessionHandler:v13];

    if (self->_shouldAllowFeedback)
    {
      feedbackGenerator = [(_UIClickPresentationInteraction *)self feedbackGenerator];
      [(_UIClickPresentationInteraction *)self locationInView:0];
      [feedbackGenerator draggedAtLocation:?];
    }

    if (self->_unableToClick)
    {
      exclusionRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
      [exclusionRelationshipGestureRecognizer _succeed];

      failureRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
      [failureRelationshipGestureRecognizer _succeed];
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    _Block_object_dispose(v17, 8);
  }

  return isLifted;
}

- (void)_endInteractionEffectIfNeeded
{
  if (self)
  {
    _activeEffect = [self _activeEffect];
    [_activeEffect end];

    v3 = self[8];
    self[8] = 0;
  }
}

- (UIGestureRecognizer)gestureRecognizerForBeginningDragRelationships
{
  if (!self->_gestureRecognizerForBeginningDragRelationships)
  {
    v3 = objc_opt_new();
    gestureRecognizerForBeginningDragRelationships = self->_gestureRecognizerForBeginningDragRelationships;
    self->_gestureRecognizerForBeginningDragRelationships = v3;

    [(UIGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships setName:@"com.apple.UIKit.UICPI-beginning-drag-failure-relationship"];
    [(UIGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships setDelegate:self];
    [(UIGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships _setKeepTouchesOnContinuation:1];
    [(_UIRelationshipGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships setSucceedsOnTouchesEnded:1];
    [(UIGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships setDelaysTouchesEnded:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained addGestureRecognizer:self->_gestureRecognizerForBeginningDragRelationships];

  v6 = self->_gestureRecognizerForBeginningDragRelationships;

  return v6;
}

- (void)_setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateImplements.shouldBegin = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.previewForHighlightingAtLocation = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldPresent = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.ended = objc_opt_respondsToSelector() & 1;
    if ([UIApp _isSpringBoard])
    {
      self->_delegateImplements.activationStyle = objc_opt_respondsToSelector() & 1;
    }

    self->_delegateImplements.asyncShouldBegin = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldAllowRapidRestart = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldAssociateWithDrag = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldAllowDragAfterDismiss = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.liveDragPreviewForPresentation = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.previewForCancellingDragItem = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.willAnimateDragCancelWithAnimator = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.dragSessionDidEndForItems = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.interactionEffectForTargetedPreview = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.endedForPresentation = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldPlayFeedback = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldPresentWithCompletion = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldBeDelayedByGestureRecognizer = objc_opt_respondsToSelector() & 1;
    delegate = [(_UIClickPresentationInteraction *)self delegate];
    self->_delegateImplements.secondaryPreviews = objc_opt_respondsToSelector() & 1;

    delegate2 = [(_UIClickPresentationInteraction *)self delegate];
    self->_delegateImplements.shouldMaintainKeyboardAssertion = objc_opt_respondsToSelector() & 1;

    v8 = objc_loadWeakRetained(&self->_delegate);
    v5 = obj;
    if (v8)
    {
      self->_currentState = 1;
    }
  }
}

- (void)_cancelWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  if (self->_currentState > 3 || ![(_UIClickPresentationInteraction *)self _supportsRapidRestart])
  {
    v10[0] = self;
    v10[1] = 0;
    v10[2] = reason;
    v11 = 0;
    v12 = _Block_copy(actionsCopy);
    v13 = _Block_copy(completionCopy);
    [(_UIClickPresentationInteraction *)self _endInteractionWithContext:v10];
  }
}

- (void)_endInteractionWithContext:(const InteractionEndingContext *)context
{
  currentState = self->_currentState;
  if (currentState < 2)
  {
    exclusionRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
    [exclusionRelationshipGestureRecognizer _fail];

    [(_UIRelationshipGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships _fail];
    self->_unableToClick = 0;
  }

  else
  {

    handleEvent(stateMachineSpec_3, currentState, 3, context, &self->_currentState);
  }
}

- (void)_prepareInteractionEffect
{
  v51 = *MEMORY[0x1E69E9840];
  view = [(_UIClickPresentationInteraction *)self view];
  [(_UIClickPresentationInteraction *)self locationInView:view];
  v5 = v4;
  v7 = v6;

  if (!self->_delegateImplements.previewForHighlightingAtLocation || (-[_UIClickPresentationInteraction delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 clickPresentationInteraction:self previewForHighlightingAtLocation:{v5, v7}], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [UITargetedPreview alloc];
    view2 = [(_UIClickPresentationInteraction *)self view];
    v9 = [(UITargetedPreview *)v10 initWithView:view2];
  }

  if ([(_UIClickPresentationInteraction *)self activatedDriverStyle]== 1)
  {
    v12 = 0;
  }

  else
  {
    [(_UIClickPresentationInteraction *)self _candidateInteractionsForAssociation];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v13 = v47 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v14)
    {
      v15 = *v47;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v46 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v17 _targetedPreviewForContinuingEffectWithPreview:v9];
          if (v12)
          {
            break;
          }
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v14)
          {
            goto LABEL_8;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v12 = 0;
    }
  }

  v18 = objc_opt_new();
  view3 = [(_UIClickPresentationInteraction *)self view];
  [v18 setView:view3];

  [v18 setPoint:{v5, v7}];
  v20 = objc_opt_new();
  [v20 setPrimaryPreview:v9];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__161;
  v44 = __Block_byref_object_dispose__161;
  v45 = 0;
  if (self->_delegateImplements.interactionEffectForTargetedPreview && (-[_UIClickPresentationInteraction delegate](self, "delegate"), v21 = objc_claimAutoreleasedReturnValue(), [v21 _clickPresentationInteraction:self interactionEffectForTargetedPreview:v9], v22 = objc_claimAutoreleasedReturnValue(), v23 = v41[5], v41[5] = v22, v23, v21, v41[5]) || !self->_delegateImplements.secondaryPreviews)
  {
    v30 = +[_UIContentEffectManager sharedManager];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __60___UIClickPresentationInteraction__prepareInteractionEffect__block_invoke_2;
    v31[3] = &unk_1E711BB70;
    v36 = &v40;
    v32 = v9;
    v33 = v12;
    v34 = v20;
    v35 = v18;
    v27 = [v30 compatibleEffectForKey:v35 descriptor:v34 constructor:v31];

    v28 = &v32;
    v29 = &v33;
    v26 = v34;
  }

  else
  {
    delegate = [(_UIClickPresentationInteraction *)self delegate];
    v25 = [delegate _secondaryPreviewsForClickPresentationInteraction:self];
    [v20 setSecondaryPreviews:v25];

    v26 = +[_UIContentEffectManager sharedManager];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __60___UIClickPresentationInteraction__prepareInteractionEffect__block_invoke;
    v37[3] = &unk_1E711BB48;
    v38 = v20;
    v39 = v12;
    v27 = [v26 compatibleEffectForKey:v18 descriptor:v38 constructor:v37];
    v28 = &v38;
    v29 = &v39;
  }

  if (v27)
  {
    objc_storeStrong(&self->_activeEffectKey, v18);
    [v27 begin];
  }

  _Block_object_dispose(&v40, 8);
}

- (void)setAssociatedDragInteraction:(id)interaction
{
  obj = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_associatedDragInteraction);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_associatedDragInteraction);

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_associatedDragInteraction);
      [v6 _setInitiationDrivers:0];
    }

    v7 = objc_storeWeak(&self->_associatedDragInteraction, obj);

    if (obj)
    {
      v8 = MEMORY[0x1E695DFD8];
      v9 = objc_opt_new();
      v10 = [v8 setWithObject:v9];
      v11 = objc_loadWeakRetained(&self->_associatedDragInteraction);
      [v11 _setInitiationDrivers:v10];

      v12 = objc_loadWeakRetained(&self->_associatedDragInteraction);
      [v12 _setPresentationDelegate:self];
    }
  }
}

- (BOOL)_isControlledByCC
{
  if ([UIApp _isSpringBoard])
  {
    delegate = [(_UIClickPresentationInteraction *)self delegate];
    NSClassFromString(&cfstr_Ccuicontentmod.isa);
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      delegate2 = [(_UIClickPresentationInteraction *)self delegate];
      NSClassFromString(&cfstr_Ccuicontentmod_0.isa);
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (NSString)presentationTypeDebugString
{
  presentationTypeDebugString = self->_presentationTypeDebugString;
  if (presentationTypeDebugString)
  {
    v3 = presentationTypeDebugString;
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    delegate = [(_UIClickPresentationInteraction *)self delegate];
    v3 = [v4 stringWithFormat:@"(delegate: %@)", objc_opt_class()];
  }

  return v3;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  exclusionRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];

  if (exclusionRelationshipGestureRecognizer == failedCopy)
  {
    if ([(_UIClickPresentationInteraction *)self _isActive])
    {
      [(_UIClickPresentationInteraction *)self _cancelAllDrivers];
    }

    failureRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
    [failureRelationshipGestureRecognizer _fail];

    gestureRecognizerForBeginningDragRelationships = self->_gestureRecognizerForBeginningDragRelationships;

    [(_UIRelationshipGestureRecognizer *)gestureRecognizerForBeginningDragRelationships _fail];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  exclusionRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];

  if (exclusionRelationshipGestureRecognizer != recognizerCopy)
  {
    failureRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];

    if (failureRelationshipGestureRecognizer != recognizerCopy)
    {
      isKindOfClass = self->_gestureRecognizerForBeginningDragRelationships == recognizerCopy;
      goto LABEL_11;
    }

LABEL_8:
    isKindOfClass = 1;
    goto LABEL_11;
  }

  if (![gestureRecognizerCopy _isGestureType:1])
  {
    if (![(_UIClickPresentationInteraction *)self _isControlledByCC])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if ([gestureRecognizerCopy _isGestureType:3])
  {
    isKindOfClass = 0;
  }

  else
  {
    isKindOfClass = [gestureRecognizerCopy _prefersToBeExclusiveWithCompetingLongPressGestureRecognizers] ^ 1;
  }

LABEL_11:

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  failureRelationshipGestureRecognizer = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];

  if (failureRelationshipGestureRecognizer != recognizerCopy || ![gestureRecognizerCopy _isGestureType:1])
  {
    goto LABEL_6;
  }

  allDrivers = [(_UIClickPresentationInteraction *)self allDrivers];
  if (![allDrivers count] || objc_msgSend(gestureRecognizerCopy, "_prefersNotToBePreventedByCompetingLongPressGestureRecognizers"))
  {

LABEL_6:
    goto LABEL_7;
  }

  name = [gestureRecognizerCopy name];
  v13 = [name isEqualToString:@"PKSelectionDragGesture"];

  if ((v13 & 1) == 0)
  {
    v10 = ![(_UIClickPresentationInteraction *)self allowSimultaneousRecognition];
    goto LABEL_8;
  }

LABEL_7:
  LOBYTE(v10) = 0;
LABEL_8:

  return v10;
}

- (id)_dragInteractionPresentation:(id)presentation previewForCancellingItem:(id)item defaultPreview:(id)preview proposedPreview:(id)proposedPreview
{
  itemCopy = item;
  proposedPreviewCopy = proposedPreview;
  delegate = [(_UIClickPresentationInteraction *)self delegate];
  v11 = delegate;
  if (proposedPreviewCopy && self->_delegateImplements.previewForCancellingDragItem)
  {
    v12 = [delegate _clickPresentationInteraction:self previewForCancellingDragItem:itemCopy];
    target = [proposedPreviewCopy target];
    v14 = [v12 retargetedPreviewWithTarget:target];

    [v14 _setPreviewMode:3];
    [v14 _setDefaultPreview:1];
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = proposedPreviewCopy;
  }

  v16 = v15;

  return v15;
}

- (void)_dragInteractionPresentation:(id)presentation item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  delegate = [(_UIClickPresentationInteraction *)self delegate];
  v9 = delegate;
  if (self->_delegateImplements.willAnimateDragCancelWithAnimator)
  {
    [delegate _clickPresentationInteraction:self item:itemCopy willAnimateDragCancelWithAnimator:animatorCopy];
  }
}

- (void)_dragInteractionPresentation:(id)presentation sessionDidEnd:(id)end withoutBeginning:(BOOL)beginning
{
  beginningCopy = beginning;
  endCopy = end;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95___UIClickPresentationInteraction__dragInteractionPresentation_sessionDidEnd_withoutBeginning___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = endCopy;
  v8 = endCopy;
  v9 = _Block_copy(v11);
  v10 = v9;
  if (beginningCopy)
  {
    [_UIClickPresentationInteraction _endInteractionDidComplete:v9 completion:?];
    [(_UIClickPresentationInteraction *)self _endInteractionEffectIfNeeded];
  }

  else
  {
    v9[2](v9);
  }
}

- (CAPoint3D)initialLocation
{
  x = self->_initialLocation.x;
  y = self->_initialLocation.y;
  z = self->_initialLocation.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end