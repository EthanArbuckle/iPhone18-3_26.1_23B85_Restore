@interface SPRetryCount
- (SPRetryCount)init;
- (double)_decayedWaitIntervalForRetryCount:(unint64_t)count;
- (double)decayWaitInterval;
- (void)increment;
- (void)reset;
@end

@implementation SPRetryCount

- (SPRetryCount)init
{
  v7.receiver = self;
  v7.super_class = SPRetryCount;
  v2 = [(SPRetryCount *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_retryCount = 0;
    v4 = dispatch_queue_create("com.apple.SPOwner.retryCountQueue", 0);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v4;
  }

  return v3;
}

- (double)decayWaitInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = [(SPRetryCount *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SPRetryCount_decayWaitInterval__block_invoke;
  v6[3] = &unk_279B58D60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __33__SPRetryCount_decayWaitInterval__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _decayedWaitIntervalForRetryCount:{objc_msgSend(*(a1 + 32), "retryCount")}];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)increment
{
  objc_initWeak(&location, self);
  serialQueue = [(SPRetryCount *)self serialQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__SPRetryCount_increment__block_invoke;
  v4[3] = &unk_279B58D88;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __25__SPRetryCount_increment__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setRetryCount:{objc_msgSend(WeakRetained, "retryCount") + 1}];
    WeakRetained = v2;
  }
}

- (void)reset
{
  objc_initWeak(&location, self);
  serialQueue = [(SPRetryCount *)self serialQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __21__SPRetryCount_reset__block_invoke;
  v4[3] = &unk_279B58D88;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __21__SPRetryCount_reset__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setRetryCount:0];
    WeakRetained = v2;
  }
}

- (double)_decayedWaitIntervalForRetryCount:(unint64_t)count
{
  result = exp2(count);
  if (result > 60.0)
  {
    return 60.0;
  }

  return result;
}

@end