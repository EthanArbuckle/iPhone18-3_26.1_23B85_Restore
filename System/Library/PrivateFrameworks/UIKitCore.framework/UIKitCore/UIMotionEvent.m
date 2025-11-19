@interface UIMotionEvent
- (BOOL)_detectWhenNotActive;
- (float)_determineShakeLevelX:(float)a3 y:(float)a4 z:(float)a5 currentState:(int64_t)a6;
- (float)_highPass:(float)a3;
- (float)_lowPass:(float)a3;
- (id)_allWindows;
- (id)_init;
- (id)description;
- (int64_t)_feedStateMachine:(float)a3 currentState:(int64_t)a4 timestamp:(double)a5;
- (void)_accelerometerDidDetectMovementWithTimestamp:(double)a3;
- (void)_enablePeakDetectionForScreenBlanked:(id)a3;
- (void)_enablePeakDetectionIfNecessary;
- (void)_idleTimerFired;
- (void)_resetLowPassState;
- (void)_sendEventToResponder:(id)a3;
- (void)_updateAccelerometerEnabled;
- (void)_willSuspend;
- (void)accelerometer:(id)a3 didAccelerateWithTimeStamp:(double)a4 x:(float)a5 y:(float)a6 z:(float)a7 eventType:(int)a8;
- (void)dealloc;
@end

@implementation UIMotionEvent

- (void)_updateAccelerometerEnabled
{
  if (([UIApp _isActivated] & 1) == 0)
  {
    v3 = [(BKSAccelerometer *)self->_motionAccelerometer accelerometerEventsEnabled];
    v4 = [(UIMotionEvent *)self _detectWhenNotActive];
    if (!v3 || v4)
    {
      if (!(v3 & 1 | !v4))
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
  v2 = [(UIEvent *)&v10 _init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E380]);
    v4 = *(v2 + 16);
    *(v2 + 16) = v3;

    [*(v2 + 16) setDelegate:v2];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __screenBlanked, @"com.apple.springboard.hasBlankedScreen", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    notify_register_check("com.apple.springboard.hasBlankedScreen", v2 + 68);
    state64 = 0;
    if (!notify_get_state(*(v2 + 68), &state64))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:state64];
      [v2 _enablePeakDetectionForScreenBlanked:v6];
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel__willResume name:@"UIApplicationDidBecomeActiveNotification" object:UIApp];
    [v7 addObserver:v2 selector:sel__willSuspend name:@"UIApplicationSuspendedNotification" object:UIApp];
    [v7 addObserver:v2 selector:sel__updateAccelerometerEnabled name:@"UIWindowDidBecomeVisibleNotification" object:0];
    [v7 addObserver:v2 selector:sel__updateAccelerometerEnabled name:@"UIWindowDidBecomeHiddenNotification" object:0];
  }

  return v2;
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
  v3 = [(UIMotionEvent *)self _detectWhenNotActive];
  [(BKSAccelerometer *)self->_motionAccelerometer setAccelerometerEventsEnabled:v3];
  if (!v3)
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
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v7[0] = @"UIApplicationDidBecomeActiveNotification";
  v7[1] = @"UIApplicationSuspendedNotification";
  v7[2] = @"UIWindowDidBecomeVisibleNotification";
  v7[3] = @"UIWindowDidBecomeHiddenNotification";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  [(NSNotificationCenter *)v4 _uiRemoveObserver:v5 names:?];

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
  v2 = [UIApp _motionKeyWindow];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_sendEventToResponder:(id)a3
{
  v6 = a3;
  v4 = [(UIMotionEvent *)self shakeState];
  if (v4 == 2)
  {
    [v6 motionCancelled:-[UIMotionEvent subtype](self withEvent:{"subtype"), self}];
  }

  else if (v4 == 1)
  {
    [v6 motionEnded:-[UIMotionEvent subtype](self withEvent:{"subtype"), self}];
  }

  else
  {
    v5 = v6;
    if (v4)
    {
      goto LABEL_8;
    }

    [v6 motionBegan:-[UIMotionEvent subtype](self withEvent:{"subtype"), self}];
  }

  v5 = v6;
LABEL_8:
}

- (void)_accelerometerDidDetectMovementWithTimestamp:(double)a3
{
  self->_lastMovementTime = a3;
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

- (void)accelerometer:(id)a3 didAccelerateWithTimeStamp:(double)a4 x:(float)a5 y:(float)a6 z:(float)a7 eventType:(int)a8
{
  v14 = a3;
  if (a8)
  {
    if (a8 != 1)
    {
      goto LABEL_5;
    }

    v23 = v14;
    [(UIMotionEvent *)self _accelerometerDidDetectMovementWithTimestamp:a4];
    goto LABEL_4;
  }

  v23 = v14;
  *&v15 = a5;
  *&v16 = a6;
  *&v17 = a7;
  [(UIMotionEvent *)self _determineShakeLevelX:self->_stateMachineState y:v15 z:v16 currentState:v17];
  v18 = [UIMotionEvent _feedStateMachine:"_feedStateMachine:currentState:timestamp:" currentState:self->_stateMachineState timestamp:?];
  self->_stateMachineState = v18;
  if (v18 > 4)
  {
    if (v18 != 5)
    {
      v19 = v18 == 6;
      v14 = v23;
      if (v19)
      {
        [(UIMotionEvent *)self _resetLowPassState];
        v14 = v23;
        if (self->_sentMotionBegan)
        {
          WeakRetained = objc_loadWeakRetained(&self->super._eventEnvironment);
          [(UIEventEnvironment *)WeakRetained _sendMotionEnded:?];

          v14 = v23;
          self->_stateMachineState = 0;
          self->_sentMotionBegan = 0;
        }
      }

      goto LABEL_5;
    }

LABEL_19:
    v14 = v23;
    if (self->_sentMotionBegan)
    {
      v22 = objc_loadWeakRetained(&self->super._eventEnvironment);
      [(UIEventEnvironment *)v22 _sendMotionCancelled:?];

      v14 = v23;
      self->_sentMotionBegan = 0;
    }

    goto LABEL_5;
  }

  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18 == 2;
  v14 = v23;
  if (v19 && !self->_sentMotionBegan)
  {
    self->_sentMotionBegan = 1;
    v20 = objc_loadWeakRetained(&self->super._eventEnvironment);
    [(UIEventEnvironment *)v20 _sendMotionBegan:?];

LABEL_4:
    v14 = v23;
  }

LABEL_5:
}

- (int64_t)_feedStateMachine:(float)a3 currentState:(int64_t)a4 timestamp:(double)a5
{
  if (a4 > 1)
  {
    switch(a4)
    {
      case 2:
        v5 = a3;
        if (v5 < 0.071243)
        {
          return 1;
        }

        if (v5 > 0.237488)
        {
          self->_highLevelTime = a5;
          return 3;
        }

        break;
      case 3:
        if (a3 < 0.237488)
        {
          if (self->_highLevelTime < a5)
          {
            self->_lowEndTimeout = a5;
            return 4;
          }

          return 1;
        }

        break;
      case 4:
        if (self->_lowEndTimeout + 0.5 < a5)
        {
          return 5;
        }

        if (a3 < 0.071243)
        {
          return 6;
        }

        break;
      default:
        return a4;
    }

    if (self->_shakeStartTime + 2.0 < a5)
    {
      return 0;
    }

    return a4;
  }

  if (!a4)
  {
    if (a3 >= 0.071243)
    {
      return a4;
    }

    return 1;
  }

  if (a4 == 1 && a3 > 0.071243)
  {
    self->_shakeStartTime = a5;
    return 2;
  }

  return a4;
}

- (float)_highPass:(float)a3
{
  highPassStateIndex = self->_highPassStateIndex;
  self->_highPassState[highPassStateIndex] = a3;
  v4 = highPassStateIndex & 1;
  v5 = self->_highPassState[v4] + 0.0;
  v4 ^= 1uLL;
  v6 = v5 - self->_highPassState[v4];
  self->_highPassStateIndex = v4;
  return v6 * 0.5;
}

- (float)_lowPass:(float)a3
{
  v3 = 0;
  lowPassStateIndex = self->_lowPassStateIndex;
  self->_lowPassState[lowPassStateIndex] = a3;
  self->_lowPassStateIndex = (lowPassStateIndex + 1) % 0xA;
  v5 = 0.0;
  do
  {
    v5 = v5 + self->_lowPassState[v3++];
  }

  while (v3 != 10);
  return v5 / 10.0;
}

- (float)_determineShakeLevelX:(float)a3 y:(float)a4 z:(float)a5 currentState:(int64_t)a6
{
  v11 = +[UIDevice currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v15 = a5 * 0.65;
  *&v15 = v15;
  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    *&v15 = 0.0;
  }

  v13 = a3 * 0.65;
  v14 = a4 * 0.65;
  v16 = ((v13 * v13) + (v14 * v14)) + (*&v15 * *&v15);
  *&v15 = (v16 * v16) * 0.5;
  if (a6 == 5)
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
    v21 = a6 - 3;
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

- (void)_enablePeakDetectionForScreenBlanked:(id)a3
{
  if ([a3 BOOLValue])
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