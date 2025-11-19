@interface BKTouchObservationClient
- (BKTouchObservationClient)initWithConnection:(id)a3 pid:(int)a4;
- (void)_didRespondToTouchDelivery;
- (void)_lock_sendQueuedUpdatesToClient;
- (void)sendTouchUpdate:(id)a3;
@end

@implementation BKTouchObservationClient

- (void)_didRespondToTouchDelivery
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_waitingOnClient = 0;
  self->_lock_updateSentTimestamp = 0.0;
  [(BKTouchObservationClient *)self _lock_sendQueuedUpdatesToClient];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_sendQueuedUpdatesToClient
{
  if ([(NSMutableArray *)self->_lock_pendingUpdates count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v4 = [WeakRetained remoteTarget];

    v5 = [(NSMutableArray *)self->_lock_pendingUpdates copy];
    [(NSMutableArray *)self->_lock_pendingUpdates removeAllObjects];
    v6 = BKLogTouchDeliveryObserver();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [BSDescriptionStream descriptionForRootObject:v5];
      pid = self->_pid;
      v10 = BSProcessDescriptionForPID();
      *location = 138543618;
      *&location[4] = v8;
      v14 = 2114;
      v15 = v10;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "post updates:%{public}@ to:%{public}@", location, 0x16u);
    }

    self->_lock_waitingOnClient = 1;
    BSContinuousMachTimeNow();
    self->_lock_updateSentTimestamp = v7;
    objc_initWeak(location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009CF4;
    v11[3] = &unk_1000FA638;
    objc_copyWeak(&v12, location);
    [v4 observeTouchEventDeliveryDidOccur:v5 response:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }
}

- (void)sendTouchUpdate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_pendingUpdates = self->_lock_pendingUpdates;
  if (self->_lock_waitingOnClient)
  {
    v6 = [(NSMutableArray *)lock_pendingUpdates count];
    BSContinuousMachTimeNow();
    v8 = v7 - self->_lock_updateSentTimestamp;
    if (v6 >= 1 && v8 > 2.0)
    {
      v10 = BKLogTouchDeliveryObserver();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        pid = self->_pid;
        v14 = BSProcessDescriptionForPID();
        v15 = 134218498;
        v16 = v8;
        v17 = 1024;
        v18 = v6;
        v19 = 2114;
        v20 = v14;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "waiting for %g seconds; dropping %d updates for %{public}@", &v15, 0x1Cu);
      }

      [(NSMutableArray *)self->_lock_pendingUpdates removeAllObjects];
    }

    [(NSMutableArray *)self->_lock_pendingUpdates addObject:v4];
  }

  else
  {
    if (!lock_pendingUpdates)
    {
      v11 = objc_alloc_init(NSMutableArray);
      v12 = self->_lock_pendingUpdates;
      self->_lock_pendingUpdates = v11;

      lock_pendingUpdates = self->_lock_pendingUpdates;
    }

    [(NSMutableArray *)lock_pendingUpdates addObject:v4];
    [(BKTouchObservationClient *)self _lock_sendQueuedUpdatesToClient];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BKTouchObservationClient)initWithConnection:(id)a3 pid:(int)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = BKTouchObservationClient;
  v7 = [(BKTouchObservationClient *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_connection, v6);
    v8->_pid = a4;
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

@end