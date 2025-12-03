@interface _UISystemGestureGateGestureRecognizer
- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer;
- (_UISystemGestureGateGestureRecognizer)initWithCoder:(id)coder;
- (_UISystemGestureGateGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (_UISystemGestureGateGestureRecognizer)initWithWindow:(id)window type:(unsigned __int8)type;
- (id)_gateGestureTypeString;
- (void)_cancelTimeoutTimerIfNeeded;
- (void)_notifyWindowNoLongerAwaitingSystemGestureNotification:(id)notification;
- (void)_resetGestureRecognizer;
- (void)_systemGestureStateChanged:(id)changed;
- (void)_timeOut;
- (void)dealloc;
- (void)setDelaysTouchesBegan:(BOOL)began;
- (void)setDelaysTouchesEnded:(BOOL)ended;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UISystemGestureGateGestureRecognizer

- (void)_resetGestureRecognizer
{
  *(self + 281) &= ~2u;
  self->_lastTouchTime = 0.0;
  view = [(UIGestureRecognizer *)self view];
  _window = [view _window];
  [(_UISystemGestureGateGestureRecognizer *)self _notifyWindowNoLongerAwaitingSystemGestureNotification:_window];

  [(_UISystemGestureGateGestureRecognizer *)self _cancelTimeoutTimerIfNeeded];
  v5.receiver = self;
  v5.super_class = _UISystemGestureGateGestureRecognizer;
  [(UIGestureRecognizer *)&v5 _resetGestureRecognizer];
}

- (void)_cancelTimeoutTimerIfNeeded
{
  delayTimeoutTimer = self->_delayTimeoutTimer;
  if (delayTimeoutTimer)
  {
    dispatch_source_cancel(delayTimeoutTimer);
    v4 = self->_delayTimeoutTimer;
    self->_delayTimeoutTimer = 0;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1EFB921B0 object:0];

  [(_UISystemGestureGateGestureRecognizer *)self _cancelTimeoutTimerIfNeeded];
  v4.receiver = self;
  v4.super_class = _UISystemGestureGateGestureRecognizer;
  [(UIGestureRecognizer *)&v4 dealloc];
}

- (id)_gateGestureTypeString
{
  if (self->_systemGestureGateType)
  {
    return @"Gesture";
  }

  else
  {
    return @"Touch";
  }
}

- (_UISystemGestureGateGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"_UISystemGestureGateGestureRecognizer must be initialized with initWithWindow:"];

  return 0;
}

- (_UISystemGestureGateGestureRecognizer)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"_UISystemGestureGateGestureRecognizer must be initialized with initWithWindow:"];

  return 0;
}

- (_UISystemGestureGateGestureRecognizer)initWithWindow:(id)window type:(unsigned __int8)type
{
  typeCopy = type;
  windowCopy = window;
  v14.receiver = self;
  v14.super_class = _UISystemGestureGateGestureRecognizer;
  v7 = [(UIGestureRecognizer *)&v14 initWithTarget:0 action:0];
  if (v7)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__systemGestureStateChanged_ name:0x1EFB921B0 object:windowCopy];

    *(v7 + 281) = *(v7 + 281) & 0xFE | [windowCopy _systemGestureRecognitionIsPossible];
    v7->_systemGestureGateType = typeCopy;
    if (typeCopy == 1)
    {
      v13.receiver = v7;
      v13.super_class = _UISystemGestureGateGestureRecognizer;
      [(UIGestureRecognizer *)&v13 setDelaysTouchesBegan:0];
      v12.receiver = v7;
      v12.super_class = _UISystemGestureGateGestureRecognizer;
      [(UIGestureRecognizer *)&v12 setDelaysTouchesEnded:0, v10.receiver, v10.super_class];
    }

    else
    {
      v11.receiver = v7;
      v11.super_class = _UISystemGestureGateGestureRecognizer;
      [(UIGestureRecognizer *)&v11 setDelaysTouchesBegan:1];
      [(UIGestureRecognizer *)&v10 setDelaysTouchesEnded:1, v7, _UISystemGestureGateGestureRecognizer];
    }
  }

  return v7;
}

- (void)setDelaysTouchesBegan:(BOOL)began
{
  beganCopy = began;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___UISystemGestureGateGestureRecognizer_setDelaysTouchesBegan___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  beganCopy2 = began;
  if (setDelaysTouchesBegan__once != -1)
  {
    dispatch_once(&setDelaysTouchesBegan__once, block);
  }

  v5.receiver = self;
  v5.super_class = _UISystemGestureGateGestureRecognizer;
  [(UIGestureRecognizer *)&v5 setDelaysTouchesBegan:beganCopy];
}

- (void)setDelaysTouchesEnded:(BOOL)ended
{
  endedCopy = ended;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___UISystemGestureGateGestureRecognizer_setDelaysTouchesEnded___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  endedCopy2 = ended;
  if (setDelaysTouchesEnded__once != -1)
  {
    dispatch_once(&setDelaysTouchesEnded__once, block);
  }

  v5.receiver = self;
  v5.super_class = _UISystemGestureGateGestureRecognizer;
  [(UIGestureRecognizer *)&v5 setDelaysTouchesEnded:endedCopy];
}

- (void)_notifyWindowNoLongerAwaitingSystemGestureNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _activeEvents = [(UIGestureRecognizer *)self _activeEvents];
  v6 = [_activeEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_activeEvents);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 _windowNoLongerAwaitingSystemGestureNotification:notificationCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_activeEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_systemGestureStateChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  _systemGestureRecognitionIsPossible = [object _systemGestureRecognitionIsPossible];
  v6 = _systemGestureRecognitionIsPossible;
  if ((*(self + 281) & 1) != 0 && (_systemGestureRecognitionIsPossible & 1) == 0)
  {
    if ((*(self + 281) & 2) != 0)
    {
      *(self + 281) &= ~2u;
      view = [(UIGestureRecognizer *)self view];
      _window = [view _window];
      [(_UISystemGestureGateGestureRecognizer *)self _notifyWindowNoLongerAwaitingSystemGestureNotification:_window];
    }

    userInfo = [changedCopy userInfo];
    v10 = [userInfo valueForKey:0x1EFB921D0];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      [(UIGestureRecognizer *)self setState:3];
    }

    else
    {
      [(UIGestureRecognizer *)self _failWithReason:@"noLongerPossible"];
    }
  }

  *(self + 281) = *(self + 281) & 0xFE | v6;
}

- (void)_timeOut
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    v3 = *(__UILogGetCategoryCachedImpl("SystemGestureGate", _timeOut___s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      _gateGestureTypeString = [(_UISystemGestureGateGestureRecognizer *)self _gateGestureTypeString];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"System gesture gate timed out."];
      v7 = 134218498;
      selfCopy = self;
      v9 = 2112;
      v10 = _gateGestureTypeString;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "<%p> %@: %@", &v7, 0x20u);
    }

    [(UIGestureRecognizer *)self _failWithReason:@"timeout"];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v39 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  if ((*(self + 281) & 2) != 0)
  {
    v8 = *(__UILogGetCategoryCachedImpl("SystemGestureGate", &touchesBegan_withEvent____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      _gateGestureTypeString = [(_UISystemGestureGateGestureRecognizer *)self _gateGestureTypeString];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to receive system gesture state notification before next touch"];
      *buf = 134218498;
      selfCopy = self;
      v35 = 2112;
      v36 = _gateGestureTypeString;
      v37 = 2112;
      v38 = v11;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "<%p> %@: %@", buf, 0x20u);
    }
  }

  if ((*(self + 281) & 1) == 0)
  {
    [(UIGestureRecognizer *)self _failWithReason:@"notPossibleInTouchesBegan"];
  }

  if ([(UIGestureRecognizer *)self numberOfTouches]>= 2)
  {
    [(UIGestureRecognizer *)self _failWithReason:@"receivedSecondTouch"];
  }

  if (!self->_systemGestureGateType)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = beganCopy;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          view = [v17 view];
          if (view)
          {
            v19 = view;
            while (![v19 _shouldDelayTouchForSystemGestures:v17])
            {
              superview = [v19 superview];

              v19 = superview;
              if (!superview)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
LABEL_18:

            [(UIGestureRecognizer *)self ignoreTouch:v17 forEvent:eventCopy];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }
  }

  if ([(UIGestureRecognizer *)self numberOfTouches])
  {
    if (!self->_delayTimeoutTimer)
    {
      v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      delayTimeoutTimer = self->_delayTimeoutTimer;
      self->_delayTimeoutTimer = v21;

      v23 = self->_delayTimeoutTimer;
      v24 = dispatch_time(0, 750000000);
      dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0);
      objc_initWeak(buf, self);
      v25 = self->_delayTimeoutTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __64___UISystemGestureGateGestureRecognizer_touchesBegan_withEvent___block_invoke;
      handler[3] = &unk_1E70F5A28;
      objc_copyWeak(&v27, buf);
      dispatch_source_set_event_handler(v25, handler);
      dispatch_activate(self->_delayTimeoutTimer);
      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    [(UIGestureRecognizer *)self _failWithReason:@"noTouchesEligibleForDelay"];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v33 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  eventCopy = event;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [eventCopy touchesForGestureRecognizer:self];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v27 + 1) + 8 * v12) phase] < 3)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    if ((*(self + 281) & 1) == 0)
    {
      [(UIGestureRecognizer *)self _failWithReason:@"noTouchesRemaining"];
      goto LABEL_22;
    }

    *(self + 281) |= 2u;
    self->_lastTouchTime = CACurrentMediaTime();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = endedCopy;
    v13 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          view = [(UIGestureRecognizer *)self view];
          _window = [view _window];
          if (v17)
          {
            v20 = *(v17 + 360);
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          [eventCopy _addWindowAwaitingLatentSystemGestureNotification:_window deliveredToEventWindow:v21];

          ++v16;
        }

        while (v14 != v16);
        v22 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        v14 = v22;
      }

      while (v22);
    }
  }

LABEL_22:
}

- (BOOL)shouldBeRequiredToFailByGestureRecognizer:(id)recognizer
{
  if (self->_systemGestureGateType)
  {
    return [recognizer _requiresSystemGesturesToFail];
  }

  else
  {
    return 0;
  }
}

@end