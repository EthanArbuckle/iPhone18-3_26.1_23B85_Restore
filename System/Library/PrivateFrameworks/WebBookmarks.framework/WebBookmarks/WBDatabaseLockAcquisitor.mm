@interface WBDatabaseLockAcquisitor
- (BOOL)_attemptToLockSyncAndNotifyDelegateOnFailure:(BOOL)a3;
- (WBDatabaseLockAcquisitor)initWithWebBookmarkCollectionClass:(Class)a3;
- (WBDatabaseLockAcquisitorDelegate)delegate;
- (void)_retryTimerFired:(id)a3;
- (void)_startTimerWithTimeout:(double)a3 retryInterval:(double)a4;
- (void)_stopTimer;
- (void)acquireLockWithTimeout:(double)a3 retryInterval:(double)a4;
- (void)dealloc;
- (void)releaseLock;
@end

@implementation WBDatabaseLockAcquisitor

- (WBDatabaseLockAcquisitor)initWithWebBookmarkCollectionClass:(Class)a3
{
  v8.receiver = self;
  v8.super_class = WBDatabaseLockAcquisitor;
  v4 = [(WBDatabaseLockAcquisitor *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_webBookmarkCollectionClass = a3;
    v6 = v4;
  }

  return v5;
}

- (void)dealloc
{
  [(WBDatabaseLockAcquisitor *)self releaseLock];
  v3.receiver = self;
  v3.super_class = WBDatabaseLockAcquisitor;
  [(WBDatabaseLockAcquisitor *)&v3 dealloc];
}

- (void)acquireLockWithTimeout:(double)a3 retryInterval:(double)a4
{
  [(objc_class *)self->_webBookmarkCollectionClass holdLockSync:self];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WBDatabaseLockAcquisitor_acquireLockWithTimeout_retryInterval___block_invoke;
  block[3] = &unk_279E77DA0;
  *&block[5] = a3;
  *&block[6] = a4;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __65__WBDatabaseLockAcquisitor_acquireLockWithTimeout_retryInterval___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  result = [*(a1 + 32) _attemptToLockSyncAndNotifyDelegateOnFailure:v2 < v3];
  if (v2 >= v3 && (result & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    return [v5 _startTimerWithTimeout:v6 retryInterval:v7];
  }

  return result;
}

- (void)releaseLock
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "WBDatabaseLockAcquisitor: releasing database lock", buf, 2u);
  }

  [(WBDatabaseLockAcquisitor *)self _stopTimer];
  [(objc_class *)self->_webBookmarkCollectionClass unholdLockSync:self];
  if (self->_lockAcquired)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_DEFAULT, "Unlocking sync since lock was previously acquired", v5, 2u);
    }

    [(objc_class *)self->_webBookmarkCollectionClass unlockSync];
  }
}

- (BOOL)_attemptToLockSyncAndNotifyDelegateOnFailure:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();
  v7 = [(objc_class *)self->_webBookmarkCollectionClass isLockedSync];
  if ((v7 & 1) == 0)
  {
    v8 = [(objc_class *)self->_webBookmarkCollectionClass lockSync];
    self->_lockAcquired = v8;
    if (!v8)
    {
      if (!v3)
      {
        LOBYTE(v11) = 0;
        goto LABEL_7;
      }

      v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      v11 = 0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_DEFAULT, "WBDatabaseLockAcquisitor: failed to acquire database lock", v15, 2u);
        v11 = 0;
      }

      goto LABEL_6;
    }
  }

  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    lockAcquired = self->_lockAcquired;
    v15[0] = 67109632;
    v15[1] = v7;
    v16 = 1024;
    v17 = lockAcquired;
    v18 = 1024;
    v19 = v6 & 1;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_DEFAULT, "WBDatabaseLockAcquisitor: successfully acquired database lock (was locked: %d, lock acquired: %d, should notify: %d)", v15, 0x14u);
  }

  [(WBDatabaseLockAcquisitor *)self _stopTimer];
  v11 = 1;
  if (v6)
  {
LABEL_6:
    [WeakRetained databaseLockAcquisitor:self acquiredLock:v11];
  }

LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_stopTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_timer);
  v4 = [WeakRetained isValid];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_timer);
    [v5 invalidate];

    objc_storeWeak(&self->_timer, 0);
  }
}

- (void)_startTimerWithTimeout:(double)a3 retryInterval:(double)a4
{
  [(WBDatabaseLockAcquisitor *)self _stopTimer];
  self->_maxRetryCount = llround(a3 / a4);
  v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__retryTimerFired_ selector:0 userInfo:1 repeats:a4];
  objc_storeWeak(&self->_timer, v7);
}

- (void)_retryTimerFired:(id)a3
{
  v4 = a3;
  maxRetryCount = self->_maxRetryCount;
  v6 = self->_retryCount + 1;
  self->_retryCount = v6;
  if (v6 >= maxRetryCount)
  {
    v7 = v4;
    if ([(WBDatabaseLockAcquisitor *)self _attemptToLockSyncAndNotifyDelegateOnFailure:1])
    {
      [(WBDatabaseLockAcquisitor *)self _stopTimer];
    }

    else
    {
      [(WBDatabaseLockAcquisitor *)self releaseLock];
    }

    v4 = v7;
  }
}

- (WBDatabaseLockAcquisitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end