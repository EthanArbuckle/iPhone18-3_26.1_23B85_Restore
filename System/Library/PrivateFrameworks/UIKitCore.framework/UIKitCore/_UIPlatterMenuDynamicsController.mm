@interface _UIPlatterMenuDynamicsController
- (BOOL)_isPlatterInYLockedPosition;
- (BOOL)isDefaultAnimatorBehavior:(id)behavior;
- (BOOL)isSelectingSwipeAction;
- (BOOL)platterPanned;
- (CGPoint)centerForCurrentPlatterPosition;
- (CGPoint)centerForMenuPresentedRelativeToCurrentPlatter;
- (CGPoint)initialTouchPoint;
- (CGPoint)menuCenter;
- (CGPoint)platterCenter;
- (CGVector)currentTranslation;
- (CGVector)currentVelocity;
- (CGVector)modifiedOffsetForPosition:(CGPoint)position offset:(CGVector)offset touchPosition:(CGPoint)touchPosition axisLock:(unint64_t)lock;
- (UIDynamicItem)platterItem;
- (UIView)containerView;
- (UIView)menuView;
- (UIView)platterView;
- (_UIPlatterMenuDynamicsController)initWithContainerView:(id)view platterView:(id)platterView menuView:(id)menuView delegate:(id)delegate;
- (_UIPlatterMenuDynamicsControllerDelegate)delegate;
- (_UIPlatterMenuPanningTransformer)panningLockTransformer;
- (int64_t)_stateForPosition:(CGPoint)position offset:(CGVector)offset velocity:(CGVector)velocity;
- (void)_activateFeedbackIfNeeded;
- (void)_animateToPlatterDismissedWithDuration:(double)duration completion:(id)completion;
- (void)_animateToPlatterPresentedWithVelocity:(CGVector)velocity;
- (void)_beginInYLockedStatePresented;
- (void)_configureAnimator;
- (void)_configureFeedbackGenerator;
- (void)_deactivateFeedbackIfNeeded;
- (void)_fireConfirmFeedbackIfNeededForInitialSelectionState:(BOOL)state finalSelectionState:(BOOL)selectionState;
- (void)_positionSwipeActionViewsForCurrentPlatterViewPosition;
- (void)_updateSwipeEdgeMultipliersIfNeededForTouchPosition:(CGPoint)position;
- (void)addBehaviorIfNotPresent:(id)present;
- (void)beginTransitionWithAnimatorUsingBehaviors:(id)behaviors observedItems:(id)items stateIfCompleted:(int64_t)completed;
- (void)dealloc;
- (void)didBeginPanningWithPoint:(CGPoint)point;
- (void)didEndPanningWithPoint:(CGPoint)point;
- (void)didPanWithPoint:(CGPoint)point;
- (void)lockIntoYAxis;
- (void)panningTransformer:(id)transformer didBeginPanToTransformedPosition:(CGPoint)position;
- (void)panningTransformer:(id)transformer didEndPanToTransformedPosition:(CGPoint)position offsetFromPrevious:(CGVector)previous velocity:(CGVector)velocity;
- (void)panningTransformer:(id)transformer didPanToTransformedPosition:(CGPoint)position offsetFromPrevious:(CGVector)previous touchPosition:(CGPoint)touchPosition velocity:(CGVector)velocity didChangeAxis:(BOOL)axis axisLock:(unint64_t)lock;
- (void)performActionsAndEnterState:(int64_t)state velocity:(CGVector)velocity underDirectManipulation:(BOOL)manipulation;
- (void)resetAnimator;
- (void)resetAnimatorToDefaultBehaviors;
- (void)setLeadingSwipeActionViewSelected:(BOOL)selected;
- (void)setTrailingSwipeActionViewSelected:(BOOL)selected;
- (void)stopObservingBehavior;
- (void)toggleAnimatorDebugState;
@end

@implementation _UIPlatterMenuDynamicsController

- (_UIPlatterMenuDynamicsController)initWithContainerView:(id)view platterView:(id)platterView menuView:(id)menuView delegate:(id)delegate
{
  viewCopy = view;
  platterViewCopy = platterView;
  menuViewCopy = menuView;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = _UIPlatterMenuDynamicsController;
  v14 = [(_UIPlatterMenuDynamicsController *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeWeak(&v15->_containerView, viewCopy);
    objc_storeWeak(&v15->_platterView, platterViewCopy);
    objc_storeWeak(&v15->_menuView, menuViewCopy);
    v15->_state = 0;
    [(_UIPlatterMenuDynamicsController *)v15 _configureAnimator];
    [(_UIPlatterMenuDynamicsController *)v15 _configureFeedbackGenerator];
  }

  return v15;
}

- (CGVector)currentTranslation
{
  panningLockTransformer = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [panningLockTransformer offset];
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
  panningLockTransformer = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [panningLockTransformer velocity];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.dy = v8;
  result.dx = v7;
  return result;
}

- (void)didBeginPanningWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(_UIPlatterMenuDynamicsController *)self _activateFeedbackIfNeeded];
  [(_UIPlatterMenuDynamicsController *)self setInitialTouchPoint:x, y];
  [(_UIPlatterMenuDynamicsController *)self setIsCurrentlyUnderDirectManipulation:1];
  [(_UIPlatterMenuDynamicsController *)self _updateSwipeEdgeMultipliersIfNeededForTouchPosition:x, y];
  panningLockTransformer = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView center];
  [panningLockTransformer didBeginPanningWithTouchPosition:x currentTransformedPosition:{y, v7, v8}];
}

- (void)didPanWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  panningLockTransformer = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView center];
  [panningLockTransformer didPanWithTouchPosition:x currentTransformedPosition:{y, v7, v8}];
}

- (void)didEndPanningWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(_UIPlatterMenuDynamicsController *)self _deactivateFeedbackIfNeeded];
  [(_UIPlatterMenuDynamicsController *)self setIsCurrentlyUnderDirectManipulation:0];
  panningLockTransformer = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView center];
  [panningLockTransformer didEndPanningWithTouchPosition:x currentTransformedPosition:{y, v7, v8}];
}

- (void)toggleAnimatorDebugState
{
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  isDebugEnabled = [animator isDebugEnabled];
  animator2 = [(_UIPlatterMenuDynamicsController *)self animator];
  [animator2 setDebugEnabled:isDebugEnabled ^ 1u];
}

- (void)dealloc
{
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  [animator removeAllBehaviors];

  [(_UIPlatterMenuDynamicsController *)self _deactivateFeedbackIfNeeded];
  v4.receiver = self;
  v4.super_class = _UIPlatterMenuDynamicsController;
  [(_UIPlatterMenuDynamicsController *)&v4 dealloc];
}

- (void)resetAnimator
{
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  [animator removeAllBehaviors];
}

- (BOOL)isSelectingSwipeAction
{
  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  platterItem = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [animator updateItemFromCurrentState:platterItem];

  [platterView center];
  v7 = v6;
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  [delegate centerForPlatterWithMenuViewDismissed];
  v10 = v9;

  return vabdd_f64(v7, v10) > 2.0;
}

- (BOOL)platterPanned
{
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  [delegate centerForPlatterWithMenuViewDismissed];
  v5 = v4;
  v7 = v6;

  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView center];
  v10 = v9;
  v12 = v11;

  v13 = vabdd_f64(v5, v10) >= 3.0;
  return vabdd_f64(v7, v12) > 3.0 || v13;
}

- (void)lockIntoYAxis
{
  panningLockTransformer = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [panningLockTransformer lockIntoYAxis];
}

- (void)_beginInYLockedStatePresented
{
  [(_UIPlatterMenuDynamicsController *)self setState:2];
  panningLockTransformer = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [panningLockTransformer _enterYLockedState];
}

- (void)_animateToPlatterPresentedWithVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  panningLockTransformer = [(_UIPlatterMenuDynamicsController *)self panningLockTransformer];
  [panningLockTransformer lockIntoYAxis];

  [(_UIPlatterMenuDynamicsController *)self performActionsAndEnterState:1 velocity:0 underDirectManipulation:dx, dy];
}

- (void)_animateToPlatterDismissedWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  [(_UIPlatterMenuDynamicsController *)self resetAnimator];
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  [delegate centerForPlatterWithMenuViewDismissed];
  v9 = v8;
  v11 = v10;

  delegate2 = [(_UIPlatterMenuDynamicsController *)self delegate];
  [delegate2 centerForMenuDismissed];
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
  v19 = completionCopy;
  v17 = completionCopy;
  [UIView animateWithDuration:v20 animations:v18 completion:duration];
}

- (void)panningTransformer:(id)transformer didBeginPanToTransformedPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
  gestureAttachmentBehavior = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
  [gestureAttachmentBehavior setAnchorPoint:{x, y}];

  gestureAttachmentBehavior2 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
  [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:gestureAttachmentBehavior2];

  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  platterItem = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [animator updateItemFromCurrentState:platterItem];

  state = [(_UIPlatterMenuDynamicsController *)self state];

  [(_UIPlatterMenuDynamicsController *)self performActionsAndEnterState:state];
}

- (void)panningTransformer:(id)transformer didPanToTransformedPosition:(CGPoint)position offsetFromPrevious:(CGVector)previous touchPosition:(CGPoint)touchPosition velocity:(CGVector)velocity didChangeAxis:(BOOL)axis axisLock:(unint64_t)lock
{
  axisCopy = axis;
  dy = velocity.dy;
  dx = velocity.dx;
  y = touchPosition.y;
  x = touchPosition.x;
  v14 = previous.dy;
  v15 = previous.dx;
  v16 = position.y;
  v17 = position.x;
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  platterItem = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [animator updateItemFromCurrentState:platterItem];

  animator2 = [(_UIPlatterMenuDynamicsController *)self animator];
  menuView = [(_UIPlatterMenuDynamicsController *)self menuView];
  [animator2 updateItemFromCurrentState:menuView];

  if (lock)
  {
    v49 = dy;
    [(_UIPlatterMenuDynamicsController *)self modifiedOffsetForPosition:lock offset:v17 touchPosition:v16 axisLock:v15, v14, x, y];
    v24 = v23;
    v26 = v25;
    gestureAttachmentBehavior = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
    [gestureAttachmentBehavior anchorPoint];
    v29 = v28;
    v31 = v30;

    v32 = v24 + v29;
    v33 = v26 + v31;
    delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
    v51 = delegate;
    if (axisCopy)
    {
      if (lock == 1)
      {
        [delegate centerForPlatterWithMenuViewDismissed];
        v33 = v36;
      }

      else if (lock == 2)
      {
        [delegate centerForPlatterWithMenuViewDismissed];
        v32 = v35;
      }
    }

    gestureAttachmentBehavior2 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
    [gestureAttachmentBehavior2 setAnchorPoint:{v32, v33}];

    if ([(_UIPlatterMenuDynamicsController *)self state]== 2 || [(_UIPlatterMenuDynamicsController *)self state]== 1)
    {
      [(_UIPlatterMenuDynamicsController *)self centerForMenuPresentedRelativeToCurrentPlatter];
      v39 = v38;
      v41 = v26 + v40;
      menuPresentedSnapBehavior = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
      [menuPresentedSnapBehavior setAnchorPoint:{v39, v41}];
    }

    [v51 centerForPlatterWithMenuViewPresented];
    v44 = v43;
    [v51 minimumSpacingBetweenPlatterAndMenu];
    if (v16 + v45 * 0.5 < v44)
    {
      animator3 = [(_UIPlatterMenuDynamicsController *)self animator];
      platterMenuSlidingAttachmentBehavior = [(_UIPlatterMenuDynamicsController *)self platterMenuSlidingAttachmentBehavior];
      [animator3 removeBehavior:platterMenuSlidingAttachmentBehavior];
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

- (void)panningTransformer:(id)transformer didEndPanToTransformedPosition:(CGPoint)position offsetFromPrevious:(CGVector)previous velocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  v8 = previous.dy;
  v9 = previous.dx;
  y = position.y;
  x = position.x;
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  menuView = [(_UIPlatterMenuDynamicsController *)self menuView];
  [animator updateItemFromCurrentState:menuView];

  animator2 = [(_UIPlatterMenuDynamicsController *)self animator];
  platterItem = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [animator2 updateItemFromCurrentState:platterItem];

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
  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  v5 = [(_UIPlatterItem *)v3 initWithView:platterView];

  v6 = [UIDynamicAnimator alloc];
  containerView = [(_UIPlatterMenuDynamicsController *)self containerView];
  v8 = [(UIDynamicAnimator *)v6 initWithReferenceView:containerView];
  [(_UIPlatterMenuDynamicsController *)self setAnimator:v8];

  v9 = [UIDynamicItemBehavior alloc];
  v69[0] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v11 = [(UIDynamicItemBehavior *)v9 initWithItems:v10];
  [(_UIPlatterMenuDynamicsController *)self setPlatterItemBehavior:v11];

  platterItemBehavior = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
  [platterItemBehavior setDensity:0.0001];

  platterItemBehavior2 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
  [platterItemBehavior2 setResistance:0.2];

  platterItemBehavior3 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
  [platterItemBehavior3 setElasticity:0.1];

  v15 = [UIDynamicItemBehavior alloc];
  menuView = [(_UIPlatterMenuDynamicsController *)self menuView];
  v68 = menuView;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v18 = [(UIDynamicItemBehavior *)v15 initWithItems:v17];
  [(_UIPlatterMenuDynamicsController *)self setMenuItemBehavior:v18];

  menuItemBehavior = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
  [menuItemBehavior setDensity:0.01];

  menuItemBehavior2 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
  [menuItemBehavior2 setResistance:0.2];

  menuItemBehavior3 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
  [menuItemBehavior3 setElasticity:0.1];

  v22 = [UIAttachmentBehavior alloc];
  menuView2 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v24 = [(UIAttachmentBehavior *)v22 initWithItem:menuView2 attachedToItem:v5];
  [(_UIPlatterMenuDynamicsController *)self setPlatterMenuAttachmentBehavior:v24];

  platterMenuAttachmentBehavior = [(_UIPlatterMenuDynamicsController *)self platterMenuAttachmentBehavior];
  [platterMenuAttachmentBehavior setDamping:0.6];

  platterMenuAttachmentBehavior2 = [(_UIPlatterMenuDynamicsController *)self platterMenuAttachmentBehavior];
  [platterMenuAttachmentBehavior2 setFrequency:2.0];

  v27 = [UIAttachmentBehavior alloc];
  v28 = *MEMORY[0x1E695EFF8];
  v29 = *(MEMORY[0x1E695EFF8] + 8);
  v30 = [(UIAttachmentBehavior *)v27 initWithItem:v5 attachedToAnchor:*MEMORY[0x1E695EFF8], v29];
  [(_UIPlatterMenuDynamicsController *)self setGestureAttachmentBehavior:v30];

  v31 = [[_UIPlatterMenuSnapBehavior alloc] initWithItem:v5 attachedToAnchor:v28, v29];
  [(_UIPlatterMenuDynamicsController *)self setPlatterSnapBehavior:v31];

  v32 = [_UIPlatterMenuSnapBehavior alloc];
  menuView3 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v34 = [(_UIPlatterMenuSnapBehavior *)v32 initWithItem:menuView3 attachedToAnchor:v28, v29];
  [(_UIPlatterMenuDynamicsController *)self setMenuPresentedSnapBehavior:v34];

  menuPresentedSnapBehavior = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
  [menuPresentedSnapBehavior setDamping:0.55];

  menuPresentedSnapBehavior2 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
  [menuPresentedSnapBehavior2 setFrequency:2.0];

  v37 = [_UIPlatterMenuSnapBehavior alloc];
  menuView4 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v39 = [(_UIPlatterMenuSnapBehavior *)v37 initWithItem:menuView4 attachedToAnchor:v28, v29];
  [(_UIPlatterMenuDynamicsController *)self setMenuDismissedSnapBehavior:v39];

  menuDismissedSnapBehavior = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
  [menuDismissedSnapBehavior setDamping:0.3];

  menuDismissedSnapBehavior2 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
  [menuDismissedSnapBehavior2 setFrequency:1.0];

  v42 = [UIDynamicItemBehavior alloc];
  menuView5 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v67[0] = menuView5;
  v67[1] = v5;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v45 = [(UIDynamicItemBehavior *)v42 initWithItems:v44];
  [(_UIPlatterMenuDynamicsController *)self setNoRotationBehavior:v45];

  noRotationBehavior = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [noRotationBehavior setDensity:0.0];

  noRotationBehavior2 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [noRotationBehavior2 setResistance:0.0];

  noRotationBehavior3 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [noRotationBehavior3 setFriction:0.0];

  noRotationBehavior4 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [noRotationBehavior4 setAllowsRotation:0];

  menuView6 = [(_UIPlatterMenuDynamicsController *)self menuView];
  menuView7 = [(_UIPlatterMenuDynamicsController *)self menuView];
  [menuView7 center];
  v52 = [UIAttachmentBehavior slidingAttachmentWithItem:"slidingAttachmentWithItem:attachmentAnchor:axisOfTranslation:" attachmentAnchor:menuView6 axisOfTranslation:?];
  [(_UIPlatterMenuDynamicsController *)self setMenuVerticalLockAttachment:v52];

  v53 = [UICollisionBehavior alloc];
  v66[0] = v5;
  menuView8 = [(_UIPlatterMenuDynamicsController *)self menuView];
  v66[1] = menuView8;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
  v56 = [(UICollisionBehavior *)v53 initWithItems:v55];
  [(_UIPlatterMenuDynamicsController *)self setPlatterMenuCollisionBounds:v56];

  menuView9 = [(_UIPlatterMenuDynamicsController *)self menuView];
  platterView2 = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView2 center];
  v59 = [UIAttachmentBehavior pinAttachmentWithItem:v5 attachedToItem:menuView9 attachmentAnchor:?];
  [(_UIPlatterMenuDynamicsController *)self setPlatterMenuSlidingAttachmentBehavior:v59];

  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  noRotationBehavior5 = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
  [animator addBehavior:noRotationBehavior5];

  animator2 = [(_UIPlatterMenuDynamicsController *)self animator];
  menuVerticalLockAttachment = [(_UIPlatterMenuDynamicsController *)self menuVerticalLockAttachment];
  [animator2 addBehavior:menuVerticalLockAttachment];

  animator3 = [(_UIPlatterMenuDynamicsController *)self animator];
  platterMenuCollisionBounds = [(_UIPlatterMenuDynamicsController *)self platterMenuCollisionBounds];
  [animator3 addBehavior:platterMenuCollisionBounds];

  [(_UIPlatterMenuDynamicsController *)self setPlatterItem:v5];
}

- (void)stopObservingBehavior
{
  observingBehavior = [(_UIPlatterMenuDynamicsController *)self observingBehavior];
  [observingBehavior cancel];

  [(_UIPlatterMenuDynamicsController *)self setObservingBehavior:0];
}

- (int64_t)_stateForPosition:(CGPoint)position offset:(CGVector)offset velocity:(CGVector)velocity
{
  dy = velocity.dy;
  y = position.y;
  v8 = [(_UIPlatterMenuDynamicsController *)self _isPlatterInYLockedPosition:position.x];
  state = [(_UIPlatterMenuDynamicsController *)self state];
  if (v8)
  {
    delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
    if ([(_UIPlatterMenuDynamicsController *)self state])
    {
      if ([(_UIPlatterMenuDynamicsController *)self state]== 2)
      {
        [delegate centerForMenuPresented];
        v12 = v11;
        [(_UIPlatterMenuDynamicsController *)self menuCenter];
        goto LABEL_5;
      }

      if ([(_UIPlatterMenuDynamicsController *)self state]== 1)
      {
        [delegate centerForMenuPresented];
        v12 = v16;
        [(_UIPlatterMenuDynamicsController *)self menuCenter];
        if (dy >= 0.0 || v13 >= v12 + -40.0)
        {
LABEL_5:
          if (v13 > v12 + 40.0 && dy > 0.0)
          {
            state = 3;
          }

          goto LABEL_23;
        }

        state = 2;
LABEL_23:

        return state;
      }

      if ([(_UIPlatterMenuDynamicsController *)self state]!= 3)
      {
        goto LABEL_23;
      }

      if (dy >= 0.0)
      {
        goto LABEL_23;
      }

      [delegate centerForPlatterWithMenuViewDismissed];
      if (y >= v17 + -70.0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      [delegate centerForPlatterWithMenuViewDismissed];
      if (y >= v15 + -60.0 && (dy >= 0.0 || fabs(dy) <= 500.0))
      {
        goto LABEL_23;
      }
    }

    state = 1;
    goto LABEL_23;
  }

  return state;
}

- (void)performActionsAndEnterState:(int64_t)state velocity:(CGVector)velocity underDirectManipulation:(BOOL)manipulation
{
  manipulationCopy = manipulation;
  dy = velocity.dy;
  v117[4] = *MEMORY[0x1E69E9840];
  [(_UIPlatterMenuDynamicsController *)self setState:velocity.dx];
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  v10 = delegate;
  if (state > 1)
  {
    if (state == 2)
    {
      [(_UIPlatterMenuDynamicsController *)self setDidPresentCount:[(_UIPlatterMenuDynamicsController *)self didPresentCount]+ 1];
      [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
      if (manipulationCopy)
      {
        platterMenuSlidingAttachmentBehavior = [(_UIPlatterMenuDynamicsController *)self platterMenuSlidingAttachmentBehavior];
        [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:platterMenuSlidingAttachmentBehavior];

        gestureAttachmentBehavior = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
        [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:gestureAttachmentBehavior];

        [v10 centerForMenuPresented];
        v38 = v37;
        v40 = v39;
        menuPresentedSnapBehavior = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
        [menuPresentedSnapBehavior setAnchorPoint:{v38, v40}];

        [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
      }

      else
      {
        animator = [(_UIPlatterMenuDynamicsController *)self animator];
        gestureAttachmentBehavior2 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
        [animator removeBehavior:gestureAttachmentBehavior2];

        [v10 centerForMenuPresented];
        v102 = v101;
        v104 = v103;
        menuPresentedSnapBehavior2 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
        [menuPresentedSnapBehavior2 setAnchorPoint:{v102, v104}];

        platterSnapBehavior = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
        [platterSnapBehavior setDamping:0.4];

        platterSnapBehavior2 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
        [platterSnapBehavior2 setFrequency:1.4];

        [v10 centerForPlatterWithMenuViewPresented];
        v109 = v108;
        v111 = v110;
        platterSnapBehavior3 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
        [platterSnapBehavior3 setAnchorPoint:{v109, v111}];

        menuPresentedSnapBehavior3 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
        [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:menuPresentedSnapBehavior3];

        [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      }
      menuItemBehavior2 = ;
      goto LABEL_24;
    }

    if (state != 3)
    {
      goto LABEL_26;
    }

    [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
    if (!manipulationCopy)
    {
      animator2 = [(_UIPlatterMenuDynamicsController *)self animator];
      gestureAttachmentBehavior3 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
      [animator2 removeBehavior:gestureAttachmentBehavior3];

      [v10 centerForPlatterWithMenuViewDismissed];
      v71 = v70;
      v73 = v72;
      platterSnapBehavior4 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      [platterSnapBehavior4 setAnchorPoint:{v71, v73}];

      platterSnapBehavior5 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      [platterSnapBehavior5 setDamping:0.3];

      platterSnapBehavior6 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      [platterSnapBehavior6 setFrequency:3.0];

      [v10 centerForMenuDismissed];
      v78 = v77;
      v80 = v79;
      menuDismissedSnapBehavior = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
      [menuDismissedSnapBehavior setAnchorPoint:{v78, v80}];

      platterSnapBehavior7 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
      v117[0] = platterSnapBehavior7;
      platterItemBehavior = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
      v117[1] = platterItemBehavior;
      menuDismissedSnapBehavior2 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
      v117[2] = menuDismissedSnapBehavior2;
      menuItemBehavior = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
      v117[3] = menuItemBehavior;
      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:4];
      platterItem = [(_UIPlatterMenuDynamicsController *)self platterItem];
      v116[0] = platterItem;
      menuView = [(_UIPlatterMenuDynamicsController *)self menuView];
      v116[1] = menuView;
      v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
      selfCopy2 = self;
      v65 = v60;
      v66 = v63;
      v67 = 0;
      goto LABEL_20;
    }

    [v10 centerForMenuDismissed];
    v20 = v19;
    v22 = v21;
    menuDismissedSnapBehavior3 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
    [menuDismissedSnapBehavior3 setAnchorPoint:{v20, v22}];

    animator3 = [(_UIPlatterMenuDynamicsController *)self animator];
    platterMenuSlidingAttachmentBehavior2 = [(_UIPlatterMenuDynamicsController *)self platterMenuSlidingAttachmentBehavior];
    [animator3 removeBehavior:platterMenuSlidingAttachmentBehavior2];

    menuDismissedSnapBehavior4 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
    [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:menuDismissedSnapBehavior4];

    gestureAttachmentBehavior4 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
LABEL_22:
    v98 = gestureAttachmentBehavior4;
    [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:gestureAttachmentBehavior4];

    menuItemBehavior2 = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
    goto LABEL_24;
  }

  if (!state)
  {
    if ([(_UIPlatterMenuDynamicsController *)self didPresentCount]>= 1)
    {
      [v10 platterMenuDynamicsControllerDidDismissWithController:self];
    }

    [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
    if (manipulationCopy)
    {
      [v10 centerForMenuDismissed];
      v29 = v28;
      v31 = v30;
      menuDismissedSnapBehavior5 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
      [menuDismissedSnapBehavior5 setAnchorPoint:{v29, v31}];

      menuDismissedSnapBehavior6 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
      goto LABEL_14;
    }

    animator4 = [(_UIPlatterMenuDynamicsController *)self animator];
    gestureAttachmentBehavior5 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
    [animator4 removeBehavior:gestureAttachmentBehavior5];

    [v10 centerForPlatterWithMenuViewDismissed];
    v85 = v84;
    v87 = v86;
    platterSnapBehavior8 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [platterSnapBehavior8 setAnchorPoint:{v85, v87}];

    platterSnapBehavior9 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [platterSnapBehavior9 setDamping:0.3];

    platterSnapBehavior10 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [platterSnapBehavior10 setFrequency:3.0];

    [v10 centerForMenuDismissed];
    v92 = v91;
    v94 = v93;
    menuDismissedSnapBehavior7 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
    [menuDismissedSnapBehavior7 setAnchorPoint:{v92, v94}];

    platterSnapBehavior11 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:platterSnapBehavior11];

    menuDismissedSnapBehavior8 = [(_UIPlatterMenuDynamicsController *)self menuDismissedSnapBehavior];
    [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:menuDismissedSnapBehavior8];

    gestureAttachmentBehavior4 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
    goto LABEL_22;
  }

  if (state == 1)
  {
    [delegate centerForMenuPresented];
    if (manipulationCopy)
    {
      [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
      [(_UIPlatterMenuDynamicsController *)self centerForMenuPresentedRelativeToCurrentPlatter];
      v14 = v13;
      v16 = v15;
      menuPresentedSnapBehavior4 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
      [menuPresentedSnapBehavior4 setAnchorPoint:{v14, v16}];

      menuDismissedSnapBehavior6 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
LABEL_14:
      v33 = menuDismissedSnapBehavior6;
      [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:menuDismissedSnapBehavior6];

      menuItemBehavior2 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
LABEL_24:
      platterSnapBehavior7 = menuItemBehavior2;
      [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:menuItemBehavior2];
      goto LABEL_25;
    }

    v42 = v11;
    v43 = v12;
    [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
    animator5 = [(_UIPlatterMenuDynamicsController *)self animator];
    gestureAttachmentBehavior6 = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
    [animator5 removeBehavior:gestureAttachmentBehavior6];

    [v10 centerForPlatterWithMenuViewPresented];
    v47 = v46;
    v49 = v48;
    platterSnapBehavior12 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [platterSnapBehavior12 setAnchorPoint:{v47, v49}];

    platterSnapBehavior13 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [platterSnapBehavior13 setDamping:0.4];

    platterSnapBehavior14 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    [platterSnapBehavior14 setFrequency:1.4];

    menuPresentedSnapBehavior5 = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
    [menuPresentedSnapBehavior5 setAnchorPoint:{v42, v43}];

    platterItemBehavior2 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
    platterItem2 = [(_UIPlatterMenuDynamicsController *)self platterItem];
    [platterItemBehavior2 addLinearVelocity:platterItem2 forItem:{0.0, dy}];

    platterSnapBehavior7 = [(_UIPlatterMenuDynamicsController *)self platterSnapBehavior];
    v115[0] = platterSnapBehavior7;
    platterItemBehavior = [(_UIPlatterMenuDynamicsController *)self menuPresentedSnapBehavior];
    v115[1] = platterItemBehavior;
    menuDismissedSnapBehavior2 = [(_UIPlatterMenuDynamicsController *)self platterItemBehavior];
    v115[2] = menuDismissedSnapBehavior2;
    menuItemBehavior = [(_UIPlatterMenuDynamicsController *)self menuItemBehavior];
    v115[3] = menuItemBehavior;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
    platterItem = [(_UIPlatterMenuDynamicsController *)self platterItem];
    menuView = [(_UIPlatterMenuDynamicsController *)self menuView];
    v114[1] = menuView;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
    selfCopy2 = self;
    v65 = v60;
    v66 = v63;
    v67 = 2;
LABEL_20:
    [(_UIPlatterMenuDynamicsController *)selfCopy2 beginTransitionWithAnimatorUsingBehaviors:v65 observedItems:v66 stateIfCompleted:v67];

LABEL_25:
  }

LABEL_26:
}

- (void)beginTransitionWithAnimatorUsingBehaviors:(id)behaviors observedItems:(id)items stateIfCompleted:(int64_t)completed
{
  behaviorsCopy = behaviors;
  itemsCopy = items;
  [(_UIPlatterMenuDynamicsController *)self stopObservingBehavior];
  [(_UIPlatterMenuDynamicsController *)self resetAnimatorToDefaultBehaviors];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109___UIPlatterMenuDynamicsController_beginTransitionWithAnimatorUsingBehaviors_observedItems_stateIfCompleted___block_invoke;
  v18[3] = &unk_1E711AB60;
  v18[4] = self;
  [behaviorsCopy enumerateObjectsUsingBlock:v18];
  objc_initWeak(&location, self);
  v10 = [(UIDynamicItemBehavior *)[_UIDynamicItemObservingBehavior alloc] initWithItems:itemsCopy];
  [(_UIPlatterMenuDynamicsController *)self setObservingBehavior:v10];

  observingBehavior = [(_UIPlatterMenuDynamicsController *)self observingBehavior];
  [observingBehavior setTargetVelocity:{50.0, 50.0}];

  observingBehavior2 = [(_UIPlatterMenuDynamicsController *)self observingBehavior];
  [observingBehavior2 setCompletionHandlerInvocationDelay:0.1];

  v15 = MEMORY[0x1E69E9820];
  objc_copyWeak(v16, &location);
  v16[1] = completed;
  v13 = [(_UIPlatterMenuDynamicsController *)self observingBehavior:v15];
  [v13 setCompletionHandler:&v15];

  observingBehavior3 = [(_UIPlatterMenuDynamicsController *)self observingBehavior];
  [(_UIPlatterMenuDynamicsController *)self addBehaviorIfNotPresent:observingBehavior3];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (CGVector)modifiedOffsetForPosition:(CGPoint)position offset:(CGVector)offset touchPosition:(CGPoint)touchPosition axisLock:(unint64_t)lock
{
  y = touchPosition.y;
  x = touchPosition.x;
  dy = offset.dy;
  dx = offset.dx;
  v11 = position.y;
  v12 = position.x;
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  v15 = delegate;
  if (!lock)
  {
    goto LABEL_25;
  }

  v16 = 1.0;
  if (lock == 1)
  {
    [delegate centerForPlatterWithMenuViewDismissed];
    v22 = v21;
    [(_UIPlatterMenuDynamicsController *)self _updateSwipeEdgeMultipliersIfNeededForTouchPosition:x, y];
    if (v12 <= v22)
    {
      if (v12 >= v22)
      {
        goto LABEL_20;
      }

      trailingSwipeActionView = [v15 trailingSwipeActionView];

      if (!trailingSwipeActionView)
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
      leadingSwipeActionView = [v15 leadingSwipeActionView];

      if (!leadingSwipeActionView)
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

  if (lock != 2)
  {
LABEL_20:
    v18 = 1.0;
    goto LABEL_21;
  }

  [delegate centerForPlatterWithMenuViewPresented];
  if (v11 >= v17 || (v18 = 2.25, dy >= 0.0))
  {
    [v15 centerForPlatterWithMenuViewDismissed];
    if (v11 > v19 && dy > 0.0)
    {
      state = [(_UIPlatterMenuDynamicsController *)self state];
      v18 = 2.25;
      if (state != 2)
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
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  platterItem = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [animator updateItemFromCurrentState:platterItem];

  [(_UIPlatterMenuDynamicsController *)self centerForCurrentPlatterPosition];
  v7 = v6;
  v9 = v8;
  [delegate centerForMenuPresented];
  v11 = v10;
  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView bounds];
  v13 = v9 + CGRectGetHeight(v21) * 0.5;
  [delegate minimumSpacingBetweenPlatterAndMenu];
  v15 = v14 + v13;
  menuView = [(_UIPlatterMenuDynamicsController *)self menuView];
  [menuView bounds];
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
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  referenceView = [animator referenceView];

  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView center];
  v7 = v6;
  v9 = v8;
  platterView2 = [(_UIPlatterMenuDynamicsController *)self platterView];
  superview = [platterView2 superview];
  [referenceView convertPoint:superview fromView:{v7, v9}];
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
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  referenceView = [animator referenceView];
  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView center];
  v7 = v6;
  v9 = v8;
  platterView2 = [(_UIPlatterMenuDynamicsController *)self platterView];
  superview = [platterView2 superview];
  [referenceView convertPoint:superview fromView:{v7, v9}];
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
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  referenceView = [animator referenceView];
  menuView = [(_UIPlatterMenuDynamicsController *)self menuView];
  [menuView center];
  v7 = v6;
  v9 = v8;
  menuView2 = [(_UIPlatterMenuDynamicsController *)self menuView];
  superview = [menuView2 superview];
  [referenceView convertPoint:superview fromView:{v7, v9}];
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
  array = [MEMORY[0x1E695DF70] array];
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  behaviors = [animator behaviors];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___UIPlatterMenuDynamicsController_resetAnimatorToDefaultBehaviors__block_invoke;
  v8[3] = &unk_1E711AB88;
  v8[4] = self;
  v9 = array;
  v6 = array;
  [behaviors enumerateObjectsUsingBlock:v8];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___UIPlatterMenuDynamicsController_resetAnimatorToDefaultBehaviors__block_invoke_2;
  v7[3] = &unk_1E711AB60;
  v7[4] = self;
  [v6 enumerateObjectsUsingBlock:v7];
}

- (void)addBehaviorIfNotPresent:(id)present
{
  presentCopy = present;
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  behaviors = [animator behaviors];
  v6 = [behaviors containsObject:presentCopy];

  if ((v6 & 1) == 0)
  {
    animator2 = [(_UIPlatterMenuDynamicsController *)self animator];
    [animator2 addBehavior:presentCopy];
  }
}

- (BOOL)isDefaultAnimatorBehavior:(id)behavior
{
  behaviorCopy = behavior;
  platterMenuCollisionBounds = [(_UIPlatterMenuDynamicsController *)self platterMenuCollisionBounds];
  if (platterMenuCollisionBounds == behaviorCopy)
  {
    v9 = 1;
  }

  else
  {
    menuVerticalLockAttachment = [(_UIPlatterMenuDynamicsController *)self menuVerticalLockAttachment];
    if (menuVerticalLockAttachment == behaviorCopy)
    {
      v9 = 1;
    }

    else
    {
      noRotationBehavior = [(_UIPlatterMenuDynamicsController *)self noRotationBehavior];
      if (noRotationBehavior == behaviorCopy)
      {
        v9 = 1;
      }

      else
      {
        gestureAttachmentBehavior = [(_UIPlatterMenuDynamicsController *)self gestureAttachmentBehavior];
        v9 = gestureAttachmentBehavior == behaviorCopy;
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
    delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
    [delegate centerForPlatterWithMenuViewDismissed];
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
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  leadingSwipeActionView = [delegate leadingSwipeActionView];
  [delegate initialCenterForLeadingSwipeActionView];
  v5 = v4;
  v7 = v6;
  trailingSwipeActionView = [delegate trailingSwipeActionView];
  [delegate initialCenterForTrailingSwipeActionView];
  v10 = v9;
  v12 = v11;
  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (leadingSwipeActionView)
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

    [delegate platterMenuDynamicsController:self didMoveSwipeView:leadingSwipeActionView toPosition:{v22, v7}];
  }

  if (trailingSwipeActionView)
  {
    containerView = [(_UIPlatterMenuDynamicsController *)self containerView];
    [containerView bounds];
    Width = CGRectGetWidth(v32);
    v33.origin.x = v15;
    v33.origin.y = v17;
    v33.size.width = v19;
    v33.size.height = v21;
    v25 = Width - CGRectGetMaxX(v33);

    containerView2 = [(_UIPlatterMenuDynamicsController *)self containerView];
    [containerView2 bounds];
    v27 = CGRectGetWidth(v34) + v25 * -0.5;

    if (v27 <= v10)
    {
      v28 = v27;
    }

    else
    {
      v28 = v10;
    }

    [delegate platterMenuDynamicsController:self didMoveSwipeView:trailingSwipeActionView toPosition:{v28, v12}];
  }
}

- (void)_updateSwipeEdgeMultipliersIfNeededForTouchPosition:(CGPoint)position
{
  x = position.x;
  [(_UIPlatterMenuDynamicsController *)self setLeadingSwipeEdgeMultiplier:1.0, position.y];
  [(_UIPlatterMenuDynamicsController *)self setTrailingSwipeEdgeMultiplier:1.0];
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  [delegate centerForPlatterWithMenuViewDismissed];
  v7 = v6;

  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView center];
  v10 = v9;

  if (v10 >= v7)
  {
    if (v10 > v7)
    {
      containerView = [(_UIPlatterMenuDynamicsController *)self containerView];
      [containerView bounds];
      Width = CGRectGetWidth(v24);

      platterView2 = [(_UIPlatterMenuDynamicsController *)self platterView];
      [platterView2 bounds];
      v17 = CGRectGetWidth(v25);
      platterView3 = [(_UIPlatterMenuDynamicsController *)self platterView];
      [platterView3 center];
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
  animator = [(_UIPlatterMenuDynamicsController *)self animator];
  platterItem = [(_UIPlatterMenuDynamicsController *)self platterItem];
  [animator updateItemFromCurrentState:platterItem];

  platterView = [(_UIPlatterMenuDynamicsController *)self platterView];
  [platterView center];
  v7 = v6;
  delegate = [(_UIPlatterMenuDynamicsController *)self delegate];
  [delegate centerForPlatterWithMenuViewDismissed];
  LOBYTE(platterItem) = vabdd_f64(v7, v9) < 2.0;

  return platterItem;
}

- (void)_configureFeedbackGenerator
{
  v3 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration defaultConfiguration];
  v7 = [v3 tweakedConfigurationForClass:objc_opt_class() usage:@"swipeAction"];

  v4 = [_UIStatesFeedbackGenerator alloc];
  containerView = [(_UIPlatterMenuDynamicsController *)self containerView];
  v6 = [(_UIStatesFeedbackGenerator *)v4 initWithConfiguration:v7 view:containerView];
  [(_UIPlatterMenuDynamicsController *)self setSwipeFeedbackGenerator:v6];
}

- (void)_activateFeedbackIfNeeded
{
  swipeFeedbackGenerator = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
  isActive = [swipeFeedbackGenerator isActive];

  if ((isActive & 1) == 0)
  {
    swipeFeedbackGenerator2 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
    [swipeFeedbackGenerator2 activateWithCompletionBlock:0];
  }
}

- (void)_deactivateFeedbackIfNeeded
{
  swipeFeedbackGenerator = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
  isActive = [swipeFeedbackGenerator isActive];

  if (isActive)
  {
    swipeFeedbackGenerator2 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
    [swipeFeedbackGenerator2 deactivate];
  }
}

- (void)_fireConfirmFeedbackIfNeededForInitialSelectionState:(BOOL)state finalSelectionState:(BOOL)selectionState
{
  selectionStateCopy = selectionState;
  stateCopy = state;
  swipeFeedbackGenerator = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
  isActive = [swipeFeedbackGenerator isActive];

  if (isActive)
  {
    if (!selectionStateCopy || stateCopy)
    {
      if (!stateCopy || selectionStateCopy)
      {
        return;
      }

      swipeFeedbackGenerator2 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
      v9 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration openState];
    }

    else
    {
      swipeFeedbackGenerator2 = [(_UIPlatterMenuDynamicsController *)self swipeFeedbackGenerator];
      v9 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration confirmState];
    }

    v10 = v9;
    [swipeFeedbackGenerator2 transitionToState:v9 ended:1];
  }
}

- (void)setLeadingSwipeActionViewSelected:(BOOL)selected
{
  leadingSwipeActionViewSelected = self->_leadingSwipeActionViewSelected;
  self->_leadingSwipeActionViewSelected = selected;
  [(_UIPlatterMenuDynamicsController *)self _fireConfirmFeedbackIfNeededForInitialSelectionState:leadingSwipeActionViewSelected finalSelectionState:?];
}

- (void)setTrailingSwipeActionViewSelected:(BOOL)selected
{
  trailingSwipeActionViewSelected = self->_trailingSwipeActionViewSelected;
  self->_trailingSwipeActionViewSelected = selected;
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