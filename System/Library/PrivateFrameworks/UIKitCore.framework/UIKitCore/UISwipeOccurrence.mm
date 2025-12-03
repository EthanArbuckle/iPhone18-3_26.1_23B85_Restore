@interface UISwipeOccurrence
+ (Class)pullViewClass;
- ($A7B7FA971CD029BAA4A09478E9E1AEDA)prepareWithSwipeDirection:(SEL)direction configuration:(unint64_t)configuration;
- ($B18736ADBBD355D2E16F2B3CA0B0347D)currentSwipeInfo;
- (BOOL)_isSwipeDirectionExposingLeadingEdgePullView:(unint64_t)view;
- (BOOL)isDynamicPullView;
- (BOOL)shouldDismissWithTouchLocation:(CGPoint)location;
- (CGRect)_frameForPullView:(id)view inSwipedItem:(id)item withContainer:(id)container;
- (CGRect)swipedViewRestingFrame;
- (NSString)description;
- (UIEdgeInsets)extraInsets;
- (UIEdgeInsets)pullViewInsets;
- (UISwipeOccurrence)initWithController:(id)controller indexPath:(id)path defaultStyle:(unint64_t)style;
- (double)_extraOffsetForOffset:(double)offset withDirection:(unint64_t)direction;
- (double)confirmationDistanceForPrimaryActionInSwipeActionPullView:(id)view;
- (id)_actionView;
- (id)_pullViewForLeadingEdge:(BOOL)edge;
- (id)_pullViewForSwipeDirection:(unint64_t)direction;
- (id)lockActionViewForAnimation;
- (unint64_t)_styleForConfiguration:(id)configuration;
- (unint64_t)_swipeDirectionForPullView:(id)view;
- (void)_executeLifecycleForPerformedAction:(id)action sourceView:(id)view completionHandler:(id)handler;
- (void)_forceTeardown;
- (void)_freezeSwipedViewInsets;
- (void)_moveItemWithSwipeInfo:(id *)info tracking:(BOOL)tracking alongsideAnimations:(id)animations completion:(id)completion;
- (void)_performSwipeAction:(id)action inPullView:(id)view swipeInfo:(id *)info;
- (void)_removeAndResetPullViewImmediately:(id)immediately;
- (void)_removePullViewImmediately:(id)immediately;
- (void)_resetItemWithSwipeInfo:(id *)info animated:(BOOL)animated deletion:(BOOL)deletion completion:(id)completion;
- (void)_transitionToState:(int64_t)state;
- (void)_unfreezeSwipedViewInsets;
- (void)_updateLayoutUsingCurrentSwipeInfo:(BOOL)info;
- (void)_updatePullView:(id)view;
- (void)_updateSwipedStateOnSwipedView:(BOOL)view;
- (void)beginSwipeTracking:(BOOL)tracking;
- (void)endSwipe;
- (void)performPrimaryActionWithSwipeInfo:(id *)info;
- (void)resetAnimated:(BOOL)animated completion:(id)completion;
- (void)setCurrentSwipeInfo:(id *)info;
- (void)setOffset:(double)offset;
- (void)setupManipulatorWithController:(id)controller;
- (void)unlockActionViewForAnimation:(id)animation;
- (void)updateLayout;
- (void)updateOffsetWithSwipeInfo:(id *)info isTracking:(BOOL)tracking completion:(id)completion;
- (void)updateSwipedView;
@end

@implementation UISwipeOccurrence

- (UISwipeOccurrence)initWithController:(id)controller indexPath:(id)path defaultStyle:(unint64_t)style
{
  controllerCopy = controller;
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeOccurrence.m" lineNumber:111 description:@"Index path must not be nil"];
  }

  v16.receiver = self;
  v16.super_class = UISwipeOccurrence;
  v11 = [(UISwipeOccurrence *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_controller, controllerCopy);
    [(UISwipeOccurrence *)v12 setIndexPath:pathCopy];
    v12->_defaultStyle = style;
    if ([controllerCopy _prefersRTL])
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    *&v12->_flags = *&v12->_flags & 0xEF | v13;
    [(UISwipeOccurrence *)v12 setupManipulatorWithController:controllerCopy];
    [(UISwipeOccurrence *)v12 updateSwipedView];
  }

  return v12;
}

- (void)setupManipulatorWithController:(id)controller
{
  controllerCopy = controller;
  _internalSwipeActionHost = [controllerCopy _internalSwipeActionHost];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || ([controllerCopy _internalSwipeActionHost], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "swipeViewManipulatorForSwipeActionController:", controllerCopy), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = objc_alloc_init(_UIDefaultSwipeViewManipulator);
  }

  manipulator = self->_manipulator;
  self->_manipulator = v7;
}

- (unint64_t)_styleForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy)
  {
    _swipeActionsStyle = [configurationCopy _swipeActionsStyle];
    p_defaultStyle = (&unk_18A682720 + 8 * _swipeActionsStyle - 8);
    if ((_swipeActionsStyle - 1) >= 3)
    {
      p_defaultStyle = &self->_defaultStyle;
    }
  }

  else
  {
    p_defaultStyle = &self->_defaultStyle;
  }

  v8 = *p_defaultStyle;

  return v8;
}

- ($A7B7FA971CD029BAA4A09478E9E1AEDA)prepareWithSwipeDirection:(SEL)direction configuration:(unint64_t)configuration
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a5;
  if (configuration)
  {
    self->_direction = configuration == 2;
    self->_style = [(UISwipeOccurrence *)self _styleForConfiguration:v9];
    if (v9)
    {
      [v9 _roundedStyleCornerRadius];
    }

    else
    {
      v10 = 0.0;
    }

    self->_roundedStyleCornerRadius = v10;
    v15 = [(UISwipeOccurrence *)self _pullViewForSwipeDirection:configuration];
    *&retstr->var0 = 0u;
    *&retstr->var3 = 0u;
    [(UISwipeOccurrence *)self _removeAndResetPullViewImmediately:self->_leadingPullView];
    [(UISwipeOccurrence *)self _removeAndResetPullViewImmediately:self->_trailingPullView];
    self->_configuredDirection = 0;
    actions = [v9 actions];
    if ([actions count])
    {
      [v15 setAutosizesButtons:{objc_msgSend(v9, "_autosizesButtons")}];
      [v15 configureWithSwipeActions:actions];
      if (self->_swipedView)
      {
        directionCopy = direction;
        WeakRetained = objc_loadWeakRetained(&self->_controller);
        _internalSwipeActionHost = [WeakRetained _internalSwipeActionHost];
        v19 = objc_opt_respondsToSelector();

        if ((v19 & 1) == 0)
        {
          superview = [(_UISwipedView *)self->_swipedView superview];
          [superview addSubview:v15];
          goto LABEL_18;
        }

        v20 = objc_loadWeakRetained(&self->_controller);
        _internalSwipeActionHost2 = [v20 _internalSwipeActionHost];
        v22 = objc_loadWeakRetained(&self->_controller);
        v23 = [_internalSwipeActionHost2 swipeActionController:v22 insertActionsView:v15 forItemAtIndexPath:self->_indexPath];

        if (v23)
        {
          superview2 = [v15 superview];

          if (superview2)
          {
LABEL_19:
            primarySwipeAction = [v15 primarySwipeAction];
            if ([v9 performsFirstActionWithFullSwipe])
            {
              _menu = [primarySwipeAction _menu];
              v31 = _menu == 0;
            }

            else
            {
              v31 = 0;
            }

            *(&retstr->var2 + 5) = 0;
            *(&retstr->var2 + 1) = 0;
            isDestructive = [primarySwipeAction isDestructive];
            [v15 openThreshold];
            v34 = v33;
            [v15 confirmationThreshold];
            retstr->var0 = configuration;
            retstr->var1 = isDestructive;
            retstr->var2 = v31;
            retstr->var3 = v34;
            retstr->var4 = v35;
            self->_configuredDirection = configuration;
            self->_styleFromConfiguration = [v9 _swipeActionsStyle];
            [(UISwipeOccurrence *)self _updatePullView:v15];
            if (_UISolariumSwipeActionsEnabled())
            {
              [v15 setPrimaryActionCanBeTriggeredBySwipe:v31];
            }

            [(UISwipeOccurrence *)self setActive:1];
            [(UISwipeOccurrence *)self _updateSwipedStateOnSwipedView:1];
            if ([(_UISwipedView *)self->_swipedView isUserInteractionEnabled])
            {
              [(_UISwipedView *)self->_swipedView _resignIfContainsFirstResponder];
              if ([(UISwipeOccurrence *)self active])
              {
                *&self->_flags |= 8u;
                [(_UISwipedView *)self->_swipedView setUserInteractionEnabled:0];
              }
            }

            if (![(UISwipeOccurrence *)self active])
            {
              [(UISwipeOccurrence *)self _removeAndResetPullViewImmediately:v15];
              self->_styleFromConfiguration = 0;
            }

            goto LABEL_29;
          }

          superview = [MEMORY[0x1E696AAA8] currentHandler];
          v26 = NSStringFromSelector(sel_swipeActionController_insertActionsView_forItemAtIndexPath_);
          v27 = objc_loadWeakRetained(&self->_controller);
          swipeActionHost = [v27 swipeActionHost];
          [superview handleFailureInMethod:directionCopy object:self file:@"UISwipeOccurrence.m" lineNumber:187 description:{@"Actions view not added to view hierarchy after calling -%@ on %@", v26, swipeActionHost}];

LABEL_18:
          goto LABEL_19;
        }
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v12 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v13 = NSStringFromSelector(direction);
    v14 = NSStringFromUISwipeDirection(0);
    *buf = 138412546;
    v39 = v13;
    v40 = 2112;
    v41 = v14;
    _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "UIKit internal inconsistency: -%@ was called with a swipe direction of %@.", buf, 0x16u);
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v11 = *(__UILogGetCategoryCachedImpl("Assert", &prepareWithSwipeDirection_configuration____s_category) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = NSStringFromSelector(direction);
    v14 = NSStringFromUISwipeDirection(0);
    *buf = 138412546;
    v39 = v13;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "UIKit internal inconsistency: -%@ was called with a swipe direction of %@.", buf, 0x16u);
    goto LABEL_7;
  }

LABEL_9:
  *&retstr->var0 = 0u;
  *&retstr->var3 = 0u;
LABEL_30:

  return result;
}

- (void)setOffset:(double)offset
{
  if (self->_state == 2)
  {
    v5 = 1;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeOccurrence.m" lineNumber:259 description:@"Manually modifyng the offset is only allowed while in .tracking state."];

    v5 = self->_state == 2;
  }

  v9 = *&self->_currentSwipeInfo.direction;
  *v11 = *(&self->_currentSwipeInfo.animated + 1);
  *&v11[3] = *(&self->_currentSwipeInfo.animated + 1);
  springStiffness = self->_currentSwipeInfo.springStiffness;
  v10 = 0;
  offsetCopy = offset;
  v13 = 0;
  v14 = springStiffness;
  [(UISwipeOccurrence *)self updateOffsetWithSwipeInfo:&v9 isTracking:v5 completion:0];
}

- (void)beginSwipeTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  if (self->_swipedView)
  {
    if (objc_opt_respondsToSelector())
    {
      [(_UISwipeViewManipulator *)self->_manipulator removeAnimationsFromSwipedView:self->_swipedView atIndexPath:self->_indexPath];
    }

    [(UISwipeOccurrence *)self _freezeSwipedViewInsets];
  }

  [(UISwipeActionPullViewCommonProtocol *)self->_leadingPullView freeze];
  [(UISwipeActionPullViewCommonProtocol *)self->_trailingPullView freeze];
  if (trackingCopy)
  {

    [(UISwipeOccurrence *)self _transitionToState:2];
  }
}

- (void)_forceTeardown
{
  if ((*&self->_flags & 2) == 0)
  {
    *&self->_flags |= 2u;
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [WeakRetained swipeOccurrence:self willFinishWithDeletion:0];
  }

  [(UISwipeOccurrence *)self endSwipe];
  self->_styleFromConfiguration = 0;
}

- (void)endSwipe
{
  if ((*&self->_flags & 4) == 0)
  {
    [(UISwipeOccurrence *)self _unfreezeSwipedViewInsets];
    *&self->_currentSwipeInfo.initialSpringVelocity = 0u;
    *&self->_currentSwipeInfo.animated = 0u;
    *&self->_currentSwipeInfo.direction = 0u;
    *&self->_flags |= 4u;
    if ([(UISwipeOccurrence *)self isDynamicPullView])
    {
      [(UISwipeOccurrence *)self _removePullViewImmediately:self->_leadingPullView];
      [(UISwipeOccurrence *)self _removePullViewImmediately:self->_trailingPullView];
    }

    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [WeakRetained swipeOccurrenceDidFinish:self];
  }
}

- (void)updateOffsetWithSwipeInfo:(id *)info isTracking:(BOOL)tracking completion:(id)completion
{
  trackingCopy = tracking;
  completionCopy = completion;
  if (info->var3 != 0.0 || trackingCopy)
  {
    v13 = *&info->var2;
    v14 = *&info->var0;
    v15 = v13;
    v16 = *&info->var4;
    [(UISwipeOccurrence *)self _moveItemWithSwipeInfo:&v14 tracking:trackingCopy alongsideAnimations:0 completion:completionCopy];
    if (trackingCopy)
    {
      v12 = 2;
      goto LABEL_7;
    }
  }

  else
  {
    var2 = info->var2;
    v10 = *&info->var2;
    v11 = *&info->var4;
    v14 = *&info->var0;
    v15 = v10;
    v16 = v11;
    [(UISwipeOccurrence *)self _resetItemWithSwipeInfo:&v14 animated:var2 deletion:0 completion:completionCopy];
  }

  v12 = info->var3 != 0.0;
LABEL_7:
  [(UISwipeOccurrence *)self _transitionToState:v12];
}

- (CGRect)swipedViewRestingFrame
{
  if (objc_opt_respondsToSelector())
  {
    [(_UISwipeViewManipulator *)self->_manipulator restingFrameForSwipedView:self->_swipedView atIndexPath:self->_indexPath];
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_moveItemWithSwipeInfo:(id *)info tracking:(BOOL)tracking alongsideAnimations:(id)animations completion:(id)completion
{
  trackingCopy = tracking;
  animationsCopy = animations;
  completionCopy = completion;
  self->_offset = info->var3;
  if (self->_swipedView)
  {
    v12 = *&info->var0;
    v13 = *&info->var2;
    *&self->_currentSwipeInfo.initialSpringVelocity = *&info->var4;
    *&self->_currentSwipeInfo.animated = v13;
    *&self->_currentSwipeInfo.direction = v12;
    if (info->var2 || _UISolariumSwipeActionsEnabled() && info->var3 != 0.0)
    {
      v14 = [_UISwipeAnimationFactory animatorForMoveWithOccurrence:self];
    }

    else
    {
      v14 = 0;
    }

    if ((*&self->_flags & 0x60) == 0)
    {
      manipulator = self->_manipulator;
      swipedView = self->_swipedView;
      indexPath = self->_indexPath;
      v18 = *&info->var2;
      v25[0] = *&info->var0;
      v25[1] = v18;
      v25[2] = *&info->var4;
      [(_UISwipeViewManipulator *)manipulator moveSwipedView:swipedView atIndexPath:indexPath withSwipeInfo:v25 animator:v14];
    }

    if (info->var0)
    {
      v19 = [(UISwipeOccurrence *)self _pullViewForSwipeDirection:?];
      [v19 setState:info->var1];
      var3 = info->var3;
      [(UISwipeOccurrence *)self _extraOffsetForOffset:info->var0 withDirection:var3];
      v22 = v21;
      if (![(UISwipeOccurrence *)self isDynamicPullView])
      {
        [v19 moveToOffset:v14 extraOffset:var3 animator:v22 usingSpringWithStiffness:info->var5 initialVelocity:info->var4];
      }

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v19 = 0;
      var3 = 0.0;
      if (v14)
      {
LABEL_13:
        if (animationsCopy)
        {
          [v14 addAnimations:animationsCopy];
        }

        if (completionCopy)
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __84__UISwipeOccurrence__moveItemWithSwipeInfo_tracking_alongsideAnimations_completion___block_invoke;
          v23[3] = &unk_1E70FFB68;
          v24 = completionCopy;
          [v14 addCompletion:v23];
        }

        if ([(UISwipeOccurrence *)self isDynamicPullView]&& info->var0)
        {
          [v19 moveToOffset:v14 animator:trackingCopy interactive:var3];
        }

        else
        {
          [v14 startAnimation];
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    if ([(UISwipeOccurrence *)self isDynamicPullView]&& info->var0)
    {
      [v19 moveToOffset:0 animator:trackingCopy interactive:var3];
    }

    if (animationsCopy)
    {
      animationsCopy[2](animationsCopy);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)resetAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy)
  {
    v10 = UISwipeInfoNoneAnimated;
    v11 = unk_18A6826F8;
    v12 = xmmword_18A682708;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  if ([(UISwipeOccurrence *)self state]== 4)
  {
    currentAction = [(UISwipeOccurrence *)self currentAction];
    v8 = [currentAction style] == 1;
  }

  else
  {
    v8 = 0;
  }

  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  [(UISwipeOccurrence *)self _resetItemWithSwipeInfo:v9 animated:animatedCopy deletion:v8 completion:completionCopy];
}

- (void)_resetItemWithSwipeInfo:(id *)info animated:(BOOL)animated deletion:(BOOL)deletion completion:(id)completion
{
  deletionCopy = deletion;
  animatedCopy = animated;
  completionCopy = completion;
  [(UISwipeOccurrence *)self setActive:0];
  if (self->_configuredDirection)
  {
    if (animatedCopy)
    {
      if ((self->_state & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v11 = *&self->_flags & 1;
      }

      else
      {
        v11 = 1;
      }

      v25 = v11;
    }

    else
    {
      v25 = 0;
    }

    currentAction = self->_currentAction;
    if (currentAction)
    {
      [(UIContextualAction *)currentAction cancel];
      v13 = self->_currentAction;
      self->_currentAction = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__UISwipeOccurrence__resetItemWithSwipeInfo_animated_deletion_completion___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v14 = _Block_copy(aBlock);
    v15 = self->_leadingPullView;
    v16 = self->_trailingPullView;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74__UISwipeOccurrence__resetItemWithSwipeInfo_animated_deletion_completion___block_invoke_2;
    v29[3] = &unk_1E7122B08;
    v29[4] = self;
    v17 = v15;
    v30 = v17;
    v18 = v16;
    v31 = v18;
    v33 = deletionCopy;
    v32 = completionCopy;
    v19 = _Block_copy(v29);
    v27 = 0u;
    v28 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    swipeHandler = [WeakRetained swipeHandler];
    v22 = swipeHandler;
    if (swipeHandler)
    {
      [swipeHandler currentSwipeConfig];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    if (!info->var0)
    {
      info->var2 = v25;
      info->var0 = v27;
      if (v25)
      {
        *&info->var4 = xmmword_18A64B720;
      }

      info->var3 = 0.0;
    }

    self->_configuredDirection = 0;
    *&self->_flags |= 2u;
    v23 = objc_loadWeakRetained(&self->_controller);
    [v23 swipeOccurrence:self willFinishWithDeletion:deletionCopy];

    if (deletionCopy)
    {
      [(UISwipeOccurrence *)self endSwipe];
    }

    v24 = *&info->var2;
    v26[0] = *&info->var0;
    v26[1] = v24;
    v26[2] = *&info->var4;
    [(UISwipeOccurrence *)self _moveItemWithSwipeInfo:v26 tracking:0 alongsideAnimations:v14 completion:v19];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

uint64_t __74__UISwipeOccurrence__resetItemWithSwipeInfo_animated_deletion_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 8) != 0)
  {
    [*(v2 + 136) setUserInteractionEnabled:1];
    v2 = *(a1 + 32);
  }

  return [v2 _updateSwipedStateOnSwipedView:0];
}

uint64_t __74__UISwipeOccurrence__resetItemWithSwipeInfo_animated_deletion_completion___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) active] & 1) == 0)
  {
    [*(a1 + 32) _removeAndResetPullViewImmediately:*(a1 + 40)];
    [*(a1 + 32) _removeAndResetPullViewImmediately:*(a1 + 48)];
    if ((*(a1 + 64) & 1) == 0)
    {
      [*(a1 + 32) endSwipe];
    }
  }

  *(*(a1 + 32) + 48) = 0;
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)updateLayout
{
  if (!self->_currentAction)
  {
    [(UISwipeOccurrence *)self _updateLayoutUsingCurrentSwipeInfo:0];
  }
}

- (void)_updateLayoutUsingCurrentSwipeInfo:(BOOL)info
{
  infoCopy = info;
  if (![(UISwipeOccurrence *)self active])
  {
    return;
  }

  state = [(UISwipeOccurrence *)self state];
  if (state <= 5 && ((1 << state) & 0x25) != 0 || (v24[0] = 0, *(v24 + 3) = 0, v23 = xmmword_18A6826D8, infoCopy))
  {
    direction = self->_currentSwipeInfo.direction;
    targetSwipeState = self->_currentSwipeInfo.targetSwipeState;
    v24[0] = *(&self->_currentSwipeInfo.animated + 1);
    *(v24 + 3) = *(&self->_currentSwipeInfo.animated + 1);
    xOffset = self->_currentSwipeInfo.xOffset;
    v23 = *&self->_currentSwipeInfo.initialSpringVelocity;
    if (!direction)
    {
      return;
    }
  }

  else
  {
    memset(v22, 0, 32);
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    swipeHandler = [WeakRetained swipeHandler];
    v17 = swipeHandler;
    if (swipeHandler)
    {
      [swipeHandler currentSwipeConfig];
    }

    else
    {
      memset(v22, 0, 32);
    }

    targetSwipeState = 0;
    direction = *&v22[0];
    xOffset = *&v22[1];
    if (!*&v22[0])
    {
      return;
    }
  }

  [(UISwipeOccurrence *)self _unfreezeSwipedViewInsets];
  memset(v22, 0, sizeof(v22));
  [(UISwipeOccurrence *)self _moveItemWithSwipeInfo:v22 tracking:0 alongsideAnimations:0 completion:0];
  v9 = [(UISwipeOccurrence *)self _pullViewForSwipeDirection:direction];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v22[0] = *MEMORY[0x1E695EFD0];
  v22[1] = v10;
  v22[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v9 setTransform:v22];
  [v9 frame];
  Height = CGRectGetHeight(v25);
  [(UISwipeOccurrence *)self _updatePullView:v9];
  [(UISwipeOccurrence *)self _freezeSwipedViewInsets];
  if ([(UISwipeOccurrence *)self isDynamicPullView])
  {
    [v9 frame];
    if (Height != CGRectGetHeight(v26))
    {
      memset(v22, 0, 32);
      v12 = objc_loadWeakRetained(&self->_controller);
      swipeHandler2 = [v12 swipeHandler];
      v14 = swipeHandler2;
      if (swipeHandler2)
      {
        [swipeHandler2 currentSwipeConfig];
      }

      else
      {
        memset(v22, 0, 32);
      }

      [v9 openThreshold];
      *&v22[1] = v18;
      v19 = objc_loadWeakRetained(&self->_controller);
      swipeHandler3 = [v19 swipeHandler];
      v21[0] = v22[0];
      v21[1] = v22[1];
      [swipeHandler3 updateCurrentSwipeConfig:v21];

      direction = *&v22[0];
      xOffset = *&v22[1];
    }
  }

  *&v22[0] = direction;
  *(&v22[0] + 1) = targetSwipeState;
  LOBYTE(v22[1]) = 0;
  *(&v22[1] + 1) = v24[0];
  DWORD1(v22[1]) = *(v24 + 3);
  *(&v22[1] + 1) = xOffset;
  v22[2] = v23;
  [(UISwipeOccurrence *)self _moveItemWithSwipeInfo:v22 tracking:0 alongsideAnimations:0 completion:0];
}

- (void)updateSwipedView
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v4 = [WeakRetained _swipedViewForItemAtIndexPath:self->_indexPath];
  swipedView = self->_swipedView;
  self->_swipedView = v4;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UISwipedView *)self->_swipedView frame];
    MinX = CGRectGetMinX(v9);
    manipulator = self->_manipulator;

    [(_UISwipeViewManipulator *)manipulator setSwipedViewRestingOffset:MinX];
  }
}

- (void)_updateSwipedStateOnSwipedView:(BOOL)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    swipedView = self->_swipedView;

    [(_UISwipedView *)swipedView _setSwiped:viewCopy];
  }
}

- (void)_freezeSwipedViewInsets
{
  [(_UISwipedView *)self->_swipedView _setSafeAreaInsetsFrozen:1];
  swipedView = self->_swipedView;

  [(_UISwipedView *)swipedView _setDontUpdateInferredLayoutMargins:1];
}

- (void)_unfreezeSwipedViewInsets
{
  [(_UISwipedView *)self->_swipedView _setSafeAreaInsetsFrozen:0];
  [(_UISwipedView *)self->_swipedView _setDontUpdateInferredLayoutMargins:0];
  swipedView = self->_swipedView;

  [(_UISwipedView *)swipedView _updateInferredLayoutMargins];
}

- (void)performPrimaryActionWithSwipeInfo:(id *)info
{
  v5 = [(UISwipeOccurrence *)self _pullViewForSwipeDirection:info->var0];
  primarySwipeAction = [v5 primarySwipeAction];
  v7 = *&info->var2;
  v8[0] = *&info->var0;
  v8[1] = v7;
  v8[2] = *&info->var4;
  [(UISwipeOccurrence *)self _performSwipeAction:primarySwipeAction inPullView:v5 swipeInfo:v8];
}

- (BOOL)shouldDismissWithTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  containerView = [WeakRetained containerView];
  v8 = [containerView hitTest:0 withEvent:{x, y}];

  p_leadingPullView = &self->_leadingPullView;
  window = [(UISwipeActionPullViewCommonProtocol *)self->_leadingPullView window];

  if (!window)
  {
    trailingPullView = self->_trailingPullView;
    p_trailingPullView = &self->_trailingPullView;
    window2 = [(UISwipeActionPullViewCommonProtocol *)trailingPullView window];

    if (!window2)
    {
      LOBYTE(v14) = 1;
      goto LABEL_5;
    }

    p_leadingPullView = p_trailingPullView;
  }

  v14 = [v8 isDescendantOfView:*p_leadingPullView] ^ 1;
LABEL_5:

  return v14;
}

- (void)_transitionToState:(int64_t)state
{
  flags = self->_flags;
  *&self->_flags = flags | 1;
  state = self->_state;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = currentHandler;
    v11 = @".triggered";
    if (state == 5)
    {
      v11 = @".cancelled";
    }

    if ((state - 1) > 4)
    {
      v12 = @".closed";
    }

    else
    {
      v12 = off_1E7122B78[state - 1];
    }

    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeOccurrence.m" lineNumber:717 description:{@"Transitioning from %@ to %@ is not a valid transition.", v11, v12}];
  }

  self->_state = state;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained swipeOccurrence:self didChangeStateFrom:state];

  *&self->_flags = *&self->_flags & 0xFE | flags & 1;
}

- (void)_executeLifecycleForPerformedAction:(id)action sourceView:(id)view completionHandler:(id)handler
{
  actionCopy = action;
  viewCopy = view;
  handlerCopy = handler;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_controller);
  indexPath = [(UISwipeOccurrence *)selfCopy indexPath];
  objc_storeStrong(&selfCopy->_currentAction, action);
  swipeActionHost = [WeakRetained swipeActionHost];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    swipeActionHost2 = [WeakRetained swipeActionHost];
    [swipeActionHost2 swipeActionController:WeakRetained willPerformAction:actionCopy atIndexPath:indexPath];
  }

  [(UISwipeOccurrence *)selfCopy _transitionToState:3];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v19 = selfCopy->_actionExecutionCounter + 1;
  selfCopy->_actionExecutionCounter = v19;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("SwipeActions", &_MergedGlobals_1298);
  v21 = *(CategoryCachedImpl + 8);
  v22 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), selfCopy);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v22;
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "ExecuteSwipeActionHandler", "", buf, 2u);
    }
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __86__UISwipeOccurrence__executeLifecycleForPerformedAction_sourceView_completionHandler___block_invoke;
  v35[3] = &unk_1E7122B30;
  v40 = &v49;
  v35[4] = selfCopy;
  v42 = a2;
  v43 = v19;
  v24 = handlerCopy;
  v39 = v24;
  v25 = actionCopy;
  v36 = v25;
  v26 = WeakRetained;
  v37 = v26;
  v27 = indexPath;
  v38 = v27;
  v41 = &v45;
  [v25 executeHandlerWithView:viewCopy completionHandler:v35];
  v28 = __UILogGetCategoryCachedImpl("SwipeActions", &qword_1ED4A0F40);
  v29 = *(v28 + 8);
  v30 = os_signpost_id_make_with_pointer(*(v28 + 8), selfCopy);
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v31 = v30;
    if (os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v29, OS_SIGNPOST_INTERVAL_END, v31, "ExecuteSwipeActionHandler", "", buf, 2u);
    }
  }

  swipeActionHost3 = [v26 swipeActionHost];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    swipeActionHost4 = [v26 swipeActionHost];
    [swipeActionHost4 swipeActionController:v26 didPerformAction:v25 atIndexPath:v27];
  }

  *(v46 + 24) = 1;
  if (*(v50 + 24) == 1 && (selfCopy->_state & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    [(UISwipeOccurrence *)selfCopy _transitionToState:5];
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
}

void __86__UISwipeOccurrence__executeLifecycleForPerformedAction_sourceView_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 72) + 8);
  if (*(v4 + 24) == 1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"UISwipeOccurrence.m" lineNumber:798 description:@"A UIContextualAction's completionHandler was called multiple times."];

    v4 = *(*(a1 + 72) + 8);
  }

  *(v4 + 24) = 1;
  v5 = *(a1 + 32);
  if (v5[2] != *(a1 + 96))
  {
    (*(*(a1 + 64) + 16))();
    UIContextualActionAlertForOutdatedCompletionHandlerExecution(*(a1 + 40));
    goto LABEL_16;
  }

  if (([v5 state] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    if (a2)
    {
      if ([*(a1 + 40) style] != 1)
      {
        v6 = *(a1 + 32);
        v7 = 4;
        goto LABEL_14;
      }

      if (*(*(*(a1 + 80) + 8) + 24) != 1)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 32);
      if (v6[15] != 3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = 5;
LABEL_14:
    [v6 _transitionToState:v7];
  }

LABEL_15:
  (*(*(a1 + 64) + 16))();
LABEL_16:
  v8 = [*(a1 + 48) swipeActionHost];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v11 = [*(a1 + 48) swipeActionHost];
    [v11 swipeActionController:*(a1 + 48) didCompleteAction:*(a1 + 40) cancelled:a2 ^ 1u atIndexPath:*(a1 + 56)];
  }
}

- (void)_performSwipeAction:(id)action inPullView:(id)view swipeInfo:(id *)info
{
  actionCopy = action;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  indexPath = [(UISwipeOccurrence *)self indexPath];
  v12 = [WeakRetained _swipedViewForItemAtIndexPath:indexPath];

  if (v12 && ([(UISwipeOccurrence *)self state]& 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    [actionCopy executePreHandlerWithView:viewCopy];
    isDynamicPullView = [(UISwipeOccurrence *)self isDynamicPullView];
    offset = self->_offset;
    if (isDynamicPullView)
    {
      [viewCopy _performAction:actionCopy offset:offset];
    }

    else
    {
      if (self->_direction)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      [(UISwipeOccurrence *)self _extraOffsetForOffset:v15 withDirection:offset];
      [viewCopy _performAction:actionCopy offset:self->_offset extraOffset:v16];
    }

    memset(v37, 0, 7);
    var0 = info->var0;
    if (info->var0)
    {
      var1 = info->var1;
      var2 = info->var2;
      v37[0] = *(&info->var2 + 1);
      *(v37 + 3) = *(&info->var2 + 1);
      var3 = info->var3;
      var4 = info->var4;
      var5 = info->var5;
    }

    else
    {
      var0 = [(UISwipeOccurrence *)self _swipeDirectionForPullView:viewCopy];
      var5 = 1.0;
      var3 = 0.0;
      var2 = 1;
      var1 = 2;
      var4 = 0.0;
    }

    v23 = [viewCopy sourceViewForAction:actionCopy];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__UISwipeOccurrence__performSwipeAction_inPullView_swipeInfo___block_invoke;
    v24[3] = &unk_1E7122B58;
    v25 = WeakRetained;
    v26 = actionCopy;
    selfCopy = self;
    v28 = viewCopy;
    v29 = v12;
    v30 = var0;
    v31 = var1;
    v32 = var2;
    *v33 = v37[0];
    *&v33[3] = *(v37 + 3);
    v34 = var3;
    v35 = var4;
    v36 = var5;
    [(UISwipeOccurrence *)self _executeLifecycleForPerformedAction:v26 sourceView:v23 completionHandler:v24];
  }
}

void __62__UISwipeOccurrence__performSwipeAction_inPullView_swipeInfo___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) swipeActionHost];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ([*(a1 + 40) isDestructive])
    {
      v6 = a2 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = *(a1 + 48);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __62__UISwipeOccurrence__performSwipeAction_inPullView_swipeInfo___block_invoke_3;
      v25[3] = &unk_1E70F4688;
      v26 = *(a1 + 32);
      v8 = *(a1 + 40);
      v29 = a2;
      v9 = *(a1 + 48);
      v27 = v8;
      v28 = v9;
      v10 = *(a1 + 88);
      v30 = *(a1 + 72);
      v31 = v10;
      v32 = *(a1 + 104);
      [v7 _resetItemWithSwipeInfo:&v30 animated:1 deletion:0 completion:v25];

      v23 = v26;
    }

    else
    {
      v11 = [*(a1 + 32) containerView];
      [v11 layoutIfNeeded];

      [*(a1 + 48) _updateLayoutUsingCurrentSwipeInfo:1];
      [*(a1 + 56) setAutoresizesSubviews:0];
      [*(a1 + 56) setClipsToBounds:1];
      v12 = [*(a1 + 32) swipeActionHost];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v17 = [*(a1 + 48) indexPath];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __62__UISwipeOccurrence__performSwipeAction_inPullView_swipeInfo___block_invoke_2;
      v33[3] = &unk_1E7103358;
      v24 = *(a1 + 48);
      v18 = *(&v24 + 1);
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *&v21 = v19;
      *(&v21 + 1) = v20;
      v34 = v24;
      v35 = v21;
      v36 = a2;
      v22 = *(a1 + 88);
      v30 = *(a1 + 72);
      v31 = v22;
      v32 = *(a1 + 104);
      [v12 swipeActionController:v16 animateView:v13 actionsView:v14 forDestructiveAction:v15 atIndexPath:v17 withSwipeInfo:&v30 completion:v33];

      v23 = *(&v34 + 1);
    }
  }
}

void __62__UISwipeOccurrence__performSwipeAction_inPullView_swipeInfo___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  memset(v12, 0, sizeof(v12));
  [v2 _resetItemWithSwipeInfo:v12 animated:0 deletion:1 completion:0];
  [*(a1 + 40) setAutoresizesSubviews:1];
  [*(a1 + 40) setClipsToBounds:{objc_msgSend(*(a1 + 40), "buttonsUnderlapSwipedView")}];
  v3 = [*(a1 + 48) swipeActionHost];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 48) swipeActionHost];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = [*(a1 + 32) indexPath];
    [v5 swipeActionController:v6 didCompleteAnimationOfAction:v7 canceled:(v8 & 1) == 0 atIndexPath:v9];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 144);
  *(v10 + 144) = 0;
}

void __62__UISwipeOccurrence__performSwipeAction_inPullView_swipeInfo___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) swipeActionHost];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) swipeActionHost];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    v8 = [*(a1 + 48) indexPath];
    [v4 swipeActionController:v5 didCompleteAnimationOfAction:v6 canceled:(v7 & 1) == 0 atIndexPath:v8];
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 144);
  *(v9 + 144) = 0;
}

+ (Class)pullViewClass
{
  _UISolariumSwipeActionsEnabled();
  v2 = objc_opt_class();

  return v2;
}

- (BOOL)isDynamicPullView
{
  v2 = +[UISwipeOccurrence pullViewClass];
  v3 = objc_opt_class();

  return [(objc_class *)v2 isEqual:v3];
}

- (double)_extraOffsetForOffset:(double)offset withDirection:(unint64_t)direction
{
  result = 0.0;
  if (direction == 2)
  {
    if (offset > 0.0)
    {
      [(UISwipeOccurrence *)self extraInsets];
      return v7;
    }
  }

  else if (direction == 1 && offset < 0.0)
  {
    [(UISwipeOccurrence *)self extraInsets];
    return v6;
  }

  return result;
}

- (BOOL)_isSwipeDirectionExposingLeadingEdgePullView:(unint64_t)view
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    if (view - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v10 = 134217984;
        viewCopy2 = view;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Attempted to request the pull view for an unsupported swipe direction (%ld)", &v10, 0xCu);
      }

      goto LABEL_13;
    }
  }

  else if (view - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_isSwipeDirectionExposingLeadingEdgePullView____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      viewCopy2 = view;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Attempted to request the pull view for an unsupported swipe direction (%ld)", &v10, 0xCu);
    }

LABEL_13:
    v5 = (*&self->_flags >> 4) & 1;
    return view == 1 && v5;
  }

  v5 = (*&self->_flags >> 4) & 1;
  if (view == 2 && !v5)
  {
    return 1;
  }

  return view == 1 && v5;
}

- (id)_pullViewForSwipeDirection:(unint64_t)direction
{
  v3 = [(UISwipeOccurrence *)self _pullViewForLeadingEdge:[(UISwipeOccurrence *)self _isSwipeDirectionExposingLeadingEdgePullView:direction]];

  return v3;
}

- (unint64_t)_swipeDirectionForPullView:(id)view
{
  v13 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  trailingPullView = self->_trailingPullView;
  if (has_internal_diagnostics)
  {
    if (trailingPullView != viewCopy && self->_leadingPullView != viewCopy)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v11 = 138412290;
        v12 = viewCopy;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Attempted to request the swipe direction for an unknown pull view: %@", &v11, 0xCu);
      }
    }
  }

  else if (trailingPullView != viewCopy && self->_leadingPullView != viewCopy)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_swipeDirectionForPullView____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = viewCopy;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Attempted to request the swipe direction for an unknown pull view: %@", &v11, 0xCu);
    }
  }

  if ((self->_leadingPullView == viewCopy) != ((*&self->_flags & 0x10) == 0))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (id)_pullViewForLeadingEdge:(BOOL)edge
{
  edgeCopy = edge;
  if (edge)
  {
    p_leadingPullView = &self->_leadingPullView;
    leadingPullView = self->_leadingPullView;
    if (!leadingPullView)
    {
      if (self->_trailingPullView)
      {
        goto LABEL_14;
      }

LABEL_8:
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      swipeActionHost = [WeakRetained swipeActionHost];
      v10 = objc_opt_respondsToSelector();

      v11 = objc_loadWeakRetained(&self->_controller);
      v12 = v11;
      if (v10)
      {
        swipeActionHost2 = [v11 swipeActionHost];
        v14 = objc_loadWeakRetained(&self->_controller);
        [swipeActionHost2 swipeActionController:v14 extraInsetsForItemAtIndexPath:self->_indexPath];
        self->_extraInsets.top = v15;
        self->_extraInsets.left = v16;
        self->_extraInsets.bottom = v17;
        self->_extraInsets.right = v18;
      }

      else
      {
        swipeActionHost2 = [v11 containerView];
        [swipeActionHost2 safeAreaInsets];
        self->_extraInsets.top = v19;
        self->_extraInsets.left = v20;
        self->_extraInsets.bottom = v21;
        self->_extraInsets.right = v22;
      }

      v23 = objc_loadWeakRetained(&self->_controller);
      swipeActionHost3 = [v23 swipeActionHost];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v26 = objc_loadWeakRetained(&self->_controller);
        swipeActionHost4 = [v26 swipeActionHost];
        v28 = objc_loadWeakRetained(&self->_controller);
        [swipeActionHost4 swipeActionController:v28 pullViewInsetsForItemAtIndexPath:self->_indexPath];
        self->_pullViewInsets.top = v29;
        self->_pullViewInsets.left = v30;
        self->_pullViewInsets.bottom = v31;
        self->_pullViewInsets.right = v32;
      }

      else
      {
        *&self->_pullViewInsets.bottom = 0u;
        *&self->_pullViewInsets.top = 0u;
      }

LABEL_14:
      if (((*&self->_flags & 0x10) == 0) != edgeCopy)
      {
        v33 = 8;
      }

      else
      {
        v33 = 2;
      }

      v34 = objc_loadWeakRetained(&self->_controller);
      swipeActionHost5 = [v34 swipeActionHost];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        v37 = objc_loadWeakRetained(&self->_controller);
        swipeActionHost6 = [v37 swipeActionHost];
        v39 = objc_loadWeakRetained(&self->_controller);
        v40 = [swipeActionHost6 swipeActionController:v39 backgroundColorForItemAtIndexPath:self->_indexPath];
      }

      else
      {
        v40 = 0;
      }

      [(_UISwipedView *)self->_swipedView bounds];
      Height = CGRectGetHeight(v51);
      if ([(UISwipeOccurrence *)self isDynamicPullView])
      {
        height = [[UISwipeActionDynamicPullView alloc] initWithFrame:v33 cellEdge:0.0, 0.0, 0.0, Height];
        swipedView = self->_swipedView;
        v43 = objc_loadWeakRetained(&self->_controller);
        containerView = [v43 containerView];
        [(UISwipeOccurrence *)self _frameForPullView:height inSwipedItem:swipedView withContainer:containerView];
        v45 = CGRectGetHeight(v52);

        [(UISwipeActionDynamicPullView *)height setFrame:0.0, 0.0, 0.0, v45];
      }

      else
      {
        height = [[UISwipeActionPullView alloc] initWithFrame:v33 cellEdge:self->_style style:0.0, 0.0, 0.0, Height];
        [(UISwipeActionDynamicPullView *)height _setRoundedStyleCornerRadius:self->_roundedStyleCornerRadius];
      }

      [(UISwipeActionDynamicPullView *)height setBackgroundPullColor:v40];
      [(UISwipeActionDynamicPullView *)height setDelegate:self];
      if ((*&self->_flags & 0x10) != 0)
      {
        if (edgeCopy)
        {
          goto LABEL_25;
        }
      }

      else if (!edgeCopy)
      {
LABEL_25:
        right = self->_extraInsets.right;
        left = 0.0;
LABEL_28:
        [(UISwipeActionDynamicPullView *)height setContentInsets:0.0, left, 0.0, right];
        [(UISwipeActionDynamicPullView *)height setExtraInsets:self->_extraInsets.top, self->_extraInsets.left, self->_extraInsets.bottom, self->_extraInsets.right];
        [(UISwipeActionDynamicPullView *)height setPullViewInsets:self->_pullViewInsets.top, self->_pullViewInsets.left, self->_pullViewInsets.bottom, self->_pullViewInsets.right];
        if (edgeCopy)
        {
          p_trailingPullView = p_leadingPullView;
        }

        else
        {
          p_trailingPullView = &self->_trailingPullView;
        }

        objc_storeStrong(p_trailingPullView, height);

        goto LABEL_32;
      }

      left = self->_extraInsets.left;
      right = 0.0;
      goto LABEL_28;
    }
  }

  else
  {
    leadingPullView = self->_trailingPullView;
    if (!leadingPullView)
    {
      p_leadingPullView = &self->_leadingPullView;
      if (self->_leadingPullView)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }
  }

  height = leadingPullView;
LABEL_32:

  return height;
}

- (void)_updatePullView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    superview = [viewCopy superview];

    if (superview)
    {
      swipedView = self->_swipedView;
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      containerView = [WeakRetained containerView];
      [(UISwipeOccurrence *)self _frameForPullView:v5 inSwipedItem:swipedView withContainer:containerView];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      superview2 = [v5 superview];
      [superview2 convertRect:self->_swipedView fromView:{v11, v13, v15, v17}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [v5 setFrame:{v20, v22, v24, v26}];
      if (![(UISwipeOccurrence *)self isDynamicPullView])
      {
        if (self->_style == 1)
        {
          v27 = objc_loadWeakRetained(&self->_controller);
          containerView2 = [v27 containerView];
          [containerView2 frame];
          Width = CGRectGetWidth(v53);
          [(_UISwipedView *)self->_swipedView frame];
          v30 = Width - CGRectGetWidth(v54);

          v31 = -v30;
          if (v30 >= 0.0)
          {
            v31 = v30;
          }

          v32 = v31 * 0.5;
          v33 = v32 > 20.0;
          v34 = 0.0;
          if (v32 <= 20.0)
          {
            v34 = v32;
          }

          [v5 setContentInsets:{0.0, v34, 0.0, 0.0}];
          v35 = v5;
          v36 = v33;
        }

        else
        {
          superview3 = [v5 superview];
          [(_UISwipedView *)self->_swipedView bounds];
          [superview3 convertRect:self->_swipedView fromView:?];
          v40 = v39;
          v42 = v41;
          v44 = v43;
          v46 = v45;

          if (self->_configuredDirection == 1)
          {
            superview4 = [v5 superview];
            [superview4 bounds];
            v48 = CGRectGetWidth(v55);
            v56.origin.x = v40;
            v56.origin.y = v42;
            v56.size.width = v44;
            v56.size.height = v46;
            MinX = v48 - CGRectGetMaxX(v56);
          }

          else
          {
            v57.origin.x = v40;
            v57.origin.y = v42;
            v57.size.width = v44;
            v57.size.height = v46;
            MinX = CGRectGetMinX(v57);
          }

          v36 = fmax(MinX, 0.0) > 2.22044605e-16;
          v35 = v5;
        }

        [v35 setButtonsUnderlapSwipedView:v36];
      }
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v50 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v50, OS_LOG_TYPE_FAULT, "The pullView is not in a view hierarchy. This is a UIKit bug.", buf, 2u);
      }
    }

    else
    {
      v37 = *(__UILogGetCategoryCachedImpl("Assert", &_updatePullView____s_category) + 8);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *v51 = 0;
        _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "The pullView is not in a view hierarchy. This is a UIKit bug.", v51, 2u);
      }
    }
  }
}

- (CGRect)_frameForPullView:(id)view inSwipedItem:(id)item withContainer:(id)container
{
  viewCopy = view;
  itemCopy = item;
  containerCopy = container;
  [itemCopy frame];
  Height = CGRectGetHeight(v51);
  v12 = Height;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [itemCopy separatorStyle])
  {
    [itemCopy _separatorHeight];
    v12 = Height - v13;
  }

  if ([(UISwipeOccurrence *)self isDynamicPullView]|| (v14 = 0.0, self->_style == 1))
  {
    [containerCopy visibleBounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [containerCopy contentInset];
    [itemCopy convertRect:containerCopy fromView:{v16 + v26, v18 + v23, v20 - (v26 + v24), v22 - (v23 + v25)}];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [itemCopy bounds];
    v56.origin.x = v35;
    v56.origin.y = v36;
    v56.size.width = v37;
    v56.size.height = v38;
    v52.origin.x = v28;
    v52.origin.y = v30;
    v52.size.width = v32;
    v52.size.height = v34;
    v53 = CGRectIntersection(v52, v56);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    v42 = v53.size.height;
    [(UISwipeOccurrence *)self isDynamicPullView];
    [objc_opt_class() maximumButtonHeight];
    if (v12 >= v43)
    {
      v12 = v43;
    }

    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = v42;
    CGRectGetMidY(v54);
    UIRoundToViewScale(itemCopy);
    v14 = v44;
  }

  v45 = 0.0;
  if ([viewCopy cellEdge] == 8)
  {
    [itemCopy frame];
    UIRoundToViewScale(itemCopy);
    v45 = v46;
  }

  v47 = 0.0;
  v48 = v45;
  v49 = v14;
  v50 = v12;
  result.size.height = v50;
  result.size.width = v47;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

- (void)_removePullViewImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  superview = [immediatelyCopy superview];

  if (superview)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    _internalSwipeActionHost = [WeakRetained _internalSwipeActionHost];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_controller);
      _internalSwipeActionHost2 = [v9 _internalSwipeActionHost];
      v11 = objc_loadWeakRetained(&self->_controller);
      [_internalSwipeActionHost2 swipeActionController:v11 cleanupActionsView:immediatelyCopy forItemAtIndexPath:self->_indexPath];

      window = [immediatelyCopy window];

      if (window)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = NSStringFromSelector(sel_swipeActionController_cleanupActionsView_forItemAtIndexPath_);
        v15 = objc_loadWeakRetained(&self->_controller);
        swipeActionHost = [v15 swipeActionHost];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeOccurrence.m" lineNumber:1191 description:{@"Actions view not removed from view hierarchy after calling -%@ on %@", v14, swipeActionHost}];
      }
    }

    else
    {
      [immediatelyCopy removeFromSuperview];
    }
  }
}

- (void)_removeAndResetPullViewImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  [(UISwipeOccurrence *)self _removePullViewImmediately:immediatelyCopy];
  [immediatelyCopy resetView];
}

- (id)_actionView
{
  [(UISwipeOccurrence *)self currentSwipeInfo];

  return 0;
}

- (id)lockActionViewForAnimation
{
  _actionView = [(UISwipeOccurrence *)self _actionView];
  [_actionView setAutoresizesSubviews:0];
  [_actionView setClipsToBounds:1];

  return _actionView;
}

- (void)unlockActionViewForAnimation:(id)animation
{
  animationCopy = animation;
  +[UISwipeOccurrence pullViewClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISwipeOccurrence.m" lineNumber:1234 description:{@"Invalid parameter not satisfying: %@", @"[pullView isKindOfClass:[UISwipeOccurrence pullViewClass]]"}];
  }

  [animationCopy setAutoresizesSubviews:1];
  [animationCopy setClipsToBounds:{objc_msgSend(animationCopy, "buttonsUnderlapSwipedView")}];
}

- (double)confirmationDistanceForPrimaryActionInSwipeActionPullView:(id)view
{
  viewCopy = view;
  v5 = [(UISwipeOccurrence *)self _swipeDirectionForPullView:viewCopy];
  [(_UISwipedView *)self->_swipedView frame];
  v7 = v6;
  [(UISwipeOccurrence *)self pullViewInsets];
  v9 = v7 - v8;
  [(UISwipeOccurrence *)self pullViewInsets];
  v11 = v9 - v10;
  if ([viewCopy primaryActionIsDestructive])
  {
    [(UISwipeOccurrence *)self extraInsets];
    v14 = v11 - v13 + -29.0;
    if (v5 == 1)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11 - v12 + -64.0;
    }
  }

  else
  {
    v15 = v11 * 0.525;
    if ([(UISwipeOccurrence *)self isDynamicPullView])
    {
      [viewCopy openThreshold];
      v17 = v16 + 20.0;
      if (v15 < v17)
      {
        v15 = v17;
      }

      [(_UISwipedView *)self->_swipedView frame];
      if (v15 >= v18)
      {
        v15 = v18;
      }
    }
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  state = self->_state;
  if (state > 5)
  {
    v6 = @".open";
  }

  else
  {
    v6 = off_1E7122BA0[state];
  }

  v7 = @"right";
  if (!self->_direction)
  {
    v7 = @"left";
  }

  return [v3 stringWithFormat:@"<%@: %p; indexPath: %@, state: %@, direction: %@, offset: %g>", v4, self, self->_indexPath, v6, v7, *&self->_offset];
}

- ($B18736ADBBD355D2E16F2B3CA0B0347D)currentSwipeInfo
{
  v3 = *&self[4].var5;
  *&retstr->var0 = *&self[4].var3;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[5].var1;
  return self;
}

- (void)setCurrentSwipeInfo:(id *)info
{
  v3 = *&info->var0;
  v4 = *&info->var2;
  *&self->_currentSwipeInfo.initialSpringVelocity = *&info->var4;
  *&self->_currentSwipeInfo.animated = v4;
  *&self->_currentSwipeInfo.direction = v3;
}

- (UIEdgeInsets)extraInsets
{
  top = self->_extraInsets.top;
  left = self->_extraInsets.left;
  bottom = self->_extraInsets.bottom;
  right = self->_extraInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)pullViewInsets
{
  top = self->_pullViewInsets.top;
  left = self->_pullViewInsets.left;
  bottom = self->_pullViewInsets.bottom;
  right = self->_pullViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end