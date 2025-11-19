@interface _UISwipeHandler
- ($A7B7FA971CD029BAA4A09478E9E1AEDA)currentSwipeConfig;
- ($B18736ADBBD355D2E16F2B3CA0B0347D)_currentSwipeInfoWithTargetOffset:(SEL)a3 animated:(double)a4 usingSpringWithStiffness:(BOOL)a5;
- (BOOL)_delegateWantsToDismissOnTouchDownForGestureRecognizer:(id)a3;
- (BOOL)_swipeRecognizerBegan:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)gestureRecognizerShouldDismissForTouchUp:(id)a3;
- (BOOL)isInteracting;
- (UISwipeActionController)swipeController;
- (_UISwipeHandler)initWithSwipeController:(id)a3;
- (unint64_t)_directionForGestureRecognizer:(id)a3;
- (void)_cancelExistingSwipe;
- (void)_cancelExistingSwipeForGestureBeganIfNecessary:(id)a3;
- (void)_dismissalRecognizerDidRecognize:(id)a3;
- (void)_moveSwipedItemToOffset:(double)a3 animated:(BOOL)a4 usingSpringWithStiffness:(double)a5 isTracking:(BOOL)a6;
- (void)_setUp;
- (void)_swipeRecognizerChanged:(id)a3;
- (void)_swipeRecognizerDidRecognize:(id)a3;
- (void)_swipeRecognizerEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)dealloc;
- (void)initiateSwipeWithDirection:(unint64_t)a3 configuration:(id)a4 location:(CGPoint)a5 userInitiated:(BOOL)a6;
- (void)resetSwipe;
- (void)setActive:(BOOL)a3;
- (void)updateCurrentSwipeConfig:(id *)a3;
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
  v5 = [(_UISwipeHandler *)self swipeController];
  v6 = [v5 swipeActionHost];
  v7 = [(_UISwipeHandler *)self swipeController];
  v14 = [v6 gestureRecognizerViewForSwipeActionController:v7];

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

- (_UISwipeHandler)initWithSwipeController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISwipeHandler;
  v5 = [(_UISwipeHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UISwipeHandler *)v5 setSwipeController:v4];
    [(_UISwipeHandler *)v6 _setUp];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(UIGestureRecognizer *)self->_swipeActionPanRecognizer view];
  [v3 removeGestureRecognizer:self->_swipeActionPanRecognizer];

  v4 = [(UIGestureRecognizer *)self->_dismissalGestureRecognizer view];
  [v4 removeGestureRecognizer:self->_dismissalGestureRecognizer];

  v5.receiver = self;
  v5.super_class = _UISwipeHandler;
  [(_UISwipeHandler *)&v5 dealloc];
}

- (BOOL)isInteracting
{
  v3 = [(UIGestureRecognizer *)self->_swipeActionPanRecognizer state];
  if (v3 != UIGestureRecognizerStateBegan)
  {
    LOBYTE(v3) = [(UIGestureRecognizer *)self->_swipeActionPanRecognizer state]== UIGestureRecognizerStateChanged;
  }

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_dismissalGestureRecognizer == a3)
  {
    v8 = [(_UISwipeHandler *)self swipeController];
    v9 = [v8 containerView];

    if (self->_swipeActionPanRecognizer == v6)
    {
      v7 = 1;
    }

    else
    {
      v10 = [(UIGestureRecognizer *)v6 view];
      v7 = v10 == v9;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UIGestureRecognizer *)v4 view];
  [(UIPanGestureRecognizer *)v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  if (self->_swipeActionPanRecognizer == v4)
  {
    v12 = [(_UISwipeHandler *)self _directionForGestureRecognizer:v4];

    v13 = [(_UISwipeHandler *)self swipeController];
    v14 = [v13 swipeHandler:self mayBeginSwipeAtLocation:v12 withProposedDirection:{v7, v9}];

    return v14;
  }

  else
  {
    dismissalGestureRecognizer = self->_dismissalGestureRecognizer;

    if (dismissalGestureRecognizer == v4)
    {
      v16 = [(_UISwipeHandler *)self swipeController];
      v17 = [v16 touchAtLocationShouldDismissSwipedItem:1 isTouchUp:{v7, v9}];

      v18 = [(_UISwipeHandler *)self swipeController];
      LOBYTE(v16) = [v18 touchAtLocationShouldDismissSwipedItem:0 isTouchUp:{v7, v9}];

      v11 = v16 | v17;
    }

    else
    {
      v11 = 1;
    }

    return v11 & 1;
  }
}

- (BOOL)gestureRecognizerShouldDismissForTouchUp:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(_UISwipeHandler *)self swipeController];
  LOBYTE(v4) = [v10 touchAtLocationShouldDismissSwipedItem:1 isTouchUp:{v7, v9}];

  return v4;
}

- (void)_dismissalRecognizerDidRecognize:(id)a3
{
  if ([a3 state] == 3 && self->_currentSwipeConfig.direction)
  {

    [(_UISwipeHandler *)self _cancelExistingSwipe];
  }
}

- (unint64_t)_directionForGestureRecognizer:(id)a3
{
  if (_UISwipeActionGestureRecognizerEffectiveVelocity(a3) < 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_swipeRecognizerDidRecognize:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48___UISwipeHandler__swipeRecognizerDidRecognize___block_invoke;
  aBlock[3] = &unk_1E7116620;
  aBlock[4] = self;
  v5 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [v5 state];
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (!v6[2](v6))
      {
        goto LABEL_14;
      }

      v8 = self;
      v9 = v5;
      v10 = 0;
    }

    else
    {
      if (v7 != 4 || !v6[2](v6))
      {
        goto LABEL_14;
      }

      v8 = self;
      v9 = v5;
      v10 = 1;
    }

    [(_UISwipeHandler *)v8 _swipeRecognizerEnded:v9 wasCancelled:v10];
    goto LABEL_14;
  }

  if (v7 == 1)
  {
    *&self->_flags &= 0xFCu;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48___UISwipeHandler__swipeRecognizerDidRecognize___block_invoke_2;
    block[3] = &unk_1E70F0F78;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (v7 == 2 && v6[2](v6))
  {
    [(_UISwipeHandler *)self _swipeRecognizerChanged:v5];
  }

LABEL_14:
}

- (BOOL)_swipeRecognizerBegan:(id)a3
{
  v4 = a3;
  [(_UISwipeHandler *)self _cancelExistingSwipeForGestureBeganIfNecessary:v4];
  direction = self->_currentSwipeConfig.direction;
  v6 = [(_UISwipeHandler *)self swipeController];
  v7 = [v6 currentSwipeOccurrence];

  if (direction && v7)
  {
    if (([v7 state] & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  else if (!direction)
  {
    v9 = [(_UISwipeHandler *)self _directionForGestureRecognizer:v4];
    v10 = [v4 view];
    [v4 locationInView:v10];
    v12 = v11;
    v14 = v13;

    [(_UISwipeHandler *)self initiateSwipeWithDirection:v9 configuration:0 location:1 userInitiated:v12, v14];
  }

  if (self->_currentSwipeConfig.direction)
  {
    v15 = [(_UISwipeHandler *)self swipeController];
    [v15 swipeHandlerDidBeginSwipe:self];

    v16 = [(_UISwipeHandler *)self swipeFeedbackGenerator];
    [v16 activateWithCompletionBlock:0];

    [(UIGestureRecognizer *)self->_dismissalGestureRecognizer setEnabled:0];
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (void)_swipeRecognizerChanged:(id)a3
{
  v4 = a3;
  if (!self->_currentSwipeConfig.direction)
  {
    goto LABEL_61;
  }

  v53 = v4;
  v5 = _UISwipeActionGestureRecognizerEffectiveTranslation(v4);
  v6 = [(UIPanGestureRecognizer *)v53 _scrollDeviceCategory]- 1;
  if (v6 <= 4 && ((0x17u >> v6) & 1) != 0)
  {
    v5 = v5 / dbl_18A682760[v6] * fabs(self->_currentSwipeConfig.confirmationThreshold);
  }

  v7 = v5 + self->_initialTranslation + self->_confirmationTranslationAdjustment;
  v8 = [v53 view];
  [v53 locationInView:v8];
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
        v20 = [(_UISwipeHandler *)self swipeController];
        v21 = [v20 swipeActionHost];
        v22 = [(_UISwipeHandler *)self swipeController];
        v23 = [v21 itemContainerViewForSwipeActionController:v22];
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
          v31 = [v28 traitCollection];
          v32 = [v31 userInterfaceIdiom] == 6;

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
        v46 = [(_UISwipeHandler *)self swipeFeedbackGenerator];
        [v46 transitionToState:*v45 ended:1 atLocation:{v10, v12}];

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
  v4 = v53;
LABEL_61:
}

- (void)_swipeRecognizerEnded:(id)a3 wasCancelled:(BOOL)a4
{
  if (self->_currentSwipeConfig.direction)
  {
    self->_confirmationTranslationAdjustment = 0.0;
    v6 = a3;
    v7 = _UISwipeActionGestureRecognizerEffectiveVelocity(v6);
    v8 = _UISwipeActionGestureRecognizerEffectiveTranslation(v6);
    v9 = [(UIPanGestureRecognizer *)v6 _scrollDeviceCategory];

    v10 = v9 - 1;
    if (v9 - 1) <= 4 && ((0x17u >> v10))
    {
      v8 = v8 / dbl_18A682760[v10] * fabs(self->_currentSwipeConfig.confirmationThreshold);
    }

    if (!a4 && self->_currentSwipeState == 1)
    {
      self->_currentSwipeState = 2;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      [(_UISwipeHandler *)self _currentSwipeInfoWithTargetOffset:1 animated:0.0 usingSpringWithStiffness:1.0];
      v11 = [(_UISwipeHandler *)self swipeController];
      v19 = v22;
      v20 = v23;
      v21 = v24;
      [v11 swipeHandler:self didConfirmSwipeWithInfo:&v19];
LABEL_20:

LABEL_21:
      v18 = [(_UISwipeHandler *)self swipeFeedbackGenerator];
      [v18 deactivate];

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
    v11 = [(_UISwipeHandler *)self swipeController];
    v19 = v22;
    v20 = v23;
    v21 = v24;
    [v11 swipeHandler:self didGenerateSwipeWithInfo:&v19 isTracking:0];
    goto LABEL_20;
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(UIGestureRecognizer *)self->_swipeActionPanRecognizer setEnabled:?];
    if (!self->_active)
    {
      dismissalGestureRecognizer = self->_dismissalGestureRecognizer;

      [(UIGestureRecognizer *)dismissalGestureRecognizer setEnabled:0];
    }
  }
}

- (void)initiateSwipeWithDirection:(unint64_t)a3 configuration:(id)a4 location:(CGPoint)a5 userInitiated:(BOOL)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a4;
  v12 = [(_UISwipeHandler *)self swipeController];
  [v12 prepareForSwipeDirection:a3 startingAtTouchLocation:{x, y}];

  self->_resetSwipeWhileInitiating = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = [(_UISwipeHandler *)self swipeController];
  v14 = v13;
  if (v13)
  {
    [v13 configureForSwipeDirection:a3 configuration:v11 startingAtTouchLocation:{x, y}];
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

  if (!a6 && self->_currentSwipeConfig.direction)
  {
    [(UIGestureRecognizer *)self->_dismissalGestureRecognizer setEnabled:1];
    self->_initialTranslation = self->_currentSwipeConfig.openThreshold;
  }
}

- (void)_cancelExistingSwipeForGestureBeganIfNecessary:(id)a3
{
  v4 = a3;
  [(_UISwipeHandler *)self currentSwipeConfig];
  if (v5 && [(_UISwipeHandler *)self _delegateWantsToDismissOnTouchDownForGestureRecognizer:v4])
  {
    [(_UISwipeHandler *)self _cancelExistingSwipe];
  }
}

- (void)_cancelExistingSwipe
{
  v3 = [(_UISwipeHandler *)self swipeController];
  v2 = [v3 currentSwipeOccurrence];
  if (([v2 state] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    [v3 resetSwipedItemAnimated:1 completion:0];
  }
}

- (BOOL)_delegateWantsToDismissOnTouchDownForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(_UISwipeHandler *)self swipeController];
  LOBYTE(v4) = [v10 touchAtLocationShouldDismissSwipedItem:0 isTouchUp:{v7, v9}];

  return v4;
}

- ($A7B7FA971CD029BAA4A09478E9E1AEDA)currentSwipeConfig
{
  v3 = *&self[1].var3;
  *&retstr->var0 = *&self[1].var0;
  *&retstr->var3 = v3;
  return self;
}

- (void)updateCurrentSwipeConfig:(id *)a3
{
  v3 = *&a3->var3;
  *&self->_currentSwipeConfig.direction = *&a3->var0;
  *&self->_currentSwipeConfig.openThreshold = v3;
}

- ($B18736ADBBD355D2E16F2B3CA0B0347D)_currentSwipeInfoWithTargetOffset:(SEL)a3 animated:(double)a4 usingSpringWithStiffness:(BOOL)a5
{
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  retstr->var2 = a5;
  currentSwipeState = self->_currentSwipeState;
  retstr->var0 = self->_currentSwipeConfig.direction;
  retstr->var1 = currentSwipeState;
  v11 = [(_UISwipeHandler *)self swipeController];
  v12 = [(_UISwipeHandler *)self swipeController];
  v13 = [v12 swipedIndexPath];
  v32 = [v11 _swipedViewForItemAtIndexPath:v13];

  if (v32)
  {
    v14 = [(_UISwipeHandler *)self swipeController];
    [v14 swipeHandlerRestingFrame:self];
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
      v24 = CGRectGetMidX(v35) + a4;
      v25 = _UISwipeActionGestureRecognizerEffectiveVelocity(self->_swipeActionPanRecognizer);
      v26 = [v32 layer];
      v27 = [v26 presentationLayer];
      [v27 position];
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

    retstr->var3 = a4;
    retstr->var4 = v23;
    retstr->var5 = a6;
  }

  return result;
}

- (void)_moveSwipedItemToOffset:(double)a3 animated:(BOOL)a4 usingSpringWithStiffness:(double)a5 isTracking:(BOOL)a6
{
  v6 = a6;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  [(_UISwipeHandler *)self _currentSwipeInfoWithTargetOffset:a4 animated:a3 usingSpringWithStiffness:a5];
  v8 = [(_UISwipeHandler *)self swipeController];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  [v8 swipeHandler:self didGenerateSwipeWithInfo:v9 isTracking:v6];
}

@end