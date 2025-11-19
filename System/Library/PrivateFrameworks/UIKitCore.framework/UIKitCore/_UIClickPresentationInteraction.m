@interface _UIClickPresentationInteraction
+ (void)_setDefaultDriverClasses:(id)a3 forIdiom:(int64_t)a4;
- (BOOL)_canPerformPresentation;
- (BOOL)_delegate_shouldAllowDragAfterDismiss;
- (BOOL)_isControlledByCC;
- (BOOL)_reachedForceThreshold;
- (BOOL)_supportsRapidRestart;
- (BOOL)beginDragIfPossibleWithTouch:(id)a3;
- (BOOL)clickDriver:(id)a3 shouldBeDelayedByGestureRecognizer:(id)a4;
- (BOOL)clickDriver:(id)a3 shouldDelayGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CAPoint3D)initialLocation;
- (CGPoint)locationInView:(id)a3;
- (NSArray)secondaryEffectPreviews;
- (NSString)presentationTypeDebugString;
- (UIDragInteraction)associatedDragInteraction;
- (UIGestureRecognizer)gestureRecognizerForBeginningDragRelationships;
- (UITargetedPreview)primaryEffectPreview;
- (UIView)view;
- (_UIClickPresentationInteraction)initWithDelegate:(id)a3;
- (_UIClickPresentationInteractionDelegate)delegate;
- (id)_activeEffect;
- (id)_candidateInteractionsForAssociation;
- (id)_clickDragDriver;
- (id)_clickDriverTouch;
- (id)_dragInteractionPresentation:(id)a3 previewForCancellingItem:(id)a4 defaultPreview:(id)a5 proposedPreview:(id)a6;
- (unint64_t)activatedDriverStyle;
- (unint64_t)inputPrecision;
- (void)_associateWithActiveDragInteraction;
- (void)_attemptDragLiftAtLocation:(CGPoint)a3 useDefaultLiftAnimation:(BOOL)a4;
- (void)_cancelAllDrivers;
- (void)_cancelWithReason:(unint64_t)a3 alongsideActions:(id)a4 completion:(id)a5;
- (void)_delegate_interactionEndedWithContext:(const InteractionEndingContext *)a3;
- (void)_dragInteractionPresentation:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)_dragInteractionPresentation:(id)a3 sessionDidEnd:(id)a4 withoutBeginning:(BOOL)a5;
- (void)_driverEnded;
- (void)_endInteractionDidComplete:(void *)a1 completion:(void *)a2;
- (void)_endInteractionEffectIfNeeded;
- (void)_endInteractionWithContext:(const InteractionEndingContext *)a3;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_performPresentation;
- (void)_performPreviewPresentation;
- (void)_prepareInteractionEffect;
- (void)_refreshAllDrivers;
- (void)_setDelegate:(id)a3;
- (void)_viewTraitCollectionDidChange:(id)a3;
- (void)beginPanInteraction;
- (void)clickDriver:(id)a3 didPerformEvent:(unint64_t)a4;
- (void)clickDriver:(id)a3 didUpdateHighlightProgress:(double)a4;
- (void)clickDriver:(id)a3 shouldBegin:(id)a4;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)endPanInteraction;
- (void)present;
- (void)setActiveDriver:(id)a3;
- (void)setAssociatedDragInteraction:(id)a3;
- (void)setOverrideDrivers:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIClickPresentationInteraction

- (void)_driverEnded
{
  if (self->_activatedFeedbackGeneratorForClick)
  {
    v3 = [(_UIClickPresentationInteraction *)self feedbackGenerator];
    [v3 userInteractionEnded];

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
  v3 = [(_UIClickPresentationInteraction *)self allDrivers];
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v48 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        [v8 setView:0];
        [v8 setDelegate:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v5);
  }

  v9 = [(_UIClickPresentationInteraction *)self view];

  if (v9)
  {
    v10 = [(_UIClickPresentationInteraction *)self overrideDrivers];

    if (v10)
    {
      v11 = [(_UIClickPresentationInteraction *)self overrideDrivers];
      [(_UIClickPresentationInteraction *)self setAllDrivers:v11];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = _driverClassesByIdiom;
      v13 = MEMORY[0x1E696AD98];
      v14 = [(_UIClickPresentationInteraction *)self view];
      v15 = [v14 traitCollection];
      v16 = [v13 numberWithInteger:{objc_msgSend(v15, "userInterfaceIdiom")}];
      v17 = [v12 objectForKeyedSubscript:v16];

      if (![v17 count])
      {
        if (self->_delegateImplements.activationStyle)
        {
          v18 = [(_UIClickPresentationInteraction *)self delegate];
          [v18 activationStyleForClickPresentationInteraction:self];
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
            [v11 addObject:v25];
            if (objc_opt_respondsToSelector())
            {
              [v25 setBehavior:1];
              v26 = objc_opt_new();
              [v26 setBehavior:2];
              [v11 addObject:v26];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v22);
      }

      [(_UIClickPresentationInteraction *)self setAllDrivers:v11];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = [(_UIClickPresentationInteraction *)self allDrivers];
    v28 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
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
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v34 + 1) + 8 * k);
          v33 = [(_UIClickPresentationInteraction *)self view];
          [v32 setView:v33];

          [v32 setDelegate:self];
          [v32 setAllowableMovement:{_UIClickPresentationAllowableMovementForDriver(v32, 0)}];
        }

        v29 = [v27 countByEnumeratingWithState:&v34 objects:v46 count:16];
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

  v2 = self;
  v3 = [(_UIClickPresentationInteraction *)self delegate];
  LOBYTE(v2) = [v3 _clickPresentationInteractionShouldAllowRapidRestart:v2];

  return v2;
}

- (void)dealloc
{
  v3 = [(_UIClickPresentationInteraction *)self view];
  [v3 removeInteraction:self];

  v4.receiver = self;
  v4.super_class = _UIClickPresentationInteraction;
  [(_UIClickPresentationInteraction *)&v4 dealloc];
}

- (BOOL)_canPerformPresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(_UIClickPresentationInteraction *)self view];
  v4 = [v3 _window];

  if (!v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v13 = [(_UIClickPresentationInteraction *)self view];
      v30 = 138412290;
      v31 = v13;
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
      v13 = [(_UIClickPresentationInteraction *)self view];
      v30 = 138412290;
      v31 = v13;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Attempting to present while the interaction's view (%@) is not in a window. Removing the interaction's view (or an ancestor) from the view hierarchy while the interaction is active is not recommended!", &v30, 0xCu);
    }

LABEL_12:
    return 0;
  }

  v5 = [(_UIClickPresentationInteraction *)self presentationAssistant];

  if (!v5)
  {
    v6 = [(_UIClickPresentationInteraction *)self view];
    v7 = [v6 _viewControllerForAncestor];

    if (v7)
    {
LABEL_4:
      v8 = [v7 presentedViewController];
      v9 = v8;
      if (!v8 || ([v8 isBeingDismissed] & 1) != 0)
      {
        if (!v7)
        {
LABEL_7:
          v10 = 0;
LABEL_16:

          return v10;
        }

LABEL_15:
        v16 = [(_UIClickPresentationInteraction *)self delegate];
        v17 = [v16 clickPresentationInteraction:self presentationForPresentingViewController:v7];
        [(_UIClickPresentationInteraction *)self setPendingPresentation:v17];

        v18 = [(_UIClickPresentationInteraction *)self pendingPresentation];
        v10 = v18 != 0;

        goto LABEL_16;
      }

      v14 = [(_UIClickPresentationInteraction *)self view];
      v15 = [UIViewController _viewControllerForFullScreenPresentationFromView:v14];

      v7 = v15;
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

        v27 = [(_UIClickPresentationInteraction *)self view];
        v28 = [(_UIClickPresentationInteraction *)self view];
        v29 = [v28 window];
        v30 = 138412546;
        v31 = v27;
        v32 = 2112;
        v33 = v29;
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
        v27 = [(_UIClickPresentationInteraction *)self view];
        v28 = [(_UIClickPresentationInteraction *)self view];
        v29 = [v28 window];
        v30 = 138412546;
        v31 = v27;
        v32 = 2112;
        v33 = v29;
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

      v22 = [(_UIClickPresentationInteraction *)self view];
      v23 = [(_UIClickPresentationInteraction *)self view];
      v24 = [v23 window];
      v30 = 138412546;
      v31 = v22;
      v32 = 2112;
      v33 = v24;
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
      v22 = [(_UIClickPresentationInteraction *)self view];
      v23 = [(_UIClickPresentationInteraction *)self view];
      v24 = [v23 window];
      v30 = 138412546;
      v31 = v22;
      v32 = 2112;
      v33 = v24;
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
  v2 = [(_UIClickPresentationInteraction *)self associatedDragInteraction];
  v3 = [v2 _initiationDrivers];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(_UIClickPresentationInteraction *)self activeDriver];
  v3 = [v2 primaryGestureRecognizer];
  v4 = [v3 _allActiveTouches];
  v5 = [v4 anyObject];

  return v5;
}

- (UITargetedPreview)primaryEffectPreview
{
  v3 = [(_UIClickPresentationInteraction *)self _activeEffect];
  v4 = [UITargetedPreview alloc];
  v5 = [(_UIClickPresentationInteraction *)self view];
  v6 = [(UITargetedPreview *)v4 initWithView:v5];
  v7 = [v3 previewForContinuingToEffectWithPreview:v6];

  return v7;
}

- (void)_performPresentation
{
  v3 = [(_UIClickPresentationInteraction *)self pendingPresentation];
  if (v3)
  {
    v4 = [(_UIClickPresentationInteraction *)self _clickDriverTouch];

    if (v4)
    {
      v5 = [(_UIClickPresentationInteraction *)self activeDriver];
      v6 = [v5 isCurrentlyAcceleratedByForce];

      v7 = 1;
      if (v6)
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

    v10 = [[v9 alloc] initWithClickPresentation:v3];
    [(_UIClickPresentationInteraction *)self setPresentationAssistant:v10];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __55___UIClickPresentationInteraction__performPresentation__block_invoke_26;
    v28[3] = &unk_1E711B778;
    objc_copyWeak(&v29, location);
    v11 = [(_UIClickPresentationInteraction *)self presentationAssistant];
    [v11 setKeyboardAssertionInvalidationHandler:v28];

    v12 = [(_UIClickPresentationInteraction *)self primaryEffectPreview];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55___UIClickPresentationInteraction__performPresentation__block_invoke_2;
    v25[3] = &unk_1E70FCE28;
    v25[4] = self;
    v13 = v12;
    v26 = v13;
    v14 = v8;
    v27 = v14;
    v15 = _Block_copy(v25);
    v16 = [v3 viewController];
    v17 = [v16 transitionCoordinator];

    if (v17 || ([v3 presentationController], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "presentingViewController"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "transitionCoordinator"), v17 = objc_claimAutoreleasedReturnValue(), v19, v18, v17))
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __55___UIClickPresentationInteraction__performPresentation__block_invoke_5;
      v23 = &unk_1E70F3770;
      v24 = v15;
      [v17 animateAlongsideTransition:0 completion:&v20];
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
    v3 = [(_UIClickPresentationInteraction *)self feedbackGenerator];
    [v3 userInteractionEnded];
  }
}

- (void)beginPanInteraction
{
  if (self->_shouldAllowFeedback)
  {
    v3 = [(_UIClickPresentationInteraction *)self feedbackGenerator];
    [v3 userInteractionStarted];
  }
}

- (_UIClickPresentationInteraction)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIClickPresentationInteraction;
  v5 = [(_UIClickPresentationInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIClickPresentationInteraction *)v5 _setDelegate:v4];
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

- (void)_endInteractionDidComplete:(void *)a1 completion:(void *)a2
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = a1;
    v5[1] = 0;
    v6 = 0;
    v7 = 0;
    v5[2] = 0;
    v8 = _Block_copy(v3);
    [a1 _endInteractionWithContext:v5];
  }
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  [(_UIClickPresentationInteraction *)self initialLocation];
  v6 = v5;
  v8 = v7;
  v9 = [(_UIClickPresentationInteraction *)self view];
  if (v9)
  {
    v10 = v9;
    v11 = [(_UIClickPresentationInteraction *)self activeDriver];
    if (v11)
    {

      if (v6 == 1.79769313e308 && v8 == 1.79769313e308)
      {
        v12 = [(_UIClickPresentationInteraction *)self activeDriver];
        v13 = [(_UIClickPresentationInteraction *)self view];
        [v12 locationInCoordinateSpace:v13];
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
    v19 = [(_UIClickPresentationInteraction *)self view];

    if (v19 == v4)
    {
      *&v16 = v8;
      *&v18 = v6;
    }

    else
    {
      v20 = [(_UIClickPresentationInteraction *)self view];
      [v20 convertPoint:v4 toView:{v6, v8}];
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
  v2 = [(_UIClickPresentationInteraction *)self activeDriver];
  v3 = [v2 inputPrecision];

  return v3;
}

- (NSArray)secondaryEffectPreviews
{
  v2 = [(_UIClickPresentationInteraction *)self _activeEffect];
  v3 = [v2 secondaryBodyPreviews];

  return v3;
}

- (BOOL)_reachedForceThreshold
{
  v2 = [(_UIClickPresentationInteraction *)self activeDriver];
  v3 = [v2 isCurrentlyAcceleratedByForce];

  return v3;
}

- (BOOL)_delegate_shouldAllowDragAfterDismiss
{
  if (!self->_delegateImplements.shouldAllowDragAfterDismiss)
  {
    return 0;
  }

  v2 = self;
  v3 = [(_UIClickPresentationInteraction *)self delegate];
  LOBYTE(v2) = [v3 _clickPresentationInteractionShouldAllowDragAfterDismiss:v2];

  return v2;
}

- (void)_delegate_interactionEndedWithContext:(const InteractionEndingContext *)a3
{
  endedForPresentation = self->_delegateImplements.endedForPresentation;
  v6 = [(_UIClickPresentationInteraction *)self delegate];
  v7 = v6;
  if (endedForPresentation)
  {
    [v6 _clickPresentationInteractionEnded:self forPresentation:a3->var3 reason:a3->var2];
  }

  else
  {
    [v6 clickPresentationInteractionEnded:self wasCancelled:!a3->var1];
  }
}

- (void)willMoveToView:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(_UIClickPresentationInteraction *)self allDrivers:a3];
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

  v10 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
  v11 = [v10 view];
  v12 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
  [v11 removeGestureRecognizer:v12];

  v13 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
  v14 = [v13 view];
  v15 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
  [v14 removeGestureRecognizer:v15];

  [(_UIClickPresentationInteraction *)self setFeedbackGenerator:0];
  [(_UIClickPresentationInteraction *)self setAssociatedDragInteraction:0];
  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    [(_UIClickPresentationInteraction *)self _refreshAllDrivers];
    v5 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];

    if (!v5)
    {
      v6 = objc_opt_new();
      [v6 setName:@"com.apple.UIKit.clickPresentationExclusion"];
      [v6 setDelegate:self];
      [(_UIClickPresentationInteraction *)self setExclusionRelationshipGestureRecognizer:v6];
    }

    v7 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];

    if (!v7)
    {
      v8 = objc_opt_new();
      [v8 setName:@"com.apple.UIKit.clickPresentationFailure"];
      [v8 setDelegate:self];
      [(_UIClickPresentationInteraction *)self setFailureRelationshipGestureRecognizer:v8];
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
    [WeakRetained addGestureRecognizer:v10];

    v11 = objc_loadWeakRetained(&self->_view);
    v12 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
    [v11 addGestureRecognizer:v12];

    if (self->_gestureRecognizerForBeginningDragRelationships)
    {
      v13 = objc_loadWeakRetained(&self->_view);
      v14 = [(_UIClickPresentationInteraction *)self gestureRecognizerForBeginningDragRelationships];
      [v13 addGestureRecognizer:v14];
    }

    _UIContextMenuRegisterDefaultPlatformMetricsIfNecessary();
    v15 = objc_loadWeakRetained(&self->_view);
    v16 = [v15 traitCollection];
    v17 = _UIContextMenuGetPlatformMetrics([v16 userInterfaceIdiom]);

    v18 = [_UIClickPresentationFeedbackGenerator alloc];
    v19 = [v17 presentationFeedbackConfiguration];
    v20 = objc_loadWeakRetained(&self->_view);
    v21 = [(_UIClickPresentationFeedbackGenerator *)v18 initWithConfiguration:v19 view:v20];
    [(_UIClickPresentationInteraction *)self setFeedbackGenerator:v21];
  }
}

- (void)_viewTraitCollectionDidChange:(id)a3
{
  v11 = a3;
  v4 = [v11 forceTouchCapability];
  v5 = [(_UIClickPresentationInteraction *)self view];
  v6 = [v5 traitCollection];
  if (v4 != [v6 forceTouchCapability])
  {

    goto LABEL_5;
  }

  v7 = [v11 userInterfaceIdiom];
  v8 = [(_UIClickPresentationInteraction *)self view];
  v9 = [v8 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v7 != v10)
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

  v3 = self;
  handleEvent(stateMachineSpec_3, self->_currentState, 2, &v3, &self->_currentState);
}

- (unint64_t)activatedDriverStyle
{
  v3 = [(_UIClickPresentationInteraction *)self activeDriver];
  if (v3 && (v4 = v3, [(_UIClickPresentationInteraction *)self activeDriver], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = [(_UIClickPresentationInteraction *)self activeDriver];
    v8 = [v7 driverStyle];

    return v8;
  }

  else
  {
    v10 = [(_UIClickPresentationInteraction *)self activeDriver];

    if (v10)
    {
      return 0;
    }

    else
    {

      return [(_UIClickPresentationInteraction *)self fallbackDriverStyle];
    }
  }
}

- (void)clickDriver:(id)a3 shouldBegin:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___UIClickPresentationInteraction_clickDriver_shouldBegin___block_invoke;
  aBlock[3] = &unk_1E70FCE28;
  aBlock[4] = self;
  v8 = v6;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(_UIClickPresentationInteraction *)self view];
  v12 = [v11 window];
  v13 = [v12 rootViewController];
  v14 = [v13 presentedViewController];
  v15 = [v14 transitionCoordinator];

  if ([(_UIClickPresentationInteraction *)self _supportsRapidRestart]|| !v15)
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
    [v15 animateAlongsideTransition:0 completion:v16];
  }
}

- (void)clickDriver:(id)a3 didUpdateHighlightProgress:(double)a4
{
  v6 = a3;
  if (!self->_unableToClick)
  {
    v8 = v6;
    if ([(_UIClickPresentationInteraction *)self _isActive]&& !self->_activeEffectKey)
    {
      [(_UIClickPresentationInteraction *)self _prepareInteractionEffect];
    }

    v7 = [(_UIClickPresentationInteraction *)self _activeEffect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 maximumEffectProgress];
      [v7 setMaxProgress:?];
    }

    [v7 updateWithProgress:a4];

    v6 = v8;
  }
}

- (void)clickDriver:(id)a3 didPerformEvent:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_UIClickPresentationInteraction *)self activeDriver];

  if (a4 == 3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(_UIClickPresentationInteraction *)self allDrivers];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * v12) primaryGestureRecognizer];
          v14 = [(UIGestureRecognizer *)v13 _isActive];

          if (v14)
          {
            v15 = 0;
            goto LABEL_13;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  if (v7 == v6 || v15)
  {
    switch(a4)
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

- (BOOL)clickDriver:(id)a3 shouldDelayGestureRecognizer:(id)a4
{
  v4 = a4;
  if ([v4 _isGestureType:8])
  {
    v5 = [v4 state] < 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)clickDriver:(id)a3 shouldBeDelayedByGestureRecognizer:(id)a4
{
  if (!self->_delegateImplements.shouldBeDelayedByGestureRecognizer)
  {
    return 0;
  }

  v4 = self;
  v5 = a4;
  v6 = [(_UIClickPresentationInteraction *)v4 delegate];
  LOBYTE(v4) = [v6 _clickPresentationInteraction:v4 shouldBeDelayedByGestureRecognizer:v5];

  return v4;
}

+ (void)_setDefaultDriverClasses:(id)a3 forIdiom:(int64_t)a4
{
  v9 = a3;
  v5 = _driverClassesByIdiom;
  if (!_driverClassesByIdiom)
  {
    v6 = objc_opt_new();
    v7 = _driverClassesByIdiom;
    _driverClassesByIdiom = v6;

    v5 = _driverClassesByIdiom;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v5 setObject:v9 forKeyedSubscript:v8];
}

- (void)setOverrideDrivers:(id)a3
{
  v5 = a3;
  overrideDrivers = self->_overrideDrivers;
  v9 = v5;
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
    objc_storeStrong(&self->_overrideDrivers, a3);
    [(_UIClickPresentationInteraction *)self _refreshAllDrivers];
  }

LABEL_9:
}

- (void)setActiveDriver:(id)a3
{
  p_activeDriver = &self->_activeDriver;
  v10 = a3;
  if (*p_activeDriver != v10)
  {
    objc_storeStrong(&self->_activeDriver, a3);
    if (*p_activeDriver)
    {
      v6 = [objc_opt_class() prefersCancelsTouchesInView];
      v7 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
      [v7 setCancelsTouchesInView:v6];

      v8 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
      [v8 setCancelsTouchesInView:v6];

      [(_UIClickInteractionDriving *)self->_activeDriver setCancelsTouchesInView:0];
      if ([(_UIClickPresentationInteraction *)self _delegate_shouldAllowDragAfterDismiss])
      {
        v9 = [(_UIClickInteractionDriving *)*p_activeDriver primaryGestureRecognizer];
        [v9 _setKeepTouchesOnContinuation:1];
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
  v2 = [(_UIClickPresentationInteraction *)self allDrivers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancelInteraction];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_candidateInteractionsForAssociation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(_UIClickPresentationInteraction *)self _clickDriverTouch];
  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v4;
    obj = [v4 gestureRecognizers];
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
          v9 = [v8 view];
          v10 = [v9 interactions];

          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v20 + 1) + 8 * j);
                if ((objc_opt_respondsToSelector() & 1) != 0 && [v15 _supportsAssociation])
                {
                  [v3 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v12);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v6);
    }

    v4 = v17;
  }

  return v3;
}

- (void)_associateWithActiveDragInteraction
{
  v2 = self;
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(_UIClickPresentationInteraction *)self _clickDriverTouch];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 gestureRecognizers];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = v2;
    v19 = v3;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if (_isDragInteractionGestureRecognizer(v9))
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = [v9 view];
          v11 = [v10 interactions];

          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v20 + 1) + 8 * v15);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              if (v13 == ++v15)
              {
                v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
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

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
    v17 = 0;
LABEL_20:
    v2 = v18;
    v3 = v19;
  }

  else
  {
    v17 = 0;
  }

  [(_UIClickPresentationInteraction *)v2 setAssociatedDragInteraction:v17];
}

- (void)_attemptDragLiftAtLocation:(CGPoint)a3 useDefaultLiftAnimation:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(_UIClickPresentationInteraction *)self _clickDragDriver];
  if ([v8 canBeginLiftAtLocation:{x, y}])
  {
    v9 = 0.0;
    if (self->_unableToClick)
    {
      [v8 liftDelay];
      v11 = v10;
      v12 = [(_UIClickPresentationInteraction *)self activeDriver];
      [v12 touchDuration];
      v9 = v11 - v13;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86___UIClickPresentationInteraction__attemptDragLiftAtLocation_useDefaultLiftAnimation___block_invoke;
    v14[3] = &unk_1E70F3C60;
    v15 = v8;
    v16 = self;
    [v15 beginLiftAtLocation:v4 useDefaultLiftAnimation:v14 delay:x completion:{y, v9}];
  }
}

- (BOOL)beginDragIfPossibleWithTouch:(id)a3
{
  v4 = a3;
  [(_UIRelationshipGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships _fail];
  if (!v4)
  {
    v5 = [(_UIClickPresentationInteraction *)self _clickDriverTouch];
    if (!v5)
    {
      LOBYTE(v7) = 0;
      return v7;
    }

    v4 = v5;
  }

  v6 = [(_UIClickPresentationInteraction *)self _clickDragDriver];
  if (([v6 isLifted] & 1) == 0)
  {
    [(_UIClickPresentationInteraction *)self locationInView:0];
    [(_UIClickPresentationInteraction *)self _attemptDragLiftAtLocation:0 useDefaultLiftAnimation:?];
  }

  v7 = [v6 isLifted];
  if (v7)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__161;
    v17[4] = __Block_byref_object_dispose__161;
    v18 = [MEMORY[0x1E695DF70] array];
    objc_initWeak(&location, self);
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v4];
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
    [v6 beginDragWithTouches:v8 itemIterator:v14 beginningSessionHandler:v13];

    if (self->_shouldAllowFeedback)
    {
      v9 = [(_UIClickPresentationInteraction *)self feedbackGenerator];
      [(_UIClickPresentationInteraction *)self locationInView:0];
      [v9 draggedAtLocation:?];
    }

    if (self->_unableToClick)
    {
      v10 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
      [v10 _succeed];

      v11 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
      [v11 _succeed];
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    _Block_object_dispose(v17, 8);
  }

  return v7;
}

- (void)_endInteractionEffectIfNeeded
{
  if (a1)
  {
    v2 = [a1 _activeEffect];
    [v2 end];

    v3 = a1[8];
    a1[8] = 0;
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

- (void)_setDelegate:(id)a3
{
  obj = a3;
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
    v6 = [(_UIClickPresentationInteraction *)self delegate];
    self->_delegateImplements.secondaryPreviews = objc_opt_respondsToSelector() & 1;

    v7 = [(_UIClickPresentationInteraction *)self delegate];
    self->_delegateImplements.shouldMaintainKeyboardAssertion = objc_opt_respondsToSelector() & 1;

    v8 = objc_loadWeakRetained(&self->_delegate);
    v5 = obj;
    if (v8)
    {
      self->_currentState = 1;
    }
  }
}

- (void)_cancelWithReason:(unint64_t)a3 alongsideActions:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (self->_currentState > 3 || ![(_UIClickPresentationInteraction *)self _supportsRapidRestart])
  {
    v10[0] = self;
    v10[1] = 0;
    v10[2] = a3;
    v11 = 0;
    v12 = _Block_copy(v8);
    v13 = _Block_copy(v9);
    [(_UIClickPresentationInteraction *)self _endInteractionWithContext:v10];
  }
}

- (void)_endInteractionWithContext:(const InteractionEndingContext *)a3
{
  currentState = self->_currentState;
  if (currentState < 2)
  {
    v6 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];
    [v6 _fail];

    [(_UIRelationshipGestureRecognizer *)self->_gestureRecognizerForBeginningDragRelationships _fail];
    self->_unableToClick = 0;
  }

  else
  {

    handleEvent(stateMachineSpec_3, currentState, 3, a3, &self->_currentState);
  }
}

- (void)_prepareInteractionEffect
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = [(_UIClickPresentationInteraction *)self view];
  [(_UIClickPresentationInteraction *)self locationInView:v3];
  v5 = v4;
  v7 = v6;

  if (!self->_delegateImplements.previewForHighlightingAtLocation || (-[_UIClickPresentationInteraction delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 clickPresentationInteraction:self previewForHighlightingAtLocation:{v5, v7}], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [UITargetedPreview alloc];
    v11 = [(_UIClickPresentationInteraction *)self view];
    v9 = [(UITargetedPreview *)v10 initWithView:v11];
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
  v19 = [(_UIClickPresentationInteraction *)self view];
  [v18 setView:v19];

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
    v24 = [(_UIClickPresentationInteraction *)self delegate];
    v25 = [v24 _secondaryPreviewsForClickPresentationInteraction:self];
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

- (void)setAssociatedDragInteraction:(id)a3
{
  obj = a3;
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
    v3 = [(_UIClickPresentationInteraction *)self delegate];
    NSClassFromString(&cfstr_Ccuicontentmod.isa);
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      v5 = [(_UIClickPresentationInteraction *)self delegate];
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
    v5 = [(_UIClickPresentationInteraction *)self delegate];
    v3 = [v4 stringWithFormat:@"(delegate: %@)", objc_opt_class()];
  }

  return v3;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v4 = a3;
  v5 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];

  if (v5 == v4)
  {
    if ([(_UIClickPresentationInteraction *)self _isActive])
    {
      [(_UIClickPresentationInteraction *)self _cancelAllDrivers];
    }

    v6 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];
    [v6 _fail];

    gestureRecognizerForBeginningDragRelationships = self->_gestureRecognizerForBeginningDragRelationships;

    [(_UIRelationshipGestureRecognizer *)gestureRecognizerForBeginningDragRelationships _fail];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIClickPresentationInteraction *)self exclusionRelationshipGestureRecognizer];

  if (v8 != v6)
  {
    v9 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];

    if (v9 != v6)
    {
      isKindOfClass = self->_gestureRecognizerForBeginningDragRelationships == v6;
      goto LABEL_11;
    }

LABEL_8:
    isKindOfClass = 1;
    goto LABEL_11;
  }

  if (![v7 _isGestureType:1])
  {
    if (![(_UIClickPresentationInteraction *)self _isControlledByCC])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if ([v7 _isGestureType:3])
  {
    isKindOfClass = 0;
  }

  else
  {
    isKindOfClass = [v7 _prefersToBeExclusiveWithCompetingLongPressGestureRecognizers] ^ 1;
  }

LABEL_11:

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIClickPresentationInteraction *)self failureRelationshipGestureRecognizer];

  if (v8 != v7 || ![v6 _isGestureType:1])
  {
    goto LABEL_6;
  }

  v9 = [(_UIClickPresentationInteraction *)self allDrivers];
  if (![v9 count] || objc_msgSend(v6, "_prefersNotToBePreventedByCompetingLongPressGestureRecognizers"))
  {

LABEL_6:
    goto LABEL_7;
  }

  v12 = [v6 name];
  v13 = [v12 isEqualToString:@"PKSelectionDragGesture"];

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

- (id)_dragInteractionPresentation:(id)a3 previewForCancellingItem:(id)a4 defaultPreview:(id)a5 proposedPreview:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [(_UIClickPresentationInteraction *)self delegate];
  v11 = v10;
  if (v9 && self->_delegateImplements.previewForCancellingDragItem)
  {
    v12 = [v10 _clickPresentationInteraction:self previewForCancellingDragItem:v8];
    v13 = [v9 target];
    v14 = [v12 retargetedPreviewWithTarget:v13];

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
    v15 = v9;
  }

  v16 = v15;

  return v15;
}

- (void)_dragInteractionPresentation:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(_UIClickPresentationInteraction *)self delegate];
  v9 = v8;
  if (self->_delegateImplements.willAnimateDragCancelWithAnimator)
  {
    [v8 _clickPresentationInteraction:self item:v10 willAnimateDragCancelWithAnimator:v7];
  }
}

- (void)_dragInteractionPresentation:(id)a3 sessionDidEnd:(id)a4 withoutBeginning:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95___UIClickPresentationInteraction__dragInteractionPresentation_sessionDidEnd_withoutBeginning___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = v7;
  v8 = v7;
  v9 = _Block_copy(v11);
  v10 = v9;
  if (v5)
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