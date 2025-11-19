@interface SBAlwaysOnCoverGestureRecognizer
- (SBAlwaysOnCoverGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_gestureBeganWithEvent:(__IOHIDEvent *)a3;
- (void)_setState:(int64_t)a3;
- (void)dealloc;
- (void)processHIDEvent:(__IOHIDEvent *)a3;
@end

@implementation SBAlwaysOnCoverGestureRecognizer

- (SBAlwaysOnCoverGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBAlwaysOnCoverGestureRecognizer;
  v7 = [(SBAlwaysOnCoverGestureRecognizer *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_maximumCoverDuration = 10.0;
    v8->_minimumScreenCoverage = 0.0;
    v8->_action = v9;
    v8->_state = 0;
  }

  return v8;
}

- (void)dealloc
{
  [(BSContinuousMachTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = SBAlwaysOnCoverGestureRecognizer;
  [(SBAlwaysOnCoverGestureRecognizer *)&v3 dealloc];
}

- (void)processHIDEvent:(__IOHIDEvent *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (IOHIDEventGetType() != 1 || IOHIDEventGetIntegerValue() != 65280 || IOHIDEventGetIntegerValue() != 89)
  {
    return;
  }

  Phase = IOHIDEventGetPhase();
  v6 = Phase;
  if (Phase)
  {
    v7 = 1.0;
    if (IOHIDEventGetIntegerValue() >= 4)
    {
      v7 = *IOHIDEventGetDataValue();
    }

    minimumScreenCoverage = self->_minimumScreenCoverage;
    v9 = SBLogCoverGesture();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7 >= minimumScreenCoverage)
    {
      if (v10)
      {
        v13 = 134217984;
        v14 = v7;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Cover gesture began with coverage %f", &v13, 0xCu);
      }

      [(SBAlwaysOnCoverGestureRecognizer *)self _gestureBeganWithEvent:a3];
      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v10)
      {
        v13 = 134217984;
        v14 = v7;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Cover gesture rejected. Coverage %f below threshold.", &v13, 0xCu);
      }

      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_6:
    if ((v6 & 8) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  if ((Phase & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_18:
  v11 = SBLogCoverGesture();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Cover gesture ended.", &v13, 2u);
  }

  [(SBAlwaysOnCoverGestureRecognizer *)self _gestureEndedWithEvent:a3];
  if ((v6 & 8) != 0)
  {
LABEL_21:
    v12 = SBLogCoverGesture();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Cover gesture canceled.", &v13, 2u);
    }

    [(SBAlwaysOnCoverGestureRecognizer *)self _gestureCanceledWithEvent:a3];
  }
}

- (void)_gestureBeganWithEvent:(__IOHIDEvent *)a3
{
  IOHIDEventGetTimeStampOfType();
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v5 = self->_maximumCoverDuration - v4;
  if (v5 <= 0.0)
  {
    v14 = SBLogCoverGesture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Cover gesture failed because event too old.", v15, 2u);
    }

    v12 = self;
    v13 = 3;
  }

  else
  {
    [(BSContinuousMachTimer *)self->_timer invalidate];
    v6 = objc_alloc(MEMORY[0x277CF0BD8]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 initWithIdentifier:v8];
    timer = self->_timer;
    self->_timer = v9;

    v11 = self->_timer;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__SBAlwaysOnCoverGestureRecognizer__gestureBeganWithEvent___block_invoke;
    v16[3] = &unk_2783AC430;
    v16[4] = self;
    [(BSContinuousMachTimer *)v11 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v16 queue:v5 handler:0.1];
    v12 = self;
    v13 = 1;
  }

  [(SBAlwaysOnCoverGestureRecognizer *)v12 _setState:v13];
}

uint64_t __59__SBAlwaysOnCoverGestureRecognizer__gestureBeganWithEvent___block_invoke(uint64_t a1)
{
  v2 = SBLogCoverGesture();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Cover gesture timed out.", v4, 2u);
  }

  return [*(a1 + 32) _setState:3];
}

- (void)_setState:(int64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_state != a3)
  {
    self->_state = a3;
    if (a3 == 3)
    {
      [(BSContinuousMachTimer *)self->_timer invalidate];
      timer = self->_timer;
      self->_timer = 0;
    }

    else if (a3 == 2)
    {
      [(BSContinuousMachTimer *)self->_timer invalidate];
      v4 = self->_timer;
      self->_timer = 0;

      v5 = [MEMORY[0x277CBEB88] currentRunLoop];
      if (self->_action)
      {
        action = self->_action;
      }

      else
      {
        action = 0;
      }

      WeakRetained = objc_loadWeakRetained(&self->_target);
      v10[0] = *MEMORY[0x277CBE738];
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [v5 performSelector:action target:WeakRetained argument:self order:0 modes:v9];
    }

    if ((self->_state & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      self->_state = 0;
    }
  }
}

@end