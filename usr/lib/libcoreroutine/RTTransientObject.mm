@interface RTTransientObject
- (RTTransientObject)initWithCreationBlock:(id)a3 timeout:(double)a4;
- (RTTransientObject)initWithCreationBlock:(id)a3 timeout:(double)a4 timerManager:(id)a5;
- (RTTransientObjectProtocol)transientObjectDelegate;
- (id)__createBackingObject;
- (id)backingObject;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)__createTimerAssociatedWithBackingObject;
- (void)__handleBackingObjectTimerExpired;
- (void)__invalidateBackingObject;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)touch;
@end

@implementation RTTransientObject

- (void)touch
{
  v2 = [(RTTransientObject *)self backingObject];
}

- (id)backingObject
{
  backingObject = self->_backingObject;
  if (!backingObject)
  {
    v4 = [(RTTransientObject *)self __createBackingObject];
    v5 = self->_backingObject;
    self->_backingObject = v4;

    backingObject = self->_backingObject;
    if (backingObject)
    {
      WeakRetained = objc_loadWeakRetained(&self->_transientObjectDelegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained transientObjectDidCreateBackingObject:self];
      }

      backingObject = self->_backingObject;
    }
  }

  v7 = backingObject;

  return v7;
}

- (id)__createBackingObject
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  backingObjectCreationBlock = self->_backingObjectCreationBlock;
  if (backingObjectCreationBlock)
  {
    v5 = backingObjectCreationBlock[2]();
    [(RTTransientObject *)self __createTimerAssociatedWithBackingObject];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "(re)created transient object, %@", &v8, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (void)__createTimerAssociatedWithBackingObject
{
  objc_initWeak(&location, self);
  timerManager = self->_timerManager;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = dispatch_get_global_queue(0, 0);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __61__RTTransientObject___createTimerAssociatedWithBackingObject__block_invoke;
  v12 = &unk_2788C5908;
  objc_copyWeak(&v13, &location);
  v7 = [(RTTimerManager *)timerManager timerWithIdentifier:v5 queue:v6 handler:&v9];
  backingObjectExpirationTimer = self->_backingObjectExpirationTimer;
  self->_backingObjectExpirationTimer = v7;

  [(RTTimer *)self->_backingObjectExpirationTimer fireAfterDelay:self->_backingObjectExpirationTimeInterval, v9, v10, v11, v12];
  [(RTTimer *)self->_backingObjectExpirationTimer resume];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (RTTransientObject)initWithCreationBlock:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(RTTransientObject *)self initWithCreationBlock:v6 timeout:v7 timerManager:a4];

  return v8;
}

- (RTTransientObject)initWithCreationBlock:(id)a3 timeout:(double)a4 timerManager:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "[RTTransientObject initWithCreationBlock:timeout:timerManager:]";
    v22 = 1024;
    v23 = 29;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: creationBlock (in %s:%d)", &v20, 0x12u);
  }

  if (!v10)
  {
LABEL_7:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[RTTransientObject initWithCreationBlock:timeout:timerManager:]";
      v22 = 1024;
      v23 = 30;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: timerManager (in %s:%d)", &v20, 0x12u);
    }
  }

LABEL_10:
  if (a4 <= 0.0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[RTTransientObject initWithCreationBlock:timeout:timerManager:]";
      v22 = 1024;
      v23 = 31;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "timeout must be greater than 0. (in %s:%d)", &v20, 0x12u);
    }
  }

  v14 = 0;
  if (v8 && a4 > 0.0 && v10)
  {
    self->_backingObjectExpirationTimeInterval = a4;
    v15 = _Block_copy(v8);
    backingObjectCreationBlock = self->_backingObjectCreationBlock;
    self->_backingObjectCreationBlock = v15;

    v17 = objc_opt_new();
    lock = self->_lock;
    self->_lock = v17;

    objc_storeStrong(&self->_timerManager, a5);
    self->_lastForwardedMessageTimeInterval = 0.0;
    v14 = self;
  }

  return v14;
}

- (void)dealloc
{
  [(RTTimer *)self->_backingObjectExpirationTimer invalidate];
  v3.receiver = self;
  v3.super_class = RTTransientObject;
  [(RTTransientObject *)&v3 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(RTTransientObject *)self backingObject];
      lastForwardedMessageTimeInterval = self->_lastForwardedMessageTimeInterval;
      v11 = 138412546;
      v12 = v9;
      v13 = 2048;
      v14 = lastForwardedMessageTimeInterval;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "updating last forwarded message time interval for transient object, %@ to %lf", &v11, 0x16u);
    }
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_lastForwardedMessageTimeInterval = v7;
  v8 = [(RTTransientObject *)self backingObject];
  [v5 invokeWithTarget:v8];

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(RTTransientObject *)self backingObject];
  v6 = [v5 methodSignatureForSelector:a3];

  [(NSRecursiveLock *)self->_lock unlock];

  return v6;
}

void __61__RTTransientObject___createTimerAssociatedWithBackingObject__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained __handleBackingObjectTimerExpired];
    WeakRetained = v2;
  }
}

- (void)__handleBackingObjectTimerExpired
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-self->_backingObjectExpirationTimeInterval];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  lastForwardedMessageTimeInterval = self->_lastForwardedMessageTimeInterval;
  if (lastForwardedMessageTimeInterval <= v5)
  {
    [(RTTransientObject *)self __invalidateBackingObject];
  }

  else
  {
    v7 = lastForwardedMessageTimeInterval - v5;
    [(RTTimer *)self->_backingObjectExpirationTimer suspend];
    [(RTTimer *)self->_backingObjectExpirationTimer fireAfterDelay:v7];
    [(RTTimer *)self->_backingObjectExpirationTimer resume];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        backingObject = self->_backingObject;
        v10 = 134218242;
        v11 = v7;
        v12 = 2112;
        v13 = backingObject;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "moving timer out, %lf on object, %@", &v10, 0x16u);
      }
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)__invalidateBackingObject
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  [(NSRecursiveLock *)self->_lock lock];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      backingObject = self->_backingObject;
      v8 = 138412290;
      v9 = backingObject;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "releasing transient object, %@", &v8, 0xCu);
    }
  }

  v5 = self->_backingObject;
  self->_backingObject = 0;

  self->_lastForwardedMessageTimeInterval = 0.0;
  [(RTTimer *)self->_backingObjectExpirationTimer invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_transientObjectDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained transientObjectDidReleaseBackingObject:self];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  objc_autoreleasePoolPop(v3);
}

- (RTTransientObjectProtocol)transientObjectDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientObjectDelegate);

  return WeakRetained;
}

@end