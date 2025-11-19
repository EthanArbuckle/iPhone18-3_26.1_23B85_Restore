@interface BRCStateUpdateCoalescer
- (BOOL)_cancelAndReleaseUpdateTimerIfExists;
- (BRCStateUpdateCoalescer)initWithCallbackQueue:(id)a3 timerMinDelay:(double)a4 timerMaxDelay:(double)a5 stableStateMinThreshold:(double)a6;
- (double)_timeSinceLastCompletedTimer;
- (id)description;
- (void)_setupCoalesceUpdateTimerWithUtilityHandlerBlock:(id)a3;
- (void)reset;
- (void)updateStateWithCoalescing:(id)a3 oldState:(BOOL)a4 newState:(BOOL)a5;
@end

@implementation BRCStateUpdateCoalescer

- (BRCStateUpdateCoalescer)initWithCallbackQueue:(id)a3 timerMinDelay:(double)a4 timerMaxDelay:(double)a5 stableStateMinThreshold:(double)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = BRCStateUpdateCoalescer;
  v12 = [(BRCStateUpdateCoalescer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_callbackQueue, a3);
    v13->_timerDelay = a4;
    v13->_timerMinDelay = a4;
    v13->_timerMaxDelay = a5;
    v13->_stableStateMinThreshold = a6;
  }

  return v13;
}

- (void)reset
{
  [(BRCStateUpdateCoalescer *)self _cancelAndReleaseUpdateTimerIfExists];
  self->_timerDelay = self->_timerMinDelay;
  lastCompletedTimer = self->_lastCompletedTimer;
  self->_lastCompletedTimer = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v9 = *&self->_timerMinDelay;
  stableStateMinThreshold = self->_stableStateMinThreshold;
  timerDelay = self->_timerDelay;
  [(BRCStateUpdateCoalescer *)self _timeSinceLastCompletedTimer];
  return [v3 stringWithFormat:@"<%@: %p timerMinDelay:%f timerMaxDelay:%f _stableStateMinThreshold:%f _timerDelay:%f timeSinceLastCompletedTimer:%f>", v4, self, v9, *&stableStateMinThreshold, *&timerDelay, v7];
}

- (double)_timeSinceLastCompletedTimer
{
  if (!self->_lastCompletedTimer)
  {
    return 0.0;
  }

  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:self->_lastCompletedTimer];
  v5 = v4;

  return v5;
}

- (BOOL)_cancelAndReleaseUpdateTimerIfExists
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  coalesceUpdateTimer = self->_coalesceUpdateTimer;
  if (coalesceUpdateTimer)
  {
    dispatch_source_cancel(self->_coalesceUpdateTimer);
    v4 = self->_coalesceUpdateTimer;
    self->_coalesceUpdateTimer = 0;
  }

  return coalesceUpdateTimer != 0;
}

- (void)_setupCoalesceUpdateTimerWithUtilityHandlerBlock:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  [(BRCStateUpdateCoalescer *)self _cancelAndReleaseUpdateTimerIfExists];
  if (self->_coalesceUpdateTimer)
  {
    [BRCStateUpdateCoalescer _setupCoalesceUpdateTimerWithUtilityHandlerBlock:];
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_callbackQueue);
  coalesceUpdateTimer = self->_coalesceUpdateTimer;
  self->_coalesceUpdateTimer = v5;

  v7 = (self->_timerDelay * 1000000000.0);
  v8 = self->_coalesceUpdateTimer;
  v9 = dispatch_time(0, v7);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, v7 / 10);
  v10 = self->_coalesceUpdateTimer;
  v11 = self->_coalesceUpdateTimer;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__BRCStateUpdateCoalescer__setupCoalesceUpdateTimerWithUtilityHandlerBlock___block_invoke;
  v19[3] = &unk_2784FF5B8;
  v19[4] = self;
  v12 = v10;
  v20 = v12;
  v13 = v4;
  v21 = v13;
  v14 = v11;
  v15 = v19;
  v16 = v15;
  v17 = v15;
  if (*MEMORY[0x277CFB010])
  {
    v17 = (*MEMORY[0x277CFB010])(v15);
  }

  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v17);
  dispatch_source_set_event_handler(v14, v18);

  dispatch_resume(self->_coalesceUpdateTimer);
}

intptr_t __76__BRCStateUpdateCoalescer__setupCoalesceUpdateTimerWithUtilityHandlerBlock___block_invoke(void *a1)
{
  dispatch_assert_queue_V2(*(a1[4] + 8));
  v2 = a1[5];
  result = dispatch_source_testcancel(v2);
  if (!result)
  {
    if (v2 != *(a1[4] + 16))
    {
      __76__BRCStateUpdateCoalescer__setupCoalesceUpdateTimerWithUtilityHandlerBlock___block_invoke_cold_1();
    }

    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = a1[4];
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    dispatch_source_cancel(*(a1[4] + 16));
    v7 = a1[4];
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;

    return (*(a1[6] + 16))();
  }

  return result;
}

- (void)updateStateWithCoalescing:(id)a3 oldState:(BOOL)a4 newState:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  if (a5)
  {
    if (v6)
    {
      if (self->_coalesceUpdateTimer)
      {
        [BRCStateUpdateCoalescer updateStateWithCoalescing:oldState:newState:];
      }

      v8[2](v8);
    }

    else
    {
      [(BRCStateUpdateCoalescer *)self _setupCoalesceUpdateTimerWithUtilityHandlerBlock:v8];
    }

    goto LABEL_15;
  }

  v9 = [(BRCStateUpdateCoalescer *)self _cancelAndReleaseUpdateTimerIfExists];
  v8[2](v8);
  if (!v6)
  {
    goto LABEL_10;
  }

  if (!self->_lastCompletedTimer || ([MEMORY[0x277CBEAA8] now], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceDate:", self->_lastCompletedTimer), v12 = v11, stableStateMinThreshold = self->_stableStateMinThreshold, v10, v12 >= stableStateMinThreshold))
  {
    self->_timerDelay = self->_timerMinDelay;
LABEL_10:
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  timerMaxDelay = self->_timerDelay + self->_timerDelay;
  if (timerMaxDelay >= self->_timerMaxDelay)
  {
    timerMaxDelay = self->_timerMaxDelay;
  }

  self->_timerDelay = timerMaxDelay;
LABEL_15:
}

@end