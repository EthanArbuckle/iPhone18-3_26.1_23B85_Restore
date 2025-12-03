@interface UIMotionEvent
- (BOOL)_detectWhenNotActive;
- (float)_determineShakeLevelX:(float)x y:(float)y z:(float)z currentState:(int64_t)state;
- (float)_highPass:(float)pass;
- (float)_lowPass:(float)pass;
- (id)_allWindows;
- (id)_init;
- (id)description;
- (int64_t)_feedStateMachine:(float)machine currentState:(int64_t)state timestamp:(double)timestamp;
- (void)_accelerometerDidDetectMovementWithTimestamp:(double)timestamp;
- (void)_enablePeakDetectionForScreenBlanked:(id)blanked;
- (void)_enablePeakDetectionIfNecessary;
- (void)_idleTimerFired;
- (void)_resetLowPassState;
- (void)_sendEventToResponder:(id)responder;
- (void)_updateAccelerometerEnabled;
- (void)_willSuspend;
- (void)accelerometer:(id)accelerometer didAccelerateWithTimeStamp:(double)stamp x:(float)x y:(float)y z:(float)z eventType:(int)type;
- (void)dealloc;
@end

@implementation UIMotionEvent

- (void)_updateAccelerometerEnabled
{
  if (([UIApp _isActivated] & 1) == 0)
  {
    accelerometerEventsEnabled = [(BKSAccelerometer *)self->_motionAccelerometer accelerometerEventsEnabled];
    _detectWhenNotActive = [(UIMotionEvent *)self _detectWhenNotActive];
    if (!accelerometerEventsEnabled || _detectWhenNotActive)
    {
      if (!(accelerometerEventsEnabled & 1 | !_detectWhenNotActive))
      {

        [(UIMotionEvent *)self _willResume];
      }
    }

    else
    {

      [(UIMotionEvent *)self _willSuspend];
    }
  }
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = UIMotionEvent;
  _init = [(UIEvent *)&v10 _init];
  if (_init)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E380]);
    v4 = *(_init + 16);
    *(_init + 16) = v3;

    [*(_init + 16) setDelegate:_init];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, _init, __screenBlanked, @"com.apple.springboard.hasBlankedScreen", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    notify_register_check("com.apple.springboard.hasBlankedScreen", _init + 68);
    state64 = 0;
    if (!notify_get_state(*(_init + 68), &state64))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:state64];
      [_init _enablePeakDetectionForScreenBlanked:v6];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:_init selector:sel__willResume name:@"UIApplicationDidBecomeActiveNotification" object:UIApp];
    [defaultCenter addObserver:_init selector:sel__willSuspend name:@"UIApplicationSuspendedNotification" object:UIApp];
    [defaultCenter addObserver:_init selector:sel__updateAccelerometerEnabled name:@"UIWindowDidBecomeVisibleNotification" object:0];
    [defaultCenter addObserver:_init selector:sel__updateAccelerometerEnabled name:@"UIWindowDidBecomeHiddenNotification" object:0];
  }

  return _init;
}

- (BOOL)_detectWhenNotActive
{
  if ([UIApp _supportsShakesWhenNotActive])
  {
    return 1;
  }

  v3 = UIApp;

  return [v3 _needsShakesWhenInactive];
}

- (void)_willSuspend
{
  _detectWhenNotActive = [(UIMotionEvent *)self _detectWhenNotActive];
  [(BKSAccelerometer *)self->_motionAccelerometer setAccelerometerEventsEnabled:_detectWhenNotActive];
  if (!_detectWhenNotActive)
  {

    [(UIMotionEvent *)self _idleTimerFired];
  }
}

- (void)_idleTimerFired
{
  v3 = self->_lastMovementTime + 3.0;
  if (v3 < CACurrentMediaTime())
  {
    [(NSTimer *)self->_idleTimer invalidate];
    idleTimer = self->_idleTimer;
    self->_idleTimer = 0;

    [(BKSAccelerometer *)self->_motionAccelerometer setUpdateInterval:0.0];
    if (self->_sentMotionBegan)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._eventEnvironment);
      [(UIEventEnvironment *)WeakRetained _sendMotionCancelled:?];

      self->_sentMotionBegan = 0;
    }

    [(UIMotionEvent *)self _resetLowPassState];
    self->_stateMachineState = 0;
  }
}

- (void)_resetLowPassState
{
  *self->_lowPassState = 0u;
  *&self->_lowPassState[4] = 0u;
  *&self->_lowPassState[8] = 0;
  self->_lowPassStateIndex = 0;
}

- (void)_enablePeakDetectionIfNecessary
{
  state64 = 0;
  if (!notify_get_state(self->notifyToken, &state64))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:state64];
    [(UIMotionEvent *)self performSelectorOnMainThread:sel__enablePeakDetectionForScreenBlanked_ withObject:v3 waitUntilDone:0];
  }
}

- (void)dealloc
{
  v7[4] = *MEMORY[0x1E69E9840];
  notify_cancel(self->notifyToken);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.springboard.hasBlankedScreen", 0);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7[0] = @"UIApplicationDidBecomeActiveNotification";
  v7[1] = @"UIApplicationSuspendedNotification";
  v7[2] = @"UIWindowDidBecomeVisibleNotification";
  v7[3] = @"UIWindowDidBecomeHiddenNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v5 names:?];

  v6.receiver = self;
  v6.super_class = UIMotionEvent;
  [(UIEvent *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = UIMotionEvent;
  v4 = [(UIMotionEvent *)&v8 description];
  [(UIEvent *)self timestamp];
  v6 = [v3 stringWithFormat:@"%@ timestamp: %g subtype: %ld", v4, v5, -[UIMotionEvent subtype](self, "subtype")];

  return v6;
}

- (id)_allWindows
{
  _motionKeyWindow = [UIApp _motionKeyWindow];
  if (_motionKeyWindow)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:_motionKeyWindow];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_sendEventToResponder:(id)responder
{
  responderCopy = responder;
  shakeState = [(UIMotionEvent *)self shakeState];
  if (shakeState == 2)
  {
    [responderCopy motionCancelled:-[UIMotionEvent subtype](self withEvent:{"subtype"), self}];
  }

  else if (shakeState == 1)
  {
    [responderCopy motionEnded:-[UIMotionEvent subtype](self withEvent:{"subtype"), self}];
  }

  else
  {
    v5 = responderCopy;
    if (shakeState)
    {
      goto LABEL_8;
    }

    [responderCopy motionBegan:-[UIMotionEvent subtype](self withEvent:{"subtype"), self}];
  }

  v5 = responderCopy;
LABEL_8:
}

- (void)_accelerometerDidDetectMovementWithTimestamp:(double)timestamp
{
  self->_lastMovementTime = timestamp;
  if (!self->_idleTimer)
  {
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__idleTimerFired selector:0 userInfo:1 repeats:3.0];
    idleTimer = self->_idleTimer;
    self->_idleTimer = v4;
  }

  [(BKSAccelerometer *)self->_motionAccelerometer updateInterval];
  if (v6 < 0.1)
  {
    [(BKSAccelerometer *)self->_motionAccelerometer setUpdateInterval:?];
    if (!self->_stateMachineState)
    {
      self->_stateMachineState = 1;
      self->_sentMotionBegan = 0;
    }
  }
}

- (void)accelerometer:(id)accelerometer didAccelerateWithTimeStamp:(double)stamp x:(float)x y:(float)y z:(float)z eventType:(int)type
{
  accelerometerCopy = accelerometer;
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_5;
    }

    v23 = accelerometerCopy;
    [(UIMotionEvent *)self _accelerometerDidDetectMovementWithTimestamp:stamp];
    goto LABEL_4;
  }

  v23 = accelerometerCopy;
  *&v15 = x;
  *&v16 = y;
  *&v17 = z;
  [(UIMotionEvent *)self _determineShakeLevelX:self->_stateMachineState y:v15 z:v16 currentState:v17];
  v18 = [UIMotionEvent _feedStateMachine:"_feedStateMachine:currentState:timestamp:" currentState:self->_stateMachineState timestamp:?];
  self->_stateMachineState = v18;
  if (v18 > 4)
  {
    if (v18 != 5)
    {
      v19 = v18 == 6;
      accelerometerCopy = v23;
      if (v19)
      {
        [(UIMotionEvent *)self _resetLowPassState];
        accelerometerCopy = v23;
        if (self->_sentMotionBegan)
        {
          WeakRetained = objc_loadWeakRetained(&self->super._eventEnvironment);
          [(UIEventEnvironment *)WeakRetained _sendMotionEnded:?];

          accelerometerCopy = v23;
          self->_stateMachineState = 0;
          self->_sentMotionBegan = 0;
        }
      }

      goto LABEL_5;
    }

LABEL_19:
    accelerometerCopy = v23;
    if (self->_sentMotionBegan)
    {
      v22 = objc_loadWeakRetained(&self->super._eventEnvironment);
      [(UIEventEnvironment *)v22 _sendMotionCancelled:?];

      accelerometerCopy = v23;
      self->_sentMotionBegan = 0;
    }

    goto LABEL_5;
  }

  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18 == 2;
  accelerometerCopy = v23;
  if (v19 && !self->_sentMotionBegan)
  {
    self->_sentMotionBegan = 1;
    v20 = objc_loadWeakRetained(&self->super._eventEnvironment);
    [(UIEventEnvironment *)v20 _sendMotionBegan:?];

LABEL_4:
    accelerometerCopy = v23;
  }

LABEL_5:
}

- (int64_t)_feedStateMachine:(float)machine currentState:(int64_t)state timestamp:(double)timestamp
{
  if (state > 1)
  {
    switch(state)
    {
      case 2:
        machineCopy = machine;
        if (machineCopy < 0.071243)
        {
          return 1;
        }

        if (machineCopy > 0.237488)
        {
          self->_highLevelTime = timestamp;
          return 3;
        }

        break;
      case 3:
        if (machine < 0.237488)
        {
          if (self->_highLevelTime < timestamp)
          {
            self->_lowEndTimeout = timestamp;
            return 4;
          }

          return 1;
        }

        break;
      case 4:
        if (self->_lowEndTimeout + 0.5 < timestamp)
        {
          return 5;
        }

        if (machine < 0.071243)
        {
          return 6;
        }

        break;
      default:
        return state;
    }

    if (self->_shakeStartTime + 2.0 < timestamp)
    {
      return 0;
    }

    return state;
  }

  if (!state)
  {
    if (machine >= 0.071243)
    {
      return state;
    }

    return 1;
  }

  if (state == 1 && machine > 0.071243)
  {
    self->_shakeStartTime = timestamp;
    return 2;
  }

  return state;
}

- (float)_highPass:(float)pass
{
  highPassStateIndex = self->_highPassStateIndex;
  self->_highPassState[highPassStateIndex] = pass;
  v4 = highPassStateIndex & 1;
  v5 = self->_highPassState[v4] + 0.0;
  v4 ^= 1uLL;
  v6 = v5 - self->_highPassState[v4];
  self->_highPassStateIndex = v4;
  return v6 * 0.5;
}

- (float)_lowPass:(float)pass
{
  v3 = 0;
  lowPassStateIndex = self->_lowPassStateIndex;
  self->_lowPassState[lowPassStateIndex] = pass;
  self->_lowPassStateIndex = (lowPassStateIndex + 1) % 0xA;
  v5 = 0.0;
  do
  {
    v5 = v5 + self->_lowPassState[v3++];
  }

  while (v3 != 10);
  return v5 / 10.0;
}

- (float)_determineShakeLevelX:(float)x y:(float)y z:(float)z currentState:(int64_t)state
{
  v11 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v11 userInterfaceIdiom];

  v15 = z * 0.65;
  *&v15 = v15;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    *&v15 = 0.0;
  }

  v13 = x * 0.65;
  v14 = y * 0.65;
  v16 = ((v13 * v13) + (v14 * v14)) + (*&v15 * *&v15);
  *&v15 = (v16 * v16) * 0.5;
  if (state == 5)
  {
    [(UIMotionEvent *)self _highPass:v15];
    if (v17 >= 0.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = -v17;
    }

    v19 = v18;
    if (v18 < 0.071243)
    {
      [(UIMotionEvent *)self _resetLowPassState];
      self->_stateMachineState = 0;
    }

    *&v19 = v18;

    [(UIMotionEvent *)self _lowPass:v19];
  }

  else
  {
    v21 = state - 3;
    [(UIMotionEvent *)self _highPass:v15];
    if (*&v22 >= 0.0)
    {
      v23 = *&v22;
    }

    else
    {
      v23 = -*&v22;
    }

    *&v22 = v23;
    [(UIMotionEvent *)self _lowPass:v22];
    if (v21 < 2)
    {
      return v23;
    }
  }

  return result;
}

- (void)_enablePeakDetectionForScreenBlanked:(id)blanked
{
  if ([blanked BOOLValue])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.9;
  }

  *&v4 = v5;
  [(BKSAccelerometer *)self->_motionAccelerometer setXThreshold:v4];
  *&v6 = v5;
  [(BKSAccelerometer *)self->_motionAccelerometer setYThreshold:v6];
  motionAccelerometer = self->_motionAccelerometer;
  *&v8 = v5;

  [(BKSAccelerometer *)motionAccelerometer setZThreshold:v8];
}

@end