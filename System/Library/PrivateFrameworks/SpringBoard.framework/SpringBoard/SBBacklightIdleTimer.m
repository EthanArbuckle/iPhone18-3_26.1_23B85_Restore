@interface SBBacklightIdleTimer
- (SBBacklightIdleTimer)init;
- (SBBacklightIdleTimer)initWithConfigurationIdentifier:(id)a3;
- (double)_effectiveExpireTimeoutDuration;
- (double)_effectiveQuickUnwarnTimeoutDurationForWarnTimeout:(double)a3;
- (double)_effectiveTimeoutForBaseTimeout:(double)a3;
- (double)_effectiveWarnTimeoutDuration;
- (id)_initWithAttentionAwareTimer:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)stateCaptureDescriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_reconfigureAttentionClientAndReset:(BOOL)a3;
- (void)_resetExpectation;
- (void)_stopIfManual;
- (void)idleTimer:(id)a3 attentionLostTimeoutDidExpire:(id)a4;
- (void)idleTimerDidReset:(id)a3 forUserAttention:(unint64_t)a4 at:(double)a5;
- (void)reset;
- (void)setDescriptor:(id)a3;
@end

@implementation SBBacklightIdleTimer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBBacklightIdleTimer;
  [(SBIdleTimerBase *)&v3 reset];
  if (([(ITAttentionAwareIdleTimer *)self->_attentionAwareTimer isEnabled]& 1) == 0)
  {
    [(ITAttentionAwareIdleTimer *)self->_attentionAwareTimer setEnabled:1];
  }

  [(SBBacklightIdleTimer *)self _resetExpectation];
  [(SBBacklightIdleTimer *)self _reconfigureAttentionClientAndReset:1];
  [(SBIdleTimerBase *)self _makeObserversPerformSelector:sel_idleTimerDidRefresh_];
}

- (void)_resetExpectation
{
  v15 = *MEMORY[0x277D85DE8];
  expectation = self->_expectation;
  if (self->_timeMultiplier > 1.0)
  {
    v4 = SBLogIdleTimer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "attention reset expectation: removing extended timeout", &v11, 2u);
    }

    self->_timeMultiplier = 1.0;
    [(SBBacklightIdleTimer *)self _reconfigureAttentionClientAndReset:0];
  }

  [(SBIdleTimerDescriptor *)self->_descriptor warnInterval];
  if (BSFloatIsZero())
  {
    v5 = 3;
  }

  else
  {
    v6 = BSFloatEqualToFloat();
    v5 = 3;
    if ((v6 & 1) == 0)
    {
      v5 = 1;
    }
  }

  self->_expectation = v5;
  if (v5 != expectation)
  {
    v7 = SBLogIdleTimer();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (expectation > 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = off_2783B6D98[expectation];
      }

      v9 = self->_expectation;
      if (v9 > 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_2783B6D98[v9];
      }

      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "attention expectation: %{public}@ -> %{public}@", &v11, 0x16u);
    }
  }
}

- (double)_effectiveWarnTimeoutDuration
{
  [(SBIdleTimerDescriptor *)self->_descriptor warnInterval];

  [(SBBacklightIdleTimer *)self _effectiveTimeoutForBaseTimeout:?];
  return result;
}

- (double)_effectiveExpireTimeoutDuration
{
  [(SBIdleTimerDescriptor *)self->_descriptor totalInterval];

  [(SBBacklightIdleTimer *)self _effectiveTimeoutForBaseTimeout:?];
  return result;
}

- (SBBacklightIdleTimer)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBBacklightIdleTimer.m" lineNumber:70 description:@"Use initWithConfigurationIdentifier:"];

  return 0;
}

- (SBBacklightIdleTimer)initWithConfigurationIdentifier:(id)a3
{
  v4 = MEMORY[0x277D1B248];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithConfigurationIdentifier:v5 delegate:self calloutQueue:MEMORY[0x277D85CD0]];

  v8 = [(SBBacklightIdleTimer *)self _initWithAttentionAwareTimer:v7];
  return v8;
}

- (id)_initWithAttentionAwareTimer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBBacklightIdleTimer;
  v6 = [(SBBacklightIdleTimer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_timeMultiplier = 1.0;
    objc_storeStrong(&v6->_attentionAwareTimer, a3);
  }

  return v7;
}

- (id)succinctDescription
{
  v2 = [(SBBacklightIdleTimer *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBBacklightIdleTimer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBBacklightIdleTimer *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_descriptor withName:@"descriptor"];
  expectation = self->_expectation;
  if (expectation > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_2783B6D98[expectation];
  }

  [v4 appendString:v7 withName:@"expectation"];
  v8 = [v4 appendBool:self->_requiresManualReset withName:@"requiresManualReset"];

  return v4;
}

- (id)stateCaptureDescriptionWithMultilinePrefix:(id)a3
{
  v4 = [(SBBacklightIdleTimer *)self descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBIdleTimerDescriptor *)self->_descriptor auditReasonsForStateCapture];
  [v4 appendArraySection:v5 withName:@"auditReasons" skipIfEmpty:0];

  v6 = [v4 build];

  return v6;
}

- (void)idleTimer:(id)a3 attentionLostTimeoutDidExpire:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 descriptor];
  v8 = SBLogIdleTimer();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138543618;
    v33 = v6;
    v34 = 2114;
    v35 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "attention event with timeout: %{public}@ for descriptor: %{public}@", &v32, 0x16u);
  }

  [(SBBacklightIdleTimer *)self _effectiveWarnTimeoutDuration];
  v10 = v9;
  [(SBBacklightIdleTimer *)self _effectiveQuickUnwarnTimeoutDurationForWarnTimeout:?];
  v12 = v11;
  [(SBBacklightIdleTimer *)self _effectiveExpireTimeoutDuration];
  v14 = v13;
  if (BSFloatIsZero())
  {
    v15 = 3;
  }

  else if (BSFloatEqualToFloat())
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  if (BSFloatIsZero())
  {
    v16 = 0;
  }

  else
  {
    v16 = BSFloatEqualToFloat() ^ 1;
  }

  if (BSFloatIsZero())
  {
    v17 = 0;
  }

  else
  {
    v17 = BSFloatEqualToFloat() ^ 1;
  }

  expectation = self->_expectation;
  v19 = [v6 identifier];
  switch(v19)
  {
    case 3:
      v26 = SBLogIdleTimer();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        [v6 duration];
        v32 = 134218240;
        v33 = v27;
        v34 = 2048;
        v35 = v14;
        _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "attention event: expire @ %g -- should be %g", &v32, 0x16u);
      }

      self->_expectation = v15;
      [(SBIdleTimerBase *)self _makeObserversPerformSelector:sel_idleTimerDidExpire_];
      [(SBBacklightIdleTimer *)self _stopIfManual];
      break;
    case 2:
      v23 = SBLogIdleTimer();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [v6 duration];
        v32 = 134218240;
        v33 = v24;
        v34 = 2048;
        v35 = v12;
        _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "attention event: quickWarn @ %g -- should be %g", &v32, 0x16u);
      }

      if (v17)
      {
        v25 = 3;
      }

      else
      {
        v25 = 1;
      }

      self->_expectation = v25;
      break;
    case 1:
      v20 = SBLogIdleTimer();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [v6 duration];
        v32 = 134218240;
        v33 = v21;
        v34 = 2048;
        v35 = v10;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "attention event: warn @ %g -- should be %g", &v32, 0x16u);
      }

      v22 = 3;
      if (!v17)
      {
        v22 = 1;
      }

      if (v16)
      {
        v22 = 2;
      }

      self->_expectation = v22;
      [(SBIdleTimerBase *)self _makeObserversPerformSelector:sel_idleTimerDidWarn_];
      break;
  }

  v28 = SBLogIdleTimer();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    if (expectation > 3)
    {
      v29 = 0;
    }

    else
    {
      v29 = off_2783B6D98[expectation];
    }

    v30 = self->_expectation;
    if (v30 > 3)
    {
      v31 = 0;
    }

    else
    {
      v31 = off_2783B6D98[v30];
    }

    v32 = 134219010;
    v33 = v12;
    v34 = 2048;
    v35 = v10;
    v36 = 2048;
    v37 = v14;
    v38 = 2114;
    v39 = v29;
    v40 = 2114;
    v41 = v31;
    _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "attention event: looking for quickWarn:%g warn:%g total:%g expecting:%{public}@ -> %{public}@", &v32, 0x34u);
  }
}

- (void)idleTimerDidReset:(id)a3 forUserAttention:(unint64_t)a4 at:(double)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = SBLogIdleTimer();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = a4;
    v13 = 2048;
    v14 = a5;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "attention event: user event: %lu reset timer at: %g", &v11, 0x16u);
  }

  if (self->_expectation == 2)
  {
    v9 = SBLogIdleTimer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "attention event: reconfigure for extended timeout", &v11, 2u);
    }

    self->_expectation = 1;
    self->_timeMultiplier = 2.0;
    [(SBBacklightIdleTimer *)self _reconfigureAttentionClientAndReset:0];
  }

  else
  {
    [(SBBacklightIdleTimer *)self _resetExpectation];
  }

  v10 = SBLogIdleTimer();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "attention event: refresh", &v11, 2u);
  }

  [(SBIdleTimerBase *)self _makeObserversPerformSelector:sel_idleTimerDidResetForUserAttention_];
}

- (void)setDescriptor:(id)a3
{
  v5 = a3;
  if (self->_descriptor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_descriptor, a3);
    v6 = [(SBIdleTimerDescriptor *)v8 timerMode]== 2;
    v5 = v8;
    v7 = v6;
    self->_requiresManualReset = v7;
    if (!self->_expectation)
    {
      [(SBBacklightIdleTimer *)self _reconfigureAttentionClientAndReset:0];
      [(SBBacklightIdleTimer *)self _resetExpectation];
      v5 = v8;
    }
  }
}

- (void)_stopIfManual
{
  if ([(SBBacklightIdleTimer *)self requiresManualReset])
  {
    attentionAwareTimer = self->_attentionAwareTimer;

    [(ITAttentionAwareIdleTimer *)attentionAwareTimer setEnabled:0];
  }
}

- (double)_effectiveQuickUnwarnTimeoutDurationForWarnTimeout:(double)a3
{
  [(SBIdleTimerDescriptor *)self->_descriptor quickUnwarnInterval];
  [(SBBacklightIdleTimer *)self _effectiveTimeoutForBaseTimeout:?];
  v6 = v5;
  if ((BSFloatIsZero() & 1) == 0 && !((v6 - a3 <= 2.0) | BSFloatEqualToFloat() & 1))
  {
    return a3 + 2.0;
  }

  return v6;
}

- (double)_effectiveTimeoutForBaseTimeout:(double)a3
{
  if (self->_timeMultiplier != 1.0 && (BSFloatIsZero() & 1) == 0 && (BSFloatEqualToFloat() & 1) == 0)
  {
    return self->_timeMultiplier * a3;
  }

  return a3;
}

- (void)_reconfigureAttentionClientAndReset:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D1B258]);
  [(SBIdleTimerDescriptor *)self->_descriptor sampleInterval];
  v7 = v6;
  if (BSFloatIsZero())
  {
    v8 = 0;
  }

  else
  {
    v8 = BSFloatEqualToFloat() ^ 1;
  }

  if ([(SBIdleTimerDescriptor *)self->_descriptor timerMode]== 1)
  {
    v9 = 2654;
  }

  else
  {
    v9 = 2134;
  }

  if (v8)
  {
    v10 = v9 | 0x80;
  }

  else
  {
    v10 = v9;
  }

  [v5 setAttentionEventMaintenanceMask:v10 recoveryMask:?];
  [(SBBacklightIdleTimer *)self _effectiveWarnTimeoutDuration];
  v12 = v11;
  [(SBBacklightIdleTimer *)self _effectiveQuickUnwarnTimeoutDurationForWarnTimeout:?];
  v14 = v13;
  [(SBBacklightIdleTimer *)self _effectiveExpireTimeoutDuration];
  v16 = v15;
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if ((BSFloatIsZero() & 1) == 0 && (BSFloatEqualToFloat() & 1) == 0)
  {
    v18 = [objc_alloc(MEMORY[0x277D1B250]) initWithDuration:1 identifier:v12];
    [v17 addObject:v18];
    if ((BSFloatIsZero() & 1) == 0 && (BSFloatEqualToFloat() & 1) == 0)
    {
      v19 = [objc_alloc(MEMORY[0x277D1B250]) initWithDuration:2 identifier:v14];
      [v17 addObject:v19];
    }
  }

  if ((BSFloatIsZero() & 1) == 0 && (BSFloatEqualToFloat() & 1) == 0)
  {
    v20 = [objc_alloc(MEMORY[0x277D1B250]) initWithDuration:3 identifier:v16];
    [v17 addObject:v20];
  }

  v21 = SBLogIdleTimer();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = _SBIdleTimeoutsDescriptionForLogging(v17);
    v27 = 134218242;
    v28 = self;
    v29 = 2114;
    v30 = v22;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "%p reconfigured attention timeouts:%{public}@", &v27, 0x16u);
  }

  if ([v17 count])
  {
    [v5 setTimeouts:v17];
    if (v8)
    {
      [v5 setAttentionSamplingPeriod:v7];
      v23 = [v17 firstObject];
      [v23 duration];
      v25 = v24;

      [(SBIdleTimerDescriptor *)self->_descriptor samplingStartBeforeFirstTimeout];
      [v5 setAttentionSamplingStartBeforeFirstTimeout:{v25 - fmax(v25 - v26, 4.0)}];
    }

    [(ITAttentionAwareIdleTimer *)self->_attentionAwareTimer setEnabled:1];
    [(ITAttentionAwareIdleTimer *)self->_attentionAwareTimer setDescriptor:v5 resettingTimer:v3];
    [(SBBacklightIdleTimer *)self _effectiveExpireTimeoutDuration];
    [(SBIdleTimerBase *)self _logExpirationTimeout:?];
  }

  else
  {
    [(ITAttentionAwareIdleTimer *)self->_attentionAwareTimer setEnabled:0];
  }
}

@end