@interface PLSwipeInteraction
- (BOOL)_shouldContinuePresentingActionButtons;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)_panLocation;
- (PLSwipeInteraction)initWithDelegate:(id)delegate;
- (PLSwipeInteractionDelegate)delegate;
- (UIView)view;
- (UIView)viewToMove;
- (double)_actionButtonTriggerDistanceForView:(id)view;
- (double)_panHorizontalTranslation;
- (double)_panHorizontalVelocity;
- (double)_updateActionRevealStateForTargetPosition:(double)position currentPosition:(double)currentPosition velocity:(double)velocity;
- (id)senderForActionWithIdentifier:(id)identifier;
- (unint64_t)_interfaceEdgeForLayoutLocation:(unint64_t)location;
- (unint64_t)_interfaceEdgeToPresentOnForComparisonValue:(double)value;
- (unint64_t)_interfaceEdgeToPresentOnForInitialPanTranslation:(double)translation andInitialPanVelocity:(double)velocity;
- (unint64_t)_layoutLocationForInterfaceEdge:(unint64_t)edge;
- (void)_actuateFeedbackForDefaultActionLockedIfNecessary;
- (void)_actuateFeedbackForDefaultActionUnlockedIfNecessary;
- (void)_addActionButtonViewsAtLayoutLocation:(unint64_t)location interfaceEdge:(unint64_t)edge;
- (void)_addActionButtonsAndRevealAnimated:(BOOL)animated fastAnimation:(BOOL)animation layoutLocation:(unint64_t)location completion:(id)completion;
- (void)_handlePanGesture:(id)gesture;
- (void)_hideAnimated:(BOOL)animated fastAnimation:(BOOL)animation velocity:(double)velocity completion:(id)completion;
- (void)_performSwipeHintingForLayoutLocation:(unint64_t)location;
- (void)_removeActionButtons;
- (void)_revealToPosition:(double)position animated:(BOOL)animated fastAnimation:(BOOL)animation velocity:(double)velocity completion:(id)completion;
- (void)_setViewPosition:(double)position withVelocity:(double)velocity usingNonInteractiveSpring:(BOOL)spring animated:(BOOL)animated completion:(id)completion;
- (void)_setViewPositionHelper:(double)helper withVelocity:(double)velocity usingNonInteractiveSpring:(BOOL)spring animated:(BOOL)animated completion:(id)completion;
- (void)_setupContentOffsetFloatAnimatableProperty;
- (void)_updateActionButtonRevealPercentageForTargetPosition:(double)position;
- (void)_updatePosition:(double)position;
- (void)_updateRevealPercentage:(double)percentage;
- (void)_updateTargetPosition:(double)position;
- (void)didMoveToView:(id)view;
- (void)hideActionsAnimated:(BOOL)animated fastAnimation:(BOOL)animation completion:(id)completion;
- (void)revealActionsForLayoutLocation:(unint64_t)location completion:(id)completion;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setPerformingSwipeHinting:(BOOL)hinting;
- (void)willMoveToView:(id)view;
@end

@implementation PLSwipeInteraction

- (PLSwipeInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = PLSwipeInteraction;
  v5 = [(PLSwipeInteraction *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_animationCount = 0;
    v7 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v6 action:sel__handlePanGesture_];
    panGestureRecognizer = v6->_panGestureRecognizer;
    v6->_panGestureRecognizer = v7;

    [(UIPanGestureRecognizer *)v6->_panGestureRecognizer _setCanPanVertically:0];
    [(UIPanGestureRecognizer *)v6->_panGestureRecognizer setDelegate:v6];
    [(UIPanGestureRecognizer *)v6->_panGestureRecognizer _setAllowedScrollTypesMask:2];
    [(PLSwipeInteraction *)v6 _setupContentOffsetFloatAnimatableProperty];
  }

  return v6;
}

- (void)revealActionsForLayoutLocation:(unint64_t)location completion:(id)completion
{
  completionCopy = completion;
  [(PLSwipeInteraction *)self setPerformingSwipeHinting:0];
  actionButtonsPresentingView = self->_actionButtonsPresentingView;
  if (actionButtonsPresentingView)
  {
    if ([(PLActionButtonsPresentingView *)actionButtonsPresentingView layoutLocation]== location)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __64__PLSwipeInteraction_revealActionsForLayoutLocation_completion___block_invoke;
      v8[3] = &unk_278425530;
      v8[4] = self;
      locationCopy = location;
      v9 = completionCopy;
      [(PLSwipeInteraction *)self hideActionsAnimated:1 fastAnimation:1 completion:v8];
    }
  }

  else
  {
    [(PLSwipeInteraction *)self _addActionButtonsAndRevealAnimated:1 fastAnimation:1 layoutLocation:location completion:completionCopy];
  }
}

- (void)hideActionsAnimated:(BOOL)animated fastAnimation:(BOOL)animation completion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  completionCopy = completion;
  [(PLSwipeInteraction *)self setPerformingSwipeHinting:0];
  viewToMove = [(PLSwipeInteraction *)self viewToMove];
  [viewToMove frame];
  v10 = v9;

  if (self->_actionButtonsPresentingView || v10 != 0.0)
  {
    [(UIPanGestureRecognizer *)self->_panGestureRecognizer setState:4];
    [(PLSwipeInteraction *)self _hideAnimated:animatedCopy fastAnimation:animationCopy velocity:completionCopy completion:0.0];
  }
}

- (id)senderForActionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  actionButtonsView = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
  v6 = actionButtonsView;
  if (actionButtonsView)
  {
    v7 = [actionButtonsView senderForActionWithIdentifier:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setMaterialGroupNameBase:(id)base
{
  baseCopy = base;
  if (![(NSString *)self->_materialGroupNameBase isEqualToString:?])
  {
    objc_storeStrong(&self->_materialGroupNameBase, base);
    actionButtonsView = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
    v6 = actionButtonsView;
    if (actionButtonsView)
    {
      [actionButtonsView setMaterialGroupNameBase:baseCopy];
    }
  }
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = WeakRetained;
  if (WeakRetained && WeakRetained != viewCopy)
  {
    [WeakRetained removeGestureRecognizer:self->_panGestureRecognizer];
    defaultActionFeedbackGenerator = self->_defaultActionFeedbackGenerator;
    self->_defaultActionFeedbackGenerator = 0;

    objc_storeWeak(&self->_viewToMove, 0);
    [(PLSwipeInteraction *)self _removeActionButtons];
    v5 = WeakRetained;
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  if (viewCopy)
  {
    [viewCopy addGestureRecognizer:self->_panGestureRecognizer];
    v4 = [objc_alloc(MEMORY[0x277D76288]) initWithStyle:1 view:viewCopy];
    defaultActionFeedbackGenerator = self->_defaultActionFeedbackGenerator;
    self->_defaultActionFeedbackGenerator = v4;
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v27 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  if ([(PLSwipeInteraction *)self _shouldContinuePresentingActionButtons])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    panGestureRecognizer = self->_panGestureRecognizer;
    if (WeakRetained && panGestureRecognizer == beginCopy)
    {
      if (self->_actionButtonsPresentingView)
      {
        v7 = 1;
LABEL_11:

        goto LABEL_12;
      }

      [(PLSwipeInteraction *)self _panHorizontalTranslation];
      v15 = v14;
      [(PLSwipeInteraction *)self _panHorizontalVelocity];
      v17 = [(PLSwipeInteraction *)self _interfaceEdgeToPresentOnForInitialPanTranslation:v15 andInitialPanVelocity:v16];
      if (v17)
      {
        v18 = [(PLSwipeInteraction *)self _layoutLocationForInterfaceEdge:v17];
        delegate = [(PLSwipeInteraction *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v7 = [delegate swipeInteraction:self shouldRevealActionsFromLayoutLocation:v18];
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_11;
      }

      v20 = PLLogInteraction;
      if (os_log_type_enabled(PLLogInteraction, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543362;
        selfCopy2 = self;
        v10 = "%{public}@: Denying pan gesture. Pan gesture translation and velocity are both 0. Cannot infer edge to reveal action buttons on.";
        v11 = v20;
        v12 = 12;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = PLLogInteraction;
      if (os_log_type_enabled(PLLogInteraction, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_actionButtonsPresentingView != 0;
        v21 = 138543874;
        selfCopy2 = self;
        v23 = 1026;
        v24 = panGestureRecognizer == beginCopy;
        v25 = 1026;
        v26 = v9;
        v10 = "%{public}@: Denying pan gesture. recognizerMatches: %{public}d actionsRevealed: %{public}d";
        v11 = v8;
        v12 = 24;
LABEL_9:
        _os_log_impl(&dword_21FDE2000, v11, OS_LOG_TYPE_DEFAULT, v10, &v21, v12);
      }
    }

    v7 = 0;
    goto LABEL_11;
  }

  [(PLSwipeInteraction *)self hideActionsAnimated:1 fastAnimation:1 completion:0];
  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)_shouldContinuePresentingActionButtons
{
  delegate = [(PLSwipeInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate shouldContinuePresentingActionButtonsForSwipeInteraction:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)_interfaceEdgeToPresentOnForInitialPanTranslation:(double)translation andInitialPanVelocity:(double)velocity
{
  if (translation == 0.0)
  {
    translation = velocity;
  }

  return [(PLSwipeInteraction *)self _interfaceEdgeToPresentOnForComparisonValue:translation];
}

- (unint64_t)_interfaceEdgeToPresentOnForComparisonValue:(double)value
{
  v3 = 2;
  if (value > 0.0)
  {
    v3 = 1;
  }

  if (value == 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_layoutLocationForInterfaceEdge:(unint64_t)edge
{
  if (!edge)
  {
    [(PLSwipeInteraction *)a2 _layoutLocationForInterfaceEdge:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  _shouldReverseLayoutDirection = [WeakRetained _shouldReverseLayoutDirection];

  v7 = 1;
  if (_shouldReverseLayoutDirection)
  {
    v7 = 2;
  }

  return v7 != edge;
}

- (unint64_t)_interfaceEdgeForLayoutLocation:(unint64_t)location
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  _shouldReverseLayoutDirection = [WeakRetained _shouldReverseLayoutDirection];

  if (location)
  {
    v6 = 1;
  }

  else
  {
    v6 = _shouldReverseLayoutDirection;
  }

  v7 = v6 == 0;
  v8 = 1;
  if (!v7)
  {
    v8 = 2;
  }

  if (((location == 1) & _shouldReverseLayoutDirection) != 0)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

- (double)_panHorizontalTranslation
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = 0.0;
  if (WeakRetained)
  {
    panGestureRecognizer = self->_panGestureRecognizer;
    if (panGestureRecognizer)
    {
      [(UIPanGestureRecognizer *)panGestureRecognizer translationInView:WeakRetained];
      v4 = v6;
    }
  }

  return v4;
}

- (double)_panHorizontalVelocity
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = 0.0;
  if (WeakRetained)
  {
    panGestureRecognizer = self->_panGestureRecognizer;
    if (panGestureRecognizer)
    {
      [(UIPanGestureRecognizer *)panGestureRecognizer velocityInView:WeakRetained];
      v4 = v6;
    }
  }

  return v4;
}

- (CGPoint)_panLocation
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  if (WeakRetained)
  {
    panGestureRecognizer = self->_panGestureRecognizer;
    if (panGestureRecognizer)
    {
      [(UIPanGestureRecognizer *)panGestureRecognizer locationInView:WeakRetained];
      v4 = v7;
      v5 = v8;
    }
  }

  v9 = v4;
  v10 = v5;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_handlePanGesture:(id)gesture
{
  v42 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  [(PLSwipeInteraction *)self setPerformingSwipeHinting:0];
  delegate = [(PLSwipeInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate swipeInteractionDidSignificantUserInteraction:self];
  }

  if ([(PLSwipeInteraction *)self _shouldContinuePresentingActionButtons])
  {
    [(PLSwipeInteraction *)self _panHorizontalTranslation];
    v7 = v6;
    [(PLSwipeInteraction *)self _panHorizontalVelocity];
    v9 = v8;
    state = [gestureCopy state];
    switch(state)
    {
      case 3:
        [(PLSwipeInteraction *)self _updateActionRevealStateForTargetPosition:v7 + self->_panGestureStartingPosition + v9 * 0.05 currentPosition:v7 + self->_panGestureStartingPosition velocity:v9];
        if (v18 == 0.0)
        {
          [(PLSwipeInteraction *)self _hideAnimated:1 fastAnimation:0 velocity:0 completion:v9];
        }

        else
        {
          v30 = v18;
          objc_initWeak(location, self);
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __40__PLSwipeInteraction__handlePanGesture___block_invoke;
          v35[3] = &unk_2784251F0;
          objc_copyWeak(&v36, location);
          [(PLSwipeInteraction *)self _revealToPosition:1 animated:0 fastAnimation:v35 velocity:v30 completion:v9];
          objc_destroyWeak(&v36);
          objc_destroyWeak(location);
        }

        break;
      case 2:
        v14 = v7 + self->_panGestureStartingPosition;
        v15 = [(PLSwipeInteraction *)self _interfaceEdgeToPresentOnForAbsoluteTranslation:v14];
        if (v15)
        {
          v16 = v15;
          v17 = [(PLSwipeInteraction *)self _layoutLocationForInterfaceEdge:v15];
          if ([(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView layoutLocation]!= v17 || [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView interfaceEdge]!= v16)
          {
            [(PLSwipeInteraction *)self _removeActionButtons];
            [(PLSwipeInteraction *)self _addActionButtonViewsAtLayoutLocation:v17 interfaceEdge:v16];
          }
        }

        [(PLSwipeInteraction *)self _setViewPosition:0 withVelocity:0 usingNonInteractiveSpring:0 animated:v14 completion:0.0];
        break;
      case 1:
        if (_UISolariumEnabled() && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v11 = ([delegate buttonsGlassBackgroundStateForSwipeInteraction:self] - 1) < 2;
          actionButtonsView = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
          v13 = v11 ^ [actionButtonsView hasGlassBackground];
        }

        else
        {
          v13 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          [delegate buttonsGlassLuminanceForSwipeInteraction:self];
          v20 = v19;
          actionButtonsView2 = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
          [actionButtonsView2 glassLuminance];
          v13 = v22 != v20;
        }

        if (objc_opt_respondsToSelector())
        {
          v23 = [delegate buttonCustomBackgroundColorForSwipeInteraction:self];
          actionButtonsView3 = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
          customBackgroundColor = [actionButtonsView3 customBackgroundColor];
          v26 = customBackgroundColor != v23;
        }

        else
        {
          v26 = 0;
        }

        actionButtonsPresentingView = self->_actionButtonsPresentingView;
        if (actionButtonsPresentingView)
        {
          actionButtonsView4 = [(PLActionButtonsPresentingView *)actionButtonsPresentingView actionButtonsView];

          if (actionButtonsView4 && ((v13 | v26) & 1) != 0)
          {
            [(PLSwipeInteraction *)self _removeActionButtons];
          }

          if (self->_actionButtonsPresentingView)
          {
            goto LABEL_36;
          }
        }

        v29 = [(PLSwipeInteraction *)self _interfaceEdgeToPresentOnForInitialPanTranslation:v7 andInitialPanVelocity:v9];
        if (v29)
        {
          [(PLSwipeInteraction *)self _addActionButtonViewsAtLayoutLocation:[(PLSwipeInteraction *)self _layoutLocationForInterfaceEdge:v29] interfaceEdge:v29];
        }

        else
        {
          v31 = PLLogInteraction;
          if (os_log_type_enabled(PLLogInteraction, OS_LOG_TYPE_DEFAULT))
          {
            *location = 138543874;
            *&location[4] = self;
            v38 = 2048;
            v39 = v9;
            v40 = 2048;
            v41 = v7;
            _os_log_impl(&dword_21FDE2000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot infer which side to reveal actions. Gesture translation: %f velocity: %f", location, 0x20u);
          }
        }

        if (self->_actionButtonsPresentingView)
        {
LABEL_36:
          if (objc_opt_respondsToSelector())
          {
            [delegate swipeInteractionDidBeginRevealingActions:self];
          }
        }

        WeakRetained = objc_loadWeakRetained(&self->_viewToMove);
        [WeakRetained frame];
        v34 = v33;

        self->_panGestureStartingPosition = v34;
        [(PLSwipeInteraction *)self _setViewPosition:0 withVelocity:0 usingNonInteractiveSpring:0 animated:v7 + v34 completion:0.0];
        break;
    }
  }

  else
  {
    [(PLSwipeInteraction *)self hideActionsAnimated:1 fastAnimation:1 completion:0];
  }
}

void __40__PLSwipeInteraction__handlePanGesture___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained _shouldContinuePresentingActionButtons] & 1) == 0)
  {
    [WeakRetained hideActionsAnimated:1 fastAnimation:1 completion:0];
  }
}

- (double)_updateActionRevealStateForTargetPosition:(double)position currentPosition:(double)currentPosition velocity:(double)velocity
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToMove);
  interfaceEdge = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView interfaceEdge];
  actionButtonsPresentingView = self->_actionButtonsPresentingView;
  Width = 0.0;
  if (actionButtonsPresentingView)
  {
    v13 = fabs(velocity);
    v14 = interfaceEdge == 2 ? velocity > 0.0 : velocity < 0.0;
    interfaceEdge2 = [(PLActionButtonsPresentingView *)actionButtonsPresentingView interfaceEdge];
    v16 = v13 > 100.0 && v14;
    v17 = fabs(position) < 45.0 || interfaceEdge2 == 0;
    if (!v17 && !v16)
    {
      if (![WeakRetained _shouldReverseLayoutDirection])
      {
        currentPosition = position;
      }

      actionButtonsView = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
      [(PLSwipeInteraction *)self _actionButtonTriggerDistanceForView:actionButtonsView];
      v20 = v19;
      defaultAction = [actionButtonsView defaultAction];

      if (defaultAction && fabs(currentPosition) > v20)
      {
        [WeakRetained bounds];
        Width = CGRectGetWidth(v26);
        interfaceEdge3 = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView interfaceEdge];
        v23 = -(Width + 8.0);
      }

      else
      {
        [actionButtonsView defaultWidth];
        Width = v24 + 8.0;
        interfaceEdge3 = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView interfaceEdge];
        v23 = -Width;
      }

      if (interfaceEdge3 == 2)
      {
        Width = v23;
      }
    }
  }

  return Width;
}

- (void)_actuateFeedbackForDefaultActionLockedIfNecessary
{
  if (![(PLSwipeInteraction *)self didPlayHaptic])
  {
    [(PLSwipeInteraction *)self setDidPlayHaptic:1];
    defaultActionFeedbackGenerator = self->_defaultActionFeedbackGenerator;
    v4 = *MEMORY[0x277D77588];
    [(PLSwipeInteraction *)self _panLocation];

    [(_UIStatesFeedbackGenerator *)defaultActionFeedbackGenerator transitionToState:v4 ended:1 atLocation:?];
  }
}

- (void)_actuateFeedbackForDefaultActionUnlockedIfNecessary
{
  if ([(PLSwipeInteraction *)self didPlayHaptic])
  {
    [(PLSwipeInteraction *)self setDidPlayHaptic:0];
    defaultActionFeedbackGenerator = self->_defaultActionFeedbackGenerator;
    v4 = *MEMORY[0x277D77590];
    [(PLSwipeInteraction *)self _panLocation];

    [(_UIStatesFeedbackGenerator *)defaultActionFeedbackGenerator transitionToState:v4 ended:1 atLocation:?];
  }
}

- (void)_addActionButtonsAndRevealAnimated:(BOOL)animated fastAnimation:(BOOL)animation layoutLocation:(unint64_t)location completion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  completionCopy = completion;
  [(PLSwipeInteraction *)self _addActionButtonViewsAtLayoutLocation:location interfaceEdge:[(PLSwipeInteraction *)self _interfaceEdgeForLayoutLocation:location]];
  actionButtonsView = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
  [actionButtonsView defaultWidth];
  v12 = v11;

  interfaceEdge = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView interfaceEdge];
  v14 = v12 + 8.0;
  if (interfaceEdge == 2)
  {
    v14 = -(v12 + 8.0);
  }

  [(PLSwipeInteraction *)self _revealToPosition:animatedCopy animated:animationCopy fastAnimation:completionCopy velocity:v14 completion:0.0];
}

- (void)_revealToPosition:(double)position animated:(BOOL)animated fastAnimation:(BOOL)animation velocity:(double)velocity completion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  completionCopy = completion;
  delegate = [(PLSwipeInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate swipeInteractionDidBeginRevealingActions:self];
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__PLSwipeInteraction__revealToPosition_animated_fastAnimation_velocity_completion___block_invoke;
  v15[3] = &unk_278425558;
  objc_copyWeak(&v17, &location);
  v14 = completionCopy;
  v16 = v14;
  [(PLSwipeInteraction *)self _setViewPosition:animationCopy withVelocity:animatedCopy usingNonInteractiveSpring:v15 animated:position completion:velocity];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __83__PLSwipeInteraction__revealToPosition_animated_fastAnimation_velocity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 swipeInteractionDidCompleteRevealingActions:v5];
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    WeakRetained = v5;
  }
}

- (void)_hideAnimated:(BOOL)animated fastAnimation:(BOOL)animation velocity:(double)velocity completion:(id)completion
{
  animationCopy = animation;
  animatedCopy = animated;
  completionCopy = completion;
  delegate = [(PLSwipeInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate swipeInteractionDidBeginHidingActions:self];
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__PLSwipeInteraction__hideAnimated_fastAnimation_velocity_completion___block_invoke;
  v13[3] = &unk_278425558;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [(PLSwipeInteraction *)self _setViewPosition:animationCopy withVelocity:animatedCopy usingNonInteractiveSpring:v13 animated:0.0 completion:velocity];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __70__PLSwipeInteraction__hideAnimated_fastAnimation_velocity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 swipeInteractionDidCompleteHidingActions:v5];
    }

    [v5 setViewToMove:0];
    [v5 _removeActionButtons];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    WeakRetained = v5;
  }
}

- (void)_setViewPosition:(double)position withVelocity:(double)velocity usingNonInteractiveSpring:(BOOL)spring animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  springCopy = spring;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__PLSwipeInteraction__setViewPosition_withVelocity_usingNonInteractiveSpring_animated_completion___block_invoke;
  v14[3] = &unk_278425580;
  objc_copyWeak(v16, &location);
  v16[1] = *&position;
  v13 = completionCopy;
  v15 = v13;
  [(PLSwipeInteraction *)self _setViewPositionHelper:springCopy withVelocity:animatedCopy usingNonInteractiveSpring:v14 animated:position completion:velocity];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __98__PLSwipeInteraction__setViewPosition_withVelocity_usingNonInteractiveSpring_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 12);
    v4 = v3;
    if (v3)
    {
      v5 = *(a1 + 48);
      [v3 frame];
      if (v5 != v6)
      {
        [v4 frame];
        [v4 setFrame:*(a1 + 48)];
      }
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }

    WeakRetained = v8;
  }
}

- (void)_setViewPositionHelper:(double)helper withVelocity:(double)velocity usingNonInteractiveSpring:(BOOL)spring animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  springCopy = spring;
  completionCopy = completion;
  animationCompletion = self->_animationCompletion;
  self->_animationCompletion = 0;

  performWithoutRetargetingAnimationCompletion = self->_performWithoutRetargetingAnimationCompletion;
  self->_performWithoutRetargetingAnimationCompletion = 0;

  v15 = self->_targetPositionAnimatableProperty;
  [(UIViewFloatAnimatableProperty *)v15 value];
  if (vabdd_f64(v16, helper) >= 2.22044605e-16)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __104__PLSwipeInteraction__setViewPositionHelper_withVelocity_usingNonInteractiveSpring_animated_completion___block_invoke;
    v30[3] = &unk_2784253A0;
    v31 = v15;
    helperCopy = helper;
    v19 = MEMORY[0x223D70F60](v30);
    v20 = MEMORY[0x223D70F60](completionCopy);
    if (animatedCopy)
    {
      v21 = self->_animationCompletion;
      self->_animationCompletion = v20;

      ++self->_animationCount;
      objc_initWeak(&location, self);
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __104__PLSwipeInteraction__setViewPositionHelper_withVelocity_usingNonInteractiveSpring_animated_completion___block_invoke_2;
      v27 = &unk_2784255A8;
      objc_copyWeak(&v28, &location);
      v22 = MEMORY[0x223D70F60](&v24);
      if (springCopy)
      {
        [MEMORY[0x277D75D18] _animateUsingSpringInteractive:0 animations:v19 completion:{v22, v24, v25, v26, v27}];
      }

      else
      {
        [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v19 interactive:v22 animations:fabs(velocity) * 0.1 + 180.0 completion:{25.0, v24, v25, v26, v27}];
      }

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    else
    {
      v23 = self->_performWithoutRetargetingAnimationCompletion;
      self->_performWithoutRetargetingAnimationCompletion = v20;

      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v19];
    }

    v18 = v31;
LABEL_12:

    goto LABEL_13;
  }

  if (completionCopy)
  {
    if (!self->_animationCount)
    {
      completionCopy[2](completionCopy);
      goto LABEL_13;
    }

    v17 = MEMORY[0x223D70F60](completionCopy);
    v18 = self->_animationCompletion;
    self->_animationCompletion = v17;
    goto LABEL_12;
  }

LABEL_13:
}

void __104__PLSwipeInteraction__setViewPositionHelper_withVelocity_usingNonInteractiveSpring_animated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[8];
    if (v2)
    {
      WeakRetained[8] = v2 - 1;
    }

    v6 = WeakRetained;
    v3 = MEMORY[0x223D70F60](WeakRetained[6]);
    v4 = v6[6];
    v6[6] = 0;

    if (v6[8])
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 0;
    }

    if (!v5)
    {
      v3[2](v3);
    }

    WeakRetained = v6;
  }
}

- (double)_actionButtonTriggerDistanceForView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_viewToMove);
  [WeakRetained bounds];
  Width = CGRectGetWidth(v10);

  [viewCopy defaultWidth];
  v8 = v7;

  return fmax(Width * 0.5, (v8 + 8.0) * 1.1);
}

- (void)_setupContentOffsetFloatAnimatableProperty
{
  v10[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  targetPositionAnimatableProperty = self->_targetPositionAnimatableProperty;
  self->_targetPositionAnimatableProperty = v3;

  [(UIViewFloatAnimatableProperty *)self->_targetPositionAnimatableProperty setValue:0.0];
  v5 = MEMORY[0x277D75D18];
  v10[0] = self->_targetPositionAnimatableProperty;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PLSwipeInteraction__setupContentOffsetFloatAnimatableProperty__block_invoke;
  v7[3] = &unk_2784251F0;
  objc_copyWeak(&v8, &location);
  [v5 _createTransformerWithInputAnimatableProperties:v6 presentationValueChangedCallback:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __64__PLSwipeInteraction__setupContentOffsetFloatAnimatableProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[3];
    if (WeakRetained)
    {
      v4 = v2;
      [WeakRetained presentationValue];
      WeakRetained = [v4 _updateTargetPosition:?];
      v2 = v4;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (void)_updateTargetPosition:(double)position
{
  [(PLSwipeInteraction *)self _updatePosition:?];

  [(PLSwipeInteraction *)self _updateActionButtonRevealPercentageForTargetPosition:position];
}

- (void)_updatePosition:(double)position
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToMove);
  [WeakRetained frame];
  [WeakRetained setFrame:position];
  delegate = [(PLSwipeInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate swipeInteraction:self didMoveToNewXPosition:position];
  }

  v6 = MEMORY[0x223D70F60](self->_performWithoutRetargetingAnimationCompletion);
  performWithoutRetargetingAnimationCompletion = self->_performWithoutRetargetingAnimationCompletion;
  self->_performWithoutRetargetingAnimationCompletion = 0;

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)_updateActionButtonRevealPercentageForTargetPosition:(double)position
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToMove);
  [WeakRetained bounds];
  Width = CGRectGetWidth(v16);
  actionButtonsView = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
  v7 = 8.0;
  if (_UISolariumEnabled())
  {
    if ([actionButtonsView hasGlassBackground])
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 8.0;
    }
  }

  v8 = fabs(position);
  if (v8 <= v7)
  {
    [(PLSwipeInteraction *)self _updateRevealPercentage:0.0];
    [actionButtonsView setHighlightDefaultActionButton:0];
  }

  else
  {
    if (actionButtonsView)
    {
      [actionButtonsView defaultWidth];
      if (v9 > 0.0)
      {
        [actionButtonsView defaultWidth];
        [(PLSwipeInteraction *)self _updateRevealPercentage:(v8 - v7) / v10];
      }
    }

    [(PLSwipeInteraction *)self _actionButtonTriggerDistanceForView:actionButtonsView];
    v12 = v11;
    [actionButtonsView setHighlightDefaultActionButton:v8 > v11];
    if (v8 > v12 && [actionButtonsView actionButtonCount] >= 2)
    {
      [(PLSwipeInteraction *)self _actuateFeedbackForDefaultActionLockedIfNecessary];
    }

    if ([(UIPanGestureRecognizer *)self->_panGestureRecognizer state]!= 2 && v8 > Width * 0.98 && ![(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView defaultActionTriggered])
    {
      defaultAction = [actionButtonsView defaultAction];
      [defaultAction performWithSender:self target:0];
      [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView setDefaultActionTriggered:1];
    }
  }
}

- (void)_updateRevealPercentage:(double)percentage
{
  actionButtonsPresentingView = self->_actionButtonsPresentingView;
  if (percentage > 0.0)
  {
    actionButtonsView = [(PLActionButtonsPresentingView *)actionButtonsPresentingView actionButtonsView];
    [actionButtonsView defaultWidth];
    v7 = v6;
    if (![actionButtonsView hasGlassBackground])
    {
      if (v7 * percentage >= 30.0)
      {
        v17 = v7 * percentage;
      }

      else
      {
        v17 = 30.0;
      }

      [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView setAlpha:fmin(percentage, 1.0) * ((v17 + -30.0) / (v7 * 0.5 + -30.0))];
LABEL_34:
      WeakRetained = objc_loadWeakRetained(&self->_viewToMove);
      [WeakRetained frame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView frame];
      interfaceEdge = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView interfaceEdge];
      v47 = 0.0;
      if (interfaceEdge == 2)
      {
        v74.origin.x = v39;
        v74.origin.y = v41;
        v74.size.width = v43;
        v74.size.height = v45;
        v47 = CGRectGetWidth(v74) - v17;
      }

      actionButtonsView2 = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView actionButtonsView];
      isVerticallyStacked = [actionButtonsView2 isVerticallyStacked];

      if (isVerticallyStacked)
      {
        v50 = MEMORY[0x277D76620];
        preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
        if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
        {
          v52 = 0.0;
        }

        else
        {
          v52 = 0.2;
        }

        v75.origin.x = v39;
        v75.origin.y = v41;
        v75.size.width = v43;
        v75.size.height = v45;
        v53 = v52 * CGRectGetHeight(v75);
        v76.origin.x = v39;
        v76.origin.y = v41;
        v76.size.width = v43;
        v76.size.height = v45;
        v54 = v53 + CGRectGetMinY(v76);

        v77.origin.x = v39;
        v77.origin.y = v41;
        v77.size.width = v43;
        v77.size.height = v45;
        Height = CGRectGetHeight(v77);
        preferredContentSizeCategory2 = [*v50 preferredContentSizeCategory];
        IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);
        v58 = 0.6;
        if (IsAccessibilityCategory)
        {
          v58 = 1.0;
        }

        v59 = Height * v58;
      }

      else
      {
        v78.origin.x = v39;
        v78.origin.y = v41;
        v78.size.width = v43;
        v78.size.height = v45;
        v54 = CGRectGetMinY(v78) + 0.0;
        v79.origin.x = v39;
        v79.origin.y = v41;
        v79.size.width = v43;
        v79.size.height = v45;
        v59 = CGRectGetHeight(v79);
      }

      [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView setFrame:v47, v54, v17, v59];
      [actionButtonsView setStretchedWidth:v17];
      [actionButtonsView setNeedsLayout];
      [actionButtonsView sizeToFit];
      [actionButtonsView frame];
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView bounds];
      MaxX = CGRectGetMaxX(v80);
      v81.origin.x = v61;
      v81.origin.y = v63;
      v81.size.width = v65;
      v81.size.height = v67;
      v69 = MaxX - CGRectGetWidth(v81);
      if (interfaceEdge == 2)
      {
        v70 = v69;
      }

      else
      {
        v70 = *MEMORY[0x277CBF348];
      }

      if (interfaceEdge == 2)
      {
        v71 = 0.0;
      }

      else
      {
        v71 = *(MEMORY[0x277CBF348] + 8);
      }

      v82.origin.x = v70;
      v82.origin.y = v71;
      v82.size.width = v65;
      v82.size.height = v67;
      [actionButtonsView setFrame:{v70, v71, CGRectGetWidth(v82), v59}];
      [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView setHidden:0];

      return;
    }

    buttonsStackView = [actionButtonsView buttonsStackView];
    arrangedSubviews = [buttonsStackView arrangedSubviews];
    [buttonsStackView spacing];
    v11 = v10;
    v12 = -v10;
    v13 = fmin(percentage, 1.0) * v7;
    v14 = objc_loadWeakRetained(&self->_view);
    _shouldReverseLayoutDirection = [v14 _shouldReverseLayoutDirection];

    interfaceEdge2 = [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView interfaceEdge];
    if (_shouldReverseLayoutDirection)
    {
      if (interfaceEdge2 != 1)
      {
        goto LABEL_15;
      }
    }

    else if (interfaceEdge2 != 2)
    {
LABEL_15:
      v20 = -(v11 - percentage * v7);
      v21 = [arrangedSubviews count];
      v22 = (v7 + v12 * (v21 - 1)) / v21;
      v23 = v13 / (v11 + v22);
      v24 = vcvtms_u32_f32(v23);
      if (v21 - 1 >= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21 - 1;
      }

      if (v21)
      {
        v26 = v21;
        v27 = 0;
        v28 = (v13 - (v11 + v22) * v25) / v22;
        v29 = 0.5;
        if (v28 >= 0.5)
        {
          v29 = v28;
        }

        v30 = (v29 + -0.5) / 0.3 + 0.0;
        if (v28 <= 0.8)
        {
          v31 = v30;
        }

        else
        {
          v31 = 1.0;
        }

        do
        {
          v32 = [arrangedSubviews objectAtIndexedSubscript:v27];
          v33 = v32;
          v34 = 0.0;
          if (v27 <= v25)
          {
            v34 = 1.0;
            if (v25 == v27 && percentage < 1.0)
            {
              v36 = v31;
            }

            else
            {
              v36 = 1.0;
            }

            [v32 setTitleAlpha:v36];
          }

          [v33 setAlpha:v34];

          ++v27;
        }

        while (v26 != v27);
      }

      v17 = fmax(v20, 0.0);
      [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView setAlpha:1.0];

      goto LABEL_34;
    }

    reverseObjectEnumerator = [arrangedSubviews reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    arrangedSubviews = allObjects;
    goto LABEL_15;
  }

  [(PLActionButtonsPresentingView *)actionButtonsPresentingView setHidden:1];
}

- (void)_addActionButtonViewsAtLayoutLocation:(unint64_t)location interfaceEdge:(unint64_t)edge
{
  v39 = *MEMORY[0x277D85DE8];
  delegate = [(PLSwipeInteraction *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![delegate swipeInteraction:self shouldRevealActionsFromLayoutLocation:location])
  {
    goto LABEL_26;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [delegate swipeInteraction:self actionsToRevealFromLayoutLocation:location];
    v9 = v8;
    if (v8 && [v8 count])
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  if (os_log_type_enabled(PLLogInteraction, OS_LOG_TYPE_DEBUG))
  {
    [PLSwipeInteraction _addActionButtonViewsAtLayoutLocation:interfaceEdge:];
  }

LABEL_10:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  v12 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v14 += [*(*(&v34 + 1) + 8 * i) pl_isDefaultAction];
      }

      v13 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);

    if (v14 < 2)
    {
      goto LABEL_22;
    }

    if (os_log_type_enabled(PLLogInteraction, OS_LOG_TYPE_DEBUG))
    {
      [PLSwipeInteraction _addActionButtonViewsAtLayoutLocation:interfaceEdge:];
    }

    v12 = 0;
  }

  v10 = v12;
LABEL_22:
  if ([v10 count] < 5)
  {
    goto LABEL_27;
  }

  if (os_log_type_enabled(PLLogInteraction, OS_LOG_TYPE_DEBUG))
  {
    [PLSwipeInteraction _addActionButtonViewsAtLayoutLocation:interfaceEdge:];
  }

LABEL_26:
  v10 = 0;
LABEL_27:
  if (![v10 count])
  {
LABEL_36:
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v18 = 0;
LABEL_37:

    goto LABEL_38;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate viewToMoveForSwipeInteraction:self], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (os_log_type_enabled(PLLogInteraction, OS_LOG_TYPE_DEBUG))
    {
      [PLSwipeInteraction _addActionButtonViewsAtLayoutLocation:interfaceEdge:];
    }

    goto LABEL_36;
  }

  v18 = v17;
  v19 = objc_loadWeakRetained(&self->_view);
  if (v19)
  {
    WeakRetained = v19;
    objc_storeWeak(&self->_viewToMove, v18);
    if ([v10 count] >= 2 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v32 = [delegate shouldVerticallyStackButtonsForSwipeInteraction:self];
    }

    else
    {
      v32 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate buttonsCornerRadiusForSwipeInteraction:self];
    }

    edgeCopy = edge;
    if (_UISolariumEnabled())
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [delegate buttonsGlassBackgroundStateForSwipeInteraction:self];
        v22 = (v21 - 1) < 2;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate buttonsGlassBackgroundSmoothnessForSwipeInteraction:self];
      }

      if (objc_opt_respondsToSelector())
      {
        v23 = [delegate buttonsGlassBackgroundIdForSwipeInteraction:self];
      }

      else
      {
        v23 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate buttonsGlassLuminanceForSwipeInteraction:self];
      }
    }

    else
    {
      v23 = 0;
      v21 = 0;
      v22 = 0;
    }

    v24 = [PLPlatterActionButtonsView alloc];
    [WeakRetained bounds];
    v25 = [PLPlatterActionButtonsView initWithFrame:v24 actions:"initWithFrame:actions:cornerRadius:shouldVerticallyStack:shouldGetGlassBackground:glassState:glassSmoothness:glassId:glassLuminance:" cornerRadius:v10 shouldVerticallyStack:v32 shouldGetGlassBackground:v22 glassState:v21 glassSmoothness:v23 glassId:? glassLuminance:?];
    if (!v22)
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = [delegate buttonCustomBackgroundColorForSwipeInteraction:self];
        [(PLPlatterActionButtonsView *)v25 setCustomBackgroundColor:v26];
        [(PLPlatterActionButtonsView *)v25 setBackgroundMaterialRecipe:0];
        [(PLPlatterActionButtonsView *)v25 setMaterialGroupNameBase:0];
      }

      else if (objc_opt_respondsToSelector())
      {
        v27 = [delegate buttonsRecipeForSwipeInteraction:self];
        [(PLPlatterActionButtonsView *)v25 setCustomBackgroundColor:0];
        [(PLPlatterActionButtonsView *)v25 setBackgroundMaterialRecipe:v27];
        [(PLPlatterActionButtonsView *)v25 setMaterialGroupNameBase:self->_materialGroupNameBase];
      }

      if (objc_opt_respondsToSelector())
      {
        v28 = [delegate buttonsTintColorForSwipeInteraction:self];
        [(PLPlatterActionButtonsView *)v25 setBackgroundTintColor:v28];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v29 = [delegate buttonsTextColorForSwipeInteraction:self];
      [(PLPlatterActionButtonsView *)v25 setTextColor:v29];
    }

    v30 = [[PLActionButtonsPresentingView alloc] initWithActionButtonsView:v25 interfaceEdge:edgeCopy layoutLocation:location];
    actionButtonsPresentingView = self->_actionButtonsPresentingView;
    self->_actionButtonsPresentingView = v30;

    [WeakRetained addSubview:self->_actionButtonsPresentingView];
    [WeakRetained sendSubviewToBack:self->_actionButtonsPresentingView];

    goto LABEL_37;
  }

LABEL_38:
}

- (void)_removeActionButtons
{
  [(PLActionButtonsPresentingView *)self->_actionButtonsPresentingView removeFromSuperview];
  actionButtonsPresentingView = self->_actionButtonsPresentingView;
  self->_actionButtonsPresentingView = 0;

  [(PLSwipeInteraction *)self setDidPlayHaptic:0];
}

- (void)setPerformingSwipeHinting:(BOOL)hinting
{
  if (self->_performingSwipeHinting != hinting)
  {
    self->_performingSwipeHinting = hinting;
    if (!hinting)
    {
      dispatch_block_cancel(self->_swipeHintingHideAnimationBlock);
      swipeHintingHideAnimationBlock = self->_swipeHintingHideAnimationBlock;
      self->_swipeHintingHideAnimationBlock = 0;
    }
  }
}

- (void)_performSwipeHintingForLayoutLocation:(unint64_t)location
{
  if (self->_actionButtonsPresentingView)
  {

    [(PLSwipeInteraction *)self hideActionsAnimated:1 fastAnimation:0 completion:0];
  }

  else
  {
    [(PLSwipeInteraction *)self setPerformingSwipeHinting:1];
    [(PLSwipeInteraction *)self _addActionButtonsAndRevealAnimated:1 fastAnimation:0 layoutLocation:location completion:0];
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__PLSwipeInteraction__performSwipeHintingForLayoutLocation___block_invoke;
    v8[3] = &unk_2784251F0;
    objc_copyWeak(&v9, &location);
    v5 = dispatch_block_create(0, v8);
    swipeHintingHideAnimationBlock = self->_swipeHintingHideAnimationBlock;
    self->_swipeHintingHideAnimationBlock = v5;

    v7 = dispatch_time(0, 3000000000);
    dispatch_after(v7, MEMORY[0x277D85CD0], self->_swipeHintingHideAnimationBlock);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

uint64_t __60__PLSwipeInteraction__performSwipeHintingForLayoutLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = [WeakRetained isPerformingSwipeHinting];
    v2 = v4;
    if (WeakRetained)
    {
      v4[72] = 0;
      WeakRetained = [v4 hideActionsAnimated:1 fastAnimation:0 completion:0];
      v2 = v4;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIView)viewToMove
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToMove);

  return WeakRetained;
}

- (PLSwipeInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_layoutLocationForInterfaceEdge:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PLSwipeInteraction.m" lineNumber:279 description:@"Must pass a valid PLSwipeInteractionLayoutLocation."];
}

@end