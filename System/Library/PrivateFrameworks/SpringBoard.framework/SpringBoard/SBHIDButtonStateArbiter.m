@interface SBHIDButtonStateArbiter
- (BOOL)_canIncrementRepeatedPressCount;
- (SBHIDButtonStateArbiter)init;
- (SBHIDButtonStateDelegate)delegate;
- (uint64_t)_repeatedPressTimeoutDidOccur;
- (void)_invalidateLongPressTimer;
- (void)_invalidateRepeatedPressTimer;
- (void)_longPressTimeoutDidOccur;
- (void)_startLongPressTimerWithTimeout:(double *)val;
- (void)_startRepeatedPressTimerWithTimeout:(double *)val;
- (void)dealloc;
- (void)processEvent:(__IOHIDEvent *)a3;
- (void)reset;
@end

@implementation SBHIDButtonStateArbiter

- (SBHIDButtonStateArbiter)init
{
  v3.receiver = self;
  v3.super_class = SBHIDButtonStateArbiter;
  result = [(SBHIDButtonStateArbiter *)&v3 init];
  if (result)
  {
    *&result->_repeatedPressCount = vdupq_n_s64(1uLL);
  }

  return result;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
  [(BSAbsoluteMachTimer *)self->_repeatedPressTimer invalidate];
  v3.receiver = self;
  v3.super_class = SBHIDButtonStateArbiter;
  [(SBHIDButtonStateArbiter *)&v3 dealloc];
}

- (void)_startLongPressTimerWithTimeout:(double *)val
{
  if (val)
  {
    if (a2 > 0.0)
    {
      val[6] = a2;
      objc_initWeak(&location, val);
      v4 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBHIDButtonStateArbiter.longPressTimer"];
      v5 = *(val + 3);
      *(val + 3) = v4;

      v6 = *(val + 3);
      v7 = MEMORY[0x277D85CD0];
      v8 = MEMORY[0x277D85CD0];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __59__SBHIDButtonStateArbiter__startLongPressTimerWithTimeout___block_invoke;
      v9[3] = &unk_2783A9918;
      objc_copyWeak(&v10, &location);
      [v6 scheduleWithFireInterval:v7 leewayInterval:v9 queue:a2 handler:0.0];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __59__SBHIDButtonStateArbiter__startLongPressTimerWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBHIDButtonStateArbiter *)WeakRetained _longPressTimeoutDidOccur];
}

- (void)_startRepeatedPressTimerWithTimeout:(double *)val
{
  if (val)
  {
    if (a2 > 0.0)
    {
      val[7] = a2;
      objc_initWeak(&location, val);
      v4 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBHIDButtonStateArbiter.repeatedPressTimer"];
      v5 = *(val + 4);
      *(val + 4) = v4;

      v6 = *(val + 4);
      v7 = MEMORY[0x277D85CD0];
      v8 = MEMORY[0x277D85CD0];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __63__SBHIDButtonStateArbiter__startRepeatedPressTimerWithTimeout___block_invoke;
      v9[3] = &unk_2783A9918;
      objc_copyWeak(&v10, &location);
      [v6 scheduleWithFireInterval:v7 leewayInterval:v9 queue:a2 handler:0.0];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __63__SBHIDButtonStateArbiter__startRepeatedPressTimerWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBHIDButtonStateArbiter *)WeakRetained _repeatedPressTimeoutDidOccur];
}

- (void)processEvent:(__IOHIDEvent *)a3
{
  SenderID = IOHIDEventGetSenderID();
  IntegerValue = IOHIDEventGetIntegerValue();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (IntegerValue)
  {
    v18 = WeakRetained;
    TimeStamp = IOHIDEventGetTimeStamp();
    repeatedPressTimeoutAtUpEvent = self->_repeatedPressTimeoutAtUpEvent;
    if (repeatedPressTimeoutAtUpEvent <= 0.0)
    {
      [(SBHIDButtonStateArbiter *)self reset];
      self->_downEventSenderID = SenderID;
      ++self->_pressSequence;
      self->_downTime = TimeStamp;
    }

    else
    {
      BSMonotonicReferencedTimeFromMachTime();
      if (v9 > repeatedPressTimeoutAtUpEvent)
      {
        [(SBHIDButtonStateArbiter *)self _repeatedPressTimeoutDidOccur];
      }

      [(SBHIDButtonStateArbiter *)self reset];
      self->_downEventSenderID = SenderID;
      ++self->_pressSequence;
      self->_downTime = TimeStamp;
      BSMonotonicReferencedTimeFromMachTime();
      if (v10 < repeatedPressTimeoutAtUpEvent)
      {
        repeatedPressCount = self->_repeatedPressCount;
        if (self->_maximumRepeatedPressCount - 1 >= repeatedPressCount)
        {
          self->_repeatedPressCount = repeatedPressCount + 1;
          [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
          longPressTimer = self->_longPressTimer;
          self->_longPressTimer = 0;

          goto LABEL_18;
        }
      }
    }

    self->_repeatedPressCount = 1;
    [(SBHIDButtonStateArbiter *)self _startLongPressTimerWithTimeout:?];
    [v18 performActionsForButtonDown:self];
    goto LABEL_18;
  }

  if (self->_downEventSenderID != SenderID)
  {
    goto LABEL_19;
  }

  v18 = WeakRetained;
  v13 = IOHIDEventGetTimeStamp();
  longPressTimeoutAtDownEvent = self->_longPressTimeoutAtDownEvent;
  if (longPressTimeoutAtDownEvent > 0.0)
  {
    BSMonotonicReferencedTimeFromMachTime();
    if (v15 > longPressTimeoutAtDownEvent)
    {
      [(SBHIDButtonStateArbiter *)self _longPressTimeoutDidOccur];
    }
  }

  repeatedPressTimeout = self->_repeatedPressTimeout;
  if (repeatedPressTimeout <= 0.0 || self->_recognizedLongPress || (v17 = self->_repeatedPressCount, self->_maximumRepeatedPressCount - 1 < v17))
  {
    [v18 performActionsForButtonUp:self];
    self->_repeatedPressInitialDownTime = 0;
    [(SBHIDButtonStateArbiter *)self reset];
  }

  else
  {
    if (v17 == 1)
    {
      self->_repeatedPressInitialDownTime = self->_downTime;
    }

    [(SBHIDButtonStateArbiter *)self reset];
    self->_previousUpTime = v13;
    [(SBHIDButtonStateArbiter *)self _startRepeatedPressTimerWithTimeout:?];
  }

LABEL_18:
  WeakRetained = v18;
LABEL_19:
}

- (SBHIDButtonStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reset
{
  if (self)
  {
    [(BSAbsoluteMachTimer *)self->_longPressTimer invalidate];
    longPressTimer = self->_longPressTimer;
    self->_longPressTimer = 0;

    [(BSAbsoluteMachTimer *)self->_repeatedPressTimer invalidate];
    repeatedPressTimer = self->_repeatedPressTimer;
    self->_repeatedPressTimer = 0;
  }

  self->_recognizedLongPress = 0;
  self->_downTime = 0;
  self->_previousUpTime = 0;
  self->_longPressTimeoutAtDownEvent = 0.0;
  self->_repeatedPressTimeoutAtUpEvent = 0.0;
  self->_downEventSenderID = 0;
}

- (void)_invalidateLongPressTimer
{
  if (a1)
  {
    [*(a1 + 24) invalidate];
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (void)_invalidateRepeatedPressTimer
{
  if (a1)
  {
    [*(a1 + 32) invalidate];
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

- (void)_longPressTimeoutDidOccur
{
  if (a1 && *(a1 + 24))
  {
    *(a1 + 16) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained performActionsForButtonLongPress:a1];

    *(a1 + 48) = 0;
    [*(a1 + 24) invalidate];
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (uint64_t)_repeatedPressTimeoutDidOccur
{
  if (result)
  {
    v1 = result;
    if (*(result + 32))
    {
      WeakRetained = objc_loadWeakRetained((result + 120));
      [WeakRetained performActionsForButtonUp:v1];

      v1[14] = 0;
      v1[9] = 1;

      return [v1 reset];
    }
  }

  return result;
}

- (BOOL)_canIncrementRepeatedPressCount
{
  if (result)
  {
    v1 = *(result + 80);
    return !v1 || *(result + 72) < v1;
  }

  return result;
}

@end