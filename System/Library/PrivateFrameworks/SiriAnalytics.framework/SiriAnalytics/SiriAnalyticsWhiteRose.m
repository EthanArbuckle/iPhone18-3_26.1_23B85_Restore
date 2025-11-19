@interface SiriAnalyticsWhiteRose
- (SiriAnalyticsWhiteRose)initWithQueue:(id)a3 delegate:(id)a4 metastore:(id)a5 logicalClocks:(id)a6;
- (id)markTimeForAnnotatedMessage:(id)a3 withRootClock:(id)a4;
- (void)_cancelInactivityTimer;
- (void)_cancelMaximumClockLifeTimer;
- (void)_destroyActiveClockWithReason:(unint64_t)a3 completion:(id)a4;
- (void)_ensureActiveClockStartingAt:(unint64_t)a3 completion:(id)a4;
- (void)_inactivityTimerElapsed;
- (void)_maximumClockLifeExpired;
- (void)_pulseActiveClock;
- (void)_startInactivityTimer;
- (void)_startMaximumClockLifeTimer;
- (void)bootstrapWithCompletion:(id)a3;
- (void)createTag:(id)a3 completion:(id)a4;
- (void)debounceFired:(id)a3 maximumReached:(BOOL)a4;
- (void)destroyActiveClockWithReason:(unint64_t)a3 completion:(id)a4;
- (void)markTimeForAnnotatedMessages:(id)a3 completion:(id)a4;
- (void)sensitiveCondition:(int)a3 endedAt:(unint64_t)a4 ensureClockExists:(BOOL)a5 completion:(id)a6;
- (void)sensitiveCondition:(int)a3 startedAt:(unint64_t)a4 ensureClockExists:(BOOL)a5 completion:(id)a6;
@end

@implementation SiriAnalyticsWhiteRose

- (void)_cancelInactivityTimer
{
  inactivityTimer = self->_inactivityTimer;
  if (inactivityTimer)
  {
    dispatch_source_cancel(inactivityTimer);
    v4 = self->_inactivityTimer;
    self->_inactivityTimer = 0;
  }
}

- (void)_pulseActiveClock
{
  activeClock = self->_activeClock;
  if (activeClock)
  {
    v9 = [(SiriAnalyticsLogicalClock *)activeClock clockStatistics];
    if ([v9 messagesEmitted])
    {
      v4 = [(SiriAnalyticsLogicalClock *)self->_activeClock clockStatistics];
      v5 = [v4 bookkeepingDirtied];

      if (!v5)
      {
        return;
      }

      logicalClocks = self->_logicalClocks;
      v7 = [(SiriAnalyticsLogicalClock *)self->_activeClock clockIdentifier];
      v8 = [(SiriAnalyticsLogicalClock *)self->_activeClock clockStatistics];
      -[SiriAnalyticsLogicalClocksProvider pulseClock:lastEventOn:](logicalClocks, "pulseClock:lastEventOn:", v7, [v8 lastMessageEmittedOn]);

      v9 = [(SiriAnalyticsLogicalClock *)self->_activeClock clockStatistics];
      [v9 setBookkeepingDirtied:0];
    }
  }
}

- (void)_startInactivityTimer
{
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  inactivityTimer = self->_inactivityTimer;
  self->_inactivityTimer = v3;

  v5 = self->_inactivityTimer;
  v6 = dispatch_time(0, (self->_maximumInactivityInterval * 1000000000.0));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v7 = self->_inactivityTimer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SiriAnalyticsWhiteRose__startInactivityTimer__block_invoke;
  v8[3] = &unk_1E8587940;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_inactivityTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)debounceFired:(id)a3 maximumReached:(BOOL)a4
{
  if (self->_clockPulse == a3)
  {
    [(SiriAnalyticsWhiteRose *)self _pulseActiveClock];
  }
}

- (void)createTag:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke;
  aBlock[3] = &unk_1E8587148;
  v17 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke_2;
  v13[3] = &unk_1E8587CE0;
  v13[4] = self;
  v14 = v6;
  v15 = v9;
  v11 = v9;
  v12 = v6;
  dispatch_async(queue, v13);
}

uint64_t __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = mach_absolute_time();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke_3;
  v6[3] = &unk_1E8587170;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 _ensureActiveClockStartingAt:v3 completion:v6];
}

void __47__SiriAnalyticsWhiteRose_createTag_completion___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  if (v3)
  {
    v4 = *(a1[5] + 64);
    v5 = [a2 clockIdentifier];
    v8 = [v4 createTagWithShim:v3 onClock:v5];

    (*(a1[6] + 16))(a1[6], v8 != 0);
  }

  else
  {
    v6 = a1[6];
    v7 = *(a1[6] + 16);

    v7();
  }
}

- (void)sensitiveCondition:(int)a3 endedAt:(unint64_t)a4 ensureClockExists:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke;
  aBlock[3] = &unk_1E8587350;
  v21 = v10;
  v11 = v10;
  v12 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke_2;
  block[3] = &unk_1E8587120;
  v19 = a5;
  block[4] = self;
  v16 = v12;
  v17 = a4;
  v18 = a3;
  v14 = v12;
  dispatch_async(queue, block);
}

uint64_t __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(a1 + 60) & 1) != 0 || v2[3])
  {
    v3 = *(a1 + 48);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke_9;
    v6[3] = &unk_1E85870F8;
    v9 = *(a1 + 56);
    v8 = v3;
    v7 = *(a1 + 40);
    [v2 _ensureActiveClockStartingAt:v3 completion:v6];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v5 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[SiriAnalyticsWhiteRose sensitiveCondition:endedAt:ensureClockExists:completion:]_block_invoke_2";
      _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s No active clock exists, ignoring sensitiveCondition", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __82__SiriAnalyticsWhiteRose_sensitiveCondition_endedAt_ensureClockExists_completion___block_invoke_9(uint64_t a1, void *a2)
{
  [a2 sensitiveCondition:*(a1 + 48) endedAt:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)sensitiveCondition:(int)a3 startedAt:(unint64_t)a4 ensureClockExists:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke;
  aBlock[3] = &unk_1E8587350;
  v21 = v10;
  v11 = v10;
  v12 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke_2;
  block[3] = &unk_1E8587120;
  v19 = a5;
  block[4] = self;
  v16 = v12;
  v17 = a4;
  v18 = a3;
  v14 = v12;
  dispatch_async(queue, block);
}

uint64_t __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(a1 + 60) & 1) != 0 || v2[3])
  {
    v3 = *(a1 + 48);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke_8;
    v6[3] = &unk_1E85870F8;
    v9 = *(a1 + 56);
    v8 = v3;
    v7 = *(a1 + 40);
    [v2 _ensureActiveClockStartingAt:v3 completion:v6];
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v5 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[SiriAnalyticsWhiteRose sensitiveCondition:startedAt:ensureClockExists:completion:]_block_invoke_2";
      _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s No active clock exists, ignoring sensitiveCondition", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __84__SiriAnalyticsWhiteRose_sensitiveCondition_startedAt_ensureClockExists_completion___block_invoke_8(uint64_t a1, void *a2)
{
  [a2 sensitiveCondition:*(a1 + 48) startedAt:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_maximumClockLifeExpired
{
  v12 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
  {
    activeClock = self->_activeClock;
    v5 = v3;
    v6 = [(SiriAnalyticsLogicalClock *)activeClock clockIdentifier];
    v8 = 136315394;
    v9 = "[SiriAnalyticsWhiteRose _maximumClockLifeExpired]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  [(SiriAnalyticsWhiteRose *)self _destroyActiveClockWithReason:2 completion:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_cancelMaximumClockLifeTimer
{
  v14 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
  {
    activeClock = self->_activeClock;
    v8 = v3;
    v9 = [(SiriAnalyticsLogicalClock *)activeClock clockIdentifier];
    v10 = 136315394;
    v11 = "[SiriAnalyticsWhiteRose _cancelMaximumClockLifeTimer]";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&dword_1D9863000, v8, OS_LOG_TYPE_DEBUG, "%s %@", &v10, 0x16u);
  }

  maximumClockLifeTimer = self->_maximumClockLifeTimer;
  if (maximumClockLifeTimer)
  {
    dispatch_source_cancel(maximumClockLifeTimer);
    v5 = self->_maximumClockLifeTimer;
    self->_maximumClockLifeTimer = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startMaximumClockLifeTimer
{
  v19 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
  {
    activeClock = self->_activeClock;
    v5 = v3;
    v6 = [(SiriAnalyticsLogicalClock *)activeClock clockIdentifier];
    *buf = 136315394;
    v16 = "[SiriAnalyticsWhiteRose _startMaximumClockLifeTimer]";
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  maximumClockLifeTimer = self->_maximumClockLifeTimer;
  self->_maximumClockLifeTimer = v7;

  v9 = self->_maximumClockLifeTimer;
  v10 = dispatch_time(0, (self->_maximumClockLifeInterval * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(buf, self);
  v11 = self->_maximumClockLifeTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __53__SiriAnalyticsWhiteRose__startMaximumClockLifeTimer__block_invoke;
  handler[3] = &unk_1E8587940;
  objc_copyWeak(&v14, buf);
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(self->_maximumClockLifeTimer);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x1E69E9840];
}

void __53__SiriAnalyticsWhiteRose__startMaximumClockLifeTimer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _maximumClockLifeExpired];

  objc_autoreleasePoolPop(v2);
}

- (void)_inactivityTimerElapsed
{
  v12 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v3 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
  {
    activeClock = self->_activeClock;
    v5 = v3;
    v6 = [(SiriAnalyticsLogicalClock *)activeClock clockIdentifier];
    v8 = 136315394;
    v9 = "[SiriAnalyticsWhiteRose _inactivityTimerElapsed]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  [(SiriAnalyticsWhiteRose *)self _destroyActiveClockWithReason:1 completion:0];
  v7 = *MEMORY[0x1E69E9840];
}

void __47__SiriAnalyticsWhiteRose__startInactivityTimer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _inactivityTimerElapsed];

  objc_autoreleasePoolPop(v2);
}

- (void)_destroyActiveClockWithReason:(unint64_t)a3 completion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(SiriAnalyticsLogicalClock *)self->_activeClock clockIdentifier];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v8 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[SiriAnalyticsWhiteRose _destroyActiveClockWithReason:completion:]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1D9863000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  activeClock = self->_activeClock;
  if (activeClock)
  {
    [(SiriAnalyticsLogicalClock *)activeClock stopClock];
    v10 = self->_activeClock;
    v11 = self->_activeClock;
    self->_activeClock = 0;
  }

  else
  {
    v10 = 0;
  }

  [(SiriAnalyticsWhiteRose *)self _cancelInactivityTimer];
  [(SiriAnalyticsWhiteRose *)self _cancelMaximumClockLifeTimer];
  [(SiriAnalyticsWhiteRose *)self _pulseActiveClock];
  [(SiriAnalyticsDebounce *)self->_clockPulse cancel];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__SiriAnalyticsWhiteRose__destroyActiveClockWithReason_completion___block_invoke;
    v14[3] = &unk_1E8587C90;
    v16 = v6;
    v15 = v7;
    [WeakRetained whiteRose:self rootClockDestroyed:v10 reason:a3 completion:v14];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __67__SiriAnalyticsWhiteRose__destroyActiveClockWithReason_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)destroyActiveClockWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SiriAnalyticsWhiteRose_destroyActiveClockWithReason_completion___block_invoke;
  block[3] = &unk_1E85870D0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_ensureActiveClockStartingAt:(unint64_t)a3 completion:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a4;
  p_activeClock = &self->_activeClock;
  activeClock = self->_activeClock;
  if (activeClock)
  {
    v9 = [(SiriAnalyticsLogicalClock *)activeClock clockStatistics];
    v10 = [v9 startedOn];

    if (v10 > a3)
    {
      if (SiriAnalyticsLoggingInit_once != -1)
      {
        dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
      }

      v11 = SiriAnalyticsLogContextTime;
      if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
      {
        v23 = *p_activeClock;
        v24 = v11;
        v25 = [v23 clockIdentifier];
        v26 = [*p_activeClock clockStatistics];
        *buf = 136315906;
        v31 = "[SiriAnalyticsWhiteRose _ensureActiveClockStartingAt:completion:]";
        v32 = 2112;
        v33 = v25;
        v34 = 2048;
        v35 = [v26 startedOn];
        v36 = 2048;
        v37 = a3;
        _os_log_debug_impl(&dword_1D9863000, v24, OS_LOG_TYPE_DEBUG, "%s Backdating root clock: %@ start from: %lu to: %lu", buf, 0x2Au);
      }

      v12 = [*p_activeClock clockStatistics];
      [v12 setStartedOn:a3];
    }

    (v6)[2](v6, *p_activeClock);
  }

  else
  {
    v13 = [SiriAnalyticsRootClock alloc];
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [(SiriAnalyticsRootClock *)v13 initWithClockIdentifier:v14 timestampOffset:0 startedOn:a3 metastore:self->_metastore];

    objc_storeStrong(&self->_activeClock, v15);
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v16 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
    {
      v17 = *p_activeClock;
      v18 = v16;
      v19 = [v17 clockIdentifier];
      *buf = 136315650;
      v31 = "[SiriAnalyticsWhiteRose _ensureActiveClockStartingAt:completion:]";
      v32 = 2112;
      v33 = v19;
      v34 = 2048;
      v35 = a3;
      _os_log_impl(&dword_1D9863000, v18, OS_LOG_TYPE_INFO, "%s Created primary clock: %@, starting on: %lu", buf, 0x20u);
    }

    [(SiriAnalyticsWhiteRose *)self _startMaximumClockLifeTimer];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __66__SiriAnalyticsWhiteRose__ensureActiveClockStartingAt_completion___block_invoke;
    v27[3] = &unk_1E8587CE0;
    v27[4] = self;
    v28 = v15;
    v29 = v6;
    v21 = v15;
    [WeakRetained whiteRose:self willCreateRootClock:v21 completion:v27];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __66__SiriAnalyticsWhiteRose__ensureActiveClockStartingAt_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SiriAnalyticsWhiteRose__ensureActiveClockStartingAt_completion___block_invoke_2;
  block[3] = &unk_1E8587CE0;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __66__SiriAnalyticsWhiteRose__ensureActiveClockStartingAt_completion___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained whiteRose:a1[4] rootClockCreated:a1[5]];

  v3 = a1[5];
  v4 = *(a1[6] + 16);

  return v4();
}

- (void)markTimeForAnnotatedMessages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SiriAnalyticsWhiteRose_markTimeForAnnotatedMessages_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __66__SiriAnalyticsWhiteRose_markTimeForAnnotatedMessages_completion___block_invoke(id *a1)
{
  [a1[4] _cancelInactivityTimer];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1[5], "count")}];
  v3 = a1[4];
  v4 = mach_absolute_time();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__SiriAnalyticsWhiteRose_markTimeForAnnotatedMessages_completion___block_invoke_2;
  v8[3] = &unk_1E85870A8;
  v5 = a1[5];
  v6 = a1[4];
  v9 = v5;
  v10 = v6;
  v11 = v2;
  v12 = a1[6];
  v7 = v2;
  [v3 _ensureActiveClockStartingAt:v4 completion:v8];
}

void __66__SiriAnalyticsWhiteRose_markTimeForAnnotatedMessages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) markTimeForAnnotatedMessage:*(*(&v12 + 1) + 8 * v8) withRootClock:{v3, v12}];
        if (v9)
        {
          [*(a1 + 48) addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) _startInactivityTimer];
  v10 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (id)markTimeForAnnotatedMessage:(id)a3 withRootClock:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 timestamp];
  v9 = [v7 clockStatistics];
  v10 = [v9 startedOn];

  if (v8 < v10)
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v11 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
    {
      v27 = v11;
      v28 = [v7 clockIdentifier];
      v29 = [v7 clockStatistics];
      v30 = 136315906;
      v31 = "[SiriAnalyticsWhiteRose markTimeForAnnotatedMessage:withRootClock:]";
      v32 = 2112;
      v33 = v28;
      v34 = 2048;
      v35 = [v29 startedOn];
      v36 = 2048;
      v37 = [v6 timestamp];
      _os_log_debug_impl(&dword_1D9863000, v27, OS_LOG_TYPE_DEBUG, "%s Backdating root clock: %@ start from: %lu to: %lu", &v30, 0x2Au);
    }

    v12 = [v7 clockStatistics];
    [v12 setStartedOn:{objc_msgSend(v6, "timestamp")}];
  }

  v13 = [v6 streamUUID];

  v14 = v7;
  if (v13)
  {
    v15 = [v6 streamUUID];
    v16 = [v7 isTrackingDerivativeClockByStreamUUID:v15];

    v17 = [v6 streamUUID];
    v14 = [v7 derivativeClockForStreamUUID:v17];

    if ((v16 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained whiteRose:self derivativeClockCreated:v14 rootClock:v7];
    }
  }

  v19 = [v14 logicalTimestampForMachAbsoluteTime:{objc_msgSend(v6, "timestamp")}];
  v20 = [SiriAnalyticsMessage alloc];
  v21 = [v6 messageUUID];
  v22 = [v6 message];
  v23 = [(SiriAnalyticsMessage *)v20 initWithMessageUUID:v21 logicalTimestamp:v19 underlying:v22];

  v24 = [v14 clockStatistics];
  [v24 noteMessageEmitted];

  [(SiriAnalyticsDebounce *)self->_clockPulse pulse];
  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)bootstrapWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SiriAnalyticsWhiteRose_bootstrapWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __50__SiriAnalyticsWhiteRose_bootstrapWithCompletion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v2 = SiriAnalyticsLogContextTime;
  if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[SiriAnalyticsWhiteRose bootstrapWithCompletion:]_block_invoke";
    _os_log_debug_impl(&dword_1D9863000, v2, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v3 = [*(*(a1 + 32) + 24) clockIdentifier];
  v4 = *(*(a1 + 32) + 88);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SiriAnalyticsWhiteRose_bootstrapWithCompletion___block_invoke_1;
  v6[3] = &unk_1E8587C18;
  v7 = *(a1 + 40);
  [v4 cleanupAbandonedClocksWithActiveClockIdentifier:v3 completionHandler:v6];

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __50__SiriAnalyticsWhiteRose_bootstrapWithCompletion___block_invoke_1(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (SiriAnalyticsWhiteRose)initWithQueue:(id)a3 delegate:(id)a4 metastore:(id)a5 logicalClocks:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SiriAnalyticsWhiteRose;
  v15 = [(SiriAnalyticsWhiteRose *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, a3);
    objc_storeWeak(&v16->_delegate, v12);
    objc_storeStrong(&v16->_metastore, a5);
    objc_storeStrong(&v16->_logicalClocks, a6);
    v16->_maximumInactivityInterval = 300.0;
    v16->_maximumClockLifeInterval = 900.0;
    v17 = [[SiriAnalyticsDebounce alloc] initWithDebounceInterval:v16->_queue maximumInterval:v16 queue:20.0 delegate:30.0];
    clockPulse = v16->_clockPulse;
    v16->_clockPulse = v17;
  }

  return v16;
}

@end