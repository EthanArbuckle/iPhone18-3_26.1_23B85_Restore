@interface SCDAMonitor
+ (id)sharedMonitor;
+ (void)initialize;
- (BOOL)didWin;
- (BOOL)isMonitoring;
- (SCDAMonitor)init;
- (id)_fetchCurrentMyriadDecisionWithWaitTime:(double)time;
- (id)_myriadStateToString:(int64_t)string;
- (void)_cancelRepostedMyriadDecisionTimer;
- (void)_clear;
- (void)_dequeueBlocksWithSignal:(int64_t)signal;
- (void)_deregisterFromMyriadEventNotifications;
- (void)_deregisterFromRepostedDecisionResultsObservers;
- (void)_enqueueBlock:(id)block forReason:(id)reason;
- (void)_flushCompletions:(BOOL)completions;
- (void)_registerForMyriadEvents;
- (void)_setDecisionIsPending;
- (void)dealloc;
- (void)dequeueBlocksWaitingForMyriadDecision;
- (void)ignoreMyriadEvents:(BOOL)events;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token;
- (void)startMonitoringWithTimeoutInterval:(double)interval instanceContext:(id)context;
- (void)stopMonitoring;
- (void)waitForMyriadDecisionForReason:(id)reason withCompletion:(id)completion;
@end

@implementation SCDAMonitor

- (void)_cancelRepostedMyriadDecisionTimer
{
  fetchRepostedMyriadDecisionTimer = self->_fetchRepostedMyriadDecisionTimer;
  if (fetchRepostedMyriadDecisionTimer)
  {
    [(SCDAWatchdogTimer *)fetchRepostedMyriadDecisionTimer cancelIfNotAlreadyCanceled];
    v4 = self->_fetchRepostedMyriadDecisionTimer;
    self->_fetchRepostedMyriadDecisionTimer = 0;
  }
}

- (void)_deregisterFromRepostedDecisionResultsObservers
{
  v9 = *MEMORY[0x1E69E9840];
  [(SCDAMonitor *)self _cancelRepostedMyriadDecisionTimer];
  repostedWonObserver = self->_repostedWonObserver;
  if (repostedWonObserver)
  {
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[SCDAMonitor _deregisterFromRepostedDecisionResultsObservers]";
      _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Deregistering from reposted Myriad event notification.", &v7, 0xCu);
      repostedWonObserver = self->_repostedWonObserver;
    }

    [(SCDANotifyObserver *)repostedWonObserver invalidate];
    v5 = self->_repostedWonObserver;
    self->_repostedWonObserver = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)dequeueBlocksWaitingForMyriadDecision
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SCDAMonitor_dequeueBlocksWaitingForMyriadDecision__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadMonitorQueue, block);
}

uint64_t __52__SCDAMonitor_dequeueBlocksWaitingForMyriadDecision__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SCDAMonitor dequeueBlocksWaitingForMyriadDecision]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  result = [*(a1 + 32) _dequeueBlocksWithSignal:-1000];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, &__block_literal_global_2710);
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

- (void)_registerForMyriadEvents
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = observerWithNotificationName("com.apple.siri.myriad.decision.begin", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  beginObserver = self->_beginObserver;
  self->_beginObserver = v3;

  v5 = observerWithNotificationName("com.apple.siri.myriad.decision.won", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  wonObserver = self->_wonObserver;
  self->_wonObserver = v5;

  v7 = observerWithNotificationName("com.apple.siri.myriad.decision.lost", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  lostObserver = self->_lostObserver;
  self->_lostObserver = v7;

  v9 = observerWithNotificationName("com.apple.siri.myriad.repost.decision.won", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  repostedWonObserver = self->_repostedWonObserver;
  self->_repostedWonObserver = v9;

  self->_isRegisteredForMyriadEventNotification = 1;
  v11 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v12 = self->_beginObserver;
    v13 = self->_wonObserver;
    v14 = self->_lostObserver;
    v15 = self->_repostedWonObserver;
    v17 = 136316162;
    v18 = "[SCDAMonitor _registerForMyriadEvents]";
    v19 = 2048;
    v20 = v12;
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    v25 = 2048;
    v26 = v15;
    _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Registering for Myriad event notifications (beginObserver: %p, wonObserver: %p, lostObserver: %p, decisionRepostObserver: %p).", &v17, 0x34u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_setDecisionIsPending
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (self->_state == 1)
  {
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[SCDAMonitor _setDecisionIsPending]";
      _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s Myriad decision is already in pending state.", buf, 0xCu);
      v3 = SCDALogContextCore;
    }

    timer = self->_timer;
    if (timer)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "[SCDAMonitor _setDecisionIsPending]";
        _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s Myriad monitor cancelling existing watch dog timer.", buf, 0xCu);
        timer = self->_timer;
      }

      [(SCDAWatchdogTimer *)timer cancel];
      v5 = self->_timer;
      self->_timer = 0;

      v3 = SCDALogContextCore;
    }
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[SCDAMonitor _setDecisionIsPending]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s Myriad decision is pending.", buf, 0xCu);
  }

  self->_state = 1;
  if (!self->_ignoreMyriadEvents)
  {
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      myriadEventMonitorTimeout = self->_myriadEventMonitorTimeout;
      *buf = 136315394;
      v16 = "[SCDAMonitor _setDecisionIsPending]";
      v17 = 2048;
      v18 = myriadEventMonitorTimeout;
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s Myriad monitor initializing safety timer with timeout: %f seconds", buf, 0x16u);
    }

    v8 = [SCDAWatchdogTimer alloc];
    v9 = self->_myriadEventMonitorTimeout;
    myriadMonitorQueue = self->_myriadMonitorQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__SCDAMonitor__setDecisionIsPending__block_invoke;
    v14[3] = &unk_1E85D3850;
    v14[4] = self;
    v11 = [(SCDAWatchdogTimer *)v8 initWithTimeoutInterval:myriadMonitorQueue onQueue:v14 timeoutHandler:v9];
    v12 = self->_timer;
    self->_timer = v11;

    [(SCDAWatchdogTimer *)self->_timer start];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_flushCompletions:(BOOL)completions
{
  if (completions)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1000;
  }

  [(SCDAMonitor *)self _dequeueBlocksWithSignal:v4];
  timer = self->_timer;

  [(SCDAWatchdogTimer *)timer cancelIfNotAlreadyCanceled];
}

- (void)_clear
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    state = self->_state;
    v5 = v3;
    v6 = [(SCDAMonitor *)self _myriadStateToString:state];
    v8 = 136315394;
    v9 = "[SCDAMonitor _clear]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s Clear pending for Myriad decision: %@.", &v8, 0x16u);
  }

  self->_state = 0;
  [(SCDAMonitor *)self _flushCompletions:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_dequeueBlocksWithSignal:(int64_t)signal
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    completions = self->_completions;
    v7 = v5;
    *buf = 136315394;
    v20 = "[SCDAMonitor _dequeueBlocksWithSignal:]";
    v21 = 1024;
    v22 = [(NSMutableArray *)completions count];
    _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s Myriad decision had %d block(s) waiting", buf, 0x12u);
  }

  if ([(NSMutableArray *)self->_completions count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_completions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) invokeWithSignal:{signal, v14}];
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_completions removeAllObjects];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void *__36__SCDAMonitor__setDecisionIsPending__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[SCDAMonitor _setDecisionIsPending]_block_invoke";
    _os_log_error_impl(&dword_1DA758000, v2, OS_LOG_TYPE_ERROR, "%s Myriad monitor times out, Myriad is probably unable to finish, clear pending blocks", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result[1] == 1)
  {
    [result _deregisterFromRepostedDecisionResultsObservers];
    result = [*(a1 + 32) _clear];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  v20 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v9 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v12 = 136315906;
    v13 = "[SCDAMonitor notifyObserver:didChangeStateFrom:to:]";
    v14 = 2048;
    v15 = observerCopy;
    v16 = 2048;
    fromCopy = from;
    v18 = 2048;
    toCopy = to;
    _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s notifyObserver %p didChangeStateFrom %ld -> %ld", &v12, 0x2Au);
  }

  if (!from && self->_repostedWonObserver == observerCopy)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.get.decision", 0, 0, 1u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token
{
  observerCopy = observer;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SCDAMonitor_notifyObserver_didReceiveNotificationWithToken___block_invoke;
  v8[3] = &unk_1E85D38A0;
  v9 = observerCopy;
  selfCopy = self;
  v7 = observerCopy;
  dispatch_async(myriadMonitorQueue, v8);
}

void __62__SCDAMonitor_notifyObserver_didReceiveNotificationWithToken___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) name];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4 == v3[10])
  {
    v6 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
LABEL_10:
      v9 = v3;
      v10 = 1;
LABEL_14:
      [v9 _resultSeenWithValue:{v10, *v14, *&v14[16]}];
LABEL_15:
      [*(a1 + 40) _deregisterFromRepostedDecisionResultsObservers];
      goto LABEL_16;
    }

    *v14 = 136315394;
    *&v14[4] = "[SCDAMonitor notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
    *&v14[12] = 2112;
    *&v14[14] = v2;
    v8 = "%s Myriad Delay Monitor result: YES (%@)";
LABEL_9:
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, v8, v14, 0x16u);
    v3 = *(a1 + 40);
    goto LABEL_10;
  }

  if (v4 == v3[11])
  {
    v11 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315394;
      *&v14[4] = "[SCDAMonitor notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
      *&v14[12] = 2112;
      *&v14[14] = v2;
      _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor result: NO (%@)", v14, 0x16u);
      v3 = *(a1 + 40);
    }

    v9 = v3;
    v10 = 0;
    goto LABEL_14;
  }

  if (v4 == v3[9])
  {
    v13 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315394;
      *&v14[4] = "[SCDAMonitor notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
      *&v14[12] = 2112;
      *&v14[14] = v2;
      _os_log_impl(&dword_1DA758000, v13, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor Begin (%@)", v14, 0x16u);
      v3 = *(a1 + 40);
    }

    [v3 _setDecisionIsPending];
    goto LABEL_15;
  }

  v5 = v3[12];
  v6 = SCDALogContextCore;
  v7 = os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO);
  if (v4 == v5)
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    *v14 = 136315394;
    *&v14[4] = "[SCDAMonitor notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
    *&v14[12] = 2112;
    *&v14[14] = v2;
    v8 = "%s Myriad Delay Monitor received reposted result: YES (%@)";
    goto LABEL_9;
  }

  if (v7)
  {
    *v14 = 136315138;
    *&v14[4] = "[SCDAMonitor notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s Received notification of unregistered observer", v14, 0xCu);
  }

LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_deregisterFromMyriadEventNotifications
{
  v11 = *MEMORY[0x1E69E9840];
  beginObserver = self->_beginObserver;
  if (*&self->_beginObserver != 0 || self->_lostObserver)
  {
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SCDAMonitor _deregisterFromMyriadEventNotifications]";
      _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Deregistering from Myriad event notifications.", &v9, 0xCu);
      beginObserver = self->_beginObserver;
    }

    [(SCDANotifyObserver *)beginObserver invalidate];
    v5 = self->_beginObserver;
    self->_beginObserver = 0;

    [(SCDANotifyObserver *)self->_wonObserver invalidate];
    wonObserver = self->_wonObserver;
    self->_wonObserver = 0;

    [(SCDANotifyObserver *)self->_lostObserver invalidate];
    lostObserver = self->_lostObserver;
    self->_lostObserver = 0;

    self->_isRegisteredForMyriadEventNotification = 0;
    [(SCDAMonitor *)self _deregisterFromRepostedDecisionResultsObservers];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_fetchCurrentMyriadDecisionWithWaitTime:(double)time
{
  v5 = [SCDAWatchdogTimer alloc];
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SCDAMonitor__fetchCurrentMyriadDecisionWithWaitTime___block_invoke;
  v9[3] = &unk_1E85D3850;
  v9[4] = self;
  v7 = [(SCDAWatchdogTimer *)v5 initWithTimeoutInterval:myriadMonitorQueue onQueue:v9 timeoutHandler:time];

  return v7;
}

void __55__SCDAMonitor__fetchCurrentMyriadDecisionWithWaitTime___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1 && (*(v1 + 65) & 1) == 0 && *(v1 + 96))
  {
    v2 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SCDAMonitor _fetchCurrentMyriadDecisionWithWaitTime:]_block_invoke";
      _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Fetching reposted Myriad event notification.", &v5, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.get.decision", 0, 0, 1u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)_myriadStateToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E85D38C0[string];
  }
}

- (void)dealloc
{
  [(SCDANotifyObserver *)self->_wonObserver invalidate];
  [(SCDANotifyObserver *)self->_lostObserver invalidate];
  v3.receiver = self;
  v3.super_class = SCDAMonitor;
  [(SCDAMonitor *)&v3 dealloc];
}

- (BOOL)didWin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __21__SCDAMonitor_didWin__block_invoke;
  v5[3] = &unk_1E85D3878;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(myriadMonitorQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __21__SCDAMonitor_didWin__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 65);
  }

  *(*(*(result + 40) + 8) + 24) = v2 & 1;
  return result;
}

- (BOOL)isMonitoring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__SCDAMonitor_isMonitoring__block_invoke;
  v5[3] = &unk_1E85D3878;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(myriadMonitorQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stopMonitoring
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SCDAMonitor_stopMonitoring__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadMonitorQueue, block);
}

_BYTE *__29__SCDAMonitor_stopMonitoring__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 66) = 0;
  result = *(a1 + 32);
  if (result[64] == 1)
  {
    [result _deregisterFromMyriadEventNotifications];
    v3 = *(a1 + 32);

    return [v3 _clear];
  }

  return result;
}

- (void)ignoreMyriadEvents:(BOOL)events
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SCDAMonitor_ignoreMyriadEvents___block_invoke;
  v4[3] = &unk_1E85D3828;
  eventsCopy = events;
  v4[4] = self;
  dispatch_async(myriadMonitorQueue, v4);
}

void __34__SCDAMonitor_ignoreMyriadEvents___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v8 = 136315394;
    v9 = "[SCDAMonitor ignoreMyriadEvents:]_block_invoke";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Should ignoring Myriad events -> %d.", &v8, 0x12u);
  }

  v4 = *(a1 + 40);
  *(*(a1 + 32) + 65) = v4;
  if (v4 == 1)
  {
    [*(a1 + 32) _deregisterFromRepostedDecisionResultsObservers];
    [*(*(a1 + 32) + 32) cancelIfNotAlreadyCanceled];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)startMonitoringWithTimeoutInterval:(double)interval instanceContext:(id)context
{
  contextCopy = context;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SCDAMonitor_startMonitoringWithTimeoutInterval_instanceContext___block_invoke;
  block[3] = &unk_1E85D3800;
  intervalCopy = interval;
  v10 = contextCopy;
  selfCopy = self;
  v8 = contextCopy;
  dispatch_async(myriadMonitorQueue, block);
}

void __66__SCDAMonitor_startMonitoringWithTimeoutInterval_instanceContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[SCDAMonitor startMonitoringWithTimeoutInterval:instanceContext:]_block_invoke";
    v12 = 2048;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE delay monitor watchdog timeout %f context %@", &v10, 0x20u);
  }

  *(*(a1 + 40) + 66) = 1;
  v5 = *(a1 + 40);
  if ((*(v5 + 64) & 1) == 0)
  {
    objc_storeStrong((v5 + 16), *(a1 + 32));
    *(*(a1 + 40) + 56) = *(a1 + 48);
    [*(a1 + 40) _registerForMyriadEvents];
    [*(a1 + 40) _setDecisionIsPending];
    [*(a1 + 40) _cancelRepostedMyriadDecisionTimer];
    v6 = [*(a1 + 40) _fetchCurrentMyriadDecisionWithWaitTime:1.75];
    v7 = *(a1 + 40);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1 + 40) + 40) start];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)waitForMyriadDecisionForReason:(id)reason withCompletion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SCDAMonitor_waitForMyriadDecisionForReason_withCompletion___block_invoke;
  block[3] = &unk_1E85D37D8;
  v12 = reasonCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = reasonCopy;
  v10 = completionCopy;
  dispatch_async(myriadMonitorQueue, block);
}

- (void)_enqueueBlock:(id)block forReason:(id)reason
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  reasonCopy = reason;
  v8 = reasonCopy;
  if (blockCopy)
  {
    v9 = @"Unspecified";
    if (reasonCopy)
    {
      v9 = reasonCopy;
    }

    v10 = v9;
    state = self->_state;
    if (state == 1 && !self->_ignoreMyriadEvents)
    {
      v15 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [(SCDAMonitor *)self _myriadStateToString:1];
        *buf = 136315650;
        v28 = "[SCDAMonitor _enqueueBlock:forReason:]";
        v29 = 2112;
        v30 = v17;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_1DA758000, v16, OS_LOG_TYPE_INFO, "%s Queueing command waiting for Myriad decision: %@ (reason = %@).", buf, 0x20u);
      }

      Current = CFAbsoluteTimeGetCurrent();
      completions = self->_completions;
      v20 = [SCDASafetyBlock alloc];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __39__SCDAMonitor__enqueueBlock_forReason___block_invoke;
      v23[3] = &unk_1E85D37B0;
      v26 = Current;
      v24 = v10;
      v25 = blockCopy;
      v21 = [(SCDASafetyBlock *)v20 initWithBlock:v23];
      [(NSMutableArray *)completions addObject:v21];
    }

    else
    {
      v12 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = [(SCDAMonitor *)self _myriadStateToString:state];
        *buf = 136315650;
        v28 = "[SCDAMonitor _enqueueBlock:forReason:]";
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_1DA758000, v13, OS_LOG_TYPE_INFO, "%s Dequeueing command for Myriad decision: %@ (reason = %@).", buf, 0x20u);
      }

      if (self->_ignoreMyriadEvents)
      {
        (*(blockCopy + 2))(blockCopy, 1);
      }

      else
      {
        (*(blockCopy + 2))(blockCopy, self->_state != 2);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __39__SCDAMonitor__enqueueBlock_forReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v7 = *(a1 + 32);
    v10 = 136315906;
    v11 = "[SCDAMonitor _enqueueBlock:forReason:]_block_invoke";
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = a2;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s Dequeuing after %f seconds for Myriad decision (reason = %@) and dequeue signal %zd.", &v10, 0x2Au);
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), a2 == 0);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (SCDAMonitor)init
{
  v9.receiver = self;
  v9.super_class = SCDAMonitor;
  v2 = [(SCDAMonitor *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = SCDADispatchSerialQueueWithRelativePriority("com.apple.assistant.myriad.delay_monitor", QOS_CLASS_USER_INITIATED, 0);
    myriadMonitorQueue = v3->_myriadMonitorQueue;
    v3->_myriadMonitorQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completions = v3->_completions;
    v3->_completions = v6;

    *&v3->_isRegisteredForMyriadEventNotification = 0;
    v3->_isMonitoring = 0;
  }

  return v3;
}

uint64_t __28__SCDAMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_sharedMonitor = objc_alloc_init(SCDAMonitor);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)initialize
{
  if (SCDALogInitIfNeeded_once != -1)
  {
    dispatch_once(&SCDALogInitIfNeeded_once, &__block_literal_global_498);
  }
}

@end