@interface _UIDigitizerGestureRecognizerImp
- (BOOL)_senderOfPressesHasTouchSurface:(id)surface withEvent:(id)event;
- (BOOL)_senderOfPressesIsSoftwareRemoteWithEvent:(id)event;
- (BOOL)_shouldReportDigitizerLocation;
- (CGPoint)defaultDigitizerLocation;
- (CGPoint)digitizerLocation;
- (NSTimer)minimumPressDurationTimer;
- (NSTimer)waitingForTouchesAfterPressTimer;
- (_UIDigitizerGestureRecognizerImpDelegate)delegate;
- (void)_minimumPressDurationTimerFired:(id)fired;
- (void)_waitingForTouchesAfterPressTimerFired:(id)fired;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIDigitizerGestureRecognizerImp

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([(_UIDigitizerGestureRecognizerImp *)self _shouldReportDigitizerLocation])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v7 - self->_pressEndTime;
    [event _digitizerLocation];
    self->_digitizerLocation.x = v9;
    self->_digitizerLocation.y = v10;
    self->_numberOfActiveTouches += [began count];
    if (v8 < self->_pressEndToTouchBeginDuration && self->_lastRecognitionTime != self->_pressEndTime)
    {
      WeakRetained = objc_loadWeakRetained(&self->_waitingForTouchesAfterPressTimer);
      [WeakRetained invalidate];

      objc_storeWeak(&self->_waitingForTouchesAfterPressTimer, 0);
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 touchesBeganSuccessfully:self];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ([(_UIDigitizerGestureRecognizerImp *)self _shouldReportDigitizerLocation])
  {
    [event _digitizerLocation];
    self->_digitizerLocation.x = v6;
    self->_digitizerLocation.y = v7;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(_UIDigitizerGestureRecognizerImp *)self _shouldReportDigitizerLocation])
  {
    [event _digitizerLocation];
    self->_digitizerLocation.x = v7;
    self->_digitizerLocation.y = v8;
    numberOfActiveTouches = self->_numberOfActiveTouches;
    v10 = [ended count];
    self->_numberOfActiveTouches = (numberOfActiveTouches - v10) & ~((numberOfActiveTouches - v10) >> 63);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_touchEndTime = v11;
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(_UIDigitizerGestureRecognizerImp *)self _shouldReportDigitizerLocation:cancelled])
  {
    [(_UIDigitizerGestureRecognizerImp *)self defaultDigitizerLocation];
    self->_digitizerLocation.x = v6;
    self->_digitizerLocation.y = v7;
    numberOfActiveTouches = self->_numberOfActiveTouches;
    v9 = [cancelled count];
    self->_numberOfActiveTouches = (numberOfActiveTouches - v9) & ~((numberOfActiveTouches - v9) >> 63);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_touchEndTime = v10;
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_pressBeginTime = v5;
  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__minimumPressDurationTimerFired_ selector:0 userInfo:0 repeats:self->_minimumPressDuration];
  objc_storeWeak(&self->_minimumPressDurationTimer, v6);

  if ([(_UIDigitizerGestureRecognizerImp *)self _shouldReportDigitizerLocation])
  {
    WeakRetained = objc_loadWeakRetained(&self->_waitingForTouchesAfterPressTimer);
    [WeakRetained invalidate];

    objc_storeWeak(&self->_waitingForTouchesAfterPressTimer, 0);
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = v7;
  touchEndTime = self->_touchEndTime;
  v10 = v7 - self->_pressBeginTime;
  WeakRetained = objc_loadWeakRetained(&self->_minimumPressDurationTimer);
  [WeakRetained invalidate];

  objc_storeWeak(&self->_minimumPressDurationTimer, 0);
  self->_pressEndTime = v8;
  if (self->_minimumPressDuration > v10 || v10 >= self->_maximumPressDuration)
  {
    goto LABEL_11;
  }

  if (![(_UIDigitizerGestureRecognizerImp *)self _shouldReportDigitizerLocation])
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 pressesEndedSuccessfully:self];
LABEL_10:

    goto LABEL_11;
  }

  if (self->_numberOfActiveTouches <= 0 && v8 - touchEndTime >= self->_touchEndToPressEndDuration)
  {
    if (![(_UIDigitizerGestureRecognizerImp *)self _senderOfPressesHasTouchSurface:ended withEvent:event, v8 - touchEndTime]|| [(_UIDigitizerGestureRecognizerImp *)self _senderOfPressesIsSoftwareRemoteWithEvent:event])
    {
      [(_UIDigitizerGestureRecognizerImp *)self defaultDigitizerLocation];
      self->_digitizerLocation.x = v14;
      self->_digitizerLocation.y = v15;
LABEL_22:
      self->_lastRecognitionTime = v8;
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 pressesEndedSuccessfully:self];
      goto LABEL_15;
    }

    v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__waitingForTouchesAfterPressTimerFired_ selector:0 userInfo:0 repeats:self->_pressEndToTouchBeginDuration];
    objc_storeWeak(&self->_waitingForTouchesAfterPressTimer, v12);
    goto LABEL_10;
  }

  if ([(_UIDigitizerGestureRecognizerImp *)self _senderOfPressesHasTouchSurface:ended withEvent:event]|| [(_UIDigitizerGestureRecognizerImp *)self _senderOfPressesIsSoftwareRemoteWithEvent:event])
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v10 < self->_minimumPressDuration)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 pressesNotHeldLongEnough:self];
  }

  if (v10 > self->_maximumPressDuration)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 pressesHeldOverMaximum:self];
LABEL_15:
  }
}

- (BOOL)_shouldReportDigitizerLocation
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _remoteTouchSurfaceType] != 2;

  return v3;
}

- (CGPoint)digitizerLocation
{
  if ([(_UIDigitizerGestureRecognizerImp *)self _shouldReportDigitizerLocation])
  {
    x = self->_digitizerLocation.x;
    y = self->_digitizerLocation.y;
  }

  else
  {
    [(_UIDigitizerGestureRecognizerImp *)self defaultDigitizerLocation];
  }

  result.y = y;
  result.x = x;
  return result;
}

- (void)reset
{
  self->_numberOfActiveTouches = 0;
  *&self->_touchEndTime = 0u;
  *&self->_pressEndTime = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_minimumPressDurationTimer);
  [WeakRetained invalidate];

  objc_storeWeak(&self->_minimumPressDurationTimer, 0);
  v4 = objc_loadWeakRetained(&self->_waitingForTouchesAfterPressTimer);
  [v4 invalidate];

  objc_storeWeak(&self->_waitingForTouchesAfterPressTimer, 0);
}

- (void)_minimumPressDurationTimerFired:(id)fired
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pressesHeldForMinimum:self];
}

- (void)_waitingForTouchesAfterPressTimerFired:(id)fired
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pressesEndedSuccessfully:self];
}

- (CGPoint)defaultDigitizerLocation
{
  v2 = 0.5;
  v3 = 0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)_senderOfPressesHasTouchSurface:(id)surface withEvent:(id)event
{
  if ([event _hidEvent])
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v8 = IOHIDEventGetIntegerValue();
    if (IntegerValue == 12 && v8 == 65)
    {
      v9 = 0;
    }

    else
    {
      v11 = v8 != 158 && v8 != 40;
      v9 = IntegerValue != 7 || v11;
    }
  }

  else
  {
    v9 = 1;
  }

  anyObject = [surface anyObject];
  if ([anyObject type] != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDigitizerGestureRecognizers.m" lineNumber:322 description:&stru_1EFB14550];
  }

  v13 = [anyObject _isSynthetic] ^ 1;

  return v13 & v9;
}

- (BOOL)_senderOfPressesIsSoftwareRemoteWithEvent:(id)event
{
  if (![event _hidEvent])
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v4 = IOHIDEventGetIntegerValue();
  v5 = 0;
  if (IntegerValue != 12 || v4 != 128)
  {
    return v5;
  }

  Children = IOHIDEventGetChildren();
  if (!Children)
  {
    return 0;
  }

  v7 = Children;
  v8 = 0;
  do
  {
    Count = CFArrayGetCount(v7);
    v5 = v8 < Count;
    if (v8 >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(v7, v8);
    v10 = IOHIDEventGetIntegerValue();
    v11 = IOHIDEventGetIntegerValue();
    ++v8;
  }

  while (v10 != 65299 || v11 != 16);
  return v5;
}

- (_UIDigitizerGestureRecognizerImpDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSTimer)minimumPressDurationTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_minimumPressDurationTimer);

  return WeakRetained;
}

- (NSTimer)waitingForTouchesAfterPressTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_waitingForTouchesAfterPressTimer);

  return WeakRetained;
}

@end