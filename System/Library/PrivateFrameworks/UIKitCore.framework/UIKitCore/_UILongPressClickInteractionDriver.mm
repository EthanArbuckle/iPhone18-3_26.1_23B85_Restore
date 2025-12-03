@interface _UILongPressClickInteractionDriver
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)hasExceededAllowableMovement;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (NSString)description;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UILongPressClickInteractionDriver)init;
- (double)allowableMovement;
- (double)clickDownDuration;
- (double)clickTimeoutDuration;
- (double)maximumEffectProgress;
- (double)touchDuration;
- (unint64_t)inputPrecision;
- (void)_asyncGestureBegan;
- (void)_handleGestureRecognizer:(id)recognizer;
- (void)_notifyDelegateOfUpdatedClickDownProgress:(double)progress forceAdjustedClickDownDuration:(double)duration;
- (void)_updateForActiveGestureRecognizer;
- (void)_updateTimeoutDebugUI:(double)i;
- (void)cancelInteraction;
- (void)setAllowableMovement:(double)movement;
- (void)setDelegate:(id)delegate;
- (void)setView:(id)view;
@end

@implementation _UILongPressClickInteractionDriver

- (_UIClickInteractionDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UILongPressClickInteractionDriver)init
{
  v7.receiver = self;
  v7.super_class = _UILongPressClickInteractionDriver;
  v2 = [(_UILongPressClickInteractionDriver *)&v7 init];
  if (v2)
  {
    v3 = [[_UITouchDurationObservingGestureRecognizer alloc] initWithTarget:v2 action:sel__handleGestureRecognizer_];
    [(UIGestureRecognizer *)v3 setAllowedTouchTypes:&unk_1EFE2BAD0];
    [(UIGestureRecognizer *)v3 setName:@"com.apple.UIKit.longPressClickDriverPrimary"];
    v4 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_LongPressClickInteractionDriverClickMinimumTouchDuration, @"LongPressClickInteractionDriverClickMinimumTouchDuration");
    v5 = *&qword_1ED48AB68;
    if (v4)
    {
      v5 = 0.15;
    }

    [(_UITouchDurationObservingGestureRecognizer *)v3 setMinimumDurationRequired:v5];
    [(UIGestureRecognizer *)v3 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v3 setDelegate:v2];
    [(_UILongPressClickInteractionDriver *)v2 setGestureRecognizer:v3];
    [(_UILongPressClickInteractionDriver *)v2 setCancelsTouchesInView:1];
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateImplements.didUpdateHighlightProgress = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldDelayGesture = objc_opt_respondsToSelector() & 1;
    self->_delegateImplements.shouldBeDelayedByGesture = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setAllowableMovement:(double)movement
{
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer setAllowableMovement:movement];
}

- (double)allowableMovement
{
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer allowableMovement];
  v4 = v3;

  return v4;
}

- (NSString)description
{
  behavior = [(_UILongPressClickInteractionDriver *)self behavior];
  if (behavior > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E71024F0[behavior];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p; behavior = %@>", objc_opt_class(), self, v4];
}

- (double)maximumEffectProgress
{
  [(_UILongPressClickInteractionDriver *)self clickTimeoutDuration];
  v4 = v3;
  [(_UILongPressClickInteractionDriver *)self clickDownDuration];
  return v4 / v5;
}

- (double)touchDuration
{
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer touchDuration];
  v4 = v3;

  return v4;
}

- (BOOL)hasExceededAllowableMovement
{
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  hasExceededAllowableMovement = [gestureRecognizer hasExceededAllowableMovement];

  return hasExceededAllowableMovement;
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
    view = [gestureRecognizer view];
    [view removeGestureRecognizer:gestureRecognizer];

    v8 = objc_storeWeak(&self->_view, obj);
    if (obj)
    {
      self->_currentState = 1;
      v9 = objc_loadWeakRetained(&self->_view);
      [v9 addGestureRecognizer:gestureRecognizer];
    }

    v5 = obj;
  }
}

- (void)cancelInteraction
{
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer setEnabled:0];

  gestureRecognizer2 = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  [gestureRecognizer2 setEnabled:1];
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(_UILongPressClickInteractionDriver *)self view];
  if (view)
  {
    gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
    [gestureRecognizer locationInView:view];
    v8 = v7;
    v10 = v9;

    [view convertPoint:spaceCopy toCoordinateSpace:{v8, v10}];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E695EFF8];
    v14 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (unint64_t)inputPrecision
{
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  if (gestureRecognizer)
  {
    v3 = gestureRecognizer[24];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)clickDownDuration
{
  v3 = _AXSForceTouchTimeDuration();
  if (v3 == 2)
  {
    v8 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48ABB0, @"LongPressClickInteractionDriverClickDownDurationShortAX");
    result = *&qword_1ED48ABB8;
    v6 = v8 == 0;
    v7 = 0.3;
  }

  else if (v3)
  {
    if (!self)
    {
      goto LABEL_11;
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained traitCollection];
    }

    else
    {
      +[UIDevice currentDevice];
    }
    v11 = ;
    userInterfaceIdiom = [v11 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v13 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AB80, @"LongPressClickInteractionDriverClickDownDurationPad");
      result = *&qword_1ED48AB88;
      v6 = v13 == 0;
      v7 = 0.325;
    }

    else
    {
LABEL_11:
      v14 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_928, @"LongPressClickInteractionDriverClickDownDuration");
      result = *&qword_1ED48AB78;
      v6 = v14 == 0;
      v7 = 0.4;
    }
  }

  else
  {
    v4 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48ABA0, @"LongPressClickInteractionDriverClickDownDurationAX");
    result = *&qword_1ED48ABA8;
    v6 = v4 == 0;
    v7 = 0.5;
  }

  if (!v6)
  {
    return v7;
  }

  return result;
}

- (double)clickTimeoutDuration
{
  v2 = _AXSForceTouchTimeDuration();
  if (v2)
  {
    if (v2 == 1)
    {
      v7 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AB90, @"LongPressClickInteractionDriverClickTimeoutDuration");
      result = *&qword_1ED48AB98;
      v5 = v7 == 0;
      v6 = 0.725;
    }

    else
    {
      if (v2 != 2)
      {
        return result;
      }

      v4 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48ABD0, @"LongPressClickInteractionDriverClickTimeoutDurationShortAX");
      result = *&qword_1ED48ABD8;
      v5 = v4 == 0;
      v6 = 0.3;
    }
  }

  else
  {
    v8 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48ABC0, @"LongPressClickInteractionDriverClickTimeoutDurationAX");
    result = *&qword_1ED48ABC8;
    v5 = v8 == 0;
    v6 = 1.1;
  }

  if (!v5)
  {
    return v6;
  }

  return result;
}

- (void)_handleGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  currentState = self->_currentState;
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  state = [gestureRecognizer state];

  if ((state - 4) >= 2)
  {
    if (state == 1)
    {
      objc_initWeak(&location, self);
      delegate = [(_UILongPressClickInteractionDriver *)self delegate];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __63___UILongPressClickInteractionDriver__handleGestureRecognizer___block_invoke;
      v9[3] = &unk_1E71024D0;
      objc_copyWeak(&v10, &location);
      [delegate clickDriver:self shouldBegin:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
      goto LABEL_9;
    }

    if (state != 3)
    {
      [(_UILongPressClickInteractionDriver *)self _updateForActiveGestureRecognizer];
      goto LABEL_9;
    }

    if (currentState == 3)
    {
      handleEvent(stateMachineSpec_0, self->_currentState, 2, self, &self->_currentState);
    }
  }

  handleEvent(stateMachineSpec_0, self->_currentState, 3, self, &self->_currentState);
LABEL_9:
}

- (void)_asyncGestureBegan
{
  [(_UILongPressClickInteractionDriver *)self setReachedClickDownThreshold:0];
  [(_UILongPressClickInteractionDriver *)self setForceMultiplier:1.0];
  handleEvent(stateMachineSpec_0, self->_currentState, 0, self, &self->_currentState);

  [(_UILongPressClickInteractionDriver *)self _updateForActiveGestureRecognizer];
}

- (void)_updateForActiveGestureRecognizer
{
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
  v4 = gestureRecognizer;
  currentState = self->_currentState;
  if (currentState == 1)
  {
    goto LABEL_37;
  }

  v37 = gestureRecognizer;
  state = [gestureRecognizer state];
  v4 = v37;
  if (state != 2)
  {
    goto LABEL_37;
  }

  [v37 touchDuration];
  v8 = v7;
  [v37 touchForce];
  v10 = v9;
  _allActiveTouches = [v37 _allActiveTouches];
  anyObject = [_allActiveTouches anyObject];
  _isPointerTouch = [anyObject _isPointerTouch];

  if (!_isPointerTouch)
  {
    v19 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AC20, @"ClickAutoTriggerForceThreshold");
    v20 = *&qword_1ED48AC28;
    if (v19)
    {
      v20 = 4.0;
    }

    if (v10 >= v20)
    {
      v22 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AC30, @"ClickAutoTriggerMinPressDuration");
      v23 = *&qword_1ED48AC38;
      if (v22)
      {
        v23 = 0.05;
      }

      v21 = v8 >= v23;
    }

    else
    {
      v21 = 0;
    }

    [(_UILongPressClickInteractionDriver *)self setReachedClickDownThreshold:v21];
    [(_UILongPressClickInteractionDriver *)self forceMultiplier];
    v15 = v24;
    if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48ABE0, @"LongPressClickInteractionDriverMinimumForceAccelerationThreshold"))
    {
      v16 = 0.55;
    }

    else
    {
      v16 = *&qword_1ED48ABE8;
    }

    v25 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AC00, @"LongPressClickInteractionDriverForceAccelerationMultiplier");
    v18 = *&qword_1ED48AC08;
    if (v25)
    {
      v18 = 0.55;
    }

    goto LABEL_23;
  }

  [(_UILongPressClickInteractionDriver *)self setReachedClickDownThreshold:0];
  if (_os_feature_enabled_impl())
  {
    [(_UILongPressClickInteractionDriver *)self forceMultiplier];
    v15 = v14;
    if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48ABF0, @"LongPressClickInteractionDriverMinimumForceAccelerationThresholdPointer"))
    {
      v16 = 1.5;
    }

    else
    {
      v16 = *&qword_1ED48ABF8;
    }

    v17 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48AC10, @"LongPressClickInteractionDriverForceAccelerationMultiplierPointer");
    v18 = *&qword_1ED48AC18;
    if (v17)
    {
      v18 = 0.2;
    }

LABEL_23:
    v26 = (v10 - v16) * v18 + 1.0;
    if (v16 >= v10)
    {
      v26 = 1.0;
    }

    if (v15 >= v26)
    {
      v26 = v15;
    }

    [(_UILongPressClickInteractionDriver *)self setForceMultiplier:v26];
  }

  [(_UILongPressClickInteractionDriver *)self clickDownDuration];
  v28 = v27;
  [(_UILongPressClickInteractionDriver *)self forceMultiplier];
  v30 = v8 / (v28 / v29);
  [(_UILongPressClickInteractionDriver *)self _notifyDelegateOfUpdatedClickDownProgress:v30 forceAdjustedClickDownDuration:?];
  [(_UILongPressClickInteractionDriver *)self clickTimeoutDuration];
  v32 = v31;
  [(_UILongPressClickInteractionDriver *)self forceMultiplier];
  v34 = v33;
  clicksUpAutomaticallyAfterTimeout = [(_UILongPressClickInteractionDriver *)self clicksUpAutomaticallyAfterTimeout];
  if (currentState == 3 && clicksUpAutomaticallyAfterTimeout && v8 > v32 / v34)
  {
    handleEvent(stateMachineSpec_0, self->_currentState, 2, self, &self->_currentState);
    [(_UILongPressClickInteractionDriver *)self _updateTimeoutDebugUI:v8];
LABEL_36:
    v4 = v37;
    goto LABEL_37;
  }

  v4 = v37;
  if (currentState <= 2)
  {
    if (v30 >= 1.0 || (v36 = [(_UILongPressClickInteractionDriver *)self reachedClickDownThreshold], v4 = v37, v36))
    {
      handleEvent(stateMachineSpec_0, self->_currentState, 1, self, &self->_currentState);
      goto LABEL_36;
    }
  }

LABEL_37:
}

- (void)_notifyDelegateOfUpdatedClickDownProgress:(double)progress forceAdjustedClickDownDuration:(double)duration
{
  if (self->_delegateImplements.didUpdateHighlightProgress)
  {
    if ([(_UILongPressClickInteractionDriver *)self clicksUpAutomaticallyAfterTimeout])
    {
      gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];
      [gestureRecognizer minimumDurationRequired];
      v10 = v9;

      v11 = progress + -1.0;
      v12 = fmax(fmin((progress - v10 / duration) / (1.0 - v10 / duration), 1.0), 0.0);
      if (progress + -1.0 < 0.0)
      {
        v11 = 0.0;
      }

      v13 = v11 + v12;
    }

    else
    {
      v13 = fmax(fmin(progress / (pow(1.0 - progress, 3.4000001) + progress), 1.0), 0.0);
    }

    delegate = [(_UILongPressClickInteractionDriver *)self delegate];
    [delegate clickDriver:self didUpdateHighlightProgress:v13];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v8 = touchCopy;
  behavior = self->_behavior;
  if (behavior == 2)
  {
    LOBYTE(v10) = [touchCopy _originatesFromPointerEvent];
  }

  else if (behavior == 1)
  {
    v10 = [touchCopy _originatesFromPointerEvent] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];

  if (gestureRecognizer != recognizerCopy)
  {
    goto LABEL_2;
  }

  name = [gestureRecognizerCopy name];
  name2 = [recognizerCopy name];
  v12 = [name isEqualToString:name2];

  if (v12)
  {
    view = [recognizerCopy view];
    view2 = [gestureRecognizerCopy view];
    if (view == view2)
    {
      v9 = 1;
    }

    else
    {
      v9 = [view isDescendantOfView:view2];
    }

    goto LABEL_10;
  }

  if (self->_delegateImplements.shouldDelayGesture)
  {
    view = [(_UILongPressClickInteractionDriver *)self delegate];
    v9 = [view clickDriver:self shouldDelayGestureRecognizer:gestureRecognizerCopy];
LABEL_10:

    goto LABEL_11;
  }

LABEL_2:
  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  gestureRecognizer = [(_UILongPressClickInteractionDriver *)self gestureRecognizer];

  if (gestureRecognizer != recognizerCopy)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  v11 = [gestureRecognizerCopy _isGestureType:2];
  v9 = 1;
  if (([gestureRecognizerCopy _isGestureType:4] & 1) == 0 && (v11 & 1) == 0)
  {
    if (self->_delegateImplements.shouldBeDelayedByGesture)
    {
      delegate = [(_UILongPressClickInteractionDriver *)self delegate];
      v9 = [delegate clickDriver:self shouldBeDelayedByGestureRecognizer:gestureRecognizerCopy];

      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:

  return v9;
}

- (void)_updateTimeoutDebugUI:(double)i
{
  v5 = +[_UIPointerSettingsDomain rootSettings];
  showMenuPressDuration = [v5 showMenuPressDuration];

  if (showMenuPressDuration)
  {
    if (!_updateTimeoutDebugUI____triggerTime)
    {
      v7 = objc_opt_new();
      v8 = _updateTimeoutDebugUI____triggerTime;
      _updateTimeoutDebugUI____triggerTime = v7;

      [_updateTimeoutDebugUI____triggerTime setTextAlignment:1];
      v9 = +[UIColor redColor];
      [_updateTimeoutDebugUI____triggerTime setBackgroundColor:v9];

      [_updateTimeoutDebugUI____triggerTime setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      [_updateTimeoutDebugUI____triggerTime setCenter:{20.0, 50.0}];
      v10 = [off_1E70ECC18 monospacedDigitSystemFontOfSize:40.0 weight:*off_1E70ECD20];
      [_updateTimeoutDebugUI____triggerTime setFont:v10];

      layer = [_updateTimeoutDebugUI____triggerTime layer];
      [layer setCornerRadius:13.0];

      v12 = *MEMORY[0x1E69796E8];
      layer2 = [_updateTimeoutDebugUI____triggerTime layer];
      [layer2 setCornerCurve:v12];

      v14 = +[UIColor whiteColor];
      cGColor = [v14 CGColor];
      layer3 = [_updateTimeoutDebugUI____triggerTime layer];
      [layer3 setBorderColor:cGColor];

      layer4 = [_updateTimeoutDebugUI____triggerTime layer];
      [layer4 setBorderWidth:2.0];

      [_updateTimeoutDebugUI____triggerTime setClipsToBounds:1];
      view = [(_UILongPressClickInteractionDriver *)self view];
      window = [view window];
      [window addSubview:_updateTimeoutDebugUI____triggerTime];
    }

    v20 = "P";
    LODWORD(v20) = llround(i * 1000.0);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ims", v20];
    [_updateTimeoutDebugUI____triggerTime setText:v21];

    [_updateTimeoutDebugUI____triggerTime sizeToFit];
    [_updateTimeoutDebugUI____triggerTime bounds];
    v22 = _updateTimeoutDebugUI____triggerTime;

    [v22 setBounds:?];
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end