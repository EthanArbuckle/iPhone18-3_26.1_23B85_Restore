@interface PACoalescingIntervalState
- (PACoalescingIntervalState)initWithInterval:(id)interval intervalExpirationTime:(double)time expiryQueue:(id)queue clock:(id)clock onExpiration:(id)expiration expiry:(double)expiry;
- (PACoalescingIntervalState)initWithInterval:(id)interval matcher:(id)matcher tracker:(id)tracker expiry:(double)expiry;
- (double)idleTime;
- (double)timestampAdjustment;
- (id)description;
- (void)dealloc;
- (void)invalidate;
- (void)touch;
@end

@implementation PACoalescingIntervalState

- (void)touch
{
  clock = [(PACoalescingIntervalState *)self clock];
  self->_startTimes.absolute = clock[2]();
  self->_startTimes.continuous = v4;

  self->_lastCoalescedTime = self->_startTimes.absolute;
  [(PACoalescingIntervalState *)self intervalEndTime];
  endTimer = self->_endTimer;
  if (endTimer)
  {
    v7 = (v5 * 1000000000.0);
    v8 = dispatch_time(0, v7);

    dispatch_source_set_timer(endTimer, v8, 0xFFFFFFFFFFFFFFFFLL, v7 >> 2);
  }
}

- (double)timestampAdjustment
{
  clock = [(PACoalescingIntervalState *)self clock];
  clock[2]();
  v5 = v4;

  return ((v5 + self->_startTimes.absolute - (self->_startTimes.continuous + self->_lastCoalescedTime)) / 0x3E8) / -1000000.0;
}

- (void)invalidate
{
  endTimer = self->_endTimer;
  if (endTimer)
  {
    dispatch_source_cancel(endTimer);
    v4 = self->_endTimer;
    self->_endTimer = 0;
  }

  sigTermSource = self->_sigTermSource;
  if (sigTermSource)
  {
    dispatch_source_cancel(sigTermSource);
    v6 = self->_sigTermSource;
    self->_sigTermSource = 0;
  }
}

- (void)dealloc
{
  [(PACoalescingIntervalState *)self invalidate];
  v3.receiver = self;
  v3.super_class = PACoalescingIntervalState;
  [(PACoalescingIntervalState *)&v3 dealloc];
}

- (PACoalescingIntervalState)initWithInterval:(id)interval matcher:(id)matcher tracker:(id)tracker expiry:(double)expiry
{
  intervalCopy = interval;
  matcherCopy = matcher;
  trackerCopy = tracker;
  objc_initWeak(&location, trackerCopy);
  objc_initWeak(&from, self);
  [trackerCopy intervalEndTime];
  v14 = v13;
  logger = [trackerCopy logger];
  queue = [logger queue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__PACoalescingIntervalState_initWithInterval_matcher_tracker_expiry___block_invoke_2;
  v20[3] = &unk_1E86AC1E0;
  objc_copyWeak(&v22, &from);
  objc_copyWeak(&v23, &location);
  v17 = matcherCopy;
  v21 = v17;
  v18 = [(PACoalescingIntervalState *)self initWithInterval:intervalCopy intervalExpirationTime:queue expiryQueue:&__block_literal_global_5 clock:v20 onExpiration:v14 expiry:expiry];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v18;
}

__uint64_t __69__PACoalescingIntervalState_initWithInterval_matcher_tracker_expiry___block_invoke()
{
  v0 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  return v0;
}

void __69__PACoalescingIntervalState_initWithInterval_matcher_tracker_expiry___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  [v2 expireIntervalWithMatcher:*(a1 + 32) state:WeakRetained];
}

- (PACoalescingIntervalState)initWithInterval:(id)interval intervalExpirationTime:(double)time expiryQueue:(id)queue clock:(id)clock onExpiration:(id)expiration expiry:(double)expiry
{
  intervalCopy = interval;
  queueCopy = queue;
  clockCopy = clock;
  expirationCopy = expiration;
  v39.receiver = self;
  v39.super_class = PACoalescingIntervalState;
  v19 = [(PACoalescingIntervalState *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_interval, interval);
    v21 = clockCopy[2](clockCopy);
    v20->_startTimes.absolute = v21;
    v20->_startTimes.continuous = v22;
    v20->_lastCoalescedTime = v21;
    v20->_intervalEndTime = time;
    v23 = _Block_copy(clockCopy);
    clock = v20->_clock;
    v20->_clock = v23;

    objc_initWeak(&location, v20);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__2;
    v36[4] = __Block_byref_object_dispose__2;
    v37 = os_transaction_create();
    signal(15, 1);
    v25 = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, queueCopy);
    sigTermSource = v20->_sigTermSource;
    v20->_sigTermSource = v25;

    v27 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    endTimer = v20->_endTimer;
    v20->_endTimer = v27;

    if (expiry == -1.0)
    {
      v29 = -1;
    }

    else
    {
      v29 = dispatch_time(0, (expiry * 1000000000.0));
    }

    dispatch_source_set_timer(v20->_endTimer, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __107__PACoalescingIntervalState_initWithInterval_intervalExpirationTime_expiryQueue_clock_onExpiration_expiry___block_invoke;
    v32[3] = &unk_1E86AC208;
    objc_copyWeak(&v35, &location);
    v33 = expirationCopy;
    v34 = v36;
    v30 = _Block_copy(v32);
    dispatch_source_set_event_handler(v20->_endTimer, v30);
    dispatch_activate(v20->_endTimer);
    dispatch_source_set_event_handler(v20->_sigTermSource, v30);
    dispatch_activate(v20->_sigTermSource);

    objc_destroyWeak(&v35);
    _Block_object_dispose(v36, 8);

    objc_destroyWeak(&location);
  }

  return v20;
}

void __107__PACoalescingIntervalState_initWithInterval_intervalExpirationTime_expiryQueue_clock_onExpiration_expiry___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(*(a1 + 32) + 16))();
  [WeakRetained invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  interval = self->_interval;
  v6 = MEMORY[0x1E696AD98];
  [(PACoalescingIntervalState *)self idleTime];
  v7 = [v6 numberWithDouble:?];
  v8 = [v3 stringWithFormat:@"<%@ %p interval:%@ idleTime:%@>", v4, self, interval, v7];

  return v8;
}

- (double)idleTime
{
  clock = [(PACoalescingIntervalState *)self clock];
  v4 = (clock[2]() - self->_lastCoalescedTime) / 0x3E8;

  return v4 / 1000000.0;
}

@end