@interface _UIPlatterMenuDynamicsController
- (BOOL)_isPlatterInYLockedPosition;
- (BOOL)isDefaultAnimatorBehavior:(id)a3;
- (BOOL)isSelectingSwipeAction;
- (BOOL)platterPanned;
- (CGPoint)centerForCurrentPlatterPosition;
- (CGPoint)centerForMenuPresentedRelativeToCurrentPlatter;
- (CGPoint)initialTouchPoint;
- (CGPoint)menuCenter;
- (CGPoint)platterCenter;
- (CGVector)currentTranslation;
- (CGVector)currentVelocity;
- (CGVector)modifiedOffsetForPosition:(CGPoint)a3 offset:(CGVector)a4 touchPosition:(CGPoint)a5 axisLock:(unint64_t)a6;
- (UIDynamicItem)platterItem;
- (UIView)containerView;
- (UIView)menuView;
- (UIView)platterView;
- (_UIPlatterMenuDynamicsController)initWithContainerView:(id)a3 platterView:(id)a4 menuView:(id)a5 delegate:(id)a6;
- (_UIPlatterMenuDynamicsControllerDelegate)delegate;
- (_UIPlatterMenuPanningTransformer)panningLockTransformer;
- (int64_t)_stateForPosition:(CGPoint)a3 offset:(CGVector)a4 velocity:(CGVector)a5;
- (void)_activateFeedbackIfNeeded;
- (void)_animateToPlatterDismissedWithDuration:(double)a3 completion:(id)a4;
- (void)_animateToPlatterPresentedWithVelocity:(CGVector)a3;
- (void)_beginInYLockedStatePresented;
- (void)_configureAnimator;
- (void)_configureFeedbackGenerator;
- (void)_deactivateFeedbackIfNeeded;
- (void)_fireConfirmFeedbackIfNeededForInitialSelectionState:(BOOL)a3 finalSelectionState:(BOOL)a4;
- (void)_positionSwipeActionViewsForCurrentPlatterViewPosition;
- (void)_updateSwipeEdgeMultipliersIfNeededForTouchPosition:(CGPoint)a3;
- (void)addBehaviorIfNotPresent:(id)a3;
- (void)beginTransitionWithAnimatorUsingBehaviors:(id)a3 observedItems:(id)a4 stateIfCompleted:(int64_t)a5;
- (void)dealloc;
- (void)didBeginPanningWithPoint:(CGPoint)a3;
- (void)didEndPanningWithPoint:(CGPoint)a3;
- (void)didPanWithPoint:(CGPoint)a3;
- (void)lockIntoYAxis;
- (void)panningTransformer:(id)a3 didBeginPanToTransformedPosition:(CGPoint)a4;
- (void)panningTransformer:(id)a3 didEndPanToTransformedPosition:(CGPoint)a4 offsetFromPrevious:(CGVector)a5 velocity:(CGVector)a6;
- (void)panningTransformer:(id)a3 didPanToTransformedPosition:(CGPoint)a4 offsetFromPrevious:(CGVector)a5 touchPosition:(CGPoint)a6 velocity:(CGVector)a7 didChangeAxis:(BOOL)a8 axisLock:(unint64_t)a9;
- (void)performActionsAndEnterState:(int64_t)a3 velocity:(CGVector)a4 underDirectManipulation:(BOOL)a5;
- (void)resetAnimator;
- (void)resetAnimatorToDefaultBehaviors;
- (void)setLeadingSwipeActionViewSelected:(BOOL)a3;
- (void)setTrailingSwipeActionViewSelected:(BOOL)a3;
- (void)stopObservingBehavior;
- (void)toggleAnimatorDebugState;
@end

@implementation _UIPlatterMenuDynamicsController

- (_UIPlatterMenuDynamicsController)initWithContainerView:(id)a3 platterView:(id)a4 menuView:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _UIPlatterMenuDynamicsController;
  v14 = [(_UIPlatterMenuDynamicsController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v13);
    objc_storeWeak(&v15->_containerView, v10);
    objc_storeWeak(&v15->_platterView, v11);
    objc_storeWeak(&v15->_menuView, v12);
    v15->_state = 0;
    [(_UIPlatterMenuDynamicsController *)v15 _configureAnimator];
    [(_UIPlatterMenuDynamicsController *)v15 _configureFeedbackGenerator];
  }

  return v15;
}

- (CGVector)currentTranslation
{
  v2 = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [v2 offset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.dy = v8;
  result.dx = v7;
  return result;
}

- (CGVector)currentVelocity
{
  v2 = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [v2 velocity];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.dy = v8;
  result.dx = v7;
  return result;
}

- (void)didBeginPanningWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(_UIPlatterMenuDynamicsController *)self _activateFeedbackIfNeeded];
  [(_UIPlatterMenuDynamicsController *)self setInitialTouchPoint:x, y];
  [(_UIPlatterMenuDynamicsController *)self setIsCurrentlyUnderDirectManipulation:1];
  [(_UIPlatterMenuDynamicsController *)self _updateSwipeEdgeMultipliersIfNeededForTouchPosition:x, y];
  v9 = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  v6 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v6 center];
  [v9 didBeginPanningWithTouchPosition:x currentTransformedPosition:{y, v7, v8}];
}

- (void)didPanWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v9 = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  v6 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v6 center];
  [v9 didPanWithTouchPosition:x currentTransformedPosition:{y, v7, v8}];
}

- (void)didEndPanningWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(_UIPlatterMenuDynamicsController *)self _deactivateFeedbackIfNeeded];
  [(_UIPlatterMenuDynamicsController *)self setIsCurrentlyUnderDirectManipulation:0];
  v9 = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  v6 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v6 center];
  [v9 didEndPanningWithTouchPosition:x currentTransformedPosition:{y, v7, v8}];
}

- (void)toggleAnimatorDebugState
{
  v5 = [(_UIPlatterMenuDynamicsController *)self animator];
  v3 = [v5 isDebugEnabled];
  v4 = [(_UIPlatterMenuDynamicsController *)self animator];
  [v4 setDebugEnabled:v3 ^ 1u];
}

- (void)dealloc
{
  v3 = [(_UIPlatterMenuDynamicsController *)self animator];
  [v3 removeAllBehaviors];

  [(_UIPlatterMenuDynamicsController *)self _deactivateFeedbackIfNeeded];
  v4.receiver = self;
  v4.super_class = _UIPlatterMenuDynamicsController;
  [(_UIPlatterMenuDynamicsController *)&v4 dealloc];
}

- (void)resetAnimator
{
  v2 = [(_UIPlatterMenuDynamicsController *)self animator];
  [v2 removeAllBehaviors];
}

- (BOOL)isSelectingSwipeAction
{
  v3 = [(_UIPlatterMenuDynamicsController *)self platterView];
  v4 = [(_UIPlatterMenuDynamicsController *)self animator];
  v5 = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [v4 updateItemFromCurrentState:v5];

  [v3 center];
  v7 = v6;
  v8 = [(_UIPlatterMenuDynamicsController *)self delegate];
  [v8 centerForPlatterWithMenuViewDismissed];
  v10 = v9;

  return vabdd_f64(v7, v10) > 2.0;
}

- (BOOL)platterPanned
{
  v3 = [(_UIPlatterMenuDynamicsController *)self delegate];
  [v3 centerForPlatterWithMenuViewDismissed];
  v5 = v4;
  v7 = v6;

  v8 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v8 center];
  v10 = v9;
  v12 = v11;

  v13 = vabdd_f64(v5, v10) >= 3.0;
  return vabdd_f64(v7, v12) > 3.0 || v13;
}

- (void)lockIntoYAxis
{
  v2 = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [v2 lockIntoYAxis];
}

- (void)_beginInYLockedStatePresented
{
  [(_UIPlatterMenuDynamicsController *)self setState:2];
  v3 = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [v3 _enterYLockedState];
}

- (void)_animateToPlatterPresentedWithVelocity:(CGVector)a3
{
  dy = a3.dy;
  dx = a3.dx;
  v6 = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [v6 lockIntoYAxis];

  [(_UIPlatterMenuDynamicsController *)self performActionsAndEnterState:1 velocity:0 underDirectManipulation:dx, dy];
}

- (void)_animateToPlatterDismissedWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(_UIPlatterMenuDynamicsController *)self resetAnimator];
  v7 = [(_UIPlatterMenuDynamicsController *)self delegate];
  [v7 centerForPlatterWithMenuViewDismissed];
  v9 = v8;
  v11 = v10;

  v12 = [(_UIPlatterMenuDynamicsController *)self delegate];
  [v12 centerForMenuDismissed];
  v14 = v13;
  v16 = v15;

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86___UIPlatterMenuDynamicsController__animateToPlatterDismissedWithDuration_completion___block_invoke;
  v20[3] = &unk_1E70F3B20;
  v20[4] = self;
  v20[5] = v9;
  v20[6] = v11;
  v20[7] = v14;
  v20[8] = v16;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86___UIPlatterMenuDynamicsController__animateToPlatterDismissedWithDuration_completion___block_invoke_2;
  v18[3] = &unk_1E70F3608;
  v19 = v6;
  v17 = v6;
  [UIView animateWithDuration:v20 animations:v18 completion:a3];
}

- (void)panningTransformer:(id)a3 didBeginPanToTransformedPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
  v7 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
  [v7 setAnchorPoint:{x, y}];

  v8 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
  [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v8];

  v9 = [(_UIPlatterMenuDynamicsController *)self animator];
  v10 = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [v9 updateItemFromCurrentState:v10];

  v11 = [(_UIPlatterMenuDynamicsController *)self state];

  [(_UIPlatterMenuDynamicsController *)self performActionsAndEnterState:v11];
}

- (void)panningTransformer:(id)a3 didPanToTransformedPosition:(CGPoint)a4 offsetFromPrevious:(CGVector)a5 touchPosition:(CGPoint)a6 velocity:(CGVector)a7 didChangeAxis:(BOOL)a8 axisLock:(unint64_t)a9
{
  v10 = a8;
  dy = a7.dy;
  dx = a7.dx;
  y = a6.y;
  x = a6.x;
  v14 = a5.dy;
  v15 = a5.dx;
  v16 = a4.y;
  v17 = a4.x;
  v19 = [(_UIPlatterMenuDynamicsController *)self animator];
  v20 = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [v19 updateItemFromCurrentState:v20];

  v21 = [(_UIPlatterMenuDynamicsController *)self animator];
  v22 = [(_UIPlatterMenuDynamicsController *)self menuView];
  [v21 updateItemFromCurrentState:v22];

  if (a9)
  {
    v49 = dy;
    [(_UIPlatterMenuDynamicsController *)self modifiedOffsetForPosition:a9 offset:v17 touchPosition:v16 axisLock:v15, v14, x, y];
    v24 = v23;
    v26 = v25;
    v27 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
    [v27 anchorPoint];
    v29 = v28;
    v31 = v30;

    v32 = v24 + v29;
    v33 = v26 + v31;
    v34 = [(_UIPlatterMenuDynamicsController *)self delegate];
    v51 = v34;
    if (v10)
    {
      if (a9 == 1)
      {
        [v34 centerForPlatterWithMenuViewDismissed];
        v33 = v36;
      }

      else if (a9 == 2)
      {
        [v34 centerForPlatterWithMenuViewDismissed];
        v32 = v35;
      }
    }

    v37 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
    [v37 setAnchorPoint:{v32, v33}];

    if ([(_UIPlatterMenuDynamicsController *)self state]== 2 || [(_UIPlatterMenuDynamicsController *)self state]== 1)
    {
      [(_UIPlatterMenuDynamicsController *)self centerForMenuPresentedRelativeToCurrentPlatter];
      v39 = v38;
      v41 = v26 + v40;
      v42 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
      [v42 setAnchorPoint:{v39, v41}];
    }

    [v51 centerForPlatterWithMenuViewPresented];
    v44 = v43;
    [v51 minimumSpacingBetweenPlatterAndMenu];
    if (v16 + v45 * 0.5 < v44)
    {
      v46 = [(_UIPlatterMenuDynamicsController *)self animator];
      v47 = [(_UIPlatterMenuDynamicsController *)self platterMenuSlidingAttachmentBehavior];
      [v46 removeBehavior:v47];
    }

    [(_UIPlatterMenuDynamicsController *)self _positionSwipeActionViewsForCurrentPlatterViewPosition];
    v48 = [(_UIPlatterMenuDynamicsController *)self _stateForPosition:v17 offset:v16 velocity:v15, v14, dx, v49];
    if (v48 != [(_UIPlatterMenuDynamicsController *)self state])
    {
      [(_UIPlatterMenuDynamicsController *)self performActionsAndEnterState:v48 velocity:1 underDirectManipulation:dx, v49];
    }

    if (objc_opt_respondsToSelector())
    {
      [v51 translationDidUpdateForPlatterMenuDynamicsController:self];
    }
  }
}

- (void)panningTransformer:(id)a3 didEndPanToTransformedPosition:(CGPoint)a4 offsetFromPrevious:(CGVector)a5 velocity:(CGVector)a6
{
  dy = a6.dy;
  dx = a6.dx;
  v8 = a5.dy;
  v9 = a5.dx;
  y = a4.y;
  x = a4.x;
  v13 = [(_UIPlatterMenuDynamicsController *)self animator];
  v14 = [(_UIPlatterMenuDynamicsController *)self menuView];
  [v13 updateItemFromCurrentState:v14];

  v15 = [(_UIPlatterMenuDynamicsController *)self animator];
  v16 = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [v15 updateItemFromCurrentState:v16];

  v17 = [(_UIPlatterMenuDynamicsController *)self _stateForPosition:x offset:y velocity:v9, v8, dx, dy];
  v18 = 3;
  if (v17)
  {
    v18 = v17;
  }

  if (v17 == 2)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  [(_UIPlatterMenuDynamicsController *)self performActionsAndEnterState:v19 velocity:0 underDirectManipulation:dx, dy];
}

- (void)_configureAnimator
{
  v69[1] = *MEMORY[0x1E69E9840];
  v3 = [_UIPlatterItem alloc];
  v4 = [(_UIPlatterMenuDynamicsController *)self platterView];
  v5 = [(_UIPlatterItem *)v3 initWithView:v4];

  v6 = [UIDynamicAnimator alloc];
  v7 = [(_UIPlatterMenuDynamicsController *)self containerView];
  v8 = [(UIDynamicAnimator *)v6 initWithReferenceView:v7];
  [(_UIPlatterMenuDynamicsController *)self setAnimator:v8];

  v9 = [UIDynamicItemBehavior alloc];
  v69[0] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v11 = [(UIDynamicItemBehavior *)v9 initWithItems:v10];
  [(_UIPlatterMenuDynamicsController *)self setPlatterItemBehavior:v11];

  v12 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
  [v12 setDensity:0.0001];

  v13 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
  [v13 setResistance:0.2];

  v14 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
  [v14 setElasticity:0.1];

  v15 = [UIDynamicItemBehavior alloc];
  v16 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v68 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v18 = [(UIDynamicItemBehavior *)v15 initWithItems:v17];
  [(_UIPlatterMenuDynamicsController *)self setMenuItemBehavior:v18];

  v19 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
  [v19 setDensity:0.01];

  v20 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
  [v20 setResistance:0.2];

  v21 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
  [v21 setElasticity:0.1];

  v22 = [UIAttachmentBehavior alloc];
  v23 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v24 = [(UIAttachmentBehavior *)v22 initWithItem:v23 attachedToItem:v5];
  [(_UIPlatterMenuDynamicsController *)self setPlatterMenuAttachmentBehavior:v24];

  v25 = [(_UIPlatterMenuDynamicsController *)self platterMenuAttachmentBehavior];
  [v25 setDamping:0.6];

  v26 = [(_UIPlatterMenuDynamicsController *)self platterMenuAttachmentBehavior];
  [v26 setFrequency:2.0];

  v27 = [UIAttachmentBehavior alloc];
  v28 = *MEMORY[0x1E695EFF8];
  v29 = *(MEMORY[0x1E695EFF8] + 8);
  v30 = [(UIAttachmentBehavior *)v27 initWithItem:v5 attachedToAnchor:*MEMORY[0x1E695EFF8], v29];
  [(_UIPlatterMenuDynamicsController *)self setGestureAttachmentBehavior:v30];

  v31 = [[_UIPlatterMenuSnapBehavior alloc] initWithItem:v5 attachedToAnchor:v28, v29];
  [(_UIPlatterMenuDynamicsController *)self setPlatterSnapBehavior:v31];

  v32 = [_UIPlatterMenuSnapBehavior alloc];
  v33 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v34 = [(_UIPlatterMenuSnapBehavior *)v32 initWithItem:v33 attachedToAnchor:v28, v29];
  [(_UIPlatterMenuDynamicsController *)self setMenuPresentedSnapBehavior:v34];

  v35 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
  [v35 setDamping:0.55];

  v36 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
  [v36 setFrequency:2.0];

  v37 = [_UIPlatterMenuSnapBehavior alloc];
  v38 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v39 = [(_UIPlatterMenuSnapBehavior *)v37 initWithItem:v38 attachedToAnchor:v28, v29];
  [(_UIPlatterMenuDynamicsController *)self setMenuDismissedSnapBehavior:v39];

  v40 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
  [v40 setDamping:0.3];

  v41 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
  [v41 setFrequency:1.0];

  v42 = [UIDynamicItemBehavior alloc];
  v43 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v67[0] = v43;
  v67[1] = v5;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v45 = [(UIDynamicItemBehavior *)v42 initWithItems:v44];
  [(_UIPlatterMenuDynamicsController *)self setNoRotationBehavior:v45];

  v46 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [v46 setDensity:0.0];

  v47 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [v47 setResistance:0.0];

  v48 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [v48 setFriction:0.0];

  v49 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [v49 setAllowsRotation:0];

  v50 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v51 = [(_UIPlatterMenuDynamicsController *)self menuView];
  [v51 center];
  v52 = [UIAttachmentBehavior slidingAttachmentWithItem:"slidingAttachmentWithItem:attachmentAnchor:axisOfTranslation:" attachmentAnchor:v50 axisOfTranslation:?];
  [(_UIPlatterMenuDynamicsController *)self setMenuVerticalLockAttachment:v52];

  v53 = [UICollisionBehavior alloc];
  v66[0] = v5;
  v54 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v66[1] = v54;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  v56 = [(UICollisionBehavior *)v53 initWithItems:v55];
  [(_UIPlatterMenuDynamicsController *)self setPlatterMenuCollisionBounds:v56];

  v57 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v58 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v58 center];
  v59 = [UIAttachmentBehavior pinAttachmentWithItem:v5 attachedToItem:v57 attachmentAnchor:?];
  [(_UIPlatterMenuDynamicsController *)self setPlatterMenuSlidingAttachmentBehavior:v59];

  v60 = [(_UIPlatterMenuDynamicsController *)self animator];
  v61 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [v60 addBehavior:v61];

  v62 = [(_UIPlatterMenuDynamicsController *)self animator];
  v63 = [(_UIPlatterMenuDynamicsController *)self menuVerticalLockAttachment];
  [v62 addBehavior:v63];

  v64 = [(_UIPlatterMenuDynamicsController *)self animator];
  v65 = [(_UIPlatterMenuDynamicsController *)self platterMenuCollisionBounds];
  [v64 addBehavior:v65];

  [(_UIPlatterMenuDynamicsController *)self setPlatterItem:v5];
}

- (void)stopObservingBehavior
{
  v3 = [(_UIPlatterMenuDynamicsController *)self observingBehavior];
  [v3 cancel];

  [(_UIPlatterMenuDynamicsController *)self setObservingBehavior:0];
}

- (int64_t)_stateForPosition:(CGPoint)a3 offset:(CGVector)a4 velocity:(CGVector)a5
{
  dy = a5.dy;
  y = a3.y;
  v8 = [(_UIPlatterMenuDynamicsController *)self _isPlatterInYLockedPosition:a3.x];
  v9 = [(_UIPlatterMenuDynamicsController *)self state];
  if (v8)
  {
    v10 = [(_UIPlatterMenuDynamicsController *)self delegate];
    if ([(_UIPlatterMenuDynamicsController *)self state])
    {
      if ([(_UIPlatterMenuDynamicsController *)self state]== 2)
      {
        [v10 centerForMenuPresented];
        v12 = v11;
        [(_UIPlatterMenuDynamicsController *)self menuCenter];
        goto LABEL_5;
      }

      if ([(_UIPlatterMenuDynamicsController *)self state]== 1)
      {
        [v10 centerForMenuPresented];
        v12 = v16;
        [(_UIPlatterMenuDynamicsController *)self menuCenter];
        if (dy >= 0.0 || v13 >= v12 + -40.0)
        {
LABEL_5:
          if (v13 > v12 + 40.0 && dy > 0.0)
          {
            v9 = 3;
          }

          goto LABEL_23;
        }

        v9 = 2;
LABEL_23:

        return v9;
      }

      if ([(_UIPlatterMenuDynamicsController *)self state]!= 3)
      {
        goto LABEL_23;
      }

      if (dy >= 0.0)
      {
        goto LABEL_23;
      }

      [v10 centerForPlatterWithMenuViewDismissed];
      if (y >= v17 + -70.0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      [v10 centerForPlatterWithMenuViewDismissed];
      if (y >= v15 + -60.0 && (dy >= 0.0 || fabs(dy) <= 500.0))
      {
        goto LABEL_23;
      }
    }

    v9 = 1;
    goto LABEL_23;
  }

  return v9;
}

- (void)performActionsAndEnterState:(int64_t)a3 velocity:(CGVector)a4 underDirectManipulation:(BOOL)a5
{
  v5 = a5;
  dy = a4.dy;
  v117[4] = *MEMORY[0x1E69E9840];
  [(_UIPlatterMenuDynamicsController *)self setState:a4.dx];
  v9 = [(_UIPlatterMenuDynamicsController *)self delegate];
  v10 = v9;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(_UIPlatterMenuDynamicsController *)self setDidPresentCount:[(_UIPlatterMenuDynamicsController *)self didPresentCount]+ 1];
      [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
      if (v5)
      {
        v35 = [(_UIPlatterMenuDynamicsController *)self platterMenuSlidingAttachmentBehavior];
        [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v35];

        v36 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
        [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v36];

        [v10 centerForMenuPresented];
        v38 = v37;
        v40 = v39;
        v41 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
        [v41 setAnchorPoint:{v38, v40}];

        [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
      }

      else
      {
        v99 = [(_UIPlatterMenuDynamicsController *)self animator];
        v100 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
        [v99 removeBehavior:v100];

        [v10 centerForMenuPresented];
        v102 = v101;
        v104 = v103;
        v105 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
        [v105 setAnchorPoint:{v102, v104}];

        v106 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
        [v106 setDamping:0.4];

        v107 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
        [v107 setFrequency:1.4];

        [v10 centerForPlatterWithMenuViewPresented];
        v109 = v108;
        v111 = v110;
        v112 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
        [v112 setAnchorPoint:{v109, v111}];

        v113 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
        [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v113];

        [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      }
      v34 = ;
      goto LABEL_24;
    }

    if (a3 != 3)
    {
      goto LABEL_26;
    }

    [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
    if (!v5)
    {
      v68 = [(_UIPlatterMenuDynamicsController *)self animator];
      v69 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
      [v68 removeBehavior:v69];

      [v10 centerForPlatterWithMenuViewDismissed];
      v71 = v70;
      v73 = v72;
      v74 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      [v74 setAnchorPoint:{v71, v73}];

      v75 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      [v75 setDamping:0.3];

      v76 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      [v76 setFrequency:3.0];

      [v10 centerForMenuDismissed];
      v78 = v77;
      v80 = v79;
      v81 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
      [v81 setAnchorPoint:{v78, v80}];

      v56 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      v117[0] = v56;
      v57 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
      v117[1] = v57;
      v58 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
      v117[2] = v58;
      v59 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
      v117[3] = v59;
      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:4];
      v61 = [(_UIPlatterMenuDynamicsController *)self platterItem];
      v116[0] = v61;
      v62 = [(_UIPlatterMenuDynamicsController *)self menuView];
      v116[1] = v62;
      v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
      v64 = self;
      v65 = v60;
      v66 = v63;
      v67 = 0;
      goto LABEL_20;
    }

    [v10 centerForMenuDismissed];
    v20 = v19;
    v22 = v21;
    v23 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
    [v23 setAnchorPoint:{v20, v22}];

    v24 = [(_UIPlatterMenuDynamicsController *)self animator];
    v25 = [(_UIPlatterMenuDynamicsController *)self platterMenuSlidingAttachmentBehavior];
    [v24 removeBehavior:v25];

    v26 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
    [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v26];

    v27 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
LABEL_22:
    v98 = v27;
    [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v27];

    v34 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
    goto LABEL_24;
  }

  if (!a3)
  {
    if ([(_UIPlatterMenuDynamicsController *)self didPresentCount]>= 1)
    {
      [v10 platterMenuDynamicsControllerDidDismissWithController:self];
    }

    [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
    if (v5)
    {
      [v10 centerForMenuDismissed];
      v29 = v28;
      v31 = v30;
      v32 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
      [v32 setAnchorPoint:{v29, v31}];

      v18 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
      goto LABEL_14;
    }

    v82 = [(_UIPlatterMenuDynamicsController *)self animator];
    v83 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
    [v82 removeBehavior:v83];

    [v10 centerForPlatterWithMenuViewDismissed];
    v85 = v84;
    v87 = v86;
    v88 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [v88 setAnchorPoint:{v85, v87}];

    v89 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [v89 setDamping:0.3];

    v90 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [v90 setFrequency:3.0];

    [v10 centerForMenuDismissed];
    v92 = v91;
    v94 = v93;
    v95 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
    [v95 setAnchorPoint:{v92, v94}];

    v96 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v96];

    v97 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
    [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v97];

    v27 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    [v9 centerForMenuPresented];
    if (v5)
    {
      [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
      [(_UIPlatterMenuDynamicsController *)self centerForMenuPresentedRelativeToCurrentPlatter];
      v14 = v13;
      v16 = v15;
      v17 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
      [v17 setAnchorPoint:{v14, v16}];

      v18 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
LABEL_14:
      v33 = v18;
      [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v18];

      v34 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
LABEL_24:
      v56 = v34;
      [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v34];
      goto LABEL_25;
    }

    v42 = v11;
    v43 = v12;
    [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
    v44 = [(_UIPlatterMenuDynamicsController *)self animator];
    v45 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
    [v44 removeBehavior:v45];

    [v10 centerForPlatterWithMenuViewPresented];
    v47 = v46;
    v49 = v48;
    v50 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [v50 setAnchorPoint:{v47, v49}];

    v51 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [v51 setDamping:0.4];

    v52 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [v52 setFrequency:1.4];

    v53 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
    [v53 setAnchorPoint:{v42, v43}];

    v54 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
    v55 = [(_UIPlatterMenuDynamicsController *)self platterItem];
    [v54 addLinearVelocity:v55 forItem:{0.0, dy}];

    v56 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    v115[0] = v56;
    v57 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
    v115[1] = v57;
    v58 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
    v115[2] = v58;
    v59 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
    v115[3] = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
    v61 = [(_UIPlatterMenuDynamicsController *)self platterItem];
    v62 = [(_UIPlatterMenuDynamicsController *)self menuView];
    v114[1] = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
    v64 = self;
    v65 = v60;
    v66 = v63;
    v67 = 2;
LABEL_20:
    [(_UIPlatterMenuDynamicsController *)v64 beginTransitionWithAnimatorUsingBehaviors:v65 observedItems:v66 stateIfCompleted:v67];

LABEL_25:
  }

LABEL_26:
}

- (void)beginTransitionWithAnimatorUsingBehaviors:(id)a3 observedItems:(id)a4 stateIfCompleted:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(_UIPlatterMenuDynamicsController *)self stopObservingBehavior];
  [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109___UIPlatterMenuDynamicsController_beginTransitionWithAnimatorUsingBehaviors_observedItems_stateIfCompleted___block_invoke;
  v18[3] = &unk_1E711AB60;
  v18[4] = self;
  [v8 enumerateObjectsUsingBlock:v18];
  objc_initWeak(&location, self);
  v10 = [(UIDynamicItemBehavior *)[_UIDynamicItemObservingBehavior alloc] initWithItems:v9];
  [(_UIPlatterMenuDynamicsController *)self setObservingBehavior:v10];

  v11 = [(_UIPlatterMenuDynamicsController *)self observingBehavior];
  [v11 setTargetVelocity:{50.0, 50.0}];

  v12 = [(_UIPlatterMenuDynamicsController *)self observingBehavior];
  [v12 setCompletionHandlerInvocationDelay:0.1];

  v15 = MEMORY[0x1E69E9820];
  objc_copyWeak(v16, &location);
  v16[1] = a5;
  v13 = [(_UIPlatterMenuDynamicsController *)self observingBehavior:v15];
  [v13 setCompletionHandler:&v15];

  v14 = [(_UIPlatterMenuDynamicsController *)self observingBehavior];
  [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (CGVector)modifiedOffsetForPosition:(CGPoint)a3 offset:(CGVector)a4 touchPosition:(CGPoint)a5 axisLock:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  dy = a4.dy;
  dx = a4.dx;
  v11 = a3.y;
  v12 = a3.x;
  v14 = [(_UIPlatterMenuDynamicsController *)self delegate];
  v15 = v14;
  if (!a6)
  {
    goto LABEL_25;
  }

  v16 = 1.0;
  if (a6 == 1)
  {
    [v14 centerForPlatterWithMenuViewDismissed];
    v22 = v21;
    [(_UIPlatterMenuDynamicsController *)self _updateSwipeEdgeMultipliersIfNeededForTouchPosition:x, y];
    if (v12 <= v22)
    {
      if (v12 >= v22)
      {
        goto LABEL_20;
      }

      v26 = [v15 trailingSwipeActionView];

      if (!v26)
      {
        v18 = 1.0;
        if (dx < 0.0)
        {
          v16 = 4.0;
        }

        else
        {
          v16 = 1.0;
        }

        goto LABEL_21;
      }

      [(_UIPlatterMenuDynamicsController *)self trailingSwipeEdgeMultiplier];
      v18 = 1.0;
      if (v27 <= 2.22044605e-16)
      {
        goto LABEL_21;
      }

      [(_UIPlatterMenuDynamicsController *)self trailingSwipeEdgeMultiplier];
    }

    else
    {
      v23 = [v15 leadingSwipeActionView];

      if (!v23)
      {
        v18 = 1.0;
        if (dx > 0.0)
        {
          v16 = 4.0;
        }

        else
        {
          v16 = 1.0;
        }

        goto LABEL_21;
      }

      [(_UIPlatterMenuDynamicsController *)self leadingSwipeEdgeMultiplier];
      v18 = 1.0;
      if (v24 <= 2.22044605e-16)
      {
        goto LABEL_21;
      }

      [(_UIPlatterMenuDynamicsController *)self leadingSwipeEdgeMultiplier];
    }

    v18 = 1.0;
    v16 = 1.0 / v25;
    goto LABEL_21;
  }

  if (a6 != 2)
  {
LABEL_20:
    v18 = 1.0;
    goto LABEL_21;
  }

  [v14 centerForPlatterWithMenuViewPresented];
  if (v11 >= v17 || (v18 = 2.25, dy >= 0.0))
  {
    [v15 centerForPlatterWithMenuViewDismissed];
    if (v11 > v19 && dy > 0.0)
    {
      v20 = [(_UIPlatterMenuDynamicsController *)self state];
      v18 = 2.25;
      if (v20 != 2)
      {
        v18 = 15.0;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_21:
  if (fabs(v18 + -1.0) <= 2.22044605e-16)
  {
    if (fabs(v16 + -1.0) > 2.22044605e-16)
    {
      dx = dx / v16;
    }
  }

  else
  {
    dy = dy / v18;
  }

LABEL_25:

  v28 = dx;
  v29 = dy;
  result.dy = v29;
  result.dx = v28;
  return result;
}

- (CGPoint)centerForMenuPresentedRelativeToCurrentPlatter
{
  v3 = [(_UIPlatterMenuDynamicsController *)self delegate];
  v4 = [(_UIPlatterMenuDynamicsController *)self animator];
  v5 = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [v4 updateItemFromCurrentState:v5];

  [(_UIPlatterMenuDynamicsController *)self centerForCurrentPlatterPosition];
  v7 = v6;
  v9 = v8;
  [v3 centerForMenuPresented];
  v11 = v10;
  v12 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v12 bounds];
  v13 = v9 + CGRectGetHeight(v21) * 0.5;
  [v3 minimumSpacingBetweenPlatterAndMenu];
  v15 = v14 + v13;
  v16 = [(_UIPlatterMenuDynamicsController *)self menuView];
  [v16 bounds];
  v17 = v15 + CGRectGetHeight(v22) * 0.5;

  if (v17 < v11)
  {
    v17 = v11;
  }

  v18 = v7;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)centerForCurrentPlatterPosition
{
  v3 = [(_UIPlatterMenuDynamicsController *)self animator];
  v4 = [v3 referenceView];

  v5 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v5 center];
  v7 = v6;
  v9 = v8;
  v10 = [(_UIPlatterMenuDynamicsController *)self platterView];
  v11 = [v10 superview];
  [v4 convertPoint:v11 fromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)platterCenter
{
  v3 = [(_UIPlatterMenuDynamicsController *)self animator];
  v4 = [v3 referenceView];
  v5 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v5 center];
  v7 = v6;
  v9 = v8;
  v10 = [(_UIPlatterMenuDynamicsController *)self platterView];
  v11 = [v10 superview];
  [v4 convertPoint:v11 fromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)menuCenter
{
  v3 = [(_UIPlatterMenuDynamicsController *)self animator];
  v4 = [v3 referenceView];
  v5 = [(_UIPlatterMenuDynamicsController *)self menuView];
  [v5 center];
  v7 = v6;
  v9 = v8;
  v10 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v11 = [v10 superview];
  [v4 convertPoint:v11 fromView:{v7, v9}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)resetAnimatorToDefaultBehaviors
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIPlatterMenuDynamicsController *)self animator];
  v5 = [v4 behaviors];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___UIPlatterMenuDynamicsController_resetAnimatorToDefaultBehaviors__block_invoke;
  v8[3] = &unk_1E711AB88;
  v8[4] = self;
  v9 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v8];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___UIPlatterMenuDynamicsController_resetAnimatorToDefaultBehaviors__block_invoke_2;
  v7[3] = &unk_1E711AB60;
  v7[4] = self;
  [v6 enumerateObjectsUsingBlock:v7];
}

- (void)addBehaviorIfNotPresent:(id)a3
{
  v8 = a3;
  v4 = [(_UIPlatterMenuDynamicsController *)self animator];
  v5 = [v4 behaviors];
  v6 = [v5 containsObject:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(_UIPlatterMenuDynamicsController *)self animator];
    [v7 addBehavior:v8];
  }
}

- (BOOL)isDefaultAnimatorBehavior:(id)a3
{
  v4 = a3;
  v5 = [(_UIPlatterMenuDynamicsController *)self platterMenuCollisionBounds];
  if (v5 == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = [(_UIPlatterMenuDynamicsController *)self menuVerticalLockAttachment];
    if (v6 == v4)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v8 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
        v9 = v8 == v4;
      }
    }
  }

  return v9;
}

- (_UIPlatterMenuPanningTransformer)panningLockTransformer
{
  panningLockTransformer = self->_panningLockTransformer;
  if (!panningLockTransformer)
  {
    v4 = [(_UIPlatterMenuDynamicsController *)self delegate];
    [v4 centerForPlatterWithMenuViewDismissed];
    v6 = v5;
    v8 = v7;

    v9 = [_UIPlatterMenuPanningTransformer transformerWithAxisTransitionZonePosition:v6 axisTransitionZoneSize:v8, 20.0, 20.0];
    v10 = self->_panningLockTransformer;
    self->_panningLockTransformer = v9;

    [(_UIPlatterMenuPanningTransformer *)self->_panningLockTransformer setDelegate:self];
    [(_UIPlatterMenuPanningTransformer *)self->_panningLockTransformer setMinimumXVelocityForAxisLock:70.0];
    panningLockTransformer = self->_panningLockTransformer;
  }

  return panningLockTransformer;
}

- (void)_positionSwipeActionViewsForCurrentPlatterViewPosition
{
  v29 = [(_UIPlatterMenuDynamicsController *)self delegate];
  v3 = [v29 leadingSwipeActionView];
  [v29 initialCenterForLeadingSwipeActionView];
  v5 = v4;
  v7 = v6;
  v8 = [v29 trailingSwipeActionView];
  [v29 initialCenterForTrailingSwipeActionView];
  v10 = v9;
  v12 = v11;
  v13 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v3)
  {
    v31.origin.x = v15;
    v31.origin.y = v17;
    v31.size.width = v19;
    v31.size.height = v21;
    v22 = CGRectGetMinX(v31) * 0.5;
    if (v22 < v5)
    {
      v22 = v5;
    }

    [v29 platterMenuDynamicsController:self didMoveSwipeView:v3 toPosition:{v22, v7}];
  }

  if (v8)
  {
    v23 = [(_UIPlatterMenuDynamicsController *)self containerView];
    [v23 bounds];
    Width = CGRectGetWidth(v32);
    v33.origin.x = v15;
    v33.origin.y = v17;
    v33.size.width = v19;
    v33.size.height = v21;
    v25 = Width - CGRectGetMaxX(v33);

    v26 = [(_UIPlatterMenuDynamicsController *)self containerView];
    [v26 bounds];
    v27 = CGRectGetWidth(v34) + v25 * -0.5;

    if (v27 <= v10)
    {
      v28 = v27;
    }

    else
    {
      v28 = v10;
    }

    [v29 platterMenuDynamicsController:self didMoveSwipeView:v8 toPosition:{v28, v12}];
  }
}

- (void)_updateSwipeEdgeMultipliersIfNeededForTouchPosition:(CGPoint)a3
{
  x = a3.x;
  [(_UIPlatterMenuDynamicsController *)self setLeadingSwipeEdgeMultiplier:1.0, a3.y];
  [(_UIPlatterMenuDynamicsController *)self setTrailingSwipeEdgeMultiplier:1.0];
  v5 = [(_UIPlatterMenuDynamicsController *)self delegate];
  [v5 centerForPlatterWithMenuViewDismissed];
  v7 = v6;

  v8 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v8 center];
  v10 = v9;

  if (v10 >= v7)
  {
    if (v10 > v7)
    {
      v14 = [(_UIPlatterMenuDynamicsController *)self containerView];
      [v14 bounds];
      Width = CGRectGetWidth(v24);

      v16 = [(_UIPlatterMenuDynamicsController *)self platterView];
      [v16 bounds];
      v17 = CGRectGetWidth(v25);
      v18 = [(_UIPlatterMenuDynamicsController *)self platterView];
      [v18 center];
      v20 = v17 - v19 + 88.0;

      v21 = Width - x;
      if (Width - x < 10.0)
      {
        v21 = 10.0;
      }

      if (v20 > v21)
      {
        v22 = v20 / v21;

        [(_UIPlatterMenuDynamicsController *)self setLeadingSwipeEdgeMultiplier:v22];
      }
    }
  }

  else
  {
    v11 = v10 + 88.0;
    v12 = 10.0;
    if (x >= 10.0)
    {
      v12 = x;
    }

    if (v11 > v12)
    {
      v13 = v11 / v12;

      [(_UIPlatterMenuDynamicsController *)self setTrailingSwipeEdgeMultiplier:v13];
    }
  }
}

- (BOOL)_isPlatterInYLockedPosition
{
  v3 = [(_UIPlatterMenuDynamicsController *)self animator];
  v4 = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [v3 updateItemFromCurrentState:v4];

  v5 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [v5 center];
  v7 = v6;
  v8 = [(_UIPlatterMenuDynamicsController *)self delegate];
  [v8 centerForPlatterWithMenuViewDismissed];
  LOBYTE(v4) = vabdd_f64(v7, v9) < 2.0;

  return v4;
}

- (void)_configureFeedbackGenerator
{
  v3 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration defaultConfiguration];
  v7 = [v3 tweakedConfigurationForClass:objc_opt_class() usage:@"swipeAction"];

  v4 = [_UIStatesFeedbackGenerator alloc];
  v5 = [(_UIPlatterMenuDynamicsController *)self containerView];
  v6 = [(_UIStatesFeedbackGenerator *)v4 initWithConfiguration:v7 view:v5];
  [(_UIPlatterMenuDynamicsController *)self setSwipeFeedbackGenerator:v6];
}

- (void)_activateFeedbackIfNeeded
{
  v3 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
  v4 = [v3 isActive];

  if ((v4 & 1) == 0)
  {
    v5 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
    [v5 activateWithCompletionBlock:0];
  }
}

- (void)_deactivateFeedbackIfNeeded
{
  v3 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
  v4 = [v3 isActive];

  if (v4)
  {
    v5 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
    [v5 deactivate];
  }
}

- (void)_fireConfirmFeedbackIfNeededForInitialSelectionState:(BOOL)a3 finalSelectionState:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
  v8 = [v7 isActive];

  if (v8)
  {
    if (!v4 || v5)
    {
      if (!v5 || v4)
      {
        return;
      }

      v11 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
      v9 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration openState];
    }

    else
    {
      v11 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
      v9 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration confirmState];
    }

    v10 = v9;
    [v11 transitionToState:v9 ended:1];
  }
}

- (void)setLeadingSwipeActionViewSelected:(BOOL)a3
{
  leadingSwipeActionViewSelected = self->_leadingSwipeActionViewSelected;
  self->_leadingSwipeActionViewSelected = a3;
  [(_UIPlatterMenuDynamicsController *)self _fireConfirmFeedbackIfNeededForInitialSelectionState:leadingSwipeActionViewSelected finalSelectionState:?];
}

- (void)setTrailingSwipeActionViewSelected:(BOOL)a3
{
  trailingSwipeActionViewSelected = self->_trailingSwipeActionViewSelected;
  self->_trailingSwipeActionViewSelected = a3;
  [(_UIPlatterMenuDynamicsController *)self _fireConfirmFeedbackIfNeededForInitialSelectionState:trailingSwipeActionViewSelected finalSelectionState:?];
}

- (_UIPlatterMenuDynamicsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (UIView)platterView
{
  WeakRetained = objc_loadWeakRetained(&self->_platterView);

  return WeakRetained;
}

- (UIView)menuView
{
  WeakRetained = objc_loadWeakRetained(&self->_menuView);

  return WeakRetained;
}

- (UIDynamicItem)platterItem
{
  WeakRetained = objc_loadWeakRetained(&self->_platterItem);

  return WeakRetained;
}

- (CGPoint)initialTouchPoint
{
  x = self->_initialTouchPoint.x;
  y = self->_initialTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end