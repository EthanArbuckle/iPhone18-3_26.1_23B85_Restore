@interface _UISwipeHandler
- ($A7B7FA971CD029BAA4A09478E9E1AEDA)currentSwipeConfig;
- ($B18736ADBBD355D2E16F2B3CA0B0347D)_currentSwipeInfoWithTargetOffset:(SEL)offset animated:(double)animated usingSpringWithStiffness:(BOOL)stiffness;
- (BOOL)_delegateWantsToDismissOnTouchDownForGestureRecognizer:(id)recognizer;
- (BOOL)_swipeRecognizerBegan:(id)began;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)gestureRecognizerShouldDismissForTouchUp:(id)up;
- (BOOL)isInteracting;
- (UISwipeActionController)swipeController;
- (_UISwipeHandler)initWithSwipeController:(id)controller;
- (unint64_t)_directionForGestureRecognizer:(id)recognizer;
- (void)_cancelExistingSwipe;
- (void)_cancelExistingSwipeForGestureBeganIfNecessary:(id)necessary;
- (void)_dismissalRecognizerDidRecognize:(id)recognize;
- (void)_moveSwipedItemToOffset:(double)offset animated:(BOOL)animated usingSpringWithStiffness:(double)stiffness isTracking:(BOOL)tracking;
- (void)_setUp;
- (void)_swipeRecognizerChanged:(id)changed;
- (void)_swipeRecognizerDidRecognize:(id)recognize;
- (void)_swipeRecognizerEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)dealloc;
- (void)initiateSwipeWithDirection:(unint64_t)direction configuration:(id)configuration location:(CGPoint)location userInitiated:(BOOL)initiated;
- (void)resetSwipe;
- (void)setActive:(BOOL)active;
- (void)updateCurrentSwipeConfig:(id *)config;
@end

@implementation _UISwipeHandler

- (void)_setUp
{
  v3 = [[_UISwipeActionPanGestureRecognizer alloc] initWithTarget:self action:sel__swipeRecognizerDidRecognize_];
  swipeActionPanRecognizer = self->_swipeActionPanRecognizer;
  self->_swipeActionPanRecognizer = v3;

  [(UIPanGestureRecognizer *)self->_swipeActionPanRecognizer setDelegate:self];
  [(UIPanGestureRecognizer *)self->_swipeActionPanRecognizer _setHysteresis:25.0];
  [(UIGestureRecognizer *)self->_swipeActionPanRecognizer setAllowedTouchTypes:&unk_1EFE2D870];
  swipeController = [(_UISwipeHandler *)self swipeController];
  swipeActionHost = [swipeController swipeActionHost];
  swipeController2 = [(_UISwipeHandler *)self swipeController];
  v14 = [swipeActionHost gestureRecognizerViewForSwipeActionController:swipeController2];

  [v14 addGestureRecognizer:self->_swipeActionPanRecognizer];
  v8 = [[_UISwipeDismissalGestureRecognizer alloc] initWithTarget:self action:sel__dismissalRecognizerDidRecognize_];
  dismissalGestureRecognizer = self->_dismissalGestureRecognizer;
  self->_dismissalGestureRecognizer = v8;

  [(UIGestureRecognizer *)self->_dismissalGestureRecognizer setDelegate:self];
  [(UIGestureRecognizer *)self->_dismissalGestureRecognizer setEnabled:0];
  [v14 addGestureRecognizer:self->_dismissalGestureRecognizer];
  v10 = [_UIStatesFeedbackGenerator alloc];
  v11 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration defaultConfiguration];
  v12 = [(_UIStatesFeedbackGenerator *)v10 initWithConfiguration:v11 view:v14];
  swipeFeedbackGenerator = self->_swipeFeedbackGenerator;
  self->_swipeFeedbackGenerator = v12;

  self->_active = 1;
}

- (UISwipeActionController)swipeController
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeController);

  return WeakRetained;
}

- (void)resetSwipe
{
  self->_resetSwipeWhileInitiating = 1;
  self->_initialTranslation = 0.0;
  self->_confirmationTranslationAdjustment = 0.0;
  *&self->_currentSwipeConfig.direction = 0u;
  *&self->_currentSwipeConfig.openThreshold = 0u;
  self->_currentSwipeState = 0;
  [(UIGestureRecognizer *)self->_dismissalGestureRecognizer setEnabled:0];
}

- (_UISwipeHandler)initWithSwipeController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _UISwipeHandler;
  v5 = [(_UISwipeHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UISwipeHandler *)v5 setSwipeController:controllerCopy];
    [(_UISwipeHandler *)v6 _setUp];
  }

  return v6;
}

- (void)dealloc
{
  view = [(UIGestureRecognizer *)self->_swipeActionPanRecognizer view];
  [view removeGestureRecognizer:self->_swipeActionPanRecognizer];

  view2 = [(UIGestureRecognizer *)self->_dismissalGestureRecognizer view];
  [view2 removeGestureRecognizer:self->_dismissalGestureRecognizer];

  v5.receiver = self;
  v5.super_class = _UISwipeHandler;
  [(_UISwipeHandler *)&v5 dealloc];
}

- (BOOL)isInteracting
{
  state = [(UIGestureRecognizer *)self->_swipeActionPanRecognizer state];
  if (state != UIGestureRecognizerStateBegan)
  {
    LOBYTE(state) = [(UIGestureRecognizer *)self->_swipeActionPanRecognizer state]== UIGestureRecognizerStateChanged;
  }

  return state;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_dismissalGestureRecognizer == recognizer)
  {
    swipeController = [(_UISwipeHandler *)self swipeController];
    containerView = [swipeController containerView];

    if (self->_swipeActionPanRecognizer == gestureRecognizerCopy)
    {
      v7 = 1;
    }

    else
    {
      view = [(UIGestureRecognizer *)gestureRecognizerCopy view];
      v7 = view == containerView;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [(UIGestureRecognizer *)beginCopy view];
  [(UIPanGestureRecognizer *)beginCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  if (self->_swipeActionPanRecognizer == beginCopy)
  {
    v12 = [(_UISwipeHandler *)self _directionForGestureRecognizer:beginCopy];

    swipeController = [(_UISwipeHandler *)self swipeController];
    v14 = [swipeController swipeHandler:self mayBeginSwipeAtLocation:v12 withProposedDirection:{v7, v9}];

    return v14;
  }

  else
  {
    dismissalGestureRecognizer = self->_dismissalGestureRecognizer;

    if (dismissalGestureRecognizer == beginCopy)
    {
      swipeController2 = [(_UISwipeHandler *)self swipeController];
      v17 = [swipeController2 touchAtLocationShouldDismissSwipedItem:1 isTouchUp:{v7, v9}];

      swipeController3 = [(_UISwipeHandler *)self swipeController];
      LOBYTE(swipeController2) = [swipeController3 touchAtLocationShouldDismissSwipedItem:0 isTouchUp:{v7, v9}];

      v11 = swipeController2 | v17;
    }

    else
    {
      v11 = 1;
    }

    return v11 & 1;
  }
}

- (BOOL)gestureRecognizerShouldDismissForTouchUp:(id)up
{
  upCopy = up;
  view = [upCopy view];
  [upCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  swipeController = [(_UISwipeHandler *)self swipeController];
  LOBYTE(upCopy) = [swipeController touchAtLocationShouldDismissSwipedItem:1 isTouchUp:{v7, v9}];

  return upCopy;
}

- (void)_dismissalRecognizerDidRecognize:(id)recognize
{
  if ([recognize state] == 3 && self->_currentSwipeConfig.direction)
  {

    [(_UISwipeHandler *)self _cancelExistingSwipe];
  }
}

- (unint64_t)_directionForGestureRecognizer:(id)recognizer
{
  if (_UISwipeActionGestureRecognizerEffectiveVelocity(recognizer) < 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_swipeRecognizerDidRecognize:(id)recognize
{
  recognizeCopy = recognize;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48___UISwipeHandler__swipeRecognizerDidRecognize___block_invoke;
  aBlock[3] = &unk_1E7116620;
  aBlock[4] = self;
  v5 = recognizeCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  state = [v5 state];
  if (state > 2)
  {
    if (state == 3)
    {
      if (!v6[2](v6))
      {
        goto LABEL_14;
      }

      selfCopy2 = self;
      v9 = v5;
      v10 = 0;
    }

    else
    {
      if (state != 4 || !v6[2](v6))
      {
        goto LABEL_14;
      }

      selfCopy2 = self;
      v9 = v5;
      v10 = 1;
    }

    [(_UISwipeHandler *)selfCopy2 _swipeRecognizerEnded:v9 wasCancelled:v10];
    goto LABEL_14;
  }

  if (state == 1)
  {
    *&self->_flags &= 0xFCu;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48___UISwipeHandler__swipeRecognizerDidRecognize___block_invoke_2;
    block[3] = &unk_1E70F0F78;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (state == 2 && v6[2](v6))
  {
    [(_UISwipeHandler *)self _swipeRecognizerChanged:v5];
  }

LABEL_14:
}

- (BOOL)_swipeRecognizerBegan:(id)began
{
  beganCopy = began;
  [(_UISwipeHandler *)self _cancelExistingSwipeForGestureBeganIfNecessary:beganCopy];
  direction = self->_currentSwipeConfig.direction;
  swipeController = [(_UISwipeHandler *)self swipeController];
  currentSwipeOccurrence = [swipeController currentSwipeOccurrence];

  if (direction && currentSwipeOccurrence)
  {
    if (([currentSwipeOccurrence state] & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  else if (!direction)
  {
    v9 = [(_UISwipeHandler *)self _directionForGestureRecognizer:beganCopy];
    view = [beganCopy view];
    [beganCopy locationInView:view];
    v12 = v11;
    v14 = v13;

    [(_UISwipeHandler *)self initiateSwipeWithDirection:v9 configuration:0 location:1 userInitiated:v12, v14];
  }

  if (self->_currentSwipeConfig.direction)
  {
    swipeController2 = [(_UISwipeHandler *)self swipeController];
    [swipeController2 swipeHandlerDidBeginSwipe:self];

    swipeFeedbackGenerator = [(_UISwipeHandler *)self swipeFeedbackGenerator];
    [swipeFeedbackGenerator activateWithCompletionBlock:0];

    [(UIGestureRecognizer *)self->_dismissalGestureRecognizer setEnabled:0];
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (void)_swipeRecognizerChanged:(id)changed
{
  changedCopy = changed;
  if (!self->_currentSwipeConfig.direction)
  {
    goto LABEL_61;
  }

  v53 = changedCopy;
  v5 = _UISwipeActionGestureRecognizerEffectiveTranslation(changedCopy);
  v6 = [(UIPanGestureRecognizer *)v53 _scrollDeviceCategory]- 1;
  if (v6 <= 4 && ((0x17u >> v6) & 1) != 0)
  {
    v5 = v5 / dbl_18A682760[v6] * fabs(self->_currentSwipeConfig.confirmationThreshold);
  }

  v7 = v5 + self->_initialTranslation + self->_confirmationTranslationAdjustment;
  view = [v53 view];
  [v53 locationInView:view];
  v10 = v9;
  v12 = v11;

  v13 = _UISwipeActionGestureRecognizerEffectiveVelocity(v53);
  confirmationThreshold = self->_currentSwipeConfig.confirmationThreshold;
  v15 = -confirmationThreshold;
  if (confirmationThreshold >= 0.0)
  {
    v15 = self->_currentSwipeConfig.confirmationThreshold;
  }

  if (v15 > 0.0)
  {
    if (self->_currentSwipeConfig.primaryActionCanBeTriggeredBySwipe)
    {
      direction = self->_currentSwipeConfig.direction;
      if (direction == 2 && confirmationThreshold <= v7)
      {
        v17 = 0;
        v18 = 1;
LABEL_12:
        v19 = 1;
        goto LABEL_42;
      }

      if (direction == 1 && confirmationThreshold >= v7)
      {
        goto LABEL_16;
      }

      if (self->_currentSwipeConfig.primaryActionIsDestructive)
      {
        swipeController = [(_UISwipeHandler *)self swipeController];
        swipeActionHost = [swipeController swipeActionHost];
        swipeController2 = [(_UISwipeHandler *)self swipeController];
        v23 = [swipeActionHost itemContainerViewForSwipeActionController:swipeController2];
        v24 = self->_currentSwipeConfig.direction;
        v25 = self->_currentSwipeConfig.confirmationThreshold;
        v26 = v23;
        [v26 frame];
        Width = CGRectGetWidth(v55);
        v28 = v26;
        [v28 frame];
        v29 = CGRectGetWidth(v56);
        if (v29 >= 414.0)
        {
          traitCollection = [v28 traitCollection];
          v32 = [traitCollection userInterfaceIdiom] == 6;

          v30 = dbl_18A682750[v32];
        }

        else if (v29 == 375.0)
        {
          v30 = 75.0;
        }

        else
        {
          v30 = 50.0;
        }

        if (v24 == 1)
        {
          v33 = v30 > v10;
        }

        else
        {
          [v28 frame];
          v33 = v34 - v30 < v10;
        }

        v35 = -v13;
        if (v13 >= 0.0)
        {
          v35 = v13;
        }

        v36 = 0.66;
        if (Width >= 414.0)
        {
          v36 = 0.5;
        }

        v37 = fmax(v36, v35 / 2500.0);
        v38 = 0.8;
        if (Width >= 414.0)
        {
          v38 = 0.75;
        }

        v39 = fmin(v37, v38);
        v40 = -v7;
        if (v7 >= 0.0)
        {
          v40 = v7;
        }

        v41 = -v25;
        if (v25 >= 0.0)
        {
          v41 = v25;
        }

        v42 = v40 - v41 * v39;

        if (v42 > 0.00000011920929 && v33)
        {
          if (self->_confirmationTranslationAdjustment == 0.0)
          {
            v52 = self->_currentSwipeConfig.confirmationThreshold - v7;
            self->_confirmationTranslationAdjustment = v52;
            v7 = v7 + v52;
            v17 = 1;
            v18 = 1;
            goto LABEL_12;
          }

LABEL_16:
          v17 = 0;
          v19 = 1;
          v18 = 1;
          goto LABEL_42;
        }
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_42:
    currentSwipeState = self->_currentSwipeState;
    if (currentSwipeState != v19)
    {
      if (v18)
      {
        v45 = &_UIStatesFeedbackGeneratorSwipeActionStateConfirm;
LABEL_47:
        swipeFeedbackGenerator = [(_UISwipeHandler *)self swipeFeedbackGenerator];
        [swipeFeedbackGenerator transitionToState:*v45 ended:1 atLocation:{v10, v12}];

        goto LABEL_48;
      }

      if (currentSwipeState == 1)
      {
        v45 = _UIStatesFeedbackGeneratorSwipeActionStateOpen;
        goto LABEL_47;
      }
    }

LABEL_48:
    self->_currentSwipeState = v19;
    confirmationThreshold = self->_currentSwipeConfig.confirmationThreshold;
    goto LABEL_49;
  }

  v17 = 0;
LABEL_49:
  if (!self->_currentSwipeConfig.primaryActionCanBeTriggeredBySwipe)
  {
    confirmationThreshold = self->_currentSwipeConfig.openThreshold;
  }

  if (confirmationThreshold <= 0.0)
  {
    v47 = confirmationThreshold;
  }

  else
  {
    v47 = 0.0;
  }

  v48 = fmax(confirmationThreshold, 0.0);
  if (v7 <= v48)
  {
    if (v7 < v47)
    {
      v50 = v7 - v47;
      if (v7 - v47 < 0.0)
      {
        v50 = -(v7 - v47);
      }

      v51 = v50;
      v7 = v47 - powf(v51, 0.7);
    }
  }

  else
  {
    v49 = v7 - v48;
    v7 = v48 + powf(v49, 0.7);
  }

  [(_UISwipeHandler *)self _moveSwipedItemToOffset:v17 animated:1 usingSpringWithStiffness:v7 isTracking:1.0];
  changedCopy = v53;
LABEL_61:
}

- (void)_swipeRecognizerEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  if (self->_currentSwipeConfig.direction)
  {
    self->_confirmationTranslationAdjustment = 0.0;
    endedCopy = ended;
    v7 = _UISwipeActionGestureRecognizerEffectiveVelocity(endedCopy);
    v8 = _UISwipeActionGestureRecognizerEffectiveTranslation(endedCopy);
    _scrollDeviceCategory = [(UIPanGestureRecognizer *)endedCopy _scrollDeviceCategory];

    v10 = _scrollDeviceCategory - 1;
    if (_scrollDeviceCategory - 1) <= 4 && ((0x17u >> v10))
    {
      v8 = v8 / dbl_18A682760[v10] * fabs(self->_currentSwipeConfig.confirmationThreshold);
    }

    if (!cancelled && self->_currentSwipeState == 1)
    {
      self->_currentSwipeState = 2;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      [(_UISwipeHandler *)self _currentSwipeInfoWithTargetOffset:1 animated:0.0 usingSpringWithStiffness:1.0];
      swipeController = [(_UISwipeHandler *)self swipeController];
      v19 = v22;
      v20 = v23;
      v21 = v24;
      [swipeController swipeHandler:self didConfirmSwipeWithInfo:&v19];
LABEL_20:

LABEL_21:
      swipeFeedbackGenerator = [(_UISwipeHandler *)self swipeFeedbackGenerator];
      [swipeFeedbackGenerator deactivate];

      return;
    }

    openThreshold = self->_currentSwipeConfig.openThreshold;
    v13 = -openThreshold;
    if (openThreshold >= 0.0)
    {
      v13 = self->_currentSwipeConfig.openThreshold;
    }

    if (v13 > 0.0)
    {
      v14 = -v7;
      if (v7 >= 0.0)
      {
        v14 = v7;
      }

      direction = self->_currentSwipeConfig.direction;
      if (v14 <= 50.0)
      {
        v16 = v8 + self->_initialTranslation;
        v17 = openThreshold * 0.5;
        if (direction == 1)
        {
          if (v16 >= v17)
          {
            goto LABEL_19;
          }
        }

        else if (v16 <= v17)
        {
          goto LABEL_19;
        }

LABEL_26:
        [(_UISwipeHandler *)self _moveSwipedItemToOffset:1 animated:0 usingSpringWithStiffness:self->_currentSwipeConfig.openThreshold isTracking:1.0];
        [(UIGestureRecognizer *)self->_dismissalGestureRecognizer setEnabled:1];
        self->_initialTranslation = openThreshold;
        goto LABEL_21;
      }

      if (direction == 1)
      {
        if (v7 < -50.0)
        {
          goto LABEL_26;
        }
      }

      else if (v7 > 50.0)
      {
        goto LABEL_26;
      }
    }

LABEL_19:
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    [(_UISwipeHandler *)self _currentSwipeInfoWithTargetOffset:1 animated:0.0 usingSpringWithStiffness:1.0];
    swipeController = [(_UISwipeHandler *)self swipeController];
    v19 = v22;
    v20 = v23;
    v21 = v24;
    [swipeController swipeHandler:self didGenerateSwipeWithInfo:&v19 isTracking:0];
    goto LABEL_20;
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(UIGestureRecognizer *)self->_swipeActionPanRecognizer setEnabled:?];
    if (!self->_active)
    {
      dismissalGestureRecognizer = self->_dismissalGestureRecognizer;

      [(UIGestureRecognizer *)dismissalGestureRecognizer setEnabled:0];
    }
  }
}

- (void)initiateSwipeWithDirection:(unint64_t)direction configuration:(id)configuration location:(CGPoint)location userInitiated:(BOOL)initiated
{
  y = location.y;
  x = location.x;
  configurationCopy = configuration;
  swipeController = [(_UISwipeHandler *)self swipeController];
  [swipeController prepareForSwipeDirection:direction startingAtTouchLocation:{x, y}];

  self->_resetSwipeWhileInitiating = 0;
  v15 = 0u;
  v16 = 0u;
  swipeController2 = [(_UISwipeHandler *)self swipeController];
  v14 = swipeController2;
  if (swipeController2)
  {
    [swipeController2 configureForSwipeDirection:direction configuration:configurationCopy startingAtTouchLocation:{x, y}];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  if (!self->_resetSwipeWhileInitiating)
  {
    *&self->_currentSwipeConfig.direction = v15;
    *&self->_currentSwipeConfig.openThreshold = v16;
  }

  if (!initiated && self->_currentSwipeConfig.direction)
  {
    [(UIGestureRecognizer *)self->_dismissalGestureRecognizer setEnabled:1];
    self->_initialTranslation = self->_currentSwipeConfig.openThreshold;
  }
}

- (void)_cancelExistingSwipeForGestureBeganIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  [(_UISwipeHandler *)self currentSwipeConfig];
  if (v5 && [(_UISwipeHandler *)self _delegateWantsToDismissOnTouchDownForGestureRecognizer:necessaryCopy])
  {
    [(_UISwipeHandler *)self _cancelExistingSwipe];
  }
}

- (void)_cancelExistingSwipe
{
  swipeController = [(_UISwipeHandler *)self swipeController];
  currentSwipeOccurrence = [swipeController currentSwipeOccurrence];
  if (([currentSwipeOccurrence state] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    [swipeController resetSwipedItemAnimated:1 completion:0];
  }
}

- (BOOL)_delegateWantsToDismissOnTouchDownForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  [recognizerCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  swipeController = [(_UISwipeHandler *)self swipeController];
  LOBYTE(recognizerCopy) = [swipeController touchAtLocationShouldDismissSwipedItem:0 isTouchUp:{v7, v9}];

  return recognizerCopy;
}

- ($A7B7FA971CD029BAA4A09478E9E1AEDA)currentSwipeConfig
{
  v3 = *&self[1].var3;
  *&retstr->var0 = *&self[1].var0;
  *&retstr->var3 = v3;
  return self;
}

- (void)updateCurrentSwipeConfig:(id *)config
{
  v3 = *&config->var3;
  *&self->_currentSwipeConfig.direction = *&config->var0;
  *&self->_currentSwipeConfig.openThreshold = v3;
}

- ($B18736ADBBD355D2E16F2B3CA0B0347D)_currentSwipeInfoWithTargetOffset:(SEL)offset animated:(double)animated usingSpringWithStiffness:(BOOL)stiffness
{
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  retstr->var2 = stiffness;
  currentSwipeState = self->_currentSwipeState;
  retstr->var0 = self->_currentSwipeConfig.direction;
  retstr->var1 = currentSwipeState;
  swipeController = [(_UISwipeHandler *)self swipeController];
  swipeController2 = [(_UISwipeHandler *)self swipeController];
  swipedIndexPath = [swipeController2 swipedIndexPath];
  v32 = [swipeController _swipedViewForItemAtIndexPath:swipedIndexPath];

  if (v32)
  {
    swipeController3 = [(_UISwipeHandler *)self swipeController];
    [swipeController3 swipeHandlerRestingFrame:self];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v34.origin.x = v16;
    v34.origin.y = v18;
    v34.size.width = v20;
    v34.size.height = v22;
    v23 = 0.0;
    if (!CGRectIsNull(v34))
    {
      v35.origin.x = v16;
      v35.origin.y = v18;
      v35.size.width = v20;
      v35.size.height = v22;
      v24 = CGRectGetMidX(v35) + animated;
      v25 = _UISwipeActionGestureRecognizerEffectiveVelocity(self->_swipeActionPanRecognizer);
      layer = [v32 layer];
      presentationLayer = [layer presentationLayer];
      [presentationLayer position];
      v29 = v28;

      v30 = -(v24 - v29);
      if (v24 - v29 >= 0.0)
      {
        v30 = v24 - v29;
      }

      if (v30 > 0.00000011920929)
      {
        v23 = fmax(fmin(v25 / (v24 - v29), 200.0), 0.0);
      }
    }

    retstr->var3 = animated;
    retstr->var4 = v23;
    retstr->var5 = a6;
  }

  return result;
}

- (void)_moveSwipedItemToOffset:(double)offset animated:(BOOL)animated usingSpringWithStiffness:(double)stiffness isTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  [(_UISwipeHandler *)self _currentSwipeInfoWithTargetOffset:animated animated:offset usingSpringWithStiffness:stiffness];
  swipeController = [(_UISwipeHandler *)self swipeController];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  [swipeController swipeHandler:self didGenerateSwipeWithInfo:v9 isTracking:trackingCopy];
}

@end