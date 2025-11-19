@interface UIPhraseBoundaryGestureRecognizer
- (UIPhraseBoundaryGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (UITextInput)textInput;
- (id)userData;
- (void)_resetGestureRecognizer;
- (void)_startEnoughTimeElapsedTimer;
- (void)clearAllTimers;
- (void)secondDelayElapsed:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation UIPhraseBoundaryGestureRecognizer

- (UIPhraseBoundaryGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = UIPhraseBoundaryGestureRecognizer;
  v4 = [(UILongPressGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UILongPressGestureRecognizer *)v4 set_prefersToBeExclusiveWithCompetingLongPressGestureRecognizers:1];
  }

  return v5;
}

- (void)_resetGestureRecognizer
{
  objc_storeWeak(&self->_userData, 0);
  self->_secondDelayElapsed = 0;
  v3.receiver = self;
  v3.super_class = UIPhraseBoundaryGestureRecognizer;
  [(UILongPressGestureRecognizer *)&v3 _resetGestureRecognizer];
}

- (void)setState:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = [UIDelayedAction alloc];
    [(UIPhraseBoundaryGestureRecognizer *)self secondDelay];
    v6 = [(UIDelayedAction *)v5 initWithTarget:self action:sel_secondDelayElapsed_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:?];
    secondDelayTimer = self->_secondDelayTimer;
    self->_secondDelayTimer = v6;
  }

  v8.receiver = self;
  v8.super_class = UIPhraseBoundaryGestureRecognizer;
  [(UIGestureRecognizer *)&v8 setState:a3];
}

- (void)secondDelayElapsed:(id)a3
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
  {
    self->_secondDelayElapsed = 1;

    [(UIPhraseBoundaryGestureRecognizer *)self setState:2];
  }
}

- (void)_startEnoughTimeElapsedTimer
{
  v3 = [(UIPhraseBoundaryGestureRecognizer *)self textInput];
  v4 = [v3 _hasMarkedText];

  if ((v4 & 1) == 0)
  {
    NSLog(&cfstr_WarningPhraseB.isa);
    v28.receiver = self;
    v28.super_class = UIPhraseBoundaryGestureRecognizer;
    [(UIGestureRecognizer *)&v28 setState:1];
    return;
  }

  v5 = [(UIPhraseBoundaryGestureRecognizer *)self textInput];
  v6 = [v5 textInputView];
  [(UILongPressGestureRecognizer *)self centroid];
  v8 = v7;
  v10 = v9;
  v11 = [(UIGestureRecognizer *)self view];
  [v6 convertPoint:v11 fromView:{v8, v10}];
  v13 = v12;
  v15 = v14;

  if (![v5 _usesAsynchronousProtocol])
  {
    v16 = [v5 markedTextRange];
    v17 = [v5 closestPositionToPoint:v16 withinRange:{v13, v15}];

    [v5 caretRectForPosition:v17];
    v22 = v21 + v20 * 0.5 - v13;
    if (v22 >= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = -v22;
    }

    v24 = v18 - v15;
    if (v18 - v15 < 0.0)
    {
      v24 = -(v18 - v15);
    }

    v25 = v18 + v19 - v15;
    if (v25 < 0.0)
    {
      v25 = -v25;
    }

    if (v23 > 66.0 || v24 > 66.0 || v25 > 66.0)
    {
      [(UIPhraseBoundaryGestureRecognizer *)self setState:5, v24, v25];
    }

    else
    {
      v26.receiver = self;
      v26.super_class = UIPhraseBoundaryGestureRecognizer;
      [(UILongPressGestureRecognizer *)&v26 _startEnoughTimeElapsedTimer];
    }

    goto LABEL_25;
  }

  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    if ([v5 pointIsNearMarkedText:{v13, v15}])
    {
      goto LABEL_22;
    }

LABEL_24:
    [(UIPhraseBoundaryGestureRecognizer *)self setState:5];
    goto LABEL_25;
  }

  if (![v5 conformsToProtocol:&unk_1F016C810])
  {
    if ([v5 pointIsNearMarkedText:{v13, v15}])
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (([v5 isPointNearMarkedText:{v13, v15}] & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v27.receiver = self;
  v27.super_class = UIPhraseBoundaryGestureRecognizer;
  [(UILongPressGestureRecognizer *)&v27 _startEnoughTimeElapsedTimer];
LABEL_25:
}

- (void)clearAllTimers
{
  secondDelayTimer = self->_secondDelayTimer;
  if (secondDelayTimer)
  {
    [(UIDelayedAction *)secondDelayTimer unschedule];
    v4 = self->_secondDelayTimer;
    self->_secondDelayTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = UIPhraseBoundaryGestureRecognizer;
  [(UILongPressGestureRecognizer *)&v5 clearAllTimers];
}

- (UITextInput)textInput
{
  WeakRetained = objc_loadWeakRetained(&self->_textInput);

  return WeakRetained;
}

- (id)userData
{
  WeakRetained = objc_loadWeakRetained(&self->_userData);

  return WeakRetained;
}

@end